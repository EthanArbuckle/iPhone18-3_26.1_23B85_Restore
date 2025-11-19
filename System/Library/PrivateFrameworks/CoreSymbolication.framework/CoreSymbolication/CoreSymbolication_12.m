void find_accessible_exclave_cryptex(std::string *a1@<X8>)
{
  v15 = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:ne200100]<0>(v12, "/System/Volumes/Preboot/Cryptexes/ExclaveOS");
  std::string::basic_string[abi:ne200100]<0>(v13, "/private/preboot/Cryptexes/ExclaveOS");
  std::string::basic_string[abi:ne200100]<0>(v14, "/System/Cryptexes/ExclaveOS");
  v9 = 0;
  v10 = 0;
  v11 = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v9, v12, &v15, 3uLL);
  for (i = 0; i != -72; i -= 24)
  {
    if (v14[i + 23] < 0)
    {
      operator delete(*&v14[i]);
    }
  }

  v3 = v9;
  v4 = v10;
  while (1)
  {
    if (v3 == v4)
    {
      v6 = 0;
      a1->__r_.__value_.__s.__data_[0] = 0;
      goto LABEL_16;
    }

    v5 = v3;
    if (*(v3 + 23) < 0)
    {
      v5 = *v3;
    }

    if (!access(v5, 4))
    {
      break;
    }

    v3 = (v3 + 24);
  }

  if (*(v3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a1, *v3, *(v3 + 1));
  }

  else
  {
    v7 = *v3;
    a1->__r_.__value_.__r.__words[2] = *(v3 + 2);
    *&a1->__r_.__value_.__l.__data_ = v7;
  }

  v6 = 1;
LABEL_16:
  a1[1].__r_.__value_.__s.__data_[0] = v6;
  v12[0] = &v9;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v12);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1D979AFC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void **a13)
{
  a13 = &a10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

void shared_cache_search_directories(void *a1@<X8>)
{
  v46 = *MEMORY[0x1E69E9840];
  system_dyld_shared_cache_path();
  v2 = system_dyld_shared_cache_path(void)::shared_cache_dir[23];
  if (system_dyld_shared_cache_path(void)::shared_cache_dir[23] >= 0)
  {
    v3 = system_dyld_shared_cache_path(void)::shared_cache_dir;
  }

  else
  {
    v2 = *&system_dyld_shared_cache_path(void)::shared_cache_dir[8];
    v3 = *system_dyld_shared_cache_path(void)::shared_cache_dir;
  }

  v43.__r_.__value_.__r.__words[0] = v3;
  v43.__r_.__value_.__l.__size_ = v2;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  std::vector<std::string_view>::__init_with_size[abi:ne200100]<std::string_view const*,std::string_view const*>(a1, &v43, &v43.__r_.__value_.__r.__words[2], 1uLL);
  v35 = a1;
  std::string::basic_string[abi:ne200100]<0>(&v43, "/System/Volumes/Preboot/Cryptexes/OS");
  std::string::basic_string[abi:ne200100]<0>(&__p, "/private/preboot/Cryptexes/OS");
  std::string::basic_string[abi:ne200100]<0>(v45, "/System/Cryptexes/OS");
  v40 = 0;
  v41 = 0;
  v42 = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v40, &v43, &v46, 3uLL);
  for (i = 0; i != -72; i -= 24)
  {
    if (v45[i + 23] < 0)
    {
      operator delete(*&v45[i]);
    }
  }

  memset(&v43, 0, sizeof(v43));
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v43, v40, v41, 0xAAAAAAAAAAAAAAABLL * ((v41 - v40) >> 3));
  if (system_dyld_shared_cache_path(void)::shared_cache_dir[23] < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *system_dyld_shared_cache_path(void)::shared_cache_dir, *&system_dyld_shared_cache_path(void)::shared_cache_dir[8]);
  }

  else
  {
    __p = *system_dyld_shared_cache_path(void)::shared_cache_dir;
  }

  size = v43.__r_.__value_.__l.__size_;
  v5 = v43.__r_.__value_.__r.__words[0];
  if (v43.__r_.__value_.__r.__words[0] == v43.__r_.__value_.__l.__size_)
  {
LABEL_41:
    std::string::basic_string[abi:ne200100]<0>(&v39, "");
    v8 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    while (1)
    {
      if (*(v5 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v39, *v5, *(v5 + 8));
      }

      else
      {
        v6 = *v5;
        v39.__r_.__value_.__r.__words[2] = *(v5 + 16);
        *&v39.__r_.__value_.__l.__data_ = v6;
      }

      v7 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      v8 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v7 = __p.__r_.__value_.__l.__size_;
      }

      v10 = SHIBYTE(v39.__r_.__value_.__r.__words[2]);
      v11 = v39.__r_.__value_.__r.__words[0];
      v12 = (v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v39 : v39.__r_.__value_.__r.__words[0];
      v13 = (v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v39.__r_.__value_.__r.__words[2]) : v39.__r_.__value_.__l.__size_;
      if (!v13)
      {
        break;
      }

      if (v7 >= v13)
      {
        v14 = p_p + v7;
        v15 = v12->__r_.__value_.__s.__data_[0];
        v16 = p_p;
        do
        {
          v17 = v7 - v13;
          if (v17 == -1)
          {
            break;
          }

          v18 = memchr(v16, v15, v17 + 1);
          if (!v18)
          {
            break;
          }

          v19 = v18;
          if (!memcmp(v18, v12, v13))
          {
            if (v19 == v14 || v19 - p_p == -1)
            {
              break;
            }

            goto LABEL_42;
          }

          v16 = (v19 + 1);
          v7 = v14 - (v19 + 1);
        }

        while (v7 >= v13);
      }

      if (v10 < 0)
      {
        operator delete(v11);
      }

      v5 += 24;
      if (v5 == size)
      {
        goto LABEL_41;
      }
    }
  }

LABEL_42:
  if (v8 < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v37[0] = &v43;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v37);
  v20 = v35;
  {
    std::string::basic_string[abi:ne200100]<0>(&v43, "/System/DriverKit/System/Library/dyld/");
    if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v27 = &v43;
    }

    else
    {
      v27 = v43.__r_.__value_.__r.__words[0];
    }

    if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v28 = HIBYTE(v43.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v28 = v43.__r_.__value_.__l.__size_;
    }

    v29 = std::string::append(&v39, v27, v28);
    if (SHIBYTE(v29->__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&shared_cache_search_directories(void)::final_driverkit_path, v29->__r_.__value_.__l.__data_, v29->__r_.__value_.__l.__size_);
    }

    else
    {
      v30 = *&v29->__r_.__value_.__l.__data_;
      unk_1EDADA818 = *(&v29->__r_.__value_.__l + 2);
      shared_cache_search_directories(void)::final_driverkit_path = v30;
    }

    if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v43.__r_.__value_.__l.__data_);
    }

    v20 = v35;
  }

  v21 = byte_1EDADA81F;
  if (byte_1EDADA81F >= 0)
  {
    v22 = &shared_cache_search_directories(void)::final_driverkit_path;
  }

  else
  {
    v21 = *(&shared_cache_search_directories(void)::final_driverkit_path + 1);
    v22 = shared_cache_search_directories(void)::final_driverkit_path;
  }

  v43.__r_.__value_.__r.__words[0] = v22;
  v43.__r_.__value_.__l.__size_ = v21;
  std::vector<std::string_view>::push_back[abi:ne200100](v20, &v43);
  find_accessible_exclave_cryptex(&v43);
  v23 = __p.__r_.__value_.__s.__data_[0];
  if (__p.__r_.__value_.__s.__data_[0] == 1)
  {
    {
      std::string::basic_string[abi:ne200100]<0>(v37, "/System/ExclaveKit/System/Library/dyld/");
      if ((v38 & 0x80u) == 0)
      {
        v31 = v37;
      }

      else
      {
        v31 = v37[0];
      }

      if ((v38 & 0x80u) == 0)
      {
        v32 = v38;
      }

      else
      {
        v32 = v37[1];
      }

      v33 = std::string::append(&v43, v31, v32);
      if (SHIBYTE(v33->__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&shared_cache_search_directories(void)::final_exclavekit_path, v33->__r_.__value_.__l.__data_, v33->__r_.__value_.__l.__size_);
      }

      else
      {
        v34 = *&v33->__r_.__value_.__l.__data_;
        unk_1ECB40AE8 = *(&v33->__r_.__value_.__l + 2);
        shared_cache_search_directories(void)::final_exclavekit_path = v34;
      }

      if (v38 < 0)
      {
        operator delete(v37[0]);
      }

      v20 = v35;
    }

    v24 = byte_1ECB40AEF;
    if (byte_1ECB40AEF >= 0)
    {
      v25 = &shared_cache_search_directories(void)::final_exclavekit_path;
    }

    else
    {
      v24 = *(&shared_cache_search_directories(void)::final_exclavekit_path + 1);
      v25 = shared_cache_search_directories(void)::final_exclavekit_path;
    }

    v37[0] = v25;
    v37[1] = v24;
    std::vector<std::string_view>::push_back[abi:ne200100](v20, v37);
    v23 = __p.__r_.__value_.__s.__data_[0];
  }

  if ((v23 & 1) != 0 && SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
  }

  v43.__r_.__value_.__r.__words[0] = &v40;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v43);
  v26 = *MEMORY[0x1E69E9840];
}

void sub_1D979B508(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, char *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, char a34)
{
  if (a34 == 1 && a33 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  __p = &a25;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  v35 = *a9;
  if (*a9)
  {
    *(a9 + 8) = v35;
    operator delete(v35);
  }

  _Unwind_Resume(a1);
}

uint64_t shared_cache_search_directories(void)::$_0::~$_0(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v3 = a1;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  return a1;
}

void std::vector<std::string_view>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - *a1;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::allocator<std::string_view>::allocate_at_least[abi:ne200100](a1, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
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

uint64_t with_primary_shared_cache_uuid_and_unslid_base_from_path(UUID *a1, uint64_t a2)
{
  v4 = UUID::null_uuid(a1);
  v5 = open(a1, 0x1000000);
  if (v5 == -1)
  {
    *&v12.st_dev = v4;
    v14 = 0;
    v11 = *(a2 + 24);
    if (!v11)
    {
      goto LABEL_13;
    }

    return (*(*v11 + 48))(v11, &v12, &v14);
  }

  else
  {
    v6 = v5;
    if (fstat(v5, &v12) || v12.st_size <= 0x227uLL || (v7 = mmap(0, 0x228uLL, 1, 1, v6, 0)) == 0 || (v8 = v7, v7 == -1) || strncmp(v7, "dyld_v", 6uLL))
    {
      v13 = 0;
      v14 = v4;
      v9 = *(a2 + 24);
      if (v9)
      {
        (*(*v9 + 48))(v9, &v14, &v13);
        return close(v6);
      }

LABEL_13:
      std::__throw_bad_function_call[abi:ne200100]();
    }

    v13 = *(v8 + 28);
    v14 = (v8 + 88);
    std::__function::__value_func<void ()(UUID const*,unsigned long long)>::operator()[abi:ne200100](a2);
    close(v6);
    return munmap(v8, 0x228uLL);
  }
}

uint64_t is_device_exclave_enabled(void)
{
  if (atomic_load_explicit(&is_device_exclave_enabled(void)::once, memory_order_acquire) != -1)
  {
    v5[1] = v0;
    v5[2] = v1;
    v5[0] = &v3;
    v4 = v5;
    std::__call_once(&is_device_exclave_enabled(void)::once, &v4, std::__call_once_proxy[abi:ne200100]<std::tuple<is_device_exclave_enabled(void)::$_0 &&>>);
  }

  return is_device_exclave_enabled(void)::exclaves_enabled;
}

DemanglingUtilities::CSCppReusableDemanglingBuffer *DemanglingUtilities::CSCppReusableDemanglingBuffer::CSCppReusableDemanglingBuffer(DemanglingUtilities::CSCppReusableDemanglingBuffer *this)
{
  *this = 4096;
  *(this + 1) = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
  return this;
}

char *DemanglingUtilities::create_dyld_stub_name(DemanglingUtilities *this, const char *a2)
{
  v3 = strlen(this);
  v4 = malloc_type_malloc(v3 + 12, 0x100004077774924uLL);
  strcpy(v4, "DYLD-STUB$$");
  strcpy(v4 + 11, this);
  return v4;
}

BOOL DemanglingUtilities::is_simple_mangled_name(DemanglingUtilities *this, const char *a2)
{
  if ((a2 & 2) != 0)
  {
    return 0;
  }

  v2 = *this;
  if (v2 != 95 && v2 != 36)
  {
    return 1;
  }

  v3 = 0;
  if (*(this + 1) == 95)
  {
    v4 = this + 1;
  }

  else
  {
    v4 = this;
  }

  do
  {
    v5 = strlen((&off_1E8584440)[v3]);
    v6 = strncmp(v4, (&off_1E8584440)[v3], v5);
    result = v6 != 0;
    if (!v6)
    {
      break;
    }

    v8 = v3 == 12;
    v3 += 2;
  }

  while (!v8);
  return result;
}

_BYTE *DemanglingUtilities::simple_demangle(_BYTE *this, const char *a2)
{
  if ((a2 & 0x380000) != 0 && *this == 95)
  {
    ++this;
  }

  return this;
}

uint64_t std::vector<std::string_view>::__init_with_size[abi:ne200100]<std::string_view const*,std::string_view const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::string_view>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1D979BB60(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::string_view>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::allocator<std::string_view>::allocate_at_least[abi:ne200100](a1, a2);
  }

  std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
}

void std::allocator<std::string_view>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

unsigned __int8 *std::__call_once_proxy[abi:ne200100]<std::tuple<call_external_swift_demangle(char const*,char *,unsigned long *,int *)::$_0 &&>>()
{
  result = getenv("CS_DO_NOT_DEMANGLE_SWIFT");
  if (!result || ((v1 = *result - 48, v2 = v1 > 0x3E, v3 = (1 << v1) & 0x4000000040000001, !v2) ? (v4 = v3 == 0) : (v4 = 1), !v4))
  {
    result = dlopen("/usr/lib/swift/libswiftDemangle.dylib", 1);
    if (result || (result = dlopen("/System/Library/PrivateFrameworks/Swift/libswiftDemangle.dylib", 1)) != 0)
    {
      result = dlsym(result, "swift_demangle_getSimplifiedDemangledName");
      demanglerLibraryFunctions = result;
    }
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(UUID const*,unsigned long long)>::operator()[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v3 = *(*v2 + 48);

  return v3();
}

uint64_t std::__call_once_proxy[abi:ne200100]<std::tuple<is_device_exclave_enabled(void)::$_0 &&>>()
{
  v4 = 0;
  v3 = 4;
  result = sysctlbyname("kern.exclaves_status", &v4, &v3, 0, 0);
  if (result)
  {
    v1 = 0;
  }

  else
  {
    v1 = v4 == 1;
  }

  v2 = v1;
  is_device_exclave_enabled(void)::exclaves_enabled = v2;
  return result;
}

uint64_t CSSymbolicatorIsKernelSymbolicator(char a1, uint64_t a2)
{
  if (a1 & 7 | (8 * (a2 & 3)))
  {
    return (*(**((a2 & 0xFFFFFFFFFFFFFFFCLL) + 32) + 24))();
  }

  else
  {
    return 0;
  }
}

uint64_t CSSymbolicatorIsTaskValid(char a1, uint64_t a2)
{
  if (a1 & 7 | (8 * (a2 & 3)))
  {
    return (*(**((a2 & 0xFFFFFFFFFFFFFFFCLL) + 32) + 32))();
  }

  else
  {
    return 0;
  }
}

uint64_t CSSymbolicatorGetPid(char a1, uint64_t a2)
{
  if (a1 & 7 | (8 * (a2 & 3)))
  {
    return *((*(**((a2 & 0xFFFFFFFFFFFFFFFCLL) + 32) + 16))(*((a2 & 0xFFFFFFFFFFFFFFFCLL) + 32)) + 12);
  }

  else
  {
    return 0;
  }
}

uint64_t CSSymbolicatorGetTask(char a1, uint64_t a2)
{
  if (a1 & 7 | (8 * (a2 & 3)))
  {
    return *((*(**((a2 & 0xFFFFFFFFFFFFFFFCLL) + 32) + 16))(*((a2 & 0xFFFFFFFFFFFFFFFCLL) + 32)) + 8);
  }

  else
  {
    return 0;
  }
}

UUID *CSSymbolicatorGetSharedCacheUUID(char a1, uint64_t a2)
{
  if (!(a1 & 7 | (8 * (a2 & 3))))
  {
    return 0;
  }

  v2 = (*(**((a2 & 0xFFFFFFFFFFFFFFFCLL) + 32) + 48))(*((a2 & 0xFFFFFFFFFFFFFFFCLL) + 32));
  if (UUID::is_null(v2))
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t CSSymbolicatorGetSharedCacheBaseAddress(char a1, uint64_t a2)
{
  if (a1 & 7 | (8 * (a2 & 3)))
  {
    return (*(**((a2 & 0xFFFFFFFFFFFFFFFCLL) + 32) + 64))();
  }

  else
  {
    return 0;
  }
}

uint64_t CSSymbolicatorGetTaskIsTranslated(char a1, uint64_t a2)
{
  v2 = a1 & 7 | (8 * (a2 & 3));
  if (v2)
  {
    LOBYTE(v2) = *(*((a2 & 0xFFFFFFFFFFFFFFFCLL) + 32) + 16);
  }

  return v2 & 1;
}

uint64_t CSSymbolicatorForeachSymbolOwnerWithUUIDAtTime(uint64_t a1, uint64_t a2, CFUUIDRef uuid, uint64_t a4, uint64_t a5)
{
  if (!(a1 & 7 | (8 * (a2 & 3))))
  {
    return 0;
  }

  v10 = CFUUIDGetUUIDBytes(uuid);
  return CSSymbolicatorForeachSymbolOwnerWithCFUUIDBytesAtTime(a1, a2, &v10, a4, a5);
}

uint64_t CSSymbolicatorGetSymbolOwnerWithUUIDAtTime(uint64_t a1, uint64_t a2, const __CFUUID *a3, uint64_t a4)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3802000000;
  v11 = __Block_byref_object_copy__10;
  v12 = __Block_byref_object_dispose__10;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 0x40000000;
  v7[2] = __CSSymbolicatorGetSymbolOwnerWithUUIDAtTime_block_invoke;
  v7[3] = &unk_1E85844B8;
  v7[4] = &v8;
  if (CSSymbolicatorForeachSymbolOwnerWithUUIDAtTime(a1, a2, a3, a4, v7) == 1)
  {
    v4 = v9[5];
    v5 = v9[6];
  }

  else
  {
    v4 = 0;
  }

  _Block_object_dispose(&v8, 8);
  return v4;
}

void sub_1D979C0F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__10(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

uint64_t __CSSymbolicatorGetSymbolOwnerWithUUIDAtTime_block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(*(result + 32) + 8);
  *(v3 + 40) = a2;
  *(v3 + 48) = a3;
  return result;
}

uint64_t CSSymbolicatorGetSymbolOwnerWithCFUUIDBytesAtTime(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3802000000;
  v11 = __Block_byref_object_copy__10;
  v12 = __Block_byref_object_dispose__10;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 0x40000000;
  v7[2] = __CSSymbolicatorGetSymbolOwnerWithCFUUIDBytesAtTime_block_invoke;
  v7[3] = &unk_1E85844E0;
  v7[4] = &v8;
  if (CSSymbolicatorForeachSymbolOwnerWithCFUUIDBytesAtTime(a1, a2, a3, a4, v7) == 1)
  {
    v4 = v9[5];
    v5 = v9[6];
  }

  else
  {
    v4 = 0;
  }

  _Block_object_dispose(&v8, 8);
  return v4;
}

void sub_1D979C208(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __CSSymbolicatorGetSymbolOwnerWithCFUUIDBytesAtTime_block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(*(result + 32) + 8);
  *(v3 + 40) = a2;
  *(v3 + 48) = a3;
  return result;
}

uint64_t WriteMMapArchiveToDirectory(CSCppSymbolOwner *a1, TMMapArchive *a2, const char *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  CFUUIDBytesToString((a2 + 52), __s, 0x28uLL);
  v6 = strlen(a3);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v6;
  if (v6)
  {
    memcpy(&__dst, a3, v6);
  }

  __dst.__r_.__value_.__s.__data_[v7] = 0;
  size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
  p_dst = &__dst;
  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __dst.__r_.__value_.__l.__size_;
    p_dst = __dst.__r_.__value_.__r.__words[0];
  }

  if (p_dst->__r_.__value_.__s.__data_[size - 1] != 47)
  {
    std::string::push_back(&__dst, 47);
  }

  v10 = strlen(__s);
  std::string::append(&__dst, __s, v10);
  std::string::append(&__dst, ".symbolsarchive", 0xFuLL);
  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = &__dst;
  }

  else
  {
    v11 = __dst.__r_.__value_.__r.__words[0];
  }

  v12 = open(v11, 16777730, 432);
  v13 = v12;
  if (v12 == -1)
  {
    goto LABEL_17;
  }

  if (fstat(v12, &v21) == -1)
  {
    goto LABEL_17;
  }

  v14 = *(a2 + 1);
  if (v21.st_size == v14 || a1 && v21.st_size && (*(a1 + 110) & 4) == 0)
  {
    goto LABEL_17;
  }

  v20 = 0;
  if (!*(a2 + 20))
  {
    v19 = TMMapArchiveSerialization::_invoke_supplied_callback<WriteMMapArchiveToDirectory(CSCppSymbolOwner *,TMMapArchive &,char const*)::$_1>(a2, v14, v13, &v20);
    goto LABEL_34;
  }

  if (!TMMapArchiveSerialization::_invoke_supplied_callback<WriteMMapArchiveToDirectory(CSCppSymbolOwner *,TMMapArchive &,char const*)::$_1>(a2, 4uLL, v13, &v20) || (__buf = *(a2 + 1) - *(a2 + 20), !TMMapArchiveSerialization::_invoke_supplied_callback<WriteMMapArchiveToDirectory(CSCppSymbolOwner *,TMMapArchive &,char const*)::$_1>(&__buf, 4uLL, v13, &v20)) || !TMMapArchiveSerialization::_invoke_supplied_callback<WriteMMapArchiveToDirectory(CSCppSymbolOwner *,TMMapArchive &,char const*)::$_1>(a2 + 8, 0x28uLL, v13, &v20) || (v24 = TMMapArchive::calculate_checksum(a2) - *(a2 + 20), !TMMapArchiveSerialization::_invoke_supplied_callback<WriteMMapArchiveToDirectory(CSCppSymbolOwner *,TMMapArchive &,char const*)::$_1>(&v24, 4uLL, v13, &v20)) || !TMMapArchiveSerialization::_invoke_supplied_callback<WriteMMapArchiveToDirectory(CSCppSymbolOwner *,TMMapArchive &,char const*)::$_1>(a2 + 52, 0x18uLL, v13, &v20) || (v23 = 0, !TMMapArchiveSerialization::_invoke_supplied_callback<WriteMMapArchiveToDirectory(CSCppSymbolOwner *,TMMapArchive &,char const*)::$_1>(&v23, 8uLL, v13, &v20)) || (v18 = (4 * *(a2 + 4)) + TMMapArchive::by_mangled_name_map(a2), !TMMapArchiveSerialization::_invoke_supplied_callback<WriteMMapArchiveToDirectory(CSCppSymbolOwner *,TMMapArchive &,char const*)::$_1>(a2 + 84, v18 - (a2 + 84), v13, &v20)))
  {
LABEL_17:
    v15 = 0;
    goto LABEL_18;
  }

  v19 = TMMapArchiveSerialization::_invoke_supplied_callback<WriteMMapArchiveToDirectory(CSCppSymbolOwner *,TMMapArchive &,char const*)::$_1>((v18 + *(a2 + 20)), a2 + v14 - v18 - *(a2 + 20), v13, &v20);
LABEL_34:
  v15 = v19;
LABEL_18:
  close(v13);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

void sub_1D979C55C(_Unwind_Exception *a1)
{
  close(v1);
  if (*(v2 - 129) < 0)
  {
    operator delete(*(v2 - 152));
  }

  _Unwind_Resume(a1);
}

uint64_t AddMmapArchiveToDirectory(CSCppSymbolOwner *a1, const char *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 110) & 1) == 0 || (UUID::is_null((a1 + 1)) & 1) != 0 || !*(a1 + 10))
  {
    goto LABEL_35;
  }

  v4 = CSCppSymbolOwner::data(a1);
  if ((*(*v4 + 24))(v4) == 4)
  {
    v5 = v4[11];
    if (v5)
    {
      WriteMMapArchiveToDirectory(a1, v5, a2);
LABEL_39:
      result = 1;
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  if ((*(*v4 + 24))(v4) != 1)
  {
    if ((*(*v4 + 24))(v4) != 2)
    {
      goto LABEL_35;
    }

    CFUUIDBytesToString(a1 + 1, v23, 0x28uLL);
    v9 = TRawSymbolOwnerData<Pointer64>::mutable_sorted_symbols(v4);
    if (*v9 != v9[1])
    {
      CSCppAddressSet::CSCppAddressSet(v20);
      v11 = *(a1 + 4);
      v10 = *(a1 + 5);
      if (v10 - v11 == 32)
      {
        if (v11 == v10)
        {
          v11 = *(a1 + 5);
        }

        else
        {
          do
          {
            v22 = *v11;
            std::__tree<TRange<Pointer64>>::__emplace_unique_key_args<TRange<Pointer64>,TRange<Pointer64> const&>(v21, &v22);
            v11 += 32;
          }

          while (v11 != v10);
          v11 = *(a1 + 4);
          v10 = *(a1 + 5);
        }
      }

      if (v10 - v11 == 32)
      {
        v17 = v20;
      }

      else
      {
        v17 = 0;
      }

      mmap_archive_arch = CSCppSymbolOwnerCache::create_mmap_archive_arch_specific<Pointer64>(a1, v4, v17);
      goto LABEL_30;
    }

LABEL_19:
    v12 = 0;
    v13 = 0;
    v14 = 0;
    goto LABEL_31;
  }

  CFUUIDBytesToString(a1 + 1, v23, 0x28uLL);
  v6 = TRawSymbolOwnerData<Pointer32>::mutable_sorted_symbols(v4);
  if (*v6 == v6[1])
  {
    goto LABEL_19;
  }

  CSCppAddressSet::CSCppAddressSet(v20);
  v8 = *(a1 + 4);
  v7 = *(a1 + 5);
  if (v7 - v8 == 32)
  {
    if (v8 == v7)
    {
      v8 = *(a1 + 5);
    }

    else
    {
      do
      {
        v22 = *v8;
        std::__tree<TRange<Pointer64>>::__emplace_unique_key_args<TRange<Pointer64>,TRange<Pointer64> const&>(v21, &v22);
        v8 += 32;
      }

      while (v8 != v7);
      v8 = *(a1 + 4);
      v7 = *(a1 + 5);
    }
  }

  if (v7 - v8 == 32)
  {
    v15 = v20;
  }

  else
  {
    v15 = 0;
  }

  mmap_archive_arch = CSCppSymbolOwnerCache::create_mmap_archive_arch_specific<Pointer32>(a1, v4, v15);
LABEL_30:
  v14 = mmap_archive_arch;
  v12 = mmap_archive_arch != 0;
  v13 = 4 * v12;
  CSCppAddressSet::~CSCppAddressSet(v20);
LABEL_31:
  if (v14)
  {
    if (v13 == 4)
    {
      WriteMMapArchiveToDirectory(a1, v14, a2);
      if (!v12)
      {
        goto LABEL_39;
      }
    }

    else if (!v12)
    {
      goto LABEL_39;
    }

    mach_vm_deallocate(*MEMORY[0x1E69E9A60], v14, v14[1]);
    goto LABEL_39;
  }

LABEL_35:
  result = 0;
LABEL_36:
  v19 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1D979C890(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  CSCppAddressSet::~CSCppAddressSet(va);
  _Unwind_Resume(a1);
}

void CSCppAddMmapArchivesFromSymbolicatorToDirectory(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = __CSCppAddMmapArchivesFromSymbolicatorToDirectory_block_invoke;
  v3[3] = &__block_descriptor_tmp_17;
  v3[4] = a3;
  CSCppForEachMMapArchiveInSymbolicator(a1, a2, v3);
}

void CSCppForEachMMapArchiveInSymbolicator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  CSCppSymbolicator::get_symbol_owners((a2 & 0xFFFFFFFFFFFFFFFCLL), &v12);
  memset(v10, 0, sizeof(v10));
  v11 = 1065353216;
  v4 = v12;
  for (i = v13; v4 != i; v4 += 2)
  {
    if (!std::__hash_table<UUID,UUIDHashFunctor,UUIDEqualsFunctor,std::allocator<UUID>>::find<UUID>(v10, (*v4 + 16)))
    {
      v6 = v4[1];
      v8 = *v4;
      v9 = v6;
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v7 = (*(a3 + 16))(a3, &v8);
      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      }

      if (v7)
      {
        std::__hash_table<UUID,UUIDHashFunctor,UUIDEqualsFunctor,std::allocator<UUID>>::__emplace_unique_key_args<UUID,UUID const&>(v10, (*v4 + 16));
      }
    }
  }

  std::__hash_table<char const*,std::hash<char const*>,std::equal_to<char const*>,std::allocator<char const*>>::~__hash_table(v10);
  *&v10[0] = &v12;
  std::vector<std::shared_ptr<CSCppSymbolOwner>>::__destroy_vector::operator()[abi:ne200100](v10);
}

void sub_1D979CA18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, void **a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::__hash_table<char const*,std::hash<char const*>,std::equal_to<char const*>,std::allocator<char const*>>::~__hash_table(&a11);
  a11 = &a16;
  std::vector<std::shared_ptr<CSCppSymbolOwner>>::__destroy_vector::operator()[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

uint64_t CSCppAddMmapArchivesToDirectory(uint64_t result, uint64_t a2, char *a3)
{
  if (a2)
  {
    v4 = a2;
    v5 = (result + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      result = AddMmapArchiveToDirectory((v6 & 0xFFFFFFFFFFFFFFFCLL), a3);
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t _findPrimarySharedCacheInFlatbufferSymbolicator(const FlatbufferSymbols::Symbolicator *a1)
{
  v3 = (a1 - *a1);
  if (*v3 < 0xBu)
  {
    return 0;
  }

  v4 = v3[5];
  if (!v4)
  {
    return 0;
  }

  v9[3] = v1;
  v9[4] = v2;
  v5 = (a1 + v4 + *(a1 + v4));
  if (*v5 == 1)
  {
    return v5 + v5[1] + 4;
  }

  v7 = (v5 + (4 * *v5) + 4);
  v8 = v5 + 1;
  _findSharedCacheWithNamePrefix<flatbuffers::VectorIterator<flatbuffers::Offset<FlatbufferSymbols::SharedCache>,FlatbufferSymbols::SharedCache const*,unsigned char const*,unsigned int>>(&v8, &v7, "dyld_shared_cache", 0x11uLL, v9);
  if (v9[0] == (v5 + (4 * *v5) + 4))
  {
    return 0;
  }

  else
  {
    return v9[0] + *v9[0];
  }
}

uint64_t _findSharedCacheWithNamePrefix<flatbuffers::VectorIterator<flatbuffers::Offset<FlatbufferSymbols::SharedCache>,FlatbufferSymbols::SharedCache const*,unsigned char const*,unsigned int>>@<X0>(uint64_t result@<X0>, unsigned int **a2@<X1>, const char *a3@<X2>, size_t a4@<X3>, unsigned int **a5@<X8>)
{
  v6 = *result;
  for (i = *a2; v6 != i; ++v6)
  {
    result = FlatbufferSymbols::SymbolOwner::metadata_as_MachoMetadata((v6 + *v6));
    if (result)
    {
      v10 = (result - *result);
      if (*v10 >= 0x13u)
      {
        v11 = v10[9];
        if (v11)
        {
          result = strncmp((result + v11 + *(result + v11) + 4), a3, a4);
          if (!result)
          {
            break;
          }
        }
      }
    }
  }

  *a5 = v6;
  return result;
}

char *_findAOTSharedCacheInFlatbufferSymbolicator(int *a1)
{
  v3 = (a1 - *a1);
  if (*v3 < 0xBu)
  {
    return 0;
  }

  v4 = v3[5];
  if (!v4)
  {
    return 0;
  }

  v9[3] = v1;
  v9[4] = v2;
  v5 = (a1 + v4 + *(a1 + v4));
  v7 = (v5 + (4 * *v5) + 4);
  v8 = v5 + 1;
  _findSharedCacheWithNamePrefix<flatbuffers::VectorIterator<flatbuffers::Offset<FlatbufferSymbols::SharedCache>,FlatbufferSymbols::SharedCache const*,unsigned char const*,unsigned int>>(&v8, &v7, "aot_shared_cache", 0x10uLL, v9);
  if (v9[0] == (v5 + (4 * *v5) + 4))
  {
    return 0;
  }

  else
  {
    return v9[0] + *v9[0];
  }
}

void _assignArchivesToSymbolOwners(void *a1, TMMapArchive *a2)
{
  v3 = *a2;
  v4 = *(a2 + 1);
  if (*a2 != v4)
  {
    do
    {
      v6 = *v3;
      v5 = *(v3 + 8);
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if ((UUID::is_null(v6 + 1) & 1) == 0 && std::__hash_table<UUID,UUIDHashFunctor,UUIDEqualsFunctor,std::allocator<UUID>>::find<UUID>(a1, &(*v6)[16]))
      {
        CSCppSymbolOwner::data_claim_empty(v6);
      }

      if (v5)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v5);
      }

      v3 += 16;
    }

    while (v3 != v4);
  }

  for (i = a1[2]; i; i = *i)
  {
    CSCppMMapArchiveCache::release_archive(i[4], a2);
  }
}

void sub_1D979CD6C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

double CSCppSignatureEncodeSymbolicator<__CFData *>(const __CFData *a1, int a2, int a3, int a4, int a5)
{
  Length = CFDataGetLength(a1);
  CFDataSetLength(a1, Length + 24);
  MutableBytePtr = CFDataGetMutableBytePtr(a1);
  *&result = 0x1FF01FF02;
  *MutableBytePtr = 0x1FF01FF02;
  *(MutableBytePtr + 2) = a2;
  *(MutableBytePtr + 3) = a3;
  *(MutableBytePtr + 4) = a4;
  *(MutableBytePtr + 5) = a5;
  return result;
}

char *CSCppSignatureEncodeSymbolOwner<__CFData *>(const __CFData *a1, _OWORD *a2, int a3, int a4, uint64_t a5, uint64_t a6, unint64_t a7, const char *a8, void *a9, uint64_t a10)
{
  v11 = a7;
  v17 = HIDWORD(a7);
  Length = CFDataGetLength(a1);
  v19 = strlen(a8);
  CFDataSetLength(a1, Length + (v19 & 0xFFFFFFFFFFFFFFF8) + ((a9[1] - *a9) & 0x1FFFFFFFE0) + 64);
  v20 = &CFDataGetMutableBytePtr(a1)[Length];
  *v20 = *a2;
  *(v20 + 4) = a3;
  *(v20 + 5) = a4 & 0xFFFBFFFF;
  *(v20 + 3) = a5;
  *(v20 + 4) = a6;
  *(v20 + 10) = v11;
  *(v20 + 11) = v17;
  *(v20 + 12) = (a9[1] - *a9) >> 5;
  v21 = (strlen(a8) & 0xFFFFFFF8) + 8;
  *(v20 + 13) = v21;
  result = strcpy(v20 + 56, a8);
  v23 = *a9;
  if (*a9 < a9[1])
  {
    result += v21;
    do
    {
      v24 = v23[3];
      if (!v24)
      {
        v24 = v23[2];
      }

      v25 = strncpy(result, v24, 0x10uLL);
      *(v25 + 2) = *v23 + a10;
      *(v25 + 3) = v23[1];
      result = v25 + 32;
      v23 += 4;
    }

    while (v23 < a9[1]);
  }

  return result;
}

void *CSCppSignatureEncodeMMapArchive<__CFData *>(const __CFData *a1, _DWORD *a2)
{
  Length = CFDataGetLength(a1);
  CFDataSetLength(a1, Length + ((a2[1] + 23) & 0xFFFFFFF8));
  v5 = &CFDataGetMutableBytePtr(a1)[Length];
  *v5 = 0x7A1B22B1ALL;
  v6 = a2[1];
  *(v5 + 2) = -1582159078;
  *(v5 + 3) = (v6 + 23) & 0xFFFFFFF8;

  return memcpy(v5 + 16, a2, v6);
}

UInt8 *CSCppSignatureEncodeOptionalDataHeader<__CFData *>(const __CFData *a1, uint64_t a2)
{
  Length = CFDataGetLength(a1);
  CFDataSetLength(a1, Length + 8);
  result = CFDataGetMutableBytePtr(a1);
  *&result[Length] = (a2 << 32) | 0xC0FFEE;
  return result;
}

void CSCppSignatureEncodeOptionalData<__CFData *>(const __CFData *a1, uint64_t a2, __int128 *a3, uint64_t a4, __int128 *a5, uint64_t a6, char a7, uint64_t a8)
{
  v52 = *MEMORY[0x1E69E9840];
  CSCppSignatureEncodeOptionalDataHeader<__CFData *>(a1, a2);
  Length = CFDataGetLength(a1);
  v16 = *a3;
  v50 = *a5;
  v51 = v16;
  v42 = 0;
  v43 = &v42;
  v44 = 0x4002000000;
  v45 = __Block_byref_object_copy__29;
  v46 = __Block_byref_object_dispose__30;
  __p = 0;
  v48 = 0;
  v49 = 0;
  v37 = MEMORY[0x1E69E9820];
  v38 = 0x40000000;
  v39 = ___ZL31_addAotImageInfosToOptionalDataR37SignatureOptionalDataEncodingVersion310_CSTypeRefP8__CFDatam_block_invoke;
  v40 = &unk_1E8584638;
  v41 = &v42;
  CSSymbolicatorForEachAotImage();
  v17 = a6;
  v19 = v43[5];
  v18 = v43[6];
  Task = CSSymbolicatorGetTask(a7, a8);
  LOBYTE(a3) = CSTaskIsTranslated(Task);
  v21 = v18 - v19;
  v22 = (v18 - v19 + 56);
  v23 = v22 + Length;
  CFDataSetLength(a1, v22 + Length);
  v24 = &CFDataGetMutableBytePtr(a1)[Length];
  v25 = v50;
  *v24 = v51;
  *(v24 + 2) = a4;
  *(v24 + 24) = v25;
  *(v24 + 5) = v17;
  v24[48] = a3;
  *(v24 + 13) = -1431655765 * (v21 >> 5);
  memcpy(v24 + 56, v43[5], v22 - 56);
  _Block_object_dispose(&v42, 8);
  if (__p)
  {
    v48 = __p;
    operator delete(__p);
  }

  v42 = 0;
  v43 = &v42;
  v44 = 0x4002000000;
  v45 = __Block_byref_object_copy__11;
  v46 = __Block_byref_object_dispose__11;
  __p = 0;
  v48 = 0;
  v49 = 0;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2000000000;
  LODWORD(v40) = 0;
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 0x40000000;
  v36[2] = ___Z32CSCppSignatureEncodeOptionalDataIP8__CFDataEvT_jPKhyS4_y10_CSTypeRef_block_invoke;
  v36[3] = &unk_1E8584528;
  v36[4] = &v37;
  v36[5] = &v42;
  CSSymbolicatorForeachSymbolOwnerAtTime(a7, a8, 0x8000000000000001, v36);
  v26 = ((*(v38 + 24) - 1) | 7) + 1;
  CFDataSetLength(a1, v23 + v26 + 4);
  MutableBytePtr = CFDataGetMutableBytePtr(a1);
  *&MutableBytePtr[v23] = v26;
  v28 = &MutableBytePtr[v23 + 4];
  v29 = v43[5];
  v30 = v43[6];
  while (v29 != v30)
  {
    v31 = *v29++;
    v32 = strlen(v31) + 1;
    memcpy(v28, v31, v32);
    v28 += v32;
  }

  v33 = v26 - *(v38 + 24);
  if (v33)
  {
    if (v33 <= 1)
    {
      v34 = 1;
    }

    else
    {
      v34 = v33;
    }

    bzero(v28, v34);
  }

  _Block_object_dispose(&v37, 8);
  _Block_object_dispose(&v42, 8);
  if (__p)
  {
    v48 = __p;
    operator delete(__p);
  }

  v35 = *MEMORY[0x1E69E9840];
}

void sub_1D979D3AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27)
{
  _Block_object_dispose(&a16, 8);
  _Block_object_dispose(&a21, 8);
  if (__p)
  {
    a27 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__11(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

void __Block_byref_object_dispose__11(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

void ___Z32CSCppSignatureEncodeOptionalDataIP8__CFDataEvT_jPKhyS4_y10_CSTypeRef_block_invoke(uint64_t a1, char a2, uint64_t a3)
{
  Version = CSSymbolOwnerGetVersion(a2, a3);
  if (Version)
  {
    v5 = Version;
  }

  else
  {
    v5 = "";
  }

  *(*(*(a1 + 32) + 8) + 24) += strlen(v5) + 1;
  v6 = *(*(a1 + 40) + 8);
  v8 = v6[6];
  v7 = v6[7];
  if (v8 >= v7)
  {
    v10 = v6[5];
    v11 = (v8 - v10) >> 3;
    if ((v11 + 1) >> 61)
    {
      std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
    }

    v12 = v7 - v10;
    v13 = v12 >> 2;
    if (v12 >> 2 <= (v11 + 1))
    {
      v13 = v11 + 1;
    }

    if (v12 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v13;
    }

    if (v14)
    {
      std::allocator<char const*>::allocate_at_least[abi:ne200100]((v6 + 5), v14);
    }

    v15 = (8 * v11);
    *v15 = v5;
    v9 = 8 * v11 + 8;
    v16 = v6[5];
    v17 = v6[6] - v16;
    v18 = v15 - v17;
    memcpy(v15 - v17, v16, v17);
    v19 = v6[5];
    v6[5] = v18;
    v6[6] = v9;
    v6[7] = 0;
    if (v19)
    {
      operator delete(v19);
    }
  }

  else
  {
    *v8 = v5;
    v9 = (v8 + 1);
  }

  v6[6] = v9;
}

uint64_t CSCppSignatureDecodeSymbolicator<__CFData const*>(const __CFData *a1, unint64_t *a2, unsigned int *a3, _DWORD *a4, _DWORD *a5, _DWORD *a6, _DWORD *a7)
{
  BytePtr = CFDataGetBytePtr(a1);
  Length = CFDataGetLength(a1);
  v16 = *a2 + 24;
  if (v16 > Length)
  {
    return 0;
  }

  v17 = &BytePtr[*a2];
  v23 = *(v17 + 1);
  v22 = *(v17 + 2);
  v21 = *(v17 + 3);
  v20 = *(v17 + 4);
  v19 = *(v17 + 5);
  if (*v17 != -16646398)
  {
    return 0;
  }

  *a3 = v23;
  if (v23 > 1)
  {
    return 0;
  }

  *a4 = v22;
  *a5 = v21;
  *a6 = v20;
  *a7 = v19;
  *a2 = v16;
  return 1;
}

uint64_t CSCppDetermineSignatureType<__CFData const*>(const __CFData *a1)
{
  BytePtr = CFDataGetBytePtr(a1);
  if (!strncmp(BytePtr + 4, "SYMB", 4uLL))
  {
    return 2;
  }

  else
  {
    return *BytePtr == -16646398;
  }
}

uint64_t CSCppSignatureDecodeSymbolOwner<__CFData const*>(const __CFData *a1, unint64_t *a2, const UInt8 **a3, _DWORD *a4, _DWORD *a5, void *a6, void *a7, unint64_t *a8, void *a9, const void **a10)
{
  BytePtr = CFDataGetBytePtr(a1);
  Length = CFDataGetLength(a1);
  v20 = *a2;
  if (*a2 + 64 > Length)
  {
    return 0;
  }

  v21 = &BytePtr[v20];
  v22 = *&BytePtr[v20 + 48];
  v23 = v20 + *(v21 + 13) + 32 * v22 + 56;
  if (v23 > Length)
  {
    return 0;
  }

  v40 = v23;
  *a3 = v21;
  *a4 = *(v21 + 4);
  *a5 = *(v21 + 5);
  *a6 = *(v21 + 3);
  *a7 = *(v21 + 4);
  *a8 = *(v21 + 10) | (*(v21 + 11) << 32);
  v25 = v21 + 56;
  *a9 = v21 + 56;
  if ((*a7 & 0x8000000000000000) != 0)
  {
    *a7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  *a5 &= ~0x80000000;
  v26 = *(v21 + 13);
  std::vector<CSCppSegmentRange>::reserve(a10, v22);
  if (v22)
  {
    v27 = &v25[v26];
    v28 = a10[1];
    do
    {
      v29 = *(v27 + 2);
      v30 = *(v27 + 3);
      v31 = a10[2];
      if (v28 >= v31)
      {
        v32 = (v28 - *a10) >> 5;
        if ((v32 + 1) >> 59)
        {
          std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
        }

        v33 = v31 - *a10;
        v34 = v33 >> 4;
        if (v33 >> 4 <= (v32 + 1))
        {
          v34 = v32 + 1;
        }

        if (v33 >= 0x7FFFFFFFFFFFFFE0)
        {
          v35 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v35 = v34;
        }

        if (v35)
        {
          std::allocator<CSCppSegmentRange>::allocate_at_least[abi:ne200100](a10, v35);
        }

        v36 = (32 * v32);
        *v36 = v29;
        v36[1] = v30;
        v36[2] = CSCppNamedRange::unique_macho_string(v27, "SEGMENT", 0x10);
        v36[3] = CSCppNamedRange::unique_macho_string(v27, 0, 0x10);
        v28 = (v36 + 4);
        v37 = a10[1] - *a10;
        v38 = v36 - v37;
        memcpy(v36 - v37, *a10, v37);
        v39 = *a10;
        *a10 = v38;
        a10[1] = v36 + 4;
        a10[2] = 0;
        if (v39)
        {
          operator delete(v39);
        }
      }

      else
      {
        *v28 = v29;
        *(v28 + 1) = v30;
        *(v28 + 2) = CSCppNamedRange::unique_macho_string(v27, "SEGMENT", 0x10);
        *(v28 + 3) = CSCppNamedRange::unique_macho_string(v27, 0, 0x10);
        v28 += 32;
        a10[1] = v28;
      }

      a10[1] = v28;
      v27 = (v27 + 32);
      LODWORD(v22) = v22 - 1;
    }

    while (v22);
  }

  *a2 = v40;
  return 1;
}

int32x4_t *CSCppSignatureDecodeMMapArchive<__CFData const*>(const __CFData *a1, void *a2, BOOL *a3)
{
  BytePtr = CFDataGetBytePtr(a1);
  Length = CFDataGetLength(a1);
  if (*a2 + 16 > Length)
  {
    return 0;
  }

  result = MMapArchiveEncoding::mmap_archive(&BytePtr[*a2], Length - *a2, a3);
  if (result)
  {
    *a2 += (result->i32[1] + 23) & 0xFFFFFFF8;
  }

  return result;
}

int32x4_t *MMapArchiveEncoding::mmap_archive(MMapArchiveEncoding *this, unint64_t a2, BOOL *a3)
{
  if (*(this + 3) > a2)
  {
    return 0;
  }

  if (*this == -1582159078)
  {
    v6 = *(this + 2);
    if (v6 <= 6)
    {
      result = MMapArchiveEncoding::_migrate_legacy_archive(this);
      if (!result)
      {
        return result;
      }

      *a3 = 1;
LABEL_9:
      if (*(this + 2) == -1582159078)
      {
        return result;
      }

      return 0;
    }

    *a3 = 0;
    if (v6 == 7)
    {
      result = (this + 16);
      goto LABEL_9;
    }
  }

  return 0;
}

uint64_t _CSCppAddMMapArchiveToSignatureFromCSCppSymbolOwner<__CFData *>(CSCppSymbolOwner *a1, const __CFData *a2)
{
  v4 = CSCppSymbolOwner::data(a1);
  if ((atomic_load_explicit(v4 + 3, memory_order_acquire) & 0x80) != 0)
  {
    return 0;
  }

  v5 = v4;
  if ((*(*v4 + 24))(v4) != 4)
  {
    if ((*(*v5 + 24))(v5) == 1)
    {
      CSCppAddressSet::CSCppAddressSet(v16);
      v8 = *(a1 + 4);
      v7 = *(a1 + 5);
      if (v7 - v8 == 32)
      {
        if (v8 == v7)
        {
          v8 = *(a1 + 5);
        }

        else
        {
          do
          {
            v18 = *v8;
            std::__tree<TRange<Pointer64>>::__emplace_unique_key_args<TRange<Pointer64>,TRange<Pointer64> const&>(v17, &v18);
            v8 += 32;
          }

          while (v8 != v7);
          v8 = *(a1 + 4);
          v7 = *(a1 + 5);
        }
      }

      if (v7 - v8 == 32)
      {
        v12 = v16;
      }

      else
      {
        v12 = 0;
      }

      mmap_archive_arch = CSCppSymbolOwnerCache::create_mmap_archive_arch_specific<Pointer32>(a1, v5, v12);
LABEL_26:
      v15 = mmap_archive_arch;
      CSCppAddressSet::~CSCppAddressSet(v16);
      if (v15)
      {
        if (v15[4])
        {
          CSCppSignatureEncodeMMapArchive<__CFData *>(a2, v15);
        }

        mach_vm_deallocate(*MEMORY[0x1E69E9A60], v15, v15[1]);
      }

      return 1;
    }

    if ((*(*v5 + 24))(v5) == 2)
    {
      CSCppAddressSet::CSCppAddressSet(v16);
      v10 = *(a1 + 4);
      v9 = *(a1 + 5);
      if (v9 - v10 == 32)
      {
        if (v10 == v9)
        {
          v10 = *(a1 + 5);
        }

        else
        {
          do
          {
            v18 = *v10;
            std::__tree<TRange<Pointer64>>::__emplace_unique_key_args<TRange<Pointer64>,TRange<Pointer64> const&>(v17, &v18);
            v10 += 32;
          }

          while (v10 != v9);
          v10 = *(a1 + 4);
          v9 = *(a1 + 5);
        }
      }

      if (v9 - v10 == 32)
      {
        v14 = v16;
      }

      else
      {
        v14 = 0;
      }

      mmap_archive_arch = CSCppSymbolOwnerCache::create_mmap_archive_arch_specific<Pointer64>(a1, v5, v14);
      goto LABEL_26;
    }

    return 0;
  }

  v6 = *(v5 + 11);
  if (v6[4])
  {
    CSCppSignatureEncodeMMapArchive<__CFData *>(a2, v6);
  }

  return 1;
}

void sub_1D979DC80(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  CSCppAddressSet::~CSCppAddressSet(va);
  _Unwind_Resume(a1);
}

uint64_t CSCppAddSparseMMapArchiveToSignature<__CFData *>(const __CFData *a1, CSCppAddressSet *a2)
{
  v4 = CSSymbolicatorCreateWithSignatureFlagsAndNotification(a1, -2147475454, 1024);
  v6 = v5;
  SymbolOwner = CSSymbolicatorGetSymbolOwner(v4, v5);
  v9 = v8;
  if (CSIsNull(SymbolOwner, v8))
  {
    goto LABEL_8;
  }

  v10 = CSCppSymbolOwner::data((v9 & 0xFFFFFFFFFFFFFFFCLL));
  if ((atomic_load_explicit(v10 + 3, memory_order_acquire) & 0x80) != 0)
  {
    goto LABEL_8;
  }

  v11 = v10;
  v12 = (*(*v10 + 24))(v10);
  if (v12 != 2)
  {
    if (v12 == 1)
    {
      mmap_archive_arch = CSCppSymbolOwnerCache::create_mmap_archive_arch_specific<Pointer32>(v9 & 0xFFFFFFFFFFFFFFFCLL, v11, a2);
      if (mmap_archive_arch)
      {
        goto LABEL_6;
      }
    }

LABEL_8:
    v15 = 0;
    goto LABEL_9;
  }

  mmap_archive_arch = CSCppSymbolOwnerCache::create_mmap_archive_arch_specific<Pointer64>(v9 & 0xFFFFFFFFFFFFFFFCLL, v11, a2);
  if (!mmap_archive_arch)
  {
    goto LABEL_8;
  }

LABEL_6:
  v14 = mmap_archive_arch;
  CSCppSignatureEncodeMMapArchive<__CFData *>(a1, mmap_archive_arch);
  mach_vm_deallocate(*MEMORY[0x1E69E9A60], v14, *(v14 + 4));
  v15 = 1;
LABEL_9:
  CSRelease(v4, v6);
  return v15;
}

void CSCppSignatureDecodeOptionalData<__CFData const*>(const __CFData *a1, unint64_t *a2, CSCppSymbolicator *a3)
{
  v38 = *MEMORY[0x1E69E9840];
  BytePtr = CFDataGetBytePtr(a1);
  Length = CFDataGetLength(a1);
  if (!a2 || !BytePtr)
  {
    goto LABEL_12;
  }

  v8 = *a2;
  if (Length < *a2 || Length - *a2 < 8)
  {
    goto LABEL_12;
  }

  v10 = *&BytePtr[v8];
  if (!(v10 >> 33) || v10 != 12648430)
  {
    goto LABEL_12;
  }

  v13 = HIDWORD(v10);
  *a2 = v8 + 8;
  if (v13 != 4)
  {
    if (v13 != 3)
    {
      if (v13 == 2)
      {
        v14 = CFDataGetBytePtr(a1);
        if (v14)
        {
          v15 = v14;
          v16 = *a2;
          v17 = CFDataGetLength(a1);
          if (v17 > *a2 && v17 - *a2 >= 0x18)
          {
            v37 = *&v15[v16];
            v18 = *&v15[v16 + 16];
            v36 = v37;
            (*(**(a3 + 4) + 80))(*(a3 + 4), &v36);
            (*(**(a3 + 4) + 88))(*(a3 + 4), v18);
            *a2 += 24;
          }
        }
      }

      goto LABEL_12;
    }

    v19 = *MEMORY[0x1E69E9840];

    CSCppSignatureDecodeOptionalDataVersion3<__CFData const*>(a1, a2, a3);
    return;
  }

  v20 = CFDataGetBytePtr(a1);
  if (!v20)
  {
    goto LABEL_12;
  }

  v21 = v20;
  v22 = *a2;
  v23 = CFDataGetLength(a1);
  if (v23 <= *a2 || v23 - *a2 < 0x38)
  {
    goto LABEL_12;
  }

  v35 = *a2;
  CSCppSignatureDecodeOptionalDataVersion3<__CFData const*>(a1, &v35, a3);
  CSCppSymbolicator::get_symbol_owners(a3, &v37);
  v24 = &v21[v22];
  v25 = &v21[v22 + 56];
  v27 = *(&v37 + 1);
  v26 = v37;
  if (v37 == *(&v37 + 1))
  {
    goto LABEL_35;
  }

  v28 = (v25 + 96 * *(v24 + 13));
  v30 = *v28;
  v29 = (v28 + 1);
  v31 = &v29[v30];
  while (1)
  {
    v32 = *v26;
    v33 = v26[1];
    if (!v33)
    {
      if (v29 == v31)
      {
        goto LABEL_35;
      }

      goto LABEL_32;
    }

    atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
    if (v29 == v31)
    {
      break;
    }

LABEL_32:
    CSCppSymbolOwner::set_version(v32, v29);
    v34 = strlen(v29);
    if (v33)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v33);
    }

    v29 += v34 + 1;
    v26 += 2;
    if (v26 == v27)
    {
      goto LABEL_35;
    }
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v33);
LABEL_35:
  *a2 += (*(v25 + 96 * *(v24 + 13)) + 96 * *(v24 + 13) + 60);
  *&v36 = &v37;
  std::vector<std::shared_ptr<CSCppSymbolOwner>>::__destroy_vector::operator()[abi:ne200100](&v36);
LABEL_12:
  v12 = *MEMORY[0x1E69E9840];
}

unint64_t CSCppSignatureDecodeOptionalDataVersion3<__CFData const*>(const __CFData *a1, unint64_t *a2, CSCppSymbolicator *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  result = CFDataGetBytePtr(a1);
  if (a2)
  {
    v7 = result;
    if (result)
    {
      v8 = *a2;
      result = CFDataGetLength(a1);
      if (result > *a2 && result - *a2 >= 0x38)
      {
        v9 = v7 + v8;
        v10 = *(v7 + v8);
        v11 = *(v7 + v8 + 16);
        v25 = *(v9 + 24);
        v26 = v10;
        v12 = *(v9 + 40);
        v13 = *(v9 + 48);
        v14 = *(v9 + 52);
        v23 = v25;
        v24 = v10;
        (*(**(a3 + 4) + 80))(*(a3 + 4), &v24);
        (*(**(a3 + 4) + 96))(*(a3 + 4), &v23);
        (*(**(a3 + 4) + 88))(*(a3 + 4), v11);
        (*(**(a3 + 4) + 104))(*(a3 + 4), v12);
        *(*(a3 + 4) + 16) = v13 & 1;
        result = CSCppSymbolicator::initialize_aot_symbolication_session(a3);
        if (v14)
        {
          v15 = (v9 + 56);
          v16 = v14;
          do
          {
            v17 = v15[1];
            v22[0] = *v15;
            v22[1] = v17;
            v18 = v15[2];
            v19 = v15[3];
            v20 = v15[5];
            v22[4] = v15[4];
            v22[5] = v20;
            v22[2] = v18;
            v22[3] = v19;
            v15 += 6;
            result = CSCppSymbolicator::add_aot_image_info(a3, v22);
            --v16;
          }

          while (v16);
        }

        *a2 += (96 * v14 + 56);
      }
    }
  }

  v21 = *MEMORY[0x1E69E9840];
  return result;
}

void _createCSSymbolicatorFromFlatbuffer<__CFData const*>(FlatbufferSymbols::SymbolOwner *a1)
{
  v77[3] = *MEMORY[0x1E69E9840];
  v74[0] = 0;
  v74[1] = 0;
  v2 = FlatbufferSymbols::SymbolOwner::metadata_as_MachoMetadata(a1);
  if (v2)
  {
    v3 = (v2 - *v2);
    v4 = *v3;
    if (v4 >= 7)
    {
      if (v3[3])
      {
        v5 = *(v2 + v3[3]);
      }

      if (v4 >= 0xB)
      {
        v71 = v3[5];
        if (v71)
        {
          CSUUIDStringToCFUUIDBytes(v2 + v71 + *(v2 + v71) + 4, v74);
        }
      }
    }
  }

  FlatbufferSymbols::Symbolicator::metadata_as_DyldSharedCacheMetadata(a1);
  v6 = (a1 - *a1);
  if (*v6 < 9u || (v7 = v6[4]) == 0 || (v8 = *(a1 + v7), v9 = (a1 + v7 + v8), v10 = (4 * *v9), !v10))
  {
LABEL_85:
    operator new();
  }

  v73 = v9 + v10;
  v11 = a1 + v7 + v8;
  v12 = v11;
  while (1)
  {
    v14 = *(v12 + 1);
    v12 += 4;
    v13 = v14;
    v15 = &v12[v14];
    __p[0] = 0;
    __p[1] = 0;
    *&v76 = 0;
    v77[0] = 0;
    v77[1] = 0;
    v16 = *v15;
    v17 = -v16;
    v18 = (v15 - v16);
    if (*v18 >= 9u)
    {
      v19 = v18[4];
      if (v19)
      {
        v20 = *(v15 + v19);
        v21 = (4 * *(v15 + v19 + v20));
        if (v21)
        {
          v72 = v12;
          v22 = 0;
          v23 = 0;
          v24 = &v11[v13 + v20 + v19];
          do
          {
            v25 = *&v24[v22 + 8];
            v26 = v25 - *&v24[v22 + 8 + v25];
            v27 = &v24[v22 + v26];
            v28 = *(v27 + 4);
            if (v28 >= 5)
            {
              v29 = *(v27 + 6);
              if (v29)
              {
                v30 = &v24[v22 + v25 + v29 + *&v24[v22 + 8 + v25 + v29]];
                if (!strstr(v30 + 12, "__LINKINFO"))
                {
                  if (v28 < 7)
                  {
                    v32 = 0;
                    v31 = -1;
                  }

                  else
                  {
                    if (*&v24[v22 + 14 + v26])
                    {
                      v31 = *&v24[v22 + 8 + v25 + *&v24[v22 + 14 + v26]];
                    }

                    else
                    {
                      v31 = -1;
                    }

                    if (v28 >= 9 && *&v24[v22 + 16 + v26])
                    {
                      v32 = *&v24[v22 + 8 + v25 + *&v24[v22 + 16 + v26]];
                    }

                    else
                    {
                      v32 = 0;
                    }
                  }

                  if (v23 >= v76)
                  {
                    v33 = (v23 - __p[0]) >> 5;
                    if ((v33 + 1) >> 59)
                    {
                      std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
                    }

                    v34 = (v76 - __p[0]) >> 4;
                    if (v34 <= v33 + 1)
                    {
                      v34 = v33 + 1;
                    }

                    if (v76 - __p[0] >= 0x7FFFFFFFFFFFFFE0)
                    {
                      v35 = 0x7FFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v35 = v34;
                    }

                    if (v35)
                    {
                      std::allocator<CSCppSegmentRange>::allocate_at_least[abi:ne200100](__p, v35);
                    }

                    CSCppSegmentRange::CSCppSegmentRange((32 * v33), v31, v32, (v30 + 12), 0);
                    v23 = (v36 + 32);
                    v37 = (v36 - (__p[1] - __p[0]));
                    memcpy(v37, __p[0], __p[1] - __p[0]);
                    v38 = __p[0];
                    __p[0] = v37;
                    __p[1] = v23;
                    *&v76 = 0;
                    if (v38)
                    {
                      operator delete(v38);
                    }
                  }

                  else
                  {
                    CSCppSegmentRange::CSCppSegmentRange(v23, v31, v32, (v30 + 12), 0);
                    v23 += 32;
                  }

                  __p[1] = v23;
                }
              }
            }

            v22 += 4;
          }

          while (v21 != v22);
          v17 = -*v15;
          v12 = v72;
        }
      }
    }

    v39 = v15 + v17;
    v40 = *(v15 + v17);
    if (v40 >= 0x13)
    {
      if (*(v39 + 9))
      {
        v41 = (v15 + *(v39 + 9) + *(v15 + *(v39 + 9)));
        v42 = (v41 - *v41);
        if (*v42 >= 5u)
        {
          v43 = v42[2];
          if (v43)
          {
            v44 = *(v41 + v43);
          }
        }
      }

      if (v40 >= 0x15)
      {
        v45 = *(v39 + 10);
        if (v45)
        {
          v46 = (v15 + v45 + *(v15 + v45));
          v47 = (v46 - *v46);
          if (*v47 >= 5u)
          {
            v48 = v47[2];
            if (v48)
            {
              v49 = *(v46 + v48);
            }
          }
        }
      }
    }

    v50 = FlatbufferSymbols::SymbolOwner::metadata_as_MachoMetadata(v15);
    v51 = v50;
    if (v50)
    {
      break;
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    v11 = v12;
    if (v12 == v73)
    {
      goto LABEL_85;
    }
  }

  v52 = &v50[-*v50];
  v53 = *v52;
  if (v53 >= 7)
  {
    v54 = v52[3];
    if (v52[3])
    {
      v54 += &v50[*&v50[v54]];
    }

    if (v53 < 0x13)
    {
      if (v53 < 0x11)
      {
        goto LABEL_66;
      }

      v55 = 0;
    }

    else
    {
      v55 = v52[9];
      if (v52[9])
      {
        v55 += &v50[*&v50[v55]];
      }
    }

    v56 = v52[8];
    if (v52[8])
    {
      v56 += &v50[*&v50[v56]];
    }

    if (!v54 && (v55 || v56))
    {
LABEL_67:
      v57 = v52[6];
      if (v52[6])
      {
        v58 = &v50[v57];
        v59 = &v50[v57 + *&v50[v57]];
        v60 = &v59[-*v59];
        if (*v60 >= 7u)
        {
          v61 = *(v60 + 3);
          if (v61)
          {
            v62 = *&v59[v61];
          }
        }

        v63 = &v58[*v58];
        v64 = &v63[-*v63];
        if (*v64 >= 9u)
        {
          v65 = *(v64 + 4);
          if (v65)
          {
            v66 = *&v63[v65] << 32;
          }
        }
      }

      else if (v53 >= 0xF)
      {
        v67 = v52[7];
        if (v67)
        {
          CSArchitectureGetArchitectureForName(&v50[v67 + 4 + *&v50[v67]]);
        }
      }

LABEL_78:
      v68 = &v51[*&v51[-*v51 + 4]];
      CSUUIDStringToCFUUIDBytes(&v68[*v68 + 4], v77);
      v69 = (v15 - *v15);
      if (*v69 >= 0xFu)
      {
        v70 = v69[7];
        if (v70)
        {
          *(v15 + v70);
        }
      }

      std::allocate_shared[abi:ne200100]<CSCppSymbolOwner,std::allocator<CSCppSymbolOwner>,UUID const*,int,unsigned long long &,unsigned long long &,unsigned int &,CSCppArchitecture &,char const*&,0>();
    }
  }

LABEL_66:
  if (v53 < 0xD)
  {
    goto LABEL_78;
  }

  goto LABEL_67;
}

void sub_1D979EEFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void **a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  v29 = *(v27 - 120);
  if (v29)
  {
    *(v27 - 112) = v29;
    operator delete(v29);
  }

  a20 = &a27;
  std::vector<std::shared_ptr<CSCppSymbolOwner>>::__destroy_vector::operator()[abi:ne200100](&a20);
  _Unwind_Resume(a1);
}

uint64_t FlatbufferSymbols::Symbolicator::metadata_as_DyldSharedCacheMetadata(FlatbufferSymbols::Symbolicator *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 3) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

const __CFData *_createCSSymbolicatorFromFlatbufferSignature<__CFData const*>(const __CFData *result)
{
  if (result)
  {
    BytePtr = CFDataGetBytePtr(result);
    if (BytePtr)
    {
      v2 = &BytePtr[*BytePtr];
    }

    else
    {
      v2 = 0;
    }

    v3 = &v2[-*v2];
    if (*v3 >= 5u)
    {
      v4 = *(v3 + 2);
      if (v4)
      {
        v5 = &v2[v4 + *&v2[v4]];
        _createCSSymbolicatorFromFlatbuffer<__CFData const*>(&v5[*(v5 + 1) + 4]);
      }
    }

    return 0;
  }

  return result;
}

__CFData *_CSSymbolicatorCreateFlatbufferSignatureForSymbolicatorsWithBlockAtObservedTimeRange<__CFData const*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((a1 - 16385) < 0xFFFFFFFFFFFFC000 || a4 == 0)
  {
    return 0;
  }

  v46[0] = 0;
  v46[1] = v46;
  v46[2] = 0x2000000000;
  v46[3] = a1;
  v38 = 0;
  v39 = &v38;
  v40 = 0x4002000000;
  v41 = __Block_byref_object_copy__10;
  v42 = __Block_byref_object_dispose__11;
  v43 = 0;
  v44 = 0;
  v45 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0xE802000000;
  v21 = __Block_byref_object_copy__12;
  v22 = __Block_byref_object_dispose__13;
  v23 = 0;
  v24 = 0;
  v25 = 1024;
  v27 = xmmword_1D97E4300;
  v26 = 0x7FFFFFFF;
  v28 = 0;
  v32 = 0;
  v31[2] = 0;
  v30 = 0;
  v31[0] = 0;
  v29 = 0;
  *(v31 + 6) = 0;
  v33 = 1;
  v34 = 256;
  *(v35 + 7) = 0;
  v37[4] = 0;
  v35[0] = 0;
  v36 = 0u;
  memset(v37, 0, 27);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 0x40000000;
  v17[2] = ___Z84_CSSymbolicatorCreateFlatbufferSignatureForSymbolicatorsWithBlockAtObservedTimeRangeIPK8__CFDataET_myyU13block_pointerFvU13block_pointerFv10_CSTypeRefEE_block_invoke;
  v17[3] = &unk_1E8584570;
  v17[4] = v46;
  v17[5] = &v38;
  v17[6] = &v18;
  v17[7] = a2;
  v17[8] = a3;
  (*(a4 + 16))(a4, v17);
  v6 = v39[5];
  v7 = v39[6];
  if (v7 == v6)
  {
    goto LABEL_12;
  }

  v8 = v19;
  v12 = 0;
  v13 = 0;
  __p = 0;
  std::vector<flatbuffers::Offset<FlatbufferSymbols::Symbolicator>>::__init_with_size[abi:ne200100]<flatbuffers::Offset<FlatbufferSymbols::Symbolicator>*,flatbuffers::Offset<FlatbufferSymbols::Symbolicator>*>(&__p, v6, v7, (v7 - v6) >> 2);
  FlatbufferEncoder::encodeSymbolicatorOffsets((v8 + 5), &__p, &v14);
  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  if ((v16 & 1) == 0)
  {
LABEL_12:
    Mutable = 0;
  }

  else
  {
    Mutable = CFDataCreateMutable(0, 0);
    CFDataSetLength(Mutable, length);
    MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
    memcpy(MutableBytePtr, v14, length);
  }

  _Block_object_dispose(&v18, 8);
  if (v37[0])
  {
    v37[1] = v37[0];
    operator delete(v37[0]);
  }

  flatbuffers::FlatBufferBuilderImpl<false>::~FlatBufferBuilderImpl(&v23);
  _Block_object_dispose(&v38, 8);
  if (v43)
  {
    v44 = v43;
    operator delete(v43);
  }

  _Block_object_dispose(v46, 8);
  return Mutable;
}

void sub_1D979F344(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  _Block_object_dispose(&a24, 8);
  FlatbufferEncoder::~FlatbufferEncoder((v24 + 40));
  _Block_object_dispose((v25 - 128), 8);
  v27 = *(v25 - 88);
  if (v27)
  {
    *(v25 - 80) = v27;
    operator delete(v27);
  }

  _Block_object_dispose((v25 - 64), 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__10(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

__n128 __Block_byref_object_copy__12(uint64_t a1, uint64_t a2)
{
  flatbuffers::FlatBufferBuilderImpl<false>::FlatBufferBuilderImpl(a1 + 40, a2 + 40);
  v4 = *(a2 + 184);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 184) = v4;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a2 + 192) = 0;
  *(a2 + 200) = 0;
  *(a2 + 208) = 0;
  result = *(a2 + 216);
  *(a1 + 216) = result;
  return result;
}

void *__Block_byref_object_dispose__13(void *a1)
{
  v2 = a1[24];
  if (v2)
  {
    a1[25] = v2;
    operator delete(v2);
  }

  return flatbuffers::FlatBufferBuilderImpl<false>::~FlatBufferBuilderImpl(a1 + 5);
}

void FlatbufferEncoder::~FlatbufferEncoder(FlatbufferEncoder *this)
{
  v2 = *(this + 19);
  if (v2)
  {
    *(this + 20) = v2;
    operator delete(v2);
  }

  flatbuffers::FlatBufferBuilderImpl<false>::~FlatBufferBuilderImpl(this);
}

void ___Z84_CSSymbolicatorCreateFlatbufferSignatureForSymbolicatorsWithBlockAtObservedTimeRangeIPK8__CFDataET_myyU13block_pointerFvU13block_pointerFv10_CSTypeRefEE_block_invoke(void *a1, char a2, uint64_t a3)
{
  if (*(*(a1[4] + 8) + 24) != (*(*(a1[5] + 8) + 48) - *(*(a1[5] + 8) + 40)) >> 2 && (a2 & 7 | (8 * (a3 & 3))) != 0)
  {
    v5 = FlatbufferEncoder::encodeCSSymbolicatorIntoOffset(*(a1[6] + 8) + 40, a2, a3, a1[7], a1[8]);
    if (v5)
    {
      v6 = *(a1[5] + 8);
      v8 = v6[6];
      v7 = v6[7];
      if (v8 >= v7)
      {
        v10 = v6[5];
        v11 = v8 - v10;
        v12 = (v8 - v10) >> 2;
        v13 = v12 + 1;
        if ((v12 + 1) >> 62)
        {
          std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
        }

        v14 = v7 - v10;
        if (v14 >> 1 > v13)
        {
          v13 = v14 >> 1;
        }

        v15 = v14 >= 0x7FFFFFFFFFFFFFFCLL;
        v16 = 0x3FFFFFFFFFFFFFFFLL;
        if (!v15)
        {
          v16 = v13;
        }

        if (v16)
        {
          std::allocator<flatbuffers::Offset<FlatbufferSymbols::InlineSymbol>>::allocate_at_least[abi:ne200100]((v6 + 5), v16);
        }

        v17 = (v8 - v10) >> 2;
        v18 = (4 * v12);
        v19 = (4 * v12 - 4 * v17);
        *v18 = v5;
        v9 = v18 + 1;
        memcpy(v19, v10, v11);
        v20 = v6[5];
        v6[5] = v19;
        v6[6] = v9;
        v6[7] = 0;
        if (v20)
        {
          operator delete(v20);
        }
      }

      else
      {
        *v8 = v5;
        v9 = v8 + 4;
      }

      v6[6] = v9;
    }
  }
}

uint64_t _CSSymbolicatorForeachFlatbufferSymbolicatorInSignatureHelper<__CFData const*>(const __CFData *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1 || CSCppDetermineSignatureType<__CFData const*>(a1) != 2)
  {
    return 0;
  }

  BytePtr = CFDataGetBytePtr(a1);
  v7 = BytePtr ? &BytePtr[*BytePtr] : 0;
  v8 = &v7[-*v7];
  if (*v8 < 5u)
  {
    return 0;
  }

  v9 = *(v8 + 2);
  if (!v9)
  {
    return 0;
  }

  v10 = &v7[v9 + *&v7[v9]];
  if (!*v10)
  {
    return 0;
  }

  v11 = 0;
  v12 = 0;
  v13 = 0;
  do
  {
    v14 = &v10[(v11 & 0xFFFFFFFC) + 4];
    v15 = *v14;
    if (!a4)
    {
      _createCSSymbolicatorFromFlatbuffer<__CFData const*>(&v14[v15]);
    }

    (*(a4 + 16))(a4, &v14[v15]);
    ++v13;
    ++v12;
    v11 += 4;
  }

  while (v12 < *v10);
  return v13;
}

const __CFData *_CSSymbolicatorCreateWithSignatureAdditionalSymbolOwnersFlagsAndNotification<__CFData const*>(const __CFData *a1, int a2, int a3, uint64_t a4, uint64_t a5)
{
  v7 = CSSymbolicatorCreateWithSignatureFlagsAndNotification(a1, a2, a3);
  v9 = v8;
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x4002000000;
  v13[3] = __Block_byref_object_copy__15_0;
  v15[0] = 0;
  v15[1] = 0;
  v13[4] = __Block_byref_object_dispose__16_0;
  v14 = v15;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 0x40000000;
  v12[2] = ___Z76_CSSymbolicatorCreateWithSignatureAdditionalSymbolOwnersFlagsAndNotificationIPK8__CFDataE10_CSTypeRefT_jjS3_U13block_pointerFvj19_CSNotificationDataE_block_invoke;
  v12[3] = &unk_1E8584598;
  v12[4] = v13;
  CSSymbolicatorForeachSegmentAtTime(v7, v8, 0x8000000000000001, v12);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 0x40000000;
  v11[2] = ___Z76_CSSymbolicatorCreateWithSignatureAdditionalSymbolOwnersFlagsAndNotificationIPK8__CFDataE10_CSTypeRefT_jjS3_U13block_pointerFvj19_CSNotificationDataE_block_invoke_2;
  v11[3] = &unk_1E8584610;
  v11[5] = a4;
  v11[6] = a5;
  v11[4] = v13;
  CSSymbolicatorApplyMutableContextBlock(v7, v9, v11);
  _Block_object_dispose(v13, 8);
  std::__tree<TRange<Pointer64>>::destroy(&v14, v15[0]);
  return v7;
}

void sub_1D979F8E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27)
{
  _Block_object_dispose(&a21, 8);
  std::__tree<TRange<Pointer64>>::destroy(v27 + 40, a27);
  _Unwind_Resume(a1);
}

void *__Block_byref_object_copy__15_0(void *result, void *a2)
{
  result[5] = a2[5];
  v2 = a2 + 6;
  v3 = a2[6];
  result[6] = v3;
  v4 = result + 6;
  v5 = a2[7];
  result[7] = v5;
  if (v5)
  {
    *(v3 + 16) = v4;
    a2[5] = v2;
    *v2 = 0;
    a2[7] = 0;
  }

  else
  {
    result[5] = v4;
  }

  return result;
}

void *___Z76_CSSymbolicatorCreateWithSignatureAdditionalSymbolOwnersFlagsAndNotificationIPK8__CFDataE10_CSTypeRefT_jjS3_U13block_pointerFvj19_CSNotificationDataE_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Range = CSRegionGetRange(a2, a3);
  v5 = *(*(a1 + 32) + 8);
  v8[0] = Range;
  v8[1] = Range;
  v8[2] = v6;
  return std::__tree<std::__value_type<unsigned long long,_CSRange>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,_CSRange>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,_CSRange>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long,_CSRange>>(v5 + 40, v8);
}

uint64_t ___Z76_CSSymbolicatorCreateWithSignatureAdditionalSymbolOwnersFlagsAndNotificationIPK8__CFDataE10_CSTypeRefT_jjS3_U13block_pointerFvj19_CSNotificationDataE_block_invoke_2(void *a1, uint64_t a2)
{
  v2 = a1[5];
  v3 = a1[6];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = ___Z76_CSSymbolicatorCreateWithSignatureAdditionalSymbolOwnersFlagsAndNotificationIPK8__CFDataE10_CSTypeRefT_jjS3_U13block_pointerFvj19_CSNotificationDataE_block_invoke_3;
  v5[3] = &unk_1E85845E8;
  v5[4] = a1[4];
  v5[5] = a2;
  return CSSymbolicatorForeachSymbolOwnerAtTime(v2, v3, 0x8000000000000001, v5);
}

void ___Z76_CSSymbolicatorCreateWithSignatureAdditionalSymbolOwnersFlagsAndNotificationIPK8__CFDataE10_CSTypeRefT_jjS3_U13block_pointerFvj19_CSNotificationDataE_block_invoke_3(uint64_t a1, char a2, uint64_t a3)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = ___Z76_CSSymbolicatorCreateWithSignatureAdditionalSymbolOwnersFlagsAndNotificationIPK8__CFDataE10_CSTypeRefT_jjS3_U13block_pointerFvj19_CSNotificationDataE_block_invoke_4;
  v6[3] = &unk_1E85845C0;
  v6[4] = *(a1 + 32);
  v6[5] = &v7;
  CSSymbolOwnerForeachSegment(a2, a3, v6);
  if ((v8[3] & 1) == 0)
  {
    CSSymbolOwnerAddInContext(a2, a3, *(a1 + 40));
  }

  _Block_object_dispose(&v7, 8);
}

void sub_1D979FB00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

unint64_t ___Z76_CSSymbolicatorCreateWithSignatureAdditionalSymbolOwnersFlagsAndNotificationIPK8__CFDataE10_CSTypeRefT_jjS3_U13block_pointerFvj19_CSNotificationDataE_block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = CSRegionGetRange(a2, a3);
  v6 = result;
  v7 = v5;
  v8 = *(*(a1 + 32) + 8);
  v9 = *(v8 + 48);
  if (v9)
  {
    v10 = (v8 + 48);
    do
    {
      v11 = v9[4];
      v12 = v11 >= result;
      v13 = v11 < result;
      if (v12)
      {
        v10 = v9;
      }

      v9 = v9[v13];
    }

    while (v9);
    if (v10 != (v8 + 48))
    {
      result = CSRangeIntersectsRange(result, v5, v10[5], v10[6]);
      if (result)
      {
LABEL_17:
        *(*(*(a1 + 40) + 8) + 24) = 1;
        return result;
      }

      v8 = *(*(a1 + 32) + 8);
    }
  }

  else
  {
    v10 = (v8 + 48);
  }

  if (v10 != *(v8 + 40))
  {
    v14 = *v10;
    if (*v10)
    {
      do
      {
        v15 = v14;
        v14 = v14[1];
      }

      while (v14);
    }

    else
    {
      do
      {
        v15 = v10[2];
        v16 = *v15 == v10;
        v10 = v15;
      }

      while (v16);
    }

    result = CSRangeIntersectsRange(v6, v7, v15[5], v15[6]);
    if (result)
    {
      goto LABEL_17;
    }
  }

  return result;
}

void _createCSSymbolicatorFromCustomSignature<__CFData const*>(const __CFData *a1, int a2, int a3)
{
  v26 = 0;
  v27 = 0;
  v25 = 0;
  v24 = 0;
  if (CSCppSignatureDecodeSymbolicator<__CFData const*>(a1, &v24, &v25, &v27 + 1, &v27, &v26 + 1, &v26))
  {
    if (v25 == 1)
    {
      if ((((a2 & 0x1000) == 0) & ((a3 & 0x1000) >> 12)) != 0)
      {
        v6 = (HIDWORD(v26) & a2 | a3) & 0xFFFFEFFF;
      }

      else
      {
        v6 = HIDWORD(v26) & a2 | a3;
      }

      HIDWORD(v26) = v6;
      v21 = 0uLL;
      v22 = 0;
      std::vector<std::shared_ptr<CSCppSymbolOwner>>::reserve(&v21, v26);
      if (v26)
      {
        v18 = 0;
        v19 = 0;
        v16 = 0;
        v17 = 0;
        v14 = 0;
        __p[0] = 0;
        __p[1] = 0;
        v13 = 0;
        if (CSCppSignatureDecodeSymbolOwner<__CFData const*>(a1, &v24, &v19, &v18 + 1, &v18, &v17, &v16, &v15, &v14, __p))
        {
          v20[0] = v19;
          std::allocate_shared[abi:ne200100]<CSCppSymbolOwner,std::allocator<CSCppSymbolOwner>,UUID const*,unsigned int &,unsigned long long &,unsigned long long &,unsigned int &,CSCppArchitecture &,char *&,0>();
        }

        std::ostringstream::basic_ostringstream[abi:ne200100](&v23);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v23, "Error decoding symbol owner from signature", 42);
        std::ostringstream::str[abi:ne200100](&v23, &v11);
        Exception::Exception(v20, &v11);
        exception = __cxa_allocate_exception(0x20uLL);
        Exception::Exception(exception, v20);
      }

      if (*(&v21 + 1) != v21)
      {
        operator new();
      }

      std::ostringstream::basic_ostringstream[abi:ne200100](&v23);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v23, "ERROR, no symbol owners in signature", 36);
      std::ostringstream::str[abi:ne200100](&v23, __p);
      Exception::Exception(v20, __p);
      v10 = __cxa_allocate_exception(0x20uLL);
      Exception::Exception(v10, v20);
    }

    std::ostringstream::basic_ostringstream[abi:ne200100](&v23);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v23, "ERROR, unhandled signature version", 34);
    std::ostringstream::str[abi:ne200100](&v23, &v21);
    Exception::Exception(v20, &v21);
    v9 = __cxa_allocate_exception(0x20uLL);
    Exception::Exception(v9, v20);
  }

  std::ostringstream::basic_ostringstream[abi:ne200100](&v23);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v23, "Error decoding symbolicator from signature", 42);
  std::ostringstream::str[abi:ne200100](&v23, &v21);
  Exception::Exception(v20, &v21);
  v8 = __cxa_allocate_exception(0x20uLL);
  Exception::Exception(v8, v20);
}

void sub_1D97A0098(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, std::exception a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, void **a41)
{
  Exception::~Exception(&a31);
  if (a23 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a41);
  a41 = &a35;
  std::vector<std::shared_ptr<CSCppSymbolOwner>>::__destroy_vector::operator()[abi:ne200100](&a41);
  _Unwind_Resume(a1);
}

void sub_1D97A0238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, std::__shared_weak_count *a33)
{
  if (a33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a33);
  }

  JUMPOUT(0x1D97A0210);
}

int32x4_t *_decodeMMapArchivesFromSignature<__CFData const*>@<X0>(const __CFData *a1@<X0>, void *a2@<X1>, TMMapArchive *a3@<X2>, unsigned int a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 32) = 1065353216;
  v9 = 0;
  if (a3)
  {
    v7 = 0;
  }

  else
  {
    v7 = (a4 >> 12) & 1;
  }

  result = CSCppSignatureDecodeMMapArchive<__CFData const*>(a1, a2, &v9);
  if (result)
  {
    if (v9)
    {
      CSCppMMapArchiveCache::add_archive(result, 1, a3, 0, 0);
    }

    CSCppMMapArchiveCache::add_signature_archive<__CFData const*>(result, a1, a3, v7);
  }

  return result;
}

const __CFData *create_symbolicator_signature_with_symbol_owners<__CFData const*>(uint64_t a1, uint64_t **a2, char a3)
{
  Mutable = CFDataCreateMutable(0, 0);
  v7 = *(a1 + 32);
  v8 = *((*(*v7 + 16))(v7) + 12);
  v9 = (*(*v7 + 24))(v7);
  v10 = atomic_load((a1 + 40));
  v11.n128_f64[0] = CSCppSignatureEncodeSymbolicator<__CFData *>(Mutable, v8, v9, v10, (a2[1] - *a2) >> 4);
  v13 = *a2;
  v12 = a2[1];
  while (v13 != v12)
  {
    v14 = *v13;
    v13 += 2;
    CSCppSignatureEncodeSymbolOwner<__CFData *>(Mutable, (v14 + 16), *(v14 + 104), *(v14 + 108), *(v14 + 88), *(v14 + 96), *(v14 + 112), *(v14 + 120), (v14 + 32), 0);
  }

  if (a3)
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 0x40000000;
    v20[2] = ___Z31CSCppAddMMapArchivesToSignatureIP8__CFDataEv10_CSTypeRefT_b_block_invoke;
    v20[3] = &__block_descriptor_tmp_7_3;
    v20[4] = Mutable;
    v21 = (a3 & 4) != 0;
    CSCppForEachMMapArchiveInSymbolicator(2, a1, v20);
  }

  v15 = (*(*v7 + 48))(v7, v11);
  v16 = (*(*v7 + 64))(v7);
  v17 = (*(*v7 + 56))(v7);
  v18 = (*(*v7 + 72))(v7);
  CSCppSignatureEncodeOptionalData<__CFData *>(Mutable, 4, v15, v16, v17, v18, 2, a1);
  return Mutable;
}

void _CSSymbolicatorCreateWithSingleSymbolOwnerSignaturesAndFlags<__CFData const*>(const __CFData **a1, unint64_t a2)
{
  memset(v21, 0, sizeof(v21));
  __src = 0;
  v19 = 0;
  v20 = 0;
  std::vector<std::shared_ptr<CSCppSymbolOwner>>::reserve(v21, a2);
  std::vector<unsigned long long>::reserve(&__src, a2);
  if (a2)
  {
    v4 = a1;
    v5 = a2;
    do
    {
      v6 = *v4;
      v17 = 0;
      _CSSymbolOwnerCreateUnmanagedWithSingleSymbolOwnerSignature<__CFData const*>(v6, v16);
      if (*&v16[0])
      {
        std::vector<std::shared_ptr<CSCppSymbolOwner>>::push_back[abi:ne200100](v21, v16);
        v7 = v19;
        if (v19 >= v20)
        {
          v9 = __src;
          v10 = v19 - __src;
          v11 = (v19 - __src) >> 3;
          v12 = v11 + 1;
          if ((v11 + 1) >> 61)
          {
            std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
          }

          v13 = v20 - __src;
          if ((v20 - __src) >> 2 > v12)
          {
            v12 = v13 >> 2;
          }

          if (v13 >= 0x7FFFFFFFFFFFFFF8)
          {
            v14 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v14 = v12;
          }

          if (v14)
          {
            std::allocator<unsigned long>::allocate_at_least[abi:ne200100](&__src, v14);
          }

          *(8 * v11) = v17;
          v8 = 8 * v11 + 8;
          memcpy(0, v9, v10);
          v15 = __src;
          __src = 0;
          v19 = v8;
          v20 = 0;
          if (v15)
          {
            operator delete(v15);
          }
        }

        else
        {
          *v19 = v17;
          v8 = (v7 + 8);
        }

        v19 = v8;
      }

      if (*(&v16[0] + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v16[0] + 1));
      }

      ++v4;
      --v5;
    }

    while (v5);
  }

  operator new();
}

void sub_1D97A0884(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24)
{
  a13 = &a19;
  std::vector<std::shared_ptr<CSCppSymbolOwner>>::__destroy_vector::operator()[abi:ne200100](&a13);
  if (__p)
  {
    a24 = __p;
    operator delete(__p);
  }

  a13 = (v24 - 120);
  std::vector<std::shared_ptr<CSCppSymbolOwner>>::__destroy_vector::operator()[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

void _CSSymbolOwnerCreateUnmanagedWithSingleSymbolOwnerSignature<__CFData const*>(const __CFData *a1@<X0>, void *a2@<X8>)
{
  if (a1 && (v15 = 0, v14 = 0, v13 = 0, v12 = 0, (CSCppSignatureDecodeSymbolicator<__CFData const*>(a1, &v12, &v13, &v15 + 1, &v15, &v14 + 1, &v14) & 1) != 0))
  {
    v10 = 0;
    v11 = 0;
    v9 = 0;
    v8 = 0;
    v6 = 0;
    __p[0] = 0;
    __p[1] = 0;
    v5 = 0;
    if (CSCppSignatureDecodeSymbolOwner<__CFData const*>(a1, &v12, &v11, &v10 + 1, &v10, &v9, &v8, &v7, &v6, __p))
    {
      std::allocate_shared[abi:ne200100]<CSCppSymbolOwner,std::allocator<CSCppSymbolOwner>,UUID const*,unsigned int &,unsigned long long &,unsigned long long &,unsigned int &,CSCppArchitecture &,char *&,0>();
    }

    *a2 = 0;
    a2[1] = 0;
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }
}

void sub_1D97A0AA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const __CFData *_CSSymbolicatorCreateWithSignatureFlagsAndNotification<__CFData const*>(const __CFData *result, int a2, int a3)
{
  if (result)
  {
    v5 = result;
    v6 = CSCppDetermineSignatureType<__CFData const*>(result);
    if (v6 != 2)
    {
      if (v6 == 1)
      {
        _createCSSymbolicatorFromCustomSignature<__CFData const*>(v5, a2, a3);
      }

      std::ostringstream::basic_ostringstream[abi:ne200100](v10);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "Unknown symbolicator signature type.", 36);
      std::ostringstream::str[abi:ne200100](v10, &v9);
      Exception::Exception(v8, &v9);
      exception = __cxa_allocate_exception(0x20uLL);
      Exception::Exception(exception, v8);
    }

    return _createCSSymbolicatorFromFlatbufferSignature<__CFData const*>(v5);
  }

  return result;
}

void sub_1D97A0BDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  Exception::~Exception(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a19);
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x1D97A0B58);
  }

  _Unwind_Resume(a1);
}

const __CFData *_CSSymbolicatorCreateSignatureElidingSomeSymbolOwnersWithPredicate<__CFData const*>(char a1, uint64_t a2, char a3, uint64_t a4)
{
  if (!(a1 & 7 | (8 * (a2 & 3))))
  {
    return 0;
  }

  v14 = 0;
  v15 = 0;
  v16 = 0;
  CSCppSymbolicator::get_symbol_owners((a2 & 0xFFFFFFFFFFFFFFFCLL), &v12);
  v7 = v12;
  v8 = v13;
  if (v12 != v13)
  {
    do
    {
      if (((*(a4 + 16))(a4, 3, *v7) & 1) == 0)
      {
        std::vector<std::shared_ptr<CSCppSymbolOwner>>::push_back[abi:ne200100](&v14, v7);
      }

      ++v7;
    }

    while (v7 != v8);
  }

  v17 = &v12;
  std::vector<std::shared_ptr<CSCppSymbolOwner>>::__destroy_vector::operator()[abi:ne200100](&v17);
  if (v14 == v15)
  {
    symbolicator_signature_with_symbol = 0;
  }

  else
  {
    v11[0] = v14;
    v11[1] = v15;
    v11[2] = v16;
    v15 = 0;
    v16 = 0;
    v14 = 0;
    symbolicator_signature_with_symbol = create_symbolicator_signature_with_symbol_owners<__CFData const*>(a2 & 0xFFFFFFFFFFFFFFFCLL, v11, a3);
    v12 = v11;
    std::vector<std::shared_ptr<CSCppSymbolOwner>>::__destroy_vector::operator()[abi:ne200100](&v12);
  }

  v12 = &v14;
  std::vector<std::shared_ptr<CSCppSymbolOwner>>::__destroy_vector::operator()[abi:ne200100](&v12);
  return symbolicator_signature_with_symbol;
}

void sub_1D97A0D88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, uint64_t a13, uint64_t a14, char a15)
{
  std::vector<std::shared_ptr<CSCppSymbolOwner>>::__destroy_vector::operator()[abi:ne200100](&a12);
  *(v15 - 56) = &a15;
  std::vector<std::shared_ptr<CSCppSymbolOwner>>::__destroy_vector::operator()[abi:ne200100]((v15 - 56));
  _Unwind_Resume(a1);
}

const __CFData *_CSSymbolicatorCreateSignatureElidingSomeSymbolOwners<__CFData const*>(char a1, uint64_t a2, char a3, char a4, uint64_t a5)
{
  if (!(a1 & 7 | (8 * (a2 & 3))))
  {
    return 0;
  }

  CSCppSymbolicator::get_symbol_owners((a2 & 0xFFFFFFFFFFFFFFFCLL), &v16);
  if (!CSIsNull(a4, a5))
  {
    memset(v13, 0, sizeof(v13));
    std::vector<std::shared_ptr<CSCppSymbolOwner>>::__init_with_size[abi:ne200100]<std::shared_ptr<CSCppSymbolOwner>*,std::shared_ptr<CSCppSymbolOwner>*>(v13, v16, *(&v16 + 1), (*(&v16 + 1) - v16) >> 4);
    elide_some_symbol_owners(a4, a5, v13, &v14);
    std::vector<std::shared_ptr<CSCppSymbolOwner>>::__vdeallocate(&v16);
    v16 = v14;
    v17 = v15;
    v15 = 0;
    v14 = 0uLL;
    v18 = &v14;
    std::vector<std::shared_ptr<CSCppSymbolOwner>>::__destroy_vector::operator()[abi:ne200100](&v18);
    v18 = v13;
    std::vector<std::shared_ptr<CSCppSymbolOwner>>::__destroy_vector::operator()[abi:ne200100](&v18);
  }

  v11 = v16;
  v12 = v17;
  v17 = 0;
  v16 = 0uLL;
  symbolicator_signature_with_symbol = create_symbolicator_signature_with_symbol_owners<__CFData const*>(a2 & 0xFFFFFFFFFFFFFFFCLL, &v11, a3);
  *&v14 = &v11;
  std::vector<std::shared_ptr<CSCppSymbolOwner>>::__destroy_vector::operator()[abi:ne200100](&v14);
  *&v14 = &v16;
  std::vector<std::shared_ptr<CSCppSymbolOwner>>::__destroy_vector::operator()[abi:ne200100](&v14);
  return symbolicator_signature_with_symbol;
}

void sub_1D97A0F00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void **a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  *(v20 - 56) = v19;
  std::vector<std::shared_ptr<CSCppSymbolOwner>>::__destroy_vector::operator()[abi:ne200100]((v20 - 56));
  a15 = &a19;
  std::vector<std::shared_ptr<CSCppSymbolOwner>>::__destroy_vector::operator()[abi:ne200100](&a15);
  _Unwind_Resume(a1);
}

__CFData *_CSSymbolicatorCreateFlatbufferSignatureWithProcessTimerange<__CFData const*>(char a1, uint64_t a2, unsigned int a3, unint64_t a4, unint64_t a5)
{
  v13 = 0;
  v14 = 0;
  v15 = 1024;
  v16 = 0x7FFFFFFF;
  v17 = xmmword_1D97E4300;
  if ((a3 & 0x10) != 0)
  {
    v6 = a3 & 0xFFFFFFFB;
  }

  else
  {
    v6 = a3;
  }

  v18 = 0;
  v22 = 0;
  v21[2] = 0;
  v20 = 0;
  v21[0] = 0;
  v19 = 0;
  *(v21 + 6) = 0;
  v23 = 1;
  v24 = 256;
  __p[4] = 0;
  v25[0] = 0;
  *(v25 + 7) = 0;
  memset(__p, 0, 27);
  v26 = 0u;
  FlatbufferEncoder::encodeCSSymbolicator(&v13, a1, a2, v6 & 1, v6, a4, a5, &v10);
  if (v12)
  {
    Mutable = CFDataCreateMutable(0, 0);
    CFDataSetLength(Mutable, length);
    MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
    memcpy(MutableBytePtr, v10, length);
  }

  else
  {
    Mutable = 0;
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  flatbuffers::FlatBufferBuilderImpl<false>::~FlatBufferBuilderImpl(&v13);
  return Mutable;
}

void sub_1D97A1058(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  FlatbufferEncoder::~FlatbufferEncoder(va);
  _Unwind_Resume(a1);
}

__CFData *_CSSymbolOwnerCreateFlatbufferSignatureWithAddressSet<__CFData const*>(char a1, uint64_t a2, unsigned int a3, char a4, uint64_t a5)
{
  v18 = 0;
  v19 = 0;
  v20 = 1024;
  v21 = 0x7FFFFFFF;
  v22 = xmmword_1D97E4300;
  v23 = 0;
  v27 = 0;
  v26[2] = 0;
  v25 = 0;
  v26[0] = 0;
  v24 = 0;
  *(v26 + 6) = 0;
  v28 = 1;
  v29 = 256;
  __p[4] = 0;
  v30[0] = 0;
  *(v30 + 7) = 0;
  memset(__p, 0, 27);
  v31 = 0u;
  v9 = CSIsNull(a4, a5);
  if ((a3 & 0x10) != 0)
  {
    v10 = a3 & 0xFFFFFFFB;
  }

  else
  {
    v10 = a3;
  }

  if (v9)
  {
    v11 = 0;
  }

  else
  {
    v11 = a5 & 0xFFFFFFFFFFFFFFFCLL;
  }

  FlatbufferEncoder::encodeCSSymbolOwner(&v18, a1, a2, v10 & 1, v11, v10, &v15);
  if (v17)
  {
    Mutable = CFDataCreateMutable(0, 0);
    CFDataSetLength(Mutable, length);
    MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
    memcpy(MutableBytePtr, v15, length);
  }

  else
  {
    Mutable = 0;
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  flatbuffers::FlatBufferBuilderImpl<false>::~FlatBufferBuilderImpl(&v18);
  return Mutable;
}

void sub_1D97A11C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  FlatbufferEncoder::~FlatbufferEncoder(va);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__29(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

void __Block_byref_object_dispose__30(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

uint64_t ___ZL31_addAotImageInfosToOptionalDataR37SignatureOptionalDataEncodingVersion310_CSTypeRefP8__CFDatam_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *__src, unint64_t a6)
{
  v12[9] = *MEMORY[0x1E69E9840];
  *&v10 = a2;
  *(&v10 + 1) = a3;
  v11 = a4;
  if (a6 >= 0x40)
  {
    v7 = 64;
  }

  else
  {
    v7 = a6;
  }

  memcpy(v12, __src, v7);
  v12[8] = v7;
  std::vector<CSSymbolicatorAotImageInfo>::push_back[abi:ne200100](*(*(a1 + 32) + 8) + 40, &v10);
  v8 = *MEMORY[0x1E69E9840];
  return 1;
}

void std::vector<CSSymbolicatorAotImageInfo>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v11 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 5);
    v12 = v11 + 1;
    if (v11 + 1 > 0x2AAAAAAAAAAAAAALL)
    {
      std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
    }

    v13 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 5);
    if (2 * v13 > v12)
    {
      v12 = 2 * v13;
    }

    if (v13 >= 0x155555555555555)
    {
      v14 = 0x2AAAAAAAAAAAAAALL;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      std::allocator<CSSymbolicatorAotImageInfo>::allocate_at_least[abi:ne200100](a1, v14);
    }

    v15 = 96 * v11;
    v16 = a2[1];
    *v15 = *a2;
    *(v15 + 16) = v16;
    v17 = a2[2];
    v18 = a2[3];
    v19 = a2[5];
    *(v15 + 64) = a2[4];
    *(v15 + 80) = v19;
    *(v15 + 32) = v17;
    *(v15 + 48) = v18;
    v10 = 96 * v11 + 96;
    v20 = *(a1 + 8) - *a1;
    v21 = v15 - v20;
    memcpy((v15 - v20), *a1, v20);
    v22 = *a1;
    *a1 = v21;
    *(a1 + 8) = v10;
    *(a1 + 16) = 0;
    if (v22)
    {
      operator delete(v22);
    }
  }

  else
  {
    v6 = a2[1];
    *v4 = *a2;
    v4[1] = v6;
    v7 = a2[2];
    v8 = a2[3];
    v9 = a2[5];
    v4[4] = a2[4];
    v4[5] = v9;
    v4[2] = v7;
    v4[3] = v8;
    v10 = (v4 + 6);
  }

  *(a1 + 8) = v10;
}

void CSCppSegmentRange::CSCppSegmentRange(CSCppSegmentRange *this, uint64_t a2, uint64_t a3, CSCppNamedRange *a4, int a5)
{
  v8 = "SEGMENT";
  if (!a5)
  {
    v8 = 0;
  }

  v9 = 33;
  if (a5)
  {
    v9 = 16;
  }

  *this = a2;
  *(this + 1) = a3;
  v10 = CSCppNamedRange::unique_macho_string(a4, v8, v9);
  v11 = 0;
  *(this + 2) = v10;
  if (a5)
  {
    v11 = CSCppNamedRange::unique_macho_string(a4, 0, 0x10);
  }

  *(this + 3) = v11;
}

int32x4_t *MMapArchiveEncoding::_migrate_legacy_archive(MMapArchiveEncoding *this)
{
  v1 = *(this + 2);
  if (v1 <= 4)
  {
    return CSCppConvertLegacyPreVersion5ArchiveToModernCopy(this + 1);
  }

  if (v1 == 6)
  {
    return CSCppConvertLegacyPreVersion7ArchiveToModernCopy(this + 1);
  }

  if (v1 == 5)
  {
    return CSCppConvertLegacyPreVersion6ArchiveToModernCopy(this + 1);
  }

  return 0;
}

uint64_t flatbuffers::FlatBufferBuilderImpl<false>::FlatBufferBuilderImpl(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1024;
  *(a1 + 24) = 0x7FFFFFFF;
  *(a1 + 32) = xmmword_1D97E4300;
  *(a1 + 48) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 56) = 0;
  *(a1 + 78) = 0;
  *(a1 + 104) = 1;
  *(a1 + 112) = 256;
  *(a1 + 120) = 0;
  flatbuffers::FlatBufferBuilderImpl<false>::Swap(a1, a2);
  return a1;
}

uint64_t *flatbuffers::FlatBufferBuilderImpl<false>::Swap(uint64_t a1, uint64_t a2)
{
  result = flatbuffers::vector_downward<unsigned int>::swap(a1, a2);
  v5 = *(a1 + 80);
  *(a1 + 80) = *(a2 + 80);
  *(a2 + 80) = v5;
  LOWORD(v5) = *(a1 + 84);
  *(a1 + 84) = *(a2 + 84);
  *(a2 + 84) = v5;
  v6 = *(a1 + 88);
  *(a1 + 88) = *(a2 + 88);
  *(a2 + 88) = v6;
  LOBYTE(v6) = *(a1 + 96);
  *(a1 + 96) = *(a2 + 96);
  *(a2 + 96) = v6;
  LOBYTE(v6) = *(a1 + 97);
  *(a1 + 97) = *(a2 + 97);
  *(a2 + 97) = v6;
  v7 = *(a1 + 104);
  *(a1 + 104) = *(a2 + 104);
  *(a2 + 104) = v7;
  LOBYTE(v7) = *(a1 + 112);
  *(a1 + 112) = *(a2 + 112);
  *(a2 + 112) = v7;
  LOBYTE(v7) = *(a1 + 113);
  *(a1 + 113) = *(a2 + 113);
  *(a2 + 113) = v7;
  v8 = *(a1 + 120);
  *(a1 + 120) = *(a2 + 120);
  *(a2 + 120) = v8;
  return result;
}

uint64_t *flatbuffers::vector_downward<unsigned int>::swap(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *result = *a2;
  *a2 = v2;
  LOBYTE(v2) = *(result + 8);
  *(result + 8) = *(a2 + 8);
  *(a2 + 8) = v2;
  v3 = result[2];
  result[2] = a2[2];
  a2[2] = v3;
  v4 = result[4];
  result[4] = a2[4];
  a2[4] = v4;
  v5 = result[5];
  result[5] = a2[5];
  a2[5] = v5;
  LODWORD(v5) = *(result + 12);
  *(result + 12) = *(a2 + 12);
  *(a2 + 12) = v5;
  LODWORD(v5) = *(result + 6);
  *(result + 6) = *(a2 + 6);
  *(a2 + 6) = v5;
  v6 = result[7];
  result[7] = a2[7];
  a2[7] = v6;
  v7 = result[8];
  result[8] = a2[8];
  a2[8] = v7;
  v8 = result[9];
  result[9] = a2[9];
  a2[9] = v8;
  return result;
}

void *flatbuffers::FlatBufferBuilderImpl<false>::~FlatBufferBuilderImpl(void *a1)
{
  v2 = a1[15];
  if (v2)
  {
    std::__tree<TRange<Pointer64>>::destroy(a1[15], *(v2 + 8));
    MEMORY[0x1DA736760](v2, 0x1060C40C2B13FB5);
  }

  return flatbuffers::vector_downward<unsigned int>::~vector_downward(a1);
}

void *flatbuffers::vector_downward<unsigned int>::~vector_downward(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    v3 = *a1;
    if (*a1)
    {
      v4 = a1[5];
      (*(*v3 + 24))(v3);
    }

    else
    {
      MEMORY[0x1DA736740](v2, 0x1000C8077774924);
    }
  }

  a1[7] = 0;
  if (*(a1 + 8) == 1 && *a1)
  {
    (*(**a1 + 8))(*a1);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  return a1;
}

uint64_t std::vector<flatbuffers::Offset<FlatbufferSymbols::Symbolicator>>::__init_with_size[abi:ne200100]<flatbuffers::Offset<FlatbufferSymbols::Symbolicator>*,flatbuffers::Offset<FlatbufferSymbols::Symbolicator>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<CSCppDwarfAttribute>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1D97A1814(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TMMapArchiveSerialization::_invoke_supplied_callback<WriteMMapArchiveToDirectory(CSCppSymbolOwner *,TMMapArchive &,char const*)::$_1>(void *__buf, size_t __nbyte, int __fd, void *a4)
{
  if (!__nbyte)
  {
    return 1;
  }

  v6 = __nbyte;
  do
  {
    v8 = 4;
    while (1)
    {
      v9 = write(__fd, __buf, v6);
      if (v9 != -1)
      {
        break;
      }

      if (*__error() != 4 || v8-- == 0)
      {
        return 0;
      }
    }

    *a4 += v9;
    v6 -= v9;
  }

  while (v6);
  return 1;
}

size_t CSCppSymbolOwner::set_version(size_t this, const char *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (*a2)
    {
      v2 = this;
      this = strlcpy(__dst, a2, 0x20uLL);
      v3 = *(v2 + 200);
      v4 = v7;
      *(v2 + 168) = *__dst;
      *(v2 + 184) = v4;
      if ((v3 & 1) == 0)
      {
        *(v2 + 200) = 1;
      }
    }
  }

  v5 = *MEMORY[0x1E69E9840];
  return this;
}

void *std::__shared_ptr_emplace<CSCppSymbolOwner>::__shared_ptr_emplace[abi:ne200100]<UUID const*,int,unsigned long long &,unsigned long long &,unsigned int &,CSCppArchitecture &,char const*&,std::allocator<CSCppSymbolOwner>,0>(void *a1, void *a2, unsigned int *a3, void *a4, void *a5, unsigned int *a6, void *a7, void *a8)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F5504DE8;
  CSCppSymbolOwner::CSCppSymbolOwner(a1 + 3, *a2, *a3, *a4, *a5, *a6, *a7, *a8);
  return a1;
}

void *std::__tree<std::__value_type<unsigned long long,_CSRange>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,_CSRange>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,_CSRange>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long,_CSRange>>(uint64_t a1, unint64_t *a2)
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
      v5 = v2[4];
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

void *std::__shared_ptr_emplace<CSCppSymbolOwner>::__shared_ptr_emplace[abi:ne200100]<UUID const*,unsigned int &,unsigned long long &,unsigned long long &,unsigned int &,CSCppArchitecture &,char *&,std::allocator<CSCppSymbolOwner>,0>(void *a1, void *a2, unsigned int *a3, void *a4, void *a5, unsigned int *a6, void *a7, void *a8)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F5504DE8;
  CSCppSymbolOwner::CSCppSymbolOwner(a1 + 3, *a2, *a3, *a4, *a5, *a6, *a7, *a8);
  return a1;
}

void *std::__hash_table<std::__hash_value_type<UUID,TMMapArchive *>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,TMMapArchive *>,UUIDHashFunctor,UUIDEqualsFunctor,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,TMMapArchive *>,UUIDEqualsFunctor,UUIDHashFunctor,true>,std::allocator<std::__hash_value_type<UUID,TMMapArchive *>>>::__emplace_unique_key_args<UUID,std::piecewise_construct_t const&,std::tuple<UUID const&>,std::tuple<>>(void *a1, void *a2)
{
  v2 = a2[1] ^ *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_22;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = a2[1] ^ *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_22:
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
      goto LABEL_22;
    }

LABEL_21:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_22;
    }
  }

  if (v7[2] != *a2 || v7[3] != a2[1])
  {
    goto LABEL_21;
  }

  return v7;
}

uint64_t CSSymbolGetInstructionData(uint64_t a1, uint64_t a2)
{
  if (!(a1 & 7 | (8 * (a2 & 3))))
  {
    return 0;
  }

  CSSymbolGetRange(a1, a2);
  v3 = *(*CSCppSymbolOwner::data((a1 & 0xFFFFFFFFFFFFFFF8)) + 200);

  return v3();
}

uint64_t CSSymbolGetModuleFlags(uint64_t a1, uint64_t a2)
{
  if (!(a1 & 7 | (8 * (a2 & 3))))
  {
    return 0;
  }

  MangledName = CSSymbolGetMangledName(a1, a2);
  if (!MangledName)
  {
    return 2;
  }

  if (!strncmp(MangledName, "_$sS", 4uLL))
  {
    return 1;
  }

  return 2;
}

void XPCObject::XPCObject(XPCObject *this, xpc_object_t object, int a3)
{
  *this = object;
  if (object)
  {
    if (a3)
    {
      xpc_retain(object);
    }
  }
}

void XPCObject::XPCObject(XPCObject *this, void **a2)
{
  v3 = *a2;
  *this = *a2;
  if (v3)
  {
    xpc_retain(v3);
  }
}

void *XPCObject::XPCObject(void *result, void *a2)
{
  *result = *a2;
  *a2 = 0;
  return result;
}

void XPCObject::~XPCObject(void **this)
{
  v1 = *this;
  if (v1)
  {
    xpc_release(v1);
  }
}

uint64_t XPCObject::xpc_type(XPCObject *this)
{
  result = *this;
  if (result)
  {
    JUMPOUT(0x1DA737450);
  }

  return result;
}

xpc_object_t XPCDictionary::get_object@<X0>(xpc_object_t *this@<X0>, const char *a2@<X1>, void *a3@<X8>)
{
  result = xpc_dictionary_get_value(*this, a2);
  *a3 = result;
  if (result)
  {

    return xpc_retain(result);
  }

  return result;
}

FILE *CSFileIsCoreFile(FILE *result)
{
  v11 = *MEMORY[0x1E69E9840];
  if (result)
  {
    result = fopen(result, "re");
    __stream = result;
    if (result)
    {
      v9[0] = &unk_1F55080D8;
      v9[1] = &__stream;
      v9[3] = v9;
      std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v10, v9);
      std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v9);
      v4 = 0;
      v5 = 0;
      v7 = 0;
      v6 = 0;
      if (fread(&v4, 0x1CuLL, 1uLL, __stream) == 1)
      {
        v1 = v4;
        v2 = HIDWORD(v5);
        DeferredLambda::~DeferredLambda(v10);
        if (v1 >> 1 == 2138504551)
        {
          result = (v2 == 4);
        }

        else
        {
          result = 0;
        }
      }

      else
      {
        DeferredLambda::~DeferredLambda(v10);
        result = 0;
      }
    }
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1D97A22D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

BOOL CSFileIsKnownSignature(FILE *a1)
{
  type_from_beginning_of = read_type_from_beginning_of_file<unsigned long long>(a1);
  v3 = type_from_beginning_of == 0x1FF01FF02 || type_from_beginning_of >> 32 == 1112365395;
  return (v2 & 1) != 0 && v3;
}

FILE *read_type_from_beginning_of_file<unsigned long long>(FILE *result)
{
  v8 = *MEMORY[0x1E69E9840];
  if (result)
  {
    result = fopen(result, "re");
    __stream = result;
    if (result)
    {
      v6[0] = &unk_1F5508168;
      v6[1] = &__stream;
      v6[3] = v6;
      std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v7, v6);
      std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v6);
      __ptr = 0;
      v1 = fread(&__ptr, 8uLL, 1uLL, __stream);
      v2 = __ptr;
      DeferredLambda::~DeferredLambda(v7);
      if (v1 == 1)
      {
        result = v2;
      }

      else
      {
        result = 0;
      }
    }
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1D97A2410(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t CSFileIsSuitableForCS(FILE *a1)
{
  type_from_beginning_of = read_type_from_beginning_of_file<unsigned long long>(a1);
  if ((v2 & 1) == 0)
  {
    return 0;
  }

  v3 = type_from_beginning_of;
  result = 1;
  if (v3 > -822415875)
  {
    if ((v3 + 17958194) < 2 || v3 == -822415874)
    {
      return result;
    }

    v5 = -805638658;
  }

  else
  {
    if ((v3 + 889275714) < 2 || v3 == -1095041334)
    {
      return result;
    }

    v5 = -1078264118;
  }

  if (v3 != v5)
  {
    v6 = v3 == 0xA3E686372613C21 || v3 >> 32 == 1112365395;
    return v3 == 0x1FF01FF02 || v6;
  }

  return result;
}

uint64_t std::__function::__func<std::optional<mach_header> read_type_from_beginning_of_file<mach_header>(char const*)::{lambda(void)#1},std::allocator<std::optional<mach_header> read_type_from_beginning_of_file<mach_header>(char const*)::{lambda(void)#1}>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F55080D8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<std::optional<mach_header> read_type_from_beginning_of_file<mach_header>(char const*)::{lambda(void)#1},std::allocator<std::optional<mach_header> read_type_from_beginning_of_file<mach_header>(char const*)::{lambda(void)#1}>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void DeferredLambda::~DeferredLambda(DeferredLambda *this)
{
  v2 = *(this + 3);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v2 + 48))(v2);

  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](this);
}

uint64_t std::__function::__func<std::optional<unsigned long long> read_type_from_beginning_of_file<unsigned long long>(char const*)::{lambda(void)#1},std::allocator<std::optional<unsigned long long> read_type_from_beginning_of_file<unsigned long long>(char const*)::{lambda(void)#1}>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5508168;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<std::optional<unsigned long long> read_type_from_beginning_of_file<unsigned long long>(char const*)::{lambda(void)#1},std::allocator<std::optional<unsigned long long> read_type_from_beginning_of_file<unsigned long long>(char const*)::{lambda(void)#1}>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__CFString *CSRegionCopyDescriptionWithIndent(uint64_t a1, uint64_t a2, int a3)
{
  if (!(a1 & 7 | (8 * (a2 & 3))))
  {
    return 0;
  }

  for (i = CFStringCreateMutable(0, 0); a3; --a3)
  {
    CFStringAppendCString(i, "\t", 0x8000100u);
  }

  Range = CSRegionGetRange(a1, a2);
  v9 = v8;
  SymbolOwner = CSRegionGetSymbolOwner(a1, a2);
  Architecture = CSSymbolOwnerGetArchitecture(SymbolOwner, v11);
  v13 = CSArchitectureIs64Bit(Architecture);
  v14 = Range + v9;
  Name = CSRegionGetName(a1, a2);
  if (v13)
  {
    CFStringAppendFormat(i, 0, @"<CSRegion: %p> [0x%016llx -> 0x%016llx %s"), a2 & 0xFFFFFFFFFFFFFFFCLL, Range, v14, Name);
  }

  else
  {
    CFStringAppendFormat(i, 0, @"<CSRegion: %p> [0x%08llx -> 0x%08llx %s"), a2 & 0xFFFFFFFFFFFFFFFCLL, Range, v14, Name);
  }

  return i;
}

__CFString *CSSourceInfoCopyDescriptionWithIndent(uint64_t a1, uint64_t a2, int a3)
{
  if (!(a1 & 7 | (8 * (a2 & 3))))
  {
    return 0;
  }

  for (i = CFStringCreateMutable(0, 0); a3; --a3)
  {
    CFStringAppendCString(i, "\t", 0x8000100u);
  }

  Range = CSSourceInfoGetRange(a1, a2);
  v9 = v8;
  SymbolOwner = CSSourceInfoGetSymbolOwner(a1, a2);
  Architecture = CSSymbolOwnerGetArchitecture(SymbolOwner, v11);
  v13 = CSArchitectureIs64Bit(Architecture);
  v14 = Range + v9;
  Path = CSSourceInfoGetPath(a1, a2);
  LineNumber = CSSourceInfoGetLineNumber(a1, a2);
  if (v13)
  {
    CFStringAppendFormat(i, 0, @"<CSSourceInfo: %p> [0x%016llx -> 0x%016llx %s:%d"), a2 & 0xFFFFFFFFFFFFFFFCLL, Range, v14, Path, LineNumber);
  }

  else
  {
    CFStringAppendFormat(i, 0, @"<CSSourceInfo: %p> [0x%08llx -> 0x%08llx %s:%d"), a2 & 0xFFFFFFFFFFFFFFFCLL, Range, v14, Path, LineNumber);
  }

  return i;
}

void CSCppMachTask::CSCppMachTask(CSCppMachTask *this, mach_port_name_t a2, int a3)
{
  *(this + 16) = 0;
  *this = &unk_1F55081E8;
  *(this + 1) = 0;
  CSCppMachTaskContainer::CSCppMachTaskContainer((this + 24), a2, a3);
  *(this + 6) = 0;
  *(this + 781) = 0;
  CSCppMachTask::initialize(this);
}

void sub_1D97A2B24(_Unwind_Exception *a1)
{
  std::unique_ptr<CSCppDyldLoadUnloadNotifier>::reset[abi:ne200100](v2, 0);
  CSCppMachTaskContainer::~CSCppMachTaskContainer((v1 + 24));
  _Unwind_Resume(a1);
}

size_t CSCppMachTask::initialize(CSCppMachTask *this)
{
  v1 = MEMORY[0x1EEE9AC00](this);
  v3 = v2;
  v4 = v1;
  v17 = *MEMORY[0x1E69E9840];
  *(v1 + 64) = CSTaskIs64Bit(*(v1 + 32));
  IsTranslated = CSTaskIsTranslated(*(v4 + 32));
  *(v4 + 16) = IsTranslated;
  v6 = UUID::null_uuid(IsTranslated);
  *(v4 + 6232) = *v6;
  *(v4 + 6256) = *UUID::null_uuid(v6);
  *(v4 + 6248) = 0;
  *(v4 + 6272) = 0;
  *(v4 + 40) = 0;
  *(v4 + 56) = 0;
  if (v3)
  {
    operator new();
  }

  if (*(v4 + 36) == -1)
  {
    v7 = -1;
  }

  else
  {
    CSCppMachTask::refresh_process_info(v4);
    v7 = *(v4 + 36);
  }

  if (getpid() == v7)
  {
    strcpy((v4 + 65), "CoreSymbolication - creating symbolicator for current process\n");
  }

  else
  {
    getpid();
    if (sandbox_check())
    {
      strcpy((v4 + 65), "CoreSymbolication - creating symbolicator for remote process\n");
    }

    else
    {
      buffer[0] = 0;
      if (proc_name(v7, buffer, 0x400u) <= 0)
      {
        buffer[0] = 0;
      }

      v15[0] = 0;
      if (proc_pidpath(v7, v15, 0x400u) <= 0)
      {
        v15[0] = 0;
      }

      if (proc_pidinfo(v7, 3, 0, v13, 136) < 136)
      {
        snprintf((v4 + 65), 0x1800uLL, "CoreSymbolication target process: %s  pid: %d  path: %s\nCouldn't determine parent process ID\n");
      }

      else
      {
        v8 = pid;
        v12[0] = 0;
        if (proc_name(pid, v12, 0x400u) <= 0)
        {
          v12[0] = 0;
        }

        v11[0] = 0;
        if (proc_pidpath(v8, v11, 0x400u) <= 0)
        {
          v11[0] = 0;
        }

        snprintf((v4 + 65), 0x1800uLL, "CoreSymbolication target process: %s  pid: %d  path: %s\n                  parent process: %s  pid: %d  path: %s\n", buffer);
      }
    }
  }

  result = strlen((v4 + 65));
  *(v4 + 6216) = v4 + 65 + result;
  *(v4 + 6224) = 6144 - result;
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void CSCppMachTask::CSCppMachTask(CSCppMachTask *this, int a2)
{
  *(this + 16) = 0;
  *this = &unk_1F55081E8;
  *(this + 1) = 0;
  CSCppMachTaskContainer::CSCppMachTaskContainer((this + 24), a2);
  *(this + 6) = 0;
  *(this + 781) = 0;
  CSCppMachTask::initialize(this);
}

void sub_1D97A2E70(_Unwind_Exception *a1)
{
  std::unique_ptr<CSCppDyldLoadUnloadNotifier>::reset[abi:ne200100](v2, 0);
  CSCppMachTaskContainer::~CSCppMachTaskContainer((v1 + 24));
  _Unwind_Resume(a1);
}

void CSCppMachTask::CSCppMachTask(CSCppMachTask *this, mach_port_name_t a2)
{
  *(this + 16) = 0;
  *this = &unk_1F55081E8;
  *(this + 1) = 0;
  CSCppMachTaskContainer::CSCppMachTaskContainer((this + 24), a2);
  *(this + 6) = 0;
  *(this + 781) = 0;
  CSCppMachTask::initialize(this);
}

void sub_1D97A2F00(_Unwind_Exception *a1)
{
  std::unique_ptr<CSCppDyldLoadUnloadNotifier>::reset[abi:ne200100](v2, 0);
  CSCppMachTaskContainer::~CSCppMachTaskContainer((v1 + 24));
  _Unwind_Resume(a1);
}

void CSCppMachTask::~CSCppMachTask(CSCppMachTask *this)
{
  *this = &unk_1F55081E8;
  if (*(this + 5))
  {
    _dyld_process_info_release();
  }

  std::unique_ptr<CSCppDyldLoadUnloadNotifier>::reset[abi:ne200100](this + 6, 0);
  CSCppMachTaskContainer::~CSCppMachTaskContainer((this + 24));
}

{
  CSCppMachTask::~CSCppMachTask(this);

  JUMPOUT(0x1DA736760);
}

void CSCppMachTask::refresh_process_info(CSCppMachTask *this)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = *(this + 8);
  v3 = *(this + 7);
  v4 = _dyld_process_info_create();
  v5 = 0;
  v22 = 0;
  if (!v4)
  {
    v10 = 0;
    while (1)
    {
      v11 = *(this + 7);
      if (v11)
      {
        break;
      }

      v12 = v5 == 19 || v5 == 6;
      if (!v12 || v10 > 2)
      {
        break;
      }

      v13 = *(this + 8);
      v4 = _dyld_process_info_create();
      v5 = v22 & 0xFFFFFF;
      v22 &= 0xFFFFFFu;
      ++v10;
      if (v4)
      {
        goto LABEL_2;
      }
    }

    if (v5)
    {
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_6;
      }

      v14 = *(this + 9);
      *buf = 67109376;
      *&buf[4] = v14;
      *&buf[8] = 1024;
      *&buf[10] = v22;
      v15 = MEMORY[0x1E69E9C10];
      v16 = "Failed to read dyld info for process %d (%d)\n";
      v17 = OS_LOG_TYPE_DEFAULT;
    }

    else
    {
      if (v11)
      {
        v18 = 0;
      }

      else
      {
        v18 = *(this + 5) == 0;
      }

      if (!v18 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_6;
      }

      v20 = *(this + 8);
      v19 = *(this + 9);
      *buf = 67109376;
      *&buf[4] = v19;
      *&buf[8] = 1024;
      *&buf[10] = v20;
      v15 = MEMORY[0x1E69E9C10];
      v16 = "Unable to create process info for pid %d, task %d. Is dyld loaded for this binary yet?\n";
      v17 = OS_LOG_TYPE_ERROR;
    }

    _os_log_impl(&dword_1D96E9000, v15, v17, v16, buf, 0xEu);
    goto LABEL_6;
  }

LABEL_2:
  v6 = v4;
  if (*(this + 5))
  {
    _dyld_process_info_release();
  }

  *(this + 5) = v6;
  _dyld_process_info_get_state();
  *(this + 7) = v21;
  v7 = *(this + 5);
  _dyld_process_info_get_cache();
  *(this + 6232) = *buf;
  *(this + 781) = v26;
  if (MEMORY[0x1EEE9AC30])
  {
    v8 = *(this + 5);
    _dyld_process_info_get_aot_cache();
    *(this + 391) = v23;
    *(this + 784) = v24;
  }

LABEL_6:
  v9 = *MEMORY[0x1E69E9840];
}

uint64_t CSCppMachTask::uses_development_dsc(CSCppMachTask *this)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *(this + 5);
  CSCppTaskMemory::CSCppTaskMemory(v9, (this + 24), 0);
  if (*(this + 64) == 1)
  {
    if (!v2)
    {
      goto LABEL_19;
    }

    if (_dyld_process_info_get_platform() != 10)
    {
      _dyld_process_info_get_cache();
      v10 = v9;
      v3 = TMemoryView<SizeAndEndianness<Pointer64,LittleEndian>>::dyld_shared_cache_at(&v10, v11);
      v2 = v3;
      if (!v3)
      {
        goto LABEL_19;
      }

      v4 = *(v3 + 13);
      if (v4 != 2)
      {
        goto LABEL_15;
      }

      if (CSCppDyldSharedCache::is_universal_cache(v3))
      {
LABEL_7:
        v5 = *(v2 + 456) == 0;
        goto LABEL_16;
      }

      goto LABEL_14;
    }

LABEL_10:
    v2 = 0;
    goto LABEL_19;
  }

  if (!v2)
  {
    goto LABEL_19;
  }

  if (_dyld_process_info_get_platform() == 10)
  {
    goto LABEL_10;
  }

  _dyld_process_info_get_cache();
  v10 = v9;
  v6 = TMemoryView<SizeAndEndianness<Pointer32,LittleEndian>>::dyld_shared_cache_at(&v10, v11);
  v2 = v6;
  if (!v6)
  {
    goto LABEL_19;
  }

  v4 = *(v6 + 13);
  if (v4 != 2)
  {
    goto LABEL_15;
  }

  if (CSCppDyldSharedCache::is_universal_cache(v6))
  {
    goto LABEL_7;
  }

LABEL_14:
  v4 = *(v2 + 104);
LABEL_15:
  v5 = v4 == 0;
LABEL_16:
  v2 = v5;
LABEL_19:
  CSCppTaskMemory::~CSCppTaskMemory(v9);
  v7 = *MEMORY[0x1E69E9840];
  return v2;
}

void CSCppMachTask::begin_notifications(CSCppMachTask *this, CSCppSymbolicator *a2)
{
  v3 = *(this + 6);
  if (v3)
  {
    CSCppDyldLoadUnloadNotifier::begin_processing(v3, a2, *(this + 7));
  }
}

CSCppDyldLoadUnloadNotifier *CSCppMachTask::subscribe_to_task_main_notification(CSCppMachTask *this)
{
  result = *(this + 6);
  if (result)
  {
    return CSCppDyldLoadUnloadNotifier::subscribe_to_task_main_notification(result);
  }

  return result;
}

CSCppDyldLoadUnloadNotifier *std::unique_ptr<CSCppDyldLoadUnloadNotifier>::reset[abi:ne200100](CSCppDyldLoadUnloadNotifier **a1, CSCppDyldLoadUnloadNotifier *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    CSCppDyldLoadUnloadNotifier::~CSCppDyldLoadUnloadNotifier(result);

    JUMPOUT(0x1DA736760);
  }

  return result;
}

void sub_1D97A3544(_Unwind_Exception *a1)
{
  *(v3 - 72) = v2;
  v5 = *(v3 - 56);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

void *SymbolOwnerIterator<SizeAndEndianness<Pointer64,LittleEndian>>::~SymbolOwnerIterator(void *a1)
{
  *a1 = &unk_1F5508298;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void *SymbolOwnerIterator<SizeAndEndianness<Pointer32,LittleEndian>>::~SymbolOwnerIterator(void *a1)
{
  *a1 = &unk_1F55082F8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

__n128 CSCppMachTask::set_dsc_uuid(CSCppMachTask *this, __n128 *a2)
{
  if (a2)
  {
    result = *a2;
    *(this + 6232) = *a2;
  }

  return result;
}

__n128 CSCppMachTask::set_aot_cache_uuid(__n128 *this, __n128 *a2)
{
  if (a2)
  {
    result = *a2;
    this[391] = *a2;
  }

  return result;
}

void sub_1D97A36E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

UUID *SymbolOwnerIterator<SizeAndEndianness<Pointer64,LittleEndian>>::process_failed_header(UUID *result, _BYTE *a2)
{
  if (a2)
  {
    if (*a2)
    {
      UUID::null_uuid(result);
      std::allocate_shared[abi:ne200100]<CSCppSymbolOwner,std::allocator<CSCppSymbolOwner>,UUID const*,int,unsigned long long const&,unsigned long long const&,int,_CSArchitecture const&,char const*&,0>();
    }
  }

  return result;
}

void sub_1D97A37DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void SymbolOwnerIterator<SizeAndEndianness<Pointer64,LittleEndian>>::~SymbolOwnerIterator(void *a1)
{
  *a1 = &unk_1F5508298;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1DA736760);
}

void *std::__shared_ptr_emplace<CSCppSymbolOwner>::__shared_ptr_emplace[abi:ne200100]<UUID const*,int,unsigned long long const&,unsigned long long const&,int,_CSArchitecture const&,char const*&,std::allocator<CSCppSymbolOwner>,0>(void *a1, void *a2, unsigned int *a3, void *a4, void *a5, unsigned int *a6, void *a7, void *a8)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F5504DE8;
  CSCppSymbolOwner::CSCppSymbolOwner(a1 + 3, *a2, *a3, *a4, *a5, *a6, *a7, *a8);
  return a1;
}

char **std::vector<CSCppSegmentRange>::__construct_one_at_end[abi:ne200100]<int,int,char const(&)[9]>(uint64_t a1, int *a2, int *a3, CSCppNamedRange *this)
{
  v6 = *(a1 + 8);
  v7 = *a3;
  *v6 = *a2;
  v6[1] = v7;
  v6[2] = CSCppNamedRange::unique_macho_string(this, "SEGMENT", 0x10);
  result = CSCppNamedRange::unique_macho_string(this, 0, 0x10);
  v6[3] = result;
  *(a1 + 8) = v6 + 4;
  return result;
}

void *std::vector<CSCppSegmentRange>::__emplace_back_slow_path<int,int,char const(&)[9]>(uint64_t a1, int *a2, int *a3, CSCppNamedRange *a4)
{
  v4 = (*(a1 + 8) - *a1) >> 5;
  v5 = v4 + 1;
  if ((v4 + 1) >> 59)
  {
    std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
  }

  v9 = *(a1 + 16) - *a1;
  if (v9 >> 4 > v5)
  {
    v5 = v9 >> 4;
  }

  if (v9 >= 0x7FFFFFFFFFFFFFE0)
  {
    v10 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v10 = v5;
  }

  if (v10)
  {
    std::allocator<CSCppSegmentRange>::allocate_at_least[abi:ne200100](a1, v10);
  }

  v11 = *a3;
  v12 = (32 * v4);
  *v12 = *a2;
  v12[1] = v11;
  v12[2] = CSCppNamedRange::unique_macho_string(a4, "SEGMENT", 0x10);
  v12[3] = CSCppNamedRange::unique_macho_string(a4, 0, 0x10);
  v13 = *(a1 + 8) - *a1;
  v14 = (32 * v4 - v13);
  memcpy(v14, *a1, v13);
  v15 = *a1;
  *a1 = v14;
  *(a1 + 8) = 32 * v4 + 32;
  *(a1 + 16) = 0;
  if (v15)
  {
    operator delete(v15);
  }

  return v12 + 4;
}

void sub_1D97A3B98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

UUID *SymbolOwnerIterator<SizeAndEndianness<Pointer32,LittleEndian>>::process_failed_header(UUID *result, _BYTE *a2)
{
  if (a2)
  {
    if (*a2)
    {
      UUID::null_uuid(result);
      std::allocate_shared[abi:ne200100]<CSCppSymbolOwner,std::allocator<CSCppSymbolOwner>,UUID const*,int,unsigned long long const&,unsigned long long const&,int,_CSArchitecture const&,char const*&,0>();
    }
  }

  return result;
}

void sub_1D97A3C94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void SymbolOwnerIterator<SizeAndEndianness<Pointer32,LittleEndian>>::~SymbolOwnerIterator(void *a1)
{
  *a1 = &unk_1F55082F8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1DA736760);
}

uint64_t TMemoryView<SizeAndEndianness<Pointer32,LittleEndian>>::dyld_shared_cache_at(void *a1, unsigned int a2)
{
  v3 = a2;
  v4 = (*(**a1 + 32))(*a1, a2, 32);
  v6 = v4;
  if (v4)
  {
    v7 = v5;
    if (!strncmp(v4, "dyld_v", 6uLL))
    {
      v8 = v6[4];
      v9 = v6[5];
      v10 = v6[98];
      v11 = CSCppDyldSharedCache::uses_universal_cache_struct_layout(v6);
      v12 = 24;
      if (v11)
      {
        v12 = 56;
      }

      if (v8 + 32 * v9 + v10 + v12 * v6[99] > v7)
      {
        return (*(**a1 + 32))(*a1, v3);
      }
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void std::__shared_ptr_emplace<std::vector<std::shared_ptr<CSCppSymbolOwner>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5508358;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1DA736760);
}

void TMachOHeaderIterator<SizeAndEndianness<Pointer64,LittleEndian>>::TMachOHeaderIterator(uint64_t a1, TMachOHeaderIterator *this, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  v31 = *MEMORY[0x1E69E9840];
  is_self_task = CSCppMachTaskContainer::is_self_task(this);
  CSCppTaskMemory::CSCppTaskMemory(a1, this, !is_self_task);
  *(a1 + 120) = a1;
  *(a1 + 128) = a3;
  *(a1 + 136) = 0;
  v17 = (a1 + 136);
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = a4;
  *(a1 + 168) = a5;
  *(a1 + 176) = a6;
  *(a1 + 184) = a7;
  *(a1 + 192) = a8;
  if (a3)
  {
    v18 = CSGetForceSafeMachVMReads() ^ 1;
    if ((a7 & 0x1000) != 0)
    {
      LOBYTE(v18) = 0;
    }

    if (v18)
    {
      TMachOHeaderIterator<SizeAndEndianness<Pointer64,LittleEndian>>::iterate(a1);
    }

    else
    {
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 0x40000000;
      v24[2] = ___ZN20TMachOHeaderIteratorI17SizeAndEndiannessI9Pointer6412LittleEndianEEC2ERK22CSCppMachTaskContainerPK22dyld_process_info_basePcSB_mjR26TMachOHeaderIteratorHelperIS3_E_block_invoke;
      v24[3] = &__block_descriptor_tmp_55;
      v24[4] = a1;
      v19 = CSExceptionSafeThreadRunBlock(v24);
      if (v19 != 4096)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          v20 = *(this + 3);
          v21 = a1 + 136;
          if (*(a1 + 159) < 0)
          {
            v21 = *v17;
          }

          *buf = 67109634;
          v26 = v20;
          v27 = 2080;
          v28 = v21;
          v29 = 1024;
          v30 = v19;
          _os_log_impl(&dword_1D96E9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Missing page in pid %d, read of header data for [%s] failed, err code %#x\n", buf, 0x18u);
        }

        v22 = a1 + 136;
        if (*(a1 + 159) < 0)
        {
          v22 = *v17;
        }

        (*(**(a1 + 192) + 16))(*(a1 + 192), v22);
      }
    }
  }

  v23 = *MEMORY[0x1E69E9840];
}

void sub_1D97A40C0(_Unwind_Exception *a1)
{
  if (v1[159] < 0)
  {
    operator delete(*v2);
  }

  CSCppTaskMemory::~CSCppTaskMemory(v1);
  _Unwind_Resume(a1);
}

uint64_t TMachOHeaderIterator<SizeAndEndianness<Pointer64,LittleEndian>>::iterate(uint64_t a1)
{
  v3[0] = 0;
  v3[1] = v3;
  v3[2] = 0x5002000000;
  v3[3] = __Block_byref_object_copy__12;
  v3[4] = __Block_byref_object_dispose__12;
  memset(v4, 0, sizeof(v4));
  v5 = 1065353216;
  v1 = *(a1 + 128);
  _dyld_process_info_for_each_image();
  _Block_object_dispose(v3, 8);
  return std::__hash_table<char const*,std::hash<char const*>,std::equal_to<char const*>,std::allocator<char const*>>::~__hash_table(v4);
}

void sub_1D97A41D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  std::__hash_table<char const*,std::hash<char const*>,std::equal_to<char const*>,std::allocator<char const*>>::~__hash_table(va1);
  _Unwind_Resume(a1);
}

void ___ZN20TMachOHeaderIteratorI17SizeAndEndiannessI9Pointer6412LittleEndianEE7iterateEv_block_invoke(uint64_t a1, uint64_t a2, unsigned __int8 *a3, const char *a4)
{
  v20 = *MEMORY[0x1E69E9840];
  v17 = a2;
  v7 = *(a1 + 40);
  if (!std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::find<unsigned long long>((*(*(a1 + 32) + 8) + 40), &v17))
  {
    std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long &>((*(*(a1 + 32) + 8) + 40), &v17);
    v8 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a4, 0x8000100u);
    if (!v8)
    {
      ___ZN20TMachOHeaderIteratorI17SizeAndEndiannessI9Pointer6412LittleEndianEE7iterateEv_block_invoke_cold_1(&v18, a4);
      snprintf(*(v7 + 168), *(v7 + 176), "_dyld_process_info_for_each_image provided CoreSymbolication with invalid UTF-8 in path: %s, macho header address: %#llx, uuid: %02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x\n", &v18, v17, *a3, a3[1], a3[2], a3[3], a3[4], a3[5], a3[6], a3[7], a3[8], a3[9], a3[10], a3[11], a3[12], a3[13], a3[14], a3[15]);
      CSCppCrashReporterInfoSetter::CSCppCrashReporterInfoSetter(&v14, *(v7 + 160));
      _os_assert_log();
      v13 = _os_crash();
      ___ZN20TMachOHeaderIteratorI17SizeAndEndiannessI9Pointer6412LittleEndianEE7iterateEv_block_invoke_cold_2(v13);
    }

    CFRelease(v8);
    if (a4)
    {
      v9 = a4;
    }

    else
    {
      v9 = "";
    }

    std::string::basic_string[abi:ne200100]<0>(&v18, v9);
    if (*(v7 + 159) < 0)
    {
      operator delete(*(v7 + 136));
    }

    *(v7 + 136) = v18;
    *(v7 + 152) = v19;
    snprintf(*(v7 + 168), *(v7 + 176), "Processing header for %s\n", a4);
    CSCppCrashReporterInfoSetter::CSCppCrashReporterInfoSetter(v16, *(v7 + 160));
    v10 = v17;
    v11 = TMemoryView<SizeAndEndianness<Pointer64,LittleEndian>>::macho_header_at((v7 + 120), v17, 1);
    if (v11)
    {
      LOBYTE(v14) = 0;
      v15 = 0;
      TExtendedMachOHeader<SizeAndEndianness<Pointer64,LittleEndian>>::TExtendedMachOHeader(&v18, v7, v10, v11, a4, 0, 0, &v14);
      (*(**(v7 + 192) + 8))(*(v7 + 192), &v18);
    }

    CSCppCrashReporterInfoSetter::~CSCppCrashReporterInfoSetter(v16);
  }

  v12 = *MEMORY[0x1E69E9840];
}

void *std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long &>(void *a1, unint64_t *a2)
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
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
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

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void TMachOHeaderIterator<SizeAndEndianness<Pointer32,LittleEndian>>::TMachOHeaderIterator(uint64_t a1, TMachOHeaderIterator *this, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  v31 = *MEMORY[0x1E69E9840];
  is_self_task = CSCppMachTaskContainer::is_self_task(this);
  CSCppTaskMemory::CSCppTaskMemory(a1, this, !is_self_task);
  *(a1 + 120) = a1;
  *(a1 + 128) = a3;
  *(a1 + 136) = 0;
  v17 = (a1 + 136);
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = a4;
  *(a1 + 168) = a5;
  *(a1 + 176) = a6;
  *(a1 + 184) = a7;
  *(a1 + 192) = a8;
  if (a3)
  {
    v18 = CSGetForceSafeMachVMReads() ^ 1;
    if ((a7 & 0x1000) != 0)
    {
      LOBYTE(v18) = 0;
    }

    if (v18)
    {
      TMachOHeaderIterator<SizeAndEndianness<Pointer32,LittleEndian>>::iterate(a1);
    }

    else
    {
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 0x40000000;
      v24[2] = ___ZN20TMachOHeaderIteratorI17SizeAndEndiannessI9Pointer3212LittleEndianEEC2ERK22CSCppMachTaskContainerPK22dyld_process_info_basePcSB_mjR26TMachOHeaderIteratorHelperIS3_E_block_invoke;
      v24[3] = &__block_descriptor_tmp_63_0;
      v24[4] = a1;
      v19 = CSExceptionSafeThreadRunBlock(v24);
      if (v19 != 4096)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          v20 = *(this + 3);
          v21 = a1 + 136;
          if (*(a1 + 159) < 0)
          {
            v21 = *v17;
          }

          *buf = 67109634;
          v26 = v20;
          v27 = 2080;
          v28 = v21;
          v29 = 1024;
          v30 = v19;
          _os_log_impl(&dword_1D96E9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Missing page in pid %d, read of header data for [%s] failed, err code %#x\n", buf, 0x18u);
        }

        v22 = a1 + 136;
        if (*(a1 + 159) < 0)
        {
          v22 = *v17;
        }

        (*(**(a1 + 192) + 16))(*(a1 + 192), v22);
      }
    }
  }

  v23 = *MEMORY[0x1E69E9840];
}

void sub_1D97A489C(_Unwind_Exception *a1)
{
  if (v1[159] < 0)
  {
    operator delete(*v2);
  }

  CSCppTaskMemory::~CSCppTaskMemory(v1);
  _Unwind_Resume(a1);
}

uint64_t TMachOHeaderIterator<SizeAndEndianness<Pointer32,LittleEndian>>::iterate(uint64_t a1)
{
  v3[0] = 0;
  v3[1] = v3;
  v3[2] = 0x5002000000;
  v3[3] = __Block_byref_object_copy__12;
  v3[4] = __Block_byref_object_dispose__12;
  memset(v4, 0, sizeof(v4));
  v5 = 1065353216;
  v1 = *(a1 + 128);
  _dyld_process_info_for_each_image();
  _Block_object_dispose(v3, 8);
  return std::__hash_table<char const*,std::hash<char const*>,std::equal_to<char const*>,std::allocator<char const*>>::~__hash_table(v4);
}

void sub_1D97A49AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  std::__hash_table<char const*,std::hash<char const*>,std::equal_to<char const*>,std::allocator<char const*>>::~__hash_table(va1);
  _Unwind_Resume(a1);
}

void ___ZN20TMachOHeaderIteratorI17SizeAndEndiannessI9Pointer3212LittleEndianEE7iterateEv_block_invoke(uint64_t a1, unint64_t a2, unsigned __int8 *a3, const char *a4)
{
  v19 = *MEMORY[0x1E69E9840];
  v16 = a2;
  v7 = *(a1 + 40);
  if (!std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::find<unsigned long long>((*(*(a1 + 32) + 8) + 40), &v16))
  {
    std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long &>((*(*(a1 + 32) + 8) + 40), &v16);
    v8 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a4, 0x8000100u);
    if (!v8)
    {
      ___ZN20TMachOHeaderIteratorI17SizeAndEndiannessI9Pointer6412LittleEndianEE7iterateEv_block_invoke_cold_1(&v17, a4);
      snprintf(*(v7 + 168), *(v7 + 176), "_dyld_process_info_for_each_image provided CoreSymbolication with invalid UTF-8 in path: %s, macho header address: %#llx, uuid: %02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x\n", &v17, v16, *a3, a3[1], a3[2], a3[3], a3[4], a3[5], a3[6], a3[7], a3[8], a3[9], a3[10], a3[11], a3[12], a3[13], a3[14], a3[15]);
      CSCppCrashReporterInfoSetter::CSCppCrashReporterInfoSetter(v15, *(v7 + 160));
      _os_assert_log();
      v14 = _os_crash();
      ___ZN20TMachOHeaderIteratorI17SizeAndEndiannessI9Pointer6412LittleEndianEE7iterateEv_block_invoke_cold_2(v14);
    }

    CFRelease(v8);
    if (a4)
    {
      v9 = a4;
    }

    else
    {
      v9 = "";
    }

    std::string::basic_string[abi:ne200100]<0>(&v17, v9);
    if (*(v7 + 159) < 0)
    {
      operator delete(*(v7 + 136));
    }

    *(v7 + 136) = v17;
    *(v7 + 152) = v18;
    snprintf(*(v7 + 168), *(v7 + 176), "Processing header for %s\n", a4);
    CSCppCrashReporterInfoSetter::CSCppCrashReporterInfoSetter(v15, *(v7 + 160));
    v10 = v16;
    v11 = TMemoryView<SizeAndEndianness<Pointer32,LittleEndian>>::macho_header_at((v7 + 120), v16, 1);
    if (v11)
    {
      TExtendedMachOHeader<SizeAndEndianness<Pointer32,LittleEndian>>::TExtendedMachOHeader(&v17, v7, v10, v11, a4, 0, 0, v12, 0, 0);
      (*(**(v7 + 192) + 8))(*(v7 + 192), &v17);
    }

    CSCppCrashReporterInfoSetter::~CSCppCrashReporterInfoSetter(v15);
  }

  v13 = *MEMORY[0x1E69E9840];
}

uint64_t OUTLINED_FUNCTION_0_2(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  v14 = *v9;

  return snprintf(v10, v11, v12);
}

void CSCppDyldLoadUnloadNotifier::CSCppDyldLoadUnloadNotifier(CSCppDyldLoadUnloadNotifier *this, const CSCppMachTaskContainer *a2, char a3)
{
  v18 = *MEMORY[0x1E69E9840];
  *this = 0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  v6 = dispatch_queue_create("CoreSymbolication dyld load/unload notifier queue", 0);
  *(this + 7) = v6;
  *(this + 64) = 0;
  *(this + 65) = a3;
  handler[5] = MEMORY[0x1E69E9820];
  handler[6] = 0x40000000;
  handler[7] = ___ZN27CSCppDyldLoadUnloadNotifierC2ERK22CSCppMachTaskContainerb_block_invoke;
  handler[8] = &__block_descriptor_tmp_4_2;
  handler[9] = this;
  handler[10] = a2;
  v7 = dispatch_source_create(MEMORY[0x1E69E96E0], *(a2 + 2), 1uLL, v6);
  *(this + 6) = v7;
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 0x40000000;
  handler[2] = ___ZN27CSCppDyldLoadUnloadNotifierC2ERK22CSCppMachTaskContainerb_block_invoke_2;
  handler[3] = &__block_descriptor_tmp_6_3;
  handler[4] = this;
  dispatch_source_set_event_handler(v7, handler);
  dispatch_activate(*(this + 6));
  v8 = *(a2 + 2);
  v9 = *(this + 7);
  v10 = _dyld_process_info_notify();
  *(this + 1) = v10;
  if (!v10)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v11 = *(a2 + 3);
      *buf = 67109376;
      v15 = v11;
      v16 = 1024;
      v17 = 0;
      _os_log_impl(&dword_1D96E9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to start process notifications for pid %d (%d)\n", buf, 0xEu);
    }

    fprintf(*MEMORY[0x1E69E9848], "Failed to start process notifications for pid %d (%d)\n", *(a2 + 3), 0);
  }

  v12 = *MEMORY[0x1E69E9840];
}

void sub_1D97A4E4C(_Unwind_Exception *a1)
{
  *(v2 - 80) = v1;
  std::vector<std::tuple<std::shared_ptr<CSCppSymbolOwner>,unsigned long long,BOOL>>::__destroy_vector::operator()[abi:ne200100]((v2 - 80));
  _Unwind_Resume(a1);
}

void ___ZN27CSCppDyldLoadUnloadNotifierC2ERK22CSCppMachTaskContainerb_block_invoke(uint64_t a1, char a2, unint64_t a3, uint64_t a4, uint64_t a5, const char *a6)
{
  v8 = *(a1 + 32);
  if (*(v8 + 64) != 1 || *(v8 + 40) < a3)
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x3802000000;
    v21 = __Block_byref_object_copy__13;
    v22 = __Block_byref_object_dispose__13;
    v9 = *(a1 + 40);
    if (*(v8 + 65))
    {
      new_loaded_owner_arch_specific<SizeAndEndianness<Pointer64,LittleEndian>>(v9, a4, a6, &v23);
    }

    else
    {
      new_loaded_owner_arch_specific<SizeAndEndianness<Pointer32,LittleEndian>>(v9, a4, a6, &v23);
    }

    if (v19[5])
    {
      if (*(v8 + 64))
      {
        v10 = *v8;
        if (*v8)
        {
          v12[0] = MEMORY[0x1E69E9820];
          v12[1] = 0x40000000;
          v12[2] = ___ZN27CSCppDyldLoadUnloadNotifierC2ERK22CSCppMachTaskContainerb_block_invoke_1;
          v12[3] = &unk_1E85846F0;
          v12[4] = &v18;
          v12[5] = v8;
          v12[6] = a3;
          v13 = a2;
          _thread_local_invoke_notifier(v10, v12);
        }
      }

      else
      {
        v11 = v19[6];
        v14 = v19[5];
        v15 = v11;
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v16 = a3;
        v17 = a2 ^ 1;
        std::vector<std::tuple<std::shared_ptr<CSCppSymbolOwner>,unsigned long long,BOOL>>::push_back[abi:ne200100]((v8 + 16), &v14);
        if (v15)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v15);
        }
      }
    }

    _Block_object_dispose(&v18, 8);
    if (v24)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v24);
    }
  }
}

void sub_1D97A4FE4(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 88), 8);
  v3 = *(v1 - 40);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__13(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  return result;
}

void __Block_byref_object_dispose__13(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void **std::vector<std::tuple<std::shared_ptr<CSCppSymbolOwner>,unsigned long long,BOOL>>::push_back[abi:ne200100](void **result, uint64_t a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v7 = (v4 - *result) >> 5;
    v8 = v7 + 1;
    if ((v7 + 1) >> 59)
    {
      std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
    }

    v9 = v5 - *result;
    if (v9 >> 4 > v8)
    {
      v8 = v9 >> 4;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFE0)
    {
      v10 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    v16[4] = result;
    if (v10)
    {
      std::allocator<std::tuple<std::shared_ptr<CSCppSymbolOwner>,unsigned long long,BOOL>>::allocate_at_least[abi:ne200100](result, v10);
    }

    v11 = 32 * v7;
    *v11 = *a2;
    *a2 = 0;
    *(a2 + 8) = 0;
    *(v11 + 16) = *(a2 + 16);
    *(v11 + 24) = *(a2 + 24);
    v6 = 32 * v7 + 32;
    v12 = result[1] - *result;
    v13 = v11 - v12;
    memcpy((v11 - v12), *result, v12);
    v14 = *v3;
    *v3 = v13;
    v3[1] = v6;
    v15 = v3[2];
    v3[2] = 0;
    v16[2] = v14;
    v16[3] = v15;
    v16[0] = v14;
    v16[1] = v14;
    result = std::__split_buffer<std::tuple<std::shared_ptr<CSCppSymbolOwner>,unsigned long long,BOOL>>::~__split_buffer(v16);
  }

  else
  {
    *v4 = *a2;
    *a2 = 0;
    *(a2 + 8) = 0;
    *(v4 + 2) = *(a2 + 16);
    v4[24] = *(a2 + 24);
    v6 = (v4 + 32);
  }

  v3[1] = v6;
  return result;
}

uint64_t _thread_local_invoke_notifier(void *a1, uint64_t a2)
{
  if (_notifier_in_progress_key(void)::onceToken != -1)
  {
    _thread_local_invoke_notifier();
  }

  pthread_setspecific(_notifier_in_progress_key(void)::notifier_key, a1);
  (*(a2 + 16))(a2);
  if (_notifier_in_progress_key(void)::onceToken != -1)
  {
    _thread_local_invoke_notifier();
  }

  v4 = _notifier_in_progress_key(void)::notifier_key;

  return pthread_setspecific(v4, 0);
}

void *___ZN27CSCppDyldLoadUnloadNotifierC2ERK22CSCppMachTaskContainerb_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = *v1;
  if (*v1)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 0x40000000;
    v3[2] = ___ZN27CSCppDyldLoadUnloadNotifierC2ERK22CSCppMachTaskContainerb_block_invoke_3;
    v3[3] = &__block_descriptor_tmp_5_3;
    v3[4] = v1;
    return _thread_local_invoke_notifier(result, v3);
  }

  return result;
}

void CSCppDyldLoadUnloadNotifier::~CSCppDyldLoadUnloadNotifier(CSCppDyldLoadUnloadNotifier *this)
{
  if (*(this + 1))
  {
    _dyld_process_info_notify_release();
    *(this + 1) = 0;
  }

  dispatch_source_cancel(*(this + 6));
  if ((*(this + 64) & 1) == 0)
  {
    dispatch_activate(*(this + 7));
  }

  if (_notifier_in_progress_key(void)::onceToken != -1)
  {
    _thread_local_invoke_notifier();
  }

  if (!pthread_getspecific(_notifier_in_progress_key(void)::notifier_key))
  {
    dispatch_sync(*(this + 7), &__block_literal_global_2);
  }

  dispatch_release(*(this + 6));
  dispatch_release(*(this + 7));
  std::vector<std::tuple<std::shared_ptr<CSCppSymbolOwner>,unsigned long long,BOOL>>::clear[abi:ne200100](this + 2);
  v2 = (this + 16);
  std::vector<std::tuple<std::shared_ptr<CSCppSymbolOwner>,unsigned long long,BOOL>>::__destroy_vector::operator()[abi:ne200100](&v2);
}

void std::vector<std::tuple<std::shared_ptr<CSCppSymbolOwner>,unsigned long long,BOOL>>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 32)
  {
    v4 = *(i - 24);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  a1[1] = v2;
}

uint64_t CSCppDyldLoadUnloadNotifier::subscribe_to_task_main_notification(CSCppDyldLoadUnloadNotifier *this)
{
  result = *(this + 1);
  if (result)
  {
    return _dyld_process_info_notify_main();
  }

  return result;
}

void *___ZN27CSCppDyldLoadUnloadNotifier35subscribe_to_task_main_notificationEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = *v1;
  if (*v1)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 0x40000000;
    v3[2] = ___ZN27CSCppDyldLoadUnloadNotifier35subscribe_to_task_main_notificationEv_block_invoke_2;
    v3[3] = &__block_descriptor_tmp_9_3;
    v3[4] = v1;
    return _thread_local_invoke_notifier(result, v3);
  }

  return result;
}

void CSCppDyldLoadUnloadNotifier::begin_processing(CSCppDyldLoadUnloadNotifier *this, CSCppSymbolicator *a2, uint64_t a3)
{
  v3 = *(this + 7);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___ZN27CSCppDyldLoadUnloadNotifier16begin_processingER17CSCppSymbolicatory_block_invoke;
  block[3] = &__block_descriptor_tmp_11_5;
  block[4] = this;
  block[5] = a2;
  block[6] = a3;
  dispatch_sync(v3, block);
}

void ___ZN27CSCppDyldLoadUnloadNotifier16begin_processingER17CSCppSymbolicatory_block_invoke(void *a1)
{
  v1 = a1[4];
  if ((*(v1 + 64) & 1) == 0)
  {
    v3 = a1[6];
    *v1 = a1[5];
    *(v1 + 40) = v3;
    *(v1 + 64) = 1;
    v4 = *(v1 + 16);
    for (i = *(v1 + 24); v4 != i; v4 += 4)
    {
      v9 = 0;
      v10 = 0;
      v8 = 0;
      v7 = 0;
      v6[0] = &v9;
      v6[1] = &v8;
      v6[2] = &v7;
      std::__memberwise_copy_assign[abi:ne200100]<std::tuple<std::shared_ptr<CSCppSymbolOwner> &,unsigned long long &,BOOL &>,std::tuple<std::shared_ptr<CSCppSymbolOwner>,unsigned long long,BOOL>,0ul,1ul,2ul>(v6, v4);
      if (v8 > *(v1 + 40))
      {
        CSCppSymbolicator::dyld_activity(a1[5], &v9, v8, v7);
      }

      if (v10)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v10);
      }
    }

    std::vector<std::tuple<std::shared_ptr<CSCppSymbolOwner>,unsigned long long,BOOL>>::clear[abi:ne200100]((v1 + 16));
  }
}

void sub_1D97A5618(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  _Unwind_Resume(exception_object);
}

void new_loaded_owner_arch_specific<SizeAndEndianness<Pointer32,LittleEndian>>(CSCppMachTaskContainer *a1@<X0>, unsigned int a2@<W1>, const char *a3@<X2>, void *a4@<X8>)
{
  CSCppTaskMemory::CSCppTaskMemory(v15, a1, 0);
  v14 = v15;
  v8 = TMemoryView<SizeAndEndianness<Pointer32,LittleEndian>>::macho_header_at(&v14, a2, 1);
  if (a3)
  {
    v9 = v8;
    if (v8)
    {
      if (stat(a3, &v13))
      {
        tv_sec = 0;
      }

      else
      {
        tv_sec = v13.st_mtimespec.tv_sec;
      }

      TExtendedMachOHeader<SizeAndEndianness<Pointer32,LittleEndian>>::TExtendedMachOHeader(v12, v15, a2, v9, a3, tv_sec, 0, v10, 0, 0);
      TExtendedMachOHeader<SizeAndEndianness<Pointer32,LittleEndian>>::symbol_owner(v12);
    }
  }

  CSCppMachTaskContainer::is_alive(a1);
  *a4 = 0;
  a4[1] = 0;
  CSCppTaskMemory::~CSCppTaskMemory(v15);
}

void new_loaded_owner_arch_specific<SizeAndEndianness<Pointer64,LittleEndian>>(CSCppMachTaskContainer *a1@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, void *a4@<X8>)
{
  CSCppTaskMemory::CSCppTaskMemory(v16, a1, 0);
  v15 = v16;
  v8 = TMemoryView<SizeAndEndianness<Pointer64,LittleEndian>>::macho_header_at(&v15, a2, 1);
  if (a3)
  {
    v9 = v8;
    if (v8)
    {
      if (stat(a3, &v14))
      {
        tv_sec = 0;
      }

      else
      {
        tv_sec = v14.st_mtimespec.tv_sec;
      }

      LOBYTE(v11) = 0;
      v12 = 0;
      TExtendedMachOHeader<SizeAndEndianness<Pointer64,LittleEndian>>::TExtendedMachOHeader(v13, v16, a2, v9, a3, tv_sec, 0, &v11);
      TExtendedMachOHeader<SizeAndEndianness<Pointer64,LittleEndian>>::symbol_owner(v13);
    }
  }

  CSCppMachTaskContainer::is_alive(a1);
  *a4 = 0;
  a4[1] = 0;
  CSCppTaskMemory::~CSCppTaskMemory(v16);
}

void std::allocator<std::tuple<std::shared_ptr<CSCppSymbolOwner>,unsigned long long,BOOL>>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void **std::__split_buffer<std::tuple<std::shared_ptr<CSCppSymbolOwner>,unsigned long long,BOOL>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::tuple<std::shared_ptr<CSCppSymbolOwner>,unsigned long long,BOOL>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::tuple<std::shared_ptr<CSCppSymbolOwner>,unsigned long long,BOOL>>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  while (v1 != v2)
  {
    *(a1 + 16) = v1 - 32;
    v4 = *(v1 - 24);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      v1 = *(a1 + 16);
    }

    else
    {
      v1 -= 32;
    }
  }
}

void std::vector<std::tuple<std::shared_ptr<CSCppSymbolOwner>,unsigned long long,BOOL>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::tuple<std::shared_ptr<CSCppSymbolOwner>,unsigned long long,BOOL>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::__memberwise_copy_assign[abi:ne200100]<std::tuple<std::shared_ptr<CSCppSymbolOwner> &,unsigned long long &,BOOL &>,std::tuple<std::shared_ptr<CSCppSymbolOwner>,unsigned long long,BOOL>,0ul,1ul,2ul>(uint64_t a1, uint64_t *a2)
{
  v4 = *a1;
  v6 = *a2;
  v5 = a2[1];
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = v4[1];
  *v4 = v6;
  v4[1] = v5;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  v8 = *(a1 + 16);
  **(a1 + 8) = a2[2];
  *v8 = *(a2 + 24);
}

void CSBinaryDataRef::CSBinaryDataRef(CSBinaryDataRef *this)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 8) = 0;
}

void CSBinaryDataRef::CSBinaryDataRef(CSBinaryDataRef *this, const unsigned __int8 *a2, uint64_t a3, char a4)
{
  *this = a2;
  *(this + 1) = &a2[a3];
  *(this + 16) = a4;
  *(this + 17) = 0;
}

const unsigned __int8 **CSBinaryDataRef::SetData(const unsigned __int8 **this, const unsigned __int8 *a2, uint64_t a3)
{
  v3 = &a2[a3];
  if (a3)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if (!a3)
  {
    v3 = 0;
  }

  *this = v4;
  this[1] = v3;
  return this;
}

uint64_t CSBinaryDataRef::Get8(CSBinaryDataRef *this, unsigned int *a2)
{
  v2 = *this;
  v3 = *(this + 1);
  if (*this >= v3)
  {
    return 0;
  }

  v4 = *a2;
  if ((v3 - v2) <= v4)
  {
    return 0;
  }

  result = *(v2 + v4);
  *a2 = v4 + 1;
  return result;
}

uint64_t CSBinaryDataRef::Get16(CSBinaryDataRef *this, unsigned int *a2)
{
  v2 = *this;
  v3 = *(this + 1);
  if (*this >= v3 || (v4 = *a2, (v3 - v2) <= (v4 + 1)))
  {
    LOWORD(v5) = 0;
  }

  else
  {
    v5 = *(v2 + v4);
    v6 = bswap32(v5) >> 16;
    if (*(this + 16))
    {
      LOWORD(v5) = v6;
    }

    *a2 = v4 + 2;
  }

  return v5;
}

uint64_t CSBinaryDataRef::Get32(CSBinaryDataRef *this, unsigned int *a2)
{
  v2 = *this;
  v3 = *(this + 1);
  if (*this >= v3)
  {
    return 0;
  }

  v4 = *a2;
  if ((v3 - v2) <= (v4 + 3))
  {
    return 0;
  }

  v5 = *(v2 + v4);
  v6 = bswap32(v5);
  if (*(this + 16))
  {
    result = v6;
  }

  else
  {
    result = v5;
  }

  *a2 = v4 + 4;
  return result;
}

unint64_t CSBinaryDataRef::Get64(CSBinaryDataRef *this, unsigned int *a2)
{
  v2 = *this;
  v3 = *(this + 1);
  if (*this >= v3)
  {
    return 0;
  }

  v4 = *a2;
  if ((v3 - v2) <= (v4 + 7))
  {
    return 0;
  }

  v5 = *(v2 + v4);
  v6 = bswap64(v5);
  if (*(this + 16))
  {
    result = v6;
  }

  else
  {
    result = v5;
  }

  *a2 = v4 + 8;
  return result;
}

unint64_t CSBinaryDataRef::GetMax64(CSBinaryDataRef *this, unsigned int *a2, int a3)
{
  v3 = 0;
  if (a3 > 3)
  {
    if (a3 == 4)
    {
      v3 = *this;
      v17 = *(this + 1);
      if (*this >= v17)
      {
        return 0;
      }

      v18 = *a2;
      if ((v17 - v3) <= (v18 + 3))
      {
        return 0;
      }

      LODWORD(v3) = *(v3 + v18);
      v19 = bswap32(v3);
      if (*(this + 16))
      {
        v3 = v19;
      }

      else
      {
        v3 = v3;
      }

      v13 = v18 + 4;
    }

    else
    {
      if (a3 != 8)
      {
        return v3;
      }

      v9 = *this;
      v10 = *(this + 1);
      if (*this >= v10)
      {
        return 0;
      }

      v11 = *a2;
      if ((v10 - v9) <= (v11 + 7))
      {
        return 0;
      }

      v3 = *(v9 + v11);
      v12 = bswap64(v3);
      if (*(this + 16))
      {
        v3 = v12;
      }

      v13 = v11 + 8;
    }

LABEL_25:
    *a2 = v13;
    return v3;
  }

  if (a3 == 1)
  {
    v14 = *this;
    v15 = *(this + 1);
    if (*this >= v15)
    {
      return 0;
    }

    v16 = *a2;
    if ((v15 - v14) <= v16)
    {
      return 0;
    }

    v3 = *(v14 + v16);
    v13 = v16 + 1;
    goto LABEL_25;
  }

  if (a3 != 2)
  {
    return v3;
  }

  v4 = *this;
  v5 = *(this + 1);
  if (*this >= v5)
  {
    return 0;
  }

  v6 = *a2;
  if ((v5 - v4) <= (v6 + 1))
  {
    return 0;
  }

  v7 = *(v4 + v6);
  v8 = bswap32(v7) >> 16;
  if (*(this + 16))
  {
    LOWORD(v7) = v8;
  }

  *a2 = v6 + 2;
  return v7;
}

uint64_t CSBinaryDataRef::GetDwarfEHPtr(CSBinaryDataRef *this, unsigned int *a2, int a3, void *a4)
{
  if (a3 == 255)
  {
    return -1;
  }

  v6 = 0;
  v7 = 0;
  v8 = ((a3 & 0x70u) - 16) >> 4;
  if (v8 > 1)
  {
    if (v8 == 2)
    {
      v6 = a4[2];
    }

    else
    {
      if (v8 != 3)
      {
        if (v8 == 4)
        {
          v9 = *(this + 17);
          if (*(this + 17))
          {
            v7 = 0;
            v6 = 0;
            v10 = *a2 % v9;
            v11 = v9 - v10;
            if (!v10)
            {
              v11 = 0;
            }

            a2 += v11;
          }

          else
          {
            v7 = 0;
            v6 = 0;
          }
        }

        goto LABEL_18;
      }

      v6 = 0;
    }

LABEL_17:
    v7 = 1;
    goto LABEL_18;
  }

  if (!v8)
  {
    v6 = *a4 + *a2;
    goto LABEL_17;
  }

  if (v8 == 1)
  {
    v7 = 0;
    v6 = a4[1];
  }

LABEL_18:
  ULEB128 = 0;
  v13 = a3 & 0xF;
  if (v13 <= 3)
  {
    if ((a3 & 0xFu) <= 1)
    {
      if ((a3 & 0xF) != 0)
      {
        ULEB128 = CSBinaryDataRef::Get_ULEB128(this, a2);
      }

      else
      {
        ULEB128 = CSBinaryDataRef::GetMax64(this, a2, *(this + 17));
      }

      goto LABEL_62;
    }

    if (v13 == 2)
    {
      v25 = *this;
      v26 = *(this + 1);
      if (*this < v26)
      {
        v27 = *a2;
        if ((v26 - v25) > (v27 + 1))
        {
          v28 = *(v25 + v27);
          v29 = bswap32(v28) >> 16;
          if (*(this + 16))
          {
            LOWORD(v28) = v29;
          }

          *a2 = v27 + 2;
          ULEB128 = v28;
          goto LABEL_62;
        }
      }
    }

    else
    {
      if (v13 != 3)
      {
        goto LABEL_62;
      }

      v14 = *this;
      v15 = *(this + 1);
      if (*this < v15)
      {
        v16 = *a2;
        if ((v15 - v14) > (v16 + 3))
        {
          v17 = *(v14 + v16);
          v18 = bswap32(v17);
          if (*(this + 16))
          {
            ULEB128 = v18;
          }

          else
          {
            ULEB128 = v17;
          }

          v19 = v16 + 4;
          goto LABEL_44;
        }
      }
    }

LABEL_61:
    ULEB128 = 0;
    goto LABEL_62;
  }

  if ((a3 & 0xFu) <= 9)
  {
    if (v13 != 4)
    {
      if (v13 == 9)
      {
        ULEB128 = CSBinaryDataRef::Get_SLEB128(this, a2);
      }

      goto LABEL_62;
    }

LABEL_38:
    v20 = *this;
    v21 = *(this + 1);
    if (*this < v21)
    {
      v22 = *a2;
      if ((v21 - v20) > (v22 + 7))
      {
        v23 = *(v20 + v22);
        v24 = bswap64(v23);
        if (*(this + 16))
        {
          ULEB128 = v24;
        }

        else
        {
          ULEB128 = v23;
        }

        v19 = v22 + 8;
LABEL_44:
        *a2 = v19;
        goto LABEL_62;
      }
    }

    goto LABEL_61;
  }

  switch(v13)
  {
    case 0xAu:
      v30 = *this;
      v31 = *(this + 1);
      if (*this < v31)
      {
        v32 = *a2;
        if ((v31 - v30) > (v32 + 1))
        {
          v33 = *(v30 + v32);
          v34 = bswap32(v33) >> 16;
          if (*(this + 16))
          {
            LOWORD(v33) = v34;
          }

          *a2 = v32 + 2;
          ULEB128 = v33;
          break;
        }
      }

      goto LABEL_61;
    case 0xBu:
      v35 = *this;
      v36 = *(this + 1);
      if (*this < v36)
      {
        v37 = *a2;
        if ((v36 - v35) > (v37 + 3))
        {
          v38 = *(v35 + v37);
          v39 = bswap32(v38);
          if (*(this + 16))
          {
            v38 = v39;
          }

          *a2 = v37 + 4;
          ULEB128 = v38;
          break;
        }
      }

      goto LABEL_61;
    case 0xCu:
      goto LABEL_38;
  }

LABEL_62:
  if (v7)
  {
    v40 = *(this + 17);
    if (v40 <= 7)
    {
      v41 = 1 << (8 * v40 - 1);
      if ((v41 & ULEB128) != 0)
      {
        v42 = -v41;
      }

      else
      {
        v42 = 0;
      }

      ULEB128 |= v42;
    }
  }

  return ULEB128 + v6;
}

uint64_t CSBinaryDataRef::Get_ULEB128(CSBinaryDataRef *this, unsigned int *a2)
{
  v3 = *this;
  v2 = *(this + 1);
  if (*this >= v2)
  {
    return 0;
  }

  result = 0;
  v5 = 0;
  v6 = 0;
  v7 = *a2;
  v8 = (v3 + v7);
  do
  {
    if (v8 >= v2)
    {
      break;
    }

    v9 = *v8++;
    ++v6;
    result |= (v9 & 0x7F) << v5;
    v5 += 7;
  }

  while (v9 < 0);
  *a2 = v6 + v7;
  return result;
}

uint64_t CSBinaryDataRef::Get_SLEB128(CSBinaryDataRef *this, unsigned int *a2)
{
  v2 = *this;
  v3 = *(this + 1);
  if (*this >= v3)
  {
    return 0;
  }

  v4 = *a2;
  v5 = (v2 + v4);
  if (v2 + v4 >= v3)
  {
    v10 = 0;
    v6 = 0;
    v11 = 0;
    v14 = 1;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v8 = v4 + v2;
    v9 = v3 - v8;
    v10 = -7 * v8 - v3 + 8 * v3;
    v11 = 1;
    while (1)
    {
      v12 = *v5;
      v6 |= (v12 & 0x7F) << v7;
      if ((v12 & 0x80000000) == 0)
      {
        break;
      }

      ++v5;
      ++v11;
      v7 += 7;
      if (v5 >= v3)
      {
        v11 = v9;
        goto LABEL_10;
      }
    }

    v10 = v7 + 7;
LABEL_10:
    v14 = (v12 & 0x40) == 0;
  }

  if (v10 > 31)
  {
    v14 = 1;
  }

  v15 = -1 << v10;
  if (v14)
  {
    v15 = 0;
  }

  result = v15 | v6;
  *a2 = v11 + v4;
  return result;
}

uint64_t CSBinaryDataRef::GetData(CSBinaryDataRef *this, unsigned int *a2, unsigned int a3)
{
  if (!a3)
  {
    return 0;
  }

  v3 = *this;
  v4 = *(this + 1);
  if (*this >= v4)
  {
    return 0;
  }

  v5 = *a2;
  if ((v4 - v3) <= v5 + a3 - 1)
  {
    return 0;
  }

  result = v3 + v5;
  *a2 = v5 + a3;
  return result;
}

void CSThreadArm::CSThreadArm(CSThreadArm *this)
{
  *(this + 4) = 0;
  *(this + 2) = 0;
  *this = &unk_1F55083E8;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  *(this + 232) = 0u;
  *(this + 248) = 0u;
  *(this + 37) = 0;
  *(this + 24) = 0u;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
}

uint64_t CSThreadArm::GetRARegNum(uint64_t a1)
{
  if (*(a1 + 9))
  {
    return 30;
  }

  else
  {
    return 14;
  }
}

uint64_t CSThreadArm::ConvertRegisterNumberToRegisterIndex(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 9) == 1)
  {
    if (a2 < 0x22)
    {
      return a2;
    }

    return 0xFFFFFFFFLL;
  }

  if (a2 >= 0x11)
  {
    return 0xFFFFFFFFLL;
  }

  return a2;
}

uint64_t CSThreadArm::RegisterNameToRegisterIndex(CSThreadArm *this, const char *a2, int a3)
{
  if (!a2 || !*a2)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = a3;
  v5 = 0;
  if (a3)
  {
    v6 = g64BitRegNames_arm;
  }

  else
  {
    v6 = g32BitRegNames_arm;
  }

  if (a3)
  {
    v7 = 34;
  }

  else
  {
    v7 = 17;
  }

  while (1)
  {
    v8 = v6[v5];
    if (v8)
    {
      if (!strcasecmp(a2, v8))
      {
        break;
      }
    }

    if (v7 <= ++v5)
    {
      if (v4)
      {
        return 0xFFFFFFFFLL;
      }

      if (!strcasecmp(a2, "fp"))
      {
        return 7;
      }

      if (!strcasecmp(a2, "r13"))
      {
        return 13;
      }

      if (!strcasecmp(a2, "r14"))
      {
        return 14;
      }

      if (!strcasecmp(a2, "r15"))
      {
        return 15;
      }

      if (!strcasecmp(a2, "ip"))
      {
        return 12;
      }

      if (strcasecmp(a2, "psr"))
      {
        return 0xFFFFFFFFLL;
      }

      return 16;
    }
  }

  return v5;
}

uint64_t CSThreadArm::NumRegisters(CSThreadArm *this)
{
  if (*(this + 9))
  {
    return 34;
  }

  else
  {
    return 17;
  }
}

uint64_t CSThreadArm::GetFPRegNum(uint64_t a1)
{
  if (*(a1 + 9))
  {
    return 29;
  }

  else
  {
    return 11;
  }
}

uint64_t CSThreadArm::GetPCRegNum(uint64_t a1)
{
  if (*(a1 + 9))
  {
    return 32;
  }

  else
  {
    return 15;
  }
}

uint64_t CSThreadArm::ThreadGetState(int8x8_t *this, thread_read_t a2, int a3)
{
  (*(*this + 88))(this);
  this[1].i8[1] = a3;
  if (a3)
  {
    old_stateCnt = 68;
    state = thread_get_state(a2, 6, &old_state, &old_stateCnt);
    if (!state)
    {
      pc = old_state.__pc;
      if ((old_state.__pad & 1) == 0)
      {
        pc = old_state.__pc;
      }

      old_state.__pc = pc;
      lr = old_state.__lr;
      if ((old_state.__pad & 3) == 0)
      {
        lr = old_state.__lr;
      }

      old_state.__lr = lr;
      old_state.__pad = old_state.__pad & 0xFFFFFFF2 | 1;
      CSThreadArm::SetState(this, &old_state);
    }
  }

  else
  {
    old_stateCnt = 17;
    state = thread_get_state(a2, 1, &old_state, &old_stateCnt);
    if (!state)
    {
      CSThreadArm::SetState(this, &old_state);
    }
  }

  return state;
}

int8x8_t CSThreadArm::SetState(int8x8_t *this, const __darwin_arm_thread_state64 *a2)
{
  this[1].i8[1] = 1;
  memcpy(&this[3], a2, 0x110uLL);
  v9 = this + 37;
  v10 = 0;
  std::__fill_n_BOOL[abi:ne200100]<false,std::vector<BOOL>>(&v9, 0x22uLL);
  v3 = xmmword_1D97E46E0;
  *v4.i8 = this[37];
  v5 = 34;
  v6 = vdupq_n_s64(1uLL);
  v7 = vdupq_n_s64(2uLL);
  do
  {
    v4 = vorrq_s8(v4, vshlq_u64(v6, v3));
    v3 = vaddq_s64(v3, v7);
    v5 -= 2;
  }

  while (v5);
  result = vorr_s8(*v4.i8, *&vextq_s8(v4, v4, 8uLL));
  this[37] = result;
  this[2] = 8;
  return result;
}

int8x8_t CSThreadArm::SetState(CSThreadArm *this, const __darwin_arm_thread_state *a2)
{
  *(this + 9) = 0;
  *(this + 24) = *a2->__r;
  v3 = *&a2->__r[4];
  v4 = *&a2->__r[8];
  v5 = *&a2->__r[12];
  *(this + 22) = a2->__cpsr;
  *(this + 72) = v5;
  *(this + 56) = v4;
  *(this + 40) = v3;
  v6 = (this + 296);
  v16 = this + 296;
  v17 = 0;
  std::__fill_n_BOOL[abi:ne200100]<false,std::vector<BOOL>>(&v16, 0x22uLL);
  v7 = xmmword_1D97E46E0;
  v8.i64[0] = *v6;
  v9 = 18;
  v10 = vdupq_n_s64(1uLL);
  v11 = vdupq_n_s64(2uLL);
  do
  {
    v12 = v8;
    v13 = v7;
    v8 = vorrq_s8(v8, vshlq_u64(v10, v7));
    v7 = vaddq_s64(v7, v11);
    v9 -= 2;
  }

  while (v9);
  v14 = vbslq_s8(vcgtq_u64(vdupq_n_s64(0x11uLL), v13), v8, v12);
  result = vorr_s8(*v14.i8, *&vextq_s8(v14, v14, 8uLL));
  *(this + 37) = result;
  *(this + 2) = 4;
  return result;
}

uint64_t CSThreadArm::GetSPRegNum(uint64_t a1)
{
  if (*(a1 + 9))
  {
    return 31;
  }

  else
  {
    return 13;
  }
}

unint64_t CSThreadArm::FPAppearsValidForFPBackchain(CSThreadArm *this, char a2)
{
  v4 = (*(*this + 120))(this);
  result = (*(*this + 160))(this, v4, 0, 0);
  if (result)
  {
    v6 = result;
    v7 = (*(*this + 128))(this);
    v8 = (*(*this + 160))(this, v7, 0, 0);
    if ((a2 & 1) == 0 && v6 < v8)
    {
      return 0;
    }

    if (*(this + 9) == 1)
    {
      if ((v6 & 7) != 0)
      {
        return 0;
      }
    }

    else if ((v6 & 3) != 0)
    {
      return 0;
    }

    return 1;
  }

  return result;
}

uint64_t CSThread::GetFP(CSThread *this, uint64_t a2)
{
  v4 = (*(*this + 120))(this);
  v5 = *(*this + 160);

  return v5(this, v4, a2, 0);
}

uint64_t CSThread::GetSP(CSThread *this, uint64_t a2)
{
  v4 = (*(*this + 128))(this);
  v5 = *(*this + 160);

  return v5(this, v4, a2, 0);
}

uint64_t CSThreadArm::GetPCRegIndex(CSThreadArm *this)
{
  if (*(this + 9))
  {
    return 32;
  }

  else
  {
    return 15;
  }
}

uint64_t CSThreadArm::GetFPRegIndex(CSThreadArm *this)
{
  if (*(this + 8))
  {
    return 5;
  }

  if (*(this + 9))
  {
    return 29;
  }

  return 7;
}

uint64_t CSThreadArm::GetSPRegIndex(CSThreadArm *this)
{
  if (*(this + 8))
  {
    return 4;
  }

  if (*(this + 9))
  {
    return 31;
  }

  return 13;
}

uint64_t CSThreadArm::GetLRRegIndex(CSThreadArm *this)
{
  if (*(this + 9))
  {
    return 30;
  }

  else
  {
    return 14;
  }
}

char *CSThreadArm::GetRegisterNameByIndex(CSThreadArm *this, unsigned int a2)
{
  if (*(this + 9) == 1)
  {
    if (a2 <= 0x21)
    {
      v2 = g64BitRegNames_arm;
      return v2[a2];
    }
  }

  else if (a2 <= 0x10)
  {
    v2 = g32BitRegNames_arm;
    return v2[a2];
  }

  return 0;
}

uint64_t CSThreadArm::GetRegisterValueByIndex(CSThreadArm *this, uint64_t a2, uint64_t a3, BOOL *a4)
{
  v6 = a2;
  if (*(this + 9) == 1)
  {
    if (a2 <= 0x21 && (*(*this + 176))(this, a2))
    {
      if (v6 <= 30)
      {
        if (v6 == 29)
        {
          a3 = *(this + 32);
          if (a3 && (*(this + 292) & 1) == 0)
          {
            v10 = *(this + 32);
            v8 = 1;
LABEL_32:
            a3 = v10;
            if (!a4)
            {
              return a3;
            }

            goto LABEL_15;
          }
        }

        else
        {
          if (v6 != 30)
          {
LABEL_34:
            a3 = *(this + v6 + 3);
            goto LABEL_12;
          }

          a3 = *(this + 33);
          if (a3 && (*(this + 73) & 3) == 0)
          {
            v10 = *(this + 33);
LABEL_28:
            v8 = 1;
            goto LABEL_32;
          }
        }
      }

      else
      {
        switch(v6)
        {
          case 31:
            a3 = *(this + 34);
            if (a3 && (*(this + 292) & 1) == 0)
            {
              v10 = *(this + 34);
              v8 = 1;
              goto LABEL_32;
            }

            break;
          case 32:
            a3 = *(this + 35);
            if (a3 && (*(this + 73) & 1) == 0)
            {
              v10 = *(this + 35);
              goto LABEL_28;
            }

            break;
          case 33:
            a3 = *(this + 72);
            break;
          default:
            goto LABEL_34;
        }
      }

LABEL_12:
      v8 = 1;
      if (!a4)
      {
        return a3;
      }

      goto LABEL_15;
    }
  }

  else if (a2 <= 0x10 && (*(*this + 176))(this, a2))
  {
    a3 = *(this + v6 + 6);
    goto LABEL_12;
  }

  v8 = 0;
  if (a4)
  {
LABEL_15:
    *a4 = v8;
  }

  return a3;
}

uint64_t CSThreadArm::SetRegisterValueByIndex(CSThreadArm *this, unsigned int a2, uint64_t a3)
{
  if (*(this + 9) == 1)
  {
    if (a2 <= 0x21)
    {
      if (a2 <= 30)
      {
        if (a2 == 29)
        {
          if (a3)
          {
            *(this + 292);
          }

          *(this + 32) = a3;
          goto LABEL_31;
        }

        if (a2 != 30)
        {
          *(this + a2 + 3) = a3;
          goto LABEL_31;
        }

        v4 = *(this + 73);
        if (a3)
        {
          if ((v4 & 1) == 0)
          {
            v4 &= 0xFFFFFFFC;
          }

          v5 = a3;
        }

        else
        {
          v5 = 0;
        }

        *(this + 33) = v5;
        v8 = v4 & 0xFFFFFFF7;
      }

      else
      {
        if (a2 == 31)
        {
          if (a3)
          {
            *(this + 292);
          }

          *(this + 34) = a3;
          goto LABEL_31;
        }

        if (a2 != 32)
        {
          *(this + 72) = a3;
LABEL_31:
          v3 = 1;
          goto LABEL_32;
        }

        v6 = *(this + 73);
        if (a3)
        {
          v7 = a3;
        }

        else
        {
          v7 = 0;
        }

        *(this + 35) = v7;
        v8 = v6 & 0xFFFFFFFB;
      }

      *(this + 73) = v8;
      goto LABEL_31;
    }
  }

  else if (a2 <= 0x10)
  {
    *(this + a2 + 6) = a3;
    goto LABEL_31;
  }

  v3 = 0;
LABEL_32:
  (*(*this + 184))(this);
  return v3;
}

uint64_t CSThreadArm::RegisterIsPreservedByABI(_BYTE *a1)
{
  if ((a1[9] & 1) != 0 || (v1 = (*(*a1 + 96))(a1), v1 > 0xC))
  {
    LOBYTE(v2) = 0;
  }

  else
  {
    v2 = 0x1DF0u >> v1;
  }

  return v2 & 1;
}

void CSThreadArm::InvalidateAllRegisters(CSThreadArm *this)
{
  v1 = this + 296;
  v2 = 0;
  std::__fill_n_BOOL[abi:ne200100]<false,std::vector<BOOL>>(&v1, 0x22uLL);
}

uint64_t CSThreadArm::GetRegisterIsValidByIndex(CSThreadArm *this, unsigned int a2)
{
  if (a2 > 0x21)
  {
    return 0;
  }

  else
  {
    return (*(this + 37) >> a2) & 1;
  }
}

uint64_t CSThreadArm::SetRegisterIsValidByIndex(uint64_t this, unsigned int a2, int a3)
{
  if (a3)
  {
    if (a2 >= 0x22)
    {
      std::__throw_out_of_range[abi:ne200100]("bitset set argument out of range");
    }

    v3 = *(this + 296) | (1 << a2);
  }

  else
  {
    if (a2 >= 0x22)
    {
      std::__throw_out_of_range[abi:ne200100]("bitset reset argument out of range");
    }

    v3 = *(this + 296) & ~(1 << a2);
  }

  *(this + 296) = v3;
  return this;
}

uint64_t CSThread::GetRegisterValue(CSThread *this, const char *a2, uint64_t a3, BOOL *a4)
{
  v7 = (*(*this + 144))(this, a2, *(this + 9));
  v8 = *(*this + 160);

  return v8(this, v7, a3, a4);
}

uint64_t CSThread::GetRegisterValue(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = (*(*a1 + 96))(a1);
  v9 = *(*a1 + 160);

  return v9(a1, v8, a4, a5);
}

uint64_t CSThread::SetRegisterValue(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = (*(*a1 + 96))(a1);
  v7 = *(*a1 + 168);

  return v7(a1, v6, a4);
}

uint64_t CSThread::SetRegisterIsValid(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = (*(*a1 + 96))(a1);
  v7 = *(*a1 + 184);

  return v7(a1, v6, a4);
}

uint64_t CSThread::GetPC(CSThread *this, uint64_t a2)
{
  v4 = (*(*this + 112))(this);
  v5 = *(*this + 160);

  return v5(this, v4, a2, 0);
}

uint64_t CSThread::GetLR(CSThread *this, uint64_t a2)
{
  v4 = (*(*this + 136))(this);
  v5 = *(*this + 160);

  return v5(this, v4, a2, 0);
}

uint64_t CSThread::SetPC(CSThread *this, uint64_t a2)
{
  v4 = (*(*this + 112))(this);
  v5 = *(*this + 168);

  return v5(this, v4, a2);
}

uint64_t CSThread::SetFP(CSThread *this, uint64_t a2)
{
  v4 = (*(*this + 120))(this);
  v5 = *(*this + 168);

  return v5(this, v4, a2);
}

uint64_t CSThread::SetSP(CSThread *this, uint64_t a2)
{
  v4 = (*(*this + 128))(this);
  v5 = *(*this + 168);

  return v5(this, v4, a2);
}

uint64_t CSThread::SetLR(CSThread *this, uint64_t a2)
{
  v4 = (*(*this + 136))(this);
  v5 = *(*this + 168);

  return v5(this, v4, a2);
}

void *CSThreadArm::assign(CSThreadArm *this, const CSThread *a2)
{
  *(this + 4) = *(a2 + 4);
  *(this + 2) = *(a2 + 2);
  result = memcpy(this + 24, a2 + 24, 0x110uLL);
  *(this + 37) = *(a2 + 37);
  return result;
}

char **CSCallFrameInfo::FindCallFrameInfoForBinary@<X0>(char **this@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = *this;
  v4 = this[1];
  if (*this == v4)
  {
    goto LABEL_11;
  }

  v5 = (v4 - v3) >> 4;
  do
  {
    v6 = v5 >> 1;
    v7 = &v3[16 * (v5 >> 1)];
    v9 = *v7;
    v8 = v7 + 16;
    v5 += ~(v5 >> 1);
    if (*(v9 + 32) + *(v9 + 24) <= a2)
    {
      v3 = v8;
    }

    else
    {
      v5 = v6;
    }
  }

  while (v5);
  if (v3 == v4 || (v10 = *v3, a2 - *(*v3 + 24) >= *(*v3 + 32)))
  {
LABEL_11:
    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    v11 = *(v3 + 1);
    *a3 = v10;
    a3[1] = v11;
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }
  }

  return this;
}

uint64_t CSCallFrameInfo::UnwindThreadState(char **a1, uint64_t a2, uint64_t a3, int a4, void *a5)
{
  if (!*a2)
  {
    return 0;
  }

  if (!*a5)
  {
    return 0;
  }

  (*(**a5 + 16))(*a5);
  PC = CSThread::GetPC(*a2, -1);
  if (PC == -1)
  {
    return 0;
  }

  if (PC)
  {
    v11 = PC - (a4 ^ 1u);
  }

  else
  {
    v11 = 0;
  }

  CSCallFrameInfo::FindCallFrameInfoForBinary(a1, v11, v22);
  v13 = *v22;
  if (*v22)
  {
    v14 = *(a2 + 8);
    v20 = *a2;
    v21 = v14;
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v15 = a5[1];
    v18 = *a5;
    v19 = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v16 = CSCallFrameInfoForBinary::UnwindThreadState(v13, &v20, a3, &v18, v11, v12);
    if (v19)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v19);
    }

    if (v21)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v21);
    }
  }

  else
  {
    v16 = 0;
  }

  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  return v16;
}

void sub_1D97A7514(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  if (a3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a3);
  }

  CSCallFrameInfo::UnwindThreadState((v5 + 8), va);
  _Unwind_Resume(a1);
}

void CSCallFrameInfo::ParseCFIForTask(CSCallFrameInfo *this)
{
  v1 = MEMORY[0x1EEE9AC00](this);
  v21 = *MEMORY[0x1E69E9840];
  CSCppMachTask::CSCppMachTask(v13, v2, 0);
  if (v17 == 1)
  {
    v10 = &unk_1F55084E0;
    v11 = v1;
    v12 = v15;
    TMachOHeaderIterator<SizeAndEndianness<Pointer64,LittleEndian>>::TMachOHeaderIterator(v7, v14, v16, v18, v19, v20, 0, &v10);
  }

  else
  {
    v10 = &unk_1F5508580;
    v11 = v1;
    v12 = v15;
    TMachOHeaderIterator<SizeAndEndianness<Pointer32,LittleEndian>>::TMachOHeaderIterator(v7, v14, v16, v18, v19, v20, 0, &v10);
  }

  if (v9 < 0)
  {
    operator delete(__p);
  }

  CSCppTaskMemory::~CSCppTaskMemory(v7);
  v3 = *(v1 + 8);
  v4 = 126 - 2 * __clz((v3 - *v1) >> 4);
  if (v3 == *v1)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  std::__introsort<std::_ClassicAlgPolicy,CSCallFrameInfo::ParseCFIForTask::$_0 &,std::shared_ptr<CSCallFrameInfoForBinary> *,false>(*v1, v3, v5, 1);
  CSCppMachTask::~CSCppMachTask(v13);
  v6 = *MEMORY[0x1E69E9840];
}

void std::__introsort<std::_ClassicAlgPolicy,CSCallFrameInfo::ParseCFIForTask(unsigned int)::$_0 &,std::shared_ptr<CSCallFrameInfoForBinary> *,false>(uint64_t *a1, uint64_t *a2, uint64_t a3, char a4)
{
LABEL_1:
  v213 = a2 - 1;
  v8 = a1;
  while (1)
  {
    a1 = v8;
    v9 = (a2 - v8) >> 4;
    v10 = v9 - 2;
    if (v9 > 2)
    {
      switch(v9)
      {
        case 3:
          v132 = a1[2];
          v133 = *(v132 + 24);
          v134 = *a1;
          v135 = *(*a1 + 24);
          v136 = *(a2 - 2);
          v137 = *(v136 + 24);
          if (v133 >= v135)
          {
            if (v137 >= v133)
            {
              return;
            }

            a1[2] = v136;
            *(a2 - 2) = v132;
            v197 = a1[3];
            v213 = a1 + 3;
            a1[3] = *(a2 - 1);
            *(a2 - 1) = v197;
            v198 = a1[2];
            v199 = *a1;
            if (*(v198 + 24) >= *(*a1 + 24))
            {
              return;
            }

            *a1 = v198;
            a1[2] = v199;
            v138 = a1 + 1;
          }

          else
          {
            if (v137 >= v133)
            {
              v138 = a1 + 3;
              v209 = a1[3];
              v210 = a1[1];
              *a1 = v132;
              a1[1] = v209;
              a1[2] = v134;
              a1[3] = v210;
              v211 = *(a2 - 2);
              if (*(v211 + 24) >= v135)
              {
                return;
              }

              a1[2] = v211;
            }

            else
            {
              v138 = a1 + 1;
              *a1 = v136;
            }

            *(a2 - 2) = v134;
          }

          v212 = *v138;
          *v138 = *v213;
          *v213 = v212;
          return;
        case 4:

          std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,CSCallFrameInfo::ParseCFIForTask::$_0 &,std::shared_ptr<CSCallFrameInfoForBinary> *,0>(a1, a1 + 2, a1 + 4, a2 - 2);
          return;
        case 5:
          std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,CSCallFrameInfo::ParseCFIForTask::$_0 &,std::shared_ptr<CSCallFrameInfoForBinary> *,0>(a1, a1 + 2, a1 + 4, a1 + 6);
          v117 = *(a2 - 2);
          v118 = a1[6];
          if (*(v117 + 24) < *(v118 + 24))
          {
            a1[6] = v117;
            *(a2 - 2) = v118;
            v119 = a1[7];
            a1[7] = *(a2 - 1);
            *(a2 - 1) = v119;
            v120 = a1[6];
            v121 = *(v120 + 24);
            v122 = a1[4];
            if (v121 < *(v122 + 24))
            {
              v123 = a1[5];
              v124 = a1[7];
              a1[4] = v120;
              a1[5] = v124;
              a1[6] = v122;
              a1[7] = v123;
              v125 = a1[2];
              if (v121 < *(v125 + 24))
              {
                v126 = a1[3];
                a1[2] = v120;
                a1[3] = v124;
                a1[4] = v125;
                a1[5] = v126;
                v127 = *a1;
                if (v121 < *(*a1 + 24))
                {
                  v128 = a1[1];
                  *a1 = v120;
                  a1[1] = v124;
                  a1[2] = v127;
                  a1[3] = v128;
                }
              }
            }
          }

          return;
      }
    }

    else
    {
      if (v9 < 2)
      {
        return;
      }

      if (v9 == 2)
      {
        v129 = *(a2 - 2);
        v130 = *a1;
        if (*(v129 + 24) < *(*a1 + 24))
        {
          *a1 = v129;
          *(a2 - 2) = v130;
          v131 = a1[1];
          a1[1] = *(a2 - 1);
          *(a2 - 1) = v131;
        }

        return;
      }
    }

    if (v9 <= 23)
    {
      break;
    }

    if (!a3)
    {
      if (a1 == a2)
      {
        return;
      }

      v154 = v10 >> 1;
      v155 = v10 >> 1;
      do
      {
        v156 = v155;
        if (v154 >= v155)
        {
          v157 = (2 * v155) | 1;
          v158 = &a1[2 * v157];
          if (2 * v156 + 2 >= v9)
          {
            v159 = *v158;
          }

          else
          {
            v159 = *v158;
            if (*(*v158 + 24) < *(v158[2] + 24))
            {
              v159 = v158[2];
              v158 += 2;
              v157 = 2 * v156 + 2;
            }
          }

          v160 = &a1[2 * v156];
          v161 = *v160;
          if (*(v159 + 24) >= *(*v160 + 24))
          {
            v162 = v160[1];
            *v160 = 0;
            v160[1] = 0;
            v163 = *v158;
            do
            {
              v164 = v158;
              v165 = v158[1];
              *v164 = 0;
              v164[1] = 0;
              v166 = v160[1];
              *v160 = v163;
              v160[1] = v165;
              if (v166)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v166);
              }

              if (v154 < v157)
              {
                break;
              }

              v158 = &a1[2 * ((2 * v157) | 1)];
              if (2 * v157 + 2 >= v9)
              {
                v163 = *v158;
                v157 = (2 * v157) | 1;
              }

              else
              {
                v163 = *v158;
                if (*(*v158 + 24) >= *(v158[2] + 24))
                {
                  v157 = (2 * v157) | 1;
                }

                else
                {
                  v163 = v158[2];
                  v158 += 2;
                  v157 = 2 * v157 + 2;
                }
              }

              v160 = v164;
            }

            while (*(v163 + 24) >= *(v161 + 24));
            v167 = v164[1];
            *v164 = v161;
            v164[1] = v162;
            if (v167)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v167);
            }
          }
        }

        v155 = v156 - 1;
      }

      while (v156);
      while (2)
      {
        v168 = 0;
        v169 = a2;
        v171 = *a1;
        v170 = a1[1];
        *a1 = 0;
        a1[1] = 0;
        v172 = a1;
        do
        {
          v173 = &v172[2 * v168];
          v174 = v173 + 2;
          if (2 * v168 + 2 >= v9)
          {
            v175 = *v174;
            v168 = (2 * v168) | 1;
          }

          else
          {
            v177 = v173[4];
            v176 = v173 + 4;
            v175 = v177;
            v178 = *(*(v176 - 2) + 24);
            v179 = *(v177 + 24);
            if (v178 < v179)
            {
              v174 = v176;
            }

            else
            {
              v175 = *(v176 - 2);
            }

            if (v178 >= v179)
            {
              v168 = (2 * v168) | 1;
            }

            else
            {
              v168 = 2 * v168 + 2;
            }
          }

          v180 = v174[1];
          *v174 = 0;
          v174[1] = 0;
          v181 = v172[1];
          *v172 = v175;
          v172[1] = v180;
          if (v181)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v181);
          }

          v172 = v174;
        }

        while (v168 <= ((v9 - 2) >> 1));
        a2 -= 2;
        if (v174 == v169 - 2)
        {
          v196 = v174[1];
          *v174 = v171;
          v174[1] = v170;
          if (!v196)
          {
            goto LABEL_200;
          }
        }

        else
        {
          v182 = *(v169 - 1);
          *a2 = 0;
          *(v169 - 1) = 0;
          v183 = v174[1];
          *v174 = v182;
          if (v183)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v183);
          }

          v184 = *(v169 - 1);
          *(v169 - 2) = v171;
          *(v169 - 1) = v170;
          if (v184)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v184);
          }

          v185 = ((v174 + 2) - a1) >> 4;
          v186 = v185 < 2;
          v187 = v185 - 2;
          if (v186)
          {
            goto LABEL_200;
          }

          v188 = v187 >> 1;
          v189 = &a1[2 * (v187 >> 1)];
          v190 = *v174;
          if (*(*v189 + 24) >= *(*v174 + 24))
          {
            goto LABEL_200;
          }

          v191 = v174[1];
          *v174 = 0;
          v174[1] = 0;
          v192 = *v189;
          do
          {
            v193 = v189;
            v194 = v189[1];
            *v193 = 0;
            v193[1] = 0;
            v195 = v174[1];
            *v174 = v192;
            v174[1] = v194;
            if (v195)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v195);
            }

            if (!v188)
            {
              break;
            }

            v188 = (v188 - 1) >> 1;
            v189 = &a1[2 * v188];
            v192 = *v189;
            v174 = v193;
          }

          while (*(*v189 + 24) < *(v190 + 24));
          v196 = v193[1];
          *v193 = v190;
          v193[1] = v191;
          if (!v196)
          {
LABEL_200:
            v186 = v9-- <= 2;
            if (v186)
            {
              return;
            }

            continue;
          }
        }

        break;
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v196);
      goto LABEL_200;
    }

    v11 = &a1[2 * (v9 >> 1)];
    v12 = v11;
    v13 = *(a2 - 2);
    v14 = *(v13 + 24);
    if (v9 >= 0x81)
    {
      v15 = *v11;
      v16 = *(*v11 + 24);
      v17 = *a1;
      v18 = *(*a1 + 24);
      if (v16 >= v18)
      {
        if (v14 < v16)
        {
          *v11 = v13;
          *(a2 - 2) = v15;
          v25 = v11 + 1;
          v26 = v11[1];
          v11[1] = *(a2 - 1);
          *(a2 - 1) = v26;
          v27 = *a1;
          if (*(*v11 + 24) < *(*a1 + 24))
          {
            *a1 = *v11;
            v19 = a1 + 1;
            *v11 = v27;
            goto LABEL_27;
          }
        }
      }

      else
      {
        if (v14 < v16)
        {
          v19 = a1 + 1;
          *a1 = v13;
          goto LABEL_26;
        }

        v19 = v11 + 1;
        v31 = v11[1];
        v32 = a1[1];
        *a1 = v15;
        a1[1] = v31;
        *v11 = v17;
        v11[1] = v32;
        v33 = *(a2 - 2);
        if (*(v33 + 24) < v18)
        {
          *v11 = v33;
LABEL_26:
          *(a2 - 2) = v17;
          v25 = a2 - 1;
LABEL_27:
          v34 = *v19;
          *v19 = *v25;
          *v25 = v34;
        }
      }

      v35 = v11 - 2;
      v36 = *(v11 - 2);
      v37 = *(v36 + 24);
      v38 = a1[2];
      v39 = *(v38 + 24);
      v40 = *(a2 - 4);
      v41 = *(v40 + 24);
      if (v37 >= v39)
      {
        if (v41 < v37)
        {
          *v35 = v40;
          *(a2 - 4) = v36;
          v43 = v11 - 1;
          v44 = *(v11 - 1);
          *(v11 - 1) = *(a2 - 3);
          *(a2 - 3) = v44;
          v45 = a1[2];
          if (*(*v35 + 24) < *(v45 + 24))
          {
            a1[2] = *v35;
            *v35 = v45;
            v42 = a1 + 3;
            goto LABEL_40;
          }
        }
      }

      else
      {
        if (v41 < v37)
        {
          v42 = a1 + 3;
          a1[2] = v40;
          goto LABEL_39;
        }

        v42 = v11 - 1;
        v49 = *(v11 - 1);
        v50 = a1[3];
        a1[2] = v36;
        a1[3] = v49;
        *v35 = v38;
        *(v11 - 1) = v50;
        v51 = *(a2 - 4);
        if (*(v51 + 24) < v39)
        {
          *v35 = v51;
LABEL_39:
          *(a2 - 4) = v38;
          v43 = a2 - 3;
LABEL_40:
          v52 = *v42;
          *v42 = *v43;
          *v43 = v52;
        }
      }

      v55 = v11[2];
      v53 = v11 + 2;
      v54 = v55;
      v56 = *(v55 + 24);
      v57 = a1[4];
      v58 = *(v57 + 24);
      v59 = *(a2 - 6);
      v60 = *(v59 + 24);
      if (v56 >= v58)
      {
        if (v60 < v56)
        {
          *v53 = v59;
          *(a2 - 6) = v54;
          v63 = v53 + 1;
          v62 = v53[1];
          v53[1] = *(a2 - 5);
          *(a2 - 5) = v62;
          v54 = *v53;
          v64 = a1[4];
          if (*(*v53 + 24) < *(v64 + 24))
          {
            a1[4] = v54;
            *v53 = v64;
            v61 = a1 + 5;
            goto LABEL_50;
          }
        }
      }

      else
      {
        if (v60 < v56)
        {
          v61 = a1 + 5;
          a1[4] = v59;
          goto LABEL_49;
        }

        v61 = v53 + 1;
        v65 = v53[1];
        v66 = a1[5];
        a1[4] = v54;
        a1[5] = v65;
        *v53 = v57;
        v53[1] = v66;
        v67 = *(a2 - 6);
        if (*(v67 + 24) >= v58)
        {
          v54 = v57;
        }

        else
        {
          *v53 = v67;
LABEL_49:
          *(a2 - 6) = v57;
          v63 = a2 - 5;
LABEL_50:
          v68 = *v61;
          *v61 = *v63;
          *v63 = v68;
          v54 = *v53;
        }
      }

      v69 = *v12;
      v70 = *(*v12 + 24);
      v71 = *v35;
      v72 = *(*v35 + 24);
      v73 = *(v54 + 24);
      if (v70 >= v72)
      {
        if (v73 < v70)
        {
          v76 = v12 + 1;
          v77 = v12[1];
          *v12 = v54;
          v12[1] = v53[1];
          *v53 = v69;
          v53[1] = v77;
          if (v73 < v72)
          {
            *v35 = v54;
            v74 = v35 + 1;
            *v12 = v71;
            goto LABEL_60;
          }

          v69 = v54;
        }
      }

      else
      {
        if (v73 < v70)
        {
          *v35 = v54;
          v74 = v35 + 1;
          *v53 = v71;
          v75 = v53 + 1;
          goto LABEL_59;
        }

        v78 = v12[1];
        *v12 = v71;
        v79 = v35[1];
        *v35 = v69;
        v35[1] = v78;
        v12[1] = v79;
        if (v73 >= v72)
        {
          v69 = v71;
        }

        else
        {
          *v12 = v54;
          *v53 = v71;
          v75 = v53 + 1;
          v74 = v12 + 1;
LABEL_59:
          v76 = v75;
LABEL_60:
          v80 = *v74;
          *v74 = *v76;
          *v76 = v80;
          v69 = *v12;
        }
      }

      v81 = *a1;
      *a1 = v69;
      v24 = a1 + 1;
      *v12 = v81;
      v30 = v12 + 1;
      goto LABEL_62;
    }

    v20 = *a1;
    v21 = *(*a1 + 24);
    v22 = *v11;
    v23 = *(*v11 + 24);
    if (v21 >= v23)
    {
      if (v14 >= v21)
      {
        goto LABEL_63;
      }

      *a1 = v13;
      *(a2 - 2) = v20;
      v28 = a1[1];
      a1[1] = *(a2 - 1);
      *(a2 - 1) = v28;
      v29 = *v12;
      if (*(*a1 + 24) >= *(*v12 + 24))
      {
        goto LABEL_63;
      }

      *v12 = *a1;
      *a1 = v29;
      v24 = v12 + 1;
      v30 = a1 + 1;
    }

    else
    {
      if (v14 >= v21)
      {
        v24 = a1 + 1;
        v46 = a1[1];
        v47 = v12[1];
        *v12 = v20;
        v12[1] = v46;
        *a1 = v22;
        a1[1] = v47;
        v48 = *(a2 - 2);
        if (*(v48 + 24) >= v23)
        {
          goto LABEL_63;
        }

        *a1 = v48;
      }

      else
      {
        v24 = v11 + 1;
        *v12 = v13;
      }

      *(a2 - 2) = v22;
      v30 = a2 - 1;
    }

LABEL_62:
    v82 = *v24;
    *v24 = *v30;
    *v30 = v82;
LABEL_63:
    --a3;
    v83 = *a1;
    if ((a4 & 1) != 0 || *(*(a1 - 2) + 24) < *(v83 + 24))
    {
      v84 = 0;
      v85 = a1[1];
      *a1 = 0;
      a1[1] = 0;
      v86 = *(v83 + 24);
      do
      {
        v87 = a1[v84 + 2];
        v84 += 2;
      }

      while (*(v87 + 24) < v86);
      v88 = &a1[v84];
      v89 = a2;
      if (v84 == 2)
      {
        v89 = a2;
        do
        {
          if (v88 >= v89)
          {
            break;
          }

          v91 = *(v89 - 2);
          v89 -= 2;
        }

        while (*(v91 + 24) >= v86);
      }

      else
      {
        do
        {
          v90 = *(v89 - 2);
          v89 -= 2;
        }

        while (*(v90 + 24) >= v86);
      }

      if (v88 >= v89)
      {
        v8 = &a1[v84];
      }

      else
      {
        v92 = *v89;
        v8 = &a1[v84];
        v93 = v89;
        do
        {
          *v8 = v92;
          *v93 = v87;
          v94 = v8[1];
          v8[1] = v93[1];
          v93[1] = v94;
          do
          {
            v95 = v8[2];
            v8 += 2;
            v87 = v95;
          }

          while (*(v95 + 24) < v86);
          do
          {
            v96 = *(v93 - 2);
            v93 -= 2;
            v92 = v96;
          }

          while (*(v96 + 24) >= v86);
        }

        while (v8 < v93);
      }

      v97 = v8 - 2;
      if (v8 - 2 != a1)
      {
        v98 = *v97;
        *v97 = 0;
        *(v8 - 1) = 0;
        v99 = a1[1];
        *a1 = v98;
        if (v99)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v99);
        }
      }

      v100 = *(v8 - 1);
      *(v8 - 2) = v83;
      *(v8 - 1) = v85;
      if (v100)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v100);
      }

      if (v88 < v89)
      {
        goto LABEL_89;
      }

      v101 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,CSCallFrameInfo::ParseCFIForTask::$_0 &,std::shared_ptr<CSCallFrameInfoForBinary> *>(a1, v8 - 2);
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,CSCallFrameInfo::ParseCFIForTask::$_0 &,std::shared_ptr<CSCallFrameInfoForBinary> *>(v8, a2))
      {
        a2 = v8 - 2;
        if (v101)
        {
          return;
        }

        goto LABEL_1;
      }

      if (!v101)
      {
LABEL_89:
        std::__introsort<std::_ClassicAlgPolicy,CSCallFrameInfo::ParseCFIForTask::$_0 &,std::shared_ptr<CSCallFrameInfoForBinary> *,false>(a1, v8 - 2, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v102 = a1[1];
      *a1 = 0;
      a1[1] = 0;
      v103 = *(v83 + 24);
      if (v103 >= *(*(a2 - 2) + 24))
      {
        v105 = a1 + 2;
        do
        {
          v8 = v105;
          if (v105 >= a2)
          {
            break;
          }

          v105 += 2;
        }

        while (v103 >= *(*v8 + 24));
      }

      else
      {
        v8 = a1;
        do
        {
          v104 = v8[2];
          v8 += 2;
        }

        while (v103 >= *(v104 + 24));
      }

      v106 = a2;
      if (v8 < a2)
      {
        v106 = a2;
        do
        {
          v107 = *(v106 - 2);
          v106 -= 2;
        }

        while (v103 < *(v107 + 24));
      }

      if (v8 < v106)
      {
        v108 = *v8;
        v109 = *v106;
        do
        {
          *v8 = v109;
          *v106 = v108;
          v110 = v8[1];
          v8[1] = v106[1];
          v106[1] = v110;
          do
          {
            v111 = v8[2];
            v8 += 2;
            v108 = v111;
          }

          while (v103 >= *(v111 + 24));
          do
          {
            v112 = *(v106 - 2);
            v106 -= 2;
            v109 = v112;
          }

          while (v103 < *(v112 + 24));
        }

        while (v8 < v106);
      }

      v113 = v8 - 2;
      if (v8 - 2 != a1)
      {
        v114 = *v113;
        *v113 = 0;
        *(v8 - 1) = 0;
        v115 = a1[1];
        *a1 = v114;
        if (v115)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v115);
        }
      }

      a4 = 0;
      v116 = *(v8 - 1);
      *(v8 - 2) = v83;
      *(v8 - 1) = v102;
      if (v116)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v116);
        a4 = 0;
      }
    }
  }

  v139 = a1 + 2;
  v141 = a1 == a2 || v139 == a2;
  if (a4)
  {
    if (!v141)
    {
      v142 = 0;
      v143 = a1;
      do
      {
        v144 = v143;
        v143 = v139;
        v145 = v144[2];
        v146 = *v144;
        if (*(v145 + 24) < *(*v144 + 24))
        {
          v147 = v144[3];
          v148 = v142;
          *v143 = 0;
          v143[1] = 0;
          while (1)
          {
            v149 = (a1 + v148);
            v150 = *(a1 + v148 + 8);
            *v149 = 0;
            v149[1] = 0;
            v151 = *(a1 + v148 + 24);
            v149[2] = v146;
            v149[3] = v150;
            if (v151)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v151);
            }

            if (!v148)
            {
              break;
            }

            v146 = *(a1 + v148 - 16);
            v148 -= 16;
            if (*(v145 + 24) >= *(v146 + 24))
            {
              v152 = (a1 + v148 + 16);
              goto LABEL_146;
            }
          }

          v152 = a1;
LABEL_146:
          v153 = v152[1];
          *v152 = v145;
          v152[1] = v147;
          if (v153)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v153);
          }
        }

        v139 = v143 + 2;
        v142 += 16;
      }

      while (v143 + 2 != a2);
    }
  }

  else if (!v141)
  {
    v200 = (a1 + 3);
    do
    {
      v201 = a1;
      a1 = v139;
      v202 = v201[2];
      v203 = *v201;
      if (v202[1].__vftable < *(*v201 + 24))
      {
        v204 = v201[3];
        v205 = v200;
        *a1 = 0;
        a1[1] = 0;
        do
        {
          v206 = *(v205 - 2);
          *(v205 - 3) = 0;
          *(v205 - 2) = 0;
          v207 = *v205;
          *(v205 - 1) = v203;
          *v205 = v206;
          if (v207)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v207);
          }

          v203 = *(v205 - 5);
          v205 -= 2;
        }

        while (v202[1].__vftable < v203[1].__vftable);
        v208 = *v205;
        *(v205 - 1) = v202;
        *v205 = v204;
        if (v208)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v208);
        }
      }

      v139 = a1 + 2;
      v200 += 2;
    }

    while (a1 + 2 != a2);
  }
}

uint64_t *std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,CSCallFrameInfo::ParseCFIForTask(unsigned int)::$_0 &,std::shared_ptr<CSCallFrameInfoForBinary> *,0>(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *a2;
  v5 = *(*a2 + 24);
  v6 = *result;
  v7 = *a3;
  v8 = *(*a3 + 24);
  if (v5 >= *(*result + 24))
  {
    if (v8 < v5)
    {
      *a2 = v7;
      *a3 = v4;
      v11 = a2 + 1;
      v10 = a2[1];
      a2[1] = a3[1];
      a3[1] = v10;
      v12 = *result;
      if (*(*a2 + 24) < *(*result + 24))
      {
        *result = *a2;
        v9 = result + 1;
        *a2 = v12;
LABEL_10:
        v14 = *v9;
        *v9 = *v11;
        *v11 = v14;
      }
    }
  }

  else
  {
    if (v8 < v5)
    {
      v9 = result + 1;
      *result = v7;
LABEL_9:
      *a3 = v6;
      v11 = a3 + 1;
      goto LABEL_10;
    }

    *result = v4;
    *a2 = v6;
    v9 = a2 + 1;
    v13 = result[1];
    result[1] = a2[1];
    a2[1] = v13;
    v6 = *a2;
    if (*(*a3 + 24) < *(*a2 + 24))
    {
      *a2 = *a3;
      goto LABEL_9;
    }
  }

  v15 = *a3;
  if (*(*a4 + 24) < *(*a3 + 24))
  {
    *a3 = *a4;
    *a4 = v15;
    v16 = a3[1];
    a3[1] = a4[1];
    a4[1] = v16;
    v17 = *a2;
    if (*(*a3 + 24) < *(*a2 + 24))
    {
      *a2 = *a3;
      *a3 = v17;
      v18 = a2[1];
      a2[1] = a3[1];
      a3[1] = v18;
      v19 = *result;
      if (*(*a2 + 24) < *(*result + 24))
      {
        *result = *a2;
        *a2 = v19;
        v20 = result[1];
        result[1] = a2[1];
        a2[1] = v20;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,CSCallFrameInfo::ParseCFIForTask(unsigned int)::$_0 &,std::shared_ptr<CSCallFrameInfoForBinary> *>(uint64_t *a1, uint64_t *a2)
{
  v4 = (a2 - a1) >> 4;
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      v20 = a1[2];
      v21 = *(v20 + 24);
      v22 = *a1;
      v23 = *(*a1 + 24);
      v24 = *(a2 - 2);
      v25 = *(v24 + 24);
      if (v21 >= v23)
      {
        if (v25 >= v21)
        {
          return 1;
        }

        a1[2] = v24;
        *(a2 - 2) = v20;
        v36 = a1 + 3;
        v35 = a1[3];
        a1[3] = *(a2 - 1);
        *(a2 - 1) = v35;
        v37 = a1[2];
        v38 = *a1;
        if (*(v37 + 24) >= *(*a1 + 24))
        {
          return 1;
        }

        *a1 = v37;
        a1[2] = v38;
        v26 = a1 + 1;
      }

      else
      {
        if (v25 >= v21)
        {
          v26 = a1 + 3;
          v42 = a1[3];
          v43 = a1[1];
          *a1 = v20;
          a1[1] = v42;
          a1[2] = v22;
          a1[3] = v43;
          v44 = *(a2 - 2);
          if (*(v44 + 24) >= v23)
          {
            return 1;
          }

          a1[2] = v44;
        }

        else
        {
          v26 = a1 + 1;
          *a1 = v24;
        }

        *(a2 - 2) = v22;
        v36 = a2 - 1;
      }

      v45 = *v26;
      *v26 = *v36;
      *v36 = v45;
      return 1;
    }

    if (v4 != 4)
    {
      if (v4 == 5)
      {
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,CSCallFrameInfo::ParseCFIForTask::$_0 &,std::shared_ptr<CSCallFrameInfoForBinary> *,0>(a1, a1 + 2, a1 + 4, a1 + 6);
        v8 = *(a2 - 2);
        v9 = a1[6];
        if (*(v8 + 24) < *(v9 + 24))
        {
          a1[6] = v8;
          *(a2 - 2) = v9;
          v10 = a1[7];
          a1[7] = *(a2 - 1);
          *(a2 - 1) = v10;
          v11 = a1[6];
          v12 = *(v11 + 24);
          v13 = a1[4];
          if (v12 < *(v13 + 24))
          {
            v14 = a1[5];
            v15 = a1[7];
            a1[4] = v11;
            a1[5] = v15;
            a1[6] = v13;
            a1[7] = v14;
            v16 = a1[2];
            if (v12 < *(v16 + 24))
            {
              v17 = a1[3];
              a1[2] = v11;
              a1[3] = v15;
              a1[4] = v16;
              a1[5] = v17;
              v18 = *a1;
              if (v12 < *(*a1 + 24))
              {
                v19 = a1[1];
                *a1 = v11;
                a1[1] = v15;
                a1[2] = v18;
                a1[3] = v19;
              }
            }
          }
        }

        return 1;
      }

      goto LABEL_17;
    }

    std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,CSCallFrameInfo::ParseCFIForTask::$_0 &,std::shared_ptr<CSCallFrameInfoForBinary> *,0>(a1, a1 + 2, a1 + 4, a2 - 2);
    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = *(a2 - 2);
    v6 = *a1;
    if (*(v5 + 24) < *(*a1 + 24))
    {
      *a1 = v5;
      *(a2 - 2) = v6;
      v7 = a1[1];
      a1[1] = *(a2 - 1);
      *(a2 - 1) = v7;
    }

    return 1;
  }

LABEL_17:
  v27 = a1 + 4;
  v28 = a1[4];
  v29 = a1[2];
  v30 = *(v29 + 24);
  v31 = *a1;
  v32 = *(*a1 + 24);
  v33 = *(v28 + 24);
  if (v30 < v32)
  {
    if (v33 >= v30)
    {
      v34 = a1 + 3;
      v46 = a1[3];
      v47 = a1[1];
      *a1 = v29;
      a1[1] = v46;
      a1[2] = v31;
      a1[3] = v47;
      if (v33 >= v32)
      {
        goto LABEL_35;
      }

      a1[2] = v28;
    }

    else
    {
      v34 = a1 + 1;
      *a1 = v28;
    }

    a1[4] = v31;
    v40 = a1 + 5;
    goto LABEL_34;
  }

  if (v33 < v30)
  {
    v40 = a1 + 3;
    v39 = a1[3];
    v41 = a1[5];
    a1[2] = v28;
    a1[3] = v41;
    a1[4] = v29;
    a1[5] = v39;
    if (v33 < v32)
    {
      *a1 = v28;
      a1[2] = v31;
      v34 = a1 + 1;
LABEL_34:
      v48 = *v34;
      *v34 = *v40;
      *v40 = v48;
    }
  }

LABEL_35:
  v49 = a1 + 6;
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v50 = 0;
  v51 = 0;
  while (1)
  {
    v52 = *v49;
    v53 = *v27;
    if (*(*v49 + 24) < *(v53 + 24))
    {
      v54 = v49[1];
      v55 = v50;
      *v49 = 0;
      v49[1] = 0;
      while (1)
      {
        v56 = (a1 + v55);
        v57 = *(a1 + v55 + 40);
        v56[4] = 0;
        v56[5] = 0;
        v58 = *(a1 + v55 + 56);
        v56[6] = v53;
        v56[7] = v57;
        if (v58)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v58);
        }

        if (v55 == -32)
        {
          break;
        }

        v53 = *(a1 + v55 + 16);
        v55 -= 16;
        if (*(v52 + 24) >= *(v53 + 24))
        {
          v59 = (a1 + v55 + 48);
          goto LABEL_45;
        }
      }

      v59 = a1;
LABEL_45:
      v60 = v59[1];
      *v59 = v52;
      v59[1] = v54;
      if (v60)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v60);
      }

      if (++v51 == 8)
      {
        return v49 + 2 == a2;
      }
    }

    v27 = v49;
    v50 += 16;
    v49 += 2;
    if (v49 == a2)
    {
      return 1;
    }
  }
}

void CFIIterator<SizeAndEndianness<Pointer64,LittleEndian>>::process_failed_header(uint64_t a1, const char *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 16);
    v5 = "NULL";
    if (a2)
    {
      v5 = a2;
    }

    v7[0] = 67109378;
    v7[1] = v4;
    v8 = 2080;
    v9 = v5;
    _os_log_impl(&dword_1D96E9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "pid %d Failure reading CFI info at %s\n", v7, 0x12u);
  }

  v6 = *MEMORY[0x1E69E9840];
}

uint64_t CreateCallFrameInfoForBinary<SizeAndEndianness<Pointer64,LittleEndian>>(uint64_t a1, uint64_t a2)
{
  v3 = (*(**(a2 + 8) + 16))(*(a2 + 8));
  result = TMachOHeader<SizeAndEndianness<Pointer64,LittleEndian>>::segment_named(*(a2 + 24), "__TEXT");
  if (result)
  {
    v5 = result;
    result = TSegmentLoadCommand<SizeAndEndianness<Pointer64,LittleEndian>>::section_named(result, "__eh_frame");
    if (result)
    {
      v6 = *(result + 40);
      if (v6)
      {
        if (v3)
        {
          v7 = *(a2 + 32);
          v8 = v7 + *(result + 32);
          v9 = 24;
        }

        else
        {
          v7 = *(a2 + 16);
          v8 = v7 + *(result + 48);
          v9 = 40;
        }

        v10 = v7 + *(v5 + v9);
        v20 = v8;
        v21 = v6;
        v11 = *(v5 + 48);
        v18 = v10;
        v19 = v11;
        result = (*(**(a2 + 8) + 32))(*(a2 + 8));
        v17 = result;
        if (result)
        {
          Current = CSArchitectureGetCurrent();
          IsLittleEndian = CSArchitectureIsLittleEndian(Current);
          v16 = IsLittleEndian ^ CSArchitectureIsLittleEndian(*(*(a2 + 24) + 4) | ((*(*(a2 + 24) + 8) & 0xFFFFFF) << 32));
          v15 = CSArchitectureIs32Bit(*(*(a2 + 24) + 4) | ((*(*(a2 + 24) + 8) & 0xFFFFFF) << 32));
          v14 = *(a2 + 48);
          std::allocate_shared[abi:ne200100]<CSCallFrameInfoForBinary,std::allocator<CSCallFrameInfoForBinary>,char const*,_CSRange &,_CSRange &,unsigned char const*&,BOOL &,BOOL &,0>();
        }
      }
    }
  }

  return result;
}

void sub_1D97A8B20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<CSCallFrameInfoForBinary>::__shared_ptr_emplace[abi:ne200100]<char const*,_CSRange &,_CSRange &,unsigned char const*&,BOOL &,BOOL &,std::allocator<CSCallFrameInfoForBinary>,0>(void *a1, char **a2, _OWORD *a3, uint64_t a4, unsigned __int8 **a5, char *a6, unsigned __int8 *a7)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F5508530;
  CSCallFrameInfoForBinary::CSCallFrameInfoForBinary((a1 + 3), *a2, a3, a4, *a5, *a6, *a7);
  return a1;
}

void std::__shared_ptr_emplace<CSCallFrameInfoForBinary>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5508530;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1DA736760);
}

uint64_t CSCallFrameInfoForBinary::CSCallFrameInfoForBinary(uint64_t a1, char *a2, _OWORD *a3, uint64_t a4, unsigned __int8 *a5, char a6, int a7)
{
  v13 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  *(v13 + 24) = *a3;
  *(v13 + 40) = *a4;
  CSBinaryDataRef::CSBinaryDataRef((v13 + 56));
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 120) = 0;
  *(a1 + 112) = a1 + 120;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  v14 = CSRangeOfDyldSharedCacheInCurrentProcess();
  v15 = *(a4 + 8);
  if (&a5[-v14] >= v16)
  {
    std::vector<unsigned char>::reserve((a1 + 80), *(a4 + 8));
    std::__copy_impl::operator()[abi:ne200100]<unsigned char const*,unsigned char const*,std::back_insert_iterator<std::vector<unsigned char>>>(&v19, a5, &a5[*(a4 + 8)], a1 + 80);
    a5 = *(a1 + 80);
    v15 = *(a1 + 88) - a5;
  }

  CSBinaryDataRef::SetData((a1 + 56), a5, v15);
  *(a1 + 72) = a6;
  if (a7)
  {
    v17 = 4;
  }

  else
  {
    v17 = 8;
  }

  *(a1 + 73) = v17;
  return a1;
}

void sub_1D97A8DD4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<unsigned char>::reserve(void *result, unint64_t a2)
{
  if (result[2] - *result < a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v2 = result[1] - *result;
      operator new();
    }

    std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

_BYTE *std::__copy_impl::operator()[abi:ne200100]<unsigned char const*,unsigned char const*,std::back_insert_iterator<std::vector<unsigned char>>>(uint64_t a1, _BYTE *a2, _BYTE *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    v7 = *(a4 + 8);
    do
    {
      v8 = *(a4 + 16);
      if (v7 >= v8)
      {
        v9 = *a4;
        v10 = &v7[-*a4];
        v11 = (v10 + 1);
        if ((v10 + 1) < 0)
        {
          std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
        }

        v12 = v8 - v9;
        if (2 * v12 > v11)
        {
          v11 = 2 * v12;
        }

        if (v12 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v13 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v13 = v11;
        }

        if (v13)
        {
          operator new();
        }

        v14 = &v7[-*a4];
        *v10 = *v5;
        v7 = v10 + 1;
        memcpy(0, v9, v14);
        *a4 = 0;
        *(a4 + 8) = v10 + 1;
        *(a4 + 16) = 0;
        if (v9)
        {
          operator delete(v9);
        }
      }

      else
      {
        *v7++ = *v5;
      }

      *(a4 + 8) = v7;
      ++v5;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void CSCallFrameInfoForBinary::~CSCallFrameInfoForBinary(CSCallFrameInfoForBinary *this)
{
  v2 = *(this + 17);
  if (v2)
  {
    *(this + 18) = v2;
    operator delete(v2);
  }

  std::__tree<TRange<Pointer64>>::destroy(this + 112, *(this + 15));
  v3 = *(this + 10);
  if (v3)
  {
    *(this + 11) = v3;
    operator delete(v3);
  }

  CSCppAddressSet::sort((this + 56));
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void CFIIterator<SizeAndEndianness<Pointer32,LittleEndian>>::process_failed_header(uint64_t a1, const char *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 16);
    v5 = "NULL";
    if (a2)
    {
      v5 = a2;
    }

    v7[0] = 67109378;
    v7[1] = v4;
    v8 = 2080;
    v9 = v5;
    _os_log_impl(&dword_1D96E9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "pid %d Failure reading CFI info at %s\n", v7, 0x12u);
  }

  v6 = *MEMORY[0x1E69E9840];
}

_DWORD *CreateCallFrameInfoForBinary<SizeAndEndianness<Pointer32,LittleEndian>>(uint64_t a1, uint64_t a2)
{
  v3 = (*(**(a2 + 8) + 16))(*(a2 + 8));
  result = TMachOHeader<SizeAndEndianness<Pointer32,LittleEndian>>::segment_named(*(a2 + 24), "__TEXT");
  if (result)
  {
    v5 = result;
    result = TSegmentLoadCommand<SizeAndEndianness<Pointer32,LittleEndian>>::section_named(result, "__eh_frame");
    if (result)
    {
      v6 = result[9];
      if (v6)
      {
        if (v3)
        {
          v7 = *(a2 + 32);
          v8 = v7 + result[8];
          v9 = 6;
        }

        else
        {
          v7 = *(a2 + 16);
          v8 = v7 + result[10];
          v9 = 8;
        }

        v10 = v5[v9];
        v20 = v8;
        v21 = v6;
        v11 = v5[9];
        v18 = (v7 + v10);
        v19 = v11;
        result = (*(**(a2 + 8) + 32))(*(a2 + 8));
        v17 = result;
        if (result)
        {
          Current = CSArchitectureGetCurrent();
          IsLittleEndian = CSArchitectureIsLittleEndian(Current);
          v16 = IsLittleEndian ^ CSArchitectureIsLittleEndian(*(*(a2 + 24) + 4) | ((*(*(a2 + 24) + 8) & 0xFFFFFF) << 32));
          v15 = CSArchitectureIs32Bit(*(*(a2 + 24) + 4) | ((*(*(a2 + 24) + 8) & 0xFFFFFF) << 32));
          v14 = *(a2 + 40);
          std::allocate_shared[abi:ne200100]<CSCallFrameInfoForBinary,std::allocator<CSCallFrameInfoForBinary>,char const*,_CSRange &,_CSRange &,unsigned char const*&,BOOL &,BOOL &,0>();
        }
      }
    }
  }

  return result;
}

void sub_1D97A92F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void *CSCppCoreFileMemory::CSCppCoreFileMemory(void *a1, uint64_t a2)
{
  *a1 = &unk_1F55085D0;
  a1[1] = retain_mapped_memory_cache(a2);
  a1[2] = 0;
  return a1;
}

void CSCppCoreFileMemory::~CSCppCoreFileMemory(CSCppCoreFileMemory *this)
{
  *this = &unk_1F55085D0;
  release_core_file_mapped_memory_cache(*(this + 1));
}

{
  CSCppCoreFileMemory::~CSCppCoreFileMemory(this);

  JUMPOUT(0x1DA736760);
}

uint64_t CSCppCoreFileMemory::bytes_at(uint64_t a1, tree *a2, uint64_t a3)
{
  v7 = 0;
  v5 = mapped_memory_read(*(a1 + 8), a2, a3, &v7);
  result = 0;
  if (!v5)
  {
    *(a1 + 16) += a3;
    return v7;
  }

  return result;
}

void sub_1D97A98BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t init_sampling_context_from_symbols(sampling_context_t *a1, int a2)
{
  result = CSIsNull(*(a1 + 3), *(a1 + 4));
  if ((result & 1) == 0)
  {
    if (!*(a1 + 13) && (*(a1 + 160) & 8) == 0)
    {
      SymbolWithMangledNameFromSymbolOwnerWithNameAtTime = CSSymbolicatorGetSymbolWithMangledNameFromSymbolOwnerWithNameAtTime(*(a1 + 3), *(a1 + 4), "_dispatch_queue_offsets", "libdispatch.dylib", 0x8000000000000000);
      v7 = v6;
      result = CSIsNull(SymbolWithMangledNameFromSymbolOwnerWithNameAtTime, v6);
      if ((result & 1) == 0)
      {
        Range = CSSymbolGetRange(SymbolWithMangledNameFromSymbolOwnerWithNameAtTime, v7);
        v19 = 0;
        result = mapped_memory_read(*(a1 + 1), Range, 34, &v19);
        if (!result)
        {
          if (v19)
          {
            result = malloc_type_malloc(0x22uLL, 0x1000040A995D64BuLL);
            *(a1 + 13) = result;
            if (result)
            {
              v9 = *(v19 + 32);
              v10 = *(v19 + 16);
              *result = *v19;
              *(result + 16) = v10;
              *(result + 32) = v9;
            }
          }
        }
      }
    }

    if (a2)
    {
      if (!*(a1 + 6))
      {
        v11 = CSSymbolicatorGetSymbolWithMangledNameFromSymbolOwnerWithNameAtTime(*(a1 + 3), *(a1 + 4), "__sigtramp", "libsystem_platform.dylib", 0x8000000000000000);
        v13 = v12;
        result = CSIsNull(v11, v12);
        if ((result & 1) == 0)
        {
          result = CSSymbolGetRange(v11, v13);
          *(a1 + 5) = result;
          *(a1 + 6) = v14;
        }
      }

      if (!*(a1 + 8))
      {
        v15 = CSSymbolicatorGetSymbolWithMangledNameFromSymbolOwnerWithNameAtTime(*(a1 + 3), *(a1 + 4), "_start_wqthread", "libsystem_pthread.dylib", 0x8000000000000000);
        v17 = v16;
        result = CSIsNull(v15, v16);
        if ((result & 1) == 0)
        {
          result = CSSymbolGetRange(v15, v17);
          *(a1 + 7) = result;
          *(a1 + 8) = v18;
        }
      }
    }
  }

  return result;
}