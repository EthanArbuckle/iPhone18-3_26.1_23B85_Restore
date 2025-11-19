void sub_1D9731320(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    CSCppTextSectionDataDescriptor::_perform_partial_mapping_for_file<Pointer64>(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<CSCppDyldSplitSharedCacheMemory::CacheMemoryAndPath>::__emplace_back_slow_path<std::unique_ptr<CSCppTaskMemory>,std::string,unsigned long long &>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v5 = v4 + 1;
  if (v4 + 1 > 0x666666666666666)
  {
    std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v5)
  {
    v5 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
  {
    v8 = 0x666666666666666;
  }

  else
  {
    v8 = v5;
  }

  v24 = a1;
  if (v8)
  {
    std::allocator<CSCppDyldSplitSharedCacheMemory::CacheMemoryAndPath>::allocate_at_least[abi:ne200100](a1, v8);
  }

  v9 = 40 * v4;
  v21 = 0;
  v22 = 40 * v4;
  *(&v23 + 1) = 0;
  v10 = *a2;
  *a2 = 0;
  *&v25[7] = *(a3 + 15);
  v11 = *a3;
  *v25 = a3[1];
  v12 = *(a3 + 23);
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  v13 = *a4;
  *v9 = v10;
  *(v9 + 8) = v11;
  *(v9 + 16) = *v25;
  *(v9 + 23) = *&v25[7];
  *(v9 + 31) = v12;
  *(v9 + 32) = v13;
  *&v23 = 40 * v4 + 40;
  v14 = a1[1];
  v15 = 40 * v4 + *a1 - v14;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<CSCppDyldSplitSharedCacheMemory::CacheMemoryAndPath>,CSCppDyldSplitSharedCacheMemory::CacheMemoryAndPath*>(a1, *a1, v14, v15);
  v16 = *a1;
  *a1 = v15;
  v17 = a1[2];
  v20 = v23;
  *(a1 + 1) = v23;
  *&v23 = v16;
  *(&v23 + 1) = v17;
  v21 = v16;
  v22 = v16;
  std::__split_buffer<CSCppDyldSplitSharedCacheMemory::CacheMemoryAndPath>::~__split_buffer(&v21);
  v18 = *MEMORY[0x1E69E9840];
  return v20;
}

void sub_1D97314C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<CSCppDyldSplitSharedCacheMemory::CacheMemoryAndPath>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::vector<CSCppDyldSplitSharedCacheMemory::CacheMemoryAndPath>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 40;
        std::__destroy_at[abi:ne200100]<CSCppDyldSplitSharedCacheMemory::CacheMemoryAndPath,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t TMemoryView<SizeAndEndianness<Pointer64,LittleEndian>>::dyld_shared_cache_at(void *a1, uint64_t a2)
{
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
        return (*(**a1 + 32))(*a1, a2);
      }
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<CSCppDyldSplitSharedCacheMemory::path_and_base_address_for_ondisk_shared_cache_with_uuid(CFUUIDBytes const*)::$_0 &&>>(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v36[770] = *MEMORY[0x1E69E9840];
  {
    CSCppMachTask::CSCppMachTask(v31, *MEMORY[0x1E69E9A60], 0);
    v18 = CSCppMachTask::uses_development_dsc(v31);
    CSCppMachTask::~CSCppMachTask(v31);
    CSCppDyldSplitSharedCacheMemory::path_and_base_address_for_ondisk_shared_cache_with_uuid(CFUUIDBytes const*)::$_0::operator() const(void)::analysis_process_uses_development_dsc = v18;
  }

  v1 = CSCppDyldSplitSharedCacheMemory::path_and_base_address_for_ondisk_shared_cache_with_uuid(CFUUIDBytes const*)::$_0::operator() const(void)::analysis_process_uses_development_dsc;
  if (CSCppDyldSplitSharedCacheMemory::path_and_base_address_for_ondisk_shared_cache_with_uuid(CFUUIDBytes const*)::$_0::operator() const(void)::analysis_process_uses_development_dsc)
  {
    v2 = ".development";
  }

  else
  {
    v2 = "";
  }

  std::string::basic_string[abi:ne200100]<0>(v31, "arm64e");
  std::string::basic_string[abi:ne200100]<0>(v32, "arm64");
  std::string::basic_string[abi:ne200100]<0>(v33, "arm64_32");
  std::string::basic_string[abi:ne200100]<0>(v34, "x86_64");
  std::string::basic_string[abi:ne200100]<0>(v35, "x86_64h");
  v27 = 0;
  v28 = 0;
  v29 = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v27, v31, v36, 5uLL);
  for (i = 0; i != -120; i -= 24)
  {
    if (v35[i + 23] < 0)
    {
      operator delete(*&v35[i]);
    }
  }

  shared_cache_search_directories(&v25);
  v4 = v25;
  v19 = v26;
  if (v25 != v26)
  {
    if (v1)
    {
      v5 = 12;
    }

    else
    {
      v5 = 0;
    }

    do
    {
      *__len = *v4;
      v6 = std::string_view::find[abi:ne200100](__len, "/System/DriverKit/System/Library/dyld/", 0);
      v7 = __len[1];
      if (__len[1] >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v8 = v6;
      if (__len[1] >= 0x17)
      {
        operator new();
      }

      *(&__dst.__r_.__value_.__s + 23) = __len[1];
      if (__len[1])
      {
        memmove(&__dst, __len[0], __len[1]);
      }

      __dst.__r_.__value_.__s.__data_[v7] = 0;
      v9 = std::string::append(&__dst, "dyld_shared_cache_", 0x12uLL);
      if (SHIBYTE(v9->__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v23, v9->__r_.__value_.__l.__data_, v9->__r_.__value_.__l.__size_);
      }

      else
      {
        v10 = *&v9->__r_.__value_.__l.__data_;
        v23.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
        *&v23.__r_.__value_.__l.__data_ = v10;
      }

      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }

      v12 = v27;
      v11 = v28;
      while (v12 != v11)
      {
        memset(&__dst, 0, sizeof(__dst));
        if (v8 == -1)
        {
          std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v23.__r_.__value_.__l.__data_, v12, &v21);
          v13 = std::string::append(&v21, v2, v5);
          v14 = v13->__r_.__value_.__r.__words[0];
          v30[0] = v13->__r_.__value_.__l.__size_;
          *(v30 + 7) = *(&v13->__r_.__value_.__r.__words[1] + 7);
          v15 = HIBYTE(v13->__r_.__value_.__r.__words[2]);
          v13->__r_.__value_.__l.__size_ = 0;
          v13->__r_.__value_.__r.__words[2] = 0;
          v13->__r_.__value_.__r.__words[0] = 0;
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
          }

          __dst.__r_.__value_.__r.__words[0] = v14;
          __dst.__r_.__value_.__l.__size_ = v30[0];
          *(&__dst.__r_.__value_.__r.__words[1] + 7) = *(v30 + 7);
          *(&__dst.__r_.__value_.__s + 23) = v15;
          if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v21.__r_.__value_.__l.__data_);
          }
        }

        else
        {
          std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v23.__r_.__value_.__l.__data_, v12, &v21);
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
          }

          __dst = v21;
        }

        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_dst = &__dst;
        }

        else
        {
          p_dst = __dst.__r_.__value_.__r.__words[0];
        }

        if (!access(p_dst, 4))
        {
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&v20, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
          }

          else
          {
            v20 = __dst;
          }

          v32[0] = 0;
          operator new();
        }

        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        v12 += 3;
      }

      if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v23.__r_.__value_.__l.__data_);
      }

      v4 += 2;
    }

    while (v4 != v19);
    v4 = v25;
  }

  if (v4)
  {
    v26 = v4;
    operator delete(v4);
  }

  v25 = &v27;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v25);
  v17 = *MEMORY[0x1E69E9840];
}

void sub_1D9731B14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, void *__p, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  CSCppMachTask::~CSCppMachTask(&a47);
  _Unwind_Resume(a1);
}

uint64_t std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::string>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1D9731CBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<std::string>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::allocator<std::string>::allocate_at_least[abi:ne200100](a1, a2);
  }

  std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
}

void std::allocator<std::string>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::string>,std::string const*,std::string const*,std::string*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
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

  v10 = 1;
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

uint64_t std::__function::__func<CSCppDyldSplitSharedCacheMemory::path_and_base_address_for_ondisk_shared_cache_with_uuid(CFUUIDBytes const*)::$_0::operator() const(void)::{lambda(UUID const*,unsigned long long)#1},std::allocator<CSCppDyldSplitSharedCacheMemory::path_and_base_address_for_ondisk_shared_cache_with_uuid(CFUUIDBytes const*)::$_0::operator() const(void)::{lambda(UUID const*,unsigned long long)#1}>,void ()(UUID const*,unsigned long long)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F55054B8;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void std::__function::__func<CSCppDyldSplitSharedCacheMemory::path_and_base_address_for_ondisk_shared_cache_with_uuid(CFUUIDBytes const*)::$_0::operator() const(void)::{lambda(UUID const*,unsigned long long)#1},std::allocator<CSCppDyldSplitSharedCacheMemory::path_and_base_address_for_ondisk_shared_cache_with_uuid(CFUUIDBytes const*)::$_0::operator() const(void)::{lambda(UUID const*,unsigned long long)#1}>,void ()(UUID const*,unsigned long long)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F55054B8;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x1DA736760);
}

void std::__function::__func<CSCppDyldSplitSharedCacheMemory::path_and_base_address_for_ondisk_shared_cache_with_uuid(CFUUIDBytes const*)::$_0::operator() const(void)::{lambda(UUID const*,unsigned long long)#1},std::allocator<CSCppDyldSplitSharedCacheMemory::path_and_base_address_for_ondisk_shared_cache_with_uuid(CFUUIDBytes const*)::$_0::operator() const(void)::{lambda(UUID const*,unsigned long long)#1}>,void ()(UUID const*,unsigned long long)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1F55054B8;
  v2 = (a2 + 1);
  if (*(a1 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v2, *(a1 + 8), *(a1 + 16));
  }

  else
  {
    v3 = *(a1 + 8);
    v2->__r_.__value_.__r.__words[2] = *(a1 + 24);
    *&v2->__r_.__value_.__l.__data_ = v3;
  }
}

void std::__function::__func<CSCppDyldSplitSharedCacheMemory::path_and_base_address_for_ondisk_shared_cache_with_uuid(CFUUIDBytes const*)::$_0::operator() const(void)::{lambda(UUID const*,unsigned long long)#1},std::allocator<CSCppDyldSplitSharedCacheMemory::path_and_base_address_for_ondisk_shared_cache_with_uuid(CFUUIDBytes const*)::$_0::operator() const(void)::{lambda(UUID const*,unsigned long long)#1}>,void ()(UUID const*,unsigned long long)>::destroy(uint64_t a1)
{
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }
}

void std::__function::__func<CSCppDyldSplitSharedCacheMemory::path_and_base_address_for_ondisk_shared_cache_with_uuid(CFUUIDBytes const*)::$_0::operator() const(void)::{lambda(UUID const*,unsigned long long)#1},std::allocator<CSCppDyldSplitSharedCacheMemory::path_and_base_address_for_ondisk_shared_cache_with_uuid(CFUUIDBytes const*)::$_0::operator() const(void)::{lambda(UUID const*,unsigned long long)#1}>,void ()(UUID const*,unsigned long long)>::destroy_deallocate(void **__p)
{
  if (*(__p + 31) < 0)
  {
    operator delete(__p[1]);
  }

  operator delete(__p);
}

void std::__function::__func<CSCppDyldSplitSharedCacheMemory::path_and_base_address_for_ondisk_shared_cache_with_uuid(CFUUIDBytes const*)::$_0::operator() const(void)::{lambda(UUID const*,unsigned long long)#1},std::allocator<CSCppDyldSplitSharedCacheMemory::path_and_base_address_for_ondisk_shared_cache_with_uuid(CFUUIDBytes const*)::$_0::operator() const(void)::{lambda(UUID const*,unsigned long long)#1}>,void ()(UUID const*,unsigned long long)>::operator()(uint64_t a1, UUID **a2, uint64_t *a3)
{
  v4 = *a2;
  v5 = *a3;
  if ((UUID::is_null(*a2) & 1) == 0)
  {
    if (*(a1 + 31) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *(a1 + 8), *(a1 + 16));
    }

    else
    {
      __p = *(a1 + 8);
    }

    v7 = v5;
    std::__hash_table<std::__hash_value_type<UUID,std::pair<std::string,unsigned long long>>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,std::pair<std::string,unsigned long long>>,UUIDHashFunctor,UUIDEqualsFunctor,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,std::pair<std::string,unsigned long long>>,UUIDEqualsFunctor,UUIDHashFunctor,true>,std::allocator<std::__hash_value_type<UUID,std::pair<std::string,unsigned long long>>>>::__emplace_unique_key_args<UUID,UUID const&,std::pair<std::string,unsigned long long>>(qword_1EDADA720, v4);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void sub_1D973214C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<CSCppDyldSplitSharedCacheMemory::path_and_base_address_for_ondisk_shared_cache_with_uuid(CFUUIDBytes const*)::$_0::operator() const(void)::{lambda(UUID const*,unsigned long long)#1},std::allocator<CSCppDyldSplitSharedCacheMemory::path_and_base_address_for_ondisk_shared_cache_with_uuid(CFUUIDBytes const*)::$_0::operator() const(void)::{lambda(UUID const*,unsigned long long)#1}>,void ()(UUID const*,unsigned long long)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__hash_table<std::__hash_value_type<UUID,std::pair<std::string,unsigned long long>>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,std::pair<std::string,unsigned long long>>,UUIDHashFunctor,UUIDEqualsFunctor,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,std::pair<std::string,unsigned long long>>,UUIDEqualsFunctor,UUIDHashFunctor,true>,std::allocator<std::__hash_value_type<UUID,std::pair<std::string,unsigned long long>>>>::__emplace_unique_key_args<UUID,UUID const&,std::pair<std::string,unsigned long long>>(void *a1, void *a2)
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

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<UUID,std::pair<std::string,unsigned long long>>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
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

uint64_t std::__function::__value_func<void ()(UUID const*,unsigned long long)>::~__value_func[abi:ne200100](uint64_t a1)
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
      std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
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
      std::allocator<std::string>::allocate_at_least[abi:ne200100](a1, v11);
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

void *std::__hash_table<UUID,UUIDHashFunctor,UUIDEqualsFunctor,std::allocator<UUID>>::find<UUID>(void *a1, void *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = a2[1] ^ *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = a2[1] ^ *a2;
    if (v3 >= *&v2)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  result = *v6;
  if (*v6)
  {
    do
    {
      v8 = result[1];
      if (v3 == v8)
      {
        if (result[2] == *a2 && result[3] == a2[1])
        {
          return result;
        }
      }

      else
      {
        if (v4.u32[0] > 1uLL)
        {
          if (v8 >= *&v2)
          {
            v8 %= *&v2;
          }
        }

        else
        {
          v8 &= *&v2 - 1;
        }

        if (v8 != v5)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
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

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::vector<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::string>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::vector<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::string>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,std::vector<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::string>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<std::string>>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<std::string>>,0>(uint64_t a1)
{
  v2 = (a1 + 24);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::vector<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,std::vector<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::string>>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
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

void sub_1D9732B38(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::vector<std::string>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::vector<std::string>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::vector<std::string>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::vector<std::string>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<std::string>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::vector<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::string>>>>::find<std::string>(void *a1, const void **a2)
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

void *std::__hash_table<UUID,UUIDHashFunctor,UUIDEqualsFunctor,std::allocator<UUID>>::__emplace_unique_key_args<UUID,UUID const&>(void *a1, void *a2)
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

uint64_t std::__hash_table<UUID,UUIDHashFunctor,UUIDEqualsFunctor,std::allocator<UUID>>::__hash_table(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  v5 = a2[2];
  v3 = a2 + 2;
  v4 = v5;
  v6 = *(v3 - 1);
  *(result + 16) = v5;
  *(result + 8) = v6;
  *(v3 - 1) = 0;
  v7 = v3[1];
  *(result + 24) = v7;
  *(result + 32) = *(v3 + 4);
  if (v7)
  {
    v8 = *(v4 + 8);
    v9 = *(result + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v8 %= v9;
      }
    }

    else
    {
      v8 &= v9 - 1;
    }

    *(v2 + 8 * v8) = result + 16;
    *v3 = 0;
    v3[1] = 0;
  }

  return result;
}

char **CSCppDyldSplitSharedCacheMemory::CacheMemoryAndPath::is_task_memory(char ***this)
{
  result = *this;
  if (result)
  {
    v2 = **result;
  }

  return result;
}

uint64_t ___ZNK31CSCppDyldSplitSharedCacheMemory21for_each_shared_cacheIZNKS_24shared_cache_for_addressEmE3__0EEvT__block_invoke(uint64_t a1, CSCppDyldSharedCache *this)
{
  v4 = *(*(a1 + 32) + 8);
  result = CSCppDyldSharedCache::text_segment_range(this);
  if (*(a1 + 40) - this < v6)
  {
    **(a1 + 48) = this;
    *(v4 + 24) = 1;
  }

  return result;
}

BOOL has_minimum_source_info_attributes(void *a1)
{
  v1 = a1[1];
  if (*a1 == v1)
  {
    return 0;
  }

  v2 = *a1 + 4;
  do
  {
    v3 = *(v2 - 4);
    result = v3 == 16;
    v5 = v3 == 16 || v2 == v1;
    v2 += 4;
  }

  while (!v5);
  return result;
}

void CSCppArchitecture::CSCppArchitecture(CSCppArchitecture *this)
{
  v2 = MEMORY[0x1DA736D70]();
  host_info_outCnt = 12;
  if (!host_info(v2, 1, host_info_out, &host_info_outCnt))
  {
    v3 = v8;
    *this = v8;
    if (!HIBYTE(v3))
    {
      v5 = 0;
      v4 = 4;
      sysctlbyname("hw.cpu64bit_capable", &v5, &v4, 0, 0);
      if (v5)
      {
        *this |= 0x1000000u;
      }
    }
  }
}

uint64_t CSCppArchitecture::current_architecture(CSCppArchitecture *this)
{
  {
    CSCppArchitecture::CSCppArchitecture(&CSCppArchitecture::current_architecture(void)::arch);
  }

  return CSCppArchitecture::current_architecture(void)::arch;
}

uint64_t CSCppArchitecture::is_little_endian(CSCppArchitecture *this)
{
  v1 = *this & 0xFFFFFF;
  if (v1 == 7)
  {
    return 1;
  }

  if (v1 != 18)
  {
    if (v1 != 12)
    {
      std::ostringstream::basic_ostringstream[abi:ne200100](v10);
      v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "CSCppArchitecture: cannot answer isLittleEndian for cpu_type ", 61);
      v5 = MEMORY[0x1DA7365D0](v4, *this);
      v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, " cpuSubtype ", 12);
      MEMORY[0x1DA7365D0](v6, *(this + 1));
      std::ostringstream::str[abi:ne200100](v10, &v9);
      Exception::Exception(v8, &v9);
      exception = __cxa_allocate_exception(0x20uLL);
      Exception::Exception(exception, v8);
    }

    return 1;
  }

  return 0;
}

void sub_1D97332E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  Exception::~Exception(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a19);
  _Unwind_Resume(a1);
}

uint64_t CSCppArchitecture::is_64_bit(CSCppArchitecture *this)
{
  v1 = *(this + 3) << 24;
  if (v1)
  {
    v2 = v1 == 0x2000000;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    return 0;
  }

  if (v1 != 0x1000000)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](v11);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "CSCppArchitecture: cannot answer is64Bit for cpu_type ", 54);
    v6 = MEMORY[0x1DA7365D0](v5, *this);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, " cpuSubtype ", 12);
    MEMORY[0x1DA7365D0](v7, *(this + 1));
    std::ostringstream::str[abi:ne200100](v11, &v10);
    Exception::Exception(v9, &v10);
    exception = __cxa_allocate_exception(0x20uLL);
    Exception::Exception(exception, v9);
  }

  return 1;
}

void sub_1D9733420(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  Exception::~Exception(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a19);
  _Unwind_Resume(a1);
}

BOOL CSCppArchitecture::matches(CSCppArchitecture *a1, unint64_t a2)
{
  v2 = a2;
  if (*a1 == -1 || a2 == -1)
  {
    return 1;
  }

  v5 = HIDWORD(a2);
  is_64_bit = CSCppArchitecture::is_64_bit(a1);
  v7 = v2 == -64 ? is_64_bit : 0;
  if (v7)
  {
    return 1;
  }

  if (*a1 == -64)
  {
    v11[0] = v2;
    v11[1] = v5;
    if (CSCppArchitecture::is_64_bit(v11))
    {
      return 1;
    }
  }

  if (*a1 != v2)
  {
    return 0;
  }

  v9 = v2 & 0xFFFFFF;
  v10 = *(a1 + 1);
  if ((v2 & 0xFFFFFF) != 0x12 && v9 != 12)
  {
    if (v9 == 7)
    {
      result = 1;
      if ((v10 & 0xFFFFFF) == 3 || (v5 & 0xFFFFFF) == 3)
      {
        return result;
      }
    }

    return v10 == v5;
  }

  result = 1;
  if ((v10 & 0xFFFFFF) != 0 && (v5 & 0xFFFFFF) != 0)
  {
    return v10 == v5;
  }

  return result;
}

void sub_1D973355C(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1D97334E8);
}

BOOL CSCppArchitecture::is_wildcard_architecture(uint64_t a1)
{
  v1 = 0;
  do
  {
    v2 = qword_1D97E0800[v1];
  }

  while (v2 != a1 && v1++ != 2);
  return v2 == a1;
}

void CSCppBitLock::CSCppBitLock(uint64_t a1, atomic_uint *a2, unsigned int a3)
{
  v3 = 0;
  *a1 = a2;
  *(a1 + 8) = a3;
  atomic_compare_exchange_strong_explicit(a2, &v3, a3, memory_order_acquire, memory_order_acquire);
  if (v3)
  {
    do
    {
      v4 = *(a1 + 8);
      v5 = v3 & ~v4;
      v6 = v4 | v3;
      v3 = v5;
      atomic_compare_exchange_strong_explicit(*a1, &v3, v6, memory_order_acquire, memory_order_acquire);
    }

    while (v3 != v5);
  }
}

uint64_t **CSCppDeferredDemangler::symbolAddressesForDemangledNameImpl(CSCppDeferredDemangler *this, const char *a2)
{
  std::mutex::lock((this + 120));
  v6[0] = a2;
  v6[1] = strlen(a2);
  v4 = std::__hash_table<std::__hash_value_type<std::string_view,unsigned int>,std::__unordered_map_hasher<std::string_view,std::__hash_value_type<std::string_view,unsigned int>,std::hash<std::string_view>,std::equal_to<std::string_view>,true>,std::__unordered_map_equal<std::string_view,std::__hash_value_type<std::string_view,unsigned int>,std::equal_to<std::string_view>,std::hash<std::string_view>,true>,std::allocator<std::__hash_value_type<std::string_view,unsigned int>>>::__equal_range_multi<std::string_view>(this + 5, v6);
  std::mutex::unlock((this + 120));
  return v4;
}

const char *CSCppDeferredDemangler::demangledNameForSymbolImpl<CSCppMMapSymbol>(uint64_t a1, unint64_t a2, char *a3)
{
  std::mutex::lock((a1 + 120));
  if (!*(a1 + 256))
  {
    operator new();
  }

  v24 = a2;
  v6 = std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::find<unsigned long long>(a1, &v24);
  if (v6)
  {
    v8 = v6[3];
    v7 = v6[4];
    goto LABEL_5;
  }

  if (!a3)
  {
    v8 = 0;
    goto LABEL_5;
  }

  std::mutex::lock((a1 + 184));
  v23.__r_.__value_.__r.__words[0] = a3;
  v10 = std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::find<unsigned long long>((a1 + 80), &v23);
  if (v10)
  {
    v11 = *(v10 + 47);
    if ((v11 & 0x8000000000000000) != 0)
    {
      v8 = v10[3];
      v11 = v10[4];
    }

    else
    {
      v8 = (v10 + 3);
    }

    v23.__r_.__value_.__r.__words[0] = v8;
    v23.__r_.__value_.__l.__size_ = v11;
    if (a2)
    {
      v26[0] = a2;
      std::__hash_table<std::__hash_value_type<unsigned long,std::string_view>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::string_view>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::string_view>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::string_view>>>::__emplace_unique_key_args<unsigned long,unsigned long const&,std::string_view&>(a1, v26);
    }

    std::mutex::unlock((a1 + 184));
    goto LABEL_5;
  }

  std::mutex::unlock((a1 + 184));
  if ((*(a2 + 8) & 2) != 0)
  {
    if (!strncmp(a3, "DYLD-STUB$$", 0xBuLL))
    {
      v12 = 11;
    }

    else
    {
      v12 = 0;
    }

    a3 += v12;
  }

  v13 = DemanglingUtilities::CSCppReusableDemanglingBuffer::reusable_buffer(*(a1 + 256));
  v14 = CSCppAddressSet::sort(*(a1 + 256));
  v16 = DemanglingUtilities::demangle_with_reusable_buffer(a3, v13, v14, v15);
  v17 = v16;
  v18 = *(a2 + 8);
  if ((v18 & 0x380000) != 0 && !v16 && *a3 == 95)
  {
    v8 = a3 + 1;
LABEL_21:
    if ((v18 & 2) == 0)
    {
      v19 = strlen(v8);
      v23.__r_.__value_.__r.__words[0] = v8;
      v23.__r_.__value_.__l.__size_ = v19;
      v26[0] = a2;
      std::__hash_table<std::__hash_value_type<unsigned long,std::string_view>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::string_view>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::string_view>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::string_view>>>::__emplace_unique_key_args<unsigned long,unsigned long const&,std::string_view&>(a1, v26);
      goto LABEL_5;
    }

    v17 = v8;
    goto LABEL_28;
  }

  v8 = a3;
  if (!v16)
  {
    goto LABEL_21;
  }

LABEL_28:
  std::string::basic_string[abi:ne200100]<0>(&v23, v17);
  if ((*(a2 + 8) & 2) != 0)
  {
    std::string::insert(&v23, 0, "DYLD-STUB$$", 0xBuLL);
    a3 -= 11;
  }

  std::mutex::lock((a1 + 184));
  v26[0] = a3;
  v20 = std::__hash_table<std::__hash_value_type<unsigned long,std::string>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::string>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::string>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::string>>>::__emplace_unique_key_args<unsigned long,unsigned long,std::string>((a1 + 80), v26);
  if (v21)
  {
    v22 = *(v20 + 47);
    if ((v22 & 0x8000000000000000) != 0)
    {
      v8 = v20[3];
      v22 = v20[4];
    }

    else
    {
      v8 = (v20 + 3);
    }

    v26[0] = v8;
    v26[1] = v22;
    v25 = a2;
    std::__hash_table<std::__hash_value_type<unsigned long,std::string_view>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::string_view>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::string_view>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::string_view>>>::__emplace_unique_key_args<unsigned long,unsigned long const&,std::string_view&>(a1, &v25);
  }

  else
  {
    v8 = 0;
  }

  std::mutex::unlock((a1 + 184));
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

LABEL_5:
  std::mutex::unlock((a1 + 120));
  return v8;
}

const char *CSCppDeferredDemangler::demangledNameForSymbol(CSCppDeferredDemangler *this, const FlatbufferSymbols::Symbol *a2)
{
  v6 = a2;
  v2 = (a2 - *a2);
  if (*v2 >= 9u && (v3 = v2[4]) != 0)
  {
    v4 = a2 + v3 + *(a2 + v3) + 4;
  }

  else
  {
    v4 = 0;
  }

  return CSCppDeferredDemangler::demangledNameForSymbolImpl<FlatbufferSymbolAdapterImpl<FlatbufferSymbols::Symbol>>(this, &v6, v4);
}

const char *CSCppDeferredDemangler::demangledNameForSymbolImpl<FlatbufferSymbolAdapterImpl<FlatbufferSymbols::Symbol>>(uint64_t a1, unint64_t *a2, char *a3)
{
  std::mutex::lock((a1 + 120));
  if (!*(a1 + 256))
  {
    operator new();
  }

  if (a2)
  {
    v6 = *a2;
  }

  else
  {
    v6 = 0;
  }

  v32 = v6;
  v7 = std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::find<unsigned long long>(a1, &v32);
  if (v7)
  {
    v9 = v7[3];
    v8 = v7[4];
    goto LABEL_8;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_8;
  }

  std::mutex::lock((a1 + 184));
  v31.__r_.__value_.__r.__words[0] = a3;
  v11 = std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::find<unsigned long long>((a1 + 80), &v31);
  if (v11)
  {
    v12 = *(v11 + 47);
    if ((v12 & 0x8000000000000000) != 0)
    {
      v9 = v11[3];
      v12 = v11[4];
    }

    else
    {
      v9 = (v11 + 3);
    }

    v31.__r_.__value_.__r.__words[0] = v9;
    v31.__r_.__value_.__l.__size_ = v12;
    if (a2)
    {
      v34[0] = *a2;
      std::__hash_table<std::__hash_value_type<unsigned long,std::string_view>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::string_view>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::string_view>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::string_view>>>::__emplace_unique_key_args<unsigned long,unsigned long const&,std::string_view&>(a1, v34);
    }

    std::mutex::unlock((a1 + 184));
    goto LABEL_8;
  }

  std::mutex::unlock((a1 + 184));
  v13 = (*a2 - **a2);
  if (*v13 >= 0x13u)
  {
    v14 = v13[9];
    if (v14)
    {
      if ((*(*a2 + v14) & 2) != 0)
      {
        if (!strncmp(a3, "DYLD-STUB$$", 0xBuLL))
        {
          v15 = 11;
        }

        else
        {
          v15 = 0;
        }

        a3 += v15;
      }
    }
  }

  v16 = DemanglingUtilities::CSCppReusableDemanglingBuffer::reusable_buffer(*(a1 + 256));
  v17 = CSCppAddressSet::sort(*(a1 + 256));
  v19 = DemanglingUtilities::demangle_with_reusable_buffer(a3, v16, v17, v18);
  is_name_source_dwarf = FlatbufferSymbolAdapterImpl<FlatbufferSymbols::Symbol>::is_name_source_dwarf(a2);
  v21 = *a2;
  v22 = (*a2 - **a2);
  v23 = *v22;
  if (v23 >= 0x13 && v22[9])
  {
    if (((is_name_source_dwarf | ((*(v21 + v22[9] + 1) & 2) >> 1)) & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  else if (!is_name_source_dwarf)
  {
    goto LABEL_29;
  }

  if (!v19 && *a3 == 95)
  {
    v9 = a3 + 1;
    goto LABEL_41;
  }

LABEL_29:
  v9 = a3;
  if (!v19)
  {
LABEL_41:
    if (v23 < 0x13 || (v29 = v22[9]) == 0 || (*(v21 + v29) & 2) == 0)
    {
      v30 = strlen(v9);
      v31.__r_.__value_.__r.__words[0] = v9;
      v31.__r_.__value_.__l.__size_ = v30;
      v34[0] = v21;
      std::__hash_table<std::__hash_value_type<unsigned long,std::string_view>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::string_view>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::string_view>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::string_view>>>::__emplace_unique_key_args<unsigned long,unsigned long const&,std::string_view&>(a1, v34);
      goto LABEL_8;
    }

    v19 = v9;
  }

  std::string::basic_string[abi:ne200100]<0>(&v31, v19);
  v24 = (*a2 - **a2);
  if (*v24 >= 0x13u)
  {
    v25 = v24[9];
    if (v25)
    {
      if ((*(*a2 + v25) & 2) != 0)
      {
        std::string::insert(&v31, 0, "DYLD-STUB$$", 0xBuLL);
        a3 -= 11;
      }
    }
  }

  std::mutex::lock((a1 + 184));
  v34[0] = a3;
  v26 = std::__hash_table<std::__hash_value_type<unsigned long,std::string>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::string>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::string>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::string>>>::__emplace_unique_key_args<unsigned long,unsigned long,std::string>((a1 + 80), v34);
  if (v27)
  {
    v28 = *(v26 + 47);
    if ((v28 & 0x8000000000000000) != 0)
    {
      v9 = v26[3];
      v28 = v26[4];
    }

    else
    {
      v9 = (v26 + 3);
    }

    v34[0] = v9;
    v34[1] = v28;
    v33 = *a2;
    std::__hash_table<std::__hash_value_type<unsigned long,std::string_view>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::string_view>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::string_view>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::string_view>>>::__emplace_unique_key_args<unsigned long,unsigned long const&,std::string_view&>(a1, &v33);
  }

  else
  {
    v9 = 0;
  }

  std::mutex::unlock((a1 + 184));
  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

LABEL_8:
  std::mutex::unlock((a1 + 120));
  return v9;
}

void sub_1D9733CF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::mutex::unlock((v15 + 120));
  _Unwind_Resume(a1);
}

const char *CSCppDeferredDemangler::demangledNameForSymbol(CSCppDeferredDemangler *this, const FlatbufferSymbols::InlineSymbol *a2)
{
  v6 = a2;
  v2 = (a2 - *a2);
  if (*v2 >= 9u && (v3 = v2[4]) != 0)
  {
    v4 = a2 + v3 + *(a2 + v3) + 4;
  }

  else
  {
    v4 = 0;
  }

  return CSCppDeferredDemangler::demangledNameForSymbolImpl<FlatbufferSymbolAdapterImpl<FlatbufferSymbols::InlineSymbol>>(this, &v6, v4);
}

const char *CSCppDeferredDemangler::demangledNameForSymbolImpl<FlatbufferSymbolAdapterImpl<FlatbufferSymbols::InlineSymbol>>(uint64_t a1, unint64_t *a2, char *a3)
{
  std::mutex::lock((a1 + 120));
  if (!*(a1 + 256))
  {
    operator new();
  }

  if (a2)
  {
    v6 = *a2;
  }

  else
  {
    v6 = 0;
  }

  v32 = v6;
  v7 = std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::find<unsigned long long>(a1, &v32);
  if (v7)
  {
    v9 = v7[3];
    v8 = v7[4];
    goto LABEL_8;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_8;
  }

  std::mutex::lock((a1 + 184));
  v31.__r_.__value_.__r.__words[0] = a3;
  v11 = std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::find<unsigned long long>((a1 + 80), &v31);
  if (v11)
  {
    v12 = *(v11 + 47);
    if ((v12 & 0x8000000000000000) != 0)
    {
      v9 = v11[3];
      v12 = v11[4];
    }

    else
    {
      v9 = (v11 + 3);
    }

    v31.__r_.__value_.__r.__words[0] = v9;
    v31.__r_.__value_.__l.__size_ = v12;
    if (a2)
    {
      v34[0] = *a2;
      std::__hash_table<std::__hash_value_type<unsigned long,std::string_view>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::string_view>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::string_view>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::string_view>>>::__emplace_unique_key_args<unsigned long,unsigned long const&,std::string_view&>(a1, v34);
    }

    std::mutex::unlock((a1 + 184));
    goto LABEL_8;
  }

  std::mutex::unlock((a1 + 184));
  v13 = (*a2 - **a2);
  if (*v13 >= 0x11u)
  {
    v14 = v13[8];
    if (v14)
    {
      if ((*(*a2 + v14) & 2) != 0)
      {
        if (!strncmp(a3, "DYLD-STUB$$", 0xBuLL))
        {
          v15 = 11;
        }

        else
        {
          v15 = 0;
        }

        a3 += v15;
      }
    }
  }

  v16 = DemanglingUtilities::CSCppReusableDemanglingBuffer::reusable_buffer(*(a1 + 256));
  v17 = CSCppAddressSet::sort(*(a1 + 256));
  v19 = DemanglingUtilities::demangle_with_reusable_buffer(a3, v16, v17, v18);
  is_name_source_dwarf = FlatbufferSymbolAdapterImpl<FlatbufferSymbols::InlineSymbol>::is_name_source_dwarf(a2);
  v21 = *a2;
  v22 = (*a2 - **a2);
  v23 = *v22;
  if (v23 >= 0x11 && v22[8])
  {
    if (((is_name_source_dwarf | ((*(v21 + v22[8] + 1) & 2) >> 1)) & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  else if (!is_name_source_dwarf)
  {
    goto LABEL_29;
  }

  if (!v19 && *a3 == 95)
  {
    v9 = a3 + 1;
    goto LABEL_41;
  }

LABEL_29:
  v9 = a3;
  if (!v19)
  {
LABEL_41:
    if (v23 < 0x11 || (v29 = v22[8]) == 0 || (*(v21 + v29) & 2) == 0)
    {
      v30 = strlen(v9);
      v31.__r_.__value_.__r.__words[0] = v9;
      v31.__r_.__value_.__l.__size_ = v30;
      v34[0] = v21;
      std::__hash_table<std::__hash_value_type<unsigned long,std::string_view>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::string_view>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::string_view>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::string_view>>>::__emplace_unique_key_args<unsigned long,unsigned long const&,std::string_view&>(a1, v34);
      goto LABEL_8;
    }

    v19 = v9;
  }

  std::string::basic_string[abi:ne200100]<0>(&v31, v19);
  v24 = (*a2 - **a2);
  if (*v24 >= 0x11u)
  {
    v25 = v24[8];
    if (v25)
    {
      if ((*(*a2 + v25) & 2) != 0)
      {
        std::string::insert(&v31, 0, "DYLD-STUB$$", 0xBuLL);
        a3 -= 11;
      }
    }
  }

  std::mutex::lock((a1 + 184));
  v34[0] = a3;
  v26 = std::__hash_table<std::__hash_value_type<unsigned long,std::string>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::string>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::string>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::string>>>::__emplace_unique_key_args<unsigned long,unsigned long,std::string>((a1 + 80), v34);
  if (v27)
  {
    v28 = *(v26 + 47);
    if ((v28 & 0x8000000000000000) != 0)
    {
      v9 = v26[3];
      v28 = v26[4];
    }

    else
    {
      v9 = (v26 + 3);
    }

    v34[0] = v9;
    v34[1] = v28;
    v33 = *a2;
    std::__hash_table<std::__hash_value_type<unsigned long,std::string_view>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::string_view>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::string_view>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::string_view>>>::__emplace_unique_key_args<unsigned long,unsigned long const&,std::string_view&>(a1, &v33);
  }

  else
  {
    v9 = 0;
  }

  std::mutex::unlock((a1 + 184));
  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

LABEL_8:
  std::mutex::unlock((a1 + 120));
  return v9;
}

void sub_1D973410C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::mutex::unlock((v15 + 120));
  _Unwind_Resume(a1);
}

uint64_t **CSCppDeferredDemangler::mmapSymbolAddressesForDemangledName(CSCppDeferredDemangler *this, const char *a2)
{
  if (a2)
  {
    return CSCppDeferredDemangler::symbolAddressesForDemangledNameImpl(this, a2);
  }

  else
  {
    return 0;
  }
}

void CSCppDeferredDemangler::demangleAllConcreteSymbolsIfNeeded(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (a1 + 248);
  v5[0] = a2;
  v5[1] = a3;
  v5[2] = a1;
  if (atomic_load_explicit(v4, memory_order_acquire) != -1)
  {
    v7 = v5;
    v6 = &v7;
    std::__call_once(v4, &v6, std::__call_once_proxy[abi:ne200100]<std::tuple<CSCppDeferredDemangler::demangleAllConcreteSymbolsIfNeeded(TMMapSymbolOwnerData *,CSCppSymbolOwner *)::$_0 &&>>);
  }
}

{
  v4 = (a1 + 248);
  v5[0] = a2;
  v5[1] = a3;
  v5[2] = a1;
  if (atomic_load_explicit(v4, memory_order_acquire) != -1)
  {
    v7 = v5;
    v6 = &v7;
    std::__call_once(v4, &v6, std::__call_once_proxy[abi:ne200100]<std::tuple<CSCppDeferredDemangler::demangleAllConcreteSymbolsIfNeeded(FlatbufferSymbolOwnerData *,CSCppSymbolOwner *)::$_0 &&>>);
  }
}

void CSCppDeferredDemangler::~CSCppDeferredDemangler(CSCppDeferredDemangler *this)
{
  std::unique_ptr<DemanglingUtilities::CSCppReusableDemanglingBuffer>::reset[abi:ne200100](this + 32, 0);
  std::mutex::~mutex((this + 184));
  std::mutex::~mutex((this + 120));
  std::__hash_table<std::__hash_value_type<unsigned long,std::string>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::string>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::string>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::string>>>::~__hash_table(this + 80);
  std::__hash_table<char const*,std::hash<char const*>,std::equal_to<char const*>,std::allocator<char const*>>::~__hash_table(this + 40);

  std::__hash_table<char const*,std::hash<char const*>,std::equal_to<char const*>,std::allocator<char const*>>::~__hash_table(this);
}

void **std::unique_ptr<DemanglingUtilities::CSCppReusableDemanglingBuffer>::reset[abi:ne200100](void ***a1, void **a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    DemanglingUtilities::CSCppReusableDemanglingBuffer::~CSCppReusableDemanglingBuffer(result);

    JUMPOUT(0x1DA736760);
  }

  return result;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long,std::string>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 47) < 0)
    {
      operator delete(__p[3]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void *std::__hash_table<std::__hash_value_type<unsigned long,std::string_view>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::string_view>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::string_view>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::string_view>>>::__emplace_unique_key_args<unsigned long,unsigned long const&,std::string_view&>(void *a1, unint64_t *a2)
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

void *std::__hash_table<std::__hash_value_type<unsigned long,std::string>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::string>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::string>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::string>>>::__emplace_unique_key_args<unsigned long,unsigned long,std::string>(void *a1, unint64_t *a2)
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

uint64_t std::__call_once_proxy[abi:ne200100]<std::tuple<CSCppDeferredDemangler::demangleAllConcreteSymbolsIfNeeded(TMMapSymbolOwnerData *,CSCppSymbolOwner *)::$_0 &&>>(void **a1)
{
  v1 = **a1;
  v2 = v1[1];
  v3 = v1[2];
  v4 = *v1;
  v5 = *(*v1 + 88);
  v6 = v5 + 32 * v5[2] + 24 * v5[3] + (24 * v5[4]) + (4 * v5[4]) + (36 * v5[5]) + (20 * v5[6]) + v5[22] + v5[20] + 96;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 0x40000000;
  v8[2] = ___ZZN22CSCppDeferredDemangler34demangleAllConcreteSymbolsIfNeededEP20TMMapSymbolOwnerDataP16CSCppSymbolOwnerENK3__0clEv_block_invoke;
  v8[3] = &__block_descriptor_tmp_8;
  v8[4] = v3;
  v8[5] = v6;
  return (*(*v4 + 88))(v4, v2, v8);
}

uint64_t ___ZZN22CSCppDeferredDemangler34demangleAllConcreteSymbolsIfNeededEP20TMMapSymbolOwnerDataP16CSCppSymbolOwnerENK3__0clEv_block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 & 0xFFFFFFFFFFFFFFFCLL;
  if (!*((a3 & 0xFFFFFFFFFFFFFFFCLL) + 12))
  {
    v4 = *(result + 32);
    v6 = CSCppDeferredDemangler::demangledNameForSymbolImpl<CSCppMMapSymbol>(v4, v3, (*(v3 + 16) + *(result + 40)));

    return CSCppDeferredDemangler::cacheDemangledNameToConcreteSymbol<CSCppMMapSymbol>(v4, v6, v5, v3);
  }

  return result;
}

uint64_t CSCppDeferredDemangler::cacheDemangledNameToConcreteSymbol<CSCppMMapSymbol>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::mutex::lock((result + 120));
    std::__hash_table<std::__hash_value_type<std::string_view,unsigned long>,std::__unordered_map_hasher<std::string_view,std::__hash_value_type<std::string_view,unsigned long>,std::hash<std::string_view>,std::equal_to<std::string_view>,true>,std::__unordered_map_equal<std::string_view,std::__hash_value_type<std::string_view,unsigned long>,std::equal_to<std::string_view>,std::hash<std::string_view>,true>,std::allocator<std::__hash_value_type<std::string_view,unsigned long>>>::__emplace_multi<std::string_view&,unsigned long const&>();
  }

  return result;
}

void sub_1D9734A64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__call_once_proxy[abi:ne200100]<std::tuple<CSCppDeferredDemangler::demangleAllConcreteSymbolsIfNeeded(FlatbufferSymbolOwnerData *,CSCppSymbolOwner *)::$_0 &&>>(uint64_t ***a1)
{
  v1 = **a1;
  v2 = v1[1];
  v3 = v1[2];
  v4 = *v1;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = ___ZZN22CSCppDeferredDemangler34demangleAllConcreteSymbolsIfNeededEP25FlatbufferSymbolOwnerDataP16CSCppSymbolOwnerENK3__0clEv_block_invoke;
  v6[3] = &__block_descriptor_tmp_6_1;
  v6[4] = v3;
  return FlatbufferSymbolOwnerData::symbols(v4, v2, v6);
}

uint64_t ___ZZN22CSCppDeferredDemangler34demangleAllConcreteSymbolsIfNeededEP25FlatbufferSymbolOwnerDataP16CSCppSymbolOwnerENK3__0clEv_block_invoke(uint64_t result, char a2, uint64_t a3)
{
  if ((a2 & 7 | (8 * (a3 & 3))) == 5)
  {
    v3 = *(result + 32);
    v4 = a3 & 0xFFFFFFFFFFFFFFFCLL;
    v5 = ((a3 & 0xFFFFFFFFFFFFFFFCLL) - *(a3 & 0xFFFFFFFFFFFFFFFCLL));
    if (*v5 < 0xBu || !v5[5])
    {
      v7 = CSCppDeferredDemangler::demangledNameForSymbol(*(result + 32), (a3 & 0xFFFFFFFFFFFFFFFCLL));

      return CSCppDeferredDemangler::cacheDemangledNameToConcreteSymbol<FlatbufferSymbols::Symbol>(v3, v7, v6, v4);
    }
  }

  return result;
}

uint64_t CSCppDeferredDemangler::cacheDemangledNameToConcreteSymbol<FlatbufferSymbols::Symbol>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::mutex::lock((result + 120));
    std::__hash_table<std::__hash_value_type<std::string_view,unsigned long>,std::__unordered_map_hasher<std::string_view,std::__hash_value_type<std::string_view,unsigned long>,std::hash<std::string_view>,std::equal_to<std::string_view>,true>,std::__unordered_map_equal<std::string_view,std::__hash_value_type<std::string_view,unsigned long>,std::equal_to<std::string_view>,std::hash<std::string_view>,true>,std::allocator<std::__hash_value_type<std::string_view,unsigned long>>>::__emplace_multi<std::string_view&,unsigned long const&>();
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long,std::string>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::string>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::string>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::string>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<unsigned long,std::string>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::string>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::string>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::string>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<unsigned long,std::string>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::string>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::string>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::string>>>::__deallocate_node(int a1, void **__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      if (*(v2 + 47) < 0)
      {
        operator delete(v2[3]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

__CFString *CSCopyDescriptionWithIndent(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a3;
  v4 = a1 & 7 | (8 * (a2 & 3));
  i = @"Unknown typeRef";
  if (v4 > 4)
  {
    if (v4 > 8)
    {
      if (v4 == 9)
      {

        return CSSymbolicationSessionCopyDescriptionWithIndent(a1, a2, a3);
      }

      if (v4 != 10)
      {
        return i;
      }
    }

    else if (v4 != 5)
    {
      if (v4 != 6)
      {
        return i;
      }

      return CSSourceInfoCopyDescriptionWithIndent(a1, a2, a3);
    }

    return CSSymbolCopyDescriptionWithIndent(a1, a2, a3);
  }

  if (v4 <= 2)
  {
    if (v4)
    {
      if (v4 == 2)
      {

        return CSSymbolicatorCopyDescriptionWithIndent(a1, a2, a3);
      }
    }

    else
    {
      for (i = CFStringCreateMutable(0, 0); v3; --v3)
      {
        CFStringAppendCString(i, "\t", 0x8000100u);
      }

      CFStringAppendCString(i, "kCSNull", 0x8000100u);
    }

    return i;
  }

  if (v4 == 3)
  {

    return CSSymbolOwnerCopyDescriptionWithIndent(a1, a2, a3);
  }

  else
  {

    return CSRegionCopyDescriptionWithIndent(a1, a2, a3);
  }
}

void CSCppDwarfAbbrev::~CSCppDwarfAbbrev(CSCppDwarfAbbrev *this)
{
  *this = &unk_1F5505568;
  v2 = *(this + 5);
  v3 = *(this + 6);
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
    v2 = *(this + 5);
  }

  if (v2)
  {
    *(this + 6) = v2;
    operator delete(v2);
  }

  v4 = *(this + 2);
  if (v4)
  {
    *(this + 3) = v4;
    operator delete(v4);
  }
}

uint64_t CSCppDwarfAbbrev::parse_stream(uint64_t this, void *a2, uint64_t a3)
{
  v5 = *(this + 40);
  v6 = *(this + 48);
  if (v5 != v6)
  {
    v7 = this;
    do
    {
      v8 = *v5++;
      this = (*(*v8 + 16))(v8, a2, a3);
    }

    while (v5 != v6);
    v5 = *(v7 + 40);
    v6 = *(v7 + 48);
  }

  while (v5 != v6)
  {
    v9 = *v5++;
    this = (*(*v9 + 24))(v9, a2, a3);
  }

  return this;
}

void CSCppDwarfAbbrevTable::~CSCppDwarfAbbrevTable(CSCppDwarfAbbrevTable *this)
{
  *this = &unk_1F55055A8;
  v3 = *(this + 1);
  v2 = *(this + 2);
  while (v3 != v2)
  {
    if (*v3)
    {
      (*(**v3 + 8))(*v3);
      v2 = *(this + 2);
    }

    ++v3;
  }

  v5 = *(this + 4);
  v4 = *(this + 5);
  if (v5 != v4)
  {
    do
    {
      if (*v5)
      {
        (*(**v5 + 8))(*v5);
        v4 = *(this + 5);
      }

      ++v5;
    }

    while (v5 != v4);
    v5 = *(this + 4);
  }

  if (v5)
  {
    *(this + 5) = v5;
    operator delete(v5);
  }

  v6 = *(this + 1);
  if (v6)
  {
    *(this + 2) = v6;
    operator delete(v6);
  }
}

{
  CSCppDwarfAbbrevTable::~CSCppDwarfAbbrevTable(this);

  JUMPOUT(0x1DA736760);
}

void sub_1D9735268(_Unwind_Exception *a1)
{
  MEMORY[0x1DA736760](v3, v2);
  (*(*v1 + 8))(v1);
  _Unwind_Resume(a1);
}

uint64_t new_memory_for_object_in_archive(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, int a6)
{
  v14 = 0;
  v15 = a4;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 0x40000000;
  v8[2] = ___Z32new_memory_for_object_in_archivePKcS0_j17CSCppArchitecturejj_block_invoke;
  v8[3] = &unk_1E8583980;
  v8[4] = &v11;
  v8[5] = a1;
  v9 = a3;
  v10 = a6;
  iterate_symbol_owners_from_memory(0, a1, 0, 0, a5, &v15, a2, 0, v8);
  v6 = v12[3];
  _Block_object_dispose(&v11, 8);
  return v6;
}

uint64_t iterate_symbol_owners_from_memory(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, uint64_t *a6, uint64_t a7, char a8, uint64_t a9)
{
  if (!a1)
  {
    v15 = *MEMORY[0x1E69E9AC8];
    operator new();
  }

  v32[0] = a1;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2000000000;
  v31 = 0;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 0x40000000;
  v24[2] = ___Z33iterate_symbol_owners_from_memoryP11CSCppMemoryPKcjyjRK17CSCppArchitectureS2_bU13block_pointerFvNSt3__110shared_ptrI16CSCppSymbolOwnerEEE_block_invoke;
  v24[3] = &unk_1E8583A20;
  v24[6] = a6;
  v24[7] = a1;
  v25 = a3;
  v26 = a5;
  v24[8] = a2;
  v24[9] = a7;
  v27 = a8;
  v24[4] = a9;
  v24[5] = &v28;
  if (!TMemoryView<SizeAndEndianness<Pointer64,LittleEndian>>::foreach_arch_in_macho_fat32_header(v32, a4, v24))
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 0x40000000;
    v20[2] = ___Z33iterate_symbol_owners_from_memoryP11CSCppMemoryPKcjyjRK17CSCppArchitectureS2_bU13block_pointerFvNSt3__110shared_ptrI16CSCppSymbolOwnerEEE_block_invoke_2;
    v20[3] = &unk_1E8583A48;
    v20[6] = a6;
    v20[7] = a1;
    v20[8] = a2;
    v21 = a3;
    v22 = a5;
    v23 = a8;
    v20[4] = a9;
    v20[5] = &v28;
    if (!TMemoryView<SizeAndEndianness<Pointer64,LittleEndian>>::foreach_arch_in_macho_fat64_header(v32, a4, v20))
    {
      v18 = *a6;
      v33[0] = 0;
      v33[1] = v33;
      v33[2] = 0x2000000000;
      v34 = 0;
      v32[17] = MEMORY[0x1E69E9820];
      v32[18] = 0x40000000;
      v32[19] = ___ZL37iterate_symbol_owners_from_mh_filesetI17SizeAndEndiannessI9Pointer6412LittleEndianEEbP11CSCppMemoryPKcNT_6size_tENS8_5ptr_tES9_j17CSCppArchitectureU13block_pointerFvNSt3__110shared_ptrI16CSCppSymbolOwnerEEE_block_invoke;
      v32[20] = &unk_1E8583D00;
      v32[21] = v33;
      new_partial_file_memory();
    }
  }

  v17 = *(v29 + 24);
  _Block_object_dispose(&v28, 8);
  return v17;
}

void sub_1D97357D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  _Block_object_dispose((v37 - 216), 8);
  _Block_object_dispose((v37 - 136), 8);
  (*(*v36 + 8))(v36);
  _Block_object_dispose(&a36, 8);
  _Unwind_Resume(a1);
}

uint64_t ___Z32new_memory_for_object_in_archivePKcS0_j17CSCppArchitecturejj_block_invoke(uint64_t result, uint64_t a2)
{
  if (!*(*(*(result + 32) + 8) + 24) && *(*a2 + 104) == *(result + 48))
  {
    operator new();
  }

  return result;
}

const char *split_static_library_path(const char *a1)
{
  v2 = strlen(a1);
  if (v2 >= 8)
  {
    v3 = &a1[v2];
    if (a1[v2 - 1] == 41 && *(v3 - 2) == 111 && *(v3 - 3) == 46)
    {
      v4 = &a1[v2 - 5];
      for (i = v2 - 4; i; --i)
      {
        result = 0;
        v7 = *(v4 + 1);
        if (v7 == 41 || v7 == 47)
        {
          return result;
        }

        --v4;
        if (v7 == 40)
        {
          if (v4[1] != 97)
          {
            return 0;
          }

          if (*v4 == 46)
          {
            return v4 + 2;
          }

          else
          {
            return 0;
          }
        }
      }
    }
  }

  return 0;
}

_DWORD *process_shared_cache_library_with_path(CSCppDyldSplitSharedCacheMemory *a1, uint64_t a2, int a3, uint64_t a4)
{
  v16[3] = *MEMORY[0x1E69E9840];
  v12 = a2;
  result = CSCppDyldSplitSharedCacheMemory::text_address(a1);
  if (result)
  {
    v8 = result;
    is_little_endian = CSCppArchitecture::is_little_endian(&v12);
    result = CSCppArchitecture::is_64_bit(&v12);
    if (is_little_endian)
    {
      if (result)
      {
        v16[0] = a1;
        result = TMemoryView<SizeAndEndianness<Pointer64,LittleEndian>>::macho_header_at(v16, v8, 1);
        if (result)
        {
          LOBYTE(v14) = 0;
          LOBYTE(v15) = 0;
          TExtendedMachOHeader<SizeAndEndianness<Pointer64,LittleEndian>>::TExtendedMachOHeader(v13, a1, v8, result, a4, 0, a3, &v14);
          TExtendedMachOHeader<SizeAndEndianness<Pointer64,LittleEndian>>::symbol_owner(v13);
        }
      }

      else
      {
        v16[0] = a1;
        result = TMemoryView<SizeAndEndianness<Pointer32,LittleEndian>>::macho_header_at(v16, v8, 1);
        if (result)
        {
          TExtendedMachOHeader<SizeAndEndianness<Pointer32,LittleEndian>>::TExtendedMachOHeader(v13, a1, v8, result, a4, 0, a3, v10, 0, 0);
          TExtendedMachOHeader<SizeAndEndianness<Pointer32,LittleEndian>>::symbol_owner(v13);
        }
      }
    }
  }

  v11 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1D9735BEC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 64);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t process_all_shared_cache_libraries(CSCppDyldSplitSharedCacheMemory *a1, uint64_t a2, int a3, uint64_t a4)
{
  v30 = *MEMORY[0x1E69E9840];
  v14 = 0;
  v15 = &v14;
  v16 = 0x5002000000;
  v17 = __Block_byref_object_copy__6;
  v18 = __Block_byref_object_dispose__6;
  memset(v19, 0, sizeof(v19));
  v20 = 1065353216;
  *&v29 = CSCppDyldSplitSharedCacheMemory::primary_shared_cache_uuid(a1);
  *(&v29 + 1) = v8;
  v21 = MEMORY[0x1E69E9820];
  v22 = 0x40000000;
  v23 = ___Z34process_all_shared_cache_librariesP31CSCppDyldSplitSharedCacheMemory17CSCppArchitecturejU13block_pointerFvyRK4UUIDONSt3__16vectorINS5_10shared_ptrI16CSCppSymbolOwnerEENS5_9allocatorIS9_EEEEE_block_invoke;
  v24 = &unk_1E85839D0;
  v26 = a3;
  v27 = a2;
  v25 = &v14;
  v28 = v29;
  CSCppDyldSplitSharedCacheMemory::for_each_text_memory<void({block_pointer})(char const*,CSCppFileMemory *,UUID)>(a1);
  for (i = v15 + 7; ; (*(a4 + 16))(a4, v11, &v29, i + 4))
  {
    i = *i;
    if (!i)
    {
      break;
    }

    v10 = *(a1 + 4);
    if (v10)
    {
      v11 = *(v10 + 32);
    }

    else
    {
      v11 = 0;
    }
  }

  _Block_object_dispose(&v14, 8);
  result = std::__hash_table<std::__hash_value_type<UUID,std::vector<std::shared_ptr<CSCppSymbolOwner>>>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,std::vector<std::shared_ptr<CSCppSymbolOwner>>>,UUIDHashFunctor,UUIDEqualsFunctor,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,std::vector<std::shared_ptr<CSCppSymbolOwner>>>,UUIDEqualsFunctor,UUIDHashFunctor,true>,std::allocator<std::__hash_value_type<UUID,std::vector<std::shared_ptr<CSCppSymbolOwner>>>>>::~__hash_table(v19);
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1D9735DB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  _Block_object_dispose(&a9, 8);
  std::__hash_table<std::__hash_value_type<UUID,std::vector<std::shared_ptr<CSCppSymbolOwner>>>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,std::vector<std::shared_ptr<CSCppSymbolOwner>>>,UUIDHashFunctor,UUIDEqualsFunctor,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,std::vector<std::shared_ptr<CSCppSymbolOwner>>>,UUIDEqualsFunctor,UUIDHashFunctor,true>,std::allocator<std::__hash_value_type<UUID,std::vector<std::shared_ptr<CSCppSymbolOwner>>>>>::~__hash_table(v9 + 40);
  _Unwind_Resume(a1);
}

uint64_t CSCppDyldSplitSharedCacheMemory::for_each_text_memory<void({block_pointer})(char const*,CSCppFileMemory *,UUID)>(uint64_t result)
{
  v1 = *(result + 8);
  for (i = *(result + 16); v1 != i; v1 += 5)
  {
    result = CSCppDyldSplitSharedCacheMemory::CacheMemoryAndPath::is_task_memory(v1);
    if ((result & 1) == 0)
    {
      result = *v1;
      if (*v1)
      {
        v3 = **result;
        if (result)
        {
          result = CSCppDyldSharedCacheMemory::foreach_text_memory(result);
        }
      }
    }
  }

  return result;
}

uint64_t ___Z34process_all_shared_cache_librariesP31CSCppDyldSplitSharedCacheMemory17CSCppArchitecturejU13block_pointerFvyRK4UUIDONSt3__16vectorINS5_10shared_ptrI16CSCppSymbolOwnerEENS5_9allocatorIS9_EEEEE_block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v3 = *(result + 40);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 0x40000000;
    v5[2] = ___Z34process_all_shared_cache_librariesP31CSCppDyldSplitSharedCacheMemory17CSCppArchitecturejU13block_pointerFvyRK4UUIDONSt3__16vectorINS5_10shared_ptrI16CSCppSymbolOwnerEENS5_9allocatorIS9_EEEEE_block_invoke_2;
    v5[3] = &unk_1E85839A8;
    v5[4] = *(result + 32);
    v6 = *(result + 52);
    result = iterate_symbol_owners_from_memory(a3, a2, 0, 0, v3, (result + 44), 0, 0, v5);
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

void **std::vector<std::shared_ptr<CSCppSymbolOwner>>::push_back[abi:ne200100](void **result, __int128 *a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v8 = (v4 - *result) >> 4;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
    }

    v10 = v5 - *result;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    v18[4] = result;
    if (v11)
    {
      std::allocator<std::shared_ptr<CSCppSymbolOwner>>::allocate_at_least[abi:ne200100](result, v11);
    }

    v12 = 16 * v8;
    v13 = *a2;
    *(16 * v8) = *a2;
    if (*(&v13 + 1))
    {
      atomic_fetch_add_explicit((*(&v13 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v7 = (v12 + 16);
    v14 = result[1] - *result;
    v15 = v12 - v14;
    memcpy((v12 - v14), *result, v14);
    v16 = *v3;
    *v3 = v15;
    v3[1] = v7;
    v17 = v3[2];
    v3[2] = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    result = std::__split_buffer<std::shared_ptr<CSCppSymbolOwner>>::~__split_buffer(v18);
  }

  else
  {
    v6 = *(a2 + 1);
    *v4 = *a2;
    *(v4 + 1) = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v7 = v4 + 16;
  }

  v3[1] = v7;
  return result;
}

void iterate_symbol_owners_from_disk_dsc(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v4 = v1;
  v24 = *MEMORY[0x1E69E9840];
  {
    CSCppMachTask::CSCppMachTask(v22, *MEMORY[0x1E69E9A60], 0);
    v13 = CSCppMachTask::uses_development_dsc(v22);
    CSCppMachTask::~CSCppMachTask(v22);
    iterate_symbol_owners_from_disk_dsc(char const*,unsigned int,CSCppArchitecture const&,void({block_pointer})(unsigned long long,UUID const&,std::vector<std::shared_ptr<CSCppSymbolOwner>> &&))::analysis_process_uses_development_dsc = v13;
  }

  shared_cache_search_directories(&v14);
  if (CSArchitectureGetFamilyName(*v3))
  {
    is_wildcard_architecture = CSCppArchitecture::is_wildcard_architecture(*v3);
    v7 = v14;
    v6 = v15;
    if (v14 != v15)
    {
      if (v4)
      {
        v8 = is_wildcard_architecture;
      }

      else
      {
        v8 = 1;
      }

      do
      {
        v9 = *v7;
        if ((v8 & 1) == 0)
        {
          operator new();
        }

        if (v4)
        {
          v20 = *v7;
          v21 = v4;
          v19 = CSCppDyldSplitSharedCacheMemory::task_uses_development_cache(*MEMORY[0x1E69E9A60]);
          std::string::basic_string[abi:ne200100]<0>(__p, v9);
          CSCppDyldSplitSharedCacheMemory::shared_cache_file_map_for_arch(__p, 0xFFFFFFFFFFFFFFFFLL, v22);
          if (v18 < 0)
          {
            operator delete(__p[0]);
          }

          if (v23)
          {
            v10 = (v23 + 16);
            ArchitectureForName = 0;
            if (*(v23 + 39) < 0)
            {
              v10 = *v10;
            }

            ArchitectureForName = CSArchitectureGetArchitectureForName(v10);
            std::make_unique[abi:ne200100]<CSCppDyldSplitSharedCacheMemory,_CSArchitecture &,char const*&,BOOL const&,std::vector<std::string>,char const*&,0>();
          }
        }

        else
        {
          v20 = *v7;
          v21 = 0;
          v19 = CSCppDyldSplitSharedCacheMemory::task_uses_development_cache(*MEMORY[0x1E69E9A60]);
          std::string::basic_string[abi:ne200100]<0>(__p, v9);
          CSCppDyldSplitSharedCacheMemory::shared_cache_file_map_for_arch(__p, 0xFFFFFFFFFFFFFFFFLL, v22);
          if (v18 < 0)
          {
            operator delete(__p[0]);
          }

          if (v23)
          {
            v11 = (v23 + 16);
            ArchitectureForName = 0;
            if (*(v23 + 39) < 0)
            {
              v11 = *v11;
            }

            ArchitectureForName = CSArchitectureGetArchitectureForName(v11);
            std::make_unique[abi:ne200100]<CSCppDyldSplitSharedCacheMemory,_CSArchitecture &,char const*&,BOOL const&,std::vector<std::string>,char const*&,0>();
          }
        }

        std::__hash_table<std::__hash_value_type<std::string,std::vector<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::string>>>>::~__hash_table(v22);
        v7 += 2;
      }

      while (v7 != v6);
    }
  }

  if (v14)
  {
    v15 = v14;
    operator delete(v14);
  }

  v12 = *MEMORY[0x1E69E9840];
}

void sub_1D9736538(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  CSCppMachTask::~CSCppMachTask(&a27);
  _Unwind_Resume(a1);
}

void iterate_symbol_owners_from_path(char *a1, int a2, int a3, uint64_t *a4, char a5, uint64_t a6)
{
  v12 = split_static_library_path(a1);
  if (v12)
  {
    v13 = v12;
    std::string::basic_string[abi:ne200100](__p, a1, v12 - a1);
    v14 = strlen(v13);
    std::string::basic_string[abi:ne200100](__dst, (v13 + 1), v14 - 2);
    if (v18 >= 0)
    {
      v15 = __p;
    }

    else
    {
      v15 = __p[0];
    }

    if (v21 >= 0)
    {
      v16 = __dst;
    }

    else
    {
      v16 = __dst[0];
    }

    iterate_symbol_owners_from_memory(0, v15, 0, 0, a3, a4, v16, a5, a6);
    if (v21 < 0)
    {
      operator delete(__dst[0]);
    }

    if (SHIBYTE(v18) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else if ((iterate_symbol_owners_from_memory(0, a1, 0, 0, a3, a4, 0, a5, a6) & 1) == 0 && a2)
  {
    __p[0] = 0;
    __p[1] = __p;
    v18 = 0x2000000000;
    v19 = 0;
    iterate_symbol_owners_from_disk_dsc(a1);
    _Block_object_dispose(__p, 8);
  }
}

void ___Z31iterate_symbol_owners_from_pathPKcbjRK17CSCppArchitecturebU13block_pointerFvNSt3__110shared_ptrI16CSCppSymbolOwnerEEE_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4)
{
  v4 = *a4;
  v5 = a4[1];
  if (*a4 != v5)
  {
    do
    {
      v7 = *v4;
      v8 = v4[1];
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (*(*(*(a1 + 40) + 8) + 24) != 1 || (*(a1 + 48) & 1) == 0)
      {
        v9 = *(a1 + 32);
        v10 = v7;
        v11 = v8;
        if (v8)
        {
          atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        (*(v9 + 16))(v9, &v10);
        if (v11)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v11);
        }

        *(*(*(a1 + 40) + 8) + 24) = 1;
      }

      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }

      v4 += 2;
    }

    while (v4 != v5);
  }
}

void sub_1D973693C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TMemoryView<SizeAndEndianness<Pointer64,LittleEndian>>::foreach_arch_in_macho_fat32_header(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = 8;
  while (1)
  {
    v7 = (*(**a1 + 32))(*a1, a2, v6);
    if (!v7 || *v7 != -1095041334 || !v7[1] || bswap32(v7[1]) > 0x2C)
    {
      break;
    }

    v6 = 20 * bswap32(v7[1]) + 8;
    if (v8 >= v6)
    {
      v9 = bswap32(v7[1]);
      v10 = v7 + 2;
      goto LABEL_9;
    }
  }

  v10 = 0;
  v9 = 0;
LABEL_9:
  v17 = 0;
  if (!v9)
  {
    return 0;
  }

  v11 = 0;
  v12 = 0;
  v13 = v9;
  v14 = 20 * v9 + 8;
  v15 = 1;
  do
  {
    if (v14 <= bswap32(v10[2]))
    {
      if (a3)
      {
        (*(a3 + 16))(a3, v10, &v17);
        v11 = v17;
      }

      ++v12;
    }

    if (v15 >= v13)
    {
      break;
    }

    v10 += 5;
    ++v15;
  }

  while ((v11 & 1) == 0);
  return v12;
}

void ___Z33iterate_symbol_owners_from_memoryP11CSCppMemoryPKcjyjRK17CSCppArchitectureS2_bU13block_pointerFvNSt3__110shared_ptrI16CSCppSymbolOwnerEEE_block_invoke(uint64_t a1, unsigned int *a2, _BYTE *a3)
{
  v17 = bswap64(a2[1] & 0xFFFFFF00 | (*a2 << 32));
  if (CSCppArchitecture::matches(&v17, **(a1 + 48)))
  {
    v6 = *(a1 + 56);
    v7 = *(a1 + 64);
    v8 = *(a1 + 80);
    v9 = *(a1 + 84);
    v10 = bswap32(a2[2]);
    v11 = bswap32(a2[3]);
    v12 = *(a1 + 32);
    if (CSCppArchitecture::is_64_bit(&v17))
    {
      if (CSCppArchitecture::is_64_bit(&v17) && CSCppArchitecture::is_little_endian(&v17) && (process_symbol_owner_from_memory_arch_specific<SizeAndEndianness<Pointer64,LittleEndian>>(v6, v7, v8, v10, v11, v9, &v17) & 1) != 0)
      {
        goto LABEL_10;
      }
    }

    else if (CSCppArchitecture::is_little_endian(&v17) && (process_symbol_owner_from_memory_arch_specific<SizeAndEndianness<Pointer32,LittleEndian>>(v6, v7, v8, v10, v11, v9, &v17) & 1) != 0)
    {
      goto LABEL_10;
    }

    v13 = *(a1 + 89);
    v14 = *(a1 + 32);
    iterate_symbol_owners_from_archive(*(a1 + 64), bswap32(a2[2]), *(a1 + 84), &v17, *(a1 + 72));
    if (!v15)
    {
      v16 = 0;
LABEL_13:
      *(*(*(a1 + 40) + 8) + 24) |= v16;
      return;
    }

LABEL_10:
    v16 = 1;
    if (*(a1 + 89) == 1)
    {
      *a3 = 1;
    }

    goto LABEL_13;
  }
}

void iterate_symbol_owners_from_archive(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v33 = *MEMORY[0x1E69E9840];
  v16 = 0;
  v17 = &v16;
  v18 = 0x2000000000;
  v19 = 0;
  if ((atomic_load_explicit(&_MergedGlobals_1, memory_order_acquire) & 1) == 0)
  {
    iterate_symbol_owners_from_archive();
  }

  v23 = &foreach_object_in_archive(char const*,unsigned long long,char const*,void({block_pointer})(CSCppFileMemory *,CSCppArchiveEntry const*,unsigned long long,BOOL *,BOOL *))::archive_file_maps_lock;
  v24 = 1;
  std::mutex::lock(&foreach_object_in_archive(char const*,unsigned long long,char const*,void({block_pointer})(CSCppFileMemory *,CSCppArchiveEntry const*,unsigned long long,BOOL *,BOOL *))::archive_file_maps_lock);
  std::string::basic_string[abi:ne200100]<0>(v20, a1);
  v22 = a2;
  v8 = std::__hash_table<std::__hash_value_type<std::pair<std::string,unsigned long long>,std::unordered_map<std::string,unsigned long long>>,std::__unordered_map_hasher<std::pair<std::string,unsigned long long>,std::__hash_value_type<std::pair<std::string,unsigned long long>,std::unordered_map<std::string,unsigned long long>>,ArchiveAndArchOffsetHash,std::equal_to<std::pair<std::string,unsigned long long>>,true>,std::__unordered_map_equal<std::pair<std::string,unsigned long long>,std::__hash_value_type<std::pair<std::string,unsigned long long>,std::unordered_map<std::string,unsigned long long>>,std::equal_to<std::pair<std::string,unsigned long long>>,ArchiveAndArchOffsetHash,true>,std::allocator<std::__hash_value_type<std::pair<std::string,unsigned long long>,std::unordered_map<std::string,unsigned long long>>>>::find<std::pair<std::string,unsigned long long>>(qword_1EDADA760, v20);
  if (v8)
  {
    if (a5)
    {
      std::string::basic_string[abi:ne200100]<0>(&__p, a5);
      v9 = std::__hash_table<std::__hash_value_type<std::string,std::vector<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::string>>>>::find<std::string>(v8 + 6, &__p);
      v10 = v9;
      if (v9)
      {
        v11 = *v9;
      }

      else
      {
        v11 = 0;
      }

      if (v32 < 0)
      {
        operator delete(__p);
      }
    }

    else
    {
      v11 = 0;
      v10 = v8[8];
    }

    LOBYTE(v30) = 0;
    for (LOBYTE(v29) = 0; v10 != v11; v10 = *v10)
    {
      if (!a5)
      {
        v12 = (v10 + 2);
        if (*(v10 + 39) < 0)
        {
          v12 = v10[2];
        }

        if (!strncmp(v12, "__.SYMDEF", 9uLL))
        {
          continue;
        }
      }

      v13 = v10[5];
      new_partial_file_memory();
    }

    if (v21 < 0)
    {
      operator delete(v20[0]);
    }

    if (v24 == 1)
    {
      std::mutex::unlock(v23);
    }

    v14 = *(v17 + 24);
    _Block_object_dispose(&v16, 8);
    v15 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v29 = a2;
    v30 = a1;
    if (v24)
    {
      std::mutex::unlock(v23);
      v24 = 0;
      v26 = 0u;
      v27 = 0u;
      v28 = 1065353216;
      v25 = a2 + 8;
      new_partial_file_memory();
    }

    std::__throw_system_error(1, "unique_lock::unlock: not locked");
    __break(1u);
  }
}

uint64_t TMemoryView<SizeAndEndianness<Pointer64,LittleEndian>>::foreach_arch_in_macho_fat64_header(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = 8;
  while (1)
  {
    v7 = (*(**a1 + 32))(*a1, a2, v6);
    if (!v7 || *v7 != -1078264118 || !v7[1] || bswap32(v7[1]) > 0x2C)
    {
      break;
    }

    v6 = (32 * bswap32(v7[1])) | 8;
    if (v8 >= v6)
    {
      v9 = bswap32(v7[1]);
      v10 = v7 + 2;
      goto LABEL_9;
    }
  }

  v10 = 0;
  v9 = 0;
LABEL_9:
  v17 = 0;
  if (!v9)
  {
    return 0;
  }

  v11 = 0;
  v12 = 0;
  v13 = v9;
  v14 = (32 * v9) | 8;
  v15 = 1;
  do
  {
    if (bswap64(*(v10 + 1)) >= v14)
    {
      if (a3)
      {
        (*(a3 + 16))(a3, v10, &v17);
        v11 = v17;
      }

      ++v12;
    }

    if (v15 >= v13)
    {
      break;
    }

    v10 += 8;
    ++v15;
  }

  while ((v11 & 1) == 0);
  return v12;
}

uint64_t ___Z33iterate_symbol_owners_from_memoryP11CSCppMemoryPKcjyjRK17CSCppArchitectureS2_bU13block_pointerFvNSt3__110shared_ptrI16CSCppSymbolOwnerEEE_block_invoke_2(uint64_t a1, unsigned int *a2, _BYTE *a3)
{
  v15 = bswap64(a2[1] & 0xFFFFFF00 | (*a2 << 32));
  result = CSCppArchitecture::matches(&v15, **(a1 + 48));
  if (result)
  {
    v7 = *(a1 + 56);
    v8 = *(a1 + 64);
    v9 = *(a1 + 72);
    v10 = *(a1 + 76);
    v11 = bswap64(*(a2 + 1));
    v12 = bswap64(*(a2 + 2));
    v13 = *(a1 + 32);
    if (CSCppArchitecture::is_64_bit(&v15))
    {
      result = CSCppArchitecture::is_64_bit(&v15);
      if (!result || (result = CSCppArchitecture::is_little_endian(&v15), !result) || (result = process_symbol_owner_from_memory_arch_specific<SizeAndEndianness<Pointer64,LittleEndian>>(v7, v8, v9, v11, v12, v10, &v15), !result))
      {
LABEL_11:
        v14 = 0;
LABEL_12:
        *(*(*(a1 + 40) + 8) + 24) |= v14;
        return result;
      }
    }

    else
    {
      result = CSCppArchitecture::is_little_endian(&v15);
      if (!result)
      {
        goto LABEL_11;
      }

      result = process_symbol_owner_from_memory_arch_specific<SizeAndEndianness<Pointer32,LittleEndian>>(v7, v8, v9, v11, v12, v10, &v15);
      if ((result & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    v14 = 1;
    if (*(a1 + 81) == 1)
    {
      *a3 = 1;
    }

    goto LABEL_12;
  }

  return result;
}

uint64_t process_symbol_owner_from_memory_arch_specific<SizeAndEndianness<Pointer64,LittleEndian>>(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6, unint64_t *a7)
{
  if (!a1)
  {
    v19[1] = MEMORY[0x1E69E9820];
    v19[2] = 0x40000000;
    v19[3] = ___ZL46process_symbol_owner_from_memory_arch_specificI17SizeAndEndiannessI9Pointer6412LittleEndianEEbP11CSCppMemoryPKcNT_6size_tENS8_5ptr_tES9_jRK17CSCppArchitectureU13block_pointerFvNSt3__110shared_ptrI16CSCppSymbolOwnerEEE_block_invoke;
    v19[4] = &__block_descriptor_tmp_86_0;
    v19[5] = a4;
    new_partial_file_memory();
  }

  v19[0] = a1;
  v13 = TMemoryView<SizeAndEndianness<Pointer64,LittleEndian>>::macho_header_at(v19, a4, 1);
  if (v13)
  {
    v14 = v13;
    v18[0] = v13[1] | ((v13[2] & 0xFFFFFF) << 32);
    if (CSCppArchitecture::matches(v18, *a7))
    {
      LOBYTE(v16) = 0;
      v17 = 0;
      TExtendedMachOHeader<SizeAndEndianness<Pointer64,LittleEndian>>::TExtendedMachOHeader(v18, a1, a4, v14, a2, a3, a6, &v16);
      TExtendedMachOHeader<SizeAndEndianness<Pointer64,LittleEndian>>::symbol_owner(v18);
    }
  }

  return 0;
}

void sub_1D97377A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t process_symbol_owner_from_memory_arch_specific<SizeAndEndianness<Pointer32,LittleEndian>>(uint64_t a1, uint64_t a2, int a3, unsigned int a4, uint64_t a5, int a6, unint64_t *a7)
{
  if (!a1)
  {
    v18[1] = MEMORY[0x1E69E9820];
    v18[2] = 0x40000000;
    v18[3] = ___ZL46process_symbol_owner_from_memory_arch_specificI17SizeAndEndiannessI9Pointer3212LittleEndianEEbP11CSCppMemoryPKcNT_6size_tENS8_5ptr_tES9_jRK17CSCppArchitectureU13block_pointerFvNSt3__110shared_ptrI16CSCppSymbolOwnerEEE_block_invoke;
    v18[4] = &__block_descriptor_tmp_85;
    v19 = a4;
    new_partial_file_memory();
  }

  v18[0] = a1;
  v13 = TMemoryView<SizeAndEndianness<Pointer32,LittleEndian>>::macho_header_at(v18, a4, 1);
  if (v13)
  {
    v14 = v13;
    v17[0] = v13[1] | ((v13[2] & 0xFFFFFF) << 32);
    if (CSCppArchitecture::matches(v17, *a7))
    {
      TExtendedMachOHeader<SizeAndEndianness<Pointer32,LittleEndian>>::TExtendedMachOHeader(v17, a1, a4, v14, a2, a3, a6, v15, 0, 0);
      TExtendedMachOHeader<SizeAndEndianness<Pointer32,LittleEndian>>::symbol_owner(v17);
    }
  }

  return 0;
}

void sub_1D97379B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t extract_segment_content_from_dsc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v31 = *MEMORY[0x1E69E9840];
  v13 = 0;
  v14 = &v13;
  v15 = 0x2000000000;
  v16 = 0;
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x2000000000;
  v12 = 0;
  v17 = MEMORY[0x1E69E9820];
  v18 = 0x40000000;
  v19 = ___Z32extract_segment_content_from_dsc4UUIDPKcS_yyU13block_pointerFvPKhmE_block_invoke;
  v20 = &unk_1E8583AC0;
  v27 = a1;
  v28 = a2;
  v29 = a4;
  v30 = a5;
  v23 = &v13;
  v24 = a3;
  v21 = a8;
  v22 = v11;
  v25 = a6;
  v26 = a7;
  dyld_for_each_installed_shared_cache();
  v8 = *(v14 + 24);
  _Block_object_dispose(v11, 8);
  _Block_object_dispose(&v13, 8);
  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

void sub_1D9737AE8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t ___Z32extract_segment_content_from_dsc4UUIDPKcS_yyU13block_pointerFvPKhmE_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  result = dyld_shared_cache_copy_uuid();
  if (*(a1 + 80))
  {
    v3 = 0;
  }

  else
  {
    v3 = *(a1 + 88) == 0;
  }

  if (v3)
  {
    v4 = *(*(a1 + 40) + 8);
    if ((*(v4 + 24) & 1) == 0)
    {
      *(v4 + 24) = 1;
      v9 = *(a1 + 96);
      v7 = *(a1 + 48);
      v6 = *(a1 + 32);
      v8 = *(a1 + 64);
      result = dyld_shared_cache_for_each_image();
    }
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ___Z32extract_segment_content_from_dsc4UUIDPKcS_yyU13block_pointerFvPKhmE_block_invoke_2(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  result = dyld_image_copy_uuid();
  if (result)
  {
    if (*(a1 + 72))
    {
      v3 = 0;
    }

    else
    {
      v3 = *(a1 + 80) == 0;
    }

    if (v3)
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 56);
      v7 = *(a1 + 48);
      result = dyld_image_content_for_segment();
      *(*(*(a1 + 40) + 8) + 24) = result;
    }
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ___Z32extract_segment_content_from_dsc4UUIDPKcS_yyU13block_pointerFvPKhmE_block_invoke_3(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a1[5];
  if (v5)
  {
    if (a1[6] + v5 > a4)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v6 = a1[7];
        *buf = 136315138;
        v16 = v6;
        _os_log_impl(&dword_1D96E9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Requested vm range length in %s does not exist in file.\n", buf, 0xCu);
      }

      fprintf(*MEMORY[0x1E69E9848], "Requested vm range length in %s does not exist in file.\n", a1[7]);
      result = (*(a1[4] + 16))();
      v8 = *MEMORY[0x1E69E9840];
      return result;
    }

    v13 = a1[4];
    v11 = *(a1[4] + 16);
    v14 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v9 = a1[4];
    if (a1[6] < a4)
    {
      v10 = a1[6];
    }

    v11 = *(v9 + 16);
    v12 = *MEMORY[0x1E69E9840];
  }

  return v11();
}

uint64_t extract_segment_content_from_kc_fileset(uint64_t a1, uint64_t a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = 0;
  if (a2)
  {
    operator new();
  }

  v2 = *MEMORY[0x1E69E9840];
  return 0;
}

void extract_segment_content_from_binary_on_disk(uint64_t a1)
{
  v2 = *MEMORY[0x1E69E9840];
  v1 = a1;
  operator new();
}

void sub_1D9738358(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  (*(*v11 + 8))(v11);
  _Unwind_Resume(a1);
}

void with_cfdata_from_file(const char *a1, uint64_t a2)
{
  v3 = open(a1, 0x1000000);
  if (v3 != -1)
  {
    v4 = v3;
    if (fstat(v3, &v11) || (v5 = mmap(0, v11.st_size, 1, 1, v4, 0), v5 == -1))
    {
      close(v4);
    }

    else
    {
      v6 = v5;
      signature_file_mapping_length = v11.st_size;
      close(v4);
      v10 = *byte_1F55055C8;
      v7 = CFAllocatorCreate(*MEMORY[0x1E695E480], &v10);
      v8 = CFDataCreateWithBytesNoCopy(0, v6, signature_file_mapping_length, v7);
      if (v8)
      {
        v9 = v8;
        (*(a2 + 16))(a2, v8);
        CFRelease(v9);
      }

      CFRelease(v7);
    }
  }
}

void *unmapping_deallocator(void *result, void *a2)
{
  if (result)
  {
    return munmap(result, signature_file_mapping_length);
  }

  return result;
}

void read_path_from_offset_in_cpp_memory(uint64_t a1@<X0>, unint64_t a2@<X1>, std::string *a3@<X8>)
{
  memset(&v9, 0, sizeof(v9));
  if (((a2 >= 0xFFFFFFFFFFFFFBFFLL) << 63) >> 63 == a2 >= 0xFFFFFFFFFFFFFBFFLL)
  {
    v4 = a2;
    if (a2 + 1025 > a2)
    {
      for (i = 1025; i; --i)
      {
        v7 = (*(*a1 + 32))(a1, v4, 1);
        if (!v7)
        {
          break;
        }

        if (!*v7)
        {
          *a3 = v9;
          memset(&v9, 0, sizeof(v9));
          v8 = 1;
          goto LABEL_8;
        }

        std::string::push_back(&v9, *v7);
        ++v4;
      }
    }
  }

  v8 = 0;
  a3->__r_.__value_.__s.__data_[0] = 0;
LABEL_8:
  a3[1].__r_.__value_.__s.__data_[0] = v8;
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

void sub_1D97385D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void TExtendedMachOHeader<SizeAndEndianness<Pointer64,LittleEndian>>::symbol_owner(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  *__source = TMachOHeader<SizeAndEndianness<Pointer64,LittleEndian>>::uuid(*(a1 + 24));
  *v4 = CSCppFlagsForHeader<SizeAndEndianness<Pointer64,LittleEndian>>(a1);
  *__dst = *(*(a1 + 24) + 4) | ((*(*(a1 + 24) + 8) & 0xFFFFFF) << 32);
  std::allocate_shared[abi:ne200100]<CSCppSymbolOwner,std::allocator<CSCppSymbolOwner>,UUID const*,unsigned int const&,unsigned long long const&,unsigned long long const&,unsigned int,CSCppArchitecture const,char const* const&,0>();
}

void sub_1D9738794(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CSCppFlagsForHeader<SizeAndEndianness<Pointer64,LittleEndian>>(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = v2 & 0x4000;
  v4 = v3 | 1;
  v5 = *(a1 + 24);
  v6 = *(v5 + 12);
  v7 = v2 & 0x38000000 | v3 | 1 | 0x100;
  v8 = v3 | 0x1001;
  if (v6 != 11)
  {
    v8 = v3 | 1;
  }

  if (v6 != 10)
  {
    v7 = v8;
  }

  v9 = v3 | 0x81;
  v10 = v3 | 5;
  if (v6 != 9)
  {
    v10 = v3 | 1;
  }

  if (v6 != 8)
  {
    v9 = v10;
  }

  if (v6 <= 9)
  {
    v7 = v9;
  }

  v11 = v3 | 0x21;
  v12 = v3 | 0x41;
  if (v6 != 7)
  {
    v12 = v3 | 1;
  }

  if (v6 != 6)
  {
    v11 = v12;
  }

  v13 = v3 | 0x801;
  v14 = v3 | 0x11;
  if (v6 != 2)
  {
    v14 = v4;
  }

  if (v6 == 1)
  {
    v14 = v13;
  }

  if (v6 > 5)
  {
    v14 = v11;
  }

  if (v6 <= 7)
  {
    v7 = v14;
  }

  v15 = (*(v5 + 24) >> 8) & 0x2000 | v7;
  is_protected = TMachOHeader<SizeAndEndianness<Pointer64,LittleEndian>>::is_protected(v5);
  v17 = v15 | 2;
  if (!is_protected)
  {
    v17 = v15;
  }

  v18 = *(a1 + 24);
  v19 = v17 | (*(v18 + 24) >> 31 << 9);
  if (*(a1 + 32))
  {
    v20 = v19 | 0x400;
  }

  else
  {
    v20 = v19;
  }

  if (TMachOHeader<SizeAndEndianness<Pointer64,LittleEndian>>::is_restricted(v18))
  {
    v20 |= 0x8000u;
  }

  v21 = TMachOHeader<SizeAndEndianness<Pointer64,LittleEndian>>::uses_cplusplus(*(a1 + 24));
  v22 = (*(*(a1 + 24) + 26) >> 5) & 1;
  if (v6 == 11)
  {
    LOBYTE(v22) = 1;
  }

  if ((v22 | v21))
  {
    return v20 | 0x200000;
  }

  else
  {
    return v20;
  }
}

_DWORD *TExtendedMachOHeader<SizeAndEndianness<Pointer64,LittleEndian>>::version_from_source_version_load_command@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = *MEMORY[0x1E69E9840];
  result = TMachOHeader<SizeAndEndianness<Pointer64,LittleEndian>>::source_version(*(a1 + 24));
  if (result)
  {
    v4 = *(result + 1);
    if ((result[2] & 0x3FF) != 0)
    {
      result = snprintf(__str, 0x20uLL, "%u.%u.%u.%u.%u");
    }

    else if (((v4 >> 10) & 0x3FF) != 0)
    {
      result = snprintf(__str, 0x20uLL, "%u.%u.%u.%u");
    }

    else if (((v4 >> 20) & 0x3FF) != 0)
    {
      result = snprintf(__str, 0x20uLL, "%u.%u.%u");
    }

    else if (((v4 >> 30) & 0x3FF) != 0)
    {
      result = snprintf(__str, 0x20uLL, "%u.%u");
    }

    else
    {
      result = snprintf(__str, 0x20uLL, "%u");
    }

    v5 = v8;
    *a2 = *__str;
    *(a2 + 16) = v5;
    *(a2 + 32) = 1;
  }

  else
  {
    *a2 = 0;
    *(a2 + 32) = 0;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

_DWORD *TExtendedMachOHeader<SizeAndEndianness<Pointer64,LittleEndian>>::version_from_id_dylib_load_command@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v8 = *MEMORY[0x1E69E9840];
  result = TMachOHeader<SizeAndEndianness<Pointer64,LittleEndian>>::id_dylib(*(a1 + 24));
  if (result)
  {
    if (result[4])
    {
      result = snprintf(__str, 0x20uLL, "%u.%u.%u");
    }

    else if (BYTE1(result[4]))
    {
      result = snprintf(__str, 0x20uLL, "%u.%u");
    }

    else
    {
      result = snprintf(__str, 0x20uLL, "%u");
    }

    v4 = v7;
    *a2 = *__str;
    *(a2 + 16) = v4;
    *(a2 + 32) = 1;
  }

  else
  {
    *a2 = 0;
    *(a2 + 32) = 0;
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void *std::__shared_ptr_emplace<CSCppSymbolOwner>::__shared_ptr_emplace[abi:ne200100]<UUID const*,unsigned int const&,unsigned long long const&,unsigned long long const&,unsigned int,CSCppArchitecture const,char const* const&,std::allocator<CSCppSymbolOwner>,0>(void *a1, void *a2, unsigned int *a3, void *a4, void *a5, unsigned int *a6, void *a7, void *a8)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F5504DE8;
  CSCppSymbolOwner::CSCppSymbolOwner(a1 + 3, *a2, *a3, *a4, *a5, *a6, *a7, *a8);
  return a1;
}

unint64_t TMachOHeader<SizeAndEndianness<Pointer64,LittleEndian>>::is_protected(uint64_t a1)
{
  v1 = *(a1 + 20);
  v3 = *(a1 + 16);
  v4 = a1;
  v5 = a1 + 32 + v1;
  v6 = a1 + 32;
  while (1)
  {
    result = TLoadCommandIterator<SizeAndEndianness<Pointer32,LittleEndian>>::command(&v3);
    if (!result)
    {
      break;
    }

    if (*result == 25 && (*(result + 68) & 8) != 0)
    {
      return 1;
    }
  }

  return result;
}

unint64_t TMachOHeader<SizeAndEndianness<Pointer64,LittleEndian>>::is_restricted(uint64_t a1)
{
  v1 = *(a1 + 20);
  v4 = *(a1 + 16);
  v5 = a1;
  v6 = a1 + 32 + v1;
  v7 = a1 + 32;
  result = TLoadCommandIterator<SizeAndEndianness<Pointer32,LittleEndian>>::command(&v4);
  if (result)
  {
    v3 = result;
    while (*v3 != 25 || strncmp("__RESTRICT", (v3 + 8), 0xFuLL) || !TSegmentLoadCommand<SizeAndEndianness<Pointer64,LittleEndian>>::section_named(v3, "__restrict"))
    {
      result = TLoadCommandIterator<SizeAndEndianness<Pointer32,LittleEndian>>::command(&v4);
      v3 = result;
      if (!result)
      {
        return result;
      }
    }

    return 1;
  }

  return result;
}

const char *TSegmentLoadCommand<SizeAndEndianness<Pointer64,LittleEndian>>::section_named(uint64_t a1, char *__s1)
{
  v2 = *(a1 + 64);
  if (!v2)
  {
    return 0;
  }

  for (i = (a1 + 72); strncmp(__s1, i, 0x10uLL); i += 80)
  {
    if (!--v2)
    {
      return 0;
    }
  }

  return i;
}

unint64_t TMachOHeader<SizeAndEndianness<Pointer64,LittleEndian>>::uses_cplusplus(uint64_t a1)
{
  v1 = *(a1 + 20);
  v5 = *(a1 + 16);
  v6 = a1;
  v7 = a1 + 32 + v1;
  v8 = a1 + 32;
  result = TLoadCommandIterator<SizeAndEndianness<Pointer32,LittleEndian>>::command(&v5);
  if (result)
  {
    v3 = result;
    do
    {
      if (*v3 == 12)
      {
        v4 = *(v3 + 2);
        if (strstr(&v3[v4], "libc++.") || strstr(&v3[v4], "libstdc++."))
        {
          return 1;
        }
      }

      else if (*v3 == 15)
      {
        return 1;
      }

      result = TLoadCommandIterator<SizeAndEndianness<Pointer32,LittleEndian>>::command(&v5);
      v3 = result;
    }

    while (result);
  }

  return result;
}

_DWORD *TMachOHeader<SizeAndEndianness<Pointer64,LittleEndian>>::source_version(uint64_t a1)
{
  v1 = *(a1 + 20);
  v3 = *(a1 + 16);
  v4 = a1;
  v5 = a1 + 32 + v1;
  v6 = a1 + 32;
  do
  {
    result = TLoadCommandIterator<SizeAndEndianness<Pointer32,LittleEndian>>::command(&v3);
  }

  while (result && *result != 42);
  return result;
}

_DWORD *TMachOHeader<SizeAndEndianness<Pointer64,LittleEndian>>::id_dylib(uint64_t a1)
{
  v1 = *(a1 + 20);
  v3 = *(a1 + 16);
  v4 = a1;
  v5 = a1 + 32 + v1;
  v6 = a1 + 32;
  do
  {
    result = TLoadCommandIterator<SizeAndEndianness<Pointer32,LittleEndian>>::command(&v3);
  }

  while (result && *result != 13);
  return result;
}

uint64_t std::vector<std::shared_ptr<CSCppSymbolOwner>>::__init_with_size[abi:ne200100]<std::shared_ptr<CSCppSymbolOwner> const*,std::shared_ptr<CSCppSymbolOwner> const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::shared_ptr<CSCppSymbolOwner>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1D9738F34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::shared_ptr<CSCppSymbolOwner>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void TExtendedMachOHeader<SizeAndEndianness<Pointer32,LittleEndian>>::symbol_owner(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  *__source = TMachOHeader<SizeAndEndianness<Pointer32,LittleEndian>>::uuid(*(a1 + 24));
  *v4 = CSCppFlagsForHeader<SizeAndEndianness<Pointer32,LittleEndian>>(a1);
  *__dst = *(*(a1 + 24) + 4) | ((*(*(a1 + 24) + 8) & 0xFFFFFF) << 32);
  std::allocate_shared[abi:ne200100]<CSCppSymbolOwner,std::allocator<CSCppSymbolOwner>,UUID const*,unsigned int const&,unsigned long long const&,unsigned long long const&,unsigned int,CSCppArchitecture const,char const* const&,0>();
}

void sub_1D97390F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CSCppFlagsForHeader<SizeAndEndianness<Pointer32,LittleEndian>>(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = v2 & 0x4000;
  v4 = v3 | 1;
  v5 = *(a1 + 24);
  v6 = *(v5 + 12);
  v7 = v2 & 0x38000000 | v3 | 1 | 0x100;
  v8 = v3 | 0x1001;
  if (v6 != 11)
  {
    v8 = v3 | 1;
  }

  if (v6 != 10)
  {
    v7 = v8;
  }

  v9 = v3 | 0x81;
  v10 = v3 | 5;
  if (v6 != 9)
  {
    v10 = v3 | 1;
  }

  if (v6 != 8)
  {
    v9 = v10;
  }

  if (v6 <= 9)
  {
    v7 = v9;
  }

  v11 = v3 | 0x21;
  v12 = v3 | 0x41;
  if (v6 != 7)
  {
    v12 = v3 | 1;
  }

  if (v6 != 6)
  {
    v11 = v12;
  }

  v13 = v3 | 0x801;
  v14 = v3 | 0x11;
  if (v6 != 2)
  {
    v14 = v4;
  }

  if (v6 == 1)
  {
    v14 = v13;
  }

  if (v6 > 5)
  {
    v14 = v11;
  }

  if (v6 <= 7)
  {
    v7 = v14;
  }

  v15 = (*(v5 + 24) >> 8) & 0x2000 | v7;
  is_protected = TMachOHeader<SizeAndEndianness<Pointer32,LittleEndian>>::is_protected(v5);
  v17 = v15 | 2;
  if (!is_protected)
  {
    v17 = v15;
  }

  v18 = *(a1 + 24);
  v19 = v17 | (*(v18 + 24) >> 31 << 9);
  if (*(a1 + 32))
  {
    v20 = v19 | 0x400;
  }

  else
  {
    v20 = v19;
  }

  if (TMachOHeader<SizeAndEndianness<Pointer32,LittleEndian>>::is_restricted(v18))
  {
    v20 |= 0x8000u;
  }

  v21 = TMachOHeader<SizeAndEndianness<Pointer32,LittleEndian>>::uses_cplusplus(*(a1 + 24));
  v22 = (*(*(a1 + 24) + 26) >> 5) & 1;
  if (v6 == 11)
  {
    LOBYTE(v22) = 1;
  }

  if ((v22 | v21))
  {
    return v20 | 0x200000;
  }

  else
  {
    return v20;
  }
}

_DWORD *TExtendedMachOHeader<SizeAndEndianness<Pointer32,LittleEndian>>::version_from_source_version_load_command@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = *MEMORY[0x1E69E9840];
  result = TMachOHeader<SizeAndEndianness<Pointer32,LittleEndian>>::source_version(*(a1 + 24));
  if (result)
  {
    v4 = *(result + 1);
    if ((result[2] & 0x3FF) != 0)
    {
      result = snprintf(__str, 0x20uLL, "%u.%u.%u.%u.%u");
    }

    else if (((v4 >> 10) & 0x3FF) != 0)
    {
      result = snprintf(__str, 0x20uLL, "%u.%u.%u.%u");
    }

    else if (((v4 >> 20) & 0x3FF) != 0)
    {
      result = snprintf(__str, 0x20uLL, "%u.%u.%u");
    }

    else if (((v4 >> 30) & 0x3FF) != 0)
    {
      result = snprintf(__str, 0x20uLL, "%u.%u");
    }

    else
    {
      result = snprintf(__str, 0x20uLL, "%u");
    }

    v5 = v8;
    *a2 = *__str;
    *(a2 + 16) = v5;
    *(a2 + 32) = 1;
  }

  else
  {
    *a2 = 0;
    *(a2 + 32) = 0;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

_DWORD *TExtendedMachOHeader<SizeAndEndianness<Pointer32,LittleEndian>>::version_from_id_dylib_load_command@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v8 = *MEMORY[0x1E69E9840];
  result = TMachOHeader<SizeAndEndianness<Pointer32,LittleEndian>>::id_dylib(*(a1 + 24));
  if (result)
  {
    if (result[4])
    {
      result = snprintf(__str, 0x20uLL, "%u.%u.%u");
    }

    else if (BYTE1(result[4]))
    {
      result = snprintf(__str, 0x20uLL, "%u.%u");
    }

    else
    {
      result = snprintf(__str, 0x20uLL, "%u");
    }

    v4 = v7;
    *a2 = *__str;
    *(a2 + 16) = v4;
    *(a2 + 32) = 1;
  }

  else
  {
    *a2 = 0;
    *(a2 + 32) = 0;
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t TMachOHeader<SizeAndEndianness<Pointer32,LittleEndian>>::is_protected(uint64_t a1)
{
  v1 = *(a1 + 20);
  v3 = *(a1 + 16);
  v4 = a1;
  v5 = a1 + 28 + v1;
  v6 = a1 + 28;
  while (1)
  {
    result = TLoadCommandIterator<SizeAndEndianness<Pointer32,LittleEndian>>::command(&v3);
    if (!result)
    {
      break;
    }

    if (*result == 1 && (*(result + 52) & 8) != 0)
    {
      return 1;
    }
  }

  return result;
}

unint64_t TMachOHeader<SizeAndEndianness<Pointer32,LittleEndian>>::is_restricted(uint64_t a1)
{
  v1 = *(a1 + 20);
  v4 = *(a1 + 16);
  v5 = a1;
  v6 = a1 + 28 + v1;
  v7 = a1 + 28;
  result = TLoadCommandIterator<SizeAndEndianness<Pointer32,LittleEndian>>::command(&v4);
  if (result)
  {
    v3 = result;
    while (*v3 != 1 || strncmp("__RESTRICT", (v3 + 8), 0xFuLL) || !TSegmentLoadCommand<SizeAndEndianness<Pointer32,LittleEndian>>::section_named(v3, "__restrict"))
    {
      result = TLoadCommandIterator<SizeAndEndianness<Pointer32,LittleEndian>>::command(&v4);
      v3 = result;
      if (!result)
      {
        return result;
      }
    }

    return 1;
  }

  return result;
}

const char *TSegmentLoadCommand<SizeAndEndianness<Pointer32,LittleEndian>>::section_named(uint64_t a1, char *__s1)
{
  v2 = *(a1 + 48);
  if (!v2)
  {
    return 0;
  }

  for (i = (a1 + 56); strncmp(__s1, i, 0x10uLL); i += 68)
  {
    if (!--v2)
    {
      return 0;
    }
  }

  return i;
}

unint64_t TMachOHeader<SizeAndEndianness<Pointer32,LittleEndian>>::uses_cplusplus(uint64_t a1)
{
  v1 = *(a1 + 20);
  v5 = *(a1 + 16);
  v6 = a1;
  v7 = a1 + 28 + v1;
  v8 = a1 + 28;
  result = TLoadCommandIterator<SizeAndEndianness<Pointer32,LittleEndian>>::command(&v5);
  if (result)
  {
    v3 = result;
    do
    {
      if (*v3 == 12)
      {
        v4 = *(v3 + 2);
        if (strstr(&v3[v4], "libc++.") || strstr(&v3[v4], "libstdc++."))
        {
          return 1;
        }
      }

      else if (*v3 == 15)
      {
        return 1;
      }

      result = TLoadCommandIterator<SizeAndEndianness<Pointer32,LittleEndian>>::command(&v5);
      v3 = result;
    }

    while (result);
  }

  return result;
}

_DWORD *TMachOHeader<SizeAndEndianness<Pointer32,LittleEndian>>::source_version(uint64_t a1)
{
  v1 = *(a1 + 20);
  v3 = *(a1 + 16);
  v4 = a1;
  v5 = a1 + 28 + v1;
  v6 = a1 + 28;
  do
  {
    result = TLoadCommandIterator<SizeAndEndianness<Pointer32,LittleEndian>>::command(&v3);
  }

  while (result && *result != 42);
  return result;
}

_DWORD *TMachOHeader<SizeAndEndianness<Pointer32,LittleEndian>>::id_dylib(uint64_t a1)
{
  v1 = *(a1 + 20);
  v3 = *(a1 + 16);
  v4 = a1;
  v5 = a1 + 28 + v1;
  v6 = a1 + 28;
  do
  {
    result = TLoadCommandIterator<SizeAndEndianness<Pointer32,LittleEndian>>::command(&v3);
  }

  while (result && *result != 13);
  return result;
}

uint64_t ___ZL34iterate_symbol_owners_from_archivePKcyjRK17CSCppArchitectureS0_bU13block_pointerFvNSt3__110shared_ptrI16CSCppSymbolOwnerEEE_block_invoke(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, _BYTE *a5, _BYTE *a6)
{
  v37 = *MEMORY[0x1E69E9840];
  v12 = snprintf(__str, 0x400uLL, "%s(", *(a1 + 48));
  if (v12 <= 0x400)
  {
    v13 = &__str[v12];
    v14 = 1024 - v12;
    v15 = CSCppArchiveEntry::name_cpy(a3, v13, v14);
    if (v14 >= v15)
    {
      strlcat(&v13[v15], ")", v14 - v15);
    }
  }

  v16 = CSCppArchiveEntry::offset_to_macho_header(a3);
  v17 = (*(*a2 + 32))(a2, v16, 4);
  if (v17 && ((v18 = *v17, *v17 > -822415875) ? ((v18 + 17958194) >= 2 ? (v19 = v18 == -822415874) : (v19 = 1), v20 = -805638658) : ((v18 + 889275714) >= 2 ? (v19 = v18 == -1095041334) : (v19 = 1), v20 = -1078264118), !v19 ? (v21 = v18 == v20) : (v21 = 1), v21))
  {
    v22 = CSCppArchiveEntry::size_without_name(a3);
    v23 = strtoul(a3 + 16, 0, 10);
    v24 = *(a1 + 72);
    v25 = *(a1 + 56);
    v26 = *(a1 + 64);
    v27 = *(a1 + 76);
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 0x40000000;
    v31[2] = ___ZL34iterate_symbol_owners_from_archivePKcyjRK17CSCppArchitectureS0_bU13block_pointerFvNSt3__110shared_ptrI16CSCppSymbolOwnerEEE_block_invoke_50;
    v31[3] = &unk_1E8583AE8;
    v31[5] = v16 + a4;
    v31[6] = v22;
    v31[4] = *(a1 + 32);
    result = iterate_symbol_owners_from_memory(a2, __str, v23, v16, v24 | 0x4000u, v25, v26, v27, v31);
    *(*(*(a1 + 40) + 8) + 24) |= result;
    if (result && *(a1 + 76) == 1)
    {
      *a5 = 1;
    }

    *a6 = 1;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v29 = *(a1 + 48);
      *buf = 136315394;
      v33 = v29;
      v34 = 2080;
      v35 = __str;
      _os_log_impl(&dword_1D96E9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Corrupt archive entry in %s -- no header found for entry %s\n", buf, 0x16u);
    }

    result = fprintf(*MEMORY[0x1E69E9848], "Corrupt archive entry in %s -- no header found for entry %s\n", *(a1 + 48), __str);
  }

  v30 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CSCppArchiveEntry::offset_to_macho_header(CSCppArchiveEntry *this)
{
  if (*this == 35 && *(this + 1) == 49 && *(this + 2) == 47)
  {
    return strtoul(this + 3, 0, 10) + 60;
  }

  else
  {
    return 60;
  }
}

unint64_t CSCppArchiveEntry::size_without_name(CSCppArchiveEntry *this)
{
  if (*this != 35 || *(this + 1) != 49 || *(this + 2) != 47)
  {
    return strtoul(this + 48, 0, 10);
  }

  v2 = strtoul(this + 48, 0, 10);
  return v2 - strtoul(this + 3, 0, 10);
}

void ___ZL34iterate_symbol_owners_from_archivePKcyjRK17CSCppArchitectureS0_bU13block_pointerFvNSt3__110shared_ptrI16CSCppSymbolOwnerEEE_block_invoke_50(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  *(v3 + 152) = *(a1 + 40);
  v4 = *(a1 + 32);
  v5 = v3;
  v6 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(v4 + 16))(v4, &v5);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void sub_1D9739B20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TMemoryView<SizeAndEndianness<Pointer64,LittleEndian>>::archive_entry_at(void *a1, uint64_t a2, int a3)
{
  v6 = 60;
  do
  {
    v7 = (*(**a1 + 32))(*a1, a2, v6);
    v9 = v7;
    if (!v7)
    {
      break;
    }

    if (*(v7 + 58) != 96)
    {
      return 0;
    }

    v10 = *(v7 + 59);
    if (v10 != 10 || a3 == 0)
    {
      if (v10 != 10)
      {
        return 0;
      }

      return v9;
    }

    v12 = v8;
    v6 = strtoul((v7 + 48), 0, 10) + 60;
  }

  while (v6 > v12);
  return v9;
}

uint64_t **std::__hash_table<std::__hash_value_type<std::pair<std::string,unsigned long long>,std::unordered_map<std::string,unsigned long long>>,std::__unordered_map_hasher<std::pair<std::string,unsigned long long>,std::__hash_value_type<std::pair<std::string,unsigned long long>,std::unordered_map<std::string,unsigned long long>>,ArchiveAndArchOffsetHash,std::equal_to<std::pair<std::string,unsigned long long>>,true>,std::__unordered_map_equal<std::pair<std::string,unsigned long long>,std::__hash_value_type<std::pair<std::string,unsigned long long>,std::unordered_map<std::string,unsigned long long>>,std::equal_to<std::pair<std::string,unsigned long long>>,ArchiveAndArchOffsetHash,true>,std::allocator<std::__hash_value_type<std::pair<std::string,unsigned long long>,std::unordered_map<std::string,unsigned long long>>>>::find<std::pair<std::string,unsigned long long>>(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = std::__string_hash<char>::operator()[abi:ne200100](&v21, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v2[3];
  v7 = (v4 + (v6 << 6) + (v6 >> 2) + 2654435769u) ^ v6;
  v8 = vcnt_s8(v5);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = (v4 + (v6 << 6) + (v6 >> 2) + 2654435769u) ^ v6;
    if (v7 >= *&v5)
    {
      v10 = v7 % *&v5;
    }
  }

  else
  {
    v10 = v7 & (*&v5 - 1);
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11)
  {
    return 0;
  }

  v12 = *v11;
  if (*v11)
  {
    v13 = *(v2 + 23);
    if (v13 >= 0)
    {
      v14 = *(v2 + 23);
    }

    else
    {
      v14 = v2[1];
    }

    if (v13 < 0)
    {
      v2 = *v2;
    }

    do
    {
      v15 = v12[1];
      if (v15 == v7)
      {
        v16 = *(v12 + 39);
        v17 = v16;
        if (v16 < 0)
        {
          v16 = v12[3];
        }

        if (v16 == v14)
        {
          v18 = v17 >= 0 ? (v12 + 2) : v12[2];
          if (!memcmp(v18, v2, v14) && v12[5] == v6)
          {
            return v12;
          }
        }
      }

      else
      {
        if (v9 > 1)
        {
          if (v15 >= *&v5)
          {
            v15 %= *&v5;
          }
        }

        else
        {
          v15 &= *&v5 - 1;
        }

        if (v15 != v10)
        {
          return 0;
        }
      }

      v12 = *v12;
    }

    while (v12);
  }

  return v12;
}

size_t CSCppArchiveEntry::name_cpy(CSCppArchiveEntry *this, char *__dst, size_t __n)
{
  if (__PAIR64__(*(this + 1), *this) == 0x3100000023 && *(this + 2) == 47)
  {
    strncpy(__dst, this + 60, __n);
    v5 = &__dst[__n - 1];
  }

  else
  {
    v6 = 15;
    do
    {
      v7 = v6;
      if (v6 == -1)
      {
        break;
      }

      v8 = *(this + v6--);
    }

    while (v8 == 32);
    if (v7 + 1 < __n - 1)
    {
      v9 = v7 + 1;
    }

    else
    {
      v9 = __n - 1;
    }

    strncpy(__dst, this, v9);
    v5 = &__dst[v9];
  }

  *v5 = 0;

  return strlen(__dst);
}

void std::unique_lock<std::mutex>::lock[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    if (*(a1 + 8) != 1)
    {
      std::mutex::lock(v2);
      *(a1 + 8) = 1;
      return;
    }
  }

  else
  {
    std::__throw_system_error(1, "unique_lock::lock: references null mutex");
  }

  std::__throw_system_error(11, "unique_lock::lock: already locked");
  std::__hash_table<std::__hash_value_type<std::string,unsigned long long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long long>>>::__emplace_unique_impl<char (&)[1024],unsigned long long &>();
}

void sub_1D9739EFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D9739FB4(_Unwind_Exception *a1)
{
  *v2 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>::operator()[abi:ne200100](v3, v1);
  _Unwind_Resume(a1);
}

const void **std::__hash_table<std::__hash_value_type<std::string,unsigned long long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long long>>>::__node_insert_unique(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2 + 16);
  *(v2 + 8) = v4;
  v5 = std::__hash_table<std::__hash_value_type<std::string,unsigned long long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long long>>>::__node_insert_unique_prepare[abi:ne200100](a1, v4, (v2 + 16));
  if (v5)
  {
    return v5;
  }

  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__node_insert_unique_perform[abi:ne200100](a1, v2);
  return v2;
}

const void **std::__hash_table<std::__hash_value_type<std::string,unsigned long long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long long>>>::__node_insert_unique_prepare[abi:ne200100](uint64_t a1, unint64_t a2, const void **a3)
{
  v4 = *(a1 + 8);
  if (v4)
  {
    v7 = vcnt_s8(v4);
    v7.i16[0] = vaddlv_u8(v7);
    v8 = v7.u32[0];
    if (v7.u32[0] > 1uLL)
    {
      v9 = v4 <= a2 ? a2 % v4 : a2;
    }

    else
    {
      v9 = (v4 - 1) & a2;
    }

    v10 = *(*a1 + 8 * v9);
    if (v10)
    {
      for (i = *v10; i; i = *i)
      {
        v12 = i[1];
        if (v12 == a2)
        {
          if (std::equal_to<std::string>::operator()[abi:ne200100](a1, i + 2, a3))
          {
            return i;
          }
        }

        else
        {
          if (v8 > 1)
          {
            if (v12 >= v4)
            {
              v12 %= v4;
            }
          }

          else
          {
            v12 &= v4 - 1;
          }

          if (v12 != v9)
          {
            break;
          }
        }
      }
    }
  }

  v13 = (*(a1 + 24) + 1);
  v14 = *(a1 + 32);
  if (!v4 || (v14 * v4) < v13)
  {
    v15 = 1;
    if (v4 >= 3)
    {
      v15 = (v4 & (v4 - 1)) != 0;
    }

    v16 = v15 | (2 * v4);
    v17 = vcvtps_u32_f32(v13 / v14);
    if (v16 <= v17)
    {
      v18 = v17;
    }

    else
    {
      v18 = v16;
    }

    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__rehash<true>(a1, v18);
  }

  return 0;
}

void sub_1D973A1DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::pair<std::string,unsigned long long>,std::unordered_map<std::string,unsigned long long>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::pair<std::string,unsigned long long>,std::unordered_map<std::string,unsigned long long>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t **std::__hash_table<std::__hash_value_type<std::pair<std::string,unsigned long long>,std::unordered_map<std::string,unsigned long long>>,std::__unordered_map_hasher<std::pair<std::string,unsigned long long>,std::__hash_value_type<std::pair<std::string,unsigned long long>,std::unordered_map<std::string,unsigned long long>>,ArchiveAndArchOffsetHash,std::equal_to<std::pair<std::string,unsigned long long>>,true>,std::__unordered_map_equal<std::pair<std::string,unsigned long long>,std::__hash_value_type<std::pair<std::string,unsigned long long>,std::unordered_map<std::string,unsigned long long>>,std::equal_to<std::pair<std::string,unsigned long long>>,ArchiveAndArchOffsetHash,true>,std::allocator<std::__hash_value_type<std::pair<std::string,unsigned long long>,std::unordered_map<std::string,unsigned long long>>>>::__node_insert_unique(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  v4 = (std::__string_hash<char>::operator()[abi:ne200100](&v7, a2 + 16) + (*(v2 + 40) << 6) + (*(v2 + 40) >> 2) + 2654435769u) ^ *(v2 + 40);
  *(v2 + 8) = v4;
  v5 = std::__hash_table<std::__hash_value_type<std::pair<std::string,unsigned long long>,std::unordered_map<std::string,unsigned long long>>,std::__unordered_map_hasher<std::pair<std::string,unsigned long long>,std::__hash_value_type<std::pair<std::string,unsigned long long>,std::unordered_map<std::string,unsigned long long>>,ArchiveAndArchOffsetHash,std::equal_to<std::pair<std::string,unsigned long long>>,true>,std::__unordered_map_equal<std::pair<std::string,unsigned long long>,std::__hash_value_type<std::pair<std::string,unsigned long long>,std::unordered_map<std::string,unsigned long long>>,std::equal_to<std::pair<std::string,unsigned long long>>,ArchiveAndArchOffsetHash,true>,std::allocator<std::__hash_value_type<std::pair<std::string,unsigned long long>,std::unordered_map<std::string,unsigned long long>>>>::__node_insert_unique_prepare[abi:ne200100](a1, v4, (v2 + 16));
  if (v5)
  {
    return v5;
  }

  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__node_insert_unique_perform[abi:ne200100](a1, v2);
  return v2;
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::pair<std::string,unsigned long long>,std::unordered_map<std::string,unsigned long long>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::pair<std::string,unsigned long long>,std::unordered_map<std::string,unsigned long long>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::pair<std::string,unsigned long long> const,std::unordered_map<std::string,unsigned long long>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t **std::__hash_table<std::__hash_value_type<std::pair<std::string,unsigned long long>,std::unordered_map<std::string,unsigned long long>>,std::__unordered_map_hasher<std::pair<std::string,unsigned long long>,std::__hash_value_type<std::pair<std::string,unsigned long long>,std::unordered_map<std::string,unsigned long long>>,ArchiveAndArchOffsetHash,std::equal_to<std::pair<std::string,unsigned long long>>,true>,std::__unordered_map_equal<std::pair<std::string,unsigned long long>,std::__hash_value_type<std::pair<std::string,unsigned long long>,std::unordered_map<std::string,unsigned long long>>,std::equal_to<std::pair<std::string,unsigned long long>>,ArchiveAndArchOffsetHash,true>,std::allocator<std::__hash_value_type<std::pair<std::string,unsigned long long>,std::unordered_map<std::string,unsigned long long>>>>::__node_insert_unique_prepare[abi:ne200100](uint64_t a1, unint64_t a2, const void **a3)
{
  v4 = *(a1 + 8);
  if (v4)
  {
    v6 = vcnt_s8(v4);
    v6.i16[0] = vaddlv_u8(v6);
    v7 = v6.u32[0];
    if (v6.u32[0] > 1uLL)
    {
      v8 = v4 <= a2 ? a2 % v4 : a2;
    }

    else
    {
      v8 = (v4 - 1) & a2;
    }

    v9 = *(*a1 + 8 * v8);
    if (v9)
    {
      v10 = *v9;
      if (*v9)
      {
        v11 = *(a3 + 23);
        if (v11 >= 0)
        {
          v12 = *(a3 + 23);
        }

        else
        {
          v12 = a3[1];
        }

        if (v11 >= 0)
        {
          v13 = a3;
        }

        else
        {
          v13 = *a3;
        }

        v14 = a3[3];
        do
        {
          v15 = v10[1];
          if (v15 == a2)
          {
            v16 = *(v10 + 39);
            v17 = v16;
            if (v16 < 0)
            {
              v16 = v10[3];
            }

            if (v16 == v12)
            {
              v18 = v17 >= 0 ? (v10 + 2) : v10[2];
              if (!memcmp(v18, v13, v12) && v10[5] == v14)
              {
                return v10;
              }
            }
          }

          else
          {
            if (v7 > 1)
            {
              if (v15 >= v4)
              {
                v15 %= v4;
              }
            }

            else
            {
              v15 &= v4 - 1;
            }

            if (v15 != v8)
            {
              break;
            }
          }

          v10 = *v10;
        }

        while (v10);
      }
    }
  }

  v20 = (*(a1 + 24) + 1);
  v21 = *(a1 + 32);
  if (!v4 || (v21 * v4) < v20)
  {
    v22 = 1;
    if (v4 >= 3)
    {
      v22 = (v4 & (v4 - 1)) != 0;
    }

    v23 = v22 | (2 * v4);
    v24 = vcvtps_u32_f32(v20 / v21);
    if (v23 <= v24)
    {
      v25 = v24;
    }

    else
    {
      v25 = v23;
    }

    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__rehash<true>(a1, v25);
  }

  return 0;
}

void std::__destroy_at[abi:ne200100]<std::pair<std::pair<std::string,unsigned long long> const,std::unordered_map<std::string,unsigned long long>>,0>(uint64_t a1)
{
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(a1 + 32);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t ___ZL24get_archive_entry_memoryPKcy_block_invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 0, 60);
  if (result)
  {
    if (*(result + 58) == 96 && *(result + 59) == 10)
    {
      return strtoul((result + 48), 0, 10) + 60;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

_DWORD *TMemoryView<SizeAndEndianness<Pointer64,LittleEndian>>::foreach_fileset_entry(void *a1, uint64_t a2, uint64_t a3)
{
  result = TMemoryView<SizeAndEndianness<Pointer64,LittleEndian>>::macho_header_at(a1, a2, 1);
  if (result)
  {
    v5 = result[5];
    v8 = result[4];
    v9 = result;
    v10 = result + v5 + 32;
    v11 = result + 8;
    v7 = 0;
    do
    {
      result = TLoadCommandIterator<SizeAndEndianness<Pointer32,LittleEndian>>::command(&v8);
      if (!result)
      {
        break;
      }

      if (*result == -2147483595 && a3 != 0)
      {
        result = (*(a3 + 16))(a3, result, &v7);
      }
    }

    while (v7 != 1);
  }

  return result;
}

uint64_t ___ZZ39extract_segment_content_from_kc_fileset17CSCppArchitecturePKcS1_4UUIDyyU13block_pointerFvPKhmEENK3__0clES1__block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = *(a2 + 16);
  v6 = *(a1 + 80);
  v7 = *(a1 + 88);
  v8 = *(a1 + 48);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 0x40000000;
  v10[2] = ___ZZ39extract_segment_content_from_kc_fileset17CSCppArchitecturePKcS1_4UUIDyyU13block_pointerFvPKhmEENK3__0clES1__block_invoke_2;
  v10[3] = &unk_1E8583B58;
  v10[4] = *(a1 + 32);
  v11 = *(a1 + 56);
  v12 = v8;
  result = TMemoryView<SizeAndEndianness<Pointer64,LittleEndian>>::provide_segment_content_matching_owner_uuid((a1 + 40), v5, v6, v7, v8, 0, v10);
  **(a1 + 72) = result;
  if (result)
  {
    *a3 = 1;
  }

  return result;
}

uint64_t TMemoryView<SizeAndEndianness<Pointer64,LittleEndian>>::provide_segment_content_matching_owner_uuid(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, int a6, uint64_t a7)
{
  v28 = *MEMORY[0x1E69E9840];
  *v27 = a3;
  *&v27[8] = a4;
  result = TMemoryView<SizeAndEndianness<Pointer64,LittleEndian>>::macho_header_at(a1, a2, 1);
  if (result)
  {
    v13 = 0;
    v14 = *(result + 20);
    v23 = *(result + 16);
    v24 = result;
    v25 = result + 32 + v14;
    v26 = result + 32;
    while (1)
    {
      v15 = TLoadCommandIterator<SizeAndEndianness<Pointer32,LittleEndian>>::command(&v23);
      if (!v15)
      {
        break;
      }

      v16 = v15;
      if (*v15 == 27)
      {
        if (*v27 == *(v15 + 8) && *&v27[8] == *(v15 + 16))
        {
          v19 = v13;
          goto LABEL_17;
        }
      }

      else if (*v15 == 25)
      {
        v17 = strlen((v15 + 8));
        if (!strncmp((v16 + 8), a5, v17) && strlen(a5) == v17)
        {
          v13 = v16;
        }
      }
    }

    v19 = 0;
LABEL_17:
    if (UUID::is_null(v27))
    {
      v19 = v13;
    }

    if (v19 && *(v19 + 48))
    {
      if (a6)
      {
        v20 = a2;
      }

      else
      {
        v20 = 0;
      }

      v21 = (*(**a1 + 32))(*a1, *(v19 + 40) + v20);
      (*(a7 + 16))(a7, v21, *(v19 + 48));
      result = 1;
    }

    else
    {
      result = 0;
    }
  }

  v22 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ___ZZ39extract_segment_content_from_kc_fileset17CSCppArchitecturePKcS1_4UUIDyyU13block_pointerFvPKhmEENK3__0clES1__block_invoke_2(void *a1, uint64_t a2, unint64_t a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a1[5];
  if (v4)
  {
    if (a1[6] + v4 > a3)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v5 = a1[7];
        *buf = 136315138;
        v15 = v5;
        _os_log_impl(&dword_1D96E9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Requested vm range length in %s does not exist in file.\n", buf, 0xCu);
      }

      fprintf(*MEMORY[0x1E69E9848], "Requested vm range length in %s does not exist in file.\n", a1[7]);
      result = (*(a1[4] + 16))();
      v7 = *MEMORY[0x1E69E9840];
      return result;
    }

    v12 = a1[4];
    v10 = *(a1[4] + 16);
    v13 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v8 = a1[4];
    if (a1[6] < a3)
    {
      v9 = a1[6];
    }

    v10 = *(v8 + 16);
    v11 = *MEMORY[0x1E69E9840];
  }

  return v10();
}

uint64_t TMemoryView<SizeAndEndianness<Pointer32,LittleEndian>>::foreach_arch_in_macho_fat32_header(void *a1, unsigned int a2, uint64_t a3)
{
  v5 = a2;
  v6 = 8;
  while (1)
  {
    v7 = (*(**a1 + 32))(*a1, v5, v6);
    if (!v7 || *v7 != -1095041334 || !v7[1] || bswap32(v7[1]) > 0x2C)
    {
      break;
    }

    v6 = 20 * bswap32(v7[1]) + 8;
    if (v8 >= v6)
    {
      v9 = bswap32(v7[1]);
      v10 = v7 + 2;
      goto LABEL_9;
    }
  }

  v10 = 0;
  v9 = 0;
LABEL_9:
  v17 = 0;
  if (!v9)
  {
    return 0;
  }

  v11 = 0;
  v12 = 0;
  v13 = v9;
  v14 = 20 * v9 + 8;
  v15 = 1;
  do
  {
    if (v14 <= bswap32(v10[2]))
    {
      if (a3)
      {
        (*(a3 + 16))(a3, v10, &v17);
        v11 = v17;
      }

      ++v12;
    }

    if (v15 >= v13)
    {
      break;
    }

    v10 += 5;
    ++v15;
  }

  while ((v11 & 1) == 0);
  return v12;
}

uint64_t ___ZL22access_segment_contentI17SizeAndEndiannessI9Pointer3212LittleEndianEEbP11CSCppMemoryPKc4UUIDyyRK17CSCppArchitectureU13block_pointerFvPKhmE_block_invoke(uint64_t a1, unsigned int *a2, _BYTE *a3)
{
  result = CSCppArchitecture::matches(*(a1 + 48), bswap64(a2[1] & 0xFFFFFF00 | (*a2 << 32)));
  if (result)
  {
    v7 = bswap32(a2[2]);
    v8 = *(a1 + 88);
    v9 = *(a1 + 96);
    v10 = *(a1 + 64);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 0x40000000;
    v11[2] = ___ZL22access_segment_contentI17SizeAndEndiannessI9Pointer3212LittleEndianEEbP11CSCppMemoryPKc4UUIDyyRK17CSCppArchitectureU13block_pointerFvPKhmE_block_invoke_2;
    v11[3] = &unk_1E8583BA8;
    v11[4] = *(a1 + 32);
    v12 = *(a1 + 72);
    v13 = v10;
    result = TMemoryView<SizeAndEndianness<Pointer32,LittleEndian>>::provide_segment_content_matching_owner_uuid((a1 + 56), v7, v8, v9, v10, 1, v11);
    *(*(*(a1 + 40) + 8) + 24) = result;
    if (*(*(*(a1 + 40) + 8) + 24) == 1)
    {
      *a3 = 1;
    }
  }

  return result;
}

uint64_t TMemoryView<SizeAndEndianness<Pointer32,LittleEndian>>::provide_segment_content_matching_owner_uuid(void *a1, unsigned int a2, uint64_t a3, uint64_t a4, const char *a5, int a6, uint64_t a7)
{
  v28 = *MEMORY[0x1E69E9840];
  *v27 = a3;
  *&v27[8] = a4;
  result = TMemoryView<SizeAndEndianness<Pointer32,LittleEndian>>::macho_header_at(a1, a2, 1);
  if (result)
  {
    v13 = 0;
    v14 = *(result + 20);
    v23 = *(result + 16);
    v24 = result;
    v25 = result + 28 + v14;
    v26 = result + 28;
    while (1)
    {
      v15 = TLoadCommandIterator<SizeAndEndianness<Pointer32,LittleEndian>>::command(&v23);
      if (!v15)
      {
        break;
      }

      v16 = v15;
      if (*v15 == 27)
      {
        if (*v27 == *(v15 + 8) && *&v27[8] == *(v15 + 16))
        {
          v19 = v13;
          goto LABEL_17;
        }
      }

      else if (*v15 == 1)
      {
        v17 = strlen((v15 + 8));
        if (!strncmp((v16 + 8), a5, v17) && strlen(a5) == v17)
        {
          v13 = v16;
        }
      }
    }

    v19 = 0;
LABEL_17:
    if (UUID::is_null(v27))
    {
      v19 = v13;
    }

    if (v19 && *(v19 + 36))
    {
      if (a6)
      {
        v20 = a2;
      }

      else
      {
        v20 = 0;
      }

      v21 = (*(**a1 + 32))(*a1, *(v19 + 32) + v20);
      (*(a7 + 16))(a7, v21, *(v19 + 36));
      result = 1;
    }

    else
    {
      result = 0;
    }
  }

  v22 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ___ZL22access_segment_contentI17SizeAndEndiannessI9Pointer3212LittleEndianEEbP11CSCppMemoryPKc4UUIDyyRK17CSCppArchitectureU13block_pointerFvPKhmE_block_invoke_2(void *a1, uint64_t a2, unsigned int a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a1[5];
  if (v4)
  {
    if (a1[6] + v4 > a3)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v5 = a1[7];
        *buf = 136315138;
        v15 = v5;
        _os_log_impl(&dword_1D96E9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Requested vm range length in %s does not exist in file.\n", buf, 0xCu);
      }

      fprintf(*MEMORY[0x1E69E9848], "Requested vm range length in %s does not exist in file.\n", a1[7]);
      result = (*(a1[4] + 16))();
      v7 = *MEMORY[0x1E69E9840];
      return result;
    }

    v12 = a1[4];
    v10 = *(a1[4] + 16);
    v13 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v8 = a1[4];
    if (a1[6] < a3)
    {
      v9 = a1[6];
    }

    v10 = *(v8 + 16);
    v11 = *MEMORY[0x1E69E9840];
  }

  return v10();
}

uint64_t ___ZL22access_segment_contentI17SizeAndEndiannessI9Pointer3212LittleEndianEEbP11CSCppMemoryPKc4UUIDyyRK17CSCppArchitectureU13block_pointerFvPKhmE_block_invoke_74(void *a1, uint64_t a2, unsigned int a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a1[5];
  if (v4)
  {
    if (a1[6] + v4 > a3)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v5 = a1[7];
        *buf = 136315138;
        v15 = v5;
        _os_log_impl(&dword_1D96E9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Requested vm range length in %s does not exist in file.\n", buf, 0xCu);
      }

      fprintf(*MEMORY[0x1E69E9848], "Requested vm range length in %s does not exist in file.\n", a1[7]);
      result = (*(a1[4] + 16))();
      v7 = *MEMORY[0x1E69E9840];
      return result;
    }

    v12 = a1[4];
    v10 = *(a1[4] + 16);
    v13 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v8 = a1[4];
    if (a1[6] < a3)
    {
      v9 = a1[6];
    }

    v10 = *(v8 + 16);
    v11 = *MEMORY[0x1E69E9840];
  }

  return v10();
}

uint64_t ___ZL22access_segment_contentI17SizeAndEndiannessI9Pointer6412LittleEndianEEbP11CSCppMemoryPKc4UUIDyyRK17CSCppArchitectureU13block_pointerFvPKhmE_block_invoke(uint64_t a1, unsigned int *a2, _BYTE *a3)
{
  result = CSCppArchitecture::matches(*(a1 + 48), bswap64(a2[1] & 0xFFFFFF00 | (*a2 << 32)));
  if (result)
  {
    v7 = bswap32(a2[2]);
    v8 = *(a1 + 88);
    v9 = *(a1 + 96);
    v10 = *(a1 + 64);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 0x40000000;
    v11[2] = ___ZL22access_segment_contentI17SizeAndEndiannessI9Pointer6412LittleEndianEEbP11CSCppMemoryPKc4UUIDyyRK17CSCppArchitectureU13block_pointerFvPKhmE_block_invoke_2;
    v11[3] = &unk_1E8583C20;
    v11[4] = *(a1 + 32);
    v12 = *(a1 + 72);
    v13 = v10;
    result = TMemoryView<SizeAndEndianness<Pointer64,LittleEndian>>::provide_segment_content_matching_owner_uuid((a1 + 56), v7, v8, v9, v10, 1, v11);
    *(*(*(a1 + 40) + 8) + 24) = result;
    if (*(*(*(a1 + 40) + 8) + 24) == 1)
    {
      *a3 = 1;
    }
  }

  return result;
}

uint64_t ___ZL22access_segment_contentI17SizeAndEndiannessI9Pointer6412LittleEndianEEbP11CSCppMemoryPKc4UUIDyyRK17CSCppArchitectureU13block_pointerFvPKhmE_block_invoke_2(void *a1, uint64_t a2, unint64_t a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a1[5];
  if (v4)
  {
    if (a1[6] + v4 > a3)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v5 = a1[7];
        *buf = 136315138;
        v15 = v5;
        _os_log_impl(&dword_1D96E9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Requested vm range length in %s does not exist in file.\n", buf, 0xCu);
      }

      fprintf(*MEMORY[0x1E69E9848], "Requested vm range length in %s does not exist in file.\n", a1[7]);
      result = (*(a1[4] + 16))();
      v7 = *MEMORY[0x1E69E9840];
      return result;
    }

    v12 = a1[4];
    v10 = *(a1[4] + 16);
    v13 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v8 = a1[4];
    if (a1[6] < a3)
    {
      v9 = a1[6];
    }

    v10 = *(v8 + 16);
    v11 = *MEMORY[0x1E69E9840];
  }

  return v10();
}

uint64_t ___ZL22access_segment_contentI17SizeAndEndiannessI9Pointer6412LittleEndianEEbP11CSCppMemoryPKc4UUIDyyRK17CSCppArchitectureU13block_pointerFvPKhmE_block_invoke_79(void *a1, uint64_t a2, unint64_t a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a1[5];
  if (v4)
  {
    if (a1[6] + v4 > a3)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v5 = a1[7];
        *buf = 136315138;
        v15 = v5;
        _os_log_impl(&dword_1D96E9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Requested vm range length in %s does not exist in file.\n", buf, 0xCu);
      }

      fprintf(*MEMORY[0x1E69E9848], "Requested vm range length in %s does not exist in file.\n", a1[7]);
      result = (*(a1[4] + 16))();
      v7 = *MEMORY[0x1E69E9840];
      return result;
    }

    v12 = a1[4];
    v10 = *(a1[4] + 16);
    v13 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v8 = a1[4];
    if (a1[6] < a3)
    {
      v9 = a1[6];
    }

    v10 = *(v8 + 16);
    v11 = *MEMORY[0x1E69E9840];
  }

  return v10();
}

uint64_t std::__hash_table<std::__hash_value_type<UUID,std::vector<std::shared_ptr<CSCppSymbolOwner>>>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,std::vector<std::shared_ptr<CSCppSymbolOwner>>>,UUIDHashFunctor,UUIDEqualsFunctor,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,std::vector<std::shared_ptr<CSCppSymbolOwner>>>,UUIDEqualsFunctor,UUIDHashFunctor,true>,std::allocator<std::__hash_value_type<UUID,std::vector<std::shared_ptr<CSCppSymbolOwner>>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<UUID,std::vector<std::shared_ptr<CSCppSymbolOwner>>>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,std::vector<std::shared_ptr<CSCppSymbolOwner>>>,UUIDHashFunctor,UUIDEqualsFunctor,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,std::vector<std::shared_ptr<CSCppSymbolOwner>>>,UUIDEqualsFunctor,UUIDHashFunctor,true>,std::allocator<std::__hash_value_type<UUID,std::vector<std::shared_ptr<CSCppSymbolOwner>>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<UUID,std::vector<std::shared_ptr<CSCppSymbolOwner>>>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,std::vector<std::shared_ptr<CSCppSymbolOwner>>>,UUIDHashFunctor,UUIDEqualsFunctor,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,std::vector<std::shared_ptr<CSCppSymbolOwner>>>,UUIDEqualsFunctor,UUIDHashFunctor,true>,std::allocator<std::__hash_value_type<UUID,std::vector<std::shared_ptr<CSCppSymbolOwner>>>>>::__deallocate_node(uint64_t a1, char *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      v4 = (v2 + 32);
      std::vector<std::shared_ptr<CSCppSymbolOwner>>::__destroy_vector::operator()[abi:ne200100](&v4);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void *std::__hash_table<std::__hash_value_type<UUID,std::vector<std::shared_ptr<CSCppSymbolOwner>>>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,std::vector<std::shared_ptr<CSCppSymbolOwner>>>,UUIDHashFunctor,UUIDEqualsFunctor,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,std::vector<std::shared_ptr<CSCppSymbolOwner>>>,UUIDEqualsFunctor,UUIDHashFunctor,true>,std::allocator<std::__hash_value_type<UUID,std::vector<std::shared_ptr<CSCppSymbolOwner>>>>>::__emplace_unique_key_args<UUID,std::piecewise_construct_t const&,std::tuple<UUID const&>,std::tuple<>>(void *a1, void *a2)
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

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<UUID,std::vector<std::shared_ptr<CSCppSymbolOwner>>>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p + 4;
    std::vector<std::shared_ptr<CSCppSymbolOwner>>::__destroy_vector::operator()[abi:ne200100](&v3);
  }

  if (__p)
  {
    operator delete(__p);
  }
}

void sub_1D973B95C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19)
{
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a19);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1DA736760](v20, v19);
  _Unwind_Resume(a1);
}

_DWORD *___ZL46process_symbol_owner_from_memory_arch_specificI17SizeAndEndiannessI9Pointer3212LittleEndianEEbP11CSCppMemoryPKcNT_6size_tENS8_5ptr_tES9_jRK17CSCppArchitectureU13block_pointerFvNSt3__110shared_ptrI16CSCppSymbolOwnerEEE_block_invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, *(a1 + 32), 28);
  if (result)
  {
    if (*result == -17958194)
    {
      return (result[5] + 28);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

_DWORD *___ZL46process_symbol_owner_from_memory_arch_specificI17SizeAndEndiannessI9Pointer6412LittleEndianEEbP11CSCppMemoryPKcNT_6size_tENS8_5ptr_tES9_jRK17CSCppArchitectureU13block_pointerFvNSt3__110shared_ptrI16CSCppSymbolOwnerEEE_block_invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, *(a1 + 32), 32);
  if (result)
  {
    if (*result == -17958193)
    {
      return (result[5] + 32);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t ___ZL37iterate_symbol_owners_from_mh_filesetI17SizeAndEndiannessI9Pointer6412LittleEndianEEbP11CSCppMemoryPKcNT_6size_tENS8_5ptr_tES9_j17CSCppArchitectureU13block_pointerFvNSt3__110shared_ptrI16CSCppSymbolOwnerEEE_block_invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 0, *MEMORY[0x1E69E9AC8]);
  if (result)
  {
    if (*(result + 12) == 12)
    {
      result = *(result + 20) + 32;
      *(*(*(a1 + 32) + 8) + 24) = 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t ___ZL37iterate_symbol_owners_from_mh_filesetI17SizeAndEndiannessI9Pointer6412LittleEndianEEbP11CSCppMemoryPKcNT_6size_tENS8_5ptr_tES9_j17CSCppArchitectureU13block_pointerFvNSt3__110shared_ptrI16CSCppSymbolOwnerEEE_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 24) + a2;
  v4 = *(a1 + 32);
  result = process_symbol_owner_from_memory_arch_specific<SizeAndEndianness<Pointer64,LittleEndian>>(0, *(a1 + 48), *(a1 + 56), *(a2 + 16), *(a1 + 64) - *(a2 + 16), *(a1 + 72) | 0x80000u, (a1 + 76));
  *(*(*(a1 + 40) + 8) + 24) |= result;
  return result;
}

void ___ZL37iterate_symbol_owners_from_mh_filesetI17SizeAndEndiannessI9Pointer6412LittleEndianEEbP11CSCppMemoryPKcNT_6size_tENS8_5ptr_tES9_j17CSCppArchitectureU13block_pointerFvNSt3__110shared_ptrI16CSCppSymbolOwnerEEE_block_invoke_3(uint64_t a1, void ***a2)
{
  v4 = *a2;
  *(v4 + 27) = *(*a2 + 27) & 0xFEF7FDFF | 0x1080000;
  CSCppSymbolOwner::set_path(v4, *(a1 + 40));
  CSCppSymbolOwner::set_path_for_symbolication(*a2, *(a1 + 48));
  v6 = *a2;
  v5 = a2[1];
  *(v6 + 27) = *(*a2 + 27) & 0xFEBFFFFF;
  v7 = *(a1 + 32);
  v8 = v6;
  v9 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(v7 + 16))(v7, &v8);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }
}

void sub_1D973BC60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t OUTLINED_FUNCTION_0_0(uint64_t *a1)
{
  result = *a1;
  *a1 = 0;
  return result;
}

void CSCppFileMemory::mapped_file_table_entry_key(CSCppFileMemory *this, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v38[2] = *MEMORY[0x1E69E9840];
  if (*(this + 87) >= 0)
  {
    v8 = *(this + 87);
  }

  else
  {
    v8 = *(this + 9);
  }

  v9 = &v33;
  std::string::basic_string[abi:ne200100](&v33, v8 + 1);
  if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v9 = v33.__r_.__value_.__r.__words[0];
  }

  if (v8)
  {
    if (*(this + 87) >= 0)
    {
      v10 = this + 64;
    }

    else
    {
      v10 = *(this + 8);
    }

    memmove(v9, v10, v8);
  }

  *(&v9->__r_.__value_.__l.__data_ + v8) = 45;
  std::to_string(&v32, a2);
  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = &v32;
  }

  else
  {
    v11 = v32.__r_.__value_.__r.__words[0];
  }

  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v32.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v32.__r_.__value_.__l.__size_;
  }

  v13 = std::string::append(&v33, v11, size);
  v14 = *&v13->__r_.__value_.__l.__data_;
  v34.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
  *&v34.__r_.__value_.__l.__data_ = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  v15 = std::string::append(&v34, "-", 1uLL);
  v16 = *&v15->__r_.__value_.__l.__data_;
  v35.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
  *&v35.__r_.__value_.__l.__data_ = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v31, a3);
  if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = &v31;
  }

  else
  {
    v17 = v31.__r_.__value_.__r.__words[0];
  }

  if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v18 = HIBYTE(v31.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v18 = v31.__r_.__value_.__l.__size_;
  }

  v19 = std::string::append(&v35, v17, v18);
  v20 = *&v19->__r_.__value_.__l.__data_;
  v36.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
  *&v36.__r_.__value_.__l.__data_ = v20;
  v19->__r_.__value_.__l.__size_ = 0;
  v19->__r_.__value_.__r.__words[2] = 0;
  v19->__r_.__value_.__r.__words[0] = 0;
  v21 = std::string::append(&v36, "-", 1uLL);
  v22 = *&v21->__r_.__value_.__l.__data_;
  v37.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
  *&v37.__r_.__value_.__l.__data_ = v22;
  v21->__r_.__value_.__l.__size_ = 0;
  v21->__r_.__value_.__r.__words[2] = 0;
  v21->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&__p, a4);
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
    v24 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v24 = __p.__r_.__value_.__l.__size_;
  }

  v25 = std::string::append(&v37, p_p, v24);
  v26 = v25->__r_.__value_.__r.__words[0];
  v38[0] = v25->__r_.__value_.__l.__size_;
  *(v38 + 7) = *(&v25->__r_.__value_.__r.__words[1] + 7);
  v27 = HIBYTE(v25->__r_.__value_.__r.__words[2]);
  v25->__r_.__value_.__l.__size_ = 0;
  v25->__r_.__value_.__r.__words[2] = 0;
  v25->__r_.__value_.__r.__words[0] = 0;
  if (*(this + 119) < 0)
  {
    operator delete(*(this + 12));
  }

  v28 = v38[0];
  *(this + 12) = v26;
  *(this + 13) = v28;
  *(this + 111) = *(v38 + 7);
  *(this + 119) = v27;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }

  v29 = *MEMORY[0x1E69E9840];
}

void sub_1D973BF4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (*(v45 - 89) < 0)
  {
    operator delete(*(v45 - 112));
  }

  if (*(v45 - 121) < 0)
  {
    operator delete(*(v45 - 144));
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a45 < 0)
  {
    operator delete(a40);
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CSCppFileMemory::map_file(CSCppFileMemory *this, int a2, unint64_t a3, unint64_t a4)
{
  v24 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock(&mapped_file_table_mutex);
  if (!mapped_file_table)
  {
    operator new();
  }

  CSCppFileMemory::mapped_file_table_entry_key(this, a3, a4, *(this + 11));
  v8 = std::__hash_table<std::__hash_value_type<std::string,std::vector<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::string>>>>::find<std::string>(mapped_file_table, this + 12);
  if (v8)
  {
    v9 = v8[5];
    CSCppReferenceCount::retain(v9);
    v10 = *(v9 + 16);
  }

  else
  {
    v11 = (this + 64);
    if (*(this + 87) < 0)
    {
      v11 = *v11;
    }

    v12 = mmap(0, a4, 1, 8193, a2, a3);
    CSCppFileMemory::_total_mmapped_bytes += a4;
    if (v12 != -1)
    {
      operator new();
    }

    v13 = __error();
    v14 = strerror(*v13);
    v15 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v14 == 22)
    {
      if (v15)
      {
        v16 = *__error();
        buf[0] = 136315394;
        *&buf[1] = v11;
        v22 = 1024;
        LODWORD(v23) = v16;
        _os_log_impl(&dword_1D96E9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Attempt to mmap %s failed, Unknown Error %d\n", buf, 0x12u);
      }

      v17 = *MEMORY[0x1E69E9848];
      v18 = *__error();
      fprintf(v17, "Attempt to mmap %s failed, Unknown Error %d\n");
    }

    else
    {
      if (v15)
      {
        buf[0] = 136315394;
        *&buf[1] = v11;
        v22 = 2080;
        v23 = v14;
        _os_log_impl(&dword_1D96E9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Attempt to mmap %s failed, %s\n", buf, 0x16u);
      }

      fprintf(*MEMORY[0x1E69E9848], "Attempt to mmap %s failed, %s\n");
    }

    v10 = 0;
    if (*(this + 119) < 0)
    {
      **(this + 12) = 0;
      *(this + 13) = 0;
    }

    else
    {
      *(this + 96) = 0;
      *(this + 119) = 0;
    }
  }

  pthread_mutex_unlock(&mapped_file_table_mutex);
  v19 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t CSCppFileMemory::unmap_file(const void **this)
{
  pthread_mutex_lock(&mapped_file_table_mutex);
  v2 = std::__hash_table<std::__hash_value_type<std::string,std::vector<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::string>>>>::find<std::string>(mapped_file_table, this + 12);
  if (v2)
  {
    v3 = v2[5];
    v4 = *(v3 + 4);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 0x40000000;
    v7 = ___ZN15CSCppFileMemory10unmap_fileEv_block_invoke;
    v8 = &__block_descriptor_tmp_10;
    v9 = this;
    v10 = v4;
    v11 = v3;
    if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
    {
      v7(v6);
      (*(*v3 + 8))(v3);
    }
  }

  return pthread_mutex_unlock(&mapped_file_table_mutex);
}

uint64_t *___ZN15CSCppFileMemory10unmap_fileEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  CSCppFileMemory::_total_mmapped_bytes -= *(a1 + 40);
  result = std::__hash_table<std::__hash_value_type<std::string,MappedFileTableEntry *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MappedFileTableEntry *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MappedFileTableEntry *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MappedFileTableEntry *>>>::__erase_unique<std::string>(mapped_file_table, (v1 + 96));
  if (*(v1 + 119) < 0)
  {
    **(v1 + 96) = 0;
    *(v1 + 104) = 0;
  }

  else
  {
    *(v1 + 96) = 0;
    *(v1 + 119) = 0;
  }

  return result;
}

uint64_t CSCppFileMemory::total_mmapped_bytes(CSCppFileMemory *this)
{
  pthread_mutex_lock(&mapped_file_table_mutex);
  v1 = CSCppFileMemory::_total_mmapped_bytes;
  pthread_mutex_unlock(&mapped_file_table_mutex);
  return v1;
}

uint64_t CSCppFileMemory::CSCppFileMemory(uint64_t a1, char *a2, unint64_t a3, unint64_t a4, char a5)
{
  v26 = *MEMORY[0x1E69E9840];
  *a1 = &unk_1F5505640;
  v9 = (a1 + 64);
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  if (!a2)
  {
    a2 = "";
  }

  *(a1 + 40) = 0uLL;
  *(a1 + 56) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 64), a2);
  *(a1 + 88) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 96), "");
  v10 = v9;
  if (*(a1 + 87) < 0)
  {
    v10 = *v9;
  }

  v11 = open(v10, 0x1000000, 0);
  v12 = v11;
  if ((v11 & 0x80000000) == 0)
  {
    if (!fstat(v11, &v25) && (v25.st_mode & 0xF000) == 0x8000)
    {
      st_size = v25.st_size;
      st_ino = v25.st_ino;
      *(a1 + 16) = v25.st_size;
      *(a1 + 88) = st_ino;
      if (st_size)
      {
        *(a1 + 56) = v25.st_mtimespec.tv_sec;
        if ((a5 & 1) != 0 && st_size > a3 && a4 + a3 > st_size)
        {
          a4 = st_size - a3;
        }

        if (a4 + a3 <= st_size)
        {
          if (a4)
          {
            v18 = a4;
          }

          else
          {
            a3 = 0;
            v18 = st_size;
          }

          *(a1 + 48) = a3;
          v19 = *MEMORY[0x1E69E9AB8];
          v20 = *MEMORY[0x1E69E9AB8] & a3;
          *(a1 + 32) = v20 + v18;
          v21 = CSCppFileMemory::map_file(a1, v12, a3 & ~v19, v20 + v18);
          *(a1 + 8) = v21;
          *(a1 + 24) = v21 + v20;
          if ((a5 & 2) != 0)
          {
            v22 = 0;
          }

          else
          {
            v22 = a3;
          }

          *(a1 + 40) = v22;
        }

        else if (st_size != a3)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v16 = v9;
            if (*(a1 + 87) < 0)
            {
              v16 = *v9;
            }

            v25.st_dev = 134219010;
            *&v25.st_mode = a3;
            WORD2(v25.st_ino) = 2048;
            *(&v25.st_ino + 6) = a4 + a3;
            HIWORD(v25.st_gid) = 2048;
            *&v25.st_rdev = a4;
            LOWORD(v25.st_atimespec.tv_sec) = 2048;
            *(&v25.st_atimespec.tv_sec + 2) = st_size;
            WORD1(v25.st_atimespec.tv_nsec) = 2080;
            *(&v25.st_atimespec.tv_nsec + 4) = v16;
            _os_log_impl(&dword_1D96E9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Attempting to map range %llu-%llu length %llu past end of file %llu in: %s\n", &v25, 0x34u);
            st_size = *(a1 + 16);
          }

          v17 = v9;
          if (*(a1 + 87) < 0)
          {
            v17 = *v9;
          }

          fprintf(*MEMORY[0x1E69E9848], "Attempting to map range %llu-%llu length %llu past end of file %llu in: %s\n", a3, a4 + a3, a4, st_size, v17);
        }
      }
    }

    if (v12)
    {
      close(v12);
    }
  }

  v23 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_1D973C76C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 119) < 0)
  {
    operator delete(*(v1 + 96));
  }

  if (*(v1 + 87) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void CSCppFileMemory::~CSCppFileMemory(CSCppFileMemory *this)
{
  *this = &unk_1F5505640;
  if (*(this + 1))
  {
    CSCppFileMemory::unmap_file(this);
  }

  if (*(this + 119) < 0)
  {
    operator delete(*(this + 12));
  }

  if (*(this + 87) < 0)
  {
    operator delete(*(this + 8));
  }
}

{
  CSCppFileMemory::~CSCppFileMemory(this);

  JUMPOUT(0x1DA736760);
}

uint64_t CSCppFileMemory::bytes_at(void *a1, unint64_t a2, uint64_t a3)
{
  if (a1[1] && (v3 = a1[5], a2 >= v3) && a3 + a2 <= a1[4] + v3)
  {
    return a2 - v3 + a1[3];
  }

  else
  {
    return 0;
  }
}

uint64_t CSCppFileMemory::to_string@<X0>(CSCppFileMemory *this@<X0>, _BYTE *a2@<X8>)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v15);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, "CSCppFileMemory ", 16);
  v7 = *(this + 8);
  v6 = this + 64;
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

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v9, v10);
  if ((v22 & 0x10) != 0)
  {
    v12 = v21;
    if (v21 < v18)
    {
      v21 = v18;
      v12 = v18;
    }

    locale = v17[4].__locale_;
  }

  else
  {
    if ((v22 & 8) == 0)
    {
      v11 = 0;
      a2[23] = 0;
      goto LABEL_20;
    }

    locale = v17[1].__locale_;
    v12 = v17[3].__locale_;
  }

  v11 = v12 - locale;
  if ((v12 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v11 >= 0x17)
  {
    operator new();
  }

  a2[23] = v11;
  if (v11)
  {
    memmove(a2, locale, v11);
  }

LABEL_20:
  a2[v11] = 0;
  v15 = *MEMORY[0x1E69E54E8];
  *(&v15 + *(v15 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v16 = MEMORY[0x1E69E5548] + 16;
  if (v20 < 0)
  {
    operator delete(__p);
  }

  v16 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v17);
  std::ostream::~ostream();
  return MEMORY[0x1DA7366F0](&v23);
}

void sub_1D973CAF0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va, MEMORY[0x1E69E54E8]);
  MEMORY[0x1DA7366F0](v2 + 112);
  _Unwind_Resume(a1);
}

void MappedFileTableEntry::~MappedFileTableEntry(MappedFileTableEntry *this)
{
  MappedFileTableEntry::~MappedFileTableEntry(this);

  JUMPOUT(0x1DA736760);
}

{
  *this = &unk_1F55056A0;
  munmap(*(this + 2), *(this + 4));
}

const void **std::__hash_table<std::__hash_value_type<std::string,MappedFileTableEntry *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MappedFileTableEntry *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MappedFileTableEntry *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MappedFileTableEntry *>>>::__emplace_unique_key_args<std::string,std::string&,MappedFileTableEntry *&>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,MappedFileTableEntry *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MappedFileTableEntry *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MappedFileTableEntry *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MappedFileTableEntry *>>>::__construct_node_hash<std::string&,MappedFileTableEntry *&>();
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

void sub_1D973CDF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D973CEC8(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t *std::__hash_table<std::__hash_value_type<std::string,MappedFileTableEntry *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MappedFileTableEntry *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MappedFileTableEntry *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MappedFileTableEntry *>>>::__erase_unique<std::string>(void *a1, const void **a2)
{
  result = std::__hash_table<std::__hash_value_type<std::string,std::vector<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::string>>>>::find<std::string>(a1, a2);
  if (result)
  {
    std::__hash_table<std::__hash_value_type<std::string,MappedFileTableEntry *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MappedFileTableEntry *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MappedFileTableEntry *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MappedFileTableEntry *>>>::erase(a1, result);
    return 1;
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,MappedFileTableEntry *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MappedFileTableEntry *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MappedFileTableEntry *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MappedFileTableEntry *>>>::erase(void *a1, uint64_t *a2)
{
  v2 = *a2;
  std::__hash_table<std::__hash_value_type<unsigned long long,TRawSymbol<Pointer32>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,TRawSymbol<Pointer32>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,TRawSymbol<Pointer32>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,TRawSymbol<Pointer32>>>>::remove(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>::operator()[abi:ne200100](&v6, v3);
  }

  return v2;
}

void CSShow(uint64_t a1, uint64_t a2)
{
  v2 = CSCopyDescriptionWithIndent(a1, a2, 0);
  CFShow(v2);

  CFRelease(v2);
}

void CSCppMachTaskContainer::CSCppMachTaskContainer(CSCppMachTaskContainer *this, mach_port_name_t name, int a3, int a4)
{
  *this = &unk_1F55056D8;
  *(this + 2) = 0;
  *(this + 3) = a3;
  if (a3 != -1 && (!a4 || !mach_port_mod_refs(*MEMORY[0x1E69E9A60], name, 0, 1)))
  {
    *(this + 2) = name;
  }
}

void CSCppMachTaskContainer::CSCppMachTaskContainer(CSCppMachTaskContainer *this, mach_port_name_t t)
{
  x = -1;
  if (pid_for_task(t, &x))
  {
    v4 = -1;
  }

  else
  {
    v4 = x;
  }

  CSCppMachTaskContainer::CSCppMachTaskContainer(this, t, v4, 1);
}

uint64_t taskForPid(int a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69E9A60];
  v3 = task_read_for_pid();
  if (v3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109376;
    v7 = a1;
    v8 = 1024;
    v9 = v3;
    _os_log_impl(&dword_1D96E9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "CSCppMachTaskContainer task_for_pid failed for process %u, err %d", buf, 0xEu);
  }

  result = 0;
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void CSCppMachTaskContainer::CSCppMachTaskContainer(CSCppMachTaskContainer *this, int a2)
{
  v4 = taskForPid(a2);
  *this = &unk_1F55056D8;
  *(this + 2) = 0;
  *(this + 3) = a2;
  if (a2 != -1)
  {
    *(this + 2) = v4;
  }
}

void CSCppMachTaskContainer::~CSCppMachTaskContainer(CSCppMachTaskContainer *this)
{
  *this = &unk_1F55056D8;
  v1 = *(this + 2);
  if (v1 + 1 >= 2)
  {
    mach_port_deallocate(*MEMORY[0x1E69E9A60], v1);
  }
}

{
  CSCppMachTaskContainer::~CSCppMachTaskContainer(this);

  JUMPOUT(0x1DA736760);
}

BOOL CSCppMachTaskContainer::is_alive(CSCppMachTaskContainer *this)
{
  v2 = *(this + 2);
  if (v2 + 1 < 2)
  {
    return 0;
  }

  x = -1;
  v4 = pid_for_task(v2, &x);
  v5 = x;
  if (v4)
  {
    v5 = -1;
  }

  return v5 == *(this + 3);
}

__CFData *CSSymbolOwnerCreateSparseSignatureWithFlags(char a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 8) != 0)
  {
    return _CSSymbolOwnerCreateFlatbufferSignatureWithAddressSet<__CFData const*>(a1, a2, a5, a3, a4);
  }

  else
  {
    return _CSSymbolOwnerCreateSparseSignature<__CFData *>(a1, a2, a3, a4);
  }
}

const __CFData *_CSSymbolOwnerCreateSparseSignature<__CFData *>(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!(a1 & 7 | (8 * (a2 & 3))))
  {
    return 0;
  }

  Mutable = CFDataCreateMutable(0, 0);
  v7 = a2 & 0xFFFFFFFFFFFFFFFCLL;
  v8 = *((a2 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  v9 = atomic_load((v8 + 40));
  v10 = v9 & 0x80002000;
  v11 = *(v8 + 32);
  v12 = *((*(*v11 + 16))(v11) + 12);
  v13 = (*(*v11 + 24))(v11);
  CSCppSignatureEncodeSymbolicator<__CFData *>(Mutable, v12, v13, v10 | 2, 1);
  CSCppSignatureEncodeSymbolOwner<__CFData *>(Mutable, (v7 + 16), *(v7 + 104), *(v7 + 108), *(v7 + 88), *(v7 + 96), *(v7 + 112), *(v7 + 120), (v7 + 32), 0);
  if ((CSCppAddSparseMMapArchiveToSignature<__CFData *>(Mutable, (a4 & 0xFFFFFFFFFFFFFFFCLL)) & 1) == 0)
  {
    CFRelease(Mutable);
    return 0;
  }

  v14 = (*(*v11 + 48))(v11);
  v15 = (*(*v11 + 64))(v11);
  v16 = (*(*v11 + 56))(v11);
  v17 = (*(*v11 + 72))(v11);
  CSCppSignatureEncodeOptionalData<__CFData *>(Mutable, 4, v14, v15, v16, v17, 2, v8);
  return Mutable;
}

const __CFData *_CSSymbolOwnerCreateSignatureWithSlide<__CFData *>(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (!(a1 & 7 | (8 * (a2 & 3))))
  {
    return 0;
  }

  Mutable = CFDataCreateMutable(0, 0);
  v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
  v10 = *((a2 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  v11 = *(v10 + 32);
  v12 = *((*(*v11 + 16))(v11) + 12);
  v13 = (*(*v11 + 24))(v11);
  v14 = atomic_load((v10 + 40));
  CSCppSignatureEncodeSymbolicator<__CFData *>(Mutable, v12, v13, v14, 1);
  CSCppSignatureEncodeSymbolOwner<__CFData *>(Mutable, (v9 + 16), *(v9 + 104), *(v9 + 108), *(v9 + 88), *(v9 + 96), *(v9 + 112), *(v9 + 120), (v9 + 32), a4);
  if (a3)
  {
    CSCppAddMMapArchiveToSignatureFromSymbolOwner<__CFData *>(a1, a2, Mutable);
  }

  v15 = (*(*v11 + 48))(v11);
  v16 = (*(*v11 + 64))(v11);
  v17 = (*(*v11 + 56))(v11);
  v18 = (*(*v11 + 72))(v11);
  CSCppSignatureEncodeOptionalData<__CFData *>(Mutable, 4, v15, v16, v17, v18, 2, v10);
  return Mutable;
}

__CFData *CSSymbolOwnerCreateSignature(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 8) != 0)
  {
    return _CSSymbolOwnerCreateFlatbufferSignature<__CFData const*>(a1, a2, a3);
  }

  else
  {
    return _CSSymbolOwnerCreateSignatureWithSlide<__CFData *>(a1, a2, a3, 0);
  }
}

__CFString *CSSymbolOwnerCopyDescriptionWithIndent(char a1, uint64_t a2, int a3)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1 & 7 | (8 * (a2 & 3)))
  {
    for (i = CFStringCreateMutable(0, 0); a3; --a3)
    {
      CFStringAppendCString(i, "\t", 0x8000100u);
    }

    CFUUIDBytes = CSSymbolOwnerGetCFUUIDBytes(a1, a2);
    if (CFUUIDBytes)
    {
      CSUUIDCFUUIDBytesToString(CFUUIDBytes, v14, 40);
    }

    else
    {
      strcpy(v14, "null-uuid                           ");
    }

    LoadTimestamp = CSSymbolOwnerGetLoadTimestamp(a1, a2);
    UnloadTimestamp = CSSymbolOwnerGetUnloadTimestamp(a1, a2);
    if (LoadTimestamp || UnloadTimestamp != 0x7FFFFFFFFFFFFFFFLL)
    {
      snprintf(__str, 0x29uLL, "[0x%016llx 0x%016llx] ", LoadTimestamp, UnloadTimestamp);
    }

    else
    {
      __str[0] = 0;
    }

    Path = CSSymbolOwnerGetPath(a1, a2);
    CFStringAppendFormat(i, 0, @"<CSSymbolOwner: %p> %s %s%s", a2 & 0xFFFFFFFFFFFFFFFCLL, v14, __str, Path);
  }

  else
  {
    i = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return i;
}

mach_vm_address_t _CSCppConvertLegacyPreVersion7ArchiveToModernCopyWithValidation(_OWORD *a1, int a2)
{
  v4 = *(a1 + 1);
  v12[0] = 0;
  v12[1] = v4;
  mach_vm_allocate(*MEMORY[0x1E69E9A60], v12, v4, 3);
  v5 = v12[0];
  if (v12[0])
  {
    v6 = a1[1];
    *v12[0] = *a1;
    *(v5 + 16) = v6;
    v7 = a1[2];
    v8 = a1[3];
    v9 = a1[5];
    *(v5 + 64) = a1[4];
    *(v5 + 80) = v9;
    *(v5 + 32) = v7;
    *(v5 + 48) = v8;
    memcpy((v5 + 96), a1 + 6, *(a1 + 1) - 96);
    *(v5 + 4) = v4;
    v10 = TMMapArchive::calculate_checksum(v5);
    *(v5 + 48) = v10;
    *(v5 + 88) = 4 * *(v5 + 16);
    v12[0] = 0;
    if (a2)
    {
      if (!*(v5 + 4) || v10 != TMMapArchive::calculate_checksum(v5) || !TMMapArchive::are_offsets_in_bounds(v5))
      {
        v5 = 0;
      }
    }
  }

  MachVMAllocatePtr<TMMapArchive>::~MachVMAllocatePtr(v12);
  return v5;
}

mach_vm_address_t _CSCppConvertLegacyPreVersion6ArchiveToModernCopyWithValidation(_OWORD *a1, TMMapArchive *a2)
{
  v2 = a2;
  v4 = CSMMapArchiveCompatibilityUtilities::required_size_for_modern_archive_from_v5(a1, a2);
  address[0] = 0;
  address[1] = v4;
  mach_vm_allocate(*MEMORY[0x1E69E9A60], address, v4, 3);
  v5 = address[0];
  if (address[0])
  {
    v6 = a1[1];
    *address[0] = *a1;
    *(v5 + 16) = v6;
    v7 = a1[2];
    v8 = a1[3];
    v9 = a1[5];
    *(v5 + 64) = a1[4];
    *(v5 + 80) = v9;
    *(v5 + 32) = v7;
    *(v5 + 48) = v8;
    v29 = *(v5 + 68);
    is_64_bit = CSCppArchitecture::is_64_bit(&v29);
    v11 = a1 + 88;
    if (is_64_bit)
    {
      v12 = *(a1 + 1) - 88;
      v13 = (v5 + 96);
    }

    else
    {
      v14 = v5 + 96;
      v15 = (32 * *(a1 + 2));
      v16 = &v11[v15];
      memcpy((v5 + 96), v11, v15);
      v17 = *(a1 + 3);
      if (v17)
      {
        v18 = (32 * *(v5 + 8)) + v14;
        v19 = *(a1 + 3);
        v20 = v16;
        do
        {
          v21 = HIDWORD(*v20);
          *v18 = *v20;
          *(v18 + 8) = v21;
          *(v18 + 16) = *(v20 + 2);
          v20 += 16;
          v18 += 24;
          --v19;
        }

        while (v19);
      }

      v11 = &v16[16 * v17];
      v13 = (v15 + v14 + 24 * v17);
      v12 = (*(a1 + 1) + a1 - v11);
    }

    memcpy(v13, v11, v12);
    v22 = *(v5 + 16);
    if (*v5 == 1)
    {
      LODWORD(v22) = 4 * v22;
    }

    else if (v22)
    {
      v23 = 0;
      v24 = (v5 + (32 * *(v5 + 8)) + (24 * *(v5 + 12)) + 108);
      do
      {
        v25 = *v24;
        v24 += 6;
        if (v25)
        {
          ++v23;
        }

        --v22;
      }

      while (v22);
      LODWORD(v22) = 4 * v23;
    }

    *(v5 + 88) = v22;
    *(v5 + 4) = v4;
    v26 = TMMapArchive::calculate_checksum(v5);
    *(v5 + 48) = v26;
    v27 = *(v5 + 4);
    *(v5 + 84) = v27 - (*(v5 + 88) + *(v5 + 80)) - (32 * *(v5 + 8) + 24 * *(v5 + 12) + 24 * *(v5 + 16) + 4 * *(v5 + 16) + 36 * *(v5 + 20) + 20 * *(v5 + 24)) - 96;
    address[0] = 0;
    if (v2 && (!v27 || v26 != TMMapArchive::calculate_checksum(v5) || !TMMapArchive::are_offsets_in_bounds(v5)))
    {
      v5 = 0;
    }
  }

  MachVMAllocatePtr<TMMapArchive>::~MachVMAllocatePtr(address);
  return v5;
}

void sub_1D973DBC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  MachVMAllocatePtr<TMMapArchive>::~MachVMAllocatePtr(va);
  _Unwind_Resume(a1);
}

uint64_t CSMMapArchiveCompatibilityUtilities::required_size_for_modern_archive_from_v5(uint64_t this, TMMapArchive *a2)
{
  if (this)
  {
    v2 = this;
    v3 = *(this + 4);
    v4 = *(this + 68);
    if ((CSCppArchitecture::is_64_bit(&v4) & 1) == 0)
    {
      v3 += 8 * *(v2 + 12);
    }

    return (v3 + 8);
  }

  return this;
}

int32x4_t *CSCppConvertLegacyPreVersion5ArchiveToModernCopy(_OWORD *a1)
{
  result = _CSCppConvertLegacyPreVersion6ArchiveToModernCopyWithValidation(a1, 0);
  if (result)
  {
    v3 = result;
    v4 = result[2].i32[3];
    if (v4)
    {
      result[2].i32[3] = v4 + 8;
    }

    v5 = result[2].i32[2];
    if (v5)
    {
      result[2].i32[2] = v5 + 8;
    }

    CSMMapArchiveCompatibilityUtilities::_update_string_offsets_to_strtab_relative(result, v2);
    if (*(v3 + 1) && (v6 = *(v3 + 12), v6 == TMMapArchive::calculate_checksum(v3)))
    {
      if (TMMapArchive::are_offsets_in_bounds(v3))
      {
        return v3;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

mach_vm_address_t CSCppConvertModernArchiveToLegacyPreVersion6Copy(uint64_t a1, TMMapArchive *a2)
{
  if (!a1)
  {
    return 0;
  }

  address = 0;
  v17 = LegacyMMapArchiveVersion5::required_bytes_from_modern_archive(a1, a2);
  mach_vm_allocate(*MEMORY[0x1E69E9A60], &address, v17, 3);
  v3 = address;
  if (address)
  {
    LegacyMMapArchiveVersion5::LegacyMMapArchiveVersion5(address, a1);
    v15 = *(a1 + 68);
    if (CSCppArchitecture::is_64_bit(&v15))
    {
      v4 = TMMapArchive::strtab_end(a1);
      v5 = (a1 + 96);
      v6 = (v4 - (a1 + 96));
      v7 = (v3 + 88);
    }

    else
    {
      v8 = v3 + 88;
      v9 = (32 * *(a1 + 8));
      memcpy((v3 + 88), (a1 + 96), v9);
      v10 = *(a1 + 12);
      if (v10)
      {
        v11 = ((32 * *(v3 + 8)) + v8);
        v12 = *(a1 + 12);
        v13 = (v9 + a1 + 96);
        do
        {
          *v11 = vmovn_s64(*v13);
          v11[1].i32[0] = v13[1].i32[0];
          v13 = (v13 + 24);
          v11 += 2;
          --v12;
        }

        while (v12);
      }

      v5 = (v9 + a1 + 96 + 24 * v10);
      v7 = (v9 + v8 + 16 * v10);
      v6 = (*(a1 + 4) - (v9 + 96 + 24 * v10));
    }

    memcpy(v7, v5, v6);
    address = 0;
  }

  MachVMAllocatePtr<LegacyMMapArchiveVersion5>::~MachVMAllocatePtr(&address);
  return v3;
}

void sub_1D973DDFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  MachVMAllocatePtr<LegacyMMapArchiveVersion5>::~MachVMAllocatePtr(va);
  _Unwind_Resume(a1);
}

uint64_t LegacyMMapArchiveVersion5::required_bytes_from_modern_archive(LegacyMMapArchiveVersion5 *this, TMMapArchive *a2)
{
  v3 = TMMapArchive::strtab_end(this) - this - 8;
  v5 = *(this + 68);
  if ((CSCppArchitecture::is_64_bit(&v5) & 1) == 0)
  {
    return (v3 - 8 * *(this + 3));
  }

  return v3;
}

uint64_t TMMapArchive::strtab_end(TMMapArchive *this)
{
  v1 = *(this + 2);
  v2.i64[0] = v1;
  v2.i64[1] = HIDWORD(v1);
  v3 = v2;
  v3.i32[1] = v2.i32[0];
  v3.i32[3] = *(this + 6);
  return this + *(this + 20) + *(this + 21) + vaddlvq_u32(vmulq_s32(v3, xmmword_1D97E0550)) + (32 * *(this + 2)) + (24 * *(this + 3)) + *(this + 22) + 96;
}

int32x4_t *CSCppConvertSymbolOwnerLegacyPreVersion5ArchiveToModernCopy(char a1, uint64_t a2)
{
  mmap_archive_from_symbol_owner = _get_mmap_archive_from_symbol_owner(a1, a2);

  return CSCppConvertLegacyPreVersion5ArchiveToModernCopy(mmap_archive_from_symbol_owner);
}

mach_vm_address_t CSCppConvertSymbolOwnerLegacyPreVersion6ArchiveToModernCopy(char a1, uint64_t a2)
{
  mmap_archive_from_symbol_owner = _get_mmap_archive_from_symbol_owner(a1, a2);

  return _CSCppConvertLegacyPreVersion6ArchiveToModernCopyWithValidation(mmap_archive_from_symbol_owner, 1);
}

mach_vm_address_t CSCppConvertSymbolOwnerModernArchiveToLegacyPreVersion6Copy(char a1, uint64_t a2)
{
  mmap_archive_from_symbol_owner = _get_mmap_archive_from_symbol_owner(a1, a2);

  return CSCppConvertModernArchiveToLegacyPreVersion6Copy(mmap_archive_from_symbol_owner, v3);
}

uint64_t _get_mmap_archive_from_symbol_owner(char a1, uint64_t a2)
{
  if (!CSIsNull(a1, a2) && (a1 & 7 | (8 * (a2 & 3))) == 3 && (v4 = CSCppSymbolOwner::data((a2 & 0xFFFFFFFFFFFFFFFCLL)), (*(*v4 + 24))(v4) == 4))
  {
    return v4[11];
  }

  else
  {
    return 0;
  }
}

BOOL TMMapArchive::are_offsets_in_bounds(TMMapArchive *this)
{
  v2 = this + 96;
  v3 = this + 32 * *(this + 2) + 24 * *(this + 3) + (24 * *(this + 4)) + (4 * *(this + 4)) + (36 * *(this + 5)) + (20 * *(this + 6)) + *(this + 22) + *(this + 20) + 96;
  v4 = TMMapArchive::strtab_end(this);
  v5 = *(this + 10);
  v6 = *(this + 2);
  v7 = *(this + 22);
  v8 = (32 * *(this + 2));
  v9 = 3 * *(this + 3);
  if (v5)
  {
    v10.i64[0] = v6;
    v10.i64[1] = HIDWORD(v6);
    v11 = v10;
    v11.i32[1] = *(this + 2);
    v11.i32[3] = *(this + 6);
    v12 = &v2[v7 + *(this + 20) + (24 * *(this + 3)) + v5 + vaddlvq_u32(vmulq_s32(v11, xmmword_1D97E0550)) + v8];
    if (v12)
    {
      if (v12 < v3 || v12 >= v4)
      {
        return 0;
      }
    }
  }

  v15 = *(this + 11);
  v16 = (24 * *(this + 3));
  v17 = (24 * v6);
  v18 = (36 * HIDWORD(v6));
  v19 = (20 * *(this + 6));
  v20 = (4 * v6);
  if (!v15 || (v21 = &v2[v15 + v8 + v16 + v17 + v20 + v19 + v7 + *(this + 20) + v18]) == 0 || (v14 = 0, v21 >= v3) && v21 < v4)
  {
    v22 = &v2[v8 + v16];
    v23 = &v22[v17];
    v24 = &v22[v17 + v19 + v18];
    v25 = (v24 + v7);
    if (v7)
    {
      v26 = v24;
      do
      {
        v27 = v24 - *v26;
        if (v27 < v22 || v27 >= v23)
        {
          return 0;
        }

        ++v26;
        ++v24;
      }

      while (v26 != v25);
    }

    if (v20)
    {
      v29 = (v25 + v20);
      v30 = v25 + 1;
      do
      {
        v31 = v25 - *(v30 - 1);
        v14 = v31 >= v22 && v31 < v23;
        v33 = !v14 || v30++ == v29;
        ++v25;
      }

      while (!v33);
    }

    else
    {
      return 1;
    }
  }

  return v14;
}

uint64_t CSMMapArchiveCompatibilityUtilities::_update_string_offsets_to_strtab_relative(int32x4_t *this, TMMapArchive *a2)
{
  v2 = this->u32[0];
  v4 = this[2].u32[2];
  v3 = this[2].u32[3];
  v5 = &this[6].i8[32 * this->i32[2] + 24 * this->i32[3] + (24 * this[1].i32[0]) + (4 * this[1].i32[0]) + (36 * this[1].i32[1]) + (20 * this[1].i32[2]) + this[5].u32[2] + this[5].u32[0]];
  if (v3)
  {
    v6 = &this->i8[v3];
  }

  else
  {
    v6 = 0;
  }

  v9[0] = this + 32 * this->i32[2] + 24 * this->i32[3] + (24 * this[1].i32[0]) + (4 * this[1].i32[0]) + (36 * this[1].i32[1]) + (20 * this[1].i32[2]) + this[5].u32[2] + this[5].u32[0] + 96;
  v9[1] = v6;
  v7 = &this->i8[v4];
  if (!v4)
  {
    v7 = 0;
  }

  v9[2] = v5;
  v9[3] = v7;
  v9[4] = v5;
  v9[5] = v2;
  v9[6] = v5;
  v9[7] = v2;
  v9[8] = v5;
  v9[9] = v5;
  v10 = v2;
  v11 = v2;
  v12 = v5;
  v13 = v2;
  return CSMMapArchiveCompatibilityUtilities::_update_archive<CSMMapArchiveCompatibilityUtilities::ArchiveUpdater<CSMMapArchiveCompatibilityUtilities::_update_string_offsets_to_strtab_relative(TMMapArchive *)::{lambda(unsigned int *,CSMMapArchiveCompatibilityUtilities::VersionOffsetTag)#1},CSMMapArchiveCompatibilityUtilities::_update_string_offsets_to_strtab_relative(TMMapArchive *)::{lambda(unsigned int *,CSMMapArchiveCompatibilityUtilities::DsymPathOffsetTag)#1},CSMMapArchiveCompatibilityUtilities::_update_string_offsets_to_strtab_relative(TMMapArchive *)::{lambda(TMMapRegionImpl<Pointer64> *,CSMMapArchiveCompatibilityUtilities::RegionTag)#1},CSMMapArchiveCompatibilityUtilities::_update_string_offsets_to_strtab_relative(TMMapArchive *)::{lambda(CSCppMMapSymbol *,CSMMapArchiveCompatibilityUtilities::SymbolTag)#1},CSMMapArchiveCompatibilityUtilities::_update_string_offsets_to_strtab_relative(TMMapArchive *)::{lambda(CSCppMMapInlinedSymbol *,CSMMapArchiveCompatibilityUtilities::InlinedFunctionTag)#1},CSMMapArchiveCompatibilityUtilities::_update_string_offsets_to_strtab_relative(TMMapArchive *)::{lambda(CSCppMMapSourceInfo *,CSMMapArchiveCompatibilityUtilities::SourceInfoTag)#1},CSMMapArchiveCompatibilityUtilities::_update_string_offsets_to_strtab_relative(TMMapArchive *)::{lambda(TMMapArchive *,CSMMapArchiveCompatibilityUtilities::PostProcessingTag)#1}>>(this, v9);
}

uint64_t CSMMapArchiveCompatibilityUtilities::_update_archive<CSMMapArchiveCompatibilityUtilities::ArchiveUpdater<CSMMapArchiveCompatibilityUtilities::_update_string_offsets_to_strtab_relative(TMMapArchive *)::{lambda(unsigned int *,CSMMapArchiveCompatibilityUtilities::VersionOffsetTag)#1},CSMMapArchiveCompatibilityUtilities::_update_string_offsets_to_strtab_relative(TMMapArchive *)::{lambda(unsigned int *,CSMMapArchiveCompatibilityUtilities::DsymPathOffsetTag)#1},CSMMapArchiveCompatibilityUtilities::_update_string_offsets_to_strtab_relative(TMMapArchive *)::{lambda(TMMapRegionImpl<Pointer64> *,CSMMapArchiveCompatibilityUtilities::RegionTag)#1},CSMMapArchiveCompatibilityUtilities::_update_string_offsets_to_strtab_relative(TMMapArchive *)::{lambda(CSCppMMapSymbol *,CSMMapArchiveCompatibilityUtilities::SymbolTag)#1},CSMMapArchiveCompatibilityUtilities::_update_string_offsets_to_strtab_relative(TMMapArchive *)::{lambda(CSCppMMapInlinedSymbol *,CSMMapArchiveCompatibilityUtilities::InlinedFunctionTag)#1},CSMMapArchiveCompatibilityUtilities::_update_string_offsets_to_strtab_relative(TMMapArchive *)::{lambda(CSCppMMapSourceInfo *,CSMMapArchiveCompatibilityUtilities::SourceInfoTag)#1},CSMMapArchiveCompatibilityUtilities::_update_string_offsets_to_strtab_relative(TMMapArchive *)::{lambda(TMMapArchive *,CSMMapArchiveCompatibilityUtilities::PostProcessingTag)#1}>>(int32x4_t *this, uint64_t a2)
{
  v3 = *(a2 + 24);
  v4 = v3 - *(a2 + 16);
  if (!v3)
  {
    v4 = 0;
  }

  this[2].i32[2] = v4;
  v5 = *(a2 + 8);
  v6 = v5 - *a2;
  if (!v5)
  {
    v6 = 0;
  }

  this[2].i32[3] = v6;
  v7 = this->u32[3];
  v8 = &this[6].i8[32 * this->i32[2]];
  if (v7)
  {
    v9 = *(a2 + 40);
    v10 = 24 * v7;
    v11 = (this[7].i32 + (32 * this->i32[2]));
    v12 = v8 - *(a2 + 32);
    do
    {
      if (v9 >= 4)
      {
        v13 = 0;
      }

      else
      {
        v13 = v12;
      }

      *v11 += v13;
      v11 += 6;
      v12 += 24;
      v10 -= 24;
    }

    while (v10);
  }

  v14 = &v8[(24 * v7)];
  v15 = this[1].u32[0];
  if (v15)
  {
    v16 = *(a2 + 56);
    v17 = 24 * v15;
    v18 = (v14 + 12);
    v19 = v14 - *(a2 + 48);
    do
    {
      if (v16 >= 4)
      {
        v20 = 0;
      }

      else
      {
        v20 = v19;
      }

      *v18 = vadd_s32(vdup_n_s32(v20), *v18);
      v18 += 3;
      v19 += 24;
      v17 -= 24;
    }

    while (v17);
  }

  v21 = &v14[(24 * v15)];
  v22 = this[1].u32[1];
  if (v22)
  {
    v23 = *(a2 + 64);
    v24 = *(a2 + 88);
    v25 = *(a2 + 80);
    v26 = (v21 + 12);
    v27 = v21 - *(a2 + 72);
    v28 = 36 * v22;
    v29 = v21;
    do
    {
      if (v26[-1].i32[1] < 0)
      {
        if (v24 >= 4)
        {
          v31 = v23;
        }

        else
        {
          v31 = v29;
        }

        v30 = v31 + v26[1].i32[1];
      }

      else
      {
        v30 = 0;
      }

      v26[1].i32[1] = v30 - v23;
      if (v25 >= 4)
      {
        v32 = 0;
      }

      else
      {
        v32 = v27;
      }

      *v26 = vadd_s32(*v26, vdup_n_s32(v32));
      v26 = (v26 + 36);
      v27 += 36;
      v29 += 36;
      v28 -= 36;
    }

    while (v28);
  }

  v33 = this[1].u32[2];
  if (v33)
  {
    v34 = &v21[(36 * v22)];
    v35 = *(a2 + 96);
    v36 = (v34 + 20 * v33);
    v37 = *(a2 + 104);
    v38 = v34;
    do
    {
      if (v37 >= 4)
      {
        v39 = v35;
      }

      else
      {
        v39 = v34;
      }

      *(v38 + 2) = CSCppMMapSourceInfo::path(v38, v39) - v35;
      v38 = (v38 + 20);
      v34 = (v34 + 20);
    }

    while (v38 != v36);
  }

  result = TMMapArchive::calculate_checksum(this);
  this[3].i32[0] = result;
  return result;
}

void LegacyMMapArchiveVersion5::LegacyMMapArchiveVersion5(LegacyMMapArchiveVersion5 *this, TMMapArchive *a2)
{
  v4 = LegacyMMapArchiveVersion5::required_bytes_from_modern_archive(a2, a2);
  *this = 7;
  *(this + 1) = v4;
  *(this + 8) = *(a2 + 8);
  *(this + 24) = *(a2 + 24);
  *(this + 5) = 0;
  *(this + 12) = 0;
  *(this + 52) = *(a2 + 52);
  *(this + 68) = *(a2 + 68);
  *(this + 76) = *(a2 + 76);
  *(this + 21) = 0;
}

mach_vm_address_t *MachVMAllocatePtr<TMMapArchive>::~MachVMAllocatePtr(mach_vm_address_t *a1)
{
  if (*a1)
  {
    mach_vm_deallocate(*MEMORY[0x1E69E9A60], *a1, a1[1]);
  }

  return a1;
}

mach_vm_address_t *MachVMAllocatePtr<LegacyMMapArchiveVersion5>::~MachVMAllocatePtr(mach_vm_address_t *a1)
{
  if (*a1)
  {
    mach_vm_deallocate(*MEMORY[0x1E69E9A60], *a1, a1[1]);
  }

  return a1;
}

void sub_1D973E628(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D973E760(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void CSCppSymbolicator::CSCppSymbolicator(uint64_t a1, uint64_t **a2, uint64_t *a3, int a4, const void *a5)
{
  *a1 = &unk_1F5505708;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = CSCppSymbolicator::_symbolicator_family_architecture<std::vector<std::shared_ptr<CSCppSymbolOwner>>>(a2);
  v10 = *a3;
  *a3 = 0;
  *(a1 + 32) = v10;
  *(a1 + 40) = 0;
  *(a1 + 48) = _Block_copy(a5);
  *(a1 + 56) = 0;
  *(a1 + 64) &= ~1u;
  *(a1 + 68) = 0u;
  *(a1 + 84) = 0u;
  *(a1 + 100) = 0u;
  *(a1 + 116) = 0u;
  *(a1 + 132) = 0u;
  *(a1 + 148) = 0;
  atomic_store(a4 & 0xFFFF3FFF, (a1 + 40));
  atomic_fetch_or((a1 + 40), 0x2000u);
  v11 = *a2;
  v12 = a2[1];
  if (*a2 != v12)
  {
    do
    {
      v13 = *v11;
      v14 = v11[1];
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      CSCppSymbolOwner::set_symbolicator(v13, a1);
      if (v14)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      }

      v11 += 2;
    }

    while (v11 != v12);
  }

  operator new();
}

void sub_1D973E95C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14)
{
  MEMORY[0x1DA736760](v15, 0x10A1C40B218BFB8);
  v17 = *(v14 + 120);
  if (v17)
  {
    *(v14 + 128) = v17;
    operator delete(v17);
  }

  a14 = (v14 + 96);
  std::vector<std::unique_ptr<CSCppSymbolOwnerTimeline>>::__destroy_vector::operator()[abi:ne200100](&a14);
  v18 = *(v14 + 72);
  *(v14 + 72) = 0;
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  v19 = *(v14 + 32);
  *(v14 + 32) = 0;
  if (v19)
  {
    (*(*v19 + 8))(v19);
  }

  _Unwind_Resume(a1);
}

uint64_t CSCppSymbolicator::_symbolicator_family_architecture<std::vector<std::shared_ptr<CSCppSymbolOwner>>>(void *a1)
{
  v1 = *a1;
  v2 = a1[1];
  result = *(**a1 + 112);
  while (v1 != v2)
  {
    if (*(*v1 + 112) != result)
    {
      return CSArchitectureGetFamily(result);
    }

    v1 += 16;
  }

  return result;
}

uint64_t *CSCppSymbolicator::initialize_aot_symbolication_session(CSCppSymbolicator *this)
{
  result = *(this + 4);
  if (*(result + 16) == 1)
  {
    v3 = (*(*result + 64))(result);
    v4 = (*(**(this + 4) + 72))(*(this + 4));
    v5 = (*(**(this + 4) + 48))(*(this + 4));
    v6 = (*(**(this + 4) + 56))(*(this + 4));
    if (UUID::is_null(v5))
    {
      v5 = 0;
    }

    if (UUID::is_null(v6))
    {
      v7 = 0;
    }

    else
    {
      v7 = v6;
    }

    v8 = (*(this + 4) + 8);

    return CSInitializeAotSymbolicationSession(v8, v3, v4, v5, v7);
  }

  return result;
}

uint64_t CSCppSymbolicator::send_notification(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *(a1 + 48);
  if (result)
  {
    if (a2 == 256)
    {
      v6 = a4;
    }

    else
    {
      v6 = 0;
    }

    if (a2 == 256)
    {
      v7 = a3;
    }

    else
    {
      v7 = 0;
    }

    if (a2 == 257)
    {
      v6 = a4;
      v7 = a3;
    }

    v8[0] = 2;
    v8[1] = a1;
    v8[2] = v7;
    v8[3] = v6;
    return (*(result + 16))(result, a2, v8, a4);
  }

  return result;
}

void CSCppSymbolicator::~CSCppSymbolicator(CSCppSymbolicator *this)
{
  v15 = *MEMORY[0x1E69E9840];
  *this = &unk_1F5505708;
  os_unfair_lock_lock(this + 3);
  atomic_fetch_or(this + 10, 0x4000u);
  os_unfair_lock_unlock(this + 3);
  (*(**(this + 4) + 128))(*(this + 4));
  v2 = *(this + 6);
  if (v2)
  {
    *&v12 = 2;
    *(&v12 + 1) = this;
    v13 = 0;
    v14 = 0;
    (*(v2 + 16))(v2, 0x80000000, &v12);
    v3 = *(this + 6);
    if (v3)
    {
      _Block_release(v3);
      *(this + 6) = 0;
    }
  }

  os_unfair_lock_lock(this + 3);
  v4 = atomic_load(this + 11);
  v5 = *(this + 9);
  if (v5 != v4)
  {
    v6 = atomic_load(this + 11);
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    atomic_store(0, this + 11);
    v5 = *(this + 9);
  }

  *(this + 9) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  os_unfair_lock_unlock(this + 3);
  CSDestroyAotSymbolicationSession(*(*(this + 4) + 8));
  if (CSGetDebugLoggingLevel() >= 1 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v12) = 134217984;
    *(&v12 + 4) = this;
    _os_log_impl(&dword_1D96E9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "SYMBOLICATOR %p DESTRUCTED\n", &v12, 0xCu);
  }

  v7 = *(this + 18);
  if (v7)
  {
    release_core_file_mapped_memory_cache(v7);
    *(this + 18) = 0;
  }

  v8 = *(this + 15);
  if (v8)
  {
    *(this + 16) = v8;
    operator delete(v8);
  }

  *&v12 = this + 96;
  std::vector<std::unique_ptr<CSCppSymbolOwnerTimeline>>::__destroy_vector::operator()[abi:ne200100](&v12);
  v9 = *(this + 9);
  *(this + 9) = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  v10 = *(this + 4);
  *(this + 4) = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  v11 = *MEMORY[0x1E69E9840];
}

{
  CSCppSymbolicator::~CSCppSymbolicator(this);

  JUMPOUT(0x1DA736760);
}

void sub_1D973EE6C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

unint64_t CSCppSymbolicator::set_aot_image_infos(uint64_t a1, __n128 *a2)
{
  std::vector<CSSymbolicatorAotImageInfo>::__move_assign(a1 + 120, a2);
  v3 = *(a1 + 120);
  v4 = *(a1 + 128);
  v5 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v4 - v3) >> 5));
  if (v4 == v3)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  return std::__introsort<std::_ClassicAlgPolicy,CSCppSymbolicator::set_aot_image_infos(std::vector<CSSymbolicatorAotImageInfo> &&)::$_0 &,CSSymbolicatorAotImageInfo*,false>(v3, v4, v6, 1);
}

char *CSCppSymbolicator::add_aot_image_info(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 120);
  v4 = *(a1 + 128);
  v3 = (a1 + 120);
  if (v4 != v5)
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 5);
    do
    {
      v7 = v6 >> 1;
      v8 = &v5[96 * (v6 >> 1)];
      v9 = *(v8 + 1);
      v10 = v8 + 96;
      v6 += ~(v6 >> 1);
      if (*(a2 + 8) < v9)
      {
        v6 = v7;
      }

      else
      {
        v5 = v10;
      }
    }

    while (v6);
    v4 = v5;
  }

  return std::vector<CSSymbolicatorAotImageInfo>::insert(v3, v4, a2);
}

char *std::vector<CSSymbolicatorAotImageInfo>::insert(void *a1, char *__src, char *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v14 = *a1;
    v15 = 0xAAAAAAAAAAAAAAABLL * (&v6[-*a1] >> 5) + 1;
    if (v15 > 0x2AAAAAAAAAAAAAALL)
    {
      std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
    }

    v16 = __src - v14;
    v17 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v14) >> 5);
    v18 = 2 * v17;
    if (2 * v17 <= v15)
    {
      v18 = 0xAAAAAAAAAAAAAAABLL * (&v6[-*a1] >> 5) + 1;
    }

    if (v17 >= 0x155555555555555)
    {
      v19 = 0x2AAAAAAAAAAAAAALL;
    }

    else
    {
      v19 = v18;
    }

    v42 = a1;
    if (v19)
    {
      std::allocator<CSSymbolicatorAotImageInfo>::allocate_at_least[abi:ne200100](a1, v19);
    }

    v39 = 0;
    v40 = 32 * (v16 >> 5);
    v41 = v40;
    std::__split_buffer<CSSymbolicatorAotImageInfo>::emplace_back<CSSymbolicatorAotImageInfo const&>(&v39, a3);
    v24 = v40;
    memcpy(v41, v4, a1[1] - v4);
    v25 = *a1;
    v26 = v40;
    *&v41 = v41 + a1[1] - v4;
    a1[1] = v4;
    v27 = v4 - v25;
    v28 = (v26 - (v4 - v25));
    memcpy(v28, v25, v27);
    v29 = *a1;
    *a1 = v28;
    v30 = a1[2];
    *(a1 + 1) = v41;
    *&v41 = v29;
    *(&v41 + 1) = v30;
    v39 = v29;
    v40 = v29;
    if (v29)
    {
      operator delete(v29);
    }

    return v24;
  }

  else if (__src == v6)
  {
    v20 = *(a3 + 1);
    *v6 = *a3;
    *(v6 + 1) = v20;
    v21 = *(a3 + 2);
    v22 = *(a3 + 3);
    v23 = *(a3 + 5);
    *(v6 + 4) = *(a3 + 4);
    *(v6 + 5) = v23;
    *(v6 + 2) = v21;
    *(v6 + 3) = v22;
    a1[1] = v6 + 96;
  }

  else
  {
    v8 = __src + 96;
    if (v6 < 0x60)
    {
      v9 = a1[1];
    }

    else
    {
      v9 = v6 + 96;
      v10 = *(v6 - 5);
      *v6 = *(v6 - 6);
      *(v6 + 1) = v10;
      v11 = *(v6 - 4);
      v12 = *(v6 - 3);
      v13 = *(v6 - 1);
      *(v6 + 4) = *(v6 - 2);
      *(v6 + 5) = v13;
      *(v6 + 2) = v11;
      *(v6 + 3) = v12;
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 96, __src, v6 - v8);
      v9 = a1[1];
    }

    v31 = v9 <= a3 || v4 > a3;
    v32 = 96;
    if (v31)
    {
      v32 = 0;
    }

    v33 = &a3[v32];
    v34 = *(v33 + 1);
    *v4 = *v33;
    *(v4 + 1) = v34;
    v35 = *(v33 + 2);
    v36 = *(v33 + 3);
    v37 = *(v33 + 5);
    *(v4 + 4) = *(v33 + 4);
    *(v4 + 5) = v37;
    *(v4 + 2) = v35;
    *(v4 + 3) = v36;
  }

  return v4;
}

void sub_1D973F170(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CSCppSymbolicator::get_aot_image_info_for_address@<X0>(uint64_t this@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(this + 120);
  v3 = *(this + 128);
  if (v3 != v4)
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v4) >> 5);
    v3 = *(this + 120);
    do
    {
      v6 = v5 >> 1;
      v7 = v3 + 96 * (v5 >> 1);
      v8 = *(v7 + 8);
      v9 = v7 + 96;
      v5 += ~(v5 >> 1);
      if (v8 > a2)
      {
        v5 = v6;
      }

      else
      {
        v3 = v9;
      }
    }

    while (v5);
  }

  if (v3 == v4 || (v10 = *(v3 - 88), v10 > a2) || *(v3 - 80) + v10 <= a2)
  {
    v15 = 0;
    *a3 = 0;
  }

  else
  {
    v11 = (v3 - 96);
    v12 = v11[3];
    *(a3 + 32) = v11[2];
    *(a3 + 48) = v12;
    v13 = v11[5];
    *(a3 + 64) = v11[4];
    *(a3 + 80) = v13;
    v14 = v11[1];
    *a3 = *v11;
    *(a3 + 16) = v14;
    v15 = 1;
  }

  *(a3 + 96) = v15;
  return this;
}

void CSCppSymbolicator::force_allocate_all_symbol_owner_data(CSCppSymbolicator *this)
{
  CSCppSymbolicator::get_symbol_owners(this, v3);
  v1 = v3[0];
  v2 = v3[1];
  while (v1 != v2)
  {
    CSCppSymbolOwner::data(*v1);
    v1 += 2;
  }

  v4 = v3;
  std::vector<std::shared_ptr<CSCppSymbolOwner>>::__destroy_vector::operator()[abi:ne200100](&v4);
}

void sub_1D973F2C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<std::shared_ptr<CSCppSymbolOwner>>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void CSCppSymbolicator::apply_mutable_context_block(uint64_t a1, uint64_t a2)
{
  CSCppSymbolicator::get_symbol_owners(a1, &v17);
  CSCppMutableContext::CSCppMutableContext(&v10, &v17);
  v16 = &v17;
  std::vector<std::shared_ptr<CSCppSymbolOwner>>::__destroy_vector::operator()[abi:ne200100](&v16);
  (*(a2 + 16))(a2, &v10);
  CSCppMutableContext::make_all_symbol_owners_immutable(&v10);
  v9 = 1;
  memset(v6, 0, sizeof(v6));
  std::vector<std::shared_ptr<CSCppSymbolOwner>>::__init_with_size[abi:ne200100]<std::shared_ptr<CSCppSymbolOwner>*,std::shared_ptr<CSCppSymbolOwner>*>(v6, v10, v11, (v11 - v10) >> 4);
  memset(v7, 0, sizeof(v7));
  std::vector<std::shared_ptr<CSCppSymbolOwner>>::__init_with_size[abi:ne200100]<std::shared_ptr<CSCppSymbolOwner>*,std::shared_ptr<CSCppSymbolOwner>*>(v7, v12, v13, (v13 - v12) >> 4);
  memset(v8, 0, 24);
  std::vector<std::shared_ptr<CSCppSymbolOwner>>::__init_with_size[abi:ne200100]<std::shared_ptr<CSCppSymbolOwner>*,std::shared_ptr<CSCppSymbolOwner>*>(v8, v14, v15, (v15 - v14) >> 4);
  v8[3] = &v9;
  v4 = *(a1 + 80);
  add_explicit = atomic_fetch_add_explicit((a1 + 68), 1u, memory_order_relaxed);
  os_unfair_lock_lock((a1 + 12));
  if ((add_explicit & 0xF0000000) != 0 && (add_explicit & 0xFFFFFFF) == 0)
  {
    if (add_explicit)
    {
      std::vector<std::unique_ptr<CSCppSymbolOwnerTimeline>>::erase(a1 + 96, *(a1 + 96), (*(a1 + 96) + (add_explicit >> 25)));
      atomic_fetch_add((a1 + 68), -(add_explicit & 0xF0000000));
    }
  }

  atomic_store(0, (a1 + 80));
  atomic_load((a1 + 88));
  operator new();
}

void sub_1D973F70C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  os_unfair_lock_unlock(v13 + 3);
  CSCppMutableContext::~CSCppMutableContext(v14);
  CSCppMutableContext::~CSCppMutableContext(va);
  _Unwind_Resume(a1);
}

uint64_t CSCppSymbolicator::dyld_activity(uint64_t result, void *a2, uint64_t a3, char a4)
{
  v10 = *MEMORY[0x1E69E9840];
  if (*a2)
  {
    v4 = atomic_load((result + 40));
    if ((v4 & 0x4000) == 0)
    {
      v8[0] = 0;
      v8[1] = v8;
      v8[2] = 0x2000000000;
      v9 = a4;
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 0x40000000;
      v6[2] = ___ZN17CSCppSymbolicator13dyld_activityEONSt3__110shared_ptrI16CSCppSymbolOwnerEEyb_block_invoke;
      v6[3] = &unk_1E8583D98;
      v7 = a4;
      v6[5] = a2;
      v6[6] = a3;
      v6[4] = v8;
      CSCppSymbolicator::apply_mutable_context_block(result, v6);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1D973F9C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ___ZN17CSCppSymbolicator13dyld_activityEONSt3__110shared_ptrI16CSCppSymbolOwnerEEyb_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v3 = **(a1 + 40);
  *(v3 + 108) |= 0x1000000u;
  v4 = 96;
  if (*(a1 + 56))
  {
    v4 = 88;
  }

  *(v3 + v4) = v2;
  v6 = v3 + 32;
  v5 = *(v3 + 32);
  if (*(v6 + 8) == v5)
  {
    std::vector<TRawSymbol<Pointer32>>::__throw_out_of_range[abi:ne200100]();
  }

  v9 = *a2;
  if (*a2 < *(a2 + 8))
  {
    v10 = *v5;
    v11 = *a2;
    do
    {
      v12 = *v11;
      v13 = *(v11 + 1);
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v14 = v12[4];
      if (v12[5] == v14)
      {
        std::vector<TRawSymbol<Pointer32>>::__throw_out_of_range[abi:ne200100]();
      }

      if (v10 == *v14 && ((v15 = **(a1 + 40), v15[2] == v12[2]) ? (v16 = v15[3] == v12[3]) : (v16 = 0), v16 && (v17 = v12[12], v17 >= 0x7FFFFFFFFFFFFFFFLL)))
      {
        v19 = v12[11];
        if (*(a1 + 48) - v19 >= v17 - v19)
        {
          v18 = 0;
        }

        else
        {
          if (*(a1 + 56) == 1)
          {
            *(*(*(a1 + 32) + 8) + 24) = 0;
          }

          else
          {
            v15[11] = v19;
            *(*(*(a1 + 32) + 8) + 24) = 1;
            CSCppMutableContext::remove_symbol_owner(a2, v9);
          }

          v18 = 2;
        }
      }

      else
      {
        v18 = 4;
      }

      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      }

      if ((v18 | 4) != 4)
      {
        break;
      }

      ++v11;
      ++v9;
    }

    while (v11 < *(a2 + 8));
  }

  if (*(*(*(a1 + 32) + 8) + 24) == 1)
  {
    v20 = *(a1 + 40);
    v22 = *v20;
    v21 = v20[1];
    *&v23 = v22;
    *(&v23 + 1) = v21;
    if (v21)
    {
      atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
    }

    CSCppMutableContext::add_symbol_owner_no_copy(a2, &v23);
    if (*(&v23 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v23 + 1));
    }
  }
}

void sub_1D973FBBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::unique_ptr<CSCppSymbolOwnerTimeline>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::unique_ptr<CSCppSymbolOwnerTimeline>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *std::vector<std::unique_ptr<CSCppSymbolOwnerTimeline>>::clear[abi:ne200100](void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  while (v3 != v2)
  {
    v4 = *--v3;
    result = v4;
    *v3 = 0;
    if (v4)
    {
      result = (*(*result + 8))(result);
    }
  }

  v1[1] = v2;
  return result;
}

__n128 std::vector<CSSymbolicatorAotImageInfo>::__move_assign(uint64_t a1, __n128 *a2)
{
  v4 = *a1;
  if (v4)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  result = *a2;
  *a1 = *a2;
  *(a1 + 16) = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  return result;
}

unint64_t std::__introsort<std::_ClassicAlgPolicy,CSCppSymbolicator::set_aot_image_infos(std::vector<CSSymbolicatorAotImageInfo> &&)::$_0 &,CSSymbolicatorAotImageInfo*,false>(unint64_t result, __int128 *a2, uint64_t a3, char a4)
{
  v7 = result;
  v537 = *MEMORY[0x1E69E9840];
LABEL_2:
  v8 = a2 - 6;
  v9 = a2 - 12;
  v10 = a2 - 18;
  v291 = a2 - 35;
  v11 = v7;
  while (1)
  {
    v7 = v11;
    v12 = a2 - v11;
    v13 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v11) >> 5);
    if (v13 > 2)
    {
      break;
    }

    if (v13 < 2)
    {
      goto LABEL_195;
    }

    if (v13 == 2)
    {
      if (*(a2 - 11) < *(v11 + 8))
      {
        v330 = *v11;
        v369 = *(v11 + 16);
        v485 = *(v11 + 64);
        v524 = *(v11 + 80);
        v407 = *(v11 + 32);
        v446 = *(v11 + 48);
        v168 = *(a2 - 1);
        v170 = *(a2 - 4);
        v169 = *(a2 - 3);
        *(v11 + 64) = *(a2 - 2);
        *(v11 + 80) = v168;
        *(v11 + 32) = v170;
        *(v11 + 48) = v169;
        v171 = *(a2 - 5);
        *v11 = *(a2 - 6);
        *(v11 + 16) = v171;
        *(a2 - 6) = v330;
        *(a2 - 5) = v369;
        *(a2 - 2) = v485;
        *(a2 - 1) = v524;
        *(a2 - 4) = v407;
        *(a2 - 3) = v446;
      }

      goto LABEL_195;
    }

LABEL_10:
    if (v12 <= 2303)
    {
      v183 = (v11 + 96);
      v185 = v11 == a2 || v183 == a2;
      if (a4)
      {
        if (!v185)
        {
          v186 = 0;
          v187 = v11;
          do
          {
            v188 = v183;
            v189 = v187[13];
            if (v189 < v187[1])
            {
              v190 = *v188;
              v410 = *(v187 + 9);
              v449 = *(v187 + 10);
              v488 = *(v187 + 11);
              v192 = *(v187 + 7);
              v191 = *(v187 + 8);
              v193 = v186;
              v333 = v192;
              while (1)
              {
                v194 = (v11 + v193);
                v195 = *(v11 + v193 + 48);
                v194[8] = *(v11 + v193 + 32);
                v194[9] = v195;
                v196 = *(v11 + v193 + 80);
                v194[10] = *(v11 + v193 + 64);
                v194[11] = v196;
                v197 = *(v11 + v193 + 16);
                v194[6] = *(v11 + v193);
                v194[7] = v197;
                if (!v193)
                {
                  break;
                }

                v193 -= 96;
                if (v189 >= *(v194 - 11))
                {
                  v198 = v11 + v193 + 96;
                  goto LABEL_130;
                }
              }

              v198 = v11;
LABEL_130:
              *v198 = v190;
              *(v198 + 8) = v189;
              *(v198 + 48) = v410;
              *(v198 + 64) = v449;
              *(v198 + 80) = v488;
              *(v198 + 16) = v333;
              *(v198 + 32) = v191;
            }

            v183 = v188 + 6;
            v186 += 96;
            v187 = v188;
          }

          while (v188 + 6 != a2);
        }
      }

      else if (!v185)
      {
        do
        {
          v259 = v183;
          v260 = *(v7 + 104);
          if (v260 < *(v7 + 8))
          {
            v261 = *v183;
            v416 = *(v7 + 144);
            v455 = *(v7 + 160);
            v494 = *(v7 + 176);
            v262 = v259;
            v339 = *(v7 + 112);
            v377 = *(v7 + 128);
            do
            {
              v263 = *(v262 - 3);
              v262[2] = *(v262 - 4);
              v262[3] = v263;
              v264 = *(v262 - 1);
              v262[4] = *(v262 - 2);
              v262[5] = v264;
              v265 = *(v262 - 5);
              *v262 = *(v262 - 6);
              v262[1] = v265;
              v266 = *(v262 - 23);
              v262 -= 6;
            }

            while (v260 < v266);
            *v262 = v261;
            *(v262 + 1) = v260;
            v262[1] = v339;
            v262[4] = v455;
            v262[5] = v494;
            v262[2] = v377;
            v262[3] = v416;
          }

          v183 = v259 + 6;
          v7 = v259;
        }

        while (v259 + 6 != a2);
      }

      goto LABEL_195;
    }

    if (!a3)
    {
      if (v11 != a2)
      {
        v199 = (v13 - 2) >> 1;
        v200 = v199;
        do
        {
          v201 = v200;
          if (v199 >= v200)
          {
            v202 = (2 * v200) | 1;
            v203 = v11 + 96 * v202;
            if (2 * v200 + 2 < v13)
            {
              v204 = *(v203 + 8);
              v205 = *(v203 + 104);
              v206 = v204 >= v205;
              v207 = v204 >= v205 ? 0 : 96;
              v203 += v207;
              if (!v206)
              {
                v202 = 2 * v200 + 2;
              }
            }

            v208 = v11 + 96 * v200;
            v209 = *(v208 + 8);
            if (*(v203 + 8) >= v209)
            {
              v210 = *v208;
              v334 = *(v208 + 16);
              v450 = *(v208 + 64);
              v489 = *(v208 + 80);
              v372 = *(v208 + 32);
              v411 = *(v208 + 48);
              do
              {
                v211 = v208;
                v208 = v203;
                v212 = *(v203 + 16);
                *v211 = *v203;
                v211[1] = v212;
                v213 = *(v203 + 32);
                v214 = *(v203 + 48);
                v215 = *(v203 + 80);
                v211[4] = *(v203 + 64);
                v211[5] = v215;
                v211[2] = v213;
                v211[3] = v214;
                if (v199 < v202)
                {
                  break;
                }

                v216 = (2 * v202) | 1;
                v203 = v11 + 96 * v216;
                v217 = 2 * v202 + 2;
                if (v217 < v13)
                {
                  v218 = *(v203 + 8);
                  v219 = *(v203 + 104);
                  v220 = v218 >= v219;
                  v221 = v218 >= v219 ? 0 : 96;
                  v203 += v221;
                  if (!v220)
                  {
                    v216 = v217;
                  }
                }

                v202 = v216;
              }

              while (*(v203 + 8) >= v209);
              *v208 = v210;
              *(v208 + 8) = v209;
              *(v208 + 48) = v411;
              *(v208 + 64) = v450;
              *(v208 + 80) = v489;
              *(v208 + 16) = v334;
              *(v208 + 32) = v372;
            }
          }

          v200 = v201 - 1;
        }

        while (v201);
        v222 = 0xAAAAAAAAAAAAAAABLL * (v12 >> 5);
        do
        {
          v223 = 0;
          v335 = *v11;
          v373 = *(v11 + 16);
          v490 = *(v11 + 64);
          v527 = *(v11 + 80);
          v412 = *(v11 + 32);
          v451 = *(v11 + 48);
          v224 = v11;
          do
          {
            v225 = &v224[6 * v223];
            v226 = v225 + 6;
            result = 2 * v223;
            v227 = (2 * v223) | 1;
            v223 = 2 * v223 + 2;
            if (v223 >= v222)
            {
              v223 = v227;
            }

            else
            {
              result = *(v225 + 13);
              v228 = *(v225 + 25);
              v229 = v225 + 12;
              if (result >= v228)
              {
                v223 = v227;
              }

              else
              {
                v226 = v229;
              }
            }

            v230 = v226[1];
            *v224 = *v226;
            v224[1] = v230;
            v231 = v226[2];
            v232 = v226[3];
            v233 = v226[5];
            v224[4] = v226[4];
            v224[5] = v233;
            v224[2] = v231;
            v224[3] = v232;
            v224 = v226;
          }

          while (v223 <= ((v222 - 2) >> 1));
          a2 -= 6;
          if (v226 == a2)
          {
            *v226 = v335;
            v226[1] = v373;
            v226[4] = v490;
            v226[5] = v527;
            v226[2] = v412;
            v226[3] = v451;
          }

          else
          {
            v234 = a2[1];
            *v226 = *a2;
            v226[1] = v234;
            v235 = a2[2];
            v236 = a2[3];
            v237 = a2[5];
            v226[4] = a2[4];
            v226[5] = v237;
            v226[2] = v235;
            v226[3] = v236;
            a2[4] = v490;
            a2[5] = v527;
            a2[2] = v412;
            a2[3] = v451;
            *a2 = v335;
            a2[1] = v373;
            v238 = v226 - v11 + 96;
            if (v238 >= 97)
            {
              v239 = (-2 - 0x5555555555555555 * (v238 >> 5)) >> 1;
              v240 = v11 + 96 * v239;
              v241 = *(v226 + 1);
              if (*(v240 + 8) < v241)
              {
                v242 = *v226;
                v303 = v226[4];
                v306 = v226[5];
                v297 = v226[2];
                v300 = v226[3];
                v294 = v226[1];
                do
                {
                  v243 = v226;
                  v226 = v240;
                  v244 = *(v240 + 16);
                  *v243 = *v240;
                  v243[1] = v244;
                  v245 = *(v240 + 32);
                  v246 = *(v240 + 48);
                  v247 = *(v240 + 80);
                  v243[4] = *(v240 + 64);
                  v243[5] = v247;
                  v243[2] = v245;
                  v243[3] = v246;
                  if (!v239)
                  {
                    break;
                  }

                  v239 = (v239 - 1) >> 1;
                  v240 = v11 + 96 * v239;
                }

                while (*(v240 + 8) < v241);
                *v226 = v242;
                *(v226 + 1) = v241;
                v226[3] = v300;
                v226[4] = v303;
                v226[5] = v306;
                v226[1] = v294;
                v226[2] = v297;
              }
            }
          }
        }

        while (v222-- > 2);
      }

      goto LABEL_195;
    }

    v14 = v13 >> 1;
    v15 = v11 + 96 * (v13 >> 1);
    v16 = *(a2 - 11);
    if (v12 > 0x3000)
    {
      v17 = *(v15 + 8);
      if (v17 >= *(v11 + 8))
      {
        if (v16 < v17)
        {
          v309 = *v15;
          v348 = *(v15 + 16);
          v464 = *(v15 + 64);
          v503 = *(v15 + 80);
          v386 = *(v15 + 32);
          v425 = *(v15 + 48);
          v27 = *(a2 - 1);
          v29 = *(a2 - 4);
          v28 = *(a2 - 3);
          *(v15 + 64) = *(a2 - 2);
          *(v15 + 80) = v27;
          *(v15 + 32) = v29;
          *(v15 + 48) = v28;
          v30 = *(a2 - 5);
          *v15 = *v8;
          *(v15 + 16) = v30;
          *v8 = v309;
          *(a2 - 5) = v348;
          *(a2 - 2) = v464;
          *(a2 - 1) = v503;
          *(a2 - 4) = v386;
          *(a2 - 3) = v425;
          if (*(v15 + 8) < *(v11 + 8))
          {
            v310 = *v11;
            v349 = *(v11 + 16);
            v465 = *(v11 + 64);
            v504 = *(v11 + 80);
            v387 = *(v11 + 32);
            v426 = *(v11 + 48);
            v31 = *(v15 + 80);
            v33 = *(v15 + 32);
            v32 = *(v15 + 48);
            *(v11 + 64) = *(v15 + 64);
            *(v11 + 80) = v31;
            *(v11 + 32) = v33;
            *(v11 + 48) = v32;
            v34 = *(v15 + 16);
            *v11 = *v15;
            *(v11 + 16) = v34;
            *v15 = v310;
            *(v15 + 16) = v349;
            *(v15 + 64) = v465;
            *(v15 + 80) = v504;
            *(v15 + 32) = v387;
            *(v15 + 48) = v426;
          }
        }
      }

      else
      {
        if (v16 < v17)
        {
          v307 = *v11;
          v346 = *(v11 + 16);
          v462 = *(v11 + 64);
          v501 = *(v11 + 80);
          v384 = *(v11 + 32);
          v423 = *(v11 + 48);
          v18 = *(a2 - 1);
          v20 = *(a2 - 4);
          v19 = *(a2 - 3);
          *(v11 + 64) = *(a2 - 2);
          *(v11 + 80) = v18;
          *(v11 + 32) = v20;
          *(v11 + 48) = v19;
          v21 = *(a2 - 5);
          *v11 = *v8;
          *(v11 + 16) = v21;
          goto LABEL_27;
        }

        v313 = *v11;
        v352 = *(v11 + 16);
        v468 = *(v11 + 64);
        v507 = *(v11 + 80);
        v390 = *(v11 + 32);
        v429 = *(v11 + 48);
        v43 = *(v15 + 80);
        v45 = *(v15 + 32);
        v44 = *(v15 + 48);
        *(v11 + 64) = *(v15 + 64);
        *(v11 + 80) = v43;
        *(v11 + 32) = v45;
        *(v11 + 48) = v44;
        v46 = *(v15 + 16);
        *v11 = *v15;
        *(v11 + 16) = v46;
        *v15 = v313;
        *(v15 + 16) = v352;
        *(v15 + 64) = v468;
        *(v15 + 80) = v507;
        *(v15 + 32) = v390;
        *(v15 + 48) = v429;
        if (*(a2 - 11) < *(v15 + 8))
        {
          v307 = *v15;
          v346 = *(v15 + 16);
          v462 = *(v15 + 64);
          v501 = *(v15 + 80);
          v384 = *(v15 + 32);
          v423 = *(v15 + 48);
          v47 = *(a2 - 1);
          v49 = *(a2 - 4);
          v48 = *(a2 - 3);
          *(v15 + 64) = *(a2 - 2);
          *(v15 + 80) = v47;
          *(v15 + 32) = v49;
          *(v15 + 48) = v48;
          v50 = *(a2 - 5);
          *v15 = *v8;
          *(v15 + 16) = v50;
LABEL_27:
          *v8 = v307;
          *(a2 - 5) = v346;
          *(a2 - 2) = v462;
          *(a2 - 1) = v501;
          *(a2 - 4) = v384;
          *(a2 - 3) = v423;
        }
      }

      v51 = v11 + 96 * v14;
      v52 = v51 - 96;
      v53 = *(v51 - 88);
      v54 = *(a2 - 23);
      if (v53 >= *(v11 + 104))
      {
        if (v54 < v53)
        {
          v315 = *v52;
          v354 = *(v52 + 16);
          v470 = *(v52 + 64);
          v509 = *(v52 + 80);
          v392 = *(v52 + 32);
          v431 = *(v52 + 48);
          v59 = *(a2 - 7);
          v61 = *(a2 - 10);
          v60 = *(a2 - 9);
          *(v52 + 64) = *(a2 - 8);
          *(v52 + 80) = v59;
          *(v52 + 32) = v61;
          *(v52 + 48) = v60;
          v62 = *(a2 - 11);
          *v52 = *v9;
          *(v52 + 16) = v62;
          *v9 = v315;
          *(a2 - 11) = v354;
          *(a2 - 8) = v470;
          *(a2 - 7) = v509;
          *(a2 - 10) = v392;
          *(a2 - 9) = v431;
          if (*(v52 + 8) < *(v11 + 104))
          {
            v393 = *(v11 + 128);
            v432 = *(v11 + 144);
            v471 = *(v11 + 160);
            v510 = *(v11 + 176);
            v316 = *(v11 + 96);
            v355 = *(v11 + 112);
            v63 = *(v52 + 16);
            *(v11 + 96) = *v52;
            *(v11 + 112) = v63;
            v64 = *(v52 + 80);
            v66 = *(v52 + 32);
            v65 = *(v52 + 48);
            *(v11 + 160) = *(v52 + 64);
            *(v11 + 176) = v64;
            *(v11 + 128) = v66;
            *(v11 + 144) = v65;
            *v52 = v316;
            *(v52 + 16) = v355;
            *(v52 + 64) = v471;
            *(v52 + 80) = v510;
            *(v52 + 32) = v393;
            *(v52 + 48) = v432;
          }
        }
      }

      else
      {
        if (v54 < v53)
        {
          v391 = *(v11 + 128);
          v430 = *(v11 + 144);
          v469 = *(v11 + 160);
          v508 = *(v11 + 176);
          v314 = *(v11 + 96);
          v353 = *(v11 + 112);
          v55 = *(a2 - 11);
          *(v11 + 96) = *v9;
          *(v11 + 112) = v55;
          v56 = *(a2 - 7);
          v58 = *(a2 - 10);
          v57 = *(a2 - 9);
          *(v11 + 160) = *(a2 - 8);
          *(v11 + 176) = v56;
          *(v11 + 128) = v58;
          *(v11 + 144) = v57;
          goto LABEL_39;
        }

        v395 = *(v11 + 128);
        v434 = *(v11 + 144);
        v473 = *(v11 + 160);
        v512 = *(v11 + 176);
        v318 = *(v11 + 96);
        v357 = *(v11 + 112);
        v75 = *(v52 + 16);
        *(v11 + 96) = *v52;
        *(v11 + 112) = v75;
        v76 = *(v52 + 80);
        v78 = *(v52 + 32);
        v77 = *(v52 + 48);
        *(v11 + 160) = *(v52 + 64);
        *(v11 + 176) = v76;
        *(v11 + 128) = v78;
        *(v11 + 144) = v77;
        *v52 = v318;
        *(v52 + 16) = v357;
        *(v52 + 64) = v473;
        *(v52 + 80) = v512;
        *(v52 + 32) = v395;
        *(v52 + 48) = v434;
        if (*(a2 - 23) < *(v52 + 8))
        {
          v314 = *v52;
          v353 = *(v52 + 16);
          v469 = *(v52 + 64);
          v508 = *(v52 + 80);
          v391 = *(v52 + 32);
          v430 = *(v52 + 48);
          v79 = *(a2 - 7);
          v81 = *(a2 - 10);
          v80 = *(a2 - 9);
          *(v52 + 64) = *(a2 - 8);
          *(v52 + 80) = v79;
          *(v52 + 32) = v81;
          *(v52 + 48) = v80;
          v82 = *(a2 - 11);
          *v52 = *v9;
          *(v52 + 16) = v82;
LABEL_39:
          *v9 = v314;
          *(a2 - 11) = v353;
          *(a2 - 8) = v469;
          *(a2 - 7) = v508;
          *(a2 - 10) = v391;
          *(a2 - 9) = v430;
        }
      }

      v83 = v11 + 96 * v14;
      v84 = *(v83 + 104);
      v85 = *v291;
      if (v84 >= *(v11 + 200))
      {
        if (v85 < v84)
        {
          v320 = *(v83 + 96);
          v359 = *(v83 + 112);
          v475 = *(v83 + 160);
          v514 = *(v83 + 176);
          v397 = *(v83 + 128);
          v436 = *(v83 + 144);
          v90 = *(a2 - 13);
          v92 = *(a2 - 16);
          v91 = *(a2 - 15);
          *(v83 + 160) = *(a2 - 14);
          *(v83 + 176) = v90;
          *(v83 + 128) = v92;
          *(v83 + 144) = v91;
          v93 = *(a2 - 17);
          *(v83 + 96) = *v10;
          *(v83 + 112) = v93;
          *v10 = v320;
          *(a2 - 17) = v359;
          *(a2 - 14) = v475;
          *(a2 - 13) = v514;
          *(a2 - 16) = v397;
          *(a2 - 15) = v436;
          if (*(v83 + 104) < *(v11 + 200))
          {
            v398 = *(v11 + 224);
            v437 = *(v11 + 240);
            v476 = *(v11 + 256);
            v515 = *(v11 + 272);
            v321 = *(v11 + 192);
            v360 = *(v11 + 208);
            v94 = *(v83 + 112);
            *(v11 + 192) = *(v83 + 96);
            *(v11 + 208) = v94;
            v95 = *(v83 + 176);
            v97 = *(v83 + 128);
            v96 = *(v83 + 144);
            *(v11 + 256) = *(v83 + 160);
            *(v11 + 272) = v95;
            *(v11 + 224) = v97;
            *(v11 + 240) = v96;
            *(v83 + 96) = v321;
            *(v83 + 112) = v360;
            *(v83 + 160) = v476;
            *(v83 + 176) = v515;
            *(v83 + 128) = v398;
            *(v83 + 144) = v437;
          }
        }
      }

      else
      {
        if (v85 < v84)
        {
          v396 = *(v11 + 224);
          v435 = *(v11 + 240);
          v474 = *(v11 + 256);
          v513 = *(v11 + 272);
          v319 = *(v11 + 192);
          v358 = *(v11 + 208);
          v86 = *(a2 - 17);
          *(v11 + 192) = *v10;
          *(v11 + 208) = v86;
          v87 = *(a2 - 13);
          v89 = *(a2 - 16);
          v88 = *(a2 - 15);
          *(v11 + 256) = *(a2 - 14);
          *(v11 + 272) = v87;
          *(v11 + 224) = v89;
          *(v11 + 240) = v88;
          goto LABEL_48;
        }

        v399 = *(v11 + 224);
        v438 = *(v11 + 240);
        v477 = *(v11 + 256);
        v516 = *(v11 + 272);
        v322 = *(v11 + 192);
        v361 = *(v11 + 208);
        v98 = *(v83 + 112);
        *(v11 + 192) = *(v83 + 96);
        *(v11 + 208) = v98;
        v99 = *(v83 + 176);
        v101 = *(v83 + 128);
        v100 = *(v83 + 144);
        *(v11 + 256) = *(v83 + 160);
        *(v11 + 272) = v99;
        *(v11 + 224) = v101;
        *(v11 + 240) = v100;
        *(v83 + 96) = v322;
        *(v83 + 112) = v361;
        *(v83 + 160) = v477;
        *(v83 + 176) = v516;
        *(v83 + 128) = v399;
        *(v83 + 144) = v438;
        if (*v291 < *(v83 + 104))
        {
          v319 = *(v83 + 96);
          v358 = *(v83 + 112);
          v474 = *(v83 + 160);
          v513 = *(v83 + 176);
          v396 = *(v83 + 128);
          v435 = *(v83 + 144);
          v102 = *(a2 - 13);
          v104 = *(a2 - 16);
          v103 = *(a2 - 15);
          *(v83 + 160) = *(a2 - 14);
          *(v83 + 176) = v102;
          *(v83 + 128) = v104;
          *(v83 + 144) = v103;
          v105 = *(a2 - 17);
          *(v83 + 96) = *v10;
          *(v83 + 112) = v105;
LABEL_48:
          *v10 = v319;
          *(a2 - 17) = v358;
          *(a2 - 14) = v474;
          *(a2 - 13) = v513;
          *(a2 - 16) = v396;
          *(a2 - 15) = v435;
        }
      }

      v106 = *(v15 + 8);
      v107 = *(v83 + 104);
      if (v106 >= *(v52 + 8))
      {
        if (v107 < v106)
        {
          v324 = *v15;
          v363 = *(v15 + 16);
          v479 = *(v15 + 64);
          v518 = *(v15 + 80);
          v401 = *(v15 + 32);
          v440 = *(v15 + 48);
          v111 = *(v83 + 176);
          *(v15 + 64) = *(v83 + 160);
          *(v15 + 80) = v111;
          v112 = *(v83 + 144);
          *(v15 + 32) = *(v83 + 128);
          *(v15 + 48) = v112;
          v113 = *(v83 + 112);
          *v15 = *(v83 + 96);
          *(v15 + 16) = v113;
          *(v83 + 96) = v324;
          *(v83 + 112) = v363;
          *(v83 + 160) = v479;
          *(v83 + 176) = v518;
          *(v83 + 128) = v401;
          *(v83 + 144) = v440;
          if (*(v15 + 8) < *(v52 + 8))
          {
            v325 = *v52;
            v364 = *(v52 + 16);
            v480 = *(v52 + 64);
            v519 = *(v52 + 80);
            v402 = *(v52 + 32);
            v441 = *(v52 + 48);
            v114 = *(v15 + 80);
            *(v52 + 64) = *(v15 + 64);
            *(v52 + 80) = v114;
            v115 = *(v15 + 48);
            *(v52 + 32) = *(v15 + 32);
            *(v52 + 48) = v115;
            v116 = *(v15 + 16);
            *v52 = *v15;
            *(v52 + 16) = v116;
            *v15 = v325;
            *(v15 + 16) = v364;
            *(v15 + 64) = v480;
            *(v15 + 80) = v519;
            *(v15 + 32) = v402;
            *(v15 + 48) = v441;
          }
        }
      }

      else
      {
        if (v107 < v106)
        {
          v323 = *v52;
          v362 = *(v52 + 16);
          v478 = *(v52 + 64);
          v517 = *(v52 + 80);
          v400 = *(v52 + 32);
          v439 = *(v52 + 48);
          v108 = *(v83 + 176);
          *(v52 + 64) = *(v83 + 160);
          *(v52 + 80) = v108;
          v109 = *(v83 + 144);
          *(v52 + 32) = *(v83 + 128);
          *(v52 + 48) = v109;
          v110 = *(v83 + 112);
          *v52 = *(v83 + 96);
          *(v52 + 16) = v110;
          goto LABEL_57;
        }

        v326 = *v52;
        v365 = *(v52 + 16);
        v481 = *(v52 + 64);
        v520 = *(v52 + 80);
        v403 = *(v52 + 32);
        v442 = *(v52 + 48);
        v117 = *(v15 + 80);
        *(v52 + 64) = *(v15 + 64);
        *(v52 + 80) = v117;
        v118 = *(v15 + 48);
        *(v52 + 32) = *(v15 + 32);
        *(v52 + 48) = v118;
        v119 = *(v15 + 16);
        *v52 = *v15;
        *(v52 + 16) = v119;
        *v15 = v326;
        *(v15 + 16) = v365;
        *(v15 + 64) = v481;
        *(v15 + 80) = v520;
        *(v15 + 32) = v403;
        *(v15 + 48) = v442;
        if (*(v83 + 104) < *(v15 + 8))
        {
          v323 = *v15;
          v362 = *(v15 + 16);
          v478 = *(v15 + 64);
          v517 = *(v15 + 80);
          v400 = *(v15 + 32);
          v439 = *(v15 + 48);
          v120 = *(v83 + 176);
          *(v15 + 64) = *(v83 + 160);
          *(v15 + 80) = v120;
          v121 = *(v83 + 144);
          *(v15 + 32) = *(v83 + 128);
          *(v15 + 48) = v121;
          v122 = *(v83 + 112);
          *v15 = *(v83 + 96);
          *(v15 + 16) = v122;
LABEL_57:
          *(v83 + 96) = v323;
          *(v83 + 112) = v362;
          *(v83 + 160) = v478;
          *(v83 + 176) = v517;
          *(v83 + 128) = v400;
          *(v83 + 144) = v439;
        }
      }

      v327 = *v11;
      v366 = *(v11 + 16);
      v482 = *(v11 + 64);
      v521 = *(v11 + 80);
      v404 = *(v11 + 32);
      v443 = *(v11 + 48);
      v123 = *(v15 + 80);
      v125 = *(v15 + 32);
      v124 = *(v15 + 48);
      *(v11 + 64) = *(v15 + 64);
      *(v11 + 80) = v123;
      *(v11 + 32) = v125;
      *(v11 + 48) = v124;
      v126 = *(v15 + 16);
      *v11 = *v15;
      *(v11 + 16) = v126;
      *v15 = v327;
      *(v15 + 16) = v366;
      *(v15 + 64) = v482;
      *(v15 + 80) = v521;
      *(v15 + 32) = v404;
      *(v15 + 48) = v443;
      goto LABEL_59;
    }

    v22 = *(v11 + 8);
    if (v22 >= *(v15 + 8))
    {
      if (v16 < v22)
      {
        v311 = *v11;
        v350 = *(v11 + 16);
        v466 = *(v11 + 64);
        v505 = *(v11 + 80);
        v388 = *(v11 + 32);
        v427 = *(v11 + 48);
        v35 = *(a2 - 1);
        v37 = *(a2 - 4);
        v36 = *(a2 - 3);
        *(v11 + 64) = *(a2 - 2);
        *(v11 + 80) = v35;
        *(v11 + 32) = v37;
        *(v11 + 48) = v36;
        v38 = *(a2 - 5);
        *v11 = *v8;
        *(v11 + 16) = v38;
        *v8 = v311;
        *(a2 - 5) = v350;
        *(a2 - 2) = v466;
        *(a2 - 1) = v505;
        *(a2 - 4) = v388;
        *(a2 - 3) = v427;
        if (*(v11 + 8) < *(v15 + 8))
        {
          v312 = *v15;
          v351 = *(v15 + 16);
          v467 = *(v15 + 64);
          v506 = *(v15 + 80);
          v389 = *(v15 + 32);
          v428 = *(v15 + 48);
          v39 = *(v11 + 80);
          v41 = *(v11 + 32);
          v40 = *(v11 + 48);
          *(v15 + 64) = *(v11 + 64);
          *(v15 + 80) = v39;
          *(v15 + 32) = v41;
          *(v15 + 48) = v40;
          v42 = *(v11 + 16);
          *v15 = *v11;
          *(v15 + 16) = v42;
          *v11 = v312;
          *(v11 + 16) = v351;
          *(v11 + 64) = v467;
          *(v11 + 80) = v506;
          *(v11 + 32) = v389;
          *(v11 + 48) = v428;
        }
      }

      goto LABEL_59;
    }

    if (v16 < v22)
    {
      v308 = *v15;
      v347 = *(v15 + 16);
      v463 = *(v15 + 64);
      v502 = *(v15 + 80);
      v385 = *(v15 + 32);
      v424 = *(v15 + 48);
      v23 = *(a2 - 1);
      v25 = *(a2 - 4);
      v24 = *(a2 - 3);
      *(v15 + 64) = *(a2 - 2);
      *(v15 + 80) = v23;
      *(v15 + 32) = v25;
      *(v15 + 48) = v24;
      v26 = *(a2 - 5);
      *v15 = *v8;
      *(v15 + 16) = v26;
LABEL_36:
      *v8 = v308;
      *(a2 - 5) = v347;
      *(a2 - 2) = v463;
      *(a2 - 1) = v502;
      *(a2 - 4) = v385;
      *(a2 - 3) = v424;
      goto LABEL_59;
    }

    v317 = *v15;
    v356 = *(v15 + 16);
    v472 = *(v15 + 64);
    v511 = *(v15 + 80);
    v394 = *(v15 + 32);
    v433 = *(v15 + 48);
    v67 = *(v11 + 80);
    v69 = *(v11 + 32);
    v68 = *(v11 + 48);
    *(v15 + 64) = *(v11 + 64);
    *(v15 + 80) = v67;
    *(v15 + 32) = v69;
    *(v15 + 48) = v68;
    v70 = *(v11 + 16);
    *v15 = *v11;
    *(v15 + 16) = v70;
    *v11 = v317;
    *(v11 + 16) = v356;
    *(v11 + 64) = v472;
    *(v11 + 80) = v511;
    *(v11 + 32) = v394;
    *(v11 + 48) = v433;
    if (*(a2 - 11) < *(v11 + 8))
    {
      v308 = *v11;
      v347 = *(v11 + 16);
      v463 = *(v11 + 64);
      v502 = *(v11 + 80);
      v385 = *(v11 + 32);
      v424 = *(v11 + 48);
      v71 = *(a2 - 1);
      v73 = *(a2 - 4);
      v72 = *(a2 - 3);
      *(v11 + 64) = *(a2 - 2);
      *(v11 + 80) = v71;
      *(v11 + 32) = v73;
      *(v11 + 48) = v72;
      v74 = *(a2 - 5);
      *v11 = *v8;
      *(v11 + 16) = v74;
      goto LABEL_36;
    }

LABEL_59:
    --a3;
    if (a4)
    {
      v127 = *(v11 + 8);
LABEL_62:
      v128 = 0;
      v129 = *v11;
      v301 = *(v11 + 64);
      v304 = *(v11 + 80);
      v295 = *(v11 + 32);
      v298 = *(v11 + 48);
      v292 = *(v11 + 16);
      do
      {
        v130 = *(v11 + v128 + 104);
        v128 += 96;
      }

      while (v130 < v127);
      v131 = v11 + v128;
      v132 = a2;
      if (v128 == 96)
      {
        v135 = a2;
        while (v131 < v135)
        {
          v133 = v135 - 6;
          v136 = *(v135 - 11);
          v135 -= 6;
          if (v136 < v127)
          {
            goto LABEL_72;
          }
        }

        v133 = v135;
      }

      else
      {
        do
        {
          v133 = v132 - 6;
          v134 = *(v132 - 11);
          v132 -= 6;
        }

        while (v134 >= v127);
      }

LABEL_72:
      v11 = v131;
      if (v131 < v133)
      {
        v137 = v133;
        do
        {
          v328 = *v11;
          v367 = *(v11 + 16);
          v483 = *(v11 + 64);
          v522 = *(v11 + 80);
          v405 = *(v11 + 32);
          v444 = *(v11 + 48);
          v138 = v137[5];
          v140 = v137[2];
          v139 = v137[3];
          *(v11 + 64) = v137[4];
          *(v11 + 80) = v138;
          *(v11 + 32) = v140;
          *(v11 + 48) = v139;
          v141 = v137[1];
          *v11 = *v137;
          *(v11 + 16) = v141;
          *v137 = v328;
          v137[1] = v367;
          v137[4] = v483;
          v137[5] = v522;
          v137[2] = v405;
          v137[3] = v444;
          do
          {
            v142 = *(v11 + 104);
            v11 += 96;
          }

          while (v142 < v127);
          do
          {
            v143 = *(v137 - 11);
            v137 -= 6;
          }

          while (v143 >= v127);
        }

        while (v11 < v137);
      }

      if (v11 - 96 != v7)
      {
        v144 = *(v11 - 80);
        *v7 = *(v11 - 96);
        *(v7 + 16) = v144;
        v145 = *(v11 - 64);
        v146 = *(v11 - 48);
        v147 = *(v11 - 16);
        *(v7 + 64) = *(v11 - 32);
        *(v7 + 80) = v147;
        *(v7 + 32) = v145;
        *(v7 + 48) = v146;
      }

      *(v11 - 96) = v129;
      *(v11 - 88) = v127;
      *(v11 - 80) = v292;
      *(v11 - 32) = v301;
      *(v11 - 16) = v304;
      *(v11 - 64) = v295;
      *(v11 - 48) = v298;
      if (v131 < v133)
      {
        goto LABEL_83;
      }

      v148 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,CSCppSymbolicator::set_aot_image_infos(std::vector<CSSymbolicatorAotImageInfo> &&)::$_0 &,CSSymbolicatorAotImageInfo*>(v7, v11 - 96);
      result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,CSCppSymbolicator::set_aot_image_infos(std::vector<CSSymbolicatorAotImageInfo> &&)::$_0 &,CSSymbolicatorAotImageInfo*>(v11, a2);
      if (result)
      {
        a2 = (v11 - 96);
        if (!v148)
        {
          goto LABEL_2;
        }

        goto LABEL_195;
      }

      if (!v148)
      {
LABEL_83:
        result = std::__introsort<std::_ClassicAlgPolicy,CSCppSymbolicator::set_aot_image_infos(std::vector<CSSymbolicatorAotImageInfo> &&)::$_0 &,CSSymbolicatorAotImageInfo*,false>(v7, v11 - 96, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v127 = *(v11 + 8);
      if (*(v11 - 88) < v127)
      {
        goto LABEL_62;
      }

      v149 = *v11;
      v302 = *(v11 + 64);
      v305 = *(v11 + 80);
      v296 = *(v11 + 32);
      v299 = *(v11 + 48);
      v293 = *(v11 + 16);
      if (v127 >= *(a2 - 11))
      {
        v152 = v11 + 96;
        do
        {
          v11 = v152;
          if (v152 >= a2)
          {
            break;
          }

          v153 = *(v152 + 8);
          v152 += 96;
        }

        while (v127 >= v153);
      }

      else
      {
        v150 = v11;
        do
        {
          v11 = v150 + 96;
          v151 = *(v150 + 104);
          v150 += 96;
        }

        while (v127 >= v151);
      }

      v154 = a2;
      if (v11 < a2)
      {
        v155 = a2;
        do
        {
          v154 = v155 - 6;
          v156 = *(v155 - 11);
          v155 -= 6;
        }

        while (v127 < v156);
      }

      while (v11 < v154)
      {
        v329 = *v11;
        v368 = *(v11 + 16);
        v484 = *(v11 + 64);
        v523 = *(v11 + 80);
        v406 = *(v11 + 32);
        v445 = *(v11 + 48);
        v157 = v154[5];
        v159 = v154[2];
        v158 = v154[3];
        *(v11 + 64) = v154[4];
        *(v11 + 80) = v157;
        *(v11 + 32) = v159;
        *(v11 + 48) = v158;
        v160 = v154[1];
        *v11 = *v154;
        *(v11 + 16) = v160;
        *v154 = v329;
        v154[1] = v368;
        v154[4] = v484;
        v154[5] = v523;
        v154[2] = v406;
        v154[3] = v445;
        do
        {
          v161 = *(v11 + 104);
          v11 += 96;
        }

        while (v127 >= v161);
        do
        {
          v162 = *(v154 - 11);
          v154 -= 6;
        }

        while (v127 < v162);
      }

      if (v11 - 96 != v7)
      {
        v163 = *(v11 - 80);
        *v7 = *(v11 - 96);
        *(v7 + 16) = v163;
        v164 = *(v11 - 64);
        v165 = *(v11 - 48);
        v166 = *(v11 - 16);
        *(v7 + 64) = *(v11 - 32);
        *(v7 + 80) = v166;
        *(v7 + 32) = v164;
        *(v7 + 48) = v165;
      }

      a4 = 0;
      *(v11 - 96) = v149;
      *(v11 - 88) = v127;
      *(v11 - 80) = v293;
      *(v11 - 32) = v302;
      *(v11 - 16) = v305;
      *(v11 - 64) = v296;
      *(v11 - 48) = v299;
    }
  }

  if (v13 == 3)
  {
    v172 = *(v11 + 104);
    v173 = *(a2 - 11);
    if (v172 >= *(v11 + 8))
    {
      if (v173 < v172)
      {
        v413 = *(v11 + 128);
        v452 = *(v11 + 144);
        v491 = *(v11 + 160);
        v528 = *(v11 + 176);
        v336 = *(v11 + 96);
        v374 = *(v11 + 112);
        v249 = *(a2 - 5);
        *(v11 + 96) = *v8;
        *(v11 + 112) = v249;
        v250 = *(a2 - 1);
        v252 = *(a2 - 4);
        v251 = *(a2 - 3);
        *(v11 + 160) = *(a2 - 2);
        *(v11 + 176) = v250;
        *(v11 + 128) = v252;
        *(v11 + 144) = v251;
        *v8 = v336;
        *(a2 - 5) = v374;
        *(a2 - 2) = v491;
        *(a2 - 1) = v528;
        *(a2 - 4) = v413;
        *(a2 - 3) = v452;
LABEL_193:
        if (*(v11 + 104) < *(v11 + 8))
        {
          v345 = *v11;
          v383 = *(v11 + 16);
          v500 = *(v11 + 64);
          v536 = *(v11 + 80);
          v422 = *(v11 + 32);
          v461 = *(v11 + 48);
          v287 = *(v11 + 176);
          *(v11 + 64) = *(v11 + 160);
          *(v11 + 80) = v287;
          v288 = *(v11 + 144);
          *(v11 + 32) = *(v11 + 128);
          *(v11 + 48) = v288;
          v289 = *(v11 + 112);
          *v11 = *(v11 + 96);
          *(v11 + 16) = v289;
          *(v11 + 96) = v345;
          *(v11 + 112) = v383;
          *(v11 + 160) = v500;
          *(v11 + 176) = v536;
          *(v11 + 128) = v422;
          *(v11 + 144) = v461;
        }
      }
    }

    else
    {
      if (v173 < v172)
      {
        v331 = *v11;
        v370 = *(v11 + 16);
        v486 = *(v11 + 64);
        v525 = *(v11 + 80);
        v408 = *(v11 + 32);
        v447 = *(v11 + 48);
        v174 = *(a2 - 1);
        v176 = *(a2 - 4);
        v175 = *(a2 - 3);
        *(v11 + 64) = *(a2 - 2);
        *(v11 + 80) = v174;
        *(v11 + 32) = v176;
        *(v11 + 48) = v175;
        v177 = *(a2 - 5);
        *v11 = *v8;
        *(v11 + 16) = v177;
LABEL_187:
        *v8 = v331;
        *(a2 - 5) = v370;
        *(a2 - 2) = v486;
        *(a2 - 1) = v525;
        *(a2 - 4) = v408;
        *(a2 - 3) = v447;
        goto LABEL_195;
      }

      v340 = *v11;
      v378 = *(v11 + 16);
      v495 = *(v11 + 64);
      v531 = *(v11 + 80);
      v417 = *(v11 + 32);
      v456 = *(v11 + 48);
      v267 = *(v11 + 176);
      *(v11 + 64) = *(v11 + 160);
      *(v11 + 80) = v267;
      v268 = *(v11 + 144);
      *(v11 + 32) = *(v11 + 128);
      *(v11 + 48) = v268;
      v269 = *(v11 + 112);
      *v11 = *(v11 + 96);
      *(v11 + 16) = v269;
      *(v11 + 96) = v340;
      *(v11 + 112) = v378;
      *(v11 + 160) = v495;
      *(v11 + 176) = v531;
      *(v11 + 128) = v417;
      *(v11 + 144) = v456;
      if (*(a2 - 11) < *(v11 + 104))
      {
        v408 = *(v11 + 128);
        v447 = *(v11 + 144);
        v486 = *(v11 + 160);
        v525 = *(v11 + 176);
        v331 = *(v11 + 96);
        v370 = *(v11 + 112);
        v270 = *(a2 - 5);
        *(v11 + 96) = *v8;
        *(v11 + 112) = v270;
        v271 = *(a2 - 1);
        v273 = *(a2 - 4);
        v272 = *(a2 - 3);
        *(v11 + 160) = *(a2 - 2);
        *(v11 + 176) = v271;
        *(v11 + 128) = v273;
        *(v11 + 144) = v272;
        goto LABEL_187;
      }
    }

LABEL_195:
    v290 = *MEMORY[0x1E69E9840];
    return result;
  }

  if (v13 == 4)
  {
    v178 = *(v11 + 104);
    v179 = *(v11 + 200);
    if (v178 >= *(v11 + 8))
    {
      if (v179 < v178)
      {
        v414 = *(v11 + 128);
        v453 = *(v11 + 144);
        v492 = *(v11 + 160);
        v529 = *(v11 + 176);
        v337 = *(v11 + 96);
        v375 = *(v11 + 112);
        v253 = *(v11 + 240);
        *(v11 + 128) = *(v11 + 224);
        *(v11 + 144) = v253;
        v254 = *(v11 + 272);
        *(v11 + 160) = *(v11 + 256);
        *(v11 + 176) = v254;
        v255 = *(v11 + 208);
        *(v11 + 96) = *(v11 + 192);
        *(v11 + 112) = v255;
        *(v11 + 192) = v337;
        *(v11 + 208) = v375;
        *(v11 + 256) = v492;
        *(v11 + 272) = v529;
        *(v11 + 224) = v414;
        *(v11 + 240) = v453;
        if (*(v11 + 104) < *(v11 + 8))
        {
          v338 = *v11;
          v376 = *(v11 + 16);
          v493 = *(v11 + 64);
          v530 = *(v11 + 80);
          v415 = *(v11 + 32);
          v454 = *(v11 + 48);
          v256 = *(v11 + 176);
          *(v11 + 64) = *(v11 + 160);
          *(v11 + 80) = v256;
          v257 = *(v11 + 144);
          *(v11 + 32) = *(v11 + 128);
          *(v11 + 48) = v257;
          v258 = *(v11 + 112);
          *v11 = *(v11 + 96);
          *(v11 + 16) = v258;
          *(v11 + 96) = v338;
          *(v11 + 112) = v376;
          *(v11 + 160) = v493;
          *(v11 + 176) = v530;
          *(v11 + 128) = v415;
          *(v11 + 144) = v454;
        }
      }
    }

    else if (v179 >= v178)
    {
      v341 = *v11;
      v379 = *(v11 + 16);
      v496 = *(v11 + 64);
      v532 = *(v11 + 80);
      v418 = *(v11 + 32);
      v457 = *(v11 + 48);
      v274 = *(v11 + 176);
      *(v11 + 64) = *(v11 + 160);
      *(v11 + 80) = v274;
      v275 = *(v11 + 144);
      *(v11 + 32) = *(v11 + 128);
      *(v11 + 48) = v275;
      v276 = *(v11 + 112);
      *v11 = *(v11 + 96);
      *(v11 + 16) = v276;
      *(v11 + 96) = v341;
      *(v11 + 112) = v379;
      *(v11 + 160) = v496;
      *(v11 + 176) = v532;
      *(v11 + 128) = v418;
      *(v11 + 144) = v457;
      if (v179 < *(v11 + 104))
      {
        v419 = *(v11 + 128);
        v458 = *(v11 + 144);
        v497 = *(v11 + 160);
        v533 = *(v11 + 176);
        v342 = *(v11 + 96);
        v380 = *(v11 + 112);
        v277 = *(v11 + 240);
        *(v11 + 128) = *(v11 + 224);
        *(v11 + 144) = v277;
        v278 = *(v11 + 272);
        *(v11 + 160) = *(v11 + 256);
        *(v11 + 176) = v278;
        v279 = *(v11 + 208);
        *(v11 + 96) = *(v11 + 192);
        *(v11 + 112) = v279;
        *(v11 + 192) = v342;
        *(v11 + 208) = v380;
        *(v11 + 256) = v497;
        *(v11 + 272) = v533;
        *(v11 + 224) = v419;
        *(v11 + 240) = v458;
      }
    }

    else
    {
      v332 = *v11;
      v371 = *(v11 + 16);
      v487 = *(v11 + 64);
      v526 = *(v11 + 80);
      v409 = *(v11 + 32);
      v448 = *(v11 + 48);
      v180 = *(v11 + 272);
      *(v11 + 64) = *(v11 + 256);
      *(v11 + 80) = v180;
      v181 = *(v11 + 240);
      *(v11 + 32) = *(v11 + 224);
      *(v11 + 48) = v181;
      v182 = *(v11 + 208);
      *v11 = *(v11 + 192);
      *(v11 + 16) = v182;
      *(v11 + 192) = v332;
      *(v11 + 208) = v371;
      *(v11 + 256) = v487;
      *(v11 + 272) = v526;
      *(v11 + 224) = v409;
      *(v11 + 240) = v448;
    }

    if (*(a2 - 11) >= *(v11 + 200))
    {
      goto LABEL_195;
    }

    v420 = *(v11 + 224);
    v459 = *(v11 + 240);
    v498 = *(v11 + 256);
    v534 = *(v11 + 272);
    v343 = *(v11 + 192);
    v381 = *(v11 + 208);
    v280 = *(a2 - 5);
    *(v11 + 192) = *v8;
    *(v11 + 208) = v280;
    v281 = *(a2 - 1);
    v283 = *(a2 - 4);
    v282 = *(a2 - 3);
    *(v11 + 256) = *(a2 - 2);
    *(v11 + 272) = v281;
    *(v11 + 224) = v283;
    *(v11 + 240) = v282;
    *v8 = v343;
    *(a2 - 5) = v381;
    *(a2 - 2) = v498;
    *(a2 - 1) = v534;
    *(a2 - 4) = v420;
    *(a2 - 3) = v459;
    if (*(v11 + 200) >= *(v11 + 104))
    {
      goto LABEL_195;
    }

    v421 = *(v11 + 128);
    v460 = *(v11 + 144);
    v499 = *(v11 + 160);
    v535 = *(v11 + 176);
    v344 = *(v11 + 96);
    v382 = *(v11 + 112);
    v284 = *(v11 + 240);
    *(v11 + 128) = *(v11 + 224);
    *(v11 + 144) = v284;
    v285 = *(v11 + 272);
    *(v11 + 160) = *(v11 + 256);
    *(v11 + 176) = v285;
    v286 = *(v11 + 208);
    *(v11 + 96) = *(v11 + 192);
    *(v11 + 112) = v286;
    *(v11 + 192) = v344;
    *(v11 + 208) = v382;
    *(v11 + 256) = v499;
    *(v11 + 272) = v535;
    *(v11 + 224) = v421;
    *(v11 + 240) = v460;
    goto LABEL_193;
  }

  if (v13 != 5)
  {
    goto LABEL_10;
  }

  v167 = *MEMORY[0x1E69E9840];

  return std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,CSCppSymbolicator::set_aot_image_infos(std::vector<CSSymbolicatorAotImageInfo> &&)::$_0 &,CSSymbolicatorAotImageInfo*,0>(v11, (v11 + 96), (v11 + 192), (v11 + 288), a2 - 6);
}