void sub_217FCA55C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  __cxa_free_exception(v22);
  v24 = *(v20 + 80);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  *v20 = v21;
  if (*(v20 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v20 + 8);
  }

  _Unwind_Resume(a1);
}

uint64_t MIL::IRValueStorageData<MIL::Fp16>::GetViewImpl(uint64_t a1)
{
  if (*(a1 + 96) == 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "This program was parsed specifying ignoreWeightFile, cannot fetch the data value.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v1 = *(a1 + 88);
  v2 = *(a1 + 72);

  return MIL::Blob::StorageReader::GetDataView<MIL::Fp16>(v2, v1);
}

uint64_t MIL::IRValueStorageData<MIL::Fp8E4M3FN>::~IRValueStorageData(uint64_t a1)
{
  *a1 = &unk_2829E1CC0;
  v2 = *(a1 + 80);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  *a1 = &unk_2829E09B0;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 8);
  }

  return a1;
}

void MIL::IRValueStorageData<MIL::Fp8E4M3FN>::~IRValueStorageData(uint64_t a1)
{
  MIL::IRValueStorageData<MIL::Fp8E4M3FN>::~IRValueStorageData(a1);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t MIL::IRValueStorageData<MIL::Fp8E4M3FN>::IRValueStorageData(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, char a5)
{
  *a1 = &unk_2829E09B0;
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__hash_table(a1 + 8, a3);
  *(a1 + 48) = 1;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  *a1 = &unk_2829E1CC0;
  *(a1 + 72) = *a4;
  *a4 = 0;
  *(a4 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>(&__p, "offset");
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  *(a1 + 88) = v9;
  *(a1 + 96) = a5;
  Filename = MIL::Blob::StorageReader::GetFilename(*(a1 + 72));
  std::string::basic_string[abi:ne200100]<0>(v24, "path");
  v11 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>((a1 + 8), v24);
  if (!v11)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  MIL::IRValue::GetScalar<std::string>(v11[5], &__p);
  v12 = *(Filename + 23);
  if (v12 >= 0)
  {
    v13 = *(Filename + 23);
  }

  else
  {
    v13 = *(Filename + 8);
  }

  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  v15 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  if (v13 != size)
  {
    v18 = 0;
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (v12 >= 0)
  {
    v16 = Filename;
  }

  else
  {
    v16 = *Filename;
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v18 = memcmp(v16, p_p, v13) == 0;
  if (v15 < 0)
  {
LABEL_19:
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_20:
  if (v25 < 0)
  {
    operator delete(v24[0]);
  }

  if (!v18)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v22 = MEMORY[0x277D825D8];
    std::logic_error::logic_error(exception, "Storage and properties have different filenames.");
    v23 = MEMORY[0x277D82750];
    goto LABEL_30;
  }

  if (*(a1 + 32) != 3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v22 = MEMORY[0x277D82600];
    std::runtime_error::runtime_error(exception, "Too many file properties provided.");
    v23 = MEMORY[0x277D82760];
LABEL_30:
    __cxa_throw(exception, v23, v22);
  }

  if ((*(a1 + 96) & 1) == 0)
  {
    v19 = MIL::Blob::StorageReader::GetFilename(*(a1 + 72));
  }

  return a1;
}

void sub_217FCA968(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  __cxa_free_exception(v22);
  v24 = *(v20 + 80);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  *v20 = v21;
  if (*(v20 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v20 + 8);
  }

  _Unwind_Resume(a1);
}

uint64_t MIL::IRValueStorageData<MIL::Fp8E4M3FN>::GetViewImpl(uint64_t a1)
{
  if (*(a1 + 96) == 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "This program was parsed specifying ignoreWeightFile, cannot fetch the data value.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v1 = *(a1 + 88);
  v2 = *(a1 + 72);

  return MIL::Blob::StorageReader::GetDataView<MIL::Fp8E4M3FN>(v2, v1);
}

uint64_t MIL::IRValueStorageData<MIL::Fp8E5M2>::~IRValueStorageData(uint64_t a1)
{
  *a1 = &unk_2829E1D10;
  v2 = *(a1 + 80);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  *a1 = &unk_2829E0960;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 8);
  }

  return a1;
}

void MIL::IRValueStorageData<MIL::Fp8E5M2>::~IRValueStorageData(uint64_t a1)
{
  MIL::IRValueStorageData<MIL::Fp8E5M2>::~IRValueStorageData(a1);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t MIL::IRValueStorageData<MIL::Fp8E5M2>::IRValueStorageData(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, char a5)
{
  *a1 = &unk_2829E0960;
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__hash_table(a1 + 8, a3);
  *(a1 + 48) = 1;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  *a1 = &unk_2829E1D10;
  *(a1 + 72) = *a4;
  *a4 = 0;
  *(a4 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>(&__p, "offset");
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  *(a1 + 88) = v9;
  *(a1 + 96) = a5;
  Filename = MIL::Blob::StorageReader::GetFilename(*(a1 + 72));
  std::string::basic_string[abi:ne200100]<0>(v24, "path");
  v11 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>((a1 + 8), v24);
  if (!v11)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  MIL::IRValue::GetScalar<std::string>(v11[5], &__p);
  v12 = *(Filename + 23);
  if (v12 >= 0)
  {
    v13 = *(Filename + 23);
  }

  else
  {
    v13 = *(Filename + 8);
  }

  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  v15 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  if (v13 != size)
  {
    v18 = 0;
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (v12 >= 0)
  {
    v16 = Filename;
  }

  else
  {
    v16 = *Filename;
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v18 = memcmp(v16, p_p, v13) == 0;
  if (v15 < 0)
  {
LABEL_19:
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_20:
  if (v25 < 0)
  {
    operator delete(v24[0]);
  }

  if (!v18)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v22 = MEMORY[0x277D825D8];
    std::logic_error::logic_error(exception, "Storage and properties have different filenames.");
    v23 = MEMORY[0x277D82750];
    goto LABEL_30;
  }

  if (*(a1 + 32) != 3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v22 = MEMORY[0x277D82600];
    std::runtime_error::runtime_error(exception, "Too many file properties provided.");
    v23 = MEMORY[0x277D82760];
LABEL_30:
    __cxa_throw(exception, v23, v22);
  }

  if ((*(a1 + 96) & 1) == 0)
  {
    v19 = MIL::Blob::StorageReader::GetFilename(*(a1 + 72));
  }

  return a1;
}

void sub_217FCAD74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  __cxa_free_exception(v22);
  v24 = *(v20 + 80);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  *v20 = v21;
  if (*(v20 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v20 + 8);
  }

  _Unwind_Resume(a1);
}

uint64_t MIL::IRValueStorageData<MIL::Fp8E5M2>::GetViewImpl(uint64_t a1)
{
  if (*(a1 + 96) == 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "This program was parsed specifying ignoreWeightFile, cannot fetch the data value.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v1 = *(a1 + 88);
  v2 = *(a1 + 72);

  return MIL::Blob::StorageReader::GetDataView<MIL::Fp8E5M2>(v2, v1);
}

uint64_t MIL::IRValueStorageData<MIL::Bf16>::~IRValueStorageData(uint64_t a1)
{
  *a1 = &unk_2829E1D60;
  v2 = *(a1 + 80);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  *a1 = &unk_2829E08C0;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 8);
  }

  return a1;
}

void MIL::IRValueStorageData<MIL::Bf16>::~IRValueStorageData(uint64_t a1)
{
  MIL::IRValueStorageData<MIL::Bf16>::~IRValueStorageData(a1);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t MIL::IRValueStorageData<MIL::Bf16>::IRValueStorageData(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, char a5)
{
  *a1 = &unk_2829E08C0;
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__hash_table(a1 + 8, a3);
  *(a1 + 48) = 1;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  *a1 = &unk_2829E1D60;
  *(a1 + 72) = *a4;
  *a4 = 0;
  *(a4 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>(&__p, "offset");
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  *(a1 + 88) = v9;
  *(a1 + 96) = a5;
  Filename = MIL::Blob::StorageReader::GetFilename(*(a1 + 72));
  std::string::basic_string[abi:ne200100]<0>(v24, "path");
  v11 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>((a1 + 8), v24);
  if (!v11)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  MIL::IRValue::GetScalar<std::string>(v11[5], &__p);
  v12 = *(Filename + 23);
  if (v12 >= 0)
  {
    v13 = *(Filename + 23);
  }

  else
  {
    v13 = *(Filename + 8);
  }

  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  v15 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  if (v13 != size)
  {
    v18 = 0;
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (v12 >= 0)
  {
    v16 = Filename;
  }

  else
  {
    v16 = *Filename;
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v18 = memcmp(v16, p_p, v13) == 0;
  if (v15 < 0)
  {
LABEL_19:
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_20:
  if (v25 < 0)
  {
    operator delete(v24[0]);
  }

  if (!v18)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v22 = MEMORY[0x277D825D8];
    std::logic_error::logic_error(exception, "Storage and properties have different filenames.");
    v23 = MEMORY[0x277D82750];
    goto LABEL_30;
  }

  if (*(a1 + 32) != 3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v22 = MEMORY[0x277D82600];
    std::runtime_error::runtime_error(exception, "Too many file properties provided.");
    v23 = MEMORY[0x277D82760];
LABEL_30:
    __cxa_throw(exception, v23, v22);
  }

  if ((*(a1 + 96) & 1) == 0)
  {
    v19 = MIL::Blob::StorageReader::GetFilename(*(a1 + 72));
  }

  return a1;
}

void sub_217FCB180(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  __cxa_free_exception(v22);
  v24 = *(v20 + 80);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  *v20 = v21;
  if (*(v20 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v20 + 8);
  }

  _Unwind_Resume(a1);
}

uint64_t MIL::IRValueStorageData<MIL::Bf16>::GetViewImpl(uint64_t a1)
{
  if (*(a1 + 96) == 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "This program was parsed specifying ignoreWeightFile, cannot fetch the data value.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v1 = *(a1 + 88);
  v2 = *(a1 + 72);

  return MIL::Blob::StorageReader::GetDataView<MIL::Bf16>(v2, v1);
}

uint64_t MIL::IRValueStorageData<short>::~IRValueStorageData(uint64_t a1)
{
  *a1 = &unk_2829E1DB0;
  v2 = *(a1 + 80);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  *a1 = &unk_2829E0B40;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 8);
  }

  return a1;
}

void MIL::IRValueStorageData<short>::~IRValueStorageData(uint64_t a1)
{
  MIL::IRValueStorageData<short>::~IRValueStorageData(a1);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t MIL::IRValueStorageData<short>::IRValueStorageData(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, char a5)
{
  *a1 = &unk_2829E0B40;
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__hash_table(a1 + 8, a3);
  *(a1 + 48) = 1;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  *a1 = &unk_2829E1DB0;
  *(a1 + 72) = *a4;
  *a4 = 0;
  *(a4 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>(&__p, "offset");
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  *(a1 + 88) = v9;
  *(a1 + 96) = a5;
  Filename = MIL::Blob::StorageReader::GetFilename(*(a1 + 72));
  std::string::basic_string[abi:ne200100]<0>(v24, "path");
  v11 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>((a1 + 8), v24);
  if (!v11)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  MIL::IRValue::GetScalar<std::string>(v11[5], &__p);
  v12 = *(Filename + 23);
  if (v12 >= 0)
  {
    v13 = *(Filename + 23);
  }

  else
  {
    v13 = *(Filename + 8);
  }

  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  v15 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  if (v13 != size)
  {
    v18 = 0;
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (v12 >= 0)
  {
    v16 = Filename;
  }

  else
  {
    v16 = *Filename;
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v18 = memcmp(v16, p_p, v13) == 0;
  if (v15 < 0)
  {
LABEL_19:
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_20:
  if (v25 < 0)
  {
    operator delete(v24[0]);
  }

  if (!v18)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v22 = MEMORY[0x277D825D8];
    std::logic_error::logic_error(exception, "Storage and properties have different filenames.");
    v23 = MEMORY[0x277D82750];
    goto LABEL_30;
  }

  if (*(a1 + 32) != 3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v22 = MEMORY[0x277D82600];
    std::runtime_error::runtime_error(exception, "Too many file properties provided.");
    v23 = MEMORY[0x277D82760];
LABEL_30:
    __cxa_throw(exception, v23, v22);
  }

  if ((*(a1 + 96) & 1) == 0)
  {
    v19 = MIL::Blob::StorageReader::GetFilename(*(a1 + 72));
  }

  return a1;
}

void sub_217FCB58C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  __cxa_free_exception(v22);
  v24 = *(v20 + 80);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  *v20 = v21;
  if (*(v20 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v20 + 8);
  }

  _Unwind_Resume(a1);
}

uint64_t MIL::IRValueStorageData<short>::GetViewImpl(uint64_t a1)
{
  if (*(a1 + 96) == 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "This program was parsed specifying ignoreWeightFile, cannot fetch the data value.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v1 = *(a1 + 88);
  v2 = *(a1 + 72);

  return MIL::Blob::StorageReader::GetDataView<short>(v2, v1);
}

uint64_t MIL::IRValueStorageData<MIL::UInt1>::~IRValueStorageData(uint64_t a1)
{
  *a1 = &unk_2829E1E00;
  v2 = *(a1 + 80);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  *a1 = &unk_2829E0C30;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 8);
  }

  return a1;
}

void MIL::IRValueStorageData<MIL::UInt1>::~IRValueStorageData(uint64_t a1)
{
  MIL::IRValueStorageData<MIL::UInt1>::~IRValueStorageData(a1);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t MIL::IRValueStorageData<MIL::UInt1>::IRValueStorageData(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, char a5)
{
  *a1 = &unk_2829E0C30;
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__hash_table(a1 + 8, a3);
  *(a1 + 48) = 1;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  *a1 = &unk_2829E1E00;
  *(a1 + 72) = *a4;
  *a4 = 0;
  *(a4 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>(&__p, "offset");
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  *(a1 + 88) = v9;
  *(a1 + 96) = a5;
  Filename = MIL::Blob::StorageReader::GetFilename(*(a1 + 72));
  std::string::basic_string[abi:ne200100]<0>(v24, "path");
  v11 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>((a1 + 8), v24);
  if (!v11)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  MIL::IRValue::GetScalar<std::string>(v11[5], &__p);
  v12 = *(Filename + 23);
  if (v12 >= 0)
  {
    v13 = *(Filename + 23);
  }

  else
  {
    v13 = *(Filename + 8);
  }

  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  v15 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  if (v13 != size)
  {
    v18 = 0;
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (v12 >= 0)
  {
    v16 = Filename;
  }

  else
  {
    v16 = *Filename;
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v18 = memcmp(v16, p_p, v13) == 0;
  if (v15 < 0)
  {
LABEL_19:
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_20:
  if (v25 < 0)
  {
    operator delete(v24[0]);
  }

  if (!v18)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v22 = MEMORY[0x277D825D8];
    std::logic_error::logic_error(exception, "Storage and properties have different filenames.");
    v23 = MEMORY[0x277D82750];
    goto LABEL_30;
  }

  if (*(a1 + 32) != 3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v22 = MEMORY[0x277D82600];
    std::runtime_error::runtime_error(exception, "Too many file properties provided.");
    v23 = MEMORY[0x277D82760];
LABEL_30:
    __cxa_throw(exception, v23, v22);
  }

  if ((*(a1 + 96) & 1) == 0)
  {
    v19 = MIL::Blob::StorageReader::GetFilename(*(a1 + 72));
  }

  return a1;
}

void sub_217FCB998(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  __cxa_free_exception(v22);
  v24 = *(v20 + 80);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  *v20 = v21;
  if (*(v20 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v20 + 8);
  }

  _Unwind_Resume(a1);
}

void MIL::IRValueStorageData<MIL::UInt1>::GetViewImpl(uint64_t a1)
{
  if (*(a1 + 96) == 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "This program was parsed specifying ignoreWeightFile, cannot fetch the data value.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v1 = *(a1 + 88);
  v2 = *(a1 + 72);

  MIL::Blob::StorageReader::GetDataView<MIL::UInt1>(v2, v1);
}

uint64_t MIL::IRValueStorageData<MIL::UInt2>::~IRValueStorageData(uint64_t a1)
{
  *a1 = &unk_2829E1E50;
  v2 = *(a1 + 80);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  *a1 = &unk_2829E0C80;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 8);
  }

  return a1;
}

void MIL::IRValueStorageData<MIL::UInt2>::~IRValueStorageData(uint64_t a1)
{
  MIL::IRValueStorageData<MIL::UInt2>::~IRValueStorageData(a1);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t MIL::IRValueStorageData<MIL::UInt2>::IRValueStorageData(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, char a5)
{
  *a1 = &unk_2829E0C80;
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__hash_table(a1 + 8, a3);
  *(a1 + 48) = 1;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  *a1 = &unk_2829E1E50;
  *(a1 + 72) = *a4;
  *a4 = 0;
  *(a4 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>(&__p, "offset");
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  *(a1 + 88) = v9;
  *(a1 + 96) = a5;
  Filename = MIL::Blob::StorageReader::GetFilename(*(a1 + 72));
  std::string::basic_string[abi:ne200100]<0>(v24, "path");
  v11 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>((a1 + 8), v24);
  if (!v11)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  MIL::IRValue::GetScalar<std::string>(v11[5], &__p);
  v12 = *(Filename + 23);
  if (v12 >= 0)
  {
    v13 = *(Filename + 23);
  }

  else
  {
    v13 = *(Filename + 8);
  }

  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  v15 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  if (v13 != size)
  {
    v18 = 0;
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (v12 >= 0)
  {
    v16 = Filename;
  }

  else
  {
    v16 = *Filename;
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v18 = memcmp(v16, p_p, v13) == 0;
  if (v15 < 0)
  {
LABEL_19:
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_20:
  if (v25 < 0)
  {
    operator delete(v24[0]);
  }

  if (!v18)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v22 = MEMORY[0x277D825D8];
    std::logic_error::logic_error(exception, "Storage and properties have different filenames.");
    v23 = MEMORY[0x277D82750];
    goto LABEL_30;
  }

  if (*(a1 + 32) != 3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v22 = MEMORY[0x277D82600];
    std::runtime_error::runtime_error(exception, "Too many file properties provided.");
    v23 = MEMORY[0x277D82760];
LABEL_30:
    __cxa_throw(exception, v23, v22);
  }

  if ((*(a1 + 96) & 1) == 0)
  {
    v19 = MIL::Blob::StorageReader::GetFilename(*(a1 + 72));
  }

  return a1;
}

void sub_217FCBDA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  __cxa_free_exception(v22);
  v24 = *(v20 + 80);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  *v20 = v21;
  if (*(v20 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v20 + 8);
  }

  _Unwind_Resume(a1);
}

void MIL::IRValueStorageData<MIL::UInt2>::GetViewImpl(uint64_t a1)
{
  if (*(a1 + 96) == 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "This program was parsed specifying ignoreWeightFile, cannot fetch the data value.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v1 = *(a1 + 88);
  v2 = *(a1 + 72);

  MIL::Blob::StorageReader::GetDataView<MIL::UInt2>(v2, v1);
}

uint64_t MIL::IRValueStorageData<MIL::UInt4>::~IRValueStorageData(uint64_t a1)
{
  *a1 = &unk_2829E1EA0;
  v2 = *(a1 + 80);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  *a1 = &unk_2829E0D20;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 8);
  }

  return a1;
}

void MIL::IRValueStorageData<MIL::UInt4>::~IRValueStorageData(uint64_t a1)
{
  MIL::IRValueStorageData<MIL::UInt4>::~IRValueStorageData(a1);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t MIL::IRValueStorageData<MIL::UInt4>::IRValueStorageData(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, char a5)
{
  *a1 = &unk_2829E0D20;
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__hash_table(a1 + 8, a3);
  *(a1 + 48) = 1;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  *a1 = &unk_2829E1EA0;
  *(a1 + 72) = *a4;
  *a4 = 0;
  *(a4 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>(&__p, "offset");
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  *(a1 + 88) = v9;
  *(a1 + 96) = a5;
  Filename = MIL::Blob::StorageReader::GetFilename(*(a1 + 72));
  std::string::basic_string[abi:ne200100]<0>(v24, "path");
  v11 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>((a1 + 8), v24);
  if (!v11)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  MIL::IRValue::GetScalar<std::string>(v11[5], &__p);
  v12 = *(Filename + 23);
  if (v12 >= 0)
  {
    v13 = *(Filename + 23);
  }

  else
  {
    v13 = *(Filename + 8);
  }

  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  v15 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  if (v13 != size)
  {
    v18 = 0;
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (v12 >= 0)
  {
    v16 = Filename;
  }

  else
  {
    v16 = *Filename;
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v18 = memcmp(v16, p_p, v13) == 0;
  if (v15 < 0)
  {
LABEL_19:
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_20:
  if (v25 < 0)
  {
    operator delete(v24[0]);
  }

  if (!v18)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v22 = MEMORY[0x277D825D8];
    std::logic_error::logic_error(exception, "Storage and properties have different filenames.");
    v23 = MEMORY[0x277D82750];
    goto LABEL_30;
  }

  if (*(a1 + 32) != 3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v22 = MEMORY[0x277D82600];
    std::runtime_error::runtime_error(exception, "Too many file properties provided.");
    v23 = MEMORY[0x277D82760];
LABEL_30:
    __cxa_throw(exception, v23, v22);
  }

  if ((*(a1 + 96) & 1) == 0)
  {
    v19 = MIL::Blob::StorageReader::GetFilename(*(a1 + 72));
  }

  return a1;
}

void sub_217FCC1B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  __cxa_free_exception(v22);
  v24 = *(v20 + 80);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  *v20 = v21;
  if (*(v20 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v20 + 8);
  }

  _Unwind_Resume(a1);
}

void MIL::IRValueStorageData<MIL::UInt4>::GetViewImpl(uint64_t a1)
{
  if (*(a1 + 96) == 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "This program was parsed specifying ignoreWeightFile, cannot fetch the data value.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v1 = *(a1 + 88);
  v2 = *(a1 + 72);

  MIL::Blob::StorageReader::GetDataView<MIL::UInt4>(v2, v1);
}

uint64_t MIL::IRValueStorageData<unsigned short>::~IRValueStorageData(uint64_t a1)
{
  *a1 = &unk_2829E1EF0;
  v2 = *(a1 + 80);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  *a1 = &unk_2829E0E10;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 8);
  }

  return a1;
}

void MIL::IRValueStorageData<unsigned short>::~IRValueStorageData(uint64_t a1)
{
  MIL::IRValueStorageData<unsigned short>::~IRValueStorageData(a1);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t MIL::IRValueStorageData<unsigned short>::IRValueStorageData(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, char a5)
{
  *a1 = &unk_2829E0E10;
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__hash_table(a1 + 8, a3);
  *(a1 + 48) = 1;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  *a1 = &unk_2829E1EF0;
  *(a1 + 72) = *a4;
  *a4 = 0;
  *(a4 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>(&__p, "offset");
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  *(a1 + 88) = v9;
  *(a1 + 96) = a5;
  Filename = MIL::Blob::StorageReader::GetFilename(*(a1 + 72));
  std::string::basic_string[abi:ne200100]<0>(v24, "path");
  v11 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>((a1 + 8), v24);
  if (!v11)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  MIL::IRValue::GetScalar<std::string>(v11[5], &__p);
  v12 = *(Filename + 23);
  if (v12 >= 0)
  {
    v13 = *(Filename + 23);
  }

  else
  {
    v13 = *(Filename + 8);
  }

  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  v15 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  if (v13 != size)
  {
    v18 = 0;
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (v12 >= 0)
  {
    v16 = Filename;
  }

  else
  {
    v16 = *Filename;
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v18 = memcmp(v16, p_p, v13) == 0;
  if (v15 < 0)
  {
LABEL_19:
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_20:
  if (v25 < 0)
  {
    operator delete(v24[0]);
  }

  if (!v18)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v22 = MEMORY[0x277D825D8];
    std::logic_error::logic_error(exception, "Storage and properties have different filenames.");
    v23 = MEMORY[0x277D82750];
    goto LABEL_30;
  }

  if (*(a1 + 32) != 3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v22 = MEMORY[0x277D82600];
    std::runtime_error::runtime_error(exception, "Too many file properties provided.");
    v23 = MEMORY[0x277D82760];
LABEL_30:
    __cxa_throw(exception, v23, v22);
  }

  if ((*(a1 + 96) & 1) == 0)
  {
    v19 = MIL::Blob::StorageReader::GetFilename(*(a1 + 72));
  }

  return a1;
}

void sub_217FCC5BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  __cxa_free_exception(v22);
  v24 = *(v20 + 80);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  *v20 = v21;
  if (*(v20 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v20 + 8);
  }

  _Unwind_Resume(a1);
}

uint64_t MIL::IRValueStorageData<unsigned short>::GetViewImpl(uint64_t a1)
{
  if (*(a1 + 96) == 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "This program was parsed specifying ignoreWeightFile, cannot fetch the data value.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v1 = *(a1 + 88);
  v2 = *(a1 + 72);

  return MIL::Blob::StorageReader::GetDataView<unsigned short>(v2, v1);
}

uint64_t MIL::IRValueStorageData<int>::~IRValueStorageData(uint64_t a1)
{
  *a1 = &unk_2829E1F40;
  v2 = *(a1 + 80);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  *a1 = &unk_2829E0B90;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 8);
  }

  return a1;
}

void MIL::IRValueStorageData<int>::~IRValueStorageData(uint64_t a1)
{
  MIL::IRValueStorageData<int>::~IRValueStorageData(a1);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t MIL::IRValueStorageData<int>::IRValueStorageData(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, char a5)
{
  *a1 = &unk_2829E0B90;
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__hash_table(a1 + 8, a3);
  *(a1 + 48) = 1;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  *a1 = &unk_2829E1F40;
  *(a1 + 72) = *a4;
  *a4 = 0;
  *(a4 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>(&__p, "offset");
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  *(a1 + 88) = v9;
  *(a1 + 96) = a5;
  Filename = MIL::Blob::StorageReader::GetFilename(*(a1 + 72));
  std::string::basic_string[abi:ne200100]<0>(v24, "path");
  v11 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>((a1 + 8), v24);
  if (!v11)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  MIL::IRValue::GetScalar<std::string>(v11[5], &__p);
  v12 = *(Filename + 23);
  if (v12 >= 0)
  {
    v13 = *(Filename + 23);
  }

  else
  {
    v13 = *(Filename + 8);
  }

  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  v15 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  if (v13 != size)
  {
    v18 = 0;
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (v12 >= 0)
  {
    v16 = Filename;
  }

  else
  {
    v16 = *Filename;
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v18 = memcmp(v16, p_p, v13) == 0;
  if (v15 < 0)
  {
LABEL_19:
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_20:
  if (v25 < 0)
  {
    operator delete(v24[0]);
  }

  if (!v18)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v22 = MEMORY[0x277D825D8];
    std::logic_error::logic_error(exception, "Storage and properties have different filenames.");
    v23 = MEMORY[0x277D82750];
    goto LABEL_30;
  }

  if (*(a1 + 32) != 3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v22 = MEMORY[0x277D82600];
    std::runtime_error::runtime_error(exception, "Too many file properties provided.");
    v23 = MEMORY[0x277D82760];
LABEL_30:
    __cxa_throw(exception, v23, v22);
  }

  if ((*(a1 + 96) & 1) == 0)
  {
    v19 = MIL::Blob::StorageReader::GetFilename(*(a1 + 72));
  }

  return a1;
}

void sub_217FCC9C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  __cxa_free_exception(v22);
  v24 = *(v20 + 80);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  *v20 = v21;
  if (*(v20 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v20 + 8);
  }

  _Unwind_Resume(a1);
}

uint64_t MIL::IRValueStorageData<int>::GetViewImpl(uint64_t a1)
{
  if (*(a1 + 96) == 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "This program was parsed specifying ignoreWeightFile, cannot fetch the data value.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v1 = *(a1 + 88);
  v2 = *(a1 + 72);

  return MIL::Blob::StorageReader::GetDataView<int>(v2, v1);
}

uint64_t MIL::IRValueStorageData<unsigned int>::~IRValueStorageData(uint64_t a1)
{
  *a1 = &unk_2829E1F90;
  v2 = *(a1 + 80);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  *a1 = &unk_2829E0E60;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 8);
  }

  return a1;
}

void MIL::IRValueStorageData<unsigned int>::~IRValueStorageData(uint64_t a1)
{
  MIL::IRValueStorageData<unsigned int>::~IRValueStorageData(a1);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t MIL::IRValueStorageData<unsigned int>::IRValueStorageData(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, char a5)
{
  *a1 = &unk_2829E0E60;
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__hash_table(a1 + 8, a3);
  *(a1 + 48) = 1;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  *a1 = &unk_2829E1F90;
  *(a1 + 72) = *a4;
  *a4 = 0;
  *(a4 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>(&__p, "offset");
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  *(a1 + 88) = v9;
  *(a1 + 96) = a5;
  Filename = MIL::Blob::StorageReader::GetFilename(*(a1 + 72));
  std::string::basic_string[abi:ne200100]<0>(v24, "path");
  v11 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>((a1 + 8), v24);
  if (!v11)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  MIL::IRValue::GetScalar<std::string>(v11[5], &__p);
  v12 = *(Filename + 23);
  if (v12 >= 0)
  {
    v13 = *(Filename + 23);
  }

  else
  {
    v13 = *(Filename + 8);
  }

  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  v15 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  if (v13 != size)
  {
    v18 = 0;
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (v12 >= 0)
  {
    v16 = Filename;
  }

  else
  {
    v16 = *Filename;
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v18 = memcmp(v16, p_p, v13) == 0;
  if (v15 < 0)
  {
LABEL_19:
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_20:
  if (v25 < 0)
  {
    operator delete(v24[0]);
  }

  if (!v18)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v22 = MEMORY[0x277D825D8];
    std::logic_error::logic_error(exception, "Storage and properties have different filenames.");
    v23 = MEMORY[0x277D82750];
    goto LABEL_30;
  }

  if (*(a1 + 32) != 3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v22 = MEMORY[0x277D82600];
    std::runtime_error::runtime_error(exception, "Too many file properties provided.");
    v23 = MEMORY[0x277D82760];
LABEL_30:
    __cxa_throw(exception, v23, v22);
  }

  if ((*(a1 + 96) & 1) == 0)
  {
    v19 = MIL::Blob::StorageReader::GetFilename(*(a1 + 72));
  }

  return a1;
}

void sub_217FCCDD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  __cxa_free_exception(v22);
  v24 = *(v20 + 80);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  *v20 = v21;
  if (*(v20 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v20 + 8);
  }

  _Unwind_Resume(a1);
}

uint64_t MIL::IRValueStorageData<unsigned int>::GetViewImpl(uint64_t a1)
{
  if (*(a1 + 96) == 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "This program was parsed specifying ignoreWeightFile, cannot fetch the data value.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v1 = *(a1 + 88);
  v2 = *(a1 + 72);

  return MIL::Blob::StorageReader::GetDataView<unsigned int>(v2, v1);
}

uint64_t MIL::IRValueConstExprOutputData<signed char>::~IRValueConstExprOutputData(uint64_t a1)
{
  *a1 = &unk_2829E1FE0;
  v2 = *(a1 + 128);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  v3 = *(a1 + 80);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  *a1 = &unk_2829E0AF0;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 8);
  }

  return a1;
}

void MIL::IRValueConstExprOutputData<signed char>::~IRValueConstExprOutputData(uint64_t a1)
{
  MIL::IRValueConstExprOutputData<signed char>::~IRValueConstExprOutputData(a1);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t MIL::IRValueConstExprOutputData<signed char>::IRValueConstExprOutputData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  *(a1 + 8) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  *a1 = &unk_2829E1FE0;
  *(a1 + 72) = *a3;
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a1 + 88) = a4;
  if (*(a5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 96), *a5, *(a5 + 1));
  }

  else
  {
    v6 = *a5;
    *(a1 + 112) = *(a5 + 2);
    *(a1 + 96) = v6;
  }

  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  return a1;
}

void sub_217FCD070(_Unwind_Exception *exception_object)
{
  v5 = *(v1 + 80);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  *v1 = v3;
  if (*(v1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v2);
  }

  _Unwind_Resume(exception_object);
}

void MIL::IRValueConstExprOutputData<signed char>::EvaluateConstExpr(uint64_t a1)
{
  (*(**(a1 + 72) + 32))(&v4);
  v2 = v4;
  v4 = 0uLL;
  v3 = *(a1 + 128);
  *(a1 + 120) = v2;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    if (*(&v4 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v4 + 1));
    }
  }
}

uint64_t MIL::IRValueConstExprOutputData<signed char>::GetViewImpl(uint64_t a1)
{
  v2 = *(a1 + 120);
  if (!v2)
  {
    MIL::IRValueConstExprOutputData<signed char>::EvaluateConstExpr(a1);
    v2 = *(a1 + 120);
  }

  return MIL::IRTensorValue::GetDataView<signed char>(v2);
}

void MIL::IRValueConstExprOutputData<signed char>::GetConstExprOutputName(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  if (*(a1 + 119) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(a1 + 96), *(a1 + 104));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(a1 + 96);
    a2->__r_.__value_.__r.__words[2] = *(a1 + 112);
  }
}

uint64_t MIL::IRValueConstExprOutputData<unsigned char>::~IRValueConstExprOutputData(uint64_t a1)
{
  *a1 = &unk_2829E2030;
  v2 = *(a1 + 128);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  v3 = *(a1 + 80);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  *a1 = &unk_2829E0DC0;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 8);
  }

  return a1;
}

void MIL::IRValueConstExprOutputData<unsigned char>::~IRValueConstExprOutputData(uint64_t a1)
{
  MIL::IRValueConstExprOutputData<unsigned char>::~IRValueConstExprOutputData(a1);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t MIL::IRValueConstExprOutputData<unsigned char>::IRValueConstExprOutputData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  *(a1 + 8) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  *a1 = &unk_2829E2030;
  *(a1 + 72) = *a3;
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a1 + 88) = a4;
  if (*(a5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 96), *a5, *(a5 + 1));
  }

  else
  {
    v6 = *a5;
    *(a1 + 112) = *(a5 + 2);
    *(a1 + 96) = v6;
  }

  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  return a1;
}

void sub_217FCD324(_Unwind_Exception *exception_object)
{
  v5 = *(v1 + 80);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  *v1 = v3;
  if (*(v1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRValueConstExprOutputData<unsigned char>::GetViewImpl(uint64_t a1)
{
  v2 = *(a1 + 120);
  if (!v2)
  {
    MIL::IRValueConstExprOutputData<signed char>::EvaluateConstExpr(a1);
    v2 = *(a1 + 120);
  }

  return MIL::IRTensorValue::GetDataView<unsigned char>(v2);
}

void MIL::IRValueConstExprOutputData<unsigned char>::GetConstExprOutputName(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  if (*(a1 + 119) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(a1 + 96), *(a1 + 104));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(a1 + 96);
    a2->__r_.__value_.__r.__words[2] = *(a1 + 112);
  }
}

uint64_t MIL::IRValueConstExprOutputData<float>::~IRValueConstExprOutputData(uint64_t a1)
{
  *a1 = &unk_2829E2080;
  v2 = *(a1 + 128);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  v3 = *(a1 + 80);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  *a1 = &unk_2829E0A00;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 8);
  }

  return a1;
}

void MIL::IRValueConstExprOutputData<float>::~IRValueConstExprOutputData(uint64_t a1)
{
  MIL::IRValueConstExprOutputData<float>::~IRValueConstExprOutputData(a1);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t MIL::IRValueConstExprOutputData<float>::IRValueConstExprOutputData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  *(a1 + 8) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  *a1 = &unk_2829E2080;
  *(a1 + 72) = *a3;
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a1 + 88) = a4;
  if (*(a5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 96), *a5, *(a5 + 1));
  }

  else
  {
    v6 = *a5;
    *(a1 + 112) = *(a5 + 2);
    *(a1 + 96) = v6;
  }

  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  return a1;
}

void sub_217FCD55C(_Unwind_Exception *exception_object)
{
  v5 = *(v1 + 80);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  *v1 = v3;
  if (*(v1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRValueConstExprOutputData<float>::GetViewImpl(uint64_t a1)
{
  v2 = *(a1 + 120);
  if (!v2)
  {
    MIL::IRValueConstExprOutputData<signed char>::EvaluateConstExpr(a1);
    v2 = *(a1 + 120);
  }

  return MIL::IRTensorValue::GetDataView<float>(v2);
}

void MIL::IRValueConstExprOutputData<float>::GetConstExprOutputName(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  if (*(a1 + 119) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(a1 + 96), *(a1 + 104));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(a1 + 96);
    a2->__r_.__value_.__r.__words[2] = *(a1 + 112);
  }
}

uint64_t MIL::IRValueConstExprOutputData<double>::~IRValueConstExprOutputData(uint64_t a1)
{
  *a1 = &unk_2829E20D0;
  v2 = *(a1 + 128);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  v3 = *(a1 + 80);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  *a1 = &unk_2829E0A50;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 8);
  }

  return a1;
}

void MIL::IRValueConstExprOutputData<double>::~IRValueConstExprOutputData(uint64_t a1)
{
  MIL::IRValueConstExprOutputData<double>::~IRValueConstExprOutputData(a1);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t MIL::IRValueConstExprOutputData<double>::IRValueConstExprOutputData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  *(a1 + 8) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  *a1 = &unk_2829E20D0;
  *(a1 + 72) = *a3;
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a1 + 88) = a4;
  if (*(a5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 96), *a5, *(a5 + 1));
  }

  else
  {
    v6 = *a5;
    *(a1 + 112) = *(a5 + 2);
    *(a1 + 96) = v6;
  }

  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  return a1;
}

void sub_217FCD794(_Unwind_Exception *exception_object)
{
  v5 = *(v1 + 80);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  *v1 = v3;
  if (*(v1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRValueConstExprOutputData<double>::GetViewImpl(uint64_t a1)
{
  v2 = *(a1 + 120);
  if (!v2)
  {
    MIL::IRValueConstExprOutputData<signed char>::EvaluateConstExpr(a1);
    v2 = *(a1 + 120);
  }

  return MIL::IRTensorValue::GetDataView<double>(v2);
}

void MIL::IRValueConstExprOutputData<double>::GetConstExprOutputName(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  if (*(a1 + 119) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(a1 + 96), *(a1 + 104));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(a1 + 96);
    a2->__r_.__value_.__r.__words[2] = *(a1 + 112);
  }
}

uint64_t MIL::IRValueConstExprOutputData<MIL::Fp16>::~IRValueConstExprOutputData(uint64_t a1)
{
  *a1 = &unk_2829E2120;
  v2 = *(a1 + 128);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  v3 = *(a1 + 80);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  *a1 = &unk_2829E0910;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 8);
  }

  return a1;
}

void MIL::IRValueConstExprOutputData<MIL::Fp16>::~IRValueConstExprOutputData(uint64_t a1)
{
  MIL::IRValueConstExprOutputData<MIL::Fp16>::~IRValueConstExprOutputData(a1);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t MIL::IRValueConstExprOutputData<MIL::Fp16>::IRValueConstExprOutputData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  *(a1 + 8) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  *a1 = &unk_2829E2120;
  *(a1 + 72) = *a3;
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a1 + 88) = a4;
  if (*(a5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 96), *a5, *(a5 + 1));
  }

  else
  {
    v6 = *a5;
    *(a1 + 112) = *(a5 + 2);
    *(a1 + 96) = v6;
  }

  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  return a1;
}

void sub_217FCD9CC(_Unwind_Exception *exception_object)
{
  v5 = *(v1 + 80);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  *v1 = v3;
  if (*(v1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRValueConstExprOutputData<MIL::Fp16>::GetViewImpl(uint64_t a1)
{
  v2 = *(a1 + 120);
  if (!v2)
  {
    MIL::IRValueConstExprOutputData<signed char>::EvaluateConstExpr(a1);
    v2 = *(a1 + 120);
  }

  return MIL::IRTensorValue::GetDataView<MIL::Fp16>(v2);
}

void MIL::IRValueConstExprOutputData<MIL::Fp16>::GetConstExprOutputName(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  if (*(a1 + 119) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(a1 + 96), *(a1 + 104));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(a1 + 96);
    a2->__r_.__value_.__r.__words[2] = *(a1 + 112);
  }
}

uint64_t MIL::IRValueConstExprOutputData<MIL::Fp8E4M3FN>::~IRValueConstExprOutputData(uint64_t a1)
{
  *a1 = &unk_2829E2170;
  v2 = *(a1 + 128);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  v3 = *(a1 + 80);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  *a1 = &unk_2829E09B0;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 8);
  }

  return a1;
}

void MIL::IRValueConstExprOutputData<MIL::Fp8E4M3FN>::~IRValueConstExprOutputData(uint64_t a1)
{
  MIL::IRValueConstExprOutputData<MIL::Fp8E4M3FN>::~IRValueConstExprOutputData(a1);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t MIL::IRValueConstExprOutputData<MIL::Fp8E4M3FN>::IRValueConstExprOutputData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  *(a1 + 8) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  *a1 = &unk_2829E2170;
  *(a1 + 72) = *a3;
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a1 + 88) = a4;
  if (*(a5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 96), *a5, *(a5 + 1));
  }

  else
  {
    v6 = *a5;
    *(a1 + 112) = *(a5 + 2);
    *(a1 + 96) = v6;
  }

  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  return a1;
}

void sub_217FCDC04(_Unwind_Exception *exception_object)
{
  v5 = *(v1 + 80);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  *v1 = v3;
  if (*(v1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRValueConstExprOutputData<MIL::Fp8E4M3FN>::GetViewImpl(uint64_t a1)
{
  v2 = *(a1 + 120);
  if (!v2)
  {
    MIL::IRValueConstExprOutputData<signed char>::EvaluateConstExpr(a1);
    v2 = *(a1 + 120);
  }

  return MIL::IRTensorValue::GetDataView<MIL::Fp8E4M3FN>(v2);
}

void MIL::IRValueConstExprOutputData<MIL::Fp8E4M3FN>::GetConstExprOutputName(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  if (*(a1 + 119) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(a1 + 96), *(a1 + 104));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(a1 + 96);
    a2->__r_.__value_.__r.__words[2] = *(a1 + 112);
  }
}

uint64_t MIL::IRValueConstExprOutputData<MIL::Fp8E5M2>::~IRValueConstExprOutputData(uint64_t a1)
{
  *a1 = &unk_2829E21C0;
  v2 = *(a1 + 128);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  v3 = *(a1 + 80);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  *a1 = &unk_2829E0960;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 8);
  }

  return a1;
}

void MIL::IRValueConstExprOutputData<MIL::Fp8E5M2>::~IRValueConstExprOutputData(uint64_t a1)
{
  MIL::IRValueConstExprOutputData<MIL::Fp8E5M2>::~IRValueConstExprOutputData(a1);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t MIL::IRValueConstExprOutputData<MIL::Fp8E5M2>::IRValueConstExprOutputData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  *(a1 + 8) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  *a1 = &unk_2829E21C0;
  *(a1 + 72) = *a3;
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a1 + 88) = a4;
  if (*(a5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 96), *a5, *(a5 + 1));
  }

  else
  {
    v6 = *a5;
    *(a1 + 112) = *(a5 + 2);
    *(a1 + 96) = v6;
  }

  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  return a1;
}

void sub_217FCDE3C(_Unwind_Exception *exception_object)
{
  v5 = *(v1 + 80);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  *v1 = v3;
  if (*(v1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRValueConstExprOutputData<MIL::Fp8E5M2>::GetViewImpl(uint64_t a1)
{
  v2 = *(a1 + 120);
  if (!v2)
  {
    MIL::IRValueConstExprOutputData<signed char>::EvaluateConstExpr(a1);
    v2 = *(a1 + 120);
  }

  return MIL::IRTensorValue::GetDataView<MIL::Fp8E5M2>(v2);
}

void MIL::IRValueConstExprOutputData<MIL::Fp8E5M2>::GetConstExprOutputName(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  if (*(a1 + 119) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(a1 + 96), *(a1 + 104));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(a1 + 96);
    a2->__r_.__value_.__r.__words[2] = *(a1 + 112);
  }
}

uint64_t MIL::IRValueConstExprOutputData<MIL::Bf16>::~IRValueConstExprOutputData(uint64_t a1)
{
  *a1 = &unk_2829E2210;
  v2 = *(a1 + 128);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  v3 = *(a1 + 80);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  *a1 = &unk_2829E08C0;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 8);
  }

  return a1;
}

void MIL::IRValueConstExprOutputData<MIL::Bf16>::~IRValueConstExprOutputData(uint64_t a1)
{
  MIL::IRValueConstExprOutputData<MIL::Bf16>::~IRValueConstExprOutputData(a1);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t MIL::IRValueConstExprOutputData<MIL::Bf16>::IRValueConstExprOutputData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  *(a1 + 8) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  *a1 = &unk_2829E2210;
  *(a1 + 72) = *a3;
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a1 + 88) = a4;
  if (*(a5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 96), *a5, *(a5 + 1));
  }

  else
  {
    v6 = *a5;
    *(a1 + 112) = *(a5 + 2);
    *(a1 + 96) = v6;
  }

  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  return a1;
}

void sub_217FCE074(_Unwind_Exception *exception_object)
{
  v5 = *(v1 + 80);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  *v1 = v3;
  if (*(v1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRValueConstExprOutputData<MIL::Bf16>::GetViewImpl(uint64_t a1)
{
  v2 = *(a1 + 120);
  if (!v2)
  {
    MIL::IRValueConstExprOutputData<signed char>::EvaluateConstExpr(a1);
    v2 = *(a1 + 120);
  }

  return MIL::IRTensorValue::GetDataView<MIL::Bf16>(v2);
}

void MIL::IRValueConstExprOutputData<MIL::Bf16>::GetConstExprOutputName(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  if (*(a1 + 119) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(a1 + 96), *(a1 + 104));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(a1 + 96);
    a2->__r_.__value_.__r.__words[2] = *(a1 + 112);
  }
}

uint64_t MIL::IRValueConstExprOutputData<short>::~IRValueConstExprOutputData(uint64_t a1)
{
  *a1 = &unk_2829E2260;
  v2 = *(a1 + 128);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  v3 = *(a1 + 80);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  *a1 = &unk_2829E0B40;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 8);
  }

  return a1;
}

void MIL::IRValueConstExprOutputData<short>::~IRValueConstExprOutputData(uint64_t a1)
{
  MIL::IRValueConstExprOutputData<short>::~IRValueConstExprOutputData(a1);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t MIL::IRValueConstExprOutputData<short>::IRValueConstExprOutputData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  *(a1 + 8) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  *a1 = &unk_2829E2260;
  *(a1 + 72) = *a3;
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a1 + 88) = a4;
  if (*(a5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 96), *a5, *(a5 + 1));
  }

  else
  {
    v6 = *a5;
    *(a1 + 112) = *(a5 + 2);
    *(a1 + 96) = v6;
  }

  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  return a1;
}

void sub_217FCE2AC(_Unwind_Exception *exception_object)
{
  v5 = *(v1 + 80);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  *v1 = v3;
  if (*(v1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRValueConstExprOutputData<short>::GetViewImpl(uint64_t a1)
{
  v2 = *(a1 + 120);
  if (!v2)
  {
    MIL::IRValueConstExprOutputData<signed char>::EvaluateConstExpr(a1);
    v2 = *(a1 + 120);
  }

  return MIL::IRTensorValue::GetDataView<short>(v2);
}

void MIL::IRValueConstExprOutputData<short>::GetConstExprOutputName(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  if (*(a1 + 119) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(a1 + 96), *(a1 + 104));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(a1 + 96);
    a2->__r_.__value_.__r.__words[2] = *(a1 + 112);
  }
}

uint64_t MIL::IRValueConstExprOutputData<unsigned short>::~IRValueConstExprOutputData(uint64_t a1)
{
  *a1 = &unk_2829E22B0;
  v2 = *(a1 + 128);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  v3 = *(a1 + 80);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  *a1 = &unk_2829E0E10;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 8);
  }

  return a1;
}

void MIL::IRValueConstExprOutputData<unsigned short>::~IRValueConstExprOutputData(uint64_t a1)
{
  MIL::IRValueConstExprOutputData<unsigned short>::~IRValueConstExprOutputData(a1);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t MIL::IRValueConstExprOutputData<unsigned short>::IRValueConstExprOutputData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  *(a1 + 8) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  *a1 = &unk_2829E22B0;
  *(a1 + 72) = *a3;
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a1 + 88) = a4;
  if (*(a5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 96), *a5, *(a5 + 1));
  }

  else
  {
    v6 = *a5;
    *(a1 + 112) = *(a5 + 2);
    *(a1 + 96) = v6;
  }

  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  return a1;
}

void sub_217FCE4E4(_Unwind_Exception *exception_object)
{
  v5 = *(v1 + 80);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  *v1 = v3;
  if (*(v1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRValueConstExprOutputData<unsigned short>::GetViewImpl(uint64_t a1)
{
  v2 = *(a1 + 120);
  if (!v2)
  {
    MIL::IRValueConstExprOutputData<signed char>::EvaluateConstExpr(a1);
    v2 = *(a1 + 120);
  }

  return MIL::IRTensorValue::GetDataView<unsigned short>(v2);
}

void MIL::IRValueConstExprOutputData<unsigned short>::GetConstExprOutputName(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  if (*(a1 + 119) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(a1 + 96), *(a1 + 104));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(a1 + 96);
    a2->__r_.__value_.__r.__words[2] = *(a1 + 112);
  }
}

uint64_t MIL::IRValueConstExprOutputData<int>::~IRValueConstExprOutputData(uint64_t a1)
{
  *a1 = &unk_2829E2300;
  v2 = *(a1 + 128);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  v3 = *(a1 + 80);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  *a1 = &unk_2829E0B90;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 8);
  }

  return a1;
}

void MIL::IRValueConstExprOutputData<int>::~IRValueConstExprOutputData(uint64_t a1)
{
  MIL::IRValueConstExprOutputData<int>::~IRValueConstExprOutputData(a1);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t MIL::IRValueConstExprOutputData<int>::IRValueConstExprOutputData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  *(a1 + 8) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  *a1 = &unk_2829E2300;
  *(a1 + 72) = *a3;
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a1 + 88) = a4;
  if (*(a5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 96), *a5, *(a5 + 1));
  }

  else
  {
    v6 = *a5;
    *(a1 + 112) = *(a5 + 2);
    *(a1 + 96) = v6;
  }

  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  return a1;
}

void sub_217FCE71C(_Unwind_Exception *exception_object)
{
  v5 = *(v1 + 80);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  *v1 = v3;
  if (*(v1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRValueConstExprOutputData<int>::GetViewImpl(uint64_t a1)
{
  v2 = *(a1 + 120);
  if (!v2)
  {
    MIL::IRValueConstExprOutputData<signed char>::EvaluateConstExpr(a1);
    v2 = *(a1 + 120);
  }

  return MIL::IRTensorValue::GetDataView<int>(v2);
}

void MIL::IRValueConstExprOutputData<int>::GetConstExprOutputName(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  if (*(a1 + 119) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(a1 + 96), *(a1 + 104));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(a1 + 96);
    a2->__r_.__value_.__r.__words[2] = *(a1 + 112);
  }
}

uint64_t MIL::IRValueConstExprOutputData<unsigned int>::~IRValueConstExprOutputData(uint64_t a1)
{
  *a1 = &unk_2829E2350;
  v2 = *(a1 + 128);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  v3 = *(a1 + 80);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  *a1 = &unk_2829E0E60;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 8);
  }

  return a1;
}

void MIL::IRValueConstExprOutputData<unsigned int>::~IRValueConstExprOutputData(uint64_t a1)
{
  MIL::IRValueConstExprOutputData<unsigned int>::~IRValueConstExprOutputData(a1);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t MIL::IRValueConstExprOutputData<unsigned int>::IRValueConstExprOutputData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  *(a1 + 8) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  *a1 = &unk_2829E2350;
  *(a1 + 72) = *a3;
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a1 + 88) = a4;
  if (*(a5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 96), *a5, *(a5 + 1));
  }

  else
  {
    v6 = *a5;
    *(a1 + 112) = *(a5 + 2);
    *(a1 + 96) = v6;
  }

  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  return a1;
}

void sub_217FCE954(_Unwind_Exception *exception_object)
{
  v5 = *(v1 + 80);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  *v1 = v3;
  if (*(v1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRValueConstExprOutputData<unsigned int>::GetViewImpl(uint64_t a1)
{
  v2 = *(a1 + 120);
  if (!v2)
  {
    MIL::IRValueConstExprOutputData<signed char>::EvaluateConstExpr(a1);
    v2 = *(a1 + 120);
  }

  return MIL::IRTensorValue::GetDataView<unsigned int>(v2);
}

void MIL::IRValueConstExprOutputData<unsigned int>::GetConstExprOutputName(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  if (*(a1 + 119) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(a1 + 96), *(a1 + 104));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(a1 + 96);
    a2->__r_.__value_.__r.__words[2] = *(a1 + 112);
  }
}

uint64_t MIL::IRValueConstExprOutputData<long long>::~IRValueConstExprOutputData(uint64_t a1)
{
  *a1 = &unk_2829E23A0;
  v2 = *(a1 + 128);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  v3 = *(a1 + 80);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  *a1 = &unk_2829E0BE0;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 8);
  }

  return a1;
}

void MIL::IRValueConstExprOutputData<long long>::~IRValueConstExprOutputData(uint64_t a1)
{
  MIL::IRValueConstExprOutputData<long long>::~IRValueConstExprOutputData(a1);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t MIL::IRValueConstExprOutputData<long long>::IRValueConstExprOutputData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  *(a1 + 8) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  *a1 = &unk_2829E23A0;
  *(a1 + 72) = *a3;
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a1 + 88) = a4;
  if (*(a5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 96), *a5, *(a5 + 1));
  }

  else
  {
    v6 = *a5;
    *(a1 + 112) = *(a5 + 2);
    *(a1 + 96) = v6;
  }

  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  return a1;
}

void sub_217FCEB8C(_Unwind_Exception *exception_object)
{
  v5 = *(v1 + 80);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  *v1 = v3;
  if (*(v1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRValueConstExprOutputData<long long>::GetViewImpl(uint64_t a1)
{
  v2 = *(a1 + 120);
  if (!v2)
  {
    MIL::IRValueConstExprOutputData<signed char>::EvaluateConstExpr(a1);
    v2 = *(a1 + 120);
  }

  return MIL::IRTensorValue::GetDataView<long long>(v2);
}

void MIL::IRValueConstExprOutputData<long long>::GetConstExprOutputName(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  if (*(a1 + 119) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(a1 + 96), *(a1 + 104));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(a1 + 96);
    a2->__r_.__value_.__r.__words[2] = *(a1 + 112);
  }
}

uint64_t MIL::IRValueConstExprOutputData<unsigned long long>::~IRValueConstExprOutputData(uint64_t a1)
{
  *a1 = &unk_2829E23F0;
  v2 = *(a1 + 128);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  v3 = *(a1 + 80);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  *a1 = &unk_2829E0EB0;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 8);
  }

  return a1;
}

void MIL::IRValueConstExprOutputData<unsigned long long>::~IRValueConstExprOutputData(uint64_t a1)
{
  MIL::IRValueConstExprOutputData<unsigned long long>::~IRValueConstExprOutputData(a1);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t MIL::IRValueConstExprOutputData<unsigned long long>::IRValueConstExprOutputData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  *(a1 + 8) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  *a1 = &unk_2829E23F0;
  *(a1 + 72) = *a3;
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a1 + 88) = a4;
  if (*(a5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 96), *a5, *(a5 + 1));
  }

  else
  {
    v6 = *a5;
    *(a1 + 112) = *(a5 + 2);
    *(a1 + 96) = v6;
  }

  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  return a1;
}

void sub_217FCEDC4(_Unwind_Exception *exception_object)
{
  v5 = *(v1 + 80);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  *v1 = v3;
  if (*(v1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRValueConstExprOutputData<unsigned long long>::GetViewImpl(uint64_t a1)
{
  v2 = *(a1 + 120);
  if (!v2)
  {
    MIL::IRValueConstExprOutputData<signed char>::EvaluateConstExpr(a1);
    v2 = *(a1 + 120);
  }

  return MIL::IRTensorValue::GetDataView<unsigned long long>(v2);
}

void MIL::IRValueConstExprOutputData<unsigned long long>::GetConstExprOutputName(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  if (*(a1 + 119) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(a1 + 96), *(a1 + 104));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(a1 + 96);
    a2->__r_.__value_.__r.__words[2] = *(a1 + 112);
  }
}

uint64_t MIL::IRValueConstExprOutputData<std::string>::~IRValueConstExprOutputData(uint64_t a1)
{
  *a1 = &unk_2829E2440;
  v2 = *(a1 + 128);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  v3 = *(a1 + 80);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  *a1 = &unk_2829E0870;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 8);
  }

  return a1;
}

void MIL::IRValueConstExprOutputData<std::string>::~IRValueConstExprOutputData(uint64_t a1)
{
  MIL::IRValueConstExprOutputData<std::string>::~IRValueConstExprOutputData(a1);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t MIL::IRValueConstExprOutputData<std::string>::IRValueConstExprOutputData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  *(a1 + 8) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  *a1 = &unk_2829E2440;
  *(a1 + 72) = *a3;
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a1 + 88) = a4;
  if (*(a5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 96), *a5, *(a5 + 1));
  }

  else
  {
    v6 = *a5;
    *(a1 + 112) = *(a5 + 2);
    *(a1 + 96) = v6;
  }

  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  return a1;
}

void sub_217FCEFFC(_Unwind_Exception *exception_object)
{
  v5 = *(v1 + 80);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  *v1 = v3;
  if (*(v1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRValueConstExprOutputData<std::string>::GetViewImpl(uint64_t a1)
{
  v2 = *(a1 + 120);
  if (!v2)
  {
    MIL::IRValueConstExprOutputData<signed char>::EvaluateConstExpr(a1);
    v2 = *(a1 + 120);
  }

  return MIL::IRTensorValue::GetDataView<std::string>(v2);
}

void MIL::IRValueConstExprOutputData<std::string>::GetConstExprOutputName(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  if (*(a1 + 119) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(a1 + 96), *(a1 + 104));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(a1 + 96);
    a2->__r_.__value_.__r.__words[2] = *(a1 + 112);
  }
}

void MIL::IRValueStorageData<unsigned char>::GetViewImpl(uint64_t a1)
{
  if (*(a1 + 96) == 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "This program was parsed specifying ignoreWeightFile, cannot fetch the data value.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  DataType = MIL::Blob::StorageReader::GetDataType(*(a1 + 72), *(a1 + 88));
  v3 = *(a1 + 72);
  v4 = *(a1 + 88);
  if (DataType > 10)
  {
    switch(DataType)
    {
      case 11:
        MIL::Blob::StorageReader::GetDataView<MIL::UInt4>(v3, v4);
        return;
      case 12:
        MIL::Blob::StorageReader::GetDataView<MIL::UInt3>(v3, v4);
        return;
      case 13:
        MIL::Blob::StorageReader::GetDataView<MIL::UInt6>(v3, v4);
        return;
    }
  }

  else
  {
    switch(DataType)
    {
      case 8:
        MIL::Blob::StorageReader::GetDataView<MIL::Int4>(v3, v4);
        return;
      case 9:
        MIL::Blob::StorageReader::GetDataView<MIL::UInt1>(v3, v4);
        return;
      case 10:
        MIL::Blob::StorageReader::GetDataView<MIL::UInt2>(v3, v4);
        return;
    }
  }

  MIL::Blob::StorageReader::GetDataView<unsigned char>(v3, v4);
}

uint64_t MIL::IRDimension::AsConstant(MIL::IRDimension *this)
{
  result = (*(*this + 16))(this);
  if (!result)
  {
    exception = __cxa_allocate_exception(8uLL);
    v3 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v3, MEMORY[0x277D82780], MEMORY[0x277D826D8]);
  }

  return result;
}

uint64_t MIL::IRDimension::AsUnknown(MIL::IRDimension *this)
{
  result = (*(*this + 24))(this);
  if (!result)
  {
    exception = __cxa_allocate_exception(8uLL);
    v3 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v3, MEMORY[0x277D82780], MEMORY[0x277D826D8]);
  }

  return result;
}

void sub_217FCF400(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  *(v1 - 40) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  _Unwind_Resume(exception_object);
}

void *MIL::IRUnknownDimension::IRUnknownDimension(void *this)
{
  *this = &unk_2829E2D58;
  return this;
}

{
  *this = &unk_2829E2D58;
  return this;
}

void sub_217FCF658(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  *(v1 - 40) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  _Unwind_Resume(exception_object);
}

void *MIL::IRProperty::IRProperty(void *this)
{
  *this = &unk_2829E2D98;
  return this;
}

{
  *this = &unk_2829E2D98;
  return this;
}

void *MIL::IRProperty::AsConstant(MIL::IRProperty *this)
{
  {
    exception = __cxa_allocate_exception(8uLL);
    v3 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v3, MEMORY[0x277D82780], MEMORY[0x277D826D8]);
  }

  return result;
}

void *MIL::IRProperty::TryAsConstant(void *this)
{
  if (this)
  {
  }

  return this;
}

void *MIL::IRProperty::AsUnknown(MIL::IRProperty *this)
{
  {
    exception = __cxa_allocate_exception(8uLL);
    v3 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v3, MEMORY[0x277D82780], MEMORY[0x277D826D8]);
  }

  return result;
}

void *MIL::IRProperty::TryAsUnknown(void *this)
{
  if (this)
  {
  }

  return this;
}

void MIL::IRProperty::ToString(MIL::IRProperty *this)
{
  if (this)
  {
    if (v2)
    {

      MIL::IRConstantProperty::ToString(v2);
    }

    if (v3)
    {

      MIL::IRUnknownProperty::ToString(v3);
    }
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Property type is not supported.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_217FCFB20(_Unwind_Exception *a1)
{
  __cxa_free_exception(v1);
  v4 = *(v2 - 40);
  *(v2 - 40) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  _Unwind_Resume(a1);
}

void sub_217FCFC54(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  *(v1 - 40) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRConstantPropertyImpl::GetScalarDataType(MIL::IRConstantPropertyImpl *this)
{
  v1 = *(this + 2);
  if (v1 >= 3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Found no property storage for this property.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return dword_218585310[v1];
}

uint64_t MIL::IRConstantPropertyImpl::GetValue<long long>(_DWORD *a1)
{
  if (!a1 || a1[2])
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "Requested datatype int64_t is unexpected here.");
    __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
  }

  return *a1;
}

uint64_t MIL::IRConstantPropertyImpl::GetValue<unsigned char>(_DWORD *a1)
{
  if (!a1 || a1[2] != 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "Requested datatype uint8_t is unexpected here.");
    __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
  }

  return *a1;
}

uint64_t MIL::IRConstantPropertyImpl::GetValue<unsigned long long>(_DWORD *a1)
{
  if (!a1 || a1[2] != 2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "Requested datatype uint64_t is unexpected here.");
    __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
  }

  return *a1;
}

void *MIL::IRConstantProperty::IRConstantProperty(void *this)
{
  *this = &unk_2829E2DC8;
  this[1] = 0;
  return this;
}

{
  *this = &unk_2829E2DC8;
  this[1] = 0;
  return this;
}

void MIL::IRConstantProperty::~IRConstantProperty(MIL::IRConstantPropertyImpl **this)
{
  *this = &unk_2829E2DC8;
  std::unique_ptr<MIL::IRConstantPropertyImpl>::~unique_ptr[abi:ne200100](this + 1);
}

{
  *this = &unk_2829E2DC8;
  std::unique_ptr<MIL::IRConstantPropertyImpl>::~unique_ptr[abi:ne200100](this + 1);
}

{
  *this = &unk_2829E2DC8;
  std::unique_ptr<MIL::IRConstantPropertyImpl>::~unique_ptr[abi:ne200100](this + 1);

  JUMPOUT(0x21CEAFEA0);
}

void *MIL::IRConstantProperty::IRConstantProperty(void *result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  *result = &unk_2829E2DC8;
  result[1] = v2;
  return result;
}

{
  v2 = *a2;
  *a2 = 0;
  *result = &unk_2829E2DC8;
  result[1] = v2;
  return result;
}

void MIL::IRConstantProperty::Make<long long>()
{
  operator new();
}

{
    ;
  }
}

void sub_217FD00DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<MIL::IRConstantPropertyImpl>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

MIL::IRConstantPropertyImpl **std::unique_ptr<MIL::IRConstantPropertyImpl>::~unique_ptr[abi:ne200100](MIL::IRConstantPropertyImpl **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    MIL::IRConstantPropertyImpl::~IRConstantPropertyImpl(v2);
    MEMORY[0x21CEAFEA0]();
  }

  return a1;
}

void MIL::IRConstantProperty::Make<unsigned char>()
{
  operator new();
}

{
    ;
  }
}

void sub_217FD0224(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<MIL::IRConstantPropertyImpl>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void MIL::IRConstantProperty::Make<unsigned long long>()
{
  operator new();
}

{
    ;
  }
}

void sub_217FD031C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<MIL::IRConstantPropertyImpl>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *MIL::IRUnknownProperty::IRUnknownProperty(void *this)
{
  *this = &unk_2829E2DE8;
  this[1] = 0;
  return this;
}

{
  *this = &unk_2829E2DE8;
  this[1] = 0;
  return this;
}

void MIL::IRUnknownProperty::~IRUnknownProperty(MIL::IRUnknownProperty *this)
{
  v2 = *(this + 1);
  *this = &unk_2829E2DE8;
  *(this + 1) = 0;
  if (v2)
  {
    MEMORY[0x21CEAFEA0](v2, 0x1000C4077774924);
  }
}

{
  v2 = *(this + 1);
  *this = &unk_2829E2DE8;
  *(this + 1) = 0;
  if (v2)
  {
    MEMORY[0x21CEAFEA0](v2, 0x1000C4077774924);
  }
}

{
  v2 = *(this + 1);
  *this = &unk_2829E2DE8;
  *(this + 1) = 0;
  if (v2)
  {
    MEMORY[0x21CEAFEA0](v2, 0x1000C4077774924);
  }

  JUMPOUT(0x21CEAFEA0);
}

void *MIL::IRUnknownProperty::IRUnknownProperty(void *result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  *result = &unk_2829E2DE8;
  result[1] = v2;
  return result;
}

{
  v2 = *a2;
  *a2 = 0;
  *result = &unk_2829E2DE8;
  result[1] = v2;
  return result;
}

uint64_t MIL::IRValueType::AsTensorType(MIL::IRValueType *this)
{
  result = (*(*this + 24))(this);
  if (!result)
  {
    exception = __cxa_allocate_exception(8uLL);
    v3 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v3, MEMORY[0x277D82780], MEMORY[0x277D826D8]);
  }

  return result;
}

uint64_t MIL::IRValueType::AsListType(MIL::IRValueType *this)
{
  result = (*(*this + 32))(this);
  if (!result)
  {
    exception = __cxa_allocate_exception(8uLL);
    v3 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v3, MEMORY[0x277D82780], MEMORY[0x277D826D8]);
  }

  return result;
}

uint64_t MIL::IRValueType::AsTupleType(MIL::IRValueType *this)
{
  result = (*(*this + 40))(this);
  if (!result)
  {
    exception = __cxa_allocate_exception(8uLL);
    v3 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v3, MEMORY[0x277D82780], MEMORY[0x277D826D8]);
  }

  return result;
}

uint64_t MIL::IRValueType::AsDictionaryType(MIL::IRValueType *this)
{
  result = (*(*this + 48))(this);
  if (!result)
  {
    exception = __cxa_allocate_exception(8uLL);
    v3 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v3, MEMORY[0x277D82780], MEMORY[0x277D826D8]);
  }

  return result;
}

void *MIL::IRValueType::TryCastAsMemoryLayoutType(void *this)
{
  if (this)
  {
  }

  return this;
}

void *MIL::IRValueType::AsMemoryLayoutType(MIL::IRValueType *this)
{
  {
    exception = __cxa_allocate_exception(8uLL);
    v3 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v3, MEMORY[0x277D82780], MEMORY[0x277D826D8]);
  }

  return result;
}

void *MIL::IRValueType::TryCastAsStateType(void *this)
{
  if (this)
  {
  }

  return this;
}

void *MIL::IRValueType::AsStateType(MIL::IRValueType *this)
{
  {
    exception = __cxa_allocate_exception(8uLL);
    v3 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v3, MEMORY[0x277D82780], MEMORY[0x277D826D8]);
  }

  return result;
}

void sub_217FD0A80(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  *(v1 - 40) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_217FD0B74(_Unwind_Exception *a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v2 + 32);
  v4 = *(v2 + 24);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  MEMORY[0x21CEAFEA0](v2, v1);
  _Unwind_Resume(a1);
}

void MIL::IRTensorValueType::MakeWithShape()
{
  v0 = 0u;
  v1 = 0u;
  v2 = 1065353216;
  MIL::IRTensorValueType::MakeWithShape();
}

{
  operator new();
}

void sub_217FD0CA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::IRTensorValueType::Make(MIL::IRConstantDimension *a1, uint64_t a2, MIL::MILContext ***a3)
{
  __p = 0;
  v17 = 0;
  v18 = 0;
  std::vector<std::string const*>::reserve(&__p, a3[1] - *a3);
  v5 = *a3;
  v6 = a3[1];
  if (*a3 != v6)
  {
    do
    {
      v7 = MIL::IRConstantDimension::Make(a1, *v5);
      v8 = v17;
      if (v17 >= v18)
      {
        v10 = (v17 - __p) >> 3;
        if ((v10 + 1) >> 61)
        {
          std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
        }

        v11 = (v18 - __p) >> 2;
        if (v11 <= v10 + 1)
        {
          v11 = v10 + 1;
        }

        if (v18 - __p >= 0x7FFFFFFFFFFFFFF8)
        {
          v12 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v12 = v11;
        }

        if (v12)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::string const*>>(&__p, v12);
        }

        v13 = (8 * v10);
        *v13 = v7;
        v9 = 8 * v10 + 8;
        v14 = v13 - (v17 - __p);
        memcpy(v14, __p, v17 - __p);
        v15 = __p;
        __p = v14;
        v17 = v9;
        v18 = 0;
        if (v15)
        {
          operator delete(v15);
        }
      }

      else
      {
        *v17 = v7;
        v9 = (v8 + 8);
      }

      v17 = v9;
      ++v5;
    }

    while (v5 != v6);
  }

  MIL::IRTensorValueType::MakeWithShape();
}

void sub_217FD0E18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_217FD0E84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::unique_ptr<MIL::IRTypedTensorValue<MIL::Bf16>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = MIL::IRTypedTensorValue<MIL::Bf16>::~IRTypedTensorValue(v2);
    MEMORY[0x21CEAFEA0](v3, 0xE1C40243CB742);
  }

  return a1;
}

void MIL::IRTensorValueType::MakeBFloat16Value(uint64_t a1, float **a2)
{
  v3 = std::vector<MIL::Bf16>::vector[abi:ne200100](&__p, a2[1] - *a2);
  v5 = *a2;
  v4 = a2[1];
  if (v5 != v4)
  {
    v6 = __p;
    do
    {
      v3 = MIL::Bf16::FromFloat(v3, *v5);
      *v6++ = v3;
      ++v5;
    }

    while (v5 != v4);
  }

  MIL::IRTensorValueType::MakeBFloat16Value();
}

void sub_217FD1014(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MIL::IRTensorValueType::MakeFloat8E5M2Value(uint64_t a1, float **a2)
{
  v3 = std::vector<MIL::Fp8E5M2>::vector[abi:ne200100](&__p, a2[1] - *a2);
  v5 = *a2;
  v4 = a2[1];
  if (v5 != v4)
  {
    v6 = __p;
    do
    {
      v3 = MIL::Fp8E5M2::FromFloat(v3, *v5);
      *v6++ = v3;
      ++v5;
    }

    while (v5 != v4);
  }

  MIL::IRTensorValueType::MakeFloat8E5M2Value();
}

void sub_217FD10D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::unique_ptr<MIL::IRTypedTensorValue<MIL::Fp8E5M2>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = MIL::IRTypedTensorValue<MIL::Fp8E5M2>::~IRTypedTensorValue(v2);
    MEMORY[0x21CEAFEA0](v3, 0xE1C40243CB742);
  }

  return a1;
}

void MIL::IRTensorValueType::MakeFloat8E4M3FNValue(uint64_t a1, float **a2)
{
  v3 = std::vector<MIL::Fp8E4M3FN>::vector[abi:ne200100](&__p, a2[1] - *a2);
  v5 = *a2;
  v4 = a2[1];
  if (v5 != v4)
  {
    v6 = __p;
    do
    {
      v3 = MIL::Fp8E4M3FN::FromFloat(v3, *v5);
      *v6++ = v3;
      ++v5;
    }

    while (v5 != v4);
  }

  MIL::IRTensorValueType::MakeFloat8E4M3FNValue();
}

void sub_217FD1268(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::unique_ptr<MIL::IRTypedTensorValue<MIL::Fp8E4M3FN>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = MIL::IRTypedTensorValue<MIL::Fp8E4M3FN>::~IRTypedTensorValue(v2);
    MEMORY[0x21CEAFEA0](v3, 0xE1C40243CB742);
  }

  return a1;
}

uint64_t *std::unique_ptr<MIL::IRTypedTensorValue<MIL::Fp16>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = MIL::IRTypedTensorValue<MIL::Fp16>::~IRTypedTensorValue(v2);
    MEMORY[0x21CEAFEA0](v3, 0xE1C40243CB742);
  }

  return a1;
}

void MIL::IRTensorValueType::MakeFloat16Value(uint64_t a1, float **a2)
{
  v3 = std::vector<MIL::Fp16>::vector[abi:ne200100](&__p, a2[1] - *a2);
  v5 = *a2;
  v4 = a2[1];
  if (v5 != v4)
  {
    v6 = __p;
    do
    {
      v3 = MIL::Fp16::FromFloat(v3, *v5);
      *v6++ = v3;
      ++v5;
    }

    while (v5 != v4);
  }

  MIL::IRTensorValueType::MakeFloat16Value();
}

void sub_217FD14DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::unique_ptr<MIL::IRTypedTensorValue<float>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = MIL::IRTypedTensorValue<float>::~IRTypedTensorValue(v2);
    MEMORY[0x21CEAFEA0](v3, 0xE1C40243CB742);
  }

  return a1;
}

uint64_t *std::unique_ptr<MIL::IRTypedTensorValue<double>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = MIL::IRTypedTensorValue<double>::~IRTypedTensorValue(v2);
    MEMORY[0x21CEAFEA0](v3, 0xE1C40243CB742);
  }

  return a1;
}

uint64_t *std::unique_ptr<MIL::IRTypedTensorValue<BOOL>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = MIL::IRTypedTensorValue<BOOL>::~IRTypedTensorValue(v2);
    MEMORY[0x21CEAFEA0](v3, 0xE1C40243CB742);
  }

  return a1;
}

void MIL::IRTensorValueType::MakeBoolValue(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  memset(__p, 0, sizeof(__p));
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<std::__bit_iterator<std::vector<BOOL>,true,0ul>,std::__bit_iterator<std::vector<BOOL>,true,0ul>>(__p, v3, 0, v3 + 8 * (v2 >> 6), v2 & 0x3F, v2);
  operator new();
}

void sub_217FD1834(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  MEMORY[0x21CEAFEA0](v11, 0xE1C40243CB742);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<MIL::IRTypedTensorValue<MIL::Int4>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = MIL::IRTypedTensorValue<MIL::Int4>::~IRTypedTensorValue(v2);
    MEMORY[0x21CEAFEA0](v3, 0xE1C40243CB742);
  }

  return a1;
}

uint64_t *std::unique_ptr<MIL::IRTypedTensorValue<MIL::UInt6>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = MIL::IRTypedTensorValue<MIL::UInt6>::~IRTypedTensorValue(v2);
    MEMORY[0x21CEAFEA0](v3, 0xE1C40243CB742);
  }

  return a1;
}

uint64_t *std::unique_ptr<MIL::IRTypedTensorValue<MIL::UInt4>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = MIL::IRTypedTensorValue<MIL::UInt4>::~IRTypedTensorValue(v2);
    MEMORY[0x21CEAFEA0](v3, 0xE1C40243CB742);
  }

  return a1;
}

uint64_t *std::unique_ptr<MIL::IRTypedTensorValue<MIL::UInt3>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = MIL::IRTypedTensorValue<MIL::UInt3>::~IRTypedTensorValue(v2);
    MEMORY[0x21CEAFEA0](v3, 0xE1C40243CB742);
  }

  return a1;
}

uint64_t *std::unique_ptr<MIL::IRTypedTensorValue<MIL::UInt2>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = MIL::IRTypedTensorValue<MIL::UInt2>::~IRTypedTensorValue(v2);
    MEMORY[0x21CEAFEA0](v3, 0xE1C40243CB742);
  }

  return a1;
}

uint64_t *std::unique_ptr<MIL::IRTypedTensorValue<MIL::UInt1>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = MIL::IRTypedTensorValue<MIL::UInt1>::~IRTypedTensorValue(v2);
    MEMORY[0x21CEAFEA0](v3, 0xE1C40243CB742);
  }

  return a1;
}

uint64_t *std::unique_ptr<MIL::IRTypedTensorValue<unsigned char>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = MIL::IRTypedTensorValue<unsigned char>::~IRTypedTensorValue(v2);
    MEMORY[0x21CEAFEA0](v3, 0xE1C40243CB742);
  }

  return a1;
}

uint64_t *std::unique_ptr<MIL::IRTypedTensorValue<unsigned short>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = MIL::IRTypedTensorValue<unsigned short>::~IRTypedTensorValue(v2);
    MEMORY[0x21CEAFEA0](v3, 0xE1C40243CB742);
  }

  return a1;
}

uint64_t *std::unique_ptr<MIL::IRTypedTensorValue<unsigned int>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = MIL::IRTypedTensorValue<unsigned int>::~IRTypedTensorValue(v2);
    MEMORY[0x21CEAFEA0](v3, 0xE1C40243CB742);
  }

  return a1;
}

uint64_t *std::unique_ptr<MIL::IRTypedTensorValue<unsigned long long>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = MIL::IRTypedTensorValue<unsigned long long>::~IRTypedTensorValue(v2);
    MEMORY[0x21CEAFEA0](v3, 0xE1C40243CB742);
  }

  return a1;
}

uint64_t *std::unique_ptr<MIL::IRTypedTensorValue<signed char>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = MIL::IRTypedTensorValue<signed char>::~IRTypedTensorValue(v2);
    MEMORY[0x21CEAFEA0](v3, 0xE1C40243CB742);
  }

  return a1;
}

uint64_t *std::unique_ptr<MIL::IRTypedTensorValue<short>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = MIL::IRTypedTensorValue<short>::~IRTypedTensorValue(v2);
    MEMORY[0x21CEAFEA0](v3, 0xE1C40243CB742);
  }

  return a1;
}

uint64_t *std::unique_ptr<MIL::IRTypedTensorValue<int>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = MIL::IRTypedTensorValue<int>::~IRTypedTensorValue(v2);
    MEMORY[0x21CEAFEA0](v3, 0xE1C40243CB742);
  }

  return a1;
}

uint64_t *std::unique_ptr<MIL::IRTypedTensorValue<long long>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = MIL::IRTypedTensorValue<long long>::~IRTypedTensorValue(v2);
    MEMORY[0x21CEAFEA0](v3, 0xE1C40243CB742);
  }

  return a1;
}

uint64_t *std::unique_ptr<MIL::IRTypedTensorValue<std::string>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = MIL::IRTypedTensorValue<std::string>::~IRTypedTensorValue(v2);
    MEMORY[0x21CEAFEA0](v3, 0xE1C40243CB742);
  }

  return a1;
}

void MIL::IRTensorValueType::MakeInt4ValueWithUnownedMemory(uint64_t a1)
{
  if ((*(*a1 + 88))(a1) == 13)
  {
    operator new();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot initialize tensor value from value with wrong type.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void MIL::IRTensorValueType::MakeUInt6ValueWithUnownedMemory(uint64_t a1)
{
  if ((*(*a1 + 88))(a1) == 23)
  {
    operator new();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot initialize tensor value from value with wrong type.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void MIL::IRTensorValueType::MakeUInt4ValueWithUnownedMemory(uint64_t a1)
{
  if ((*(*a1 + 88))(a1) == 20)
  {
    operator new();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot initialize tensor value from value with wrong type.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void MIL::IRTensorValueType::MakeUInt3ValueWithUnownedMemory(uint64_t a1)
{
  if ((*(*a1 + 88))(a1) == 22)
  {
    operator new();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot initialize tensor value from value with wrong type.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void MIL::IRTensorValueType::MakeUInt2ValueWithUnownedMemory(uint64_t a1)
{
  if ((*(*a1 + 88))(a1) == 19)
  {
    operator new();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot initialize tensor value from value with wrong type.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void MIL::IRTensorValueType::MakeUInt1ValueWithUnownedMemory(uint64_t a1)
{
  if ((*(*a1 + 88))(a1) == 21)
  {
    operator new();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot initialize tensor value from value with wrong type.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void MIL::IRTensorValueType::MakeValueFromFileProperties(std::string::size_type a1, const void *a2, void *a3, char a4)
{
  v100 = a4;
  std::string::basic_string[abi:ne200100]<0>(&v103, "type");
  v7 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>(a3, &v103.__r_.__value_.__l.__data_);
  if (SHIBYTE(v103.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v103.__r_.__value_.__l.__data_);
  }

  if (!v7)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "File type property missing");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  MIL::IRValue::GetScalar<std::string>(v7[5], &v99);
  if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
  {
    if (v99.__r_.__value_.__l.__size_ == 14 && *v99.__r_.__value_.__l.__data_ == 0x4C4259434147454CLL && *(v99.__r_.__value_.__r.__words[0] + 6) == 0x454C4946424F4C42)
    {
LABEL_12:
      switch((*(*a1 + 88))(a1))
      {
        case 3u:
          MIL::IRDataTypeToString(3, &v103);
          v83 = __cxa_allocate_exception(0x10uLL);
          if ((v103.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v103.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v103.__r_.__value_.__l.__size_;
          }

          p_p = &__p;
          std::string::basic_string[abi:ne200100](&__p, size + 58);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          if (size)
          {
            if ((v103.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v86 = &v103;
            }

            else
            {
              v86 = v103.__r_.__value_.__r.__words[0];
            }

            memmove(p_p, v86, size);
          }

          strcpy(p_p + size, " is not a supported data type for legacy blob file values.");
          std::runtime_error::runtime_error(v83, &__p);
          __cxa_throw(v83, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        case 4u:
          std::string::basic_string[abi:ne200100]<0>(&__p, "path");
          v9 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>(a3, &__p.__r_.__value_.__l.__data_);
          if (v9)
          {
            MIL::IRValue::GetScalar<std::string>(v9[5], &v103);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            if (v10)
            {
              MIL::MILContextImpl::GetOrCreateLegacyStorageReader(v10, &v103.__r_.__value_.__l.__data_, &v101);
              operator new();
            }

            __cxa_bad_cast();
          }

          std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
        case 5u:
          std::string::basic_string[abi:ne200100]<0>(&__p, "path");
          v14 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>(a3, &__p.__r_.__value_.__l.__data_);
          if (v14)
          {
            MIL::IRValue::GetScalar<std::string>(v14[5], &v103);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            if (v15)
            {
              MIL::MILContextImpl::GetOrCreateLegacyStorageReader(v15, &v103.__r_.__value_.__l.__data_, &v101);
              operator new();
            }

            __cxa_bad_cast();
          }

          std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
        case 6u:
          MIL::IRDataTypeToString(6, &v103);
          v95 = __cxa_allocate_exception(0x10uLL);
          if ((v103.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v96 = HIBYTE(v103.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v96 = v103.__r_.__value_.__l.__size_;
          }

          v97 = &__p;
          std::string::basic_string[abi:ne200100](&__p, v96 + 58);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v97 = __p.__r_.__value_.__r.__words[0];
          }

          if (v96)
          {
            if ((v103.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v98 = &v103;
            }

            else
            {
              v98 = v103.__r_.__value_.__r.__words[0];
            }

            memmove(v97, v98, v96);
          }

          strcpy(v97 + v96, " is not a supported data type for legacy blob file values.");
          std::runtime_error::runtime_error(v95, &__p);
          __cxa_throw(v95, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        case 7u:
          MIL::IRDataTypeToString(7, &v103);
          v91 = __cxa_allocate_exception(0x10uLL);
          if ((v103.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v92 = HIBYTE(v103.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v92 = v103.__r_.__value_.__l.__size_;
          }

          v93 = &__p;
          std::string::basic_string[abi:ne200100](&__p, v92 + 58);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v93 = __p.__r_.__value_.__r.__words[0];
          }

          if (v92)
          {
            if ((v103.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v94 = &v103;
            }

            else
            {
              v94 = v103.__r_.__value_.__r.__words[0];
            }

            memmove(v93, v94, v92);
          }

          strcpy(v93 + v92, " is not a supported data type for legacy blob file values.");
          std::runtime_error::runtime_error(v91, &__p);
          __cxa_throw(v91, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        case 8u:
          __break(1u);
          break;
        case 9u:
          MIL::IRDataTypeToString(9, &v103);
          v79 = __cxa_allocate_exception(0x10uLL);
          if ((v103.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v80 = HIBYTE(v103.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v80 = v103.__r_.__value_.__l.__size_;
          }

          v81 = &__p;
          std::string::basic_string[abi:ne200100](&__p, v80 + 58);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v81 = __p.__r_.__value_.__r.__words[0];
          }

          if (v80)
          {
            if ((v103.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v82 = &v103;
            }

            else
            {
              v82 = v103.__r_.__value_.__r.__words[0];
            }

            memmove(v81, v82, v80);
          }

          strcpy(v81 + v80, " is not a supported data type for legacy blob file values.");
          std::runtime_error::runtime_error(v79, &__p);
          __cxa_throw(v79, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        case 0xAu:
          MIL::IRDataTypeToString(10, &v103);
          v75 = __cxa_allocate_exception(0x10uLL);
          if ((v103.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v76 = HIBYTE(v103.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v76 = v103.__r_.__value_.__l.__size_;
          }

          v77 = &__p;
          std::string::basic_string[abi:ne200100](&__p, v76 + 58);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v77 = __p.__r_.__value_.__r.__words[0];
          }

          if (v76)
          {
            if ((v103.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v78 = &v103;
            }

            else
            {
              v78 = v103.__r_.__value_.__r.__words[0];
            }

            memmove(v77, v78, v76);
          }

          strcpy(v77 + v76, " is not a supported data type for legacy blob file values.");
          std::runtime_error::runtime_error(v75, &__p);
          __cxa_throw(v75, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        case 0xBu:
          MIL::IRDataTypeToString(11, &v103);
          v71 = __cxa_allocate_exception(0x10uLL);
          if ((v103.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v72 = HIBYTE(v103.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v72 = v103.__r_.__value_.__l.__size_;
          }

          v73 = &__p;
          std::string::basic_string[abi:ne200100](&__p, v72 + 58);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v73 = __p.__r_.__value_.__r.__words[0];
          }

          if (v72)
          {
            if ((v103.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v74 = &v103;
            }

            else
            {
              v74 = v103.__r_.__value_.__r.__words[0];
            }

            memmove(v73, v74, v72);
          }

          strcpy(v73 + v72, " is not a supported data type for legacy blob file values.");
          std::runtime_error::runtime_error(v71, &__p);
          __cxa_throw(v71, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        case 0xCu:
          MIL::IRDataTypeToString(12, &v103);
          v67 = __cxa_allocate_exception(0x10uLL);
          if ((v103.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v68 = HIBYTE(v103.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v68 = v103.__r_.__value_.__l.__size_;
          }

          v69 = &__p;
          std::string::basic_string[abi:ne200100](&__p, v68 + 58);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v69 = __p.__r_.__value_.__r.__words[0];
          }

          if (v68)
          {
            if ((v103.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v70 = &v103;
            }

            else
            {
              v70 = v103.__r_.__value_.__r.__words[0];
            }

            memmove(v69, v70, v68);
          }

          strcpy(v69 + v68, " is not a supported data type for legacy blob file values.");
          std::runtime_error::runtime_error(v67, &__p);
          __cxa_throw(v67, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        case 0xDu:
          MIL::IRDataTypeToString(13, &v103);
          v63 = __cxa_allocate_exception(0x10uLL);
          if ((v103.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v64 = HIBYTE(v103.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v64 = v103.__r_.__value_.__l.__size_;
          }

          v65 = &__p;
          std::string::basic_string[abi:ne200100](&__p, v64 + 58);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v65 = __p.__r_.__value_.__r.__words[0];
          }

          if (v64)
          {
            if ((v103.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v66 = &v103;
            }

            else
            {
              v66 = v103.__r_.__value_.__r.__words[0];
            }

            memmove(v65, v66, v64);
          }

          strcpy(v65 + v64, " is not a supported data type for legacy blob file values.");
          std::runtime_error::runtime_error(v63, &__p);
          __cxa_throw(v63, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        case 0xEu:
          MIL::IRDataTypeToString(14, &v103);
          v59 = __cxa_allocate_exception(0x10uLL);
          if ((v103.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v60 = HIBYTE(v103.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v60 = v103.__r_.__value_.__l.__size_;
          }

          v61 = &__p;
          std::string::basic_string[abi:ne200100](&__p, v60 + 58);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v61 = __p.__r_.__value_.__r.__words[0];
          }

          if (v60)
          {
            if ((v103.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v62 = &v103;
            }

            else
            {
              v62 = v103.__r_.__value_.__r.__words[0];
            }

            memmove(v61, v62, v60);
          }

          strcpy(v61 + v60, " is not a supported data type for legacy blob file values.");
          std::runtime_error::runtime_error(v59, &__p);
          __cxa_throw(v59, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        case 0xFu:
          MIL::IRDataTypeToString(15, &v103);
          v55 = __cxa_allocate_exception(0x10uLL);
          if ((v103.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v56 = HIBYTE(v103.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v56 = v103.__r_.__value_.__l.__size_;
          }

          v57 = &__p;
          std::string::basic_string[abi:ne200100](&__p, v56 + 58);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v57 = __p.__r_.__value_.__r.__words[0];
          }

          if (v56)
          {
            if ((v103.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v58 = &v103;
            }

            else
            {
              v58 = v103.__r_.__value_.__r.__words[0];
            }

            memmove(v57, v58, v56);
          }

          strcpy(v57 + v56, " is not a supported data type for legacy blob file values.");
          std::runtime_error::runtime_error(v55, &__p);
          __cxa_throw(v55, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        case 0x10u:
          MIL::IRDataTypeToString(16, &v103);
          v51 = __cxa_allocate_exception(0x10uLL);
          if ((v103.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v52 = HIBYTE(v103.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v52 = v103.__r_.__value_.__l.__size_;
          }

          v53 = &__p;
          std::string::basic_string[abi:ne200100](&__p, v52 + 58);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v53 = __p.__r_.__value_.__r.__words[0];
          }

          if (v52)
          {
            if ((v103.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v54 = &v103;
            }

            else
            {
              v54 = v103.__r_.__value_.__r.__words[0];
            }

            memmove(v53, v54, v52);
          }

          strcpy(v53 + v52, " is not a supported data type for legacy blob file values.");
          std::runtime_error::runtime_error(v51, &__p);
          __cxa_throw(v51, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        case 0x11u:
          MIL::IRDataTypeToString(17, &v103);
          v47 = __cxa_allocate_exception(0x10uLL);
          if ((v103.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v48 = HIBYTE(v103.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v48 = v103.__r_.__value_.__l.__size_;
          }

          v49 = &__p;
          std::string::basic_string[abi:ne200100](&__p, v48 + 58);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v49 = __p.__r_.__value_.__r.__words[0];
          }

          if (v48)
          {
            if ((v103.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v50 = &v103;
            }

            else
            {
              v50 = v103.__r_.__value_.__r.__words[0];
            }

            memmove(v49, v50, v48);
          }

          strcpy(v49 + v48, " is not a supported data type for legacy blob file values.");
          std::runtime_error::runtime_error(v47, &__p);
          __cxa_throw(v47, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        case 0x12u:
          v46 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v46, "cannot dispatch on type");
          __cxa_throw(v46, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        case 0x13u:
          MIL::IRDataTypeToString(19, &v103);
          v42 = __cxa_allocate_exception(0x10uLL);
          if ((v103.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v43 = HIBYTE(v103.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v43 = v103.__r_.__value_.__l.__size_;
          }

          v44 = &__p;
          std::string::basic_string[abi:ne200100](&__p, v43 + 58);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v44 = __p.__r_.__value_.__r.__words[0];
          }

          if (v43)
          {
            if ((v103.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v45 = &v103;
            }

            else
            {
              v45 = v103.__r_.__value_.__r.__words[0];
            }

            memmove(v44, v45, v43);
          }

          strcpy(v44 + v43, " is not a supported data type for legacy blob file values.");
          std::runtime_error::runtime_error(v42, &__p);
          __cxa_throw(v42, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        case 0x14u:
          MIL::IRDataTypeToString(20, &v103);
          v38 = __cxa_allocate_exception(0x10uLL);
          if ((v103.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v39 = HIBYTE(v103.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v39 = v103.__r_.__value_.__l.__size_;
          }

          v40 = &__p;
          std::string::basic_string[abi:ne200100](&__p, v39 + 58);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v40 = __p.__r_.__value_.__r.__words[0];
          }

          if (v39)
          {
            if ((v103.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v41 = &v103;
            }

            else
            {
              v41 = v103.__r_.__value_.__r.__words[0];
            }

            memmove(v40, v41, v39);
          }

          strcpy(v40 + v39, " is not a supported data type for legacy blob file values.");
          std::runtime_error::runtime_error(v38, &__p);
          __cxa_throw(v38, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        case 0x15u:
          MIL::IRDataTypeToString(21, &v103);
          v34 = __cxa_allocate_exception(0x10uLL);
          if ((v103.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v35 = HIBYTE(v103.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v35 = v103.__r_.__value_.__l.__size_;
          }

          v36 = &__p;
          std::string::basic_string[abi:ne200100](&__p, v35 + 58);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v36 = __p.__r_.__value_.__r.__words[0];
          }

          if (v35)
          {
            if ((v103.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v37 = &v103;
            }

            else
            {
              v37 = v103.__r_.__value_.__r.__words[0];
            }

            memmove(v36, v37, v35);
          }

          strcpy(v36 + v35, " is not a supported data type for legacy blob file values.");
          std::runtime_error::runtime_error(v34, &__p);
          __cxa_throw(v34, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        case 0x16u:
          MIL::IRDataTypeToString(22, &v103);
          v30 = __cxa_allocate_exception(0x10uLL);
          if ((v103.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v31 = HIBYTE(v103.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v31 = v103.__r_.__value_.__l.__size_;
          }

          v32 = &__p;
          std::string::basic_string[abi:ne200100](&__p, v31 + 58);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v32 = __p.__r_.__value_.__r.__words[0];
          }

          if (v31)
          {
            if ((v103.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v33 = &v103;
            }

            else
            {
              v33 = v103.__r_.__value_.__r.__words[0];
            }

            memmove(v32, v33, v31);
          }

          strcpy(v32 + v31, " is not a supported data type for legacy blob file values.");
          std::runtime_error::runtime_error(v30, &__p);
          __cxa_throw(v30, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        case 0x17u:
          MIL::IRDataTypeToString(23, &v103);
          v26 = __cxa_allocate_exception(0x10uLL);
          if ((v103.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v27 = HIBYTE(v103.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v27 = v103.__r_.__value_.__l.__size_;
          }

          v28 = &__p;
          std::string::basic_string[abi:ne200100](&__p, v27 + 58);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v28 = __p.__r_.__value_.__r.__words[0];
          }

          if (v27)
          {
            if ((v103.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v29 = &v103;
            }

            else
            {
              v29 = v103.__r_.__value_.__r.__words[0];
            }

            memmove(v28, v29, v27);
          }

          strcpy(v28 + v27, " is not a supported data type for legacy blob file values.");
          std::runtime_error::runtime_error(v26, &__p);
          __cxa_throw(v26, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        case 0x18u:
          MIL::IRDataTypeToString(24, &v103);
          v22 = __cxa_allocate_exception(0x10uLL);
          if ((v103.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v23 = HIBYTE(v103.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v23 = v103.__r_.__value_.__l.__size_;
          }

          v24 = &__p;
          std::string::basic_string[abi:ne200100](&__p, v23 + 58);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v24 = __p.__r_.__value_.__r.__words[0];
          }

          if (v23)
          {
            if ((v103.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v25 = &v103;
            }

            else
            {
              v25 = v103.__r_.__value_.__r.__words[0];
            }

            memmove(v24, v25, v23);
          }

          strcpy(v24 + v23, " is not a supported data type for legacy blob file values.");
          std::runtime_error::runtime_error(v22, &__p);
          __cxa_throw(v22, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        case 0x19u:
          MIL::IRDataTypeToString(25, &v103);
          v18 = __cxa_allocate_exception(0x10uLL);
          if ((v103.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v19 = HIBYTE(v103.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v19 = v103.__r_.__value_.__l.__size_;
          }

          v20 = &__p;
          std::string::basic_string[abi:ne200100](&__p, v19 + 58);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v20 = __p.__r_.__value_.__r.__words[0];
          }

          if (v19)
          {
            if ((v103.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v21 = &v103;
            }

            else
            {
              v21 = v103.__r_.__value_.__r.__words[0];
            }

            memmove(v20, v21, v19);
          }

          strcpy(v20 + v19, " is not a supported data type for legacy blob file values.");
          std::runtime_error::runtime_error(v18, &__p);
          __cxa_throw(v18, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        default:
          MIL::IRDataTypeToString(2, &v103);
          v87 = __cxa_allocate_exception(0x10uLL);
          if ((v103.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v88 = HIBYTE(v103.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v88 = v103.__r_.__value_.__l.__size_;
          }

          v89 = &__p;
          std::string::basic_string[abi:ne200100](&__p, v88 + 58);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v89 = __p.__r_.__value_.__r.__words[0];
          }

          if (v88)
          {
            if ((v103.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v90 = &v103;
            }

            else
            {
              v90 = v103.__r_.__value_.__r.__words[0];
            }

            memmove(v89, v90, v88);
          }

          strcpy(v89 + v88, " is not a supported data type for legacy blob file values.");
          std::runtime_error::runtime_error(v87, &__p);
          __cxa_throw(v87, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      return;
    }

    if (v99.__r_.__value_.__l.__size_ != 8)
    {
      goto LABEL_36;
    }

    v12 = v99.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (HIBYTE(v99.__r_.__value_.__r.__words[2]) != 8)
    {
      if (HIBYTE(v99.__r_.__value_.__r.__words[2]) != 14 || (v99.__r_.__value_.__r.__words[0] == 0x4C4259434147454CLL ? (v8 = *(v99.__r_.__value_.__r.__words + 6) == 0x454C4946424F4C42) : (v8 = 0), !v8))
      {
LABEL_36:
        v16 = __cxa_allocate_exception(0x10uLL);
        std::operator+<char>();
        std::runtime_error::runtime_error(v16, &v103);
        __cxa_throw(v16, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      goto LABEL_12;
    }

    v12 = &v99;
  }

  if (v12->__r_.__value_.__r.__words[0] != 0x454C4946424F4C42)
  {
    goto LABEL_36;
  }

  v13 = (*(*a1 + 88))(a1);
  v103.__r_.__value_.__r.__words[0] = a1;
  if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v99.__r_.__value_.__l.__data_);
  }
}

void sub_217FD4BFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
    if ((v26 & 1) == 0)
    {
LABEL_6:
      if (*(v27 - 49) < 0)
      {
        operator delete(*(v27 - 72));
      }

      if (a15 < 0)
      {
        operator delete(a10);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v26)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v25);
  goto LABEL_6;
}

uint64_t MIL::Util::DispatchToCppType<std::unique_ptr<MIL::IRTensorValue const>,anonymous namespace::MakeValueHelper_Blob,MIL::IRTensorValueType const*,MIL::MILContext &,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>,BOOL &>(uint64_t result, uint64_t a2, const void *a3, void *a4)
{
  switch(result)
  {
    case 3:
      MIL::IRDataTypeToString(3, &v63);
      exception = __cxa_allocate_exception(0x10uLL);
      if ((v63.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v63.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v63.__r_.__value_.__l.__size_;
      }

      p_p = &__p;
      std::string::basic_string[abi:ne200100](&__p, size + 51);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      if (size)
      {
        if ((v63.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v47 = &v63;
        }

        else
        {
          v47 = v63.__r_.__value_.__r.__words[0];
        }

        memmove(p_p, v47, size);
      }

      strcpy(p_p + size, " is not a supported data type for blob file values.");
      std::runtime_error::runtime_error(exception, &__p);
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    case 4:
      std::string::basic_string[abi:ne200100]<0>(&__p, "path");
      v6 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>(a4, &__p.__r_.__value_.__l.__data_);
      if (v6)
      {
        MIL::IRValue::GetScalar<std::string>(v6[5], &v63);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v7)
        {
          MIL::MILContextImpl::GetOrCreateStorageReader(v7, &v63.__r_.__value_.__l.__data_, &v61);
          operator new();
        }

        __cxa_bad_cast();
      }

      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    case 5:
      std::string::basic_string[abi:ne200100]<0>(&__p, "path");
      v16 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>(a4, &__p.__r_.__value_.__l.__data_);
      if (v16)
      {
        MIL::IRValue::GetScalar<std::string>(v16[5], &v63);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v17)
        {
          MIL::MILContextImpl::GetOrCreateStorageReader(v17, &v63.__r_.__value_.__l.__data_, &v61);
          operator new();
        }

        __cxa_bad_cast();
      }

      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    case 6:
      MIL::IRDataTypeToString(6, &v63);
      v48 = __cxa_allocate_exception(0x10uLL);
      if ((v63.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v49 = HIBYTE(v63.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v49 = v63.__r_.__value_.__l.__size_;
      }

      v50 = &__p;
      std::string::basic_string[abi:ne200100](&__p, v49 + 51);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v50 = __p.__r_.__value_.__r.__words[0];
      }

      if (v49)
      {
        if ((v63.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v51 = &v63;
        }

        else
        {
          v51 = v63.__r_.__value_.__r.__words[0];
        }

        memmove(v50, v51, v49);
      }

      strcpy(v50 + v49, " is not a supported data type for blob file values.");
      std::runtime_error::runtime_error(v48, &__p);
      __cxa_throw(v48, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    case 7:
      std::string::basic_string[abi:ne200100]<0>(&__p, "path");
      v12 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>(a4, &__p.__r_.__value_.__l.__data_);
      if (v12)
      {
        MIL::IRValue::GetScalar<std::string>(v12[5], &v63);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v13)
        {
          MIL::MILContextImpl::GetOrCreateStorageReader(v13, &v63.__r_.__value_.__l.__data_, &v61);
          operator new();
        }

        __cxa_bad_cast();
      }

      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    case 8:
      __break(1u);
      return result;
    case 9:
      std::string::basic_string[abi:ne200100]<0>(&__p, "path");
      v26 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>(a4, &__p.__r_.__value_.__l.__data_);
      if (v26)
      {
        MIL::IRValue::GetScalar<std::string>(v26[5], &v63);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v27)
        {
          MIL::MILContextImpl::GetOrCreateStorageReader(v27, &v63.__r_.__value_.__l.__data_, &v61);
          operator new();
        }

        __cxa_bad_cast();
      }

      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    case 10:
      std::string::basic_string[abi:ne200100]<0>(&__p, "path");
      v20 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>(a4, &__p.__r_.__value_.__l.__data_);
      if (v20)
      {
        MIL::IRValue::GetScalar<std::string>(v20[5], &v63);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v21)
        {
          MIL::MILContextImpl::GetOrCreateStorageReader(v21, &v63.__r_.__value_.__l.__data_, &v61);
          operator new();
        }

        __cxa_bad_cast();
      }

      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    case 11:
      std::string::basic_string[abi:ne200100]<0>(&__p, "path");
      v14 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>(a4, &__p.__r_.__value_.__l.__data_);
      if (v14)
      {
        MIL::IRValue::GetScalar<std::string>(v14[5], &v63);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v15)
        {
          MIL::MILContextImpl::GetOrCreateStorageReader(v15, &v63.__r_.__value_.__l.__data_, &v61);
          operator new();
        }

        __cxa_bad_cast();
      }

      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    case 12:
      MIL::IRDataTypeToString(12, &v63);
      v52 = __cxa_allocate_exception(0x10uLL);
      if ((v63.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v53 = HIBYTE(v63.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v53 = v63.__r_.__value_.__l.__size_;
      }

      v54 = &__p;
      std::string::basic_string[abi:ne200100](&__p, v53 + 51);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v54 = __p.__r_.__value_.__r.__words[0];
      }

      if (v53)
      {
        if ((v63.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v55 = &v63;
        }

        else
        {
          v55 = v63.__r_.__value_.__r.__words[0];
        }

        memmove(v54, v55, v53);
      }

      strcpy(v54 + v53, " is not a supported data type for blob file values.");
      std::runtime_error::runtime_error(v52, &__p);
      __cxa_throw(v52, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    case 13:
      std::string::basic_string[abi:ne200100]<0>(&__p, "path");
      v34 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>(a4, &__p.__r_.__value_.__l.__data_);
      if (v34)
      {
        MIL::IRValue::GetScalar<std::string>(v34[5], &v63);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v35)
        {
          MIL::MILContextImpl::GetOrCreateStorageReader(v35, &v63.__r_.__value_.__l.__data_, &v61);
          operator new();
        }

        __cxa_bad_cast();
      }

      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    case 14:
      std::string::basic_string[abi:ne200100]<0>(&__p, "path");
      v30 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>(a4, &__p.__r_.__value_.__l.__data_);
      if (v30)
      {
        MIL::IRValue::GetScalar<std::string>(v30[5], &v63);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v31)
        {
          MIL::MILContextImpl::GetOrCreateStorageReader(v31, &v63.__r_.__value_.__l.__data_, &v61);
          operator new();
        }

        __cxa_bad_cast();
      }

      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    case 15:
      std::string::basic_string[abi:ne200100]<0>(&__p, "path");
      v36 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>(a4, &__p.__r_.__value_.__l.__data_);
      if (v36)
      {
        MIL::IRValue::GetScalar<std::string>(v36[5], &v63);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v37)
        {
          MIL::MILContextImpl::GetOrCreateStorageReader(v37, &v63.__r_.__value_.__l.__data_, &v61);
          operator new();
        }

        __cxa_bad_cast();
      }

      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    case 16:
      std::string::basic_string[abi:ne200100]<0>(&__p, "path");
      v24 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>(a4, &__p.__r_.__value_.__l.__data_);
      if (v24)
      {
        MIL::IRValue::GetScalar<std::string>(v24[5], &v63);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v25)
        {
          MIL::MILContextImpl::GetOrCreateStorageReader(v25, &v63.__r_.__value_.__l.__data_, &v61);
          operator new();
        }

        __cxa_bad_cast();
      }

      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    case 17:
      MIL::IRDataTypeToString(17, &v63);
      v57 = __cxa_allocate_exception(0x10uLL);
      if ((v63.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v58 = HIBYTE(v63.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v58 = v63.__r_.__value_.__l.__size_;
      }

      v59 = &__p;
      std::string::basic_string[abi:ne200100](&__p, v58 + 51);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v59 = __p.__r_.__value_.__r.__words[0];
      }

      if (v58)
      {
        if ((v63.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v60 = &v63;
        }

        else
        {
          v60 = v63.__r_.__value_.__r.__words[0];
        }

        memmove(v59, v60, v58);
      }

      strcpy(v59 + v58, " is not a supported data type for blob file values.");
      std::runtime_error::runtime_error(v57, &__p);
      __cxa_throw(v57, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    case 18:
      v56 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v56, "cannot dispatch on type");
      __cxa_throw(v56, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    case 19:
      std::string::basic_string[abi:ne200100]<0>(&__p, "path");
      v18 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>(a4, &__p.__r_.__value_.__l.__data_);
      if (v18)
      {
        MIL::IRValue::GetScalar<std::string>(v18[5], &v63);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v19)
        {
          MIL::MILContextImpl::GetOrCreateStorageReader(v19, &v63.__r_.__value_.__l.__data_, &v61);
          operator new();
        }

        __cxa_bad_cast();
      }

      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    case 20:
      std::string::basic_string[abi:ne200100]<0>(&__p, "path");
      v10 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>(a4, &__p.__r_.__value_.__l.__data_);
      if (v10)
      {
        MIL::IRValue::GetScalar<std::string>(v10[5], &v63);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v11)
        {
          MIL::MILContextImpl::GetOrCreateStorageReader(v11, &v63.__r_.__value_.__l.__data_, &v61);
          operator new();
        }

        __cxa_bad_cast();
      }

      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    case 21:
      std::string::basic_string[abi:ne200100]<0>(&__p, "path");
      v38 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>(a4, &__p.__r_.__value_.__l.__data_);
      if (v38)
      {
        MIL::IRValue::GetScalar<std::string>(v38[5], &v63);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v39)
        {
          MIL::MILContextImpl::GetOrCreateStorageReader(v39, &v63.__r_.__value_.__l.__data_, &v61);
          operator new();
        }

        __cxa_bad_cast();
      }

      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    case 22:
      std::string::basic_string[abi:ne200100]<0>(&__p, "path");
      v8 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>(a4, &__p.__r_.__value_.__l.__data_);
      if (v8)
      {
        MIL::IRValue::GetScalar<std::string>(v8[5], &v63);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v9)
        {
          MIL::MILContextImpl::GetOrCreateStorageReader(v9, &v63.__r_.__value_.__l.__data_, &v61);
          operator new();
        }

        __cxa_bad_cast();
      }

      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    case 23:
      std::string::basic_string[abi:ne200100]<0>(&__p, "path");
      v22 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>(a4, &__p.__r_.__value_.__l.__data_);
      if (v22)
      {
        MIL::IRValue::GetScalar<std::string>(v22[5], &v63);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v23)
        {
          MIL::MILContextImpl::GetOrCreateStorageReader(v23, &v63.__r_.__value_.__l.__data_, &v61);
          operator new();
        }

        __cxa_bad_cast();
      }

      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    case 24:
      std::string::basic_string[abi:ne200100]<0>(&__p, "path");
      v28 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>(a4, &__p.__r_.__value_.__l.__data_);
      if (v28)
      {
        MIL::IRValue::GetScalar<std::string>(v28[5], &v63);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v29)
        {
          MIL::MILContextImpl::GetOrCreateStorageReader(v29, &v63.__r_.__value_.__l.__data_, &v61);
          operator new();
        }

        __cxa_bad_cast();
      }

      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    case 25:
      std::string::basic_string[abi:ne200100]<0>(&__p, "path");
      v32 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>(a4, &__p.__r_.__value_.__l.__data_);
      if (v32)
      {
        MIL::IRValue::GetScalar<std::string>(v32[5], &v63);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v33)
        {
          MIL::MILContextImpl::GetOrCreateStorageReader(v33, &v63.__r_.__value_.__l.__data_, &v61);
          operator new();
        }

        __cxa_bad_cast();
      }

      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    default:
      MIL::IRDataTypeToString(2, &v63);
      v40 = __cxa_allocate_exception(0x10uLL);
      if ((v63.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v41 = HIBYTE(v63.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v41 = v63.__r_.__value_.__l.__size_;
      }

      v42 = &__p;
      std::string::basic_string[abi:ne200100](&__p, v41 + 51);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v42 = __p.__r_.__value_.__r.__words[0];
      }

      if (v41)
      {
        if ((v63.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v43 = &v63;
        }

        else
        {
          v43 = v63.__r_.__value_.__r.__words[0];
        }

        memmove(v42, v43, v41);
      }

      strcpy(v42 + v41, " is not a supported data type for blob file values.");
      std::runtime_error::runtime_error(v40, &__p);
      __cxa_throw(v40, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }
}

void sub_217FD6BA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a18 < 0)
  {
    operator delete(__p);
    if ((v25 & 1) == 0)
    {
LABEL_6:
      if (a24 < 0)
      {
        operator delete(a19);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v25)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v24);
  goto LABEL_6;
}

void MIL::IRTensorValueType::MakeValueFromLegacyBlobFile()
{
  v0 = 0u;
  v1 = 0u;
  v2 = 1065353216;
  MIL::IRTensorValueType::MakeScalar();
}

void MIL::IRTensorValueType::MakeStringValue(_anonymous_namespace_ *a1, const MIL::IRTensorValueType *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  *__p = *a2;
  v5 = *(a2 + 2);
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  memset(v3, 0, sizeof(v3));
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v3, __p, &v6, 1uLL);
  MIL::IRTensorValueType::MakeStringValue();
}

void sub_217FD76A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a12);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::shared_ptr<MIL::IRValue const>::operator=[abi:ne200100]<MIL::IRTensorValue const,std::default_delete<MIL::IRTensorValue const>,0>(void *a1, uint64_t *a2)
{
  std::shared_ptr<MIL::IRValue const>::shared_ptr[abi:ne200100]<MIL::IRTensorValue const,std::default_delete<MIL::IRTensorValue const>,0>(&v6, a2);
  v3 = a1[1];
  v4 = v6;
  *&v6 = *a1;
  *(&v6 + 1) = v3;
  *a1 = v4;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return a1;
}

void MIL::IRTensorValueType::MakeUInt64Value(MIL::IRTensorValueType *this, const MIL::IRTensorValueType *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v4 = a2;
  memset(__p, 0, sizeof(__p));
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(__p, &v4, &v5, 1uLL);
  MIL::IRTensorValueType::MakeUInt64Value();
}

void sub_217FD77CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MIL::IRTensorValueType::MakeValueFromBlobFile()
{
  MIL::IRTensorValueType::MakeValueFromBlobFile();
}

{
  v0 = 0u;
  v1 = 0u;
  v2 = 1065353216;
  MIL::IRTensorValueType::MakeScalar();
}

uint64_t MIL::IRTensorValueType::MakeValueFromConstExprEvaluation(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = 0;
  v7 = v3;
  std::string::basic_string[abi:ne200100]<0>(__p, "");
  MIL::IRTensorValueType::MakeValueFromConstExprEvaluation(a1, &v7, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  result = v7;
  v7 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_217FD7C84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a15)
  {
    (*(*a15 + 8))(a15);
  }

  _Unwind_Resume(exception_object);
}

void MIL::IRTensorValueType::MakeValueFromConstExprEvaluation(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  std::shared_ptr<MIL::AbstractConstExpr const>::shared_ptr[abi:ne200100]<MIL::AbstractConstExpr const,std::default_delete<MIL::AbstractConstExpr const>,0>(&v7, a2);
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a3, *(a3 + 8));
  }

  else
  {
    __p = *a3;
  }

  v9 = 0;
  v5 = (*(*a1 + 88))(a1);
  v8 = a1;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (*(&v7 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v7 + 1));
  }
}

void sub_217FD7DA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRTensorValueType::MakeValueFromConstExprEvaluation(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v10 = a3;
  v7 = (*(*a1 + 88))(a1);
  v9 = a1;
}

uint64_t MIL::Util::DispatchToCppType<std::unique_ptr<MIL::IRTensorValue const>,anonymous namespace::MakeValueHelper_ConstExpr,MIL::IRTensorValueType const*,std::shared_ptr<MIL::AbstractConstExpr const>,unsigned long &,std::string &>(uint64_t result, uint64_t *a2, __int128 *a3, uint64_t *a4, uint64_t a5)
{
  switch(result)
  {
    case 3:
      v35 = *a2;
      v51 = *a3;
      *a3 = 0;
      *(a3 + 1) = 0;
      v36 = *a4;
      if (*(a5 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *a5, *(a5 + 8));
      }

      else
      {
        __p = *a5;
      }

      v52 = v36;
      v53 = v35;
      std::make_unique[abi:ne200100]<MIL::IRValueConstExprOutputData<std::string>,MIL::IRTensorValueType const*&,std::shared_ptr<MIL::AbstractConstExpr const>,unsigned long &,std::string&,0>();
    case 4:
      v31 = *a2;
      v51 = *a3;
      *a3 = 0;
      *(a3 + 1) = 0;
      v32 = *a4;
      if (*(a5 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *a5, *(a5 + 8));
      }

      else
      {
        __p = *a5;
      }

      v52 = v32;
      v53 = v31;
      std::make_unique[abi:ne200100]<MIL::IRValueConstExprOutputData<MIL::Fp16>,MIL::IRTensorValueType const*&,std::shared_ptr<MIL::AbstractConstExpr const>,unsigned long &,std::string &,0>();
    case 5:
      v33 = *a2;
      v51 = *a3;
      *a3 = 0;
      *(a3 + 1) = 0;
      v34 = *a4;
      if (*(a5 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *a5, *(a5 + 8));
      }

      else
      {
        __p = *a5;
      }

      v52 = v34;
      v53 = v33;
      std::make_unique[abi:ne200100]<MIL::IRValueConstExprOutputData<float>,MIL::IRTensorValueType const*&,std::shared_ptr<MIL::AbstractConstExpr const>,unsigned long &,std::string &,0>();
    case 6:
      v21 = *a2;
      v51 = *a3;
      *a3 = 0;
      *(a3 + 1) = 0;
      v22 = *a4;
      if (*(a5 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *a5, *(a5 + 8));
      }

      else
      {
        __p = *a5;
      }

      v52 = v22;
      v53 = v21;
      std::make_unique[abi:ne200100]<MIL::IRValueConstExprOutputData<double>,MIL::IRTensorValueType const*&,std::shared_ptr<MIL::AbstractConstExpr const>,unsigned long &,std::string &,0>();
    case 7:
      v37 = *a2;
      v51 = *a3;
      *a3 = 0;
      *(a3 + 1) = 0;
      v38 = *a4;
      if (*(a5 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *a5, *(a5 + 8));
      }

      else
      {
        __p = *a5;
      }

      v52 = v38;
      v53 = v37;
      std::make_unique[abi:ne200100]<MIL::IRValueConstExprOutputData<MIL::Bf16>,MIL::IRTensorValueType const*&,std::shared_ptr<MIL::AbstractConstExpr const>,unsigned long &,std::string &,0>();
    case 8:
      __break(1u);
      return result;
    case 9:
      v25 = *a2;
      v51 = *a3;
      *a3 = 0;
      *(a3 + 1) = 0;
      v26 = *a4;
      if (*(a5 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *a5, *(a5 + 8));
      }

      else
      {
        __p = *a5;
      }

      v52 = v26;
      v53 = v25;
      std::make_unique[abi:ne200100]<MIL::IRValueConstExprOutputData<signed char>,MIL::IRTensorValueType const*&,std::shared_ptr<MIL::AbstractConstExpr const>,unsigned long &,std::string &,0>();
    case 10:
      v17 = *a2;
      v51 = *a3;
      *a3 = 0;
      *(a3 + 1) = 0;
      v18 = *a4;
      if (*(a5 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *a5, *(a5 + 8));
      }

      else
      {
        __p = *a5;
      }

      v52 = v18;
      v53 = v17;
      std::make_unique[abi:ne200100]<MIL::IRValueConstExprOutputData<short>,MIL::IRTensorValueType const*&,std::shared_ptr<MIL::AbstractConstExpr const>,unsigned long &,std::string &,0>();
    case 11:
      v29 = *a2;
      v51 = *a3;
      *a3 = 0;
      *(a3 + 1) = 0;
      v30 = *a4;
      if (*(a5 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *a5, *(a5 + 8));
      }

      else
      {
        __p = *a5;
      }

      v52 = v30;
      v53 = v29;
      std::make_unique[abi:ne200100]<MIL::IRValueConstExprOutputData<int>,MIL::IRTensorValueType const*&,std::shared_ptr<MIL::AbstractConstExpr const>,unsigned long &,std::string &,0>();
    case 12:
      v13 = *a2;
      v51 = *a3;
      *a3 = 0;
      *(a3 + 1) = 0;
      v14 = *a4;
      if (*(a5 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *a5, *(a5 + 8));
      }

      else
      {
        __p = *a5;
      }

      v52 = v14;
      v53 = v13;
      std::make_unique[abi:ne200100]<MIL::IRValueConstExprOutputData<long long>,MIL::IRTensorValueType const*&,std::shared_ptr<MIL::AbstractConstExpr const>,unsigned long &,std::string &,0>();
    case 13:
      v27 = *a2;
      v51 = *a3;
      *a3 = 0;
      *(a3 + 1) = 0;
      v28 = *a4;
      if (*(a5 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *a5, *(a5 + 8));
      }

      else
      {
        __p = *a5;
      }

      v52 = v28;
      v53 = v27;
      std::make_unique[abi:ne200100]<MIL::IRValueConstExprOutputData<unsigned char>,MIL::IRTensorValueType const*&,std::shared_ptr<MIL::AbstractConstExpr const>,unsigned long &,std::string &,0>();
    case 14:
      v7 = *a2;
      v51 = *a3;
      *a3 = 0;
      *(a3 + 1) = 0;
      v8 = *a4;
      if (*(a5 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *a5, *(a5 + 8));
      }

      else
      {
        __p = *a5;
      }

      v52 = v8;
      v53 = v7;
      std::make_unique[abi:ne200100]<MIL::IRValueConstExprOutputData<unsigned char>,MIL::IRTensorValueType const*&,std::shared_ptr<MIL::AbstractConstExpr const>,unsigned long &,std::string &,0>();
    case 15:
      v11 = *a2;
      v51 = *a3;
      *a3 = 0;
      *(a3 + 1) = 0;
      v12 = *a4;
      if (*(a5 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *a5, *(a5 + 8));
      }

      else
      {
        __p = *a5;
      }

      v52 = v12;
      v53 = v11;
      std::make_unique[abi:ne200100]<MIL::IRValueConstExprOutputData<unsigned short>,MIL::IRTensorValueType const*&,std::shared_ptr<MIL::AbstractConstExpr const>,unsigned long &,std::string &,0>();
    case 16:
      v23 = *a2;
      v51 = *a3;
      *a3 = 0;
      *(a3 + 1) = 0;
      v24 = *a4;
      if (*(a5 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *a5, *(a5 + 8));
      }

      else
      {
        __p = *a5;
      }

      v52 = v24;
      v53 = v23;
      std::make_unique[abi:ne200100]<MIL::IRValueConstExprOutputData<unsigned int>,MIL::IRTensorValueType const*&,std::shared_ptr<MIL::AbstractConstExpr const>,unsigned long &,std::string &,0>();
    case 17:
      v41 = *a2;
      v51 = *a3;
      *a3 = 0;
      *(a3 + 1) = 0;
      v42 = *a4;
      if (*(a5 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *a5, *(a5 + 8));
      }

      else
      {
        __p = *a5;
      }

      v52 = v42;
      v53 = v41;
      std::make_unique[abi:ne200100]<MIL::IRValueConstExprOutputData<unsigned long long>,MIL::IRTensorValueType const*&,std::shared_ptr<MIL::AbstractConstExpr const>,unsigned long &,std::string &,0>();
    case 18:
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "cannot dispatch on type");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    case 19:
      v19 = *a2;
      v51 = *a3;
      *a3 = 0;
      *(a3 + 1) = 0;
      v20 = *a4;
      if (*(a5 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *a5, *(a5 + 8));
      }

      else
      {
        __p = *a5;
      }

      v52 = v20;
      v53 = v19;
      std::make_unique[abi:ne200100]<MIL::IRValueConstExprOutputData<unsigned char>,MIL::IRTensorValueType const*&,std::shared_ptr<MIL::AbstractConstExpr const>,unsigned long &,std::string &,0>();
    case 20:
      v43 = *a2;
      v51 = *a3;
      *a3 = 0;
      *(a3 + 1) = 0;
      v44 = *a4;
      if (*(a5 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *a5, *(a5 + 8));
      }

      else
      {
        __p = *a5;
      }

      v52 = v44;
      v53 = v43;
      std::make_unique[abi:ne200100]<MIL::IRValueConstExprOutputData<unsigned char>,MIL::IRTensorValueType const*&,std::shared_ptr<MIL::AbstractConstExpr const>,unsigned long &,std::string &,0>();
    case 21:
      v9 = *a2;
      v51 = *a3;
      *a3 = 0;
      *(a3 + 1) = 0;
      v10 = *a4;
      if (*(a5 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *a5, *(a5 + 8));
      }

      else
      {
        __p = *a5;
      }

      v52 = v10;
      v53 = v9;
      std::make_unique[abi:ne200100]<MIL::IRValueConstExprOutputData<unsigned char>,MIL::IRTensorValueType const*&,std::shared_ptr<MIL::AbstractConstExpr const>,unsigned long &,std::string &,0>();
    case 22:
      v45 = *a2;
      v51 = *a3;
      *a3 = 0;
      *(a3 + 1) = 0;
      v46 = *a4;
      if (*(a5 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *a5, *(a5 + 8));
      }

      else
      {
        __p = *a5;
      }

      v52 = v46;
      v53 = v45;
      std::make_unique[abi:ne200100]<MIL::IRValueConstExprOutputData<unsigned char>,MIL::IRTensorValueType const*&,std::shared_ptr<MIL::AbstractConstExpr const>,unsigned long &,std::string &,0>();
    case 23:
      v39 = *a2;
      v51 = *a3;
      *a3 = 0;
      *(a3 + 1) = 0;
      v40 = *a4;
      if (*(a5 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *a5, *(a5 + 8));
      }

      else
      {
        __p = *a5;
      }

      v52 = v40;
      v53 = v39;
      std::make_unique[abi:ne200100]<MIL::IRValueConstExprOutputData<unsigned char>,MIL::IRTensorValueType const*&,std::shared_ptr<MIL::AbstractConstExpr const>,unsigned long &,std::string &,0>();
    case 24:
      v47 = *a2;
      v51 = *a3;
      *a3 = 0;
      *(a3 + 1) = 0;
      v48 = *a4;
      if (*(a5 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *a5, *(a5 + 8));
      }

      else
      {
        __p = *a5;
      }

      v52 = v48;
      v53 = v47;
      std::make_unique[abi:ne200100]<MIL::IRValueConstExprOutputData<MIL::Fp8E4M3FN>,MIL::IRTensorValueType const*&,std::shared_ptr<MIL::AbstractConstExpr const>,unsigned long &,std::string &,0>();
    case 25:
      v15 = *a2;
      v51 = *a3;
      *a3 = 0;
      *(a3 + 1) = 0;
      v16 = *a4;
      if (*(a5 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *a5, *(a5 + 8));
      }

      else
      {
        __p = *a5;
      }

      v52 = v16;
      v53 = v15;
      std::make_unique[abi:ne200100]<MIL::IRValueConstExprOutputData<MIL::Fp8E5M2>,MIL::IRTensorValueType const*&,std::shared_ptr<MIL::AbstractConstExpr const>,unsigned long &,std::string &,0>();
    default:
      v5 = *a2;
      v51 = *a3;
      *a3 = 0;
      *(a3 + 1) = 0;
      v6 = *a4;
      if (*(a5 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *a5, *(a5 + 8));
      }

      else
      {
        __p = *a5;
      }

      v52 = v6;
      v53 = v5;
      std::make_unique[abi:ne200100]<MIL::IRValueConstExprOutputData<unsigned char>,MIL::IRTensorValueType const*&,std::shared_ptr<MIL::AbstractConstExpr const>,unsigned long &,std::string &,0>();
  }
}

void sub_217FD93AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

void MIL::IRTensorValueType::MakeFloat8E5M2Value(_anonymous_namespace_ *a1, const MIL::IRTensorValueType *a2)
{
  v2 = a2;
  v3 = v2;
  memset(__p, 0, sizeof(__p));
  std::vector<MIL::Fp8E5M2>::__init_with_size[abi:ne200100]<MIL::Fp8E5M2 const*,MIL::Fp8E5M2 const*>(__p, &v3, __p, 1);
  MIL::IRTensorValueType::MakeFloat8E5M2Value();
}

void sub_217FD9C50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *anonymous namespace::ValidateScalarType(_anonymous_namespace_ *this, const MIL::IRTensorValueType *a2)
{
  result = (*(*this + 96))(this, a2);
  if (*result != result[1])
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Cannot create scalar tensor value from non-scalar type.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return result;
}

void MIL::IRTensorValueType::MakeFloat8E4M3FNValue(_anonymous_namespace_ *a1, const MIL::IRTensorValueType *a2)
{
  v2 = a2;
  v3 = v2;
  memset(__p, 0, sizeof(__p));
  std::vector<MIL::Fp8E4M3FN>::__init_with_size[abi:ne200100]<MIL::Fp8E4M3FN const*,MIL::Fp8E4M3FN const*>(__p, &v3, __p, 1);
  MIL::IRTensorValueType::MakeFloat8E4M3FNValue();
}

void sub_217FD9D84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MIL::IRTensorValueType::MakeBFloat16Value(_anonymous_namespace_ *a1, const MIL::IRTensorValueType *a2)
{
  v2 = a2;
  v3 = v2;
  memset(__p, 0, sizeof(__p));
  std::vector<MIL::Bf16>::__init_with_size[abi:ne200100]<MIL::Bf16 const*,MIL::Bf16 const*>(__p, &v3, __p, 1);
  MIL::IRTensorValueType::MakeBFloat16Value();
}

void sub_217FD9E20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MIL::IRTensorValueType::MakeFloat16Value(_anonymous_namespace_ *a1, const MIL::IRTensorValueType *a2)
{
  v2 = a2;
  v3 = v2;
  memset(__p, 0, sizeof(__p));
  std::vector<MIL::Fp16>::__init_with_size[abi:ne200100]<MIL::Fp16 const*,MIL::Fp16 const*>(__p, &v3, __p, 1);
  MIL::IRTensorValueType::MakeFloat16Value();
}

void sub_217FD9EBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MIL::IRTensorValueType::MakeFloat32Value(MIL::IRTensorValueType *this, float a2, const MIL::IRTensorValueType *a3)
{
  v4 = a2;
  memset(__p, 0, sizeof(__p));
  std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(__p, &v4, __p, 1uLL);
  MIL::IRTensorValueType::MakeFloat32Value();
}

void sub_217FD9F58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MIL::IRTensorValueType::MakeFloat64Value(MIL::IRTensorValueType *this, double a2, const MIL::IRTensorValueType *a3)
{
  v6 = *MEMORY[0x277D85DE8];
  v5 = a2;
  memset(__p, 0, sizeof(__p));
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(__p, &v5, &v6, 1uLL);
  MIL::IRTensorValueType::MakeFloat64Value();
}

void sub_217FDA020(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MIL::IRTensorValueType::MakeBoolValue(MIL::IRTensorValueType *this, const MIL::IRTensorValueType *a2)
{
  v2 = a2;
  v3 = v2;
  memset(__p, 0, sizeof(__p));
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(__p, &v3, __p, 1);
  MIL::IRTensorValueType::MakeBoolValue();
}

void sub_217FDA0C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MIL::IRTensorValueType::MakeInt4Value(MIL::IRTensorValueType *this, const MIL::IRTensorValueType *a2)
{
  v2 = a2;
  v3 = v2;
  memset(__p, 0, sizeof(__p));
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(__p, &v3, __p, 1);
  MIL::IRTensorValueType::MakeInt4Value();
}

void sub_217FDA160(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MIL::IRTensorValueType::MakeUInt6Value(MIL::IRTensorValueType *this, const MIL::IRTensorValueType *a2)
{
  v2 = a2;
  v3 = v2;
  memset(__p, 0, sizeof(__p));
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(__p, &v3, __p, 1);
  MIL::IRTensorValueType::MakeUInt6Value();
}

void sub_217FDA1FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MIL::IRTensorValueType::MakeUInt4Value(MIL::IRTensorValueType *this, const MIL::IRTensorValueType *a2)
{
  v2 = a2;
  v3 = v2;
  memset(__p, 0, sizeof(__p));
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(__p, &v3, __p, 1);
  MIL::IRTensorValueType::MakeUInt4Value();
}

void sub_217FDA298(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MIL::IRTensorValueType::MakeUInt3Value(MIL::IRTensorValueType *this, const MIL::IRTensorValueType *a2)
{
  v2 = a2;
  v3 = v2;
  memset(__p, 0, sizeof(__p));
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(__p, &v3, __p, 1);
  MIL::IRTensorValueType::MakeUInt3Value();
}

void sub_217FDA334(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MIL::IRTensorValueType::MakeUInt2Value(MIL::IRTensorValueType *this, const MIL::IRTensorValueType *a2)
{
  v2 = a2;
  v3 = v2;
  memset(__p, 0, sizeof(__p));
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(__p, &v3, __p, 1);
  MIL::IRTensorValueType::MakeUInt2Value();
}

void sub_217FDA3D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MIL::IRTensorValueType::MakeUInt1Value(MIL::IRTensorValueType *this, const MIL::IRTensorValueType *a2)
{
  v2 = a2;
  v3 = v2;
  memset(__p, 0, sizeof(__p));
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(__p, &v3, __p, 1);
  MIL::IRTensorValueType::MakeUInt1Value();
}

void sub_217FDA46C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MIL::IRTensorValueType::MakeUInt8Value(MIL::IRTensorValueType *this, const MIL::IRTensorValueType *a2)
{
  v2 = a2;
  v3 = v2;
  memset(__p, 0, sizeof(__p));
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(__p, &v3, __p, 1);
  MIL::IRTensorValueType::MakeUInt8Value();
}

void sub_217FDA508(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MIL::IRTensorValueType::MakeUInt16Value(MIL::IRTensorValueType *this, const MIL::IRTensorValueType *a2)
{
  v2 = a2;
  v3 = v2;
  memset(__p, 0, sizeof(__p));
  std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short const*,unsigned short const*>(__p, &v3, __p, 1);
  MIL::IRTensorValueType::MakeUInt16Value();
}

void sub_217FDA5A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MIL::IRTensorValueType::MakeUInt32Value(MIL::IRTensorValueType *this, const MIL::IRTensorValueType *a2)
{
  v2 = a2;
  v3 = v2;
  memset(__p, 0, sizeof(__p));
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(__p, &v3, __p, 1uLL);
  MIL::IRTensorValueType::MakeUInt32Value();
}

void sub_217FDA640(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MIL::IRTensorValueType::MakeInt8Value(MIL::IRTensorValueType *this, const MIL::IRTensorValueType *a2)
{
  v2 = a2;
  v3 = v2;
  memset(__p, 0, sizeof(__p));
  std::vector<signed char>::__init_with_size[abi:ne200100]<signed char const*,signed char const*>(__p, &v3, __p, 1);
  MIL::IRTensorValueType::MakeInt8Value();
}

void sub_217FDA6DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MIL::IRTensorValueType::MakeInt16Value(MIL::IRTensorValueType *this, const MIL::IRTensorValueType *a2)
{
  v2 = a2;
  v3 = v2;
  memset(__p, 0, sizeof(__p));
  std::vector<short>::__init_with_size[abi:ne200100]<short const*,short const*>(__p, &v3, __p, 1);
  MIL::IRTensorValueType::MakeInt16Value();
}

void sub_217FDA778(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MIL::IRTensorValueType::MakeInt32Value(MIL::IRTensorValueType *this, const MIL::IRTensorValueType *a2)
{
  v2 = a2;
  v3 = v2;
  memset(__p, 0, sizeof(__p));
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(__p, &v3, __p, 1uLL);
  MIL::IRTensorValueType::MakeInt32Value();
}

void sub_217FDA814(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MIL::IRTensorValueType::MakeInt64Value(MIL::IRTensorValueType *this, const MIL::IRTensorValueType *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v4 = a2;
  memset(__p, 0, sizeof(__p));
  std::vector<long long>::__init_with_size[abi:ne200100]<long long const*,long long const*>(__p, &v4, &v5, 1uLL);
  MIL::IRTensorValueType::MakeInt64Value();
}

void sub_217FDA8D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRTensorValueType::GetAttribute(uint64_t a1)
{
  result = (*(*a1 + 64))(a1);
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::out_of_range::out_of_range[abi:ne200100](exception, "Attribute does not exist.");
    __cxa_throw(exception, off_278235F78, MEMORY[0x277D825F8]);
  }

  return result;
}

uint64_t MIL::IRTensorValueType::GetNumElements(MIL::IRTensorValueType *this)
{
  v1 = (*(*this + 96))(this);
  v2 = *v1;
  v3 = v1[1];
  v4 = 1;
  while (v2 != v3)
  {
    v5 = (*(**v2 + 16))();
    if (!v5)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::range_error::range_error[abi:ne200100](exception, "Cannot determine number of elements in tensor with unknown dimension.");
      __cxa_throw(exception, off_278235F68, MEMORY[0x277D825E0]);
    }

    v4 *= (*(*v5 + 48))(v5);
    v2 += 8;
  }

  return v4;
}

uint64_t MIL::IRTensorValueType::Rank(MIL::IRTensorValueType *this)
{
  if (!(*(*this + 104))(this))
  {
    return -1;
  }

  v2 = (*(*this + 96))(this);
  return (v2[1] - *v2) >> 3;
}

uint64_t MIL::IRListValueType::Make(MIL::IRListValueType *this, MIL::MILContext *a2, const MIL::IRValueType *a3)
{
  v5 = MIL::IRConstantDimension::Make(this, a3);

  return MIL::IRListValueType::MakeWithDimension(this, a2, v5, v6);
}

uint64_t MIL::IRListValueType::GetNumElements(MIL::IRListValueType *this)
{
  v1 = (*(*this + 72))(this);
  v2 = (*(*v1 + 16))(v1);
  if (!v2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::range_error::range_error[abi:ne200100](exception, "Cannot determine number of elements in list with unknown length.");
    __cxa_throw(exception, off_278235F68, MEMORY[0x277D825E0]);
  }

  v3 = *(*v2 + 48);

  return v3();
}

void sub_217FDAE60(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  *(v1 - 40) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  _Unwind_Resume(exception_object);
}

void MIL::IRTupleValueType::GetNumElements(MIL::IRTupleValueType *this)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::range_error::range_error[abi:ne200100](exception, "Cannot determine number of elements in a tuple.");
  __cxa_throw(exception, off_278235F68, MEMORY[0x277D825E0]);
}

void sub_217FDB0E4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  *(v1 - 40) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  _Unwind_Resume(exception_object);
}

void MIL::IRDictionaryValueType::GetNumElements(MIL::IRDictionaryValueType *this)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::range_error::range_error[abi:ne200100](exception, "Cannot determine number of elements in a dictionary.");
  __cxa_throw(exception, off_278235F68, MEMORY[0x277D825E0]);
}

void sub_217FDB374(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  *(v1 - 40) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  _Unwind_Resume(exception_object);
}

void MIL::IRNamedValueType::~IRNamedValueType(void **this)
{
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

{
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

__n128 MIL::IRNamedValueType::IRNamedValueType(__n128 *a1, __n128 *a2, unint64_t a3)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  a2->n128_u64[0] = 0;
  a1[1].n128_u64[1] = a3;
  return result;
}

{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  a2->n128_u64[0] = 0;
  a1[1].n128_u64[1] = a3;
  return result;
}

BOOL MIL::IRNamedValueType::Equals(MIL::IRNamedValueType *this, const MIL::IRNamedValueType *a2)
{
  v2 = *(this + 23);
  if (v2 >= 0)
  {
    v3 = *(this + 23);
  }

  else
  {
    v3 = *(this + 1);
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 1);
  }

  if (v3 != v4)
  {
    return 0;
  }

  v6 = a2;
  v7 = this;
  if (v2 < 0)
  {
    this = *this;
  }

  if (v5 < 0)
  {
    a2 = *a2;
  }

  return !memcmp(this, a2, v3) && *(v7 + 3) == *(v6 + 3);
}

__n128 MIL::IRNamedValueType::SetName(uint64_t a1, __n128 *a2)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  result = *a2;
  *(a1 + 16) = a2[1].n128_u64[0];
  *a1 = result;
  a2[1].n128_u8[7] = 0;
  a2->n128_u8[0] = 0;
  return result;
}

void sub_217FDB75C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  *(v1 - 40) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  _Unwind_Resume(exception_object);
}

void *MIL::IRMemoryLayoutValueType::TryAsTensorBufferType(void *this)
{
  if (this)
  {
  }

  return this;
}

void *MIL::IRMemoryLayoutValueType::AsTensorBufferType(MIL::IRMemoryLayoutValueType *this)
{
  {
    exception = __cxa_allocate_exception(8uLL);
    v3 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v3, MEMORY[0x277D82780], MEMORY[0x277D826D8]);
  }

  return result;
}

void *MIL::IRMemoryLayoutValueType::TryAsPixelBufferType(void *this)
{
  if (this)
  {
  }

  return this;
}

void *MIL::IRMemoryLayoutValueType::AsPixelBufferType(MIL::IRMemoryLayoutValueType *this)
{
  {
    exception = __cxa_allocate_exception(8uLL);
    v3 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v3, MEMORY[0x277D82780], MEMORY[0x277D826D8]);
  }

  return result;
}

void *MIL::IRMemoryLayoutValueType::TryAsCircularBufferType(void *this)
{
  if (this)
  {
  }

  return this;
}

void *MIL::IRMemoryLayoutValueType::AsCircularBufferType(MIL::IRMemoryLayoutValueType *this)
{
  {
    exception = __cxa_allocate_exception(8uLL);
    v3 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v3, MEMORY[0x277D82780], MEMORY[0x277D826D8]);
  }

  return result;
}

void MIL::IRTensorBufferValueType::~IRTensorBufferValueType(MIL::IRTensorBufferValueType *this)
{
  *this = &unk_2829E3068;
  std::unique_ptr<MIL::IRTensorBufferValueTypeImpl>::~unique_ptr[abi:ne200100](this + 1);
}

{
  *this = &unk_2829E3068;
  std::unique_ptr<MIL::IRTensorBufferValueTypeImpl>::~unique_ptr[abi:ne200100](this + 1);
}

{
  *this = &unk_2829E3068;
  std::unique_ptr<MIL::IRTensorBufferValueTypeImpl>::~unique_ptr[abi:ne200100](this + 1);

  JUMPOUT(0x21CEAFEA0);
}

void *MIL::IRTensorBufferValueType::IRTensorBufferValueType(void *this)
{
  *this = &unk_2829E3068;
  this[1] = 0;
  return this;
}

{
  *this = &unk_2829E3068;
  this[1] = 0;
  return this;
}

void *MIL::IRTensorBufferValueType::IRTensorBufferValueType(void *result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  *result = &unk_2829E3068;
  result[1] = v2;
  return result;
}

{
  v2 = *a2;
  *a2 = 0;
  *result = &unk_2829E3068;
  result[1] = v2;
  return result;
}

void MIL::IRTensorBufferValueType::MakeUsingDefaultStrides(MIL::IRConstantDimension *a1, uint64_t a2, uint64_t *a3)
{
  v6 = (a3[1] - *a3) >> 3;
  MIL::MakeDefaultStrides(a3, &v12);
  v10 = 1;
  std::vector<unsigned char>::vector[abi:ne200100](&__p, v6);
  v7 = 0u;
  v8 = 0u;
  v9 = 1065353216;
  MIL::IRTensorBufferValueType::Make(a1, a2, a3, &v12, &__p);
}

void sub_217FDBC7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&a9);
  if (__p)
  {
    a16 = __p;
    operator delete(__p);
  }

  v18 = *(v16 - 56);
  if (v18)
  {
    *(v16 - 48) = v18;
    operator delete(v18);
  }

  _Unwind_Resume(a1);
}

void MIL::IRTensorBufferValueType::Make(MIL::IRConstantDimension *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  std::vector<MIL::IRDimension const*>::vector[abi:ne200100](&v20, (a3[1] - *a3) >> 3);
  std::vector<MIL::IRProperty const*>::vector[abi:ne200100](&v19, (a4[1] - *a4) >> 3);
  std::vector<MIL::IRProperty const*>::vector[abi:ne200100](&__p, a5[1] - *a5);
  v9 = *a3;
  if (a3[1] != *a3)
  {
    v10 = 0;
    do
    {
      v11 = MIL::IRConstantDimension::Make(a1, *(v9 + 8 * v10));
      *(v20 + v10++) = v11;
      v9 = *a3;
    }

    while (v10 < (a3[1] - *a3) >> 3);
  }

  v12 = *a4;
  if (a4[1] != *a4)
  {
    v13 = 0;
    do
    {
      Int64Scalar = MIL::IRConstantProperty::MakeInt64Scalar(a1, *(v12 + 8 * v13));
      *(v19 + v13++) = Int64Scalar;
      v12 = *a4;
    }

    while (v13 < (a4[1] - *a4) >> 3);
  }

  v15 = *a5;
  if (a5[1] != *a5)
  {
    v16 = 0;
    do
    {
      UInt8Scalar = MIL::IRConstantProperty::MakeUInt8Scalar(a1, *(v15 + v16));
      *(__p + v16++) = UInt8Scalar;
      v15 = *a5;
    }

    while (v16 < a5[1] - *a5);
  }

  MIL::IRTensorBufferValueType::MakeWithShape();
}

void sub_217FDBE40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void MIL::IRTensorBufferValueType::MakeUsingDefaultStrides(MIL::IRConstantDimension *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  MIL::MakeDefaultStrides(a3, a4, &__p);
  v8 = 0u;
  v9 = 0u;
  v10 = 1065353216;
  MIL::IRTensorBufferValueType::Make(a1, a2, a3, &__p, a4);
}

void sub_217FDBF30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&a9);
  if (__p)
  {
    a15 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::IRTensorBufferValueType::Make(MIL::IRConstantDimension *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v8 = (a3[1] - *a3) >> 3;
  v12 = 1;
  std::vector<unsigned char>::vector[abi:ne200100](&__p, v8);
  v9 = 0u;
  v10 = 0u;
  v11 = 1065353216;
  MIL::IRTensorBufferValueType::Make(a1, a2, a3, a4, &__p);
}

void sub_217FDBFFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&a9);
  if (__p)
  {
    a17 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_217FDC1BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(exception_object);
}

void MIL::IRTensorBufferValueType::MakeWithRowAlignment(MIL::IRConstantDimension *a1, uint64_t a2, uint64_t *a3, MIL::MILContext *a4)
{
  v8 = (a3[1] - *a3) >> 3;
  v12 = 1;
  std::vector<unsigned char>::vector[abi:ne200100](&__p, v8);
  v9 = 0u;
  v10 = 0u;
  v11 = 1065353216;
  MIL::IRTensorBufferValueType::MakeWithRowAlignment(a1, a2, a3, a4, &__p);
}

void sub_217FDC2A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&a9);
  if (__p)
  {
    a17 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::IRTensorBufferValueType::MakeWithRowAlignment(MIL::IRConstantDimension *a1, uint64_t a2, uint64_t *a3, MIL::MILContext *a4, uint64_t *a5)
{
  std::vector<MIL::IRDimension const*>::vector[abi:ne200100](&v16, (a3[1] - *a3) >> 3);
  std::vector<MIL::IRProperty const*>::vector[abi:ne200100](&__p, a5[1] - *a5);
  v9 = *a3;
  if (a3[1] != *a3)
  {
    v10 = 0;
    do
    {
      v11 = MIL::IRConstantDimension::Make(a1, *(v9 + 8 * v10));
      *(v16 + v10++) = v11;
      v9 = *a3;
    }

    while (v10 < (a3[1] - *a3) >> 3);
  }

  v12 = *a5;
  if (a5[1] != *a5)
  {
    v13 = 0;
    do
    {
      UInt8Scalar = MIL::IRConstantProperty::MakeUInt8Scalar(a1, *(v12 + v13));
      *(__p + v13++) = UInt8Scalar;
      v12 = *a5;
    }

    while (v13 < a5[1] - *a5);
  }

  MIL::IRConstantProperty::MakeUInt64Scalar(a1, a4);
  MIL::IRTensorBufferValueType::MakeWithShapeAndRowAlignment();
}

void sub_217FDC400(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_217FDC574(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void MIL::IRTensorBufferValueType::MakeWithShapeUsingDefaultStrides(MIL::IRConstantProperty *a1, uint64_t a2, uint64_t *a3)
{
  std::vector<MIL::IRProperty const*>::vector[abi:ne200100](&v11, (a3[1] - *a3) >> 3);
  if (a3[1] != *a3)
  {
    v5 = 0;
    do
    {
      UInt8Scalar = MIL::IRConstantProperty::MakeUInt8Scalar(a1, 1);
      *(v11 + 8 * v5++) = UInt8Scalar;
    }

    while (v5 < (a3[1] - *a3) >> 3);
  }

  MIL::MakeDefaultStrides(a1, a3, &__p);
  v7 = 0u;
  v8 = 0u;
  v9 = 1065353216;
  MIL::IRTensorBufferValueType::MakeWithShape();
}

void sub_217FDC690(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&a9);
  if (__p)
  {
    a16 = __p;
    operator delete(__p);
  }

  v18 = *(v16 - 56);
  if (v18)
  {
    *(v16 - 48) = v18;
    operator delete(v18);
  }

  _Unwind_Resume(a1);
}

void MIL::IRTensorBufferValueType::MakeWithShapeUsingDefaultStrides(MIL::IRConstantProperty *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  MIL::MakeDefaultStrides(a1, a3, a4, &__p);
  v4 = 0u;
  v5 = 0u;
  v6 = 1065353216;
  MIL::IRTensorBufferValueType::MakeWithShape();
}

void sub_217FDC768(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&a9);
  if (__p)
  {
    a15 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::IRTensorBufferValueType::MakeWithShape(MIL::IRConstantProperty *a1, uint64_t a2, void *a3)
{
  std::vector<MIL::IRProperty const*>::vector[abi:ne200100](&__p, (a3[1] - *a3) >> 3);
  if (a3[1] != *a3)
  {
    v5 = 0;
    do
    {
      UInt8Scalar = MIL::IRConstantProperty::MakeUInt8Scalar(a1, 1);
      *(__p + v5++) = UInt8Scalar;
    }

    while (v5 < (a3[1] - *a3) >> 3);
  }

  v7 = 0u;
  v8 = 0u;
  v9 = 1065353216;
  MIL::IRTensorBufferValueType::MakeWithShape();
}

void sub_217FDC868(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&a9);
  if (__p)
  {
    a15 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::IRTensorBufferValueType::MakeWithShapeAndRowAlignment(MIL::IRConstantProperty *a1, uint64_t a2, void *a3)
{
  std::vector<MIL::IRProperty const*>::vector[abi:ne200100](&__p, (a3[1] - *a3) >> 3);
  if (a3[1] != *a3)
  {
    v5 = 0;
    do
    {
      UInt8Scalar = MIL::IRConstantProperty::MakeUInt8Scalar(a1, 1);
      *(__p + v5++) = UInt8Scalar;
    }

    while (v5 < (a3[1] - *a3) >> 3);
  }

  v7 = 0u;
  v8 = 0u;
  v9 = 1065353216;
  MIL::IRTensorBufferValueType::MakeWithShapeAndRowAlignment();
}

{
  std::vector<MIL::IRProperty const*>::vector[abi:ne200100](__p, (*(*a3 + 8) - **a3) >> 3);
  v5 = *a3;
  if (*(*a3 + 8) != **a3)
  {
    v6 = 0;
    do
    {
      UInt8Scalar = MIL::IRConstantProperty::MakeUInt8Scalar(a1, 1);
      *(__p[0] + v6++) = UInt8Scalar;
      v5 = *a3;
    }

    while (v6 < (*(*a3 + 8) - **a3) >> 3);
  }

  v8 = a3[1];
  v9 = v5;
  v10 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_217FDC970(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&a9);
  if (__p)
  {
    a15 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::IRTensorBufferValueType::MakeWithShapeUsingDefaultStrides(MIL::IRConstantProperty *a1, uint64_t a2, uint64_t **a3)
{
  std::vector<MIL::IRProperty const*>::vector[abi:ne200100](&v12, ((*a3)[1] - **a3) >> 3);
  v5 = *a3;
  if ((*a3)[1] != **a3)
  {
    v6 = 0;
    do
    {
      UInt8Scalar = MIL::IRConstantProperty::MakeUInt8Scalar(a1, 1);
      *(v12 + 8 * v6++) = UInt8Scalar;
      v5 = *a3;
    }

    while (v6 < ((*a3)[1] - **a3) >> 3);
  }

  v8 = a3[1];
  v10 = v5;
  v11 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
    v5 = *a3;
  }

  MIL::MakeDefaultStrides(a1, v5, __p);
  operator new();
}

void sub_217FDCB84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22)
{
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&a9);
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a22);
  }

  if (__p)
  {
    a18 = __p;
    operator delete(__p);
  }

  v24 = *(v22 - 72);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  v25 = *(v22 - 64);
  if (v25)
  {
    *(v22 - 56) = v25;
    operator delete(v25);
  }

  _Unwind_Resume(a1);
}

void MIL::IRTensorBufferValueType::MakeWithShapeUsingDefaultStrides(MIL::IRConstantProperty *a1, uint64_t a2, uint64_t a3, uint64_t **a4)
{
  v4 = *a3;
  v5 = *(a3 + 8);
  v7 = *a3;
  v8 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    v4 = *a3;
  }

  MIL::MakeDefaultStrides(a1, v4, *a4, __p);
  operator new();
}

void sub_217FDCD40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, void *__p, uint64_t a18)
{
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&a9);
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  v20 = *(v18 - 56);
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  if (__p)
  {
    a18 = __p;
    operator delete(__p);
  }

  v21 = *(v18 - 40);
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  _Unwind_Resume(a1);
}

void MIL::IRTensorBufferValueType::MakeWithShape(MIL::IRConstantProperty *a1, uint64_t a2, void *a3, uint64_t *a4)
{
  std::vector<MIL::IRProperty const*>::vector[abi:ne200100](&v16, (*(*a3 + 8) - **a3) >> 3);
  v7 = *a3;
  if (*(*a3 + 8) != **a3)
  {
    v8 = 0;
    do
    {
      UInt8Scalar = MIL::IRConstantProperty::MakeUInt8Scalar(a1, 1);
      *(v16 + 8 * v8++) = UInt8Scalar;
      v7 = *a3;
    }

    while (v8 < (*(*a3 + 8) - **a3) >> 3);
  }

  v10 = a3[1];
  v14 = v7;
  v15 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  v11 = a4[1];
  v12 = *a4;
  v13 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_217FDCF2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, std::__shared_weak_count *a20)
{
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&a9);
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  v22 = *(v20 - 80);
  if (v22)
  {
    *(v20 - 72) = v22;
    operator delete(v22);
  }

  _Unwind_Resume(a1);
}

void sub_217FDD0F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, std::__shared_weak_count *a18, void *__p, uint64_t a20)
{
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&a9);
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  if (__p)
  {
    a20 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::IRTensorBufferValueType::Make(int a1)
{
  v2 = a1;
  v1 = 0;
  std::make_unique[abi:ne200100]<MIL::IRTensorBufferValueTypeImpl,MIL::IRDataType &,std::shared_ptr<std::vector<MIL::IRDimension const*>> &,std::shared_ptr<std::vector<MIL::IRProperty const*>> &,decltype(nullptr),std::shared_ptr<std::vector<MIL::IRProperty const*>> &,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>,0>();
}

void sub_217FDD1DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<MIL::IRTensorBufferValueTypeImpl>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_217FDD2FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::make_unique[abi:ne200100]<MIL::IRTensorBufferValueTypeImpl,MIL::IRDataType &,std::shared_ptr<std::vector<MIL::IRDimension const*>> &,std::shared_ptr<std::vector<MIL::IRProperty const*>> &,decltype(nullptr),std::shared_ptr<std::vector<MIL::IRProperty const*>> &,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>,0>(v12 + 8);
  MEMORY[0x21CEAFEA0](v11, v10);
  _Unwind_Resume(a1);
}

void *std::unique_ptr<MIL::IRTensorBufferValueTypeImpl>::~unique_ptr[abi:ne200100](void *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table((v2 + 9));
    v3 = v2[8];
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    v4 = v2[5];
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    v5 = v2[2];
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    MEMORY[0x21CEAFEA0](v2, 0x10E0C404C31E7C6);
  }

  return a1;
}

void MIL::IRTensorBufferValueType::Make(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a1;
  v4 = a4;
  std::make_unique[abi:ne200100]<MIL::IRTensorBufferValueTypeImpl,MIL::IRDataType &,std::shared_ptr<std::vector<MIL::IRDimension const*>> &,std::shared_ptr<std::vector<MIL::IRProperty const*>> &,MIL::IRProperty const*&,std::shared_ptr<std::vector<MIL::IRProperty const*>> &,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>,0>();
}

void sub_217FDD430(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<MIL::IRTensorBufferValueTypeImpl>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_217FDD55C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::make_unique[abi:ne200100]<MIL::IRTensorBufferValueTypeImpl,MIL::IRDataType &,std::shared_ptr<std::vector<MIL::IRDimension const*>> &,std::shared_ptr<std::vector<MIL::IRProperty const*>> &,decltype(nullptr),std::shared_ptr<std::vector<MIL::IRProperty const*>> &,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>,0>(v12 + 8);
  MEMORY[0x21CEAFEA0](v11, v10);
  _Unwind_Resume(a1);
}

void sub_217FDD5D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRTensorBufferValueTypeImpl::GetStrides(MIL::IRTensorBufferValueTypeImpl *this)
{
  result = *(this + 4);
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Strides is not set for this tensor_buffer.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return result;
}

uint64_t MIL::IRTensorBufferValueTypeImpl::GetRowAlignmentInBytes(MIL::IRTensorBufferValueTypeImpl *this)
{
  result = *(this + 6);
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Row-alignment is not set for this tensor_buffer.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return result;
}

const void *MIL::IRTensorBufferValueTypeImpl::GetAttribute(uint64_t a1, const void **a2)
{
  result = MIL::IRTensorBufferValueTypeImpl::TryGetAttribute(a1, a2);
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::out_of_range::out_of_range[abi:ne200100](exception, "Attribute does not exist.");
    __cxa_throw(exception, off_278235F78, MEMORY[0x277D825F8]);
  }

  return result;
}

const void *MIL::IRTensorBufferValueTypeImpl::TryGetAttribute(uint64_t a1, const void **a2)
{
  v2 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>((a1 + 72), a2);
  if (!v2)
  {
    return 0;
  }

  v4 = v2[5];
  v3 = v2[6];
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return v4;
}

const void **MIL::IRTensorBufferValueType::TryGetAttributeSharedPtr@<X0>(uint64_t a1@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  result = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>((*(a1 + 8) + 72), a2);
  if (result)
  {
    v5 = result[6];
    *a3 = result[5];
    a3[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(v5 + 1, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
  }

  return result;
}

uint64_t MIL::IRTensorBufferValueType::GetRank(MIL::IRTensorBufferValueType *this)
{
  v1 = *(this + 1);
  if (*(v1 + 24) == 1)
  {
    return (*(*(v1 + 8) + 8) - **(v1 + 8)) >> 3;
  }

  else
  {
    return -1;
  }
}

uint64_t MIL::IRTensorBufferValueType::GetNumElements(MIL::IRTensorBufferValueType *this)
{
  v1 = *(*(this + 1) + 8);
  v2 = *v1;
  v3 = v1[1];
  v4 = 1;
  while (v2 != v3)
  {
    v5 = (*(**v2 + 16))();
    if (!v5)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::range_error::range_error[abi:ne200100](exception, "Cannot determine number of elements in memory layout with unknown dimension.");
      __cxa_throw(exception, off_278235F68, MEMORY[0x277D825E0]);
    }

    v4 *= (*(*v5 + 48))(v5);
    v2 += 8;
  }

  return v4;
}

void sub_217FDDA40(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  *(v1 - 40) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  _Unwind_Resume(exception_object);
}

void MIL::IRPixelBufferValueType::~IRPixelBufferValueType(MIL::IRPixelBufferValueType *this)
{
  *this = &unk_2829E30B8;
  std::unique_ptr<MIL::IRPixelBufferValueTypeImpl>::reset[abi:ne200100](this + 1, 0);
}

{
  *this = &unk_2829E30B8;
  std::unique_ptr<MIL::IRPixelBufferValueTypeImpl>::reset[abi:ne200100](this + 1, 0);
}

{
  *this = &unk_2829E30B8;
  std::unique_ptr<MIL::IRPixelBufferValueTypeImpl>::reset[abi:ne200100](this + 1, 0);

  JUMPOUT(0x21CEAFEA0);
}

void *MIL::IRPixelBufferValueType::IRPixelBufferValueType(void *this)
{
  *this = &unk_2829E30B8;
  this[1] = 0;
  return this;
}

{
  *this = &unk_2829E30B8;
  this[1] = 0;
  return this;
}

void *MIL::IRPixelBufferValueType::IRPixelBufferValueType(void *result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  *result = &unk_2829E30B8;
  result[1] = v2;
  return result;
}

{
  v2 = *a2;
  *a2 = 0;
  *result = &unk_2829E30B8;
  result[1] = v2;
  return result;
}

void MIL::IRPixelBufferValueType::Make(MIL::IRConstantDimension *a1, uint64_t a2, uint64_t *a3)
{
  std::vector<MIL::IRDimension const*>::vector[abi:ne200100](&__p, (a3[1] - *a3) >> 3);
  v5 = *a3;
  if (a3[1] != *a3)
  {
    v6 = 0;
    do
    {
      v7 = MIL::IRConstantDimension::Make(a1, *(v5 + 8 * v6));
      *(__p + v6++) = v7;
      v5 = *a3;
    }

    while (v6 < (a3[1] - *a3) >> 3);
  }

  MIL::IRPixelBufferValueType::MakeWithShape();
}

void sub_217FDDCC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MIL::IRPixelBufferValueType::MakeWithShape()
{
  operator new();
}

{
  operator new();
}

{
  operator new();
}

void MIL::IRPixelBufferValueType::Make(MIL::IRConstantDimension *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  std::vector<MIL::IRDimension const*>::vector[abi:ne200100](&v14, (a3[1] - *a3) >> 3);
  std::vector<MIL::IRProperty const*>::vector[abi:ne200100](&__p, (a4[1] - *a4) >> 3);
  v7 = *a3;
  if (a3[1] != *a3)
  {
    v8 = 0;
    do
    {
      v9 = MIL::IRConstantDimension::Make(a1, *(v7 + 8 * v8));
      *(v14 + v8++) = v9;
      v7 = *a3;
    }

    while (v8 < (a3[1] - *a3) >> 3);
  }

  v10 = *a4;
  if (a4[1] != *a4)
  {
    v11 = 0;
    do
    {
      Int64Scalar = MIL::IRConstantProperty::MakeInt64Scalar(a1, *(v10 + 8 * v11));
      *(__p + v11++) = Int64Scalar;
      v10 = *a4;
    }

    while (v11 < (a4[1] - *a4) >> 3);
  }

  MIL::IRPixelBufferValueType::MakeWithShape();
}

void sub_217FDDECC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_217FDE044(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(exception_object);
}

void MIL::IRPixelBufferValueType::MakeWithBytesPerRowNumSlices(MIL::IRConstantDimension *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  std::vector<MIL::IRDimension const*>::vector[abi:ne200100](&v20, (a3[1] - *a3) >> 3);
  std::vector<MIL::IRProperty const*>::vector[abi:ne200100](&v19, (a4[1] - *a4) >> 3);
  v9 = *a3;
  if (a3[1] != *a3)
  {
    v10 = 0;
    do
    {
      v11 = MIL::IRConstantDimension::Make(a1, *(v9 + 8 * v10));
      *(v20 + v10++) = v11;
      v9 = *a3;
    }

    while (v10 < (a3[1] - *a3) >> 3);
  }

  v12 = *a4;
  if (a4[1] != *a4)
  {
    v13 = 0;
    do
    {
      Int64Scalar = MIL::IRConstantProperty::MakeInt64Scalar(a1, *(v12 + 8 * v13));
      *(v19 + v13++) = Int64Scalar;
      v12 = *a4;
    }

    while (v13 < (a4[1] - *a4) >> 3);
  }

  std::vector<MIL::IRProperty const*>::vector[abi:ne200100](&__p, (a5[1] - *a5) >> 3);
  v15 = *a5;
  if (a5[1] != *a5)
  {
    v16 = 0;
    do
    {
      v17 = MIL::IRConstantProperty::MakeInt64Scalar(a1, *(v15 + 8 * v16));
      *(__p + v16++) = v17;
      v15 = *a5;
    }

    while (v16 < (a5[1] - *a5) >> 3);
  }

  MIL::IRPixelBufferValueType::MakeWithShapeBytesPerRowNumSlices();
}

void sub_217FDE208(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_217FDE42C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRPixelBufferValueType::MakeWithShape(const void *a1, int a2, uint64_t *a3)
{
  v3 = a3[1];
  v10 = *a3;
  v11 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = 0;
  v9 = 0;
  memset(v6, 0, sizeof(v6));
  v7 = 1065353216;
  v4 = MIL::IRPixelBufferValueType::MakeWithShape(a1, a2, &v10, &v8, v6);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v6);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  return v4;
}

void sub_217FDE4FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&a9);
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  v18 = *(v16 - 24);
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  _Unwind_Resume(a1);
}

void sub_217FDE5E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_217FDE738(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(exception_object);
}

void MIL::IRPixelBufferValueType::Make(int a1, void *a2, void *a3)
{
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = a3[1];
  v6[0] = *a3;
  v6[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5[0] = 0;
  v5[1] = 0;
  MIL::IRPixelBufferValueType::Make(a1, v7, v6, v5);
}

void sub_217FDE810(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::make_unique[abi:ne200100]<MIL::IRTensorBufferValueTypeImpl,MIL::IRDataType &,std::shared_ptr<std::vector<MIL::IRDimension const*>> &,std::shared_ptr<std::vector<MIL::IRProperty const*>> &,decltype(nullptr),std::shared_ptr<std::vector<MIL::IRProperty const*>> &,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>,0>(v10 + 8);
  _Unwind_Resume(a1);
}

void MIL::IRPixelBufferValueType::Make(int a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v6 = a1;
  v5 = 0;
  v4 = *a4;
  if (*a3)
  {
    if (v4)
    {
      std::make_unique[abi:ne200100]<MIL::IRPixelBufferValueTypeImpl,MIL::IRPixelFormatType &,std::shared_ptr<std::vector<MIL::IRDimension const*>> &,std::shared_ptr<std::vector<MIL::IRProperty const*>> &,std::shared_ptr<std::vector<MIL::IRProperty const*>> &,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>,0>();
    }

    std::make_unique[abi:ne200100]<MIL::IRPixelBufferValueTypeImpl,MIL::IRPixelFormatType &,std::shared_ptr<std::vector<MIL::IRDimension const*>> &,std::shared_ptr<std::vector<MIL::IRProperty const*>> &,std::nullopt_t const&,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>,0>();
  }

  if (v4)
  {
    std::make_unique[abi:ne200100]<MIL::IRPixelBufferValueTypeImpl,MIL::IRPixelFormatType &,std::shared_ptr<std::vector<MIL::IRDimension const*>> &,std::nullopt_t const&,std::shared_ptr<std::vector<MIL::IRProperty const*>> &,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>,0>();
  }

  std::make_unique[abi:ne200100]<MIL::IRPixelBufferValueTypeImpl,MIL::IRPixelFormatType &,std::shared_ptr<std::vector<MIL::IRDimension const*>> &,std::nullopt_t const&,std::nullopt_t const&,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>,0>();
}

void sub_217FDE948(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<MIL::IRPixelBufferValueTypeImpl>::reset[abi:ne200100](va, 0);
  _Unwind_Resume(a1);
}

void std::make_unique[abi:ne200100]<MIL::IRPixelBufferValueTypeImpl,MIL::IRPixelFormatType &,std::shared_ptr<std::vector<MIL::IRDimension const*>> &,std::nullopt_t const&,std::nullopt_t const&,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>,0>()
{
  operator new();
}

{
  OUTLINED_FUNCTION_1();
  if (v2)
  {
    v3 = *(v1 + 8);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }
  }

  if (*v0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*v0);
  }
}

void sub_217FDEA60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, char a11)
{
  if (a11 == 1)
  {
    if (a10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a10);
    }
  }

  std::make_unique[abi:ne200100]<MIL::IRPixelBufferValueTypeImpl,MIL::IRPixelFormatType &,std::shared_ptr<std::vector<MIL::IRDimension const*>> &,std::nullopt_t const&,std::nullopt_t const&,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>,0>();
  MEMORY[0x21CEAFEA0](v12, v11);
  _Unwind_Resume(a1);
}

void sub_217FDEBB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, char a11)
{
  if (a11 == 1)
  {
    if (a10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a10);
    }
  }

  std::make_unique[abi:ne200100]<MIL::IRPixelBufferValueTypeImpl,MIL::IRPixelFormatType &,std::shared_ptr<std::vector<MIL::IRDimension const*>> &,std::nullopt_t const&,std::nullopt_t const&,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>,0>();
  MEMORY[0x21CEAFEA0](v12, v11);
  _Unwind_Resume(a1);
}

void std::make_unique[abi:ne200100]<MIL::IRPixelBufferValueTypeImpl,MIL::IRPixelFormatType &,std::shared_ptr<std::vector<MIL::IRDimension const*>> &,std::shared_ptr<std::vector<MIL::IRProperty const*>> &,std::nullopt_t const&,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>,0>()
{
  operator new();
}

{
  OUTLINED_FUNCTION_1();
  if (v2 && *v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*v1);
  }

  if (*v0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*v0);
  }
}

void sub_217FDED08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, char a11)
{
  if (a11 == 1)
  {
    if (a10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a10);
    }
  }

  std::make_unique[abi:ne200100]<MIL::IRPixelBufferValueTypeImpl,MIL::IRPixelFormatType &,std::shared_ptr<std::vector<MIL::IRDimension const*>> &,std::shared_ptr<std::vector<MIL::IRProperty const*>> &,std::nullopt_t const&,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>,0>();
  MEMORY[0x21CEAFEA0](v12, v11);
  _Unwind_Resume(a1);
}

void sub_217FDEE74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, char a11)
{
  if (a11 == 1)
  {
    if (a10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a10);
    }
  }

  std::make_unique[abi:ne200100]<MIL::IRPixelBufferValueTypeImpl,MIL::IRPixelFormatType &,std::shared_ptr<std::vector<MIL::IRDimension const*>> &,std::shared_ptr<std::vector<MIL::IRProperty const*>> &,std::nullopt_t const&,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>,0>();
  MEMORY[0x21CEAFEA0](v12, v11);
  _Unwind_Resume(a1);
}

uint64_t MIL::IRPixelBufferValueType::GetRank(MIL::IRPixelBufferValueType *this)
{
  v1 = *(this + 1);
  if (*(v1 + 24) == 1)
  {
    return (*(*(v1 + 8) + 8) - **(v1 + 8)) >> 3;
  }

  else
  {
    return -1;
  }
}

uint64_t MIL::IRPixelBufferValueTypeImpl::GetBytesPerRow(MIL::IRPixelBufferValueTypeImpl *this)
{
  if (*(this + 48) != 1 || (result = *(this + 4)) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::out_of_range::out_of_range[abi:ne200100](exception, "BytesPerRow is not set for this pixel buffer.");
    __cxa_throw(exception, off_278235F78, MEMORY[0x277D825F8]);
  }

  return result;
}

uint64_t MIL::IRPixelBufferValueType::TryGetBytesPerRow(MIL::IRPixelBufferValueType *this)
{
  v1 = *(this + 1);
  if (*(v1 + 48) == 1)
  {
    return *(v1 + 32);
  }

  else
  {
    return 0;
  }
}

uint64_t MIL::IRPixelBufferValueTypeImpl::GetNumSlices(MIL::IRPixelBufferValueTypeImpl *this)
{
  if (*(this + 72) != 1 || (result = *(this + 7)) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "NumSlices is not set for this pixel buffer.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return result;
}

uint64_t MIL::IRPixelBufferValueType::TryGetNumSlices(MIL::IRPixelBufferValueType *this)
{
  v1 = *(this + 1);
  if (*(v1 + 72) == 1)
  {
    return *(v1 + 56);
  }

  else
  {
    return 0;
  }
}

const void *MIL::IRPixelBufferValueTypeImpl::GetAttribute(uint64_t a1, const void **a2)
{
  result = MIL::IRPixelBufferValueTypeImpl::TryGetAttribute(a1, a2);
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::out_of_range::out_of_range[abi:ne200100](exception, "Attribute does not exist.");
    __cxa_throw(exception, off_278235F78, MEMORY[0x277D825F8]);
  }

  return result;
}

const void *MIL::IRPixelBufferValueTypeImpl::TryGetAttribute(uint64_t a1, const void **a2)
{
  v2 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>((a1 + 80), a2);
  if (!v2)
  {
    return 0;
  }

  v4 = v2[5];
  v3 = v2[6];
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return v4;
}

const void **MIL::IRPixelBufferValueType::TryGetAttributeSharedPtr@<X0>(uint64_t a1@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  result = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>((*(a1 + 8) + 80), a2);
  if (result)
  {
    v5 = result[6];
    *a3 = result[5];
    a3[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(v5 + 1, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
  }

  return result;
}

uint64_t MIL::IRPixelBufferValueType::GetNumElements(MIL::IRPixelBufferValueType *this)
{
  if (MIL::GetNumPlanesForFormat(**(this + 1)) != 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "Number of elements cannot be computed for multi-planar images yet.");
    v9 = off_278235F80;
    v10 = MEMORY[0x277D82610];
LABEL_8:
    __cxa_throw(exception, v9, v10);
  }

  v2 = *(*(this + 1) + 8);
  v3 = *v2;
  v4 = v2[1];
  v5 = 1;
  while (v3 != v4)
  {
    v6 = (*(**v3 + 16))();
    if (!v6)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::range_error::range_error[abi:ne200100](exception, "Cannot determine number of elements in memory layout with unknown dimension.");
      v9 = off_278235F68;
      v10 = MEMORY[0x277D825E0];
      goto LABEL_8;
    }

    v5 *= (*(*v6 + 48))(v6);
    v3 += 8;
  }

  return v5;
}

void sub_217FDF374(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  *(v1 - 40) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  _Unwind_Resume(exception_object);
}

void MIL::IRCircularBufferValueType::~IRCircularBufferValueType(MIL::IRCircularBufferValueType *this)
{
  *this = &unk_2829E3108;
  std::unique_ptr<MIL::IRCircularBufferValueTypeImpl>::~unique_ptr[abi:ne200100](this + 1);
}

{
  *this = &unk_2829E3108;
  std::unique_ptr<MIL::IRCircularBufferValueTypeImpl>::~unique_ptr[abi:ne200100](this + 1);
}

{
  *this = &unk_2829E3108;
  std::unique_ptr<MIL::IRCircularBufferValueTypeImpl>::~unique_ptr[abi:ne200100](this + 1);

  JUMPOUT(0x21CEAFEA0);
}

void *MIL::IRCircularBufferValueType::IRCircularBufferValueType(void *this)
{
  *this = &unk_2829E3108;
  this[1] = 0;
  return this;
}

{
  *this = &unk_2829E3108;
  this[1] = 0;
  return this;
}

void *MIL::IRCircularBufferValueType::IRCircularBufferValueType(void *result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  *result = &unk_2829E3108;
  result[1] = v2;
  return result;
}

{
  v2 = *a2;
  *a2 = 0;
  *result = &unk_2829E3108;
  result[1] = v2;
  return result;
}

void MIL::IRCircularBufferValueType::Make(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a1;
  v5 = a5;
  std::make_unique[abi:ne200100]<MIL::IRCircularBufferValueTypeImpl,MIL::IRDataType &,std::shared_ptr<std::vector<MIL::IRDimension const*>> &,std::shared_ptr<std::vector<MIL::IRProperty const*>> &,std::shared_ptr<std::vector<MIL::IRProperty const*>> &,MIL::IRProperty const*&,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>,0>();
}

void sub_217FDF5D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<MIL::IRCircularBufferValueTypeImpl>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_217FDF6FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::make_unique[abi:ne200100]<MIL::IRTensorBufferValueTypeImpl,MIL::IRDataType &,std::shared_ptr<std::vector<MIL::IRDimension const*>> &,std::shared_ptr<std::vector<MIL::IRProperty const*>> &,decltype(nullptr),std::shared_ptr<std::vector<MIL::IRProperty const*>> &,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>,0>(v12 + 8);
  MEMORY[0x21CEAFEA0](v11, v10);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<MIL::IRCircularBufferValueTypeImpl>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::unique_ptr<MIL::IRTensorBufferValueTypeImpl>::~unique_ptr[abi:ne200100]((v2 + 8));
    MEMORY[0x21CEAFEA0](v2, 0x60C405C6656D0);
  }

  return a1;
}

void MIL::IRCircularBufferValueType::Make(MIL::IRConstantDimension *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, unsigned int a6)
{
  std::vector<MIL::IRDimension const*>::vector[abi:ne200100](&v22, (a3[1] - *a3) >> 3);
  std::vector<MIL::IRProperty const*>::vector[abi:ne200100](&v21, (a4[1] - *a4) >> 3);
  std::vector<MIL::IRProperty const*>::vector[abi:ne200100](&__p, a5[1] - *a5);
  v11 = *a3;
  if (a3[1] != *a3)
  {
    v12 = 0;
    do
    {
      v13 = MIL::IRConstantDimension::Make(a1, *(v11 + 8 * v12));
      *(v22 + v12++) = v13;
      v11 = *a3;
    }

    while (v12 < (a3[1] - *a3) >> 3);
  }

  v14 = *a4;
  if (a4[1] != *a4)
  {
    v15 = 0;
    do
    {
      Int64Scalar = MIL::IRConstantProperty::MakeInt64Scalar(a1, *(v14 + 8 * v15));
      *(v21 + v15++) = Int64Scalar;
      v14 = *a4;
    }

    while (v15 < (a4[1] - *a4) >> 3);
  }

  v17 = *a5;
  if (a5[1] != *a5)
  {
    v18 = 0;
    do
    {
      UInt8Scalar = MIL::IRConstantProperty::MakeUInt8Scalar(a1, *(v17 + v18));
      *(__p + v18++) = UInt8Scalar;
      v17 = *a5;
    }

    while (v18 < a5[1] - *a5);
  }

  MIL::IRConstantProperty::MakeInt64Scalar(a1, a6);
  MIL::IRCircularBufferValueType::MakeWithShape();
}

void sub_217FDF918(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_217FDFB14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t anonymous namespace::IsShapeFixedRank(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = 1;
  while (v1 != v2)
  {
    v4 = (*(**v1 + 32))() ^ 1;
    if ((v4 & 1) == 0 && (v3 & 1) == 0)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "A shape may contain only one variadic dimension.");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    v3 = v4 & v3;
    v1 += 8;
  }

  return v3;
}

const void *MIL::IRCircularBufferValueTypeImpl::GetAttribute(uint64_t a1, const void **a2)
{
  result = MIL::IRCircularBufferValueTypeImpl::TryGetAttribute(a1, a2);
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::out_of_range::out_of_range[abi:ne200100](exception, "Attribute does not exist.");
    __cxa_throw(exception, off_278235F78, MEMORY[0x277D825F8]);
  }

  return result;
}

const void *MIL::IRCircularBufferValueTypeImpl::TryGetAttribute(uint64_t a1, const void **a2)
{
  v2 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>((*(a1 + 8) + 72), a2);
  if (!v2)
  {
    return 0;
  }

  v4 = v2[5];
  v3 = v2[6];
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return v4;
}

const void **MIL::IRCircularBufferValueTypeImpl::TryGetAttributeSharedPtr@<X0>(uint64_t a1@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  result = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>((*(a1 + 8) + 72), a2);
  if (result)
  {
    v5 = result[6];
    *a3 = result[5];
    a3[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(v5 + 1, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
  }

  return result;
}

uint64_t MIL::IRCircularBufferValueType::GetNumElements(MIL::IRCircularBufferValueType *this)
{
  v1 = *(*(*(this + 1) + 8) + 8);
  v2 = *v1;
  v3 = v1[1];
  v4 = 1;
  while (v2 != v3)
  {
    v5 = (*(**v2 + 16))();
    if (!v5)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::range_error::range_error[abi:ne200100](exception, "Cannot determine number of elements in memory layout with unknown dimension.");
      __cxa_throw(exception, off_278235F68, MEMORY[0x277D825E0]);
    }

    v4 *= (*(*v5 + 48))(v5);
    v2 += 8;
  }

  return v4;
}

void sub_217FDFF64(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  *(v1 - 40) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRCircularBufferValueType::GetRank(MIL::IRCircularBufferValueType *this)
{
  v1 = *(*(*(this + 1) + 8) + 8);
  v2 = (v1[1] - *v1) >> 3;
  {
    return v2;
  }

  else
  {
    return -1;
  }
}

void MIL::IRStateValueType::~IRStateValueType(MIL::IRStateValueType *this)
{
  v2 = *(this + 1);
  *this = &unk_2829E3158;
  *(this + 1) = 0;
  if (v2)
  {
    MEMORY[0x21CEAFEA0](v2, 0x60C4044C4A2DFLL);
  }
}

{
  v2 = *(this + 1);
  *this = &unk_2829E3158;
  *(this + 1) = 0;
  if (v2)
  {
    MEMORY[0x21CEAFEA0](v2, 0x60C4044C4A2DFLL);
  }
}

{
  v2 = *(this + 1);
  *this = &unk_2829E3158;
  *(this + 1) = 0;
  if (v2)
  {
    MEMORY[0x21CEAFEA0](v2, 0x60C4044C4A2DFLL);
  }

  JUMPOUT(0x21CEAFEA0);
}

void *MIL::IRStateValueType::IRStateValueType(void *this)
{
  *this = &unk_2829E3158;
  this[1] = 0;
  return this;
}

{
  *this = &unk_2829E3158;
  this[1] = 0;
  return this;
}

void *MIL::IRStateValueType::IRStateValueType(void *result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  *result = &unk_2829E3158;
  result[1] = v2;
  return result;
}

{
  v2 = *a2;
  *a2 = 0;
  *result = &unk_2829E3158;
  result[1] = v2;
  return result;
}

void sub_217FE0358(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  *(v1 - 40) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_217FE047C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  *(v1 - 40) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  _Unwind_Resume(exception_object);
}

void MIL::IRConstantPropertyImpl::~IRConstantPropertyImpl(MIL::IRConstantPropertyImpl *this)
{
  v2 = *(this + 2);
  if (v2 != -1)
  {
    (off_2829E3380[v2])(&v3, this);
  }

  *(this + 2) = -1;
}

uint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_10unique_ptrIN12_GLOBAL__N_115PropertyStorageIxEENS_14default_deleteISB_EEEENS8_INSA_IhEENSC_ISF_EEEENS8_INSA_IyEENSC_ISI_EEEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSM_1EJSE_SH_SK_EEEEEEDcSO_DpT0_(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  *a2 = 0;
  if (result)
  {
    JUMPOUT(0x21CEAFEA0);
  }

  return result;
}

uint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_10unique_ptrIN12_GLOBAL__N_115PropertyStorageIxEENS_14default_deleteISB_EEEENS8_INSA_IhEENSC_ISF_EEEENS8_INSA_IyEENSC_ISI_EEEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSM_1EJSE_SH_SK_EEEEEEDcSO_DpT0_(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  *a2 = 0;
  if (result)
  {
    JUMPOUT(0x21CEAFEA0);
  }

  return result;
}

uint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_10unique_ptrIN12_GLOBAL__N_115PropertyStorageIxEENS_14default_deleteISB_EEEENS8_INSA_IhEENSC_ISF_EEEENS8_INSA_IyEENSC_ISI_EEEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSM_1EJSE_SH_SK_EEEEEEDcSO_DpT0_(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  *a2 = 0;
  if (result)
  {
    JUMPOUT(0x21CEAFEA0);
  }

  return result;
}

void anonymous namespace::IRTensorValueTypeImpl::~IRTensorValueTypeImpl(_anonymous_namespace_::IRTensorValueTypeImpl *this)
{
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(this + 32);
  v2 = *(this + 3);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

{
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(this + 32);
  v2 = *(this + 3);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  JUMPOUT(0x21CEAFEA0);
}

const void *anonymous namespace::IRTensorValueTypeImpl::TryGetAttribute(uint64_t a1, const void **a2)
{
  v2 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>((a1 + 32), a2);
  if (!v2)
  {
    return 0;
  }

  v4 = v2[5];
  v3 = v2[6];
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return v4;
}

const void **anonymous namespace::IRTensorValueTypeImpl::TryGetAttributeSharedPtr@<X0>(uint64_t a1@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  result = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>((a1 + 32), a2);
  if (result)
  {
    v5 = result[6];
    *a3 = result[5];
    a3[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(v5 + 1, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
  }

  return result;
}

void sub_217FE0748(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  a10 = 0;
  if (v10)
  {
    std::default_delete<std::vector<MIL::IRDimension const*>>::operator()[abi:ne200100](&a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<std::vector<MIL::IRDimension const*> *,std::shared_ptr<std::vector<MIL::IRDimension const*>>::__shared_ptr_default_delete<std::vector<MIL::IRDimension const*>,std::vector<MIL::IRDimension const*>>,std::allocator<std::vector<MIL::IRDimension const*>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t std::__shared_ptr_pointer<std::vector<MIL::IRDimension const*> *,std::shared_ptr<std::vector<MIL::IRDimension const*>>::__shared_ptr_default_delete<std::vector<MIL::IRDimension const*>,std::vector<MIL::IRDimension const*>>,std::allocator<std::vector<MIL::IRDimension const*>>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::default_delete<std::vector<MIL::IRDimension const*>>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *a2;
    if (*a2)
    {
      *(a2 + 8) = v2;
      operator delete(v2);
    }

    JUMPOUT(0x21CEAFEA0);
  }
}

void *std::vector<MIL::Bf16>::vector[abi:ne200100](void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<MIL::Fp16>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_217FE08A4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<MIL::Fp8E5M2>::vector[abi:ne200100](void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_217FE0918(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<MIL::Fp8E4M3FN>::vector[abi:ne200100](void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_217FE098C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<MIL::Fp16>::vector[abi:ne200100](void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<MIL::Fp16>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<MIL::Fp16>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_217FE0A04(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<unsigned char>::__init_with_size[abi:ne200100]<std::__bit_iterator<std::vector<BOOL>,true,0ul>,std::__bit_iterator<std::vector<BOOL>,true,0ul>>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](result, a6);
  }

  return result;
}

void sub_217FE0A8C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<unsigned char>::__construct_at_end<std::__bit_iterator<std::vector<BOOL>,true,0ul>,std::__bit_iterator<std::vector<BOOL>,true,0ul>>(uint64_t result, void *a2, int a3, void *a4, int a5)
{
  v5 = *(result + 8);
  while (a2 != a4 || a3 != a5)
  {
    *v5++ = (*a2 >> a3) & 1;
    a2 += a3 == 63;
    if (a3 == 63)
    {
      a3 = 0;
    }

    else
    {
      ++a3;
    }
  }

  *(result + 8) = v5;
  return result;
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(void *a1, const void **a2)
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

void sub_217FE0D6C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t *std::shared_ptr<MIL::AbstractConstExpr const>::shared_ptr[abi:ne200100]<MIL::AbstractConstExpr const,std::default_delete<MIL::AbstractConstExpr const>,0>(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  *result = *a2;
  if (v2)
  {
    operator new();
  }

  result[1] = 0;
  *a2 = 0;
  return result;
}

void std::__shared_ptr_pointer<MIL::AbstractConstExpr const *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t std::__shared_ptr_pointer<MIL::AbstractConstExpr const *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<MIL::AbstractConstExpr const *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_217FE0F90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  MEMORY[0x21CEAFEA0](v18, v17);
  _Unwind_Resume(a1);
}

void sub_217FE10B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  MEMORY[0x21CEAFEA0](v18, v17);
  _Unwind_Resume(a1);
}

void sub_217FE11D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  MEMORY[0x21CEAFEA0](v18, v17);
  _Unwind_Resume(a1);
}

void sub_217FE12F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  MEMORY[0x21CEAFEA0](v18, v17);
  _Unwind_Resume(a1);
}

void sub_217FE1410(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  MEMORY[0x21CEAFEA0](v18, v17);
  _Unwind_Resume(a1);
}

void sub_217FE1530(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  MEMORY[0x21CEAFEA0](v18, v17);
  _Unwind_Resume(a1);
}

void sub_217FE1650(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  MEMORY[0x21CEAFEA0](v18, v17);
  _Unwind_Resume(a1);
}

void sub_217FE1770(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  MEMORY[0x21CEAFEA0](v18, v17);
  _Unwind_Resume(a1);
}

void sub_217FE1890(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  MEMORY[0x21CEAFEA0](v18, v17);
  _Unwind_Resume(a1);
}

void sub_217FE19B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  MEMORY[0x21CEAFEA0](v18, v17);
  _Unwind_Resume(a1);
}

void sub_217FE1AD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  MEMORY[0x21CEAFEA0](v18, v17);
  _Unwind_Resume(a1);
}

void sub_217FE1BF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  MEMORY[0x21CEAFEA0](v18, v17);
  _Unwind_Resume(a1);
}

void sub_217FE1D10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  MEMORY[0x21CEAFEA0](v18, v17);
  _Unwind_Resume(a1);
}

void sub_217FE1E30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  MEMORY[0x21CEAFEA0](v18, v17);
  _Unwind_Resume(a1);
}

void sub_217FE1F50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  MEMORY[0x21CEAFEA0](v18, v17);
  _Unwind_Resume(a1);
}

uint64_t std::vector<MIL::Fp8E5M2>::__init_with_size[abi:ne200100]<MIL::Fp8E5M2 const*,MIL::Fp8E5M2 const*>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_217FE1FE4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<MIL::Fp8E4M3FN>::__init_with_size[abi:ne200100]<MIL::Fp8E4M3FN const*,MIL::Fp8E4M3FN const*>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_217FE2058(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned long long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_217FE20CC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short const*,unsigned short const*>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<MIL::Fp16>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_217FE2140(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}