uint64_t StorageAccessor::EspressoStorageAccessor::GetDataView<float>@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v11 = a2;
  StorageAccessor::EspressoStorageAccessor::EnsureLoaded(a1);
  v5 = std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::find<long long>((a1 + 40), &v11);
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::range_error::range_error[abi:ne200100](exception, "blobv1 identifier not found");
    __cxa_throw(exception, off_1E7C1A148, MEMORY[0x1E69E5268]);
  }

  Data = StorageAccessor::MMapFileAccessor::ReadData(*(a1 + 32), v5[3], v5[4]);
  a3[1] = 0;
  a3[2] = 0;
  if (v7 >= 4)
  {
    v8 = Data;
  }

  else
  {
    v8 = 0;
  }

  *a3 = 0;
  return std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(a3, v8, v8 + (v7 & 0xFFFFFFFFFFFFFFFCLL), v7 >> 2);
}

void StorageAccessor::EspressoStorageAccessor::EnsureLoaded(StorageAccessor::EspressoStorageAccessor *this)
{
  v3 = this;
  v1 = (this + 24);
  v2 = &v3;
  if (atomic_load_explicit(v1, memory_order_acquire) != -1)
  {
    v5 = &v2;
    v4 = &v5;
    std::__call_once(v1, &v4, std::__call_once_proxy[abi:ne200100]<std::tuple<StorageAccessor::EspressoStorageAccessor::EnsureLoaded(void)::$_1 &&>>);
  }
}

uint64_t StorageAccessor::EspressoStorageAccessor::GetDataView<signed char>@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v12 = a2;
  StorageAccessor::EspressoStorageAccessor::EnsureLoaded(a1);
  v5 = std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::find<long long>((a1 + 40), &v12);
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::range_error::range_error[abi:ne200100](exception, "blobv1 identifier not found");
    __cxa_throw(exception, off_1E7C1A148, MEMORY[0x1E69E5268]);
  }

  Data = StorageAccessor::MMapFileAccessor::ReadData(*(a1 + 32), v5[3], v5[4]);
  v8 = v7;
  a3[1] = 0;
  a3[2] = 0;
  if (v7)
  {
    v9 = Data;
  }

  else
  {
    v9 = 0;
  }

  *a3 = 0;
  return std::vector<signed char>::__init_with_size[abi:ne200100]<signed char const*,signed char const*>(a3, v9, v9 + v8, v8);
}

uint64_t StorageAccessor::EspressoStorageAccessor::GetDataView<unsigned char>@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v12 = a2;
  StorageAccessor::EspressoStorageAccessor::EnsureLoaded(a1);
  v5 = std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::find<long long>((a1 + 40), &v12);
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::range_error::range_error[abi:ne200100](exception, "blobv1 identifier not found");
    __cxa_throw(exception, off_1E7C1A148, MEMORY[0x1E69E5268]);
  }

  Data = StorageAccessor::MMapFileAccessor::ReadData(*(a1 + 32), v5[3], v5[4]);
  v8 = v7;
  a3[1] = 0;
  a3[2] = 0;
  if (v7)
  {
    v9 = Data;
  }

  else
  {
    v9 = 0;
  }

  *a3 = 0;
  return std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(a3, v9, v9 + v8, v8);
}

void *StorageAccessor::EspressoStorageAccessor::SetDataView<float>(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v11 = a2;
  StorageAccessor::EspressoStorageAccessor::EnsureLoaded(a1);
  v5 = *a3;
  v6 = a3[1] - *a3;
  if (!v6)
  {
    v5 = 0;
  }

  v10[0] = v5;
  v10[1] = v6;
  v7 = std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::find<long long>((a1 + 40), &v11);
  if (!v7)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::range_error::range_error[abi:ne200100](exception, "blobv1 identifier not found");
    __cxa_throw(exception, off_1E7C1A148, MEMORY[0x1E69E5268]);
  }

  return StorageAccessor::MMapFileAccessor::WriteData(*(a1 + 32), v7[3], v10);
}

void *StorageAccessor::EspressoStorageAccessor::SetDataView<signed char>(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v11 = a2;
  StorageAccessor::EspressoStorageAccessor::EnsureLoaded(a1);
  v5 = *a3;
  v6 = a3[1] - *a3;
  if (!v6)
  {
    v5 = 0;
  }

  v10[0] = v5;
  v10[1] = v6;
  v7 = std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::find<long long>((a1 + 40), &v11);
  if (!v7)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::range_error::range_error[abi:ne200100](exception, "blobv1 identifier not found");
    __cxa_throw(exception, off_1E7C1A148, MEMORY[0x1E69E5268]);
  }

  return StorageAccessor::MMapFileAccessor::WriteData(*(a1 + 32), v7[3], v10);
}

void *StorageAccessor::EspressoStorageAccessor::SetDataView<unsigned char>(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v11 = a2;
  StorageAccessor::EspressoStorageAccessor::EnsureLoaded(a1);
  v5 = *a3;
  v6 = a3[1] - *a3;
  if (!v6)
  {
    v5 = 0;
  }

  v10[0] = v5;
  v10[1] = v6;
  v7 = std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::find<long long>((a1 + 40), &v11);
  if (!v7)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::range_error::range_error[abi:ne200100](exception, "blobv1 identifier not found");
    __cxa_throw(exception, off_1E7C1A148, MEMORY[0x1E69E5268]);
  }

  return StorageAccessor::MMapFileAccessor::WriteData(*(a1 + 32), v7[3], v10);
}

void StorageAccessor::EspressoStorageAccessor::~EspressoStorageAccessor(StorageAccessor::MMapFileAccessor **this)
{
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table((this + 5));
  std::unique_ptr<StorageAccessor::MMapFileAccessor>::reset[abi:ne200100](this + 4, 0);
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

double StorageAccessor::EspressoStorageAccessor::EspressoStorageAccessor(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v2;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  result = 0.0;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 72) = 1065353216;
  return result;
}

StorageAccessor::MMapFileAccessor *std::unique_ptr<StorageAccessor::MMapFileAccessor>::reset[abi:ne200100](StorageAccessor::MMapFileAccessor **a1, StorageAccessor::MMapFileAccessor *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    StorageAccessor::MMapFileAccessor::~MMapFileAccessor(result);

    JUMPOUT(0x1B8C85350);
  }

  return result;
}

void sub_1B58767E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::unique_ptr<StorageAccessor::MMapFileAccessor>::reset[abi:ne200100](va, 0);
  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,StorageAccessor::EspressoStorageAccessor::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,StorageAccessor::EspressoStorageAccessor::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,StorageAccessor::EspressoStorageAccessor::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,StorageAccessor::EspressoStorageAccessor::FileInfo>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(void *a1, unint64_t *a2)
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

uint64_t std::vector<signed char>::__init_with_size[abi:ne200100]<signed char const*,signed char const*>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<quasar::rescoring::FeatureType>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B5876AB4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<quasar::rescoring::FeatureType>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B5876B28(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5877924(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (*(v27 - 25) < 0)
  {
    operator delete(*(v27 - 48));
  }

  _Unwind_Resume(exception_object);
}

void quasar::OnlineLatticeBiglmLmeFasterDecoder::findClassLmSymbols(const std::string *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 1065353216;
  v112 = 0;
  v113 = 0;
  v114 = 0;
  memset(&v111, 0, sizeof(v111));
  kaldi::SplitStringToVector(this + 129, ",", 1, &v112);
  kaldi::SplitStringToFloats<float>(&this[130], ",", 1, &v111);
  if (v111.__end_ == v111.__begin_)
  {
    v3 = v112;
    v4 = v113;
  }

  else
  {
    v3 = v112;
    v4 = v113;
    if (0xAAAAAAAAAAAAAAABLL * ((v113 - v112) >> 3) != v111.__end_ - v111.__begin_)
    {
      v109 = 0u;
      v110 = 0u;
      v107 = 0u;
      v108 = 0u;
      v105 = 0u;
      v106 = 0u;
      v103 = 0u;
      v104 = 0u;
      v101 = 0u;
      v102 = 0u;
      v99 = 0u;
      v100 = 0u;
      v97 = 0u;
      v98 = 0u;
      v95 = 0u;
      v96 = 0u;
      *__p = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Could not match classLM scale number", 36);
      quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
    }
  }

  if (v4 != v3)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = (v3 + v5);
      if (*(v7 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v93, *v7, *(v7 + 1));
      }

      else
      {
        v8 = *v7;
        v93.__r_.__value_.__r.__words[2] = *(v7 + 2);
        *&v93.__r_.__value_.__l.__data_ = v8;
      }

      v92 = quasar::QsrTextSymbolTable::Find(this[91].__r_.__value_.__l.__data_, &v93);
      if (v111.__end_ == v111.__begin_)
      {
        v9 = 1.0;
      }

      else
      {
        v9 = v111.__begin_[v6];
      }

      v89 = &v92;
      *(std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&this[136].__r_.__value_.__r.__words[2], &v92) + 8) = v9;
      if ((v93.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v93.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v93.__r_.__value_.__l.__size_;
      }

      std::string::basic_string[abi:ne200100](&v89, size + 6);
      if (v91 >= 0)
      {
        v11 = &v89;
      }

      else
      {
        v11 = v89;
      }

      if (size)
      {
        if ((v93.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v12 = &v93;
        }

        else
        {
          v12 = v93.__r_.__value_.__r.__words[0];
        }

        memmove(v11, v12, size);
      }

      strcpy(v11 + size, "-start");
      if ((v93.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v13 = HIBYTE(v93.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v13 = v93.__r_.__value_.__l.__size_;
      }

      std::string::basic_string[abi:ne200100](&v86, v13 + 4);
      if (v88 >= 0)
      {
        v14 = &v86;
      }

      else
      {
        v14 = v86;
      }

      if (v13)
      {
        if ((v93.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v15 = &v93;
        }

        else
        {
          v15 = v93.__r_.__value_.__r.__words[0];
        }

        memmove(v14, v15, v13);
      }

      strcpy(v14 + v13, "-end");
      v16 = v92 + 1;
      quasar::QsrTextSymbolTable::Find(this[91].__r_.__value_.__l.__data_, __p);
      v17 = SBYTE7(v95);
      if ((SBYTE7(v95) & 0x80u) == 0)
      {
        v18 = BYTE7(v95);
      }

      else
      {
        v18 = __p[1];
      }

      v19 = HIBYTE(v88);
      if (v88 < 0)
      {
        v19 = v87;
      }

      if (v18 == v19)
      {
        if ((SBYTE7(v95) & 0x80u) == 0)
        {
          v20 = __p;
        }

        else
        {
          v20 = __p[0];
        }

        if (v88 >= 0)
        {
          v21 = &v86;
        }

        else
        {
          v21 = v86;
        }

        v22 = memcmp(v20, v21, v18) != 0;
        if (v17 < 0)
        {
LABEL_51:
          operator delete(__p[0]);
          if (!v22)
          {
            goto LABEL_53;
          }

          goto LABEL_52;
        }
      }

      else
      {
        v22 = 1;
        if (SBYTE7(v95) < 0)
        {
          goto LABEL_51;
        }
      }

      if (!v22)
      {
        goto LABEL_53;
      }

LABEL_52:
      v16 = quasar::QsrTextSymbolTable::Find(this[91].__r_.__value_.__l.__data_, &v86);
      if (v16 == -1)
      {
        v109 = 0u;
        v110 = 0u;
        v107 = 0u;
        v108 = 0u;
        v105 = 0u;
        v106 = 0u;
        v103 = 0u;
        v104 = 0u;
        v101 = 0u;
        v102 = 0u;
        v99 = 0u;
        v100 = 0u;
        v97 = 0u;
        v98 = 0u;
        v95 = 0u;
        v96 = 0u;
        *__p = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
        v57 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Could not find ", 16);
        if (v88 >= 0)
        {
          v58 = &v86;
        }

        else
        {
          v58 = v86;
        }

        if (v88 >= 0)
        {
          v59 = HIBYTE(v88);
        }

        else
        {
          v59 = v87;
        }

        v60 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v57, v58, v59);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v60, " in base symbol table", 22);
        quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
      }

LABEL_53:
      v23 = v92 + 2;
      quasar::QsrTextSymbolTable::Find(this[91].__r_.__value_.__l.__data_, __p);
      v24 = SBYTE7(v95);
      if ((SBYTE7(v95) & 0x80u) == 0)
      {
        v25 = BYTE7(v95);
      }

      else
      {
        v25 = __p[1];
      }

      v26 = HIBYTE(v91);
      if (v91 < 0)
      {
        v26 = v90;
      }

      if (v25 == v26)
      {
        if ((SBYTE7(v95) & 0x80u) == 0)
        {
          v27 = __p;
        }

        else
        {
          v27 = __p[0];
        }

        if (v91 >= 0)
        {
          v28 = &v89;
        }

        else
        {
          v28 = v89;
        }

        v29 = memcmp(v27, v28, v25) != 0;
        if ((v24 & 0x80000000) == 0)
        {
LABEL_66:
          if (v29)
          {
            goto LABEL_70;
          }

          goto LABEL_71;
        }
      }

      else
      {
        v29 = 1;
        if ((SBYTE7(v95) & 0x80000000) == 0)
        {
          goto LABEL_66;
        }
      }

      operator delete(__p[0]);
      if (v29)
      {
LABEL_70:
        v23 = quasar::QsrTextSymbolTable::Find(this[91].__r_.__value_.__l.__data_, &v89);
        if (v23 == -1)
        {
          v109 = 0u;
          v110 = 0u;
          v107 = 0u;
          v108 = 0u;
          v105 = 0u;
          v106 = 0u;
          v103 = 0u;
          v104 = 0u;
          v101 = 0u;
          v102 = 0u;
          v99 = 0u;
          v100 = 0u;
          v97 = 0u;
          v98 = 0u;
          v95 = 0u;
          v96 = 0u;
          *__p = 0u;
          kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
          v61 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Could not find ", 16);
          if (v91 >= 0)
          {
            v62 = &v89;
          }

          else
          {
            v62 = v89;
          }

          if (v91 >= 0)
          {
            v63 = HIBYTE(v91);
          }

          else
          {
            v63 = v90;
          }

          v64 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v61, v62, v63);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v64, " in base symbol table", 22);
          quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
        }
      }

LABEL_71:
      v115 = &v92;
      v30 = std::__hash_table<std::__hash_value_type<int,std::pair<int,kaldi::quasar::ClassLmSymbolType>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::pair<int,kaldi::quasar::ClassLmSymbolType>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::pair<int,kaldi::quasar::ClassLmSymbolType>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::pair<int,kaldi::quasar::ClassLmSymbolType>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(a2, &v92);
      *(v30 + 5) = v23;
      *(v30 + 6) = v16;
      if (SHIBYTE(v88) < 0)
      {
        operator delete(v86);
      }

      if (SHIBYTE(v91) < 0)
      {
        operator delete(v89);
      }

      if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v93.__r_.__value_.__l.__data_);
      }

      ++v6;
      v3 = v112;
      v5 += 24;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((v113 - v112) >> 3) > v6);
  }

  if ((SHIBYTE(this[128].__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    if (!this[128].__r_.__value_.__l.__size_)
    {
      goto LABEL_135;
    }
  }

  else if (!*(&this[128].__r_.__value_.__s + 23))
  {
    goto LABEL_135;
  }

  if ((SHIBYTE(this[132].__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    if (!this[132].__r_.__value_.__l.__size_)
    {
      goto LABEL_135;
    }
  }

  else if (!*(&this[132].__r_.__value_.__s + 23))
  {
    goto LABEL_135;
  }

  if ((SHIBYTE(this[133].__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    if (!this[133].__r_.__value_.__l.__size_)
    {
      goto LABEL_135;
    }

    goto LABEL_90;
  }

  if (*(&this[133].__r_.__value_.__s + 23))
  {
LABEL_90:
    memset(&v93, 0, sizeof(v93));
    v89 = 0;
    v90 = 0;
    v91 = 0;
    v86 = 0;
    v87 = 0;
    v88 = 0;
    kaldi::SplitStringToVector(this + 128, ",", 1, &v93);
    kaldi::SplitStringToVector(this + 132, ",", 1, &v89);
    kaldi::SplitStringToVector(this + 133, ",", 1, &v86);
    v31 = 0xAAAAAAAAAAAAAAABLL * ((v93.__r_.__value_.__l.__size_ - v93.__r_.__value_.__r.__words[0]) >> 3);
    if (v90 - v89 != v93.__r_.__value_.__l.__size_ - v93.__r_.__value_.__r.__words[0] || v87 - v86 != v93.__r_.__value_.__l.__size_ - v93.__r_.__value_.__r.__words[0])
    {
      v109 = 0u;
      v110 = 0u;
      v107 = 0u;
      v108 = 0u;
      v105 = 0u;
      v106 = 0u;
      v103 = 0u;
      v104 = 0u;
      v101 = 0u;
      v102 = 0u;
      v99 = 0u;
      v100 = 0u;
      v97 = 0u;
      v98 = 0u;
      v95 = 0u;
      v96 = 0u;
      *__p = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      v80 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, " Expected number of classLM symbols for base/start/end match: ", 62);
      v81 = MEMORY[0x1B8C84C30](v80, v31);
      v82 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v81, " ", 1);
      v83 = MEMORY[0x1B8C84C30](v82, 0xAAAAAAAAAAAAAAABLL * ((v90 - v89) >> 3));
      v84 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v83, " ", 1);
      MEMORY[0x1B8C84C30](v84, 0xAAAAAAAAAAAAAAABLL * ((v87 - v86) >> 3));
      quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
    }

    if (v93.__r_.__value_.__l.__size_ == v93.__r_.__value_.__r.__words[0])
    {
LABEL_134:
      __p[0] = &v86;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
      __p[0] = &v89;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
      __p[0] = &v93;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
      goto LABEL_135;
    }

    v32 = 0;
    if (v31 <= 1)
    {
      v33 = 1;
    }

    else
    {
      v33 = 0xAAAAAAAAAAAAAAABLL * ((v93.__r_.__value_.__l.__size_ - v93.__r_.__value_.__r.__words[0]) >> 3);
    }

    while (1)
    {
      v34 = quasar::QsrTextSymbolTable::Find(this[91].__r_.__value_.__l.__data_, v93.__r_.__value_.__r.__words[0] + v32);
      v35 = v34;
      if (v34 == -1)
      {
        v109 = 0u;
        v110 = 0u;
        v107 = 0u;
        v108 = 0u;
        v105 = 0u;
        v106 = 0u;
        v103 = 0u;
        v104 = 0u;
        v101 = 0u;
        v102 = 0u;
        v99 = 0u;
        v100 = 0u;
        v97 = 0u;
        v98 = 0u;
        v95 = 0u;
        v96 = 0u;
        *__p = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
        v65 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Could not find ", 16);
        v66 = *(v93.__r_.__value_.__r.__words[0] + v32 + 23);
        if (v66 >= 0)
        {
          v67 = v93.__r_.__value_.__r.__words[0] + v32;
        }

        else
        {
          v67 = *(v93.__r_.__value_.__r.__words[0] + v32);
        }

        if (v66 >= 0)
        {
          v68 = *(v93.__r_.__value_.__r.__words[0] + v32 + 23);
        }

        else
        {
          v68 = *(v93.__r_.__value_.__r.__words[0] + v32 + 8);
        }

        v69 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v65, v67, v68);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v69, " in base symbol table", 22);
        quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
      }

      v36 = v34 + 1;
      quasar::QsrTextSymbolTable::Find(this[91].__r_.__value_.__l.__data_, __p);
      v37 = v86 + v32;
      v38 = SBYTE7(v95);
      if ((SBYTE7(v95) & 0x80u) == 0)
      {
        v39 = BYTE7(v95);
      }

      else
      {
        v39 = __p[1];
      }

      v40 = v37[23];
      v41 = v40;
      if ((v40 & 0x80u) != 0)
      {
        v40 = *(v37 + 1);
      }

      if (v39 == v40)
      {
        if ((SBYTE7(v95) & 0x80u) == 0)
        {
          v42 = __p;
        }

        else
        {
          v42 = __p[0];
        }

        if (v41 >= 0)
        {
          v43 = v86 + v32;
        }

        else
        {
          v43 = *v37;
        }

        v44 = memcmp(v42, v43, v39) != 0;
        if (v38 < 0)
        {
LABEL_113:
          operator delete(__p[0]);
          if (!v44)
          {
            goto LABEL_115;
          }

          goto LABEL_114;
        }
      }

      else
      {
        v44 = 1;
        if (SBYTE7(v95) < 0)
        {
          goto LABEL_113;
        }
      }

      if (!v44)
      {
        goto LABEL_115;
      }

LABEL_114:
      v45 = quasar::QsrTextSymbolTable::Find(this[91].__r_.__value_.__l.__data_, v86 + v32);
      v36 = v45;
      if (v45 == -1)
      {
        v109 = 0u;
        v110 = 0u;
        v107 = 0u;
        v108 = 0u;
        v105 = 0u;
        v106 = 0u;
        v103 = 0u;
        v104 = 0u;
        v101 = 0u;
        v102 = 0u;
        v99 = 0u;
        v100 = 0u;
        v97 = 0u;
        v98 = 0u;
        v95 = 0u;
        v96 = 0u;
        *__p = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
        v70 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Could not find ", 16);
        v71 = *(v86 + v32 + 23);
        if (v71 >= 0)
        {
          v72 = v86 + v32;
        }

        else
        {
          v72 = *(v86 + v32);
        }

        if (v71 >= 0)
        {
          v73 = *(v86 + v32 + 23);
        }

        else
        {
          v73 = *(v86 + v32 + 8);
        }

        v74 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v70, v72, v73);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v74, " in base symbol table", 22);
        quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
      }

LABEL_115:
      v46 = v35 + 2;
      quasar::QsrTextSymbolTable::Find(this[91].__r_.__value_.__l.__data_, __p);
      v47 = v89 + v32;
      v48 = SBYTE7(v95);
      if ((SBYTE7(v95) & 0x80u) == 0)
      {
        v49 = BYTE7(v95);
      }

      else
      {
        v49 = __p[1];
      }

      v50 = v47[23];
      v51 = v50;
      if ((v50 & 0x80u) != 0)
      {
        v50 = *(v47 + 1);
      }

      if (v49 == v50)
      {
        if ((SBYTE7(v95) & 0x80u) == 0)
        {
          v52 = __p;
        }

        else
        {
          v52 = __p[0];
        }

        if (v51 >= 0)
        {
          v53 = v89 + v32;
        }

        else
        {
          v53 = *v47;
        }

        v54 = memcmp(v52, v53, v49) != 0;
        if ((v48 & 0x80000000) == 0)
        {
LABEL_128:
          if (v54)
          {
            goto LABEL_132;
          }

          goto LABEL_133;
        }
      }

      else
      {
        v54 = 1;
        if ((SBYTE7(v95) & 0x80000000) == 0)
        {
          goto LABEL_128;
        }
      }

      operator delete(__p[0]);
      if (v54)
      {
LABEL_132:
        v55 = quasar::QsrTextSymbolTable::Find(this[91].__r_.__value_.__l.__data_, v89 + v32);
        v46 = v55;
        if (v55 == -1)
        {
          v109 = 0u;
          v110 = 0u;
          v107 = 0u;
          v108 = 0u;
          v105 = 0u;
          v106 = 0u;
          v103 = 0u;
          v104 = 0u;
          v101 = 0u;
          v102 = 0u;
          v99 = 0u;
          v100 = 0u;
          v97 = 0u;
          v98 = 0u;
          v95 = 0u;
          v96 = 0u;
          *__p = 0u;
          kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
          v75 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Could not find ", 16);
          v76 = *(v89 + v32 + 23);
          if (v76 >= 0)
          {
            v77 = v89 + v32;
          }

          else
          {
            v77 = *(v89 + v32);
          }

          if (v76 >= 0)
          {
            v78 = *(v89 + v32 + 23);
          }

          else
          {
            v78 = *(v89 + v32 + 8);
          }

          v79 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v75, v77, v78);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v79, " in base symbol table", 22);
          quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
        }
      }

LABEL_133:
      LODWORD(__p[0]) = v35;
      v115 = __p;
      v56 = std::__hash_table<std::__hash_value_type<int,std::pair<int,kaldi::quasar::ClassLmSymbolType>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::pair<int,kaldi::quasar::ClassLmSymbolType>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::pair<int,kaldi::quasar::ClassLmSymbolType>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::pair<int,kaldi::quasar::ClassLmSymbolType>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(a2, __p);
      *(v56 + 5) = v46;
      *(v56 + 6) = v36;
      v32 += 24;
      if (!--v33)
      {
        goto LABEL_134;
      }
    }
  }

LABEL_135:
  if (v111.__begin_)
  {
    v111.__end_ = v111.__begin_;
    operator delete(v111.__begin_);
  }

  __p[0] = &v112;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
}

void sub_1B5878504(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, void **a21)
{
  a21 = &a10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a21);
  a21 = &a13;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a21);
  a21 = &a17;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a21);
  v23 = *(v21 - 176);
  if (v23)
  {
    *(v21 - 168) = v23;
    operator delete(v23);
  }

  a21 = (v21 - 152);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a21);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(a9);
  _Unwind_Resume(a1);
}

void sub_1B587856C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void **a30)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  v32 = *(v30 - 176);
  if (v32)
  {
    *(v30 - 168) = v32;
    operator delete(v32);
  }

  a30 = (v30 - 152);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a30);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(a9);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<quasar::OnlineLatticeBiglmLmeFasterDecoder::finishInit(void)::$_0,std::allocator<quasar::OnlineLatticeBiglmLmeFasterDecoder::finishInit(void)::$_0>,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> ()(std::string const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2D35A28;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<quasar::OnlineLatticeBiglmLmeFasterDecoder::finishInit(void)::$_0,std::allocator<quasar::OnlineLatticeBiglmLmeFasterDecoder::finishInit(void)::$_0>,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> ()(std::string const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<quasar::OnlineLatticeBiglmLmeFasterDecoder::finishInit(void)::$_1,std::allocator<quasar::OnlineLatticeBiglmLmeFasterDecoder::finishInit(void)::$_1>,std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase> ()(std::string const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2D35AA8;
  a2[1] = v2;
  return result;
}

void std::__function::__func<quasar::OnlineLatticeBiglmLmeFasterDecoder::finishInit(void)::$_1,std::allocator<quasar::OnlineLatticeBiglmLmeFasterDecoder::finishInit(void)::$_1>,std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase> ()(std::string const&)>::operator()(uint64_t a1@<X0>, uint64_t a2@<X1>, const void **a3@<X8>)
{
  v3 = *(a1 + 8);
  v4 = *(v3 + 376);
  v5 = *(v3 + 2228);
  v6 = *(v3 + 2224);
  LOBYTE(__p) = 0;
  v9 = 0;
  quasar::ModelLoader::readNeuralNetworkLm(v4, a2, v3 + 2200, v5, v6, &__p, a3, 0.0);
  if (v9 == 1 && v8 < 0)
  {
    operator delete(__p);
  }
}

void sub_1B587882C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<quasar::OnlineLatticeBiglmLmeFasterDecoder::finishInit(void)::$_1,std::allocator<quasar::OnlineLatticeBiglmLmeFasterDecoder::finishInit(void)::$_1>,std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase> ()(std::string const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<quasar::OnlineLatticeBiglmLmeFasterDecoder::insertLocationSpecificModels(std::shared_ptr<quasar::DecoderChainOutput> const&,std::shared_ptr<quasar::SpeechRequestData> const&,std::vector<fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> &,std::vector<int> &,quasar::Location &)::$_0,std::allocator<quasar::OnlineLatticeBiglmLmeFasterDecoder::insertLocationSpecificModels(std::shared_ptr<quasar::DecoderChainOutput> const&,std::shared_ptr<quasar::SpeechRequestData> const&,std::vector<fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> &,std::vector<int> &,quasar::Location &)::$_0>,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> ()(std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> const&)>::operator()@<X0>(uint64_t result@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  if (*(*(result + 8) + 2308) == 1)
  {
    std::allocate_shared[abi:ne200100]<quasar::StateAccessRecordingFst,std::allocator<quasar::StateAccessRecordingFst>,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> const&,0>();
  }

  v4 = a2[1];
  *a3 = *a2;
  a3[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<quasar::OnlineLatticeBiglmLmeFasterDecoder::insertLocationSpecificModels(std::shared_ptr<quasar::DecoderChainOutput> const&,std::shared_ptr<quasar::SpeechRequestData> const&,std::vector<fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> &,std::vector<int> &,quasar::Location &)::$_0,std::allocator<quasar::OnlineLatticeBiglmLmeFasterDecoder::insertLocationSpecificModels(std::shared_ptr<quasar::DecoderChainOutput> const&,std::shared_ptr<quasar::SpeechRequestData> const&,std::vector<fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> &,std::vector<int> &,quasar::Location &)::$_0>,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> ()(std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<quasar::OnlineLatticeBiglmLmeFasterDecoder::insertLocationSpecificModels(std::shared_ptr<quasar::DecoderChainOutput> const&,std::shared_ptr<quasar::SpeechRequestData> const&,std::vector<fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> &,std::vector<int> &,quasar::Location &)::$_1,std::allocator<quasar::OnlineLatticeBiglmLmeFasterDecoder::insertLocationSpecificModels(std::shared_ptr<quasar::DecoderChainOutput> const&,std::shared_ptr<quasar::SpeechRequestData> const&,std::vector<fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> &,std::vector<int> &,quasar::Location &)::$_1>,std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase> ()(std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase> const&)>::operator()(void *a1@<X1>, void *a2@<X8>)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }
}

uint64_t std::__function::__func<quasar::OnlineLatticeBiglmLmeFasterDecoder::insertLocationSpecificModels(std::shared_ptr<quasar::DecoderChainOutput> const&,std::shared_ptr<quasar::SpeechRequestData> const&,std::vector<fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> &,std::vector<int> &,quasar::Location &)::$_1,std::allocator<quasar::OnlineLatticeBiglmLmeFasterDecoder::insertLocationSpecificModels(std::shared_ptr<quasar::DecoderChainOutput> const&,std::shared_ptr<quasar::SpeechRequestData> const&,std::vector<fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> &,std::vector<int> &,quasar::Location &)::$_1>,std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase> ()(std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<quasar::OnlineLatticeBiglmLmeFasterDecoder::insertLocationSpecificModels(std::shared_ptr<quasar::DecoderChainOutput> const&,std::shared_ptr<quasar::SpeechRequestData> const&,std::vector<fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> &,std::vector<int> &,quasar::Location &)::$_2,std::allocator<quasar::OnlineLatticeBiglmLmeFasterDecoder::insertLocationSpecificModels(std::shared_ptr<quasar::DecoderChainOutput> const&,std::shared_ptr<quasar::SpeechRequestData> const&,std::vector<fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> &,std::vector<int> &,quasar::Location &)::$_2>,std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase> ()(std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase> const&)>::operator()(void *a1@<X1>, void *a2@<X8>)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }
}

uint64_t std::__function::__func<quasar::OnlineLatticeBiglmLmeFasterDecoder::insertLocationSpecificModels(std::shared_ptr<quasar::DecoderChainOutput> const&,std::shared_ptr<quasar::SpeechRequestData> const&,std::vector<fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> &,std::vector<int> &,quasar::Location &)::$_2,std::allocator<quasar::OnlineLatticeBiglmLmeFasterDecoder::insertLocationSpecificModels(std::shared_ptr<quasar::DecoderChainOutput> const&,std::shared_ptr<quasar::SpeechRequestData> const&,std::vector<fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> &,std::vector<int> &,quasar::Location &)::$_2>,std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase> ()(std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *quasar::rescoring::GetDecoder<quasar::OnlineLmRescoringDecoder>@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  v2 = *a1;
  v3 = a1[1];
  if (*a1 == v3)
  {
LABEL_5:
    memset(v12, 0, sizeof(v12));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v12);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "Unable to extract decoder of type ", 34);
    v7 = strlen((off_1F2D0CBF8 & 0x7FFFFFFFFFFFFFFFLL));
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, off_1F2D0CBF8 & 0x7FFFFFFFFFFFFFFFLL, v7);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, " from decoder chain.", 20);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v12);
  }

  while (1)
  {
    v5 = *v2;
    if (*v2)
    {
      {
        break;
      }
    }

    v2 += 16;
    if (v2 == v3)
    {
      goto LABEL_5;
    }
  }

  v9 = *(v2 + 8);
  {
    *a2 = 0;
    a2[1] = 0;
    goto LABEL_5;
  }

  v11 = *(v2 + 8);
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  *a2 = result;
  a2[1] = v11;
  return result;
}

uint64_t quasar::rescoring::GetNumberOfRescoringLanguageModels(quasar::rescoring *this, const quasar::OnlineLmRescoringDecoder *a2)
{
  v3 = *(this + 82);
  v4 = *(this + 81);
  if (v3 != v4 && quasar::gLogLevel >= 2)
  {
    memset(v8, 0, sizeof(v8));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v8);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "Using NNLMs during rescoring may lead to thread starvation within LibBNNS. ", 75);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "See rdar://problem/102243606 for more information.", 50);
    quasar::QuasarWarnMessage::~QuasarWarnMessage(v8);
    v3 = *(this + 82);
    v4 = *(this + 81);
  }

  return ((v3 - v4) >> 4) + ((*(this + 79) - *(this + 78)) >> 4);
}

void quasar::JapaneseDerivedEnumerator::JapaneseDerivedEnumerator(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __p[24] = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:ne200100]<0>(__p, "tag-sequences");
  quasar::PTree::getChild(a4, __p);
}

void sub_1B587914C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  std::wstring_convert<std::codecvt_utf8<char32_t,1114111ul,(std::codecvt_mode)0>,char32_t,std::allocator<char32_t>,std::allocator<char>>::~wstring_convert(v22 + 104);
  if (*(v22 + 103) < 0)
  {
    operator delete(*(v22 + 80));
  }

  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&a17);
  quasar::SimpleNameEnumerator::~SimpleNameEnumerator(v22);
  _Unwind_Resume(a1);
}

void quasar::JapaneseDerivedEnumerator::~JapaneseDerivedEnumerator(void **this)
{
  *this = &unk_1F2D35CA8;
  std::wstring_convert<std::codecvt_utf8<char32_t,1114111ul,(std::codecvt_mode)0>,char32_t,std::allocator<char32_t>,std::allocator<char>>::~wstring_convert((this + 13));
  if (*(this + 103) < 0)
  {
    operator delete(this[10]);
  }

  v2 = this + 7;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v2);
  *this = &unk_1F2D31F98;
  v2 = this + 4;
  std::vector<std::pair<int,std::vector<std::string>>>::__destroy_vector::operator()[abi:ne200100](&v2);
  quasar::NameEnumerator::~NameEnumerator(this);
}

{
  quasar::JapaneseDerivedEnumerator::~JapaneseDerivedEnumerator(this);

  JUMPOUT(0x1B8C85350);
}

void quasar::JapaneseDerivedEnumerator::preprocessWord(uint64_t a1, std::basic_string<char32_t> *a2, uint64_t *a3)
{
  size = a2->__r_.__value_.__l.__size_;
  v61 = a2;
  if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  }

  else
  {
    a2 = a2->__r_.__value_.__r.__words[0];
    v6 = size;
  }

  if (v6)
  {
    v7 = v6;
    v8 = a2;
    while (LOBYTE(v8->__r_.__value_.__l.__data_) != 64)
    {
      v8 = (v8 + 1);
      if (!--v7)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    memset(&__str, 0, sizeof(__str));
    std::wstring_convert<std::codecvt_utf8<char32_t,1114111ul,(std::codecvt_mode)0>,char32_t,std::allocator<char32_t>,std::allocator<char>>::from_bytes(a1 + 104, a2, (a2 + v6), v69);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    __str.__r_.__value_.__r.__words[2] = v70;
    *&__str.__r_.__value_.__l.__data_ = *v69;
    __src = 0;
    v67 = 0;
    v68 = 0;
    v9 = BYTE7(v70);
    if ((SBYTE7(v70) & 0x80u) == 0)
    {
      p_str = &__str;
    }

    else
    {
      p_str = __str.__r_.__value_.__r.__words[0];
    }

    if (SBYTE7(v70) < 0)
    {
      v9 = __str.__r_.__value_.__l.__size_;
    }

    if (v9)
    {
      v60 = a3;
      v11 = 0;
      v12 = 4 * v9;
      v13 = 5;
      do
      {
        v14 = p_str->__r_.__value_.__s.__data_[0];
        v15 = 1;
        if (p_str->__r_.__value_.__s.__data_[0] != 12540 && v14 - 12449 >= 0x5A)
        {
          if (v14 - 12352 >= 0x60)
          {
            v15 = 2;
            if ((vmaxv_u16(vmovn_s32(vcgtq_u32(xmmword_1B5B2CE30, vaddq_s32(vdupq_n_s32(v14), xmmword_1B5B2CE20)))) & 1) == 0 && (v14 - 13312) >> 6 >= 0x67 && (v14 - 0x20000) >> 5 >= 0x537 && (v14 - 173824) >> 5 >= 0x89 && (v14 & 0xFFFFFF00) != 0x3300 && (v14 & 0xFFFFFF80) != 0x2E80)
            {
              if (v14 - 48 >= 0xA)
              {
                if (u_isalpha(p_str->__r_.__value_.__s.__data_[0]))
                {
                  v15 = 4;
                }

                else
                {
                  v15 = 5;
                }

                v11 = v67;
              }

              else
              {
                v15 = 3;
              }
            }
          }

          else
          {
            v15 = 0;
          }
        }

        if (v14 == 12540 && v13 == 0)
        {
          v13 = 0;
        }

        else
        {
          v13 = v15;
        }

        if (v11 >= v68)
        {
          v17 = __src;
          v18 = v11 - __src;
          v19 = (v11 - __src) >> 2;
          v20 = v19 + 1;
          if ((v19 + 1) >> 62)
          {
            std::vector<int>::__throw_length_error[abi:ne200100]();
          }

          v21 = v68 - __src;
          if ((v68 - __src) >> 1 > v20)
          {
            v20 = v21 >> 1;
          }

          if (v21 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v22 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v22 = v20;
          }

          if (v22)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(&__src, v22);
          }

          v23 = (v11 - __src) >> 2;
          v24 = (4 * v19);
          v25 = (4 * v19 - 4 * v23);
          *v24 = v13;
          v11 = v24 + 1;
          memcpy(v25, v17, v18);
          v26 = __src;
          __src = v25;
          v67 = v11;
          v68 = 0;
          if (v26)
          {
            operator delete(v26);
          }
        }

        else
        {
          *v11++ = v13;
        }

        v67 = v11;
        p_str = (p_str + 4);
        v12 -= 4;
      }

      while (v12);
      v27 = __src;
      v28 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      v29 = (v11 - __src) >> 2;
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v28 = __str.__r_.__value_.__l.__size_;
      }

      if (v29 != v28)
      {
        v84 = 0u;
        v85 = 0u;
        v82 = 0u;
        v83 = 0u;
        v80 = 0u;
        v81 = 0u;
        v78 = 0u;
        v79 = 0u;
        v76 = 0u;
        v77 = 0u;
        v74 = 0u;
        v75 = 0u;
        v73 = 0u;
        v71 = 0u;
        v72 = 0u;
        *v69 = 0u;
        v70 = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v69);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v69, "Unable to get character type for some characters in the orthography", 67);
        quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v69);
      }

      if (__src != v11)
      {
        v30 = 1;
        if (v29 < 2)
        {
          v32 = 0;
        }

        else
        {
          v31 = 0;
          v32 = 0;
          do
          {
            v33 = v31;
            v34 = &v27[v31];
            if (*v34 != v34[1])
            {
              if (*v34 < 3)
              {
                std::basic_string<char32_t>::basic_string(&v65, &__str, v32, v33 - v32 + 1, __p);
                v35 = HIBYTE(v65.__r_.__value_.__r.__words[2]);
                if ((v65.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v36 = &v65;
                }

                else
                {
                  v36 = v65.__r_.__value_.__r.__words[0];
                }

                if ((v65.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v35 = v65.__r_.__value_.__l.__size_;
                }

                std::wstring_convert<std::codecvt_utf8<char32_t,1114111ul,(std::codecvt_mode)0>,char32_t,std::allocator<char32_t>,std::allocator<char>>::to_bytes(a1 + 104, v36, (v36 + 4 * v35), v69);
                if ((v61[1].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v37 = HIBYTE(v61[1].__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v37 = v61[1].__r_.__value_.__l.__size_;
                }

                std::string::basic_string[abi:ne200100](__p, v37 + 8);
                if (v64 >= 0)
                {
                  v38 = __p;
                }

                else
                {
                  v38 = __p[0];
                }

                if (v37)
                {
                  if ((v61[1].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    data = v61 + 1;
                  }

                  else
                  {
                    data = v61[1].__r_.__value_.__l.__data_;
                  }

                  memmove(v38, data, v37);
                }

                strcpy(v38 + v37, "-derived");
                v62 = 1;
                v40 = v60[1];
                if (v40 >= v60[2])
                {
                  v41 = std::vector<quasar::LmeDataFactoryBase::Word>::__emplace_back_slow_path<std::string,std::string,int>(v60, v69, __p, &v62);
                }

                else
                {
                  std::allocator<quasar::LmeDataFactoryBase::Word>::construct[abi:ne200100]<quasar::LmeDataFactoryBase::Word,std::string,std::string,int>(v60, v60[1], v69, __p, &v62);
                  v41 = v40 + 80;
                  v60[1] = v40 + 80;
                }

                v60[1] = v41;
                if (v64 < 0)
                {
                  operator delete(__p[0]);
                }

                if (SBYTE7(v70) < 0)
                {
                  operator delete(v69[0]);
                }

                if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v65.__r_.__value_.__l.__data_);
                }

                v27 = __src;
                v11 = v67;
              }

              v32 = v33 + 1;
            }

            v29 = v11 - v27;
            v31 = v33 + 1;
          }

          while (v29 > v33 + 2);
          v30 = v33 + 2;
        }

        v42 = v60;
        if (v29 != v30 - v32 && v27[v32] <= 2)
        {
          std::basic_string<char32_t>::basic_string(&v65, &__str, v32, v30 - v32, __p);
          v43 = HIBYTE(v65.__r_.__value_.__r.__words[2]);
          if ((v65.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v44 = &v65;
          }

          else
          {
            v44 = v65.__r_.__value_.__r.__words[0];
          }

          if ((v65.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v43 = v65.__r_.__value_.__l.__size_;
          }

          std::wstring_convert<std::codecvt_utf8<char32_t,1114111ul,(std::codecvt_mode)0>,char32_t,std::allocator<char32_t>,std::allocator<char>>::to_bytes(a1 + 104, v44, (v44 + 4 * v43), v69);
          if ((v61[1].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v45 = HIBYTE(v61[1].__r_.__value_.__r.__words[2]);
          }

          else
          {
            v45 = v61[1].__r_.__value_.__l.__size_;
          }

          std::string::basic_string[abi:ne200100](__p, v45 + 8);
          if (v64 >= 0)
          {
            v46 = __p;
          }

          else
          {
            v46 = __p[0];
          }

          if (v45)
          {
            if ((v61[1].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v47 = v61 + 1;
            }

            else
            {
              v47 = v61[1].__r_.__value_.__l.__data_;
            }

            memmove(v46, v47, v45);
          }

          strcpy(v46 + v45, "-derived");
          v62 = 1;
          v42 = v60;
          v48 = v60[1];
          if (v48 >= v60[2])
          {
            v49 = std::vector<quasar::LmeDataFactoryBase::Word>::__emplace_back_slow_path<std::string,std::string,int>(v60, v69, __p, &v62);
          }

          else
          {
            std::allocator<quasar::LmeDataFactoryBase::Word>::construct[abi:ne200100]<quasar::LmeDataFactoryBase::Word,std::string,std::string,int>(v60, v60[1], v69, __p, &v62);
            v49 = v48 + 80;
            v60[1] = v48 + 80;
          }

          v60[1] = v49;
          if (v64 < 0)
          {
            operator delete(__p[0]);
          }

          if (SBYTE7(v70) < 0)
          {
            operator delete(v69[0]);
          }

          if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v65.__r_.__value_.__l.__data_);
          }

          v27 = __src;
        }

        v50 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v50 = __str.__r_.__value_.__l.__size_;
        }

        if (v50 == 4)
        {
          if (v27 == v67)
          {
LABEL_126:
            std::basic_string<char32_t>::basic_string(&v65, &__str, 0, 2uLL, __p);
            v52 = HIBYTE(v65.__r_.__value_.__r.__words[2]);
            if ((v65.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v53 = &v65;
            }

            else
            {
              v53 = v65.__r_.__value_.__r.__words[0];
            }

            if ((v65.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v52 = v65.__r_.__value_.__l.__size_;
            }

            std::wstring_convert<std::codecvt_utf8<char32_t,1114111ul,(std::codecvt_mode)0>,char32_t,std::allocator<char32_t>,std::allocator<char>>::to_bytes(a1 + 104, v53, (v53 + 4 * v52), v69);
            LODWORD(__p[0]) = 1;
            v54 = v42[1];
            if (v54 >= v42[2])
            {
              v55 = std::vector<quasar::LmeDataFactoryBase::Word>::__emplace_back_slow_path<std::string,char const(&)[22],int>(v42, v69, "\\contact-last-derived", __p);
            }

            else
            {
              std::allocator<quasar::LmeDataFactoryBase::Word>::construct[abi:ne200100]<quasar::LmeDataFactoryBase::Word,std::string,char const(&)[22],int>(v42, v42[1], v69, "\\contact-last-derived", __p);
              v55 = v54 + 80;
              v42[1] = v54 + 80;
            }

            v42[1] = v55;
            if (SBYTE7(v70) < 0)
            {
              operator delete(v69[0]);
            }

            if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v65.__r_.__value_.__l.__data_);
            }

            std::basic_string<char32_t>::basic_string(&v65, &__str, 2uLL, 2uLL, __p);
            v56 = HIBYTE(v65.__r_.__value_.__r.__words[2]);
            if ((v65.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v57 = &v65;
            }

            else
            {
              v57 = v65.__r_.__value_.__r.__words[0];
            }

            if ((v65.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v56 = v65.__r_.__value_.__l.__size_;
            }

            std::wstring_convert<std::codecvt_utf8<char32_t,1114111ul,(std::codecvt_mode)0>,char32_t,std::allocator<char32_t>,std::allocator<char>>::to_bytes(a1 + 104, v57, (v57 + 4 * v56), v69);
            LODWORD(__p[0]) = 1;
            v58 = v42[1];
            if (v58 >= v42[2])
            {
              v59 = std::vector<quasar::LmeDataFactoryBase::Word>::__emplace_back_slow_path<std::string,char const(&)[23],int>(v42, v69, "\\contact-first-derived", __p);
            }

            else
            {
              std::allocator<quasar::LmeDataFactoryBase::Word>::construct[abi:ne200100]<quasar::LmeDataFactoryBase::Word,std::string,char const(&)[23],int>(v42, v42[1], v69, "\\contact-first-derived", __p);
              v59 = v58 + 80;
              v42[1] = v58 + 80;
            }

            v42[1] = v59;
            if (SBYTE7(v70) < 0)
            {
              operator delete(v69[0]);
            }

            if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v65.__r_.__value_.__l.__data_);
            }

            v27 = __src;
          }

          else
          {
            v51 = v27;
            while (*v51 == 2)
            {
              if (++v51 == v67)
              {
                goto LABEL_126;
              }
            }
          }
        }
      }

      if (v27)
      {
        v67 = v27;
        operator delete(v27);
      }
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }
  }
}

void sub_1B5879CF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, void *a61)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (*(v61 - 105) < 0)
  {
    operator delete(a61);
  }

  _Unwind_Resume(exception_object);
}

void quasar::JapaneseDerivedEnumerator::preprocess(uint64_t a1, uint64_t *a2)
{
  v28[0] = 0;
  v28[1] = 0;
  v27 = v28;
  v4 = a2[1];
  if (*a2 != v4)
  {
    v5 = *a2 + 24;
    do
    {
      std::pair<std::string,quasar::LmeDataFactoryBase::Word>::pair[abi:ne200100]<true,0>(v21, v5, (v5 - 24));
      std::__tree<std::__value_type<std::string,quasar::LmeDataFactoryBase::Word>,std::__map_value_compare<std::string,std::__value_type<std::string,quasar::LmeDataFactoryBase::Word>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,quasar::LmeDataFactoryBase::Word>>>::__emplace_unique_key_args<std::string,std::pair<std::string,quasar::LmeDataFactoryBase::Word>>(&v27, v21);
      v7 = v6;
      std::__tree<std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::__map_value_compare<std::pair<quasar::PronType,std::string>,std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::less<std::pair<quasar::PronType,std::string>>,true>,std::allocator<std::__value_type<std::pair<quasar::PronType,std::string>,float>>>::destroy(v26, *(&v26[0] + 1));
      if (SBYTE7(v25) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v23) < 0)
      {
        operator delete(*(&v22 + 1));
      }

      if (SBYTE7(v22) < 0)
      {
        operator delete(v21[0]);
      }

      if ((v7 & 1) == 0)
      {
        memset(v26, 0, sizeof(v26));
        *__p = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        *v21 = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v21);
        v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "Tag with multiple words: ", 25);
        v18 = *(v5 + 23);
        if (v18 >= 0)
        {
          v19 = v5;
        }

        else
        {
          v19 = *v5;
        }

        if (v18 >= 0)
        {
          v20 = *(v5 + 23);
        }

        else
        {
          v20 = *(v5 + 8);
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, v19, v20);
        quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v21);
      }

      v8 = v5 + 56;
      v5 += 80;
    }

    while (v8 != v4);
  }

  std::string::basic_string[abi:ne200100]<0>(v21, "\\contact-first");
  v9 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(&v27, v21);
  if (SBYTE7(v22) < 0)
  {
    operator delete(v21[0]);
  }

  if (v28 != v9)
  {
    std::string::basic_string[abi:ne200100]<0>(v21, "\\contact-first-phonetic");
    v10 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(&v27, v21);
    if (SBYTE7(v22) < 0)
    {
      operator delete(v21[0]);
    }

    if (v28 != v10)
    {
      LODWORD(v21[0]) = 1;
      v11 = a2[1];
      if (v11 >= a2[2])
      {
        v12 = std::vector<quasar::LmeDataFactoryBase::Word>::__emplace_back_slow_path<std::string &,char const(&)[23],int>(a2, v9 + 56, "\\contact-first-derived", v21);
      }

      else
      {
        std::allocator<quasar::LmeDataFactoryBase::Word>::construct[abi:ne200100]<quasar::LmeDataFactoryBase::Word,std::string &,char const(&)[23],int>(a2, a2[1], v9 + 56, "\\contact-first-derived", v21);
        v12 = v11 + 80;
        a2[1] = v11 + 80;
      }

      a2[1] = v12;
    }

    quasar::JapaneseDerivedEnumerator::preprocessWord(a1, (v9 + 56), a2);
  }

  std::string::basic_string[abi:ne200100]<0>(v21, "\\contact-last");
  v13 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(&v27, v21);
  if (SBYTE7(v22) < 0)
  {
    operator delete(v21[0]);
  }

  if (v28 != v13)
  {
    std::string::basic_string[abi:ne200100]<0>(v21, "\\contact-last-phonetic");
    v14 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(&v27, v21);
    if (SBYTE7(v22) < 0)
    {
      operator delete(v21[0]);
    }

    if (v28 != v14)
    {
      LODWORD(v21[0]) = 1;
      v15 = a2[1];
      if (v15 >= a2[2])
      {
        v16 = std::vector<quasar::LmeDataFactoryBase::Word>::__emplace_back_slow_path<std::string &,char const(&)[22],int>(a2, v13 + 56, "\\contact-last-derived", v21);
      }

      else
      {
        std::allocator<quasar::LmeDataFactoryBase::Word>::construct[abi:ne200100]<quasar::LmeDataFactoryBase::Word,std::string &,char const(&)[22],int>(a2, a2[1], v13 + 56, "\\contact-last-derived", v21);
        v16 = v15 + 80;
        a2[1] = v15 + 80;
      }

      a2[1] = v16;
    }

    quasar::JapaneseDerivedEnumerator::preprocessWord(a1, (v13 + 56), a2);
  }

  std::__tree<std::__value_type<std::string,quasar::LmeDataFactoryBase::Word>,std::__map_value_compare<std::string,std::__value_type<std::string,quasar::LmeDataFactoryBase::Word>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,quasar::LmeDataFactoryBase::Word>>>::destroy(&v27, v28[0]);
}

uint64_t quasar::JapaneseDerivedEnumerator::addDerivedEnumerations(uint64_t a1, const void **a2, uint64_t a3, uint64_t a4)
{
  v48 = *MEMORY[0x1E69E9840];
  if (*(a3 + 23) >= 0)
  {
    v7 = *(a3 + 23);
  }

  else
  {
    v7 = *(a3 + 8);
  }

  result = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(a4, a2);
  v9 = result;
  if (v7)
  {
    result = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(a4, a3);
    if (a4 + 8 != v9 && a4 + 8 != result)
    {
      v10 = *(v9 + 56);
      for (i = *(v9 + 64); v10 != i; v10 += 5)
      {
        v11 = *(result + 56);
        if (v11 != *(result + 64))
        {
          std::to_string(&v45, *(a1 + 296) * *(v10 + 12));
          if (*(v10 + 23) < 0)
          {
            std::string::__init_copy_ctor_external(&v46, *v10, *(v10 + 1));
          }

          else
          {
            v12 = *v10;
            v46.__r_.__value_.__r.__words[2] = *(v10 + 2);
            *&v46.__r_.__value_.__l.__data_ = v12;
          }

          if (*(v11 + 23) < 0)
          {
            std::string::__init_copy_ctor_external(&v47, *v11, *(v11 + 1));
          }

          else
          {
            v13 = *v11;
            v47.__r_.__value_.__r.__words[2] = *(v11 + 2);
            *&v47.__r_.__value_.__l.__data_ = v13;
          }

          v43 = &v45;
          v44 = 3;
          if (quasar::gLogLevel >= 6)
          {
            v41 = 0u;
            v42 = 0u;
            v39 = 0u;
            v40 = 0u;
            v37 = 0u;
            v38 = 0u;
            v35 = 0u;
            v36 = 0u;
            v33 = 0u;
            v34 = 0u;
            v32 = 0u;
            v30 = 0u;
            v31 = 0u;
            v28 = 0u;
            v29 = 0u;
            v26 = 0u;
            v27 = 0u;
            kaldi::KaldiWarnMessage::KaldiWarnMessage(&v26);
            v21 = " ";
            v22 = 1;
            quasar::join<std::initializer_list<std::string>>(&v43, &v21);
            if ((v25 & 0x80u) == 0)
            {
              p_p = &__p;
            }

            else
            {
              p_p = __p;
            }

            if ((v25 & 0x80u) == 0)
            {
              v15 = v25;
            }

            else
            {
              v15 = v24;
            }

            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v26, p_p, v15);
            if (v25 < 0)
            {
              operator delete(__p);
            }

            quasar::QuasarTraceMessage::~QuasarTraceMessage(&v26);
          }

          std::__tree<std::vector<std::string>,quasar::NameEnumerator::EnumComparator,std::allocator<std::vector<std::string>>>::__emplace_unique_impl<std::initializer_list<std::string>>();
        }
      }
    }
  }

  else if (a4 + 8 != result)
  {
    v16 = *(result + 56);
    if (v16 != *(result + 64))
    {
      std::to_string(&v45, *(a1 + 296) * *(v16 + 12));
      if (*(v16 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v46, *v16, *(v16 + 1));
      }

      else
      {
        v17 = *v16;
        v46.__r_.__value_.__r.__words[2] = *(v16 + 2);
        *&v46.__r_.__value_.__l.__data_ = v17;
      }

      v43 = &v45;
      v44 = 2;
      if (quasar::gLogLevel >= 6)
      {
        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        v32 = 0u;
        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v26);
        v21 = " ";
        v22 = 1;
        quasar::join<std::initializer_list<std::string>>(&v43, &v21);
        if ((v25 & 0x80u) == 0)
        {
          v18 = &__p;
        }

        else
        {
          v18 = __p;
        }

        if ((v25 & 0x80u) == 0)
        {
          v19 = v25;
        }

        else
        {
          v19 = v24;
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v26, v18, v19);
        if (v25 < 0)
        {
          operator delete(__p);
        }

        quasar::QuasarTraceMessage::~QuasarTraceMessage(&v26);
      }

      std::__tree<std::vector<std::string>,quasar::NameEnumerator::EnumComparator,std::allocator<std::vector<std::string>>>::__emplace_unique_impl<std::initializer_list<std::string>>();
    }
  }

  return result;
}

void sub_1B587A450(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20)
{
  if (*(v20 - 153) < 0)
  {
    operator delete(*(v20 - 176));
  }

  _Unwind_Resume(exception_object);
}

void quasar::JapaneseDerivedEnumerator::addEnumerations(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (quasar::gLogLevel >= 6)
  {
    v6 = *a2;
    v7 = a2[1];
    if (*a2 != v7)
    {
      do
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "-derived");
        v8 = quasar::endsWith((v6 + 24), __p);
        if (SBYTE7(v17) < 0)
        {
          operator delete(__p[0]);
        }

        v9 = quasar::gLogLevel < 6 || v8;
        if ((v9 & 1) == 0)
        {
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
          *__p = 0u;
          kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
          quasar::operator<<(__p, v6);
          quasar::QuasarTraceMessage::~QuasarTraceMessage(__p);
        }

        v6 += 80;
      }

      while (v6 != v7);
    }
  }

  quasar::SimpleNameEnumerator::addEnumerations(a1, a2, a3);
  __p[1] = 0;
  *&v17 = 0;
  __p[0] = &__p[1];
  v10 = *a2;
  v11 = a2[1];
  if (*a2 != v11)
  {
    do
    {
      v33 = v10 + 24;
      v12 = std::__tree<std::__value_type<std::string,std::vector<quasar::LmeDataFactoryBase::Word>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<quasar::LmeDataFactoryBase::Word>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<quasar::LmeDataFactoryBase::Word>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(__p, (v10 + 24));
      std::vector<quasar::LmeDataFactoryBase::Word>::push_back[abi:ne200100]((v12 + 56), v10);
      v10 += 80;
    }

    while (v10 != v11);
  }

  v13 = *(a1 + 56);
  v14 = *(a1 + 64);
  while (v13 != v14)
  {
    v15 = v13 + 3;
    quasar::JapaneseDerivedEnumerator::addDerivedEnumerations(a1, v13, (v13 + 3), __p);
    v13 = v15 + 3;
  }

  std::__tree<std::__value_type<std::string,std::vector<quasar::LmeDataFactoryBase::Word>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<quasar::LmeDataFactoryBase::Word>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<quasar::LmeDataFactoryBase::Word>>>>::destroy(__p, __p[1]);
}

_BYTE *std::pair<std::string,std::string>::pair[abi:ne200100]<char const(&)[22],char const(&)[15],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B587A778(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string,std::string>::pair[abi:ne200100]<char const(&)[14],char const(&)[23],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B587A7CC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<quasar::LmeDataFactoryBase::Word>::__emplace_back_slow_path<std::string,std::string,int>(uint64_t *a1, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  v4 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x333333333333333)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x999999999999999ALL * ((a1[2] - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 4) >= 0x199999999999999)
  {
    v8 = 0x333333333333333;
  }

  else
  {
    v8 = v5;
  }

  v18 = a1;
  if (v8)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::LmeDataFactoryBase::Word>>(a1, v8);
  }

  v15 = 0;
  v16 = 80 * v4;
  std::allocator<quasar::LmeDataFactoryBase::Word>::construct[abi:ne200100]<quasar::LmeDataFactoryBase::Word,std::string,std::string,int>(a1, 80 * v4, a2, a3, a4);
  v17 = 80 * v4 + 80;
  v9 = a1[1];
  v10 = 80 * v4 + *a1 - v9;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::LmeDataFactoryBase::Word>,quasar::LmeDataFactoryBase::Word*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<quasar::LmeDataFactoryBase::Word>::~__split_buffer(&v15);
  return v14;
}

void sub_1B587A920(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<quasar::LmeDataFactoryBase::Word>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::allocator<quasar::LmeDataFactoryBase::Word>::construct[abi:ne200100]<quasar::LmeDataFactoryBase::Word,std::string,std::string,int>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5)
{
  *v7 = *a3;
  v8 = *(a3 + 16);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  *__p = *a4;
  v6 = *(a4 + 16);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  quasar::LmeDataFactoryBase::Word::Word(a2, v7, __p, *a5);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v8) < 0)
  {
    operator delete(v7[0]);
  }
}

void sub_1B587A9BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::allocator<quasar::RecogAudioBuffer>::construct[abi:ne200100]<quasar::RecogAudioBuffer,unsigned long &,int,int,BOOL,char const(&)[1],std::shared_ptr<kaldi::Timer const>,int>(&a16);
  _Unwind_Resume(a1);
}

uint64_t std::vector<quasar::LmeDataFactoryBase::Word>::__emplace_back_slow_path<std::string,char const(&)[22],int>(uint64_t *a1, uint64_t a2, char *a3, unsigned int *a4)
{
  v4 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x333333333333333)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x999999999999999ALL * ((a1[2] - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 4) >= 0x199999999999999)
  {
    v8 = 0x333333333333333;
  }

  else
  {
    v8 = v5;
  }

  v18 = a1;
  if (v8)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::LmeDataFactoryBase::Word>>(a1, v8);
  }

  v15 = 0;
  v16 = 80 * v4;
  std::allocator<quasar::LmeDataFactoryBase::Word>::construct[abi:ne200100]<quasar::LmeDataFactoryBase::Word,std::string,char const(&)[22],int>(a1, 80 * v4, a2, a3, a4);
  v17 = 80 * v4 + 80;
  v9 = a1[1];
  v10 = 80 * v4 + *a1 - v9;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::LmeDataFactoryBase::Word>,quasar::LmeDataFactoryBase::Word*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<quasar::LmeDataFactoryBase::Word>::~__split_buffer(&v15);
  return v14;
}

void sub_1B587AB18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<quasar::LmeDataFactoryBase::Word>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::allocator<quasar::LmeDataFactoryBase::Word>::construct[abi:ne200100]<quasar::LmeDataFactoryBase::Word,std::string,char const(&)[22],int>(int a1, uint64_t a2, uint64_t a3, char *__s, unsigned int *a5)
{
  *v9 = *a3;
  v10 = *(a3 + 16);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, __s);
  quasar::LmeDataFactoryBase::Word::Word(a2, v9, __p, *a5);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v10) < 0)
  {
    operator delete(v9[0]);
  }
}

void sub_1B587ABB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t std::vector<quasar::LmeDataFactoryBase::Word>::__emplace_back_slow_path<std::string,char const(&)[23],int>(uint64_t *a1, uint64_t a2, char *a3, unsigned int *a4)
{
  v4 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x333333333333333)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x999999999999999ALL * ((a1[2] - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 4) >= 0x199999999999999)
  {
    v8 = 0x333333333333333;
  }

  else
  {
    v8 = v5;
  }

  v18 = a1;
  if (v8)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::LmeDataFactoryBase::Word>>(a1, v8);
  }

  v15 = 0;
  v16 = 80 * v4;
  std::allocator<quasar::LmeDataFactoryBase::Word>::construct[abi:ne200100]<quasar::LmeDataFactoryBase::Word,std::string,char const(&)[23],int>(a1, 80 * v4, a2, a3, a4);
  v17 = 80 * v4 + 80;
  v9 = a1[1];
  v10 = 80 * v4 + *a1 - v9;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::LmeDataFactoryBase::Word>,quasar::LmeDataFactoryBase::Word*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<quasar::LmeDataFactoryBase::Word>::~__split_buffer(&v15);
  return v14;
}

void sub_1B587AD1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<quasar::LmeDataFactoryBase::Word>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::allocator<quasar::LmeDataFactoryBase::Word>::construct[abi:ne200100]<quasar::LmeDataFactoryBase::Word,std::string,char const(&)[23],int>(int a1, uint64_t a2, uint64_t a3, char *__s, unsigned int *a5)
{
  *v9 = *a3;
  v10 = *(a3 + 16);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, __s);
  quasar::LmeDataFactoryBase::Word::Word(a2, v9, __p, *a5);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v10) < 0)
  {
    operator delete(v9[0]);
  }
}

void sub_1B587ADB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t std::vector<quasar::LmeDataFactoryBase::Word>::__emplace_back_slow_path<std::string &,char const(&)[23],int>(uint64_t *a1, uint64_t a2, char *a3, unsigned int *a4)
{
  v4 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x333333333333333)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x999999999999999ALL * ((a1[2] - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 4) >= 0x199999999999999)
  {
    v8 = 0x333333333333333;
  }

  else
  {
    v8 = v5;
  }

  v18 = a1;
  if (v8)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::LmeDataFactoryBase::Word>>(a1, v8);
  }

  v15 = 0;
  v16 = 80 * v4;
  std::allocator<quasar::LmeDataFactoryBase::Word>::construct[abi:ne200100]<quasar::LmeDataFactoryBase::Word,std::string &,char const(&)[23],int>(a1, 80 * v4, a2, a3, a4);
  v17 = 80 * v4 + 80;
  v9 = a1[1];
  v10 = 80 * v4 + *a1 - v9;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::LmeDataFactoryBase::Word>,quasar::LmeDataFactoryBase::Word*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<quasar::LmeDataFactoryBase::Word>::~__split_buffer(&v15);
  return v14;
}

void sub_1B587AF20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<quasar::LmeDataFactoryBase::Word>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::allocator<quasar::LmeDataFactoryBase::Word>::construct[abi:ne200100]<quasar::LmeDataFactoryBase::Word,std::string &,char const(&)[23],int>(int a1, uint64_t a2, uint64_t a3, char *__s, unsigned int *a5)
{
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v10, *a3, *(a3 + 8));
  }

  else
  {
    v10 = *a3;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, __s);
  quasar::LmeDataFactoryBase::Word::Word(a2, &v10, __p, *a5);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }
}

void sub_1B587AFD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t std::vector<quasar::LmeDataFactoryBase::Word>::__emplace_back_slow_path<std::string &,char const(&)[22],int>(uint64_t *a1, uint64_t a2, char *a3, unsigned int *a4)
{
  v4 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x333333333333333)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x999999999999999ALL * ((a1[2] - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 4) >= 0x199999999999999)
  {
    v8 = 0x333333333333333;
  }

  else
  {
    v8 = v5;
  }

  v18 = a1;
  if (v8)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::LmeDataFactoryBase::Word>>(a1, v8);
  }

  v15 = 0;
  v16 = 80 * v4;
  std::allocator<quasar::LmeDataFactoryBase::Word>::construct[abi:ne200100]<quasar::LmeDataFactoryBase::Word,std::string &,char const(&)[22],int>(a1, 80 * v4, a2, a3, a4);
  v17 = 80 * v4 + 80;
  v9 = a1[1];
  v10 = 80 * v4 + *a1 - v9;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::LmeDataFactoryBase::Word>,quasar::LmeDataFactoryBase::Word*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<quasar::LmeDataFactoryBase::Word>::~__split_buffer(&v15);
  return v14;
}

void sub_1B587B140(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<quasar::LmeDataFactoryBase::Word>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::allocator<quasar::LmeDataFactoryBase::Word>::construct[abi:ne200100]<quasar::LmeDataFactoryBase::Word,std::string &,char const(&)[22],int>(int a1, uint64_t a2, uint64_t a3, char *__s, unsigned int *a5)
{
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v10, *a3, *(a3 + 8));
  }

  else
  {
    v10 = *a3;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, __s);
  quasar::LmeDataFactoryBase::Word::Word(a2, &v10, __p, *a5);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }
}

void sub_1B587B1F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void kaldi::LatticeScoreCache::~LatticeScoreCache(kaldi::LatticeScoreCache *this)
{
  if (kaldi::g_kaldi_verbose_level >= 1)
  {
    v2 = *this;
    v3 = *(this + 1);
    if (*this == v3)
    {
      v4 = 0;
    }

    else
    {
      LODWORD(v4) = 0;
      do
      {
        v4 = (v4 + *(v2 + 24));
        v2 += 40;
      }

      while (v2 != v3);
    }

    if (kaldi::g_kaldi_verbose_level > 4)
    {
      kaldi::KaldiVlogMessage::KaldiVlogMessage(v8, 5);
      v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "Lattice score cache indices = ", 30);
      v6 = MEMORY[0x1B8C84C30](v5, 0xCCCCCCCCCCCCCCCDLL * ((*(this + 1) - *this) >> 3));
      v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, " vals = ", 8);
      MEMORY[0x1B8C84C00](v7, v4);
      kaldi::KaldiVlogMessage::~KaldiVlogMessage(v8);
    }
  }

  v8[0].__locale_ = this;
  std::vector<std::unordered_set<kaldi::quasar::AbstractAttribute *,kaldi::quasar::AttributeHash,kaldi::quasar::AttributeEquality,std::allocator<kaldi::quasar::AbstractAttribute *>>>::__destroy_vector::operator()[abi:ne200100](v8);
}

uint64_t *kaldi::LatticeScoreCache::CacheScore(kaldi::LatticeScoreCache *this, int a2, int a3, float a4)
{
  v9 = a3;
  v6 = *this;
  if (0xCCCCCCCCCCCCCCCDLL * ((*(this + 1) - *this) >> 3) <= a2)
  {
    std::vector<std::unordered_map<int,float>>::resize(this, a2 + 1);
    v6 = *this;
  }

  v10 = &v9;
  result = std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int &&>,std::tuple<>>((v6 + 40 * a2), &v9);
  *(result + 5) = a4;
  return result;
}

uint64_t std::vector<std::unordered_map<int,float>>::resize(void *a1, unint64_t a2)
{
  result = a1[1];
  v4 = 0xCCCCCCCCCCCCCCCDLL * ((result - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    return std::vector<std::unordered_map<int,float>>::__append(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 40 * a2;
    while (result != v7)
    {
      result = std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(result - 40);
    }

    a1[1] = v7;
  }

  return result;
}

float kaldi::LatticeScoreCache::GetScore(kaldi::LatticeScoreCache *this, uint64_t a2, unsigned int a3)
{
  v15 = a3;
  if ((a2 & 0x80000000) != 0 || 0xCCCCCCCCCCCCCCCDLL * ((*(this + 1) - *this) >> 3) <= a2)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v14);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "Supplied frame ", 15);
    v7 = MEMORY[0x1B8C84C00](v6, a2);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, " is out of range of cache which is in [0,", 41);
    v9 = MEMORY[0x1B8C84C30](v8, 0xCCCCCCCCCCCCCCCDLL * ((*(this + 1) - *this) >> 3));
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v9, ")");
    goto LABEL_7;
  }

  v4 = std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>((*this + 40 * a2), &v15);
  if (!v4)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v14);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "Pdf ", 4);
    v11 = MEMORY[0x1B8C84C00](v10, v15);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, " is not in cache for frame ", 27);
    MEMORY[0x1B8C84C00](v12, a2);
LABEL_7:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v14);
  }

  return *(v4 + 5);
}

uint64_t *kaldi::LatticeScoreCache::ScaleAcousticScores(uint64_t *this, float a2)
{
  v2 = *this;
  v3 = this[1];
  v4 = v3 - *this;
  if (v3 != *this)
  {
    v5 = 0;
    v6 = 0xCCCCCCCCCCCCCCCDLL * (v4 >> 3);
    if (v6 <= 1)
    {
      v6 = 1;
    }

    do
    {
      for (i = *(v2 + 40 * v5 + 16); i; i = *i)
      {
        i[5] = i[5] * a2;
      }

      ++v5;
    }

    while (v5 != v6);
  }

  return this;
}

uint64_t std::vector<std::unordered_map<int,float>>::__append(uint64_t result, unint64_t a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (0xCCCCCCCCCCCCCCCDLL * ((v5 - v4) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = v4 + 40 * a2;
      do
      {
        *v4 = 0uLL;
        *(v4 + 16) = 0uLL;
        *(v4 + 32) = 1065353216;
        v4 += 40;
      }

      while (v4 != v10);
      v4 = v10;
    }

    *(result + 8) = v4;
  }

  else
  {
    v6 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *result) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0x666666666666666)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - *result) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x333333333333333)
    {
      v9 = 0x666666666666666;
    }

    else
    {
      v9 = v7;
    }

    v20 = result;
    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::unordered_map<std::string,unsigned long>>>(result, v9);
    }

    v11 = 40 * v6;
    v17 = 0;
    v18 = 40 * v6;
    *(&v19 + 1) = 0;
    v12 = 40 * v6;
    do
    {
      *v12 = 0uLL;
      *(v12 + 16) = 0uLL;
      *(v12 + 32) = 1065353216;
      v12 += 40;
    }

    while (v12 != 40 * v6 + 40 * a2);
    *&v19 = v11 + 40 * a2;
    v13 = *(result + 8);
    v14 = v11 + *result - v13;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::unordered_set<kaldi::quasar::AbstractAttribute *,kaldi::quasar::AttributeHash,kaldi::quasar::AttributeEquality,std::allocator<kaldi::quasar::AbstractAttribute *>>>,std::unordered_set<kaldi::quasar::AbstractAttribute *,kaldi::quasar::AttributeHash,kaldi::quasar::AttributeEquality,std::allocator<kaldi::quasar::AbstractAttribute *>>*>(result, *result, v13, v14);
    v15 = *v3;
    *v3 = v14;
    v16 = *(v3 + 16);
    *(v3 + 8) = v19;
    *&v19 = v15;
    *(&v19 + 1) = v16;
    v17 = v15;
    v18 = v15;
    return std::__split_buffer<std::unordered_set<kaldi::quasar::AbstractAttribute *,kaldi::quasar::AttributeHash,kaldi::quasar::AttributeEquality,std::allocator<kaldi::quasar::AbstractAttribute *>>>::~__split_buffer(&v17);
  }

  return result;
}

void sub_1B587B728(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::unordered_set<kaldi::quasar::AbstractAttribute *,kaldi::quasar::AttributeHash,kaldi::quasar::AttributeEquality,std::allocator<kaldi::quasar::AbstractAttribute *>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t quasar::PhraseBookOptions::options@<X0>(quasar::PhraseBookOptions *this@<X0>, void *a2@<X8>)
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = this + 16;
  v3[1] = this + 160;
  v3[2] = this + 320;
  v3[3] = this + 464;
  v3[4] = this + 608;
  v3[5] = this + 768;
  v3[6] = this + 912;
  v3[7] = this + 1072;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  return std::vector<quasar::OptionValueBase *>::__init_with_size[abi:ne200100]<quasar::OptionValueBase * const*,quasar::OptionValueBase * const*>(a2, v3, &v4, 8uLL);
}

double quasar::PhraseBookFactory::createPhraseBook@<D0>(std::string *this@<X0>, std::string::value_type a2@<W1>, __int128 *a3@<X2>, std::string::value_type a4@<W3>, _OWORD *a5@<X8>)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    size = this->__r_.__value_.__l.__size_;
  }

  if (std::string::compare(this, size - 5, 5uLL, ".dict"))
  {
    v11 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
    if ((v11 & 0x8000000000000000) != 0)
    {
      v11 = this->__r_.__value_.__l.__size_;
    }

    if (!std::string::compare(this, v11 - 3, 3uLL, ".db"))
    {
      quasar::DatabasePhraseBook::getPhraseBook();
    }

    memset(v13, 0, sizeof(v13));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v13);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v13, "Phrasebook file type unknown");
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v13);
  }

  quasar::SharedPhraseBook::getPhraseBook(this, a2, a3, a4, v13);
  result = *v13;
  *a5 = v13[0];
  return result;
}

void quasar::PhraseBookBlock::updateConfiguration(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a1 + 21;
  quasar::ProcessingBlock::updateConfiguration(a1 + *(*a1 - 24), a2, a3, a4);
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v6 = quasar::OptionValue<std::string>::value(v5);
  kaldi::SplitStringToVector(v6, ",", 1, &v12);
  v7 = v12;
  for (i = v13; v7 != i; v7 += 24)
  {
    v9 = *(v7 + 23);
    if (v9 < 0)
    {
      v9 = *(v7 + 8);
    }

    if (!std::string::compare(v7, v9 - 3, 3uLL, ".db"))
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "DatabasePhraseBook");
      quasar::SystemConfig::enforceMinVersion(a2, 238, 0, __p);
      if (v11 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  __p[0] = &v12;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
}

void sub_1B587BA04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  __p = &a15;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void quasar::PhraseBookBlock::init(quasar::PhraseBookBlock *this)
{
  v2 = quasar::OptionValue<std::string>::value(this + 77);
  v3 = *(v2 + 23);
  if (v3 < 0)
  {
    if (*(v2 + 8) != 7)
    {
      goto LABEL_10;
    }

    v2 = *v2;
  }

  else if (v3 != 7)
  {
    goto LABEL_10;
  }

  if (*v2 == 1634953572 && *(v2 + 3) == 1701601889)
  {
    *(this + 1248) = 1;
    return;
  }

LABEL_10:
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v5 = quasar::OptionValue<std::string>::value(this + 21);
  kaldi::SplitStringToVector(v5, ",", 1, &v26);
  v6 = v26;
  v7 = v27;
  if (v26 != v27)
  {
    v8 = (this + 1224);
    do
    {
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *v6, *(v6 + 1));
      }

      else
      {
        v9 = *v6;
        __p.__r_.__value_.__r.__words[2] = *(v6 + 2);
        *&__p.__r_.__value_.__l.__data_ = v9;
      }

      v10 = *quasar::OptionValue<BOOL>::value(this + 3);
      v11 = quasar::OptionValue<std::string>::value(this + 115);
      v12 = quasar::OptionValue<BOOL>::value(this + 135);
      quasar::PhraseBookFactory::createPhraseBook(&__p, v10, v11, *v12, &v25);
      v13 = *(this + 154);
      v14 = *(this + 155);
      if (v13 >= v14)
      {
        v16 = *v8;
        v17 = v13 - *v8;
        v18 = v17 >> 4;
        v19 = (v17 >> 4) + 1;
        if (v19 >> 60)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v20 = v14 - v16;
        if (v20 >> 3 > v19)
        {
          v19 = v20 >> 3;
        }

        if (v20 >= 0x7FFFFFFFFFFFFFF0)
        {
          v21 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v21 = v19;
        }

        v29[4] = this + 1224;
        if (v21)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<quasar::FeatureExtractor>>>(this + 1224, v21);
        }

        *(16 * v18) = v25;
        v15 = 16 * v18 + 16;
        memcpy(0, v16, v17);
        v22 = *(this + 153);
        *(this + 153) = 0;
        *(this + 154) = v15;
        v23 = *(this + 155);
        *(this + 155) = 0;
        v29[2] = v22;
        v29[3] = v23;
        v29[0] = v22;
        v29[1] = v22;
        std::__split_buffer<std::shared_ptr<quasar::FeatureExtractor>>::~__split_buffer(v29);
      }

      else
      {
        *v13 = v25;
        v15 = (v13 + 16);
      }

      *(this + 154) = v15;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v6 = (v6 + 24);
    }

    while (v6 != v7);
  }

  v29[0] = &v26;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v29);
}

void sub_1B587BC94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char *a16, uint64_t a17, char a18)
{
  a16 = &a18;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a16);
  _Unwind_Resume(a1);
}

void quasar::PhraseBookBlock::process(uint64_t a1, uint64_t a2, quasar::TranslationPhraseInternal **a3)
{
  v3 = a3;
  if ((*(a1 + 1248) & 1) != 0 || (v5 = *a3, *a3 == a3[1]) || (*(v5 + 144) & 1) == 0)
  {
    v41 = a1 + *(*a1 - 24);

    quasar::ProcessingBlock::send(v41, a3, 0);
  }

  else
  {
    quasar::TranslationPhraseInternal::convertTokensToString(v84, v5);
    memset(&v83, 0, sizeof(v83));
    v6 = *(a1 + 1224);
    v7 = *(a1 + 1232);
    if (v6 == v7)
    {
      goto LABEL_113;
    }

    v43 = v3;
    v8 = v6 + 16;
    do
    {
      v9 = *(v8 - 16);
      v10 = *quasar::OptionValue<BOOL>::value((a1 + 776));
      quasar::OptionValue<int>::value((a1 + 328));
      quasar::GenericPhraseBook::lookup(v9, v10, &v61);
      std::vector<std::pair<std::string,std::string>>::__insert_with_size[abi:ne200100]<std::__wrap_iter<std::pair<std::string,std::string>*>,std::__wrap_iter<std::pair<std::string,std::string>*>>(&v83, v83.__end_, v61.__r_.__value_.__l.__data_, v61.__r_.__value_.__l.__size_, 0xAAAAAAAAAAAAAAABLL * ((v61.__r_.__value_.__l.__size_ - v61.__r_.__value_.__r.__words[0]) >> 4));
      v11 = *&v61.__r_.__value_.__l.__data_;
      v49.__r_.__value_.__r.__words[0] = &v61;
      std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v49);
      if (v11 != *(&v11 + 1))
      {
        break;
      }

      v12 = v8 == v7;
      v8 += 16;
    }

    while (!v12);
    begin = v83.__begin_;
    end = v83.__end_;
    v3 = v43;
    if (v83.__begin_ == v83.__end_)
    {
LABEL_113:
      quasar::ProcessingBlock::send(a1 + *(*a1 - 24), v3, 0);
    }

    else
    {
      v14 = 0;
      v80 = 0;
      v81 = 0;
      v82 = 0;
      do
      {
        if (v14 >= *quasar::OptionValue<int>::value((a1 + 328)))
        {
          break;
        }

        v77 = 0;
        v78 = 0;
        v79 = 0;
        if (SHIBYTE(begin->first.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v61, begin->first.__r_.__value_.__l.__data_, begin->first.__r_.__value_.__l.__size_);
        }

        else
        {
          v15 = *&begin->first.__r_.__value_.__l.__data_;
          v61.__r_.__value_.__r.__words[2] = begin->first.__r_.__value_.__r.__words[2];
          *&v61.__r_.__value_.__l.__data_ = v15;
        }

        kaldi::SplitStringToVector(&v61, " ", 1, &v77);
        if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v61.__r_.__value_.__l.__data_);
        }

        v16 = v14;
        quasar::TranslationPhraseInternal::TranslationPhraseInternal(&v61);
        v73 = 0;
        HIDWORD(v61.__r_.__value_.__r.__words[0]) = 1148846080;
        v18 = v77;
        v17 = v78;
        while (v18 != v17)
        {
          __src = 0;
          v52 = 0;
          v53 = 0;
          memset(&v49, 0, sizeof(v49));
          LOWORD(v50) = 0;
          v54 = 3212836864;
          v55 = -1;
          v56 = 0u;
          v57 = 0u;
          __p = 0u;
          v59 = 0;
          v60 = -1;
          std::string::operator=(&v49, v18);
          LOBYTE(v50) = 1;
          *(&v57 + 1) = 0;
          LODWORD(v54) = 1148846080;
          v19 = v52;
          if (v52 >= v53)
          {
            v21 = __src;
            v22 = v52 - __src;
            v23 = (v52 - __src) >> 2;
            v24 = v23 + 1;
            if ((v23 + 1) >> 62)
            {
              std::vector<int>::__throw_length_error[abi:ne200100]();
            }

            v25 = v53 - __src;
            if ((v53 - __src) >> 1 > v24)
            {
              v24 = v25 >> 1;
            }

            v26 = v25 >= 0x7FFFFFFFFFFFFFFCLL;
            v27 = 0x3FFFFFFFFFFFFFFFLL;
            if (!v26)
            {
              v27 = v24;
            }

            if (v27)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(&__src, v27);
            }

            *(4 * v23) = -1;
            v20 = 4 * v23 + 4;
            memcpy(0, v21, v22);
            v28 = __src;
            __src = 0;
            v52 = v20;
            v53 = 0;
            if (v28)
            {
              operator delete(v28);
            }
          }

          else
          {
            *v52 = -1;
            v20 = (v19 + 4);
          }

          v52 = v20;
          v29 = v71;
          if (v71 >= v72)
          {
            v30 = std::vector<quasar::TranslationTokenInternal>::__emplace_back_slow_path<quasar::TranslationTokenInternal const&>(&v70, &v49);
          }

          else
          {
            quasar::TranslationTokenInternal::TranslationTokenInternal(v71, &v49);
            v30 = (v29 + 136);
          }

          v71 = v30;
          if (__p)
          {
            *(&__p + 1) = __p;
            operator delete(__p);
          }

          if (SBYTE7(v57) < 0)
          {
            operator delete(v56);
          }

          if (__src)
          {
            v52 = __src;
            operator delete(__src);
          }

          if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v49.__r_.__value_.__l.__data_);
          }

          ++v18;
        }

        if (v70 != v71)
        {
          v71[-5].__r_.__value_.__s.__data_[8] = 0;
        }

        v31 = quasar::MetaInfo::get((*v43 + 256));
        v32 = v31;
        LODWORD(v49.__r_.__value_.__l.__data_) = *v31;
        if (*(v31 + 31) < 0)
        {
          std::string::__init_copy_ctor_external(&v49.__r_.__value_.__r.__words[1], *(v31 + 8), *(v31 + 16));
        }

        else
        {
          v33 = *(v31 + 8);
          v50 = *(v31 + 24);
          *&v49.__r_.__value_.__r.__words[1] = v33;
        }

        __src = 0;
        v52 = 0;
        v53 = 0;
        std::vector<std::pair<std::string,quasar::PTree>>::__init_with_size[abi:ne200100]<std::pair<std::string,quasar::PTree>*,std::pair<std::string,quasar::PTree>*>(&__src, *(v32 + 32), *(v32 + 40), 0x2E8BA2E8BA2E8BA3 * ((*(v32 + 40) - *(v32 + 32)) >> 3));
        LOBYTE(v54) = *(v32 + 56);
        if ((SHIBYTE(begin->second.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
        {
          v34 = v16;
          if (begin->second.__r_.__value_.__l.__size_)
          {
LABEL_51:
            quasar::MetaInfo::fromJson(v47);
          }
        }

        else
        {
          v34 = v16;
          if (*(&begin->second.__r_.__value_.__s + 23))
          {
            goto LABEL_51;
          }
        }

        std::string::basic_string[abi:ne200100]<0>(&v48, "input");
        quasar::PTree::PTree(v47, v84);
        quasar::PTree::putChild(&v49, &v48, v47, 1);
        quasar::PTree::~PTree(v47);
        if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v48.__r_.__value_.__l.__data_);
        }

        std::string::basic_string[abi:ne200100]<0>(&v48, "output");
        if (SHIBYTE(begin->first.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v46, begin->first.__r_.__value_.__l.__data_, begin->first.__r_.__value_.__l.__size_);
        }

        else
        {
          v35 = *&begin->first.__r_.__value_.__l.__data_;
          v46.__r_.__value_.__r.__words[2] = begin->first.__r_.__value_.__r.__words[2];
          *&v46.__r_.__value_.__l.__data_ = v35;
        }

        quasar::PTree::PTree(v47, &v46);
        quasar::PTree::putChild(&v49, &v48, v47, 1);
        quasar::PTree::~PTree(v47);
        if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v46.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v48.__r_.__value_.__l.__data_);
        }

        std::string::basic_string[abi:ne200100]<0>(&v48, "cost");
        std::string::basic_string[abi:ne200100]<0>(&v46, "0,0");
        quasar::PTree::PTree(v47, &v46);
        quasar::PTree::putChild(&v49, &v48, v47, 1);
        quasar::PTree::~PTree(v47);
        if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v46.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v48.__r_.__value_.__l.__data_);
        }

        std::string::basic_string[abi:ne200100]<0>(&v48, "norm_cost");
        std::string::basic_string[abi:ne200100]<0>(&v46, "0");
        quasar::PTree::PTree(v47, &v46);
        quasar::PTree::putChild(&v49, &v48, v47, 1);
        quasar::PTree::~PTree(v47);
        if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v46.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v48.__r_.__value_.__l.__data_);
        }

        std::string::basic_string[abi:ne200100]<0>(&v48, "status");
        std::string::basic_string[abi:ne200100]<0>(&v46, "phrasebook_exact");
        quasar::PTree::PTree(v47, &v46);
        quasar::PTree::putChild(&v49, &v48, v47, 1);
        quasar::PTree::~PTree(v47);
        if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v46.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v48.__r_.__value_.__l.__data_);
        }

        std::string::basic_string[abi:ne200100]<0>(&v48, "1000");
        if (0xF0F0F0F0F0F0F0F1 * ((v71 - v70) >> 3) >= 2)
        {
          v36 = 1;
          do
          {
            std::string::append(&v48, " 1000");
            ++v36;
          }

          while (0xF0F0F0F0F0F0F0F1 * ((v71 - v70) >> 3) > v36);
        }

        std::string::basic_string[abi:ne200100]<0>(&v46, "word confidences");
        quasar::PTree::PTree(v47, &v48);
        quasar::PTree::putChild(&v49, &v46, v47, 1);
        quasar::PTree::~PTree(v47);
        if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v46.__r_.__value_.__l.__data_);
        }

        std::string::basic_string[abi:ne200100]<0>(&v46, "sentence confidence");
        std::string::basic_string[abi:ne200100]<0>(v44, "1000");
        quasar::PTree::PTree(v47, v44);
        quasar::PTree::putChild(&v49, &v46, v47, 1);
        quasar::PTree::~PTree(v47);
        if (v45 < 0)
        {
          operator delete(v44[0]);
        }

        if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v46.__r_.__value_.__l.__data_);
        }

        std::string::basic_string[abi:ne200100]<0>(&v46, "low confidence");
        std::string::basic_string[abi:ne200100]<0>(v44, "false");
        quasar::PTree::PTree(v47, v44);
        quasar::PTree::putChild(&v49, &v46, v47, 1);
        quasar::PTree::~PTree(v47);
        if (v45 < 0)
        {
          operator delete(v44[0]);
        }

        if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v46.__r_.__value_.__l.__data_);
        }

        quasar::MetaInfo::update(v76, &v49);
        v37 = *v43;
        if (&v61 != *v43)
        {
          std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(v68, *(v37 + 152), *(v37 + 160), (*(v37 + 160) - *(v37 + 152)) >> 2);
          v37 = *v43;
        }

        if (&v61 != v37)
        {
          std::vector<quasar::TranslationPhrase::SegmentInfo>::__assign_with_size[abi:ne200100]<quasar::TranslationPhrase::SegmentInfo*,quasar::TranslationPhrase::SegmentInfo*>(v69, *(v37 + 176), *(v37 + 184), (*(v37 + 184) - *(v37 + 176)) >> 6);
        }

        v38 = v81;
        if (v81 >= v82)
        {
          v39 = std::vector<quasar::TranslationPhraseInternal>::__emplace_back_slow_path<quasar::TranslationPhraseInternal const&>(&v80, &v61);
        }

        else
        {
          quasar::TranslationPhraseInternal::TranslationPhraseInternal(v81, &v61);
          v39 = (v38 + 264);
        }

        v81 = v39;
        if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v48.__r_.__value_.__l.__data_);
        }

        quasar::PTree::~PTree(&v49);
        quasar::MetaInfo::~MetaInfo(v76);
        if (v75 < 0)
        {
          operator delete(v74);
        }

        v49.__r_.__value_.__r.__words[0] = &v70;
        std::vector<quasar::TranslationTokenInternal>::__destroy_vector::operator()[abi:ne200100](&v49);
        v49.__r_.__value_.__r.__words[0] = v69;
        std::vector<quasar::TranslationPhrase::SegmentInfo>::__destroy_vector::operator()[abi:ne200100](&v49);
        if (v68[0])
        {
          v68[1] = v68[0];
          operator delete(v68[0]);
        }

        if (v67[24] == 1)
        {
          v49.__r_.__value_.__r.__words[0] = v67;
          std::vector<quasar::AlternativeSelectionSpan>::__destroy_vector::operator()[abi:ne200100](&v49);
        }

        if (v66 == 1 && v65 < 0)
        {
          operator delete(v64);
        }

        if (v63 < 0)
        {
          operator delete(v62);
        }

        v14 = v34 + 1;
        v49.__r_.__value_.__r.__words[0] = &v61.__r_.__value_.__r.__words[2];
        std::vector<quasar::TranslationToken>::__destroy_vector::operator()[abi:ne200100](&v49);
        v61.__r_.__value_.__r.__words[0] = &v77;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v61);
        ++begin;
      }

      while (begin != end);
      v40 = *(*a1 - 24);
      std::string::basic_string[abi:ne200100]<0>(&v61, "final");
      quasar::ProcessingBlock::send(a1 + v40, &v61, &v80, 0);
      if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v61.__r_.__value_.__l.__data_);
      }

      v61.__r_.__value_.__r.__words[0] = &v80;
      std::vector<quasar::TranslationPhraseInternal>::__destroy_vector::operator()[abi:ne200100](&v61);
    }

    v61.__r_.__value_.__r.__words[0] = &v83;
    std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v61);
    if (v85 < 0)
    {
      operator delete(v84[0]);
    }
  }
}

void sub_1B587C744(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *__p, uint64_t a52, int a53, __int16 a54, char a55, char a56)
{
  if (a56 < 0)
  {
    operator delete(__p);
  }

  __p = (v56 - 184);
  std::vector<quasar::TranslationPhraseInternal>::__destroy_vector::operator()[abi:ne200100](&__p);
  a34 = v56 - 160;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&a34);
  if (*(v56 - 113) < 0)
  {
    operator delete(*(v56 - 136));
  }

  _Unwind_Resume(a1);
}

void quasar::ConfiguredProcessingBlock<quasar::PhraseBookOptions>::setContextProvider(uint64_t a1, uint64_t *a2)
{
  v3 = (*(*a1 + 8))(a1);
  (**v3)(&v10);
  v4 = v10;
  v5 = v11;
  if (v10 != v11)
  {
    do
    {
      v6 = *v4;
      v7 = a2[1];
      v8 = *a2;
      v9 = v7;
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      quasar::OptionValueBase::setContextProvider(v6, &v8);
      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      }

      ++v4;
    }

    while (v4 != v5);
    v4 = v10;
  }

  if (v4)
  {
    v11 = v4;
    operator delete(v4);
  }
}

void sub_1B587CA54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *__p, uint64_t a13)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::PhraseBookBlock::~PhraseBookBlock(quasar::PhraseBookBlock *this)
{
  *this = off_1F2D35D38;
  v2 = (this + 1256);
  *(this + 157) = &unk_1F2D35DE8;
  v3 = (this + 1224);
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&v3);
  *this = &unk_1F2D35E80;
  *(this + 157) = off_1F2D35F08;
  quasar::PhraseBookOptions::~PhraseBookOptions((this + 8));
  quasar::ProcessingBlock::~ProcessingBlock(v2);
}

{
  *this = off_1F2D35D38;
  v2 = (this + 1256);
  *(this + 157) = &unk_1F2D35DE8;
  v3 = (this + 1224);
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&v3);
  *this = &unk_1F2D35E80;
  *(this + 157) = off_1F2D35F08;
  quasar::PhraseBookOptions::~PhraseBookOptions((this + 8));
  quasar::ProcessingBlock::~ProcessingBlock(v2);
  MEMORY[0x1B8C85350](this, 0x10F3C40C6145FEFLL);
}

void virtual thunk toquasar::PhraseBookBlock::~PhraseBookBlock(quasar::PhraseBookBlock *this)
{
  v1 = this + *(*this - 24);
  *v1 = off_1F2D35D38;
  *(v1 + 157) = &unk_1F2D35DE8;
  v2 = (v1 + 1224);
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&v2);
  *v1 = &unk_1F2D35E80;
  *(v1 + 157) = off_1F2D35F08;
  quasar::PhraseBookOptions::~PhraseBookOptions((v1 + 8));
  quasar::ProcessingBlock::~ProcessingBlock(v1 + 157);
}

{
  v1 = this + *(*this - 24);
  *v1 = off_1F2D35D38;
  *(v1 + 157) = &unk_1F2D35DE8;
  v2 = (v1 + 1224);
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&v2);
  *v1 = &unk_1F2D35E80;
  *(v1 + 157) = off_1F2D35F08;
  quasar::PhraseBookOptions::~PhraseBookOptions((v1 + 8));
  quasar::ProcessingBlock::~ProcessingBlock(v1 + 157);
  MEMORY[0x1B8C85350](v1, 0x10F3C40C6145FEFLL);
}

quasar::LmePackedProns *quasar::LmePackedProns::LmePackedProns(quasar::LmePackedProns *this, const quasar::LmeDataFactoryBase::PronSet *a2, fst::SymbolTable *a3)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  quasar::Bitmap::~Bitmap(a2);
  v6 = v5 + 1;
  v7 = *v5;
  if (*v5 == v5 + 1)
  {
    return this;
  }

  while (quasar::isPronTypeEmbedding(*(v7 + 8)))
  {
    v8 = *(v7 + 63);
    if ((v8 & 0x8000000000000000) != 0)
    {
      v8 = v7[6];
    }

    std::vector<unsigned short>::resize(this, (v8 >> 1) + 3);
    v9 = *this;
    *v9 = *(v7 + 16) ^ 0x8000;
    *(v9 + 2) = *(v7 + 16);
    v10 = *(v7 + 63);
    if ((v10 & 0x8000000000000000) != 0)
    {
      v11 = v7[5];
      v10 = v7[6];
    }

    else
    {
      v11 = v7 + 5;
    }

    memcpy((v9 + 6), v11, v10);
LABEL_64:
    v49 = v7[1];
    if (v49)
    {
      do
      {
        v50 = v49;
        v49 = *v49;
      }

      while (v49);
    }

    else
    {
      do
      {
        v50 = v7[2];
        v51 = *v50 == v7;
        v7 = v50;
      }

      while (!v51);
    }

    v7 = v50;
    if (v50 == v6)
    {
      return this;
    }
  }

  v12 = quasar::PronTypeToSeparator(*(v7 + 8));
  std::string::basic_string[abi:ne200100]<0>(__p, v12);
  quasar::splitAndTrimNoEmpty((v7 + 5), __p, &v70);
  if (SBYTE7(v54) < 0)
  {
    operator delete(__p[0]);
  }

  std::vector<unsigned short>::reserve(this, 3 - 0x5555555555555555 * ((v71 - v70) >> 3));
  v13 = *(v7 + 8) + 0x8000;
  v14 = *(this + 1);
  v15 = *(this + 2);
  if (v14 >= v15)
  {
    v17 = *this;
    v18 = v14 - *this;
    v19 = v18 >> 1;
    if (v18 >> 1 <= -2)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    if (v15 - v17 <= v19 + 1)
    {
      v20 = v19 + 1;
    }

    else
    {
      v20 = v15 - v17;
    }

    if (v15 - v17 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v20 = 0x7FFFFFFFFFFFFFFFLL;
    }

    if (v20)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<char,char>>>(this, v20);
    }

    v15 = 0;
    *(2 * v19) = v13;
    v16 = (2 * v19 + 2);
    memcpy(0, v17, v18);
    v21 = *this;
    *this = 0;
    *(this + 1) = v16;
    *(this + 2) = 0;
    if (v21)
    {
      operator delete(v21);
      v15 = *(this + 2);
    }
  }

  else
  {
    *v14 = v13;
    v16 = v14 + 1;
  }

  *(this + 1) = v16;
  v22 = *(v7 + 16);
  if (v16 >= v15)
  {
    v24 = *this;
    v25 = v16 - *this;
    v26 = v25 >> 1;
    if (v25 >> 1 <= -2)
    {
      goto LABEL_76;
    }

    if (v15 - v24 <= v26 + 1)
    {
      v27 = v26 + 1;
    }

    else
    {
      v27 = v15 - v24;
    }

    if (v15 - v24 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v27 = 0x7FFFFFFFFFFFFFFFLL;
    }

    if (v27)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<char,char>>>(this, v27);
    }

    v15 = 0;
    *(2 * v26) = v22;
    v23 = (2 * v26 + 2);
    memcpy(0, v24, v25);
    v28 = *this;
    *this = 0;
    *(this + 1) = v23;
    *(this + 2) = 0;
    if (v28)
    {
      operator delete(v28);
      v15 = *(this + 2);
    }
  }

  else
  {
    *v16 = v22;
    v23 = v16 + 1;
  }

  *(this + 1) = v23;
  if (v23 >= v15)
  {
    v30 = *this;
    v31 = v23 - *this;
    v32 = v31 >> 1;
    if (v31 >> 1 < -1)
    {
LABEL_76:
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    if (v15 - v30 <= v32 + 1)
    {
      v33 = v32 + 1;
    }

    else
    {
      v33 = v15 - v30;
    }

    if (v15 - v30 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v33 = 0x7FFFFFFFFFFFFFFFLL;
    }

    if (v33)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<char,char>>>(this, v33);
    }

    *(2 * v32) = HIWORD(v22);
    v29 = 2 * v32 + 2;
    memcpy(0, v30, v31);
    v34 = *this;
    *this = 0;
    *(this + 1) = v29;
    *(this + 2) = 0;
    if (v34)
    {
      operator delete(v34);
    }
  }

  else
  {
    *v23 = HIWORD(v22);
    v29 = (v23 + 1);
  }

  *(this + 1) = v29;
  v35 = v70;
  v36 = v71;
  while (1)
  {
    if (v35 == v36)
    {
      __p[0] = &v70;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
      goto LABEL_64;
    }

    v37 = (*(*a3 + 32))(a3, v35);
    if (v37 >= 0x8000)
    {
      break;
    }

    v39 = *(this + 1);
    v38 = *(this + 2);
    if (v39 >= v38)
    {
      v41 = *this;
      v42 = v39 - *this;
      v43 = v42 >> 1;
      if (v42 >> 1 <= -2)
      {
        std::vector<int>::__throw_length_error[abi:ne200100]();
      }

      v44 = v38 - v41;
      if (v44 <= v43 + 1)
      {
        v45 = v43 + 1;
      }

      else
      {
        v45 = v44;
      }

      v46 = v44 >= 0x7FFFFFFFFFFFFFFELL;
      v47 = 0x7FFFFFFFFFFFFFFFLL;
      if (!v46)
      {
        v47 = v45;
      }

      if (v47)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<char,char>>>(this, v47);
      }

      *(2 * v43) = v37;
      v40 = 2 * v43 + 2;
      memcpy(0, v41, v42);
      v48 = *this;
      *this = 0;
      *(this + 1) = v40;
      *(this + 2) = 0;
      if (v48)
      {
        operator delete(v48);
      }
    }

    else
    {
      *v39 = v37;
      v40 = (v39 + 1);
    }

    *(this + 1) = v40;
    v35 += 24;
  }

  if (quasar::gLogLevel >= 2)
  {
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
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    *__p = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "LmePackedProns::LmePackedProns: Unable to assign ID to unit", 59);
    quasar::QuasarWarnMessage::~QuasarWarnMessage(__p);
  }

  *(this + 1) = *this;
  __p[0] = &v70;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
  return this;
}

void sub_1B587D338(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  quasar::QuasarWarnMessage::~QuasarWarnMessage(&__p);
  __p = (v17 - 128);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  v19 = *v16;
  if (*v16)
  {
    *(v16 + 8) = v19;
    operator delete(v19);
  }

  _Unwind_Resume(a1);
}

void quasar::LmePackedProns::unpacked(quasar::LmePackedProns *this@<X0>, const fst::SymbolTable *a2@<X1>, uint64_t **a3@<X8>)
{
  quasar::LmeDataFactoryBase::PronSet::PronSet(&v65);
  LODWORD(v6) = 0;
  while (1)
  {
    v7 = *this;
    v8 = (*(this + 1) - *this) >> 1;
    if (v8 <= v6)
    {
      break;
    }

    v9 = v6;
    memset(&v64, 0, sizeof(v64));
    v10 = *(v7 + 2 * v6);
    if (v10 < 0)
    {
      v6 = v6 + 1;
      if (v8 > v9 + 1)
      {
        if (v8 <= v9 + 2)
        {
          if (quasar::gLogLevel >= 2)
          {
            v62 = 0u;
            v63 = 0u;
            v60 = 0u;
            v61 = 0u;
            v58 = 0u;
            v59 = 0u;
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
            v47 = 0u;
            kaldi::KaldiWarnMessage::KaldiWarnMessage(&v47);
            v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v47, "LmePackedProns::unpacked: Out of bounds2 ", 41);
            v23 = MEMORY[0x1B8C84C00](v22, v9 + 2);
            v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, " ", 1);
            v25 = MEMORY[0x1B8C84C30](v24, (*(this + 1) - *this) >> 1);
            v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, " ", 1);
            MEMORY[0x1B8C84C50](v26, *(*this + 2 * v6));
            quasar::QuasarWarnMessage::~QuasarWarnMessage(&v47);
          }

          quasar::LmeDataFactoryBase::PronSet::PronSet(a3);
          v11 = 0;
          LODWORD(v6) = v9 + 2;
        }

        else
        {
          v12 = v10 - 0x8000;
          v13 = *(v7 + 2 * (v9 + 2));
          v14 = v9 + 3;
          v43 = *(v7 + 2 * v6);
          if (quasar::isPronTypeEmbedding(v12))
          {
            v15 = *this;
            v16 = (*(this + 1) - *this) >> 1;
            if (v16 <= v14)
            {
              LODWORD(v6) = v9 + 3;
            }

            else
            {
              v6 = v9 + 3;
              do
              {
                if (*(v15 + 2 * v6) < 0)
                {
                  break;
                }

                ++v6;
              }

              while (v16 > v6);
              if (v6 > v14)
              {
                MEMORY[0x1B8C84830](&v64, v15 + 2 * v14, 2 * (v6 - v14));
              }
            }
          }

          else
          {
            v42 = v13;
            v27 = quasar::PronTypeToSeparator(v12);
            LODWORD(v6) = v14;
            while (v6 < ((*(this + 1) - *this) >> 1) && (*(*this + 2 * v6) & 0x8000000000000000) == 0)
            {
              (*(*a2 + 88))(&__p, a2);
              v28 = v46;
              v29 = v46;
              v30 = v45;
              if ((v46 & 0x80u) == 0)
              {
                v31 = v46;
              }

              else
              {
                v31 = v45;
              }

              if (v31)
              {
                size = HIBYTE(v64.__r_.__value_.__r.__words[2]);
                if ((v64.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  size = v64.__r_.__value_.__l.__size_;
                }

                if (size)
                {
                  std::string::append(&v64, v27);
                  v28 = v46;
                  v30 = v45;
                  v29 = v46;
                }

                if ((v29 & 0x80u) == 0)
                {
                  p_p = &__p;
                }

                else
                {
                  p_p = __p;
                }

                if ((v29 & 0x80u) == 0)
                {
                  v34 = v28;
                }

                else
                {
                  v34 = v30;
                }

                std::string::append(&v64, p_p, v34);
                LODWORD(v6) = v6 + 1;
              }

              else
              {
                if (quasar::gLogLevel >= 2)
                {
                  v62 = 0u;
                  v63 = 0u;
                  v60 = 0u;
                  v61 = 0u;
                  v58 = 0u;
                  v59 = 0u;
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
                  v47 = 0u;
                  kaldi::KaldiWarnMessage::KaldiWarnMessage(&v47);
                  v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v47, "WordPronCache::unpack: Cannot find unit ", 40);
                  v36 = MEMORY[0x1B8C84C50](v35, *(*this + 2 * v6));
                  v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, " ", 1);
                  v38 = (*(*a2 + 120))(a2);
                  MEMORY[0x1B8C84C30](v37, v38);
                  quasar::QuasarWarnMessage::~QuasarWarnMessage(&v47);
                }

                quasar::LmeDataFactoryBase::PronSet::PronSet(a3);
              }

              if (v46 < 0)
              {
                operator delete(__p);
              }

              v11 = 0;
              if (!v31)
              {
                goto LABEL_50;
              }
            }

            v13 = v42;
          }

          quasar::LmeDataFactoryBase::PronSet::insert(&v65, v12, &v64, COERCE_FLOAT(v43 | (v13 << 16)));
          v11 = 1;
        }

        goto LABEL_50;
      }

      if (quasar::gLogLevel >= 2)
      {
        v62 = 0u;
        v63 = 0u;
        v60 = 0u;
        v61 = 0u;
        v58 = 0u;
        v59 = 0u;
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
        v47 = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v47);
        v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v47, "LmePackedProns::unpacked: Out of bounds1 ", 41);
        v18 = MEMORY[0x1B8C84C00](v17, v9 + 1);
        v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " ", 1);
        v20 = MEMORY[0x1B8C84C30](v19, (*(this + 1) - *this) >> 1);
        v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, " ", 1);
        MEMORY[0x1B8C84C50](v21, *(*this + 2 * v9));
        quasar::QuasarWarnMessage::~QuasarWarnMessage(&v47);
      }
    }

    else if (quasar::gLogLevel >= 2)
    {
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
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
      v47 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v47);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v47, "LmePackedProns::unpacked: Unexpected value", 42);
      quasar::QuasarWarnMessage::~QuasarWarnMessage(&v47);
    }

    quasar::LmeDataFactoryBase::PronSet::PronSet(a3);
    v11 = 0;
LABEL_50:
    if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v64.__r_.__value_.__l.__data_);
      if ((v11 & 1) == 0)
      {
LABEL_54:
        v39 = v66;
        goto LABEL_58;
      }
    }

    else if ((v11 & 1) == 0)
    {
      goto LABEL_54;
    }
  }

  v39 = v66;
  *a3 = v65;
  a3[1] = v39;
  v40 = (a3 + 1);
  v41 = v67;
  a3[2] = v67;
  if (v41)
  {
    v39[2] = v40;
    v65 = &v66;
    v66 = 0;
    v67 = 0;
    v39 = 0;
  }

  else
  {
    *a3 = v40;
  }

LABEL_58:
  std::__tree<std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::__map_value_compare<std::pair<quasar::PronType,std::string>,std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::less<std::pair<quasar::PronType,std::string>>,true>,std::allocator<std::__value_type<std::pair<quasar::PronType,std::string>,float>>>::destroy(&v65, v39);
}

void sub_1B587D8E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (*(v16 - 121) < 0)
  {
    operator delete(*(v16 - 144));
  }

  std::__tree<std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::__map_value_compare<std::pair<quasar::PronType,std::string>,std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::less<std::pair<quasar::PronType,std::string>>,true>,std::allocator<std::__value_type<std::pair<quasar::PronType,std::string>,float>>>::destroy(v16 - 120, *(v16 - 112));
  _Unwind_Resume(a1);
}

uint64_t quasar::LmePackedProns::read(void *a1, void *a2, int a3)
{
  if (a3 <= 17)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v5);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v5, "lmeDataReadVersion >= 18");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v5);
  }

  LODWORD(v5[0]) = 0;
  kaldi::ReadBasicType<int>(a2, 1, v5);
  std::vector<unsigned short>::resize(a1, SLODWORD(v5[0]));
  return std::istream::read();
}

uint64_t quasar::LmePackedProns::write(void *a1, void *a2, int a3)
{
  if (a3 <= 17)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "lmeDataWriteVersion >= 18");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v4);
  }

  kaldi::WriteBasicType<int>(a2, 1, (a1[1] - *a1) >> 1);

  return std::ostream::write();
}

std::string *quasar::LmePackedWord::LmePackedWord(std::string *this, const quasar::LmeDataFactoryBase::Word *a2, fst::SymbolTable *a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v6 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v6;
  }

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v7 = *(a2 + 24);
    this[1].__r_.__value_.__r.__words[2] = *(a2 + 5);
    *&this[1].__r_.__value_.__l.__data_ = v7;
  }

  LODWORD(this[2].__r_.__value_.__l.__data_) = *(a2 + 12);
  quasar::LmePackedProns::LmePackedProns(&this[2].__r_.__value_.__r.__words[1], (a2 + 56), a3);
  return this;
}

void sub_1B587DB58(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void quasar::LmePackedWord::unpacked(quasar::LmePackedWord *this@<X0>, const fst::SymbolTable *a2@<X1>, uint64_t a3@<X8>)
{
  if (*(this + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v9, *this, *(this + 1));
  }

  else
  {
    v9 = *this;
  }

  if (*(this + 47) < 0)
  {
    std::string::__init_copy_ctor_external(&v8, *(this + 3), *(this + 4));
  }

  else
  {
    v8 = *(this + 1);
  }

  v6 = *(this + 12);
  quasar::LmePackedProns::unpacked((this + 56), a2, v7);
  quasar::LmeDataFactoryBase::Word::Word(a3, &v9, &v8, v6, v7);
  std::__tree<std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::__map_value_compare<std::pair<quasar::PronType,std::string>,std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::less<std::pair<quasar::PronType,std::string>>,true>,std::allocator<std::__value_type<std::pair<quasar::PronType,std::string>,float>>>::destroy(v7, v7[1]);
  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

void sub_1B587DC70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B587DD54(_Unwind_Exception *a1)
{
  std::__tree<std::__value_type<std::string,std::vector<std::vector<quasar::LmePackedWord>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::vector<quasar::LmePackedWord>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::vector<quasar::LmePackedWord>>>>>::destroy(v2, *(v1 + 3));
  fst::SymbolTable::~SymbolTable(v1);
  _Unwind_Resume(a1);
}

void quasar::LmePackedUserData::addUnpackedEntities(fst::SymbolTable *a1, const void **a2, const quasar::LmeDataFactoryBase::Word ***a3)
{
  std::__tree<std::__value_type<std::string,std::vector<std::vector<quasar::LmePackedWord>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::vector<quasar::LmePackedWord>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::vector<quasar::LmePackedWord>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 16, a2);
  v6 = *a3;
  v7 = a3[1];
  while (v6 != v7)
  {
    quasar::LmePackedUserData::addUnpackedEntity(a1, a2, v6);
    v6 += 3;
  }
}

void quasar::LmePackedUserData::unpackedEntity(fst::SymbolTable *a1@<X0>, quasar::LmePackedWord **a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v3 = *a2;
  v4 = a2[1];
  if (*a2 != v4)
  {
    do
    {
      quasar::LmePackedWord::unpacked(v3, a1, v14);
      v7 = a3[1];
      if (v7 >= a3[2])
      {
        v13 = std::vector<quasar::LmeDataFactoryBase::Word>::__emplace_back_slow_path<quasar::LmeDataFactoryBase::Word>(a3, v14);
      }

      else
      {
        v8 = *v14;
        *(v7 + 16) = v15;
        *v7 = v8;
        v14[1] = 0;
        v15 = 0;
        v14[0] = 0;
        v9 = v17;
        *(v7 + 24) = __p;
        *(v7 + 40) = v9;
        v17 = 0;
        __p = 0uLL;
        *(v7 + 48) = v18;
        *(v7 + 56) = v19;
        v10 = v20;
        *(v7 + 64) = v20;
        v11 = v7 + 64;
        v12 = v21;
        *(v7 + 72) = v21;
        if (v12)
        {
          *(v10 + 2) = v11;
          v19 = &v20;
          v20 = 0;
          v21 = 0;
        }

        else
        {
          *(v7 + 56) = v11;
        }

        v13 = v7 + 80;
      }

      a3[1] = v13;
      std::__tree<std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::__map_value_compare<std::pair<quasar::PronType,std::string>,std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::less<std::pair<quasar::PronType,std::string>>,true>,std::allocator<std::__value_type<std::pair<quasar::PronType,std::string>,float>>>::destroy(&v19, v20);
      if (SHIBYTE(v17) < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v15) < 0)
      {
        operator delete(v14[0]);
      }

      v3 = (v3 + 80);
    }

    while (v3 != v4);
  }
}

void sub_1B587DF30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  quasar::LmeDataFactoryBase::Word::~Word(&a9);
  std::vector<quasar::LmeDataFactoryBase::Word>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void quasar::LmePackedUserData::unpacked(quasar::LmePackedUserData *this@<X0>, void *a2@<X8>)
{
  v2 = a2;
  a2[2] = 0;
  a2[1] = 0;
  *a2 = a2 + 1;
  v3 = *(this + 2);
  v27 = (this + 24);
  if (v3 != (this + 24))
  {
    v5 = &std::piecewise_construct;
    do
    {
      v31[0] = v3 + 4;
      std::__tree<std::__value_type<std::string,std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v2, v3 + 4);
      v6 = v3[7];
      for (i = v3[8]; v6 != i; v6 += 3)
      {
        v31[0] = v3 + 4;
        v7 = std::__tree<std::__value_type<std::string,std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v2, v3 + 4);
        quasar::LmePackedUserData::unpackedEntity(this, v6, &v29);
        v8 = v7[8];
        v9 = v7[9];
        if (v8 >= v9)
        {
          v11 = v2;
          v12 = v5;
          v13 = v7[7];
          v14 = 0xAAAAAAAAAAAAAAABLL * ((v8 - v13) >> 3);
          v15 = v14 + 1;
          if (v14 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            std::vector<int>::__throw_length_error[abi:ne200100]();
          }

          v16 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v13) >> 3);
          if (2 * v16 > v15)
          {
            v15 = 2 * v16;
          }

          if (v16 >= 0x555555555555555)
          {
            v17 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v17 = v15;
          }

          v31[4] = v7 + 7;
          if (v17)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<quasar::Token>>>((v7 + 7), v17);
          }

          v18 = 24 * v14;
          *v18 = 0;
          *(v18 + 8) = 0;
          *(v18 + 16) = 0;
          *v18 = v29;
          *(v18 + 16) = v30;
          v29 = 0uLL;
          v30 = 0;
          v10 = 24 * v14 + 24;
          v19 = v7[7];
          v20 = v7[8] - v19;
          v21 = 24 * v14 - v20;
          memcpy((v18 - v20), v19, v20);
          v22 = v7[7];
          v7[7] = v21;
          v7[8] = v10;
          v23 = v7[9];
          v7[9] = 0;
          v31[2] = v22;
          v31[3] = v23;
          v31[0] = v22;
          v31[1] = v22;
          std::__split_buffer<std::vector<quasar::LmeDataFactoryBase::Word>>::~__split_buffer(v31);
          v5 = v12;
          v2 = v11;
        }

        else
        {
          *v8 = 0;
          v8[1] = 0;
          v8[2] = 0;
          *v8 = v29;
          v8[2] = v30;
          v29 = 0uLL;
          v30 = 0;
          v10 = (v8 + 3);
        }

        v7[8] = v10;
        v31[0] = &v29;
        std::vector<quasar::LmeDataFactoryBase::Word>::__destroy_vector::operator()[abi:ne200100](v31);
      }

      v24 = v3[1];
      if (v24)
      {
        do
        {
          v25 = v24;
          v24 = *v24;
        }

        while (v24);
      }

      else
      {
        do
        {
          v25 = v3[2];
          v26 = *v25 == v3;
          v3 = v25;
        }

        while (!v26);
      }

      v3 = v25;
    }

    while (v25 != v27);
  }
}

void quasar::LmePackedUserData::addUnpackedEntity(fst::SymbolTable *a1, const void **a2, const quasar::LmeDataFactoryBase::Word **a3)
{
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v5 = *a3;
  v6 = a3[1];
  if (*a3 != v6)
  {
    v7 = 0;
    do
    {
      if (v7 >= v14)
      {
        v7 = std::vector<quasar::LmePackedWord>::__emplace_back_slow_path<quasar::LmeDataFactoryBase::Word const&,fst::SymbolTable &>(&v12, v5, a1);
      }

      else
      {
        quasar::LmePackedWord::LmePackedWord(v7, v5, a1);
        v7 = (v7 + 80);
      }

      v13 = v7;
      v5 = (v5 + 80);
    }

    while (v5 != v6);
  }

  v15 = a2;
  v8 = std::__tree<std::__value_type<std::string,std::vector<std::vector<quasar::LmePackedWord>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::vector<quasar::LmePackedWord>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::vector<quasar::LmePackedWord>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 16, a2);
  v9 = v8;
  v10 = *(v8 + 64);
  if (v10 >= *(v8 + 72))
  {
    v11 = std::vector<std::vector<quasar::LmePackedWord>>::__emplace_back_slow_path<std::vector<quasar::LmePackedWord>&>(v8 + 56, &v12);
  }

  else
  {
    std::vector<std::vector<quasar::LmePackedWord>>::__construct_one_at_end[abi:ne200100]<std::vector<quasar::LmePackedWord>&>(v8 + 56, &v12);
    v11 = v10 + 24;
  }

  *(v9 + 64) = v11;
  v16 = &v12;
  std::vector<quasar::LmePackedWord>::__destroy_vector::operator()[abi:ne200100](&v16);
}

void sub_1B587E368(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14)
{
  a14 = &a9;
  std::vector<quasar::LmePackedWord>::__destroy_vector::operator()[abi:ne200100](&a14);
  _Unwind_Resume(a1);
}

uint64_t std::vector<quasar::LmePackedWord>::__emplace_back_slow_path<quasar::LmeDataFactoryBase::Word const&,fst::SymbolTable &>(uint64_t *a1, const quasar::LmeDataFactoryBase::Word *a2, fst::SymbolTable *a3)
{
  v3 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 4);
  v4 = v3 + 1;
  if (v3 + 1 > 0x333333333333333)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 4) > v4)
  {
    v4 = 0x999999999999999ALL * ((a1[2] - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 4) >= 0x199999999999999)
  {
    v7 = 0x333333333333333;
  }

  else
  {
    v7 = v4;
  }

  v17 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::LmePackedWord>>(a1, v7);
  }

  v14 = 0;
  v15 = 80 * v3;
  quasar::LmePackedWord::LmePackedWord((80 * v3), a2, a3);
  v16 = 80 * v3 + 80;
  v8 = a1[1];
  v9 = 80 * v3 + *a1 - v8;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::LmePackedWord>,quasar::LmePackedWord*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<quasar::LmePackedWord>::~__split_buffer(&v14);
  return v13;
}

void sub_1B587E4B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<quasar::LmePackedWord>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::LmePackedWord>,quasar::LmePackedWord*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = a4;
  v14 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  if (a2 == a3)
  {
    v12 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      v8 = *v7;
      *(a4 + 16) = *(v7 + 16);
      *a4 = v8;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      *v7 = 0;
      v9 = *(v7 + 24);
      *(a4 + 40) = *(v7 + 40);
      *(a4 + 24) = v9;
      *(v7 + 32) = 0;
      *(v7 + 40) = 0;
      *(v7 + 24) = 0;
      *(a4 + 48) = *(v7 + 48);
      *(a4 + 64) = 0;
      *(a4 + 72) = 0;
      *(a4 + 56) = 0;
      *(a4 + 56) = *(v7 + 56);
      *(a4 + 72) = *(v7 + 72);
      *(v7 + 56) = 0;
      *(v7 + 64) = 0;
      *(v7 + 72) = 0;
      v7 += 80;
      a4 += 80;
    }

    while (v7 != a3);
    v14 = a4;
    v12 = 1;
    while (v5 != a3)
    {
      std::allocator_traits<std::allocator<quasar::MetaInfo::StructuredPrediction::Span>>::destroy[abi:ne200100]<quasar::MetaInfo::StructuredPrediction::Span,0>(a1, v5);
      v5 += 80;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::LmePackedWord>,quasar::LmePackedWord*>>::~__exception_guard_exceptions[abi:ne200100](v11);
}

uint64_t std::__split_buffer<quasar::LmePackedWord>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<quasar::LmePackedWord>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<quasar::LmePackedWord>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 80;
    std::allocator_traits<std::allocator<quasar::MetaInfo::StructuredPrediction::Span>>::destroy[abi:ne200100]<quasar::MetaInfo::StructuredPrediction::Span,0>(v5, v4 - 80);
  }
}

uint64_t std::__tree<std::__value_type<std::string,std::vector<std::vector<quasar::LmePackedWord>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::vector<quasar::LmePackedWord>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::vector<quasar::LmePackedWord>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    std::__tree<std::__value_type<std::string,std::vector<std::vector<quasar::LmePackedWord>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::vector<quasar::LmePackedWord>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::vector<quasar::LmePackedWord>>>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return v2;
}

uint64_t std::vector<std::vector<quasar::LmePackedWord>>::__construct_one_at_end[abi:ne200100]<std::vector<quasar::LmePackedWord>&>(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = std::vector<quasar::LmePackedWord>::__init_with_size[abi:ne200100]<quasar::LmePackedWord*,quasar::LmePackedWord*>(v3, *a2, a2[1], 0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 4));
  *(a1 + 8) = v3 + 3;
  return result;
}

uint64_t std::vector<std::vector<quasar::LmePackedWord>>::__emplace_back_slow_path<std::vector<quasar::LmePackedWord>&>(uint64_t a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<quasar::Token>>>(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  std::vector<quasar::LmePackedWord>::__init_with_size[abi:ne200100]<quasar::LmePackedWord*,quasar::LmePackedWord*>(24 * v2, *a2, a2[1], 0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 4));
  v8 = v16 + 24;
  v9 = *(a1 + 8) - *a1;
  v10 = &v15[-v9];
  memcpy(&v15[-v9], *a1, v9);
  v11 = *a1;
  *a1 = v10;
  *(a1 + 8) = v8;
  v12 = *(a1 + 16);
  *(a1 + 16) = v17;
  v16 = v11;
  v17 = v12;
  v14 = v11;
  v15 = v11;
  std::__split_buffer<std::vector<quasar::LmePackedWord>>::~__split_buffer(&v14);
  return v8;
}

void sub_1B587E92C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::vector<quasar::LmePackedWord>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void **std::__split_buffer<std::vector<quasar::LmePackedWord>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::vector<quasar::LmePackedWord>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::vector<quasar::LmePackedWord>>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    v4 = (i - 24);
    *(a1 + 16) = v4;
    v5 = v4;
    std::vector<quasar::LmePackedWord>::__destroy_vector::operator()[abi:ne200100](&v5);
  }
}

void kaldi::quasar::TranslationUtil::ComputeBackwardAlignments(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  if (*a1 != v2)
  {
    do
    {
      if (v1[1] != *v1)
      {
        v3 = (*(*v1 + 144) - *(*v1 + 136)) >> 2;
        v12 = 0;
        if (v3 >= 1)
        {
          v4 = 0;
          do
          {
            v5 = v1[1];
            if (*v1 == v5)
            {
              v11 = 0;
            }

            else
            {
              v6 = 0;
              v7 = 0;
              v8 = 0.0;
              v9 = *v1;
              do
              {
                v10 = *(v9 + 136);
                if (*(v10 + 4 * v4) > v8)
                {
                  v7 = v6;
                  v8 = *(v10 + 4 * v4);
                }

                ++v6;
                v9 += 240;
              }

              while (v9 != v5);
              v11 = v7;
            }

            std::vector<int>::push_back[abi:ne200100]((*v1 + 240 * v11 + 112), &v12);
            v4 = v12 + 1;
            v12 = v4;
          }

          while (v4 < v3);
        }
      }

      v1 += 34;
    }

    while (v1 != v2);
  }
}

void kaldi::quasar::TranslationUtil::MergeAlignments(char ***a1)
{
  v2 = *a1;
  v1 = a1[1];
  v65 = v1;
  while (v2 != v1)
  {
    v4 = *v2;
    v3 = v2[1];
    v5 = *v2;
    if (*v2 != v3)
    {
      while (1)
      {
        v6 = *(v5 + 11);
        v7 = *(v5 + 12);
        if (v6 != v7)
        {
          while ((*v6 & 0x80000000) == 0)
          {
            if (++v6 == v7)
            {
              goto LABEL_9;
            }
          }
        }

        if (v6 != v7)
        {
          return;
        }

LABEL_9:
        v8 = *(v5 + 14);
        v9 = *(v5 + 15);
        if (v8 != v9)
        {
          while ((*v8 & 0x80000000) == 0)
          {
            if (++v8 == v9)
            {
              goto LABEL_14;
            }
          }
        }

        if (v8 != v9)
        {
          return;
        }

LABEL_14:
        v5 += 240;
        if (v5 == v3)
        {
          if (v4 == v3)
          {
            break;
          }

          v10 = 0;
          v11 = *v2;
          do
          {
            v13 = *(v11 + 11);
            v12 = *(v11 + 12);
            if (v13 != v12)
            {
              while ((*v13 & 0x80000000) == 0)
              {
                if (++v13 == v12)
                {
                  goto LABEL_29;
                }
              }

              if (v13 != v12)
              {
                for (i = v13 + 1; i != v12; ++i)
                {
                  if ((*i & 0x80000000) == 0)
                  {
                    *v13++ = *i;
                  }
                }
              }
            }

            if (v13 != v12)
            {
              v12 = v13;
              *(v11 + 12) = v13;
            }

LABEL_29:
            v16 = *(v11 + 14);
            v15 = *(v11 + 15);
            if (v16 != v15)
            {
              while ((*v16 & 0x80000000) == 0)
              {
                if (++v16 == v15)
                {
                  goto LABEL_41;
                }
              }

              if (v16 != v15)
              {
                for (j = v16 + 1; j != v15; ++j)
                {
                  if ((*j & 0x80000000) == 0)
                  {
                    *v16++ = *j;
                  }
                }
              }
            }

            if (v16 != v15)
            {
              v15 = v16;
              *(v11 + 15) = v16;
            }

LABEL_41:
            v18 = *(v11 + 11);
            if (v18 != v12)
            {
              v19 = v18 + 1;
              if (v18 + 1 != v12)
              {
                v20 = *v18;
                v21 = v18 + 1;
                do
                {
                  v23 = *v21++;
                  v22 = v23;
                  v24 = v20 < v23;
                  if (v20 <= v23)
                  {
                    v20 = v22;
                  }

                  if (v24)
                  {
                    v18 = v19;
                  }

                  v19 = v21;
                }

                while (v21 != v12);
              }

              if (v10 <= *v18 + 1)
              {
                v10 = *v18 + 1;
              }
            }

            v25 = *(v11 + 14);
            if (v25 != v15)
            {
              v26 = v25 + 1;
              if (v25 + 1 != v15)
              {
                v27 = *v25;
                v28 = v25 + 1;
                do
                {
                  v30 = *v28++;
                  v29 = v30;
                  v31 = v27 < v30;
                  if (v27 <= v30)
                  {
                    v27 = v29;
                  }

                  if (v31)
                  {
                    v25 = v26;
                  }

                  v26 = v28;
                }

                while (v28 != v15);
              }

              v32 = *v25;
              if (v10 <= v32 + 1)
              {
                v10 = v32 + 1;
              }
            }

            v11 += 240;
          }

          while (v11 != v3);
          goto LABEL_64;
        }
      }
    }

    v10 = 0;
LABEL_64:
    v33 = -286331153 * ((v3 - v4) >> 4);
    v34 = v10;
    LOBYTE(v77[0]) = 0;
    std::vector<BOOL>::vector(__p, v33);
    std::vector<std::vector<BOOL>>::vector[abi:ne200100](v78, v10);
    if (__p[0])
    {
      operator delete(__p[0]);
    }

    LOBYTE(v76) = 0;
    std::vector<BOOL>::vector(__p, v33);
    std::vector<std::vector<BOOL>>::vector[abi:ne200100](v77, v10);
    if (__p[0])
    {
      operator delete(__p[0]);
    }

    LOBYTE(__p[0]) = 0;
    std::vector<BOOL>::vector(&v76, v10);
    LOBYTE(__p[0]) = 0;
    std::vector<BOOL>::vector(&v75, v33);
    v73 = 0u;
    v74 = 0u;
    *__p = 0u;
    v69 = 0;
    v70 = 0;
    v71 = 0;
    v35 = *v2;
    v36 = v2[1];
    v66 = v2;
    if (*v2 != v36)
    {
      v37 = 0;
      do
      {
        v38 = *(v35 + 11);
        v39 = *(v35 + 12);
        v40 = v37 >> 6;
        if (v38 != v39)
        {
          v41 = v78[0];
          v42 = *(v35 + 11);
          do
          {
            v43 = *v42++;
            *(*(v41 + 24 * v43) + 8 * v40) |= 1 << v37;
          }

          while (v42 != v39);
        }

        v44 = *(v35 + 14);
        v45 = *(v35 + 15);
        if (v44 != v45)
        {
          v46 = 1 << v37;
          do
          {
            v47 = *v44;
            *(*(v77[0] + 24 * v47) + 8 * v40) |= v46;
            if ((*(*(v78[0] + 24 * v47) + 8 * v40) & v46) != 0)
            {
              v68 = __PAIR64__(v37, v47);
              std::deque<std::pair<int,int>>::push_back(__p, &v68);
              *(v76 + ((*v44 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << *v44;
              *(v75 + v40) |= v46;
            }

            ++v44;
          }

          while (v44 != v45);
          v38 = *(v35 + 11);
          v44 = *(v35 + 14);
        }

        *(v35 + 12) = v38;
        *(v35 + 15) = v44;
        ++v37;
        v35 += 240;
      }

      while (v35 != v36);
      while (*(&v74 + 1))
      {
        v48 = *(*(__p[1] + ((v74 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v74 & 0x1FF));
        *&v74 = v74 + 1;
        --*(&v74 + 1);
        if (v74 >= 0x400)
        {
          operator delete(*__p[1]);
          __p[1] = __p[1] + 8;
          *&v74 = v74 - 512;
        }

        v49 = v70;
        if (v70 >= v71)
        {
          v51 = (v70 - v69) >> 3;
          if ((v51 + 1) >> 61)
          {
            std::vector<int>::__throw_length_error[abi:ne200100]();
          }

          v52 = (v71 - v69) >> 2;
          if (v52 <= v51 + 1)
          {
            v52 = v51 + 1;
          }

          if (v71 - v69 >= 0x7FFFFFFFFFFFFFF8)
          {
            v53 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v53 = v52;
          }

          if (v53)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(&v69, v53);
          }

          *(8 * v51) = v48;
          v50 = 8 * v51 + 8;
          v54 = (8 * v51 - (v70 - v69));
          memcpy(v54, v69, v70 - v69);
          v55 = v69;
          v69 = v54;
          v70 = v50;
          v71 = 0;
          if (v55)
          {
            operator delete(v55);
          }
        }

        else
        {
          *v70 = v48;
          v50 = (v49 + 8);
        }

        v56 = HIDWORD(v48);
        v70 = v50;
        v57 = -1;
        v67 = v48;
        do
        {
          v58 = (v57 + v48);
          v59 = -3;
          do
          {
            if ((v58 & 0x80000000) == 0 && v58 < v34)
            {
              v60 = (v56 + v59 + 2);
              if ((v60 & 0x80000000) == 0 && v60 < v33)
              {
                v61 = v60 >> 6;
                v62 = 1 << (v56 + v59 + 2);
                if ((*(v75 + (v60 >> 6)) & v62) == 0 && ((*(*(v78[0] + 24 * v58) + 8 * v61) & v62) != 0 || (*(*(v77[0] + 24 * v58) + 8 * v61) & v62) != 0))
                {
                  LODWORD(v68) = v58;
                  HIDWORD(v68) = v56 + v59 + 2;
                  std::deque<std::pair<int,int>>::push_back(__p, &v68);
                  *(v76 + (v58 >> 6)) |= 1 << v58;
                  *(v75 + v61) |= v62;
                }
              }
            }

            v59 += 2;
          }

          while (v59 < 0);
          ++v57;
          LODWORD(v48) = v67;
        }

        while (v57 != 2);
      }
    }

    v63 = v69;
    v64 = v70;
    if (v69 != v70)
    {
      do
      {
        std::vector<int>::push_back[abi:ne200100](&(*v66)[240 * *(v63 + 1) + 88], v63);
        v63 += 8;
      }

      while (v63 != v64);
      v63 = v69;
    }

    if (v63)
    {
      v70 = v63;
      operator delete(v63);
    }

    std::deque<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> *,std::allocator<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> *>>::~deque[abi:ne200100](__p);
    if (v75)
    {
      operator delete(v75);
    }

    if (v76)
    {
      operator delete(v76);
    }

    __p[0] = v77;
    std::vector<std::vector<BOOL>>::__destroy_vector::operator()[abi:ne200100](__p);
    __p[0] = v78;
    std::vector<std::vector<BOOL>>::__destroy_vector::operator()[abi:ne200100](__p);
    v2 = v66 + 34;
    v1 = v65;
  }
}

void sub_1B587F164(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  a17 = (v27 - 136);
  std::vector<std::vector<BOOL>>::__destroy_vector::operator()[abi:ne200100](&a17);
  a17 = (v27 - 112);
  std::vector<std::vector<BOOL>>::__destroy_vector::operator()[abi:ne200100](&a17);
  _Unwind_Resume(a1);
}

void *std::vector<std::vector<BOOL>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<std::vector<BOOL>>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void std::vector<std::vector<BOOL>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<BOOL>>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<BOOL>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<std::vector<BOOL>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::vector<BOOL>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::vector<BOOL>>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 24)
  {
    v5 = *(i - 24);
    v4 = v5;
    if (v5)
    {
      operator delete(v4);
    }
  }

  a1[1] = v2;
}

void LHash<unsigned int const*,double>::clear(void *a1, unsigned int a2)
{
  if (*a1)
  {
    v4 = 1 << (**a1 & 0x1F);
    v5 = 16;
    v6 = v4;
    do
    {
      v7 = *(*a1 + v5);
      if (v7)
      {
        MEMORY[0x1B8C85310](v7, 0x1000C8052888210);
      }

      v5 += 16;
      --v6;
    }

    while (v6);
    BM_free(*a1, 16 * (v4 - 1) + 24);
    *a1 = 0;
  }

  if (a2)
  {
    if (a2 >= 8)
    {
      a2 = ((a2 + 1) / 0.8);
    }

    LHash<char const*,unsigned int>::alloc(a1, a2);
  }
}

uint64_t LHash<unsigned int const*,double>::locate(unsigned int **a1, int *a2, _DWORD *a3)
{
  v3 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v6 = *v3;
  v4 = v3 + 2;
  v5 = v6;
  v7 = v6 & 0x1F;
  if (v7 > 2)
  {
    if (a2)
    {
      v10 = *a2;
      if (*a2 == -1)
      {
        v14 = 12345;
      }

      else
      {
        v11 = 0;
        v12 = a2 + 1;
        do
        {
          v11 += v10 + (v11 << 12);
          v13 = *v12++;
          v10 = v13;
        }

        while (v13 != -1);
        v14 = 1103515245 * v11 + 12345;
      }

      v8 = (v14 >> (30 - v7)) & ~(-1 << v7);
    }

    else
    {
      v8 = 0;
    }

    v22 = *&v4[4 * v8 + 2];
    if (!v22)
    {
LABEL_47:
      result = 0;
      goto LABEL_48;
    }

    v23 = ~(-1 << v7);
    while (1)
    {
      if (a2)
      {
        v24 = *v22;
        if (*v22 == -1)
        {
          v25 = 0;
LABEL_45:
          if (a2[v25] == -1)
          {
            result = 1;
            goto LABEL_48;
          }
        }

        else
        {
          v25 = 0;
          v26 = 1;
          while (1)
          {
            v27 = a2[v25];
            if (v27 == -1 || v24 != v27)
            {
              break;
            }

            v25 = v26;
            v24 = v22[v26++];
            if (v24 == -1)
            {
              goto LABEL_45;
            }
          }
        }
      }

      v8 = (v8 + 1) & v23;
      v22 = *&v4[4 * v8 + 2];
      if (!v22)
      {
        goto LABEL_47;
      }
    }
  }

  if (v5 >= 0x20)
  {
    v15 = 0;
    v8 = v5 >> 5;
    while (1)
    {
      v16 = *&v4[4 * v15 + 2];
      if (v16)
      {
        if (a2)
        {
          v17 = *v16;
          if (*v16 == -1)
          {
            v18 = 0;
LABEL_26:
            if (a2[v18] == -1)
            {
LABEL_49:
              result = 1;
              LODWORD(v8) = v15;
              goto LABEL_48;
            }
          }

          else
          {
            v18 = 0;
            v19 = 1;
            while (1)
            {
              v20 = a2[v18];
              if (v20 == -1 || v17 != v20)
              {
                break;
              }

              v18 = v19;
              v17 = v16[v19++];
              if (v17 == -1)
              {
                goto LABEL_26;
              }
            }
          }
        }
      }

      else if (!a2)
      {
        goto LABEL_49;
      }

      if (++v15 == v8)
      {
        goto LABEL_28;
      }
    }
  }

  LODWORD(v8) = 0;
LABEL_28:
  result = 0;
LABEL_48:
  *a3 = v8;
  return result;
}

uint64_t LHash<unsigned int const*,double>::insert(unsigned int **a1, int *a2, _BYTE *a3)
{
  if (!*a1)
  {
    LHash<char const*,unsigned int>::alloc(a1, 1u);
  }

  v15 = 0;
  v6 = LHash<unsigned int const*,double>::locate(a1, a2, &v15);
  *a3 = v6;
  v7 = *a1;
  if (!v6)
  {
    v8 = *v7;
    v9 = 1 << (v8 & 0x1F);
    v10 = v8 >> 5;
    if (v8 >= 0xE0)
    {
      v11 = ((v10 + 2) / 0.8);
    }

    else
    {
      v11 = (v10 + 1);
    }

    if (v11 > v9)
    {
      LHash<char const*,unsigned int>::alloc(a1, v11);
      **a1 = v8 & 0xFFFFFFE0 | **a1 & 0x1F;
      if ((**a1 & 0x1F) >= 3)
      {
        v12 = (v7 + 4);
        v13 = v9;
        do
        {
          if (*v12)
          {
            LHash<unsigned int const*,double>::locate(a1, *v12, &v15);
            *&(*a1)[4 * v15 + 2] = *(v12 - 1);
          }

          v12 += 2;
          --v13;
        }

        while (v13);
      }

      else
      {
        memcpy(*a1 + 2, v7 + 2, 16 * v10);
      }

      BM_free(v7, 16 * (v9 - 1) + 24);
      LHash<unsigned int const*,double>::locate(a1, a2, &v15);
    }

    Vocab::length(a2, v11);
    operator new[]();
  }

  return &v7[4 * v15 + 2];
}

uint64_t LHashIter<unsigned int const*,double>::LHashIter(uint64_t result, _DWORD **a2, uint64_t a3)
{
  v3 = *a2;
  *result = *a2;
  *(result + 8) = 0;
  if (v3)
  {
    *(result + 12) = *v3 >> 5;
    *(result + 16) = a3;
    *(result + 24) = 0;
    LHashIter<unsigned int const*,double>::sortKeys();
  }

  *(result + 12) = 0;
  *(result + 16) = a3;
  *(result + 24) = 0;
  return result;
}

void sub_1B587FA64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    MEMORY[0x1B8C85310](a12, v12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t LHashIter<unsigned int const*,double>::next(uint64_t a1, void *a2)
{
  v2 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v11 = 0;
  v4 = *(a1 + 8);
  if (v4 == *(a1 + 12))
  {
    return 0;
  }

  v10 = v2;
  v7 = *(a1 + 24);
  *(a1 + 8) = v4 + 1;
  LHash<unsigned int const*,double>::locate(&v10, *(v7 + 8 * v4), &v11);
  v10 = 0;
  v8 = v11;
  *a2 = *(*a1 + 16 * v11 + 16);
  v9 = *a1;
  LHash<unsigned int const*,double>::clear(&v10, 0);
  return &v9[4 * v8 + 2];
}

void *LHash<unsigned int,LHash<unsigned int const*,double>>::alloc(void *a1, unsigned int a2)
{
  v3 = -1;
  do
  {
    v4 = (1 << ++v3);
  }

  while (v4 < a2);
  result = BM_malloc(16 * (v4 - 1) + 24);
  *a1 = result;
  *result = *result & 0xFFFFFFE0 | v3 & 0x1F;
  **a1 &= 0x1Fu;
  v6 = (*a1 + 16);
  do
  {
    *v6 = -1;
    *(v6 - 1) = 0;
    v6 += 4;
    --v4;
  }

  while (v4);
  return result;
}

void LHash<unsigned int,LHash<unsigned int const*,double>>::clear(void *a1, unsigned int a2)
{
  v4 = *a1;
  if (v4)
  {
    BM_free(v4, 16 * ~(-1 << *v4) + 24);
    *a1 = 0;
  }

  if (a2)
  {
    if (a2 >= 8)
    {
      a2 = ((a2 + 1) / 0.8);
    }

    LHash<unsigned int,LHash<unsigned int const*,double>>::alloc(a1, a2);
  }
}

uint64_t LHash<unsigned int,LHash<unsigned int const*,double>>::insert(void *a1, unsigned int a2, _BYTE *a3)
{
  if (!*a1)
  {
    LHash<unsigned int,LHash<unsigned int const*,double>>::alloc(a1, 1u);
  }

  v21 = 0;
  v6 = LHash<unsigned int,double>::locate(a1, a2, &v21);
  *a3 = v6;
  v7 = *a1;
  if (!v6)
  {
    v8 = *v7;
    v9 = 1 << (v8 & 0x1F);
    v10 = v8 >> 5;
    if (v8 >= 0xE0)
    {
      v11 = ((v10 + 2) / 0.8);
    }

    else
    {
      v11 = v10 + 1;
    }

    if (v11 > v9)
    {
      LHash<unsigned int,LHash<unsigned int const*,double>>::alloc(a1, v11);
      **a1 = v8 & 0xFFFFFFE0 | **a1 & 0x1F;
      if ((**a1 & 0x1Fu) >= 3)
      {
        v12 = (v7 + 2);
        v13 = 1 << (v8 & 0x1F);
        v14 = (v7 + 2);
        do
        {
          v16 = *v14;
          v14 += 4;
          v15 = v16;
          if (v16 != -1)
          {
            v17 = v12 - 2;
            LHash<unsigned int,double>::locate(a1, v15, &v21);
            *(*a1 + 16 * v21 + 8) = *v17;
          }

          v12 = v14;
          --v13;
        }

        while (v13);
      }

      else
      {
        memcpy((*a1 + 8), v7 + 1, 16 * v10);
      }

      BM_free(v7, 16 * (v9 - 1) + 24);
      LHash<unsigned int,double>::locate(a1, a2, &v21);
      v7 = *a1;
    }

    LODWORD(v7[2 * v21 + 2]) = a2;
    v18 = v21;
    v7[2 * v21 + 1] = 0;
    v19 = *a1;
    *(*a1 + 16 * v18 + 8) = 0;
    *v19 += 32;
    v7 = *a1;
  }

  return &v7[2 * v21 + 1];
}

uint64_t LHash<unsigned int,LHash<unsigned int const*,double>>::remove(unsigned int **a1, unsigned int a2, void *a3)
{
  v16 = 0;
  result = LHash<unsigned int,double>::locate(a1, a2, &v16);
  if (result)
  {
    v6 = *a1;
    v7 = (*a1 + 2);
    *(v7 + 16 * v16 + 8) = -1;
    if (a3)
    {
      *a3 = *(v7 + 16 * v16);
      v6 = *a1;
    }

    v8 = *v6;
    v9 = *v6 & 0x1F;
    if (v9 >= 3)
    {
      v15 = 0;
      v11 = v16 + 1;
      while (1)
      {
        v16 = v11 & ~(-1 << v9);
        v12 = v6[4 * v16 + 4];
        if (v12 == -1)
        {
          break;
        }

        v13 = LHash<unsigned int,double>::locate(a1, v12, &v15);
        v6 = *a1;
        if (!v13)
        {
          v14 = v16;
          *&v6[4 * v15 + 2] = *&v6[4 * v16 + 2];
          v6 = *a1;
          (*a1)[4 * v14 + 4] = -1;
        }

        v15 = 0;
        v11 = v16 + 1;
        v9 = *v6;
      }
    }

    else
    {
      v10 = v8 >> 5;
      memmove(&v6[4 * v16 + 2], &v6[4 * v16 + 6], 16 * (~v16 + (v8 >> 5)));
      v6 = *a1;
      (*a1)[4 * v10] = -1;
    }

    *v6 -= 32;
    return 1;
  }

  return result;
}

uint64_t LHashIter<unsigned int,LHash<unsigned int const*,double>>::LHashIter(uint64_t result, _DWORD **a2, uint64_t a3)
{
  v3 = *a2;
  *result = *a2;
  *(result + 8) = 0;
  if (v3)
  {
    *(result + 12) = *v3 >> 5;
    *(result + 16) = a3;
    *(result + 24) = 0;
    LHashIter<unsigned int,LHash<unsigned int const*,double>>::sortKeys();
  }

  *(result + 12) = 0;
  *(result + 16) = a3;
  *(result + 24) = 0;
  return result;
}

void sub_1B5880110(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    MEMORY[0x1B8C85310](a12, v12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t LHashIter<unsigned int,LHash<unsigned int const*,double>>::next(uint64_t a1, _DWORD *a2)
{
  v2 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v10 = 0;
  v4 = *(a1 + 8);
  if (v4 == *(a1 + 12))
  {
    return 0;
  }

  v9 = v2;
  v7 = *(a1 + 24);
  *(a1 + 8) = v4 + 1;
  LHash<unsigned int,double>::locate(&v9, *(v7 + 4 * v4), &v10);
  v8 = *a1 + 16 * v10;
  result = v8 + 8;
  *a2 = *(v8 + 16);
  return result;
}

_DWORD **Map2<unsigned int,unsigned int const*,double>::~Map2(_DWORD **a1)
{
  LHashIter<unsigned int,LHash<unsigned int const*,double>>::LHashIter(v5, a1, 0);
  v4 = 0;
  while (1)
  {
    v2 = LHashIter<unsigned int,LHash<unsigned int const*,double>>::next(v5, &v4);
    if (!v2)
    {
      break;
    }

    LHash<unsigned int const*,double>::clear(v2, 0);
  }

  if (v6)
  {
    MEMORY[0x1B8C85310](v6, 0x1000C8052888210);
  }

  LHash<unsigned int,LHash<unsigned int const*,double>>::clear(a1, 0);
  return a1;
}

uint64_t Map2<unsigned int,unsigned int const*,double>::numEntries(_DWORD **a1, unsigned int a2)
{
  v5 = 0;
  result = LHash<unsigned int,double>::locate(a1, a2, &v5);
  if (result)
  {
    v4 = *&(*a1)[4 * v5 + 2];
    if (v4)
    {
      return *v4 >> 5;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t Map2<unsigned int,unsigned int const*,double>::clear(unsigned int **a1)
{
  LHashIter<unsigned int,LHash<unsigned int const*,double>>::LHashIter(v5, a1, 0);
  for (i = 0; ; LHash<unsigned int,LHash<unsigned int const*,double>>::remove(a1, i, 0))
  {
    v2 = LHashIter<unsigned int,LHash<unsigned int const*,double>>::next(v5, &i);
    if (!v2)
    {
      break;
    }

    LHash<unsigned int const*,double>::clear(v2, 0);
  }

  LHash<unsigned int,LHash<unsigned int const*,double>>::clear(a1, 0);
  result = v6;
  if (v6)
  {
    return MEMORY[0x1B8C85310](v6, 0x1000C8052888210);
  }

  return result;
}

void sub_1B5880344(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (a14)
  {
    MEMORY[0x1B8C85310](a14, 0x1000C8052888210);
  }

  _Unwind_Resume(exception_object);
}

void *quasar::OnlineLatticeRescalingDecoder::OnlineLatticeRescalingDecoder(uint64_t a1, __int128 *a2)
{
  result = quasar::Decoder::Decoder(a1, a2);
  *result = &unk_1F2D35FB8;
  return result;
}

void quasar::OnlineLatticeRescalingDecoder::finishInit(quasar::OnlineLatticeRescalingDecoder *this)
{
  v1 = *(this + 116);
  if (v1 > 0.0 || *(this + 117) > 0.0)
  {
    *(this + 473) = 1;
  }

  if (v1 < 0.0)
  {
    *(this + 116) = *(this + 114);
  }

  if (*(this + 117) < 0.0)
  {
    *(this + 117) = *(this + 115);
  }

  if ((*(this + 472) & 1) == 0 && quasar::gLogLevel >= 5)
  {
    memset(v2, 0, sizeof(v2));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, "New scales will be applied to lattice without undoing existing scales", 69);
    quasar::QuasarDebugMessage::~QuasarDebugMessage(v2);
  }
}

void quasar::OnlineLatticeRescalingDecoder::runImpl(uint64_t a1, uint64_t a2, quasar::DecoderChainOutput **a3)
{
  if (*(a1 + 473) == 1 && fst::CompactLatticeContainsLME<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>(*(*a3 + 21), 500000000))
  {
    if (quasar::gLogLevel >= 4)
    {
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
      v10 = 0u;
      v11 = 0u;
      *__p = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Rescore with LME-specific scales", 32);
      quasar::QuasarInfoMessage::~QuasarInfoMessage(__p);
    }

    v5 = 464;
    v6 = 468;
  }

  else
  {
    if (quasar::gLogLevel >= 5)
    {
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
      v10 = 0u;
      v11 = 0u;
      *__p = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Rescore with generic scales", 27);
      quasar::QuasarDebugMessage::~QuasarDebugMessage(__p);
    }

    v5 = 456;
    v6 = 460;
  }

  v7 = quasar::DecoderChainOutput::scaleResultLattice(*a3, *(a1 + v6), *(a1 + v5), *(a1 + 472));
  if (*(*a3 + 134))
  {
    v8 = !v7;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "rescored");
    quasar::UttInfo::addResult();
  }

  fst::VectorFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>::VectorFst();
}

BOOL fst::CompactLatticeContainsLME<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>(uint64_t a1, int a2)
{
  v4 = (*(*a1 + 160))(a1);
  if (v4 < 1)
  {
    return 0;
  }

  v5 = v4;
  v6 = 0;
  v7 = 1;
  while (2)
  {
    v12 = 0;
    (*(*a1 + 136))(a1, v6, v10);
    while (1)
    {
      if (!v10[0])
      {
        if (v12 >= v10[2])
        {
          goto LABEL_16;
        }

        goto LABEL_9;
      }

      if ((*(*v10[0] + 24))(v10[0]))
      {
        break;
      }

      if (v10[0])
      {
        v8 = (*(*v10[0] + 32))();
        goto LABEL_10;
      }

LABEL_9:
      v8 = (v10[1] + 48 * v12);
LABEL_10:
      if (*v8 >= a2)
      {
        if (v10[0])
        {
          (*(*v10[0] + 8))();
        }

        else if (v11)
        {
          --*v11;
        }

        return v7;
      }

      if (v10[0])
      {
        (*(*v10[0] + 40))();
      }

      else
      {
        ++v12;
      }
    }

    if (v10[0])
    {
      (*(*v10[0] + 8))();
      goto LABEL_18;
    }

LABEL_16:
    if (v11)
    {
      --*v11;
    }

LABEL_18:
    v6 = (v6 + 1);
    v7 = v6 < v5;
    if (v6 != v5)
    {
      continue;
    }

    return v7;
  }
}

void sub_1B5880994(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    fst::CreateSuperFinal<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>(a10);
  }

  else
  {
    quasar::InverseTextNormalizer::getNumTokens((v10 + 24));
  }

  _Unwind_Resume(a1);
}

double quasar::OnlineLatticeRescalingDecoder::registerParams(quasar::OnlineLatticeRescalingDecoder *this, const void **a2)
{
  std::string::basic_string[abi:ne200100]<0>(v7, "am-scale");
  std::string::basic_string[abi:ne200100]<0>(__p, "Scaling factor for acoustic likelihoods");
  quasar::SystemConfig::Register<float>(a2, v7, this + 456, __p, 0, 1, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v7, "lm-scale");
  std::string::basic_string[abi:ne200100]<0>(__p, "Scaling factor for LM probabilities. Note: the ratio acoustic-scale/lm-scale is all that matters.");
  quasar::SystemConfig::Register<float>(a2, v7, this + 460, __p, 0, 1, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v7, "am-scale-for-lme");
  std::string::basic_string[abi:ne200100]<0>(__p, "Scaling factor for acoustic likelihoods when lattice contains at least one LME token");
  quasar::SystemConfig::Register<float>(a2, v7, this + 464, __p, 0, 252, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v7, "lm-scale-for-lme");
  std::string::basic_string[abi:ne200100]<0>(__p, "Scaling factor for LM probabilities when lattice contains at least one LME token");
  quasar::SystemConfig::Register<float>(a2, v7, this + 468, __p, 0, 252, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v7, "undo-old-scales");
  std::string::basic_string[abi:ne200100]<0>(__p, "true by default; if set to false, apply scales on lattice without undoing existing scales");
  quasar::SystemConfig::Register<BOOL>(a2, v7, this + 472, __p, 0, 252, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  result = 0.00781250185;
  *(this + 456) = xmmword_1B5B2CEE0;
  *(this + 236) = 1;
  return result;
}

void sub_1B5880C28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

void quasar::OnlineLatticeRescalingDecoder::~OnlineLatticeRescalingDecoder(quasar::OnlineLatticeRescalingDecoder *this)
{
  quasar::Decoder::~Decoder(this);

  JUMPOUT(0x1B8C85350);
}

void quasar::SpokenFormLine::parseListAndFieldNames(quasar::SpokenFormLine *this)
{
  if ((*(this + 31) & 0x8000000000000000) != 0)
  {
    if (!*(this + 2))
    {
      return;
    }

LABEL_5:
    std::string::basic_string[abi:ne200100]<0>(__p, " ");
    quasar::splitAndTrim((this + 8), __p, &v42);
    if (SBYTE7(v24) < 0)
    {
      operator delete(__p[0]);
    }

    v2 = v42;
    v3 = v43;
    if (v42 == v43)
    {
LABEL_54:
      __p[0] = &v42;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
      return;
    }

    while (1)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "$");
      v4 = quasar::startsWith(v2, __p);
      v5 = v4;
      if ((SBYTE7(v24) & 0x80000000) == 0)
      {
        break;
      }

      operator delete(__p[0]);
      if (v5)
      {
        goto LABEL_12;
      }

LABEL_53:
      if (++v2 == v3)
      {
        goto LABEL_54;
      }
    }

    if (!v4)
    {
      goto LABEL_53;
    }

LABEL_12:
    std::string::basic_string[abi:ne200100]<0>(__p, ".");
    quasar::splitAndTrim(v2, __p, v41);
    if (SBYTE7(v24) < 0)
    {
      operator delete(__p[0]);
    }

    if ((v41[1] - v41[0]) != 48)
    {
LABEL_52:
      __p[0] = v41;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
      goto LABEL_53;
    }

    size = SHIBYTE(v41[0]->__r_.__value_.__r.__words[2]);
    if ((size & 0x8000000000000000) != 0)
    {
      size = v41[0]->__r_.__value_.__l.__size_;
    }

    std::string::basic_string(&__str, v41[0], 1uLL, size - 1, v44);
    v7 = *(this + 87);
    if (v7 < 0)
    {
      v8 = *(this + 9);
      if (v8)
      {
        goto LABEL_21;
      }
    }

    else if (*(this + 87))
    {
      v8 = *(this + 9);
LABEL_21:
      if (v7 >= 0)
      {
        v9 = *(this + 87);
      }

      else
      {
        v9 = v8;
      }

      v10 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v10 = __str.__r_.__value_.__l.__size_;
      }

      if (v9 != v10 || (v7 >= 0 ? (v11 = this + 64) : (v11 = *(this + 8)), (__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (p_str = &__str) : (p_str = __str.__r_.__value_.__r.__words[0]), memcmp(v11, p_str, v9)))
      {
        if (quasar::gLogLevel >= 5)
        {
          v38 = 0u;
          v39 = 0u;
          v36 = 0u;
          v37 = 0u;
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
          *__p = 0u;
          kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
          v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "More than one lists detected in ", 32);
          v14 = *(this + 31);
          if (v14 >= 0)
          {
            v15 = this + 8;
          }

          else
          {
            v15 = *(this + 1);
          }

          if (v14 >= 0)
          {
            v16 = *(this + 31);
          }

          else
          {
            v16 = *(this + 2);
          }

          v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v15, v16);
          v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, ", only first list [", 19);
          v19 = *(this + 87);
          if (v19 >= 0)
          {
            v20 = this + 64;
          }

          else
          {
            v20 = *(this + 8);
          }

          if (v19 >= 0)
          {
            v21 = *(this + 87);
          }

          else
          {
            v21 = *(this + 9);
          }

          v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, v20, v21);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "] will be used.", 15);
          quasar::QuasarDebugMessage::~QuasarDebugMessage(__p);
        }
      }

      goto LABEL_50;
    }

    std::string::operator=((this + 64), &__str);
LABEL_50:
    std::vector<std::string>::push_back[abi:ne200100](this + 88, &v41[0][1]);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    goto LABEL_52;
  }

  if (*(this + 31))
  {
    goto LABEL_5;
  }
}

void sub_1B5880F8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t quasar::SpokenFormLine::SpokenFormLine(uint64_t a1, std::string *a2)
{
  *(a1 + 8) = 0u;
  v4 = (a1 + 8);
  *(a1 + 64) = 0u;
  *a1 = 1065353216;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  std::string::basic_string[abi:ne200100]<0>(__p, "prior=");
  v5 = quasar::startsWith(a2, __p);
  v6 = v5;
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
    if (!v6)
    {
      goto LABEL_24;
    }
  }

  else if (!v5)
  {
    goto LABEL_24;
  }

  v7 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  if (v7 >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = a2->__r_.__value_.__r.__words[0];
  }

  if (v7 >= 0)
  {
    size = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = a2->__r_.__value_.__l.__size_;
  }

  if (size >= 1)
  {
    v10 = v8 + size;
    v11 = size;
    v12 = v8;
    do
    {
      v13 = memchr(v12, 32, v11);
      if (!v13)
      {
        break;
      }

      if (*v13 == 32)
      {
        if (v13 == v10)
        {
          break;
        }

        v14 = v13 - v8;
        if (v14 == -1)
        {
          break;
        }

        std::string::basic_string(__p, a2, v14 + 1, size + ~v14, &v17);
        if (*(a1 + 31) < 0)
        {
          operator delete(v4->__r_.__value_.__l.__data_);
        }

        *v4 = __p[0];
        std::string::basic_string(__p, a2, 6uLL, v14 - 6, &v17);
        *a1 = std::stof(__p, 0);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }

        *(a1 + 56) = 1;
        goto LABEL_25;
      }

      v12 = (v13 + 1);
      v11 = v10 - v12;
    }

    while (v10 - v12 >= 1);
  }

LABEL_24:
  std::string::operator=(v4, a2);
LABEL_25:
  quasar::SpokenFormLine::parseListAndFieldNames(a1);
  return a1;
}

void sub_1B58811E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 __p, __int128 a10, __int128 a11, __int128 a12, __int128 a13, __int128 a14, __int128 a15, __int128 a16, __int128 a17, __int128 a18, __int128 a19, __int128 a20, __int128 a21, __int128 a22, __int128 a23, __int128 a24, __int128 a25)
{
  if (SBYTE7(a10) < 0)
  {
    operator delete(__p);
  }

  if (a2 == 1)
  {
    v30 = __cxa_begin_catch(a1);
    if (quasar::gLogLevel >= 1)
    {
      v31 = v30;
      a24 = 0u;
      a25 = 0u;
      a22 = 0u;
      a23 = 0u;
      a20 = 0u;
      a21 = 0u;
      a18 = 0u;
      a19 = 0u;
      a16 = 0u;
      a17 = 0u;
      a14 = 0u;
      a15 = 0u;
      a12 = 0u;
      a13 = 0u;
      a10 = 0u;
      a11 = 0u;
      __p = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
      v32 = (*(*v31 + 16))(v31);
      v33 = strlen(v32);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, v32, v33);
      quasar::QuasarErrorMessage::~QuasarErrorMessage(&__p);
    }

    __cxa_end_catch();
    JUMPOUT(0x1B58811B8);
  }

  *&__p = v25 + 88;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (*(v25 + 87) < 0)
  {
    operator delete(*v27);
  }

  if (*(v25 + 55) < 0)
  {
    operator delete(*(v25 + 32));
  }

  if (*(v25 + 31) < 0)
  {
    operator delete(*v26);
  }

  _Unwind_Resume(a1);
}

quasar::SpokenFormLine *quasar::SpokenFormLine::SpokenFormLine(quasar::SpokenFormLine *this, _DWORD *a2, __int128 *a3)
{
  *this = *a2;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((this + 8), *a3, *(a3 + 1));
  }

  else
  {
    v4 = *a3;
    *(this + 3) = *(a3 + 2);
    *(this + 8) = v4;
  }

  *(this + 4) = 0;
  *(this + 4) = 0u;
  *(this + 28) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 56) = 1;
  quasar::SpokenFormLine::parseListAndFieldNames(this);
  return this;
}

void sub_1B58813E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  a10 = (v10 + 88);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a10);
  if (*(v10 + 87) < 0)
  {
    operator delete(*v13);
  }

  quasar::SpokenFormLine::SpokenFormLine(v10, v12, v11);
  _Unwind_Resume(a1);
}

quasar::SpokenFormLine *quasar::SpokenFormLine::SpokenFormLine(quasar::SpokenFormLine *this, const quasar::SpokenFormLine *a2)
{
  *this = 1065353216;
  *(this + 8) = 0u;
  *(this + 4) = 0u;
  v4 = (this + 64);
  v5 = (this + 88);
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 28) = 0;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *this = *a2;
  std::string::operator=((this + 8), (a2 + 8));
  std::string::operator=((this + 32), (a2 + 32));
  *(this + 28) = *(a2 + 28);
  std::string::operator=(v4, (a2 + 64));
  if (this != a2)
  {
    std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(v5, *(a2 + 11), *(a2 + 12), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 12) - *(a2 + 11)) >> 3));
  }

  return this;
}

void sub_1B58814E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  if (*(v2 + 87) < 0)
  {
    operator delete(*v4);
  }

  quasar::SpokenFormLine::SpokenFormLine(v2, (v2 + 32), v3);
  _Unwind_Resume(a1);
}

void quasar::SpokenFormLine::removeTokenSpokenForm(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4[6] = *MEMORY[0x1E69E9840];
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, "\");
  quasar::split(a1, __p, 0, v4);
}

void sub_1B58816F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  __p = &a15;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(a1);
}

void quasar::SpokenFormLine::getTokenizedLineWithPrior(uint64_t a1@<X0>, uint64_t *a2@<X1>, const void ***a3@<X2>, uint64_t *a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, std::string *a7@<X8>)
{
  if (*(a1 + 56) == 1)
  {
    std::to_string(&v28, *a1);
    v14 = std::string::insert(&v28, 0, "prior=");
    v15 = *&v14->__r_.__value_.__l.__data_;
    v29.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
    *&v29.__r_.__value_.__l.__data_ = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    v16 = std::string::append(&v29, " ");
    v17 = *&v16->__r_.__value_.__l.__data_;
    v30.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
    *&v30.__r_.__value_.__l.__data_ = v17;
    v16->__r_.__value_.__l.__size_ = 0;
    v16->__r_.__value_.__r.__words[2] = 0;
    v16->__r_.__value_.__r.__words[0] = 0;
    v18 = *a2;
    v19 = a2[1];
    v26[0] = v18;
    v26[1] = v19;
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    quasar::SpokenFormLine::getTokenizedLine(a1, v26, a3, a4, a5, a6, &__p);
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

    v22 = std::string::append(&v30, p_p, size);
    v23 = *&v22->__r_.__value_.__l.__data_;
    a7->__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
    *&a7->__r_.__value_.__l.__data_ = v23;
    v22->__r_.__value_.__l.__size_ = 0;
    v22->__r_.__value_.__r.__words[2] = 0;
    v22->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v19)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v19);
    }

    if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v30.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v29.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v28.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v24 = a2[1];
    v25[0] = *a2;
    v25[1] = v24;
    if (v24)
    {
      atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    quasar::SpokenFormLine::getTokenizedLine(a1, v25, a3, a4, a5, a6, a7);
    if (v24)
    {

      std::__shared_weak_count::__release_shared[abi:ne200100](v24);
    }
  }
}

void sub_1B5881948(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  if (*(v31 - 73) < 0)
  {
    operator delete(*(v31 - 96));
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

void quasar::SpokenFormLine::getTokenizedLine(uint64_t a1@<X0>, void *a2@<X1>, const void ***a3@<X2>, uint64_t *a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, std::string *a7@<X8>)
{
  v46 = *MEMORY[0x1E69E9840];
  if (*(a1 + 57) != 1 || a5 != 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v41, "\\EOS");
    std::string::basic_string[abi:ne200100]<0>(__p, "[");
    std::string::basic_string[abi:ne200100]<0>(&__p[1], "]");
    std::string::basic_string[abi:ne200100]<0>(v44, "(");
    std::string::basic_string[abi:ne200100]<0>(&v44[24], ")");
    std::string::basic_string[abi:ne200100]<0>(v45, "|");
    std::string::basic_string[abi:ne200100]<0>(&v45[24], "\\EOS");
    std::unordered_set<std::string>::unordered_set(v40, &__p[0].__r_.__value_.__l.__data_, 6);
    for (i = 0; i != -144; i -= 24)
    {
      if (v45[i + 47] < 0)
      {
        operator delete(*&v45[i + 24]);
      }
    }

    v15 = *a3;
    v14 = a3[1];
    while (v15 != v14)
    {
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(v40, v15);
      v15 += 3;
    }

    std::string::basic_string[abi:ne200100]<0>(__p, " ");
    quasar::splitAndTrimNoEmpty((a1 + 8), __p, &v38);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    std::vector<std::string>::push_back[abi:ne200100](&v38, v41);
    v35 = 0;
    v36 = 0;
    v37 = 0;
    memset(&v34, 0, sizeof(v34));
    v17 = v38;
    v16 = v39;
    if (v38 != v39)
    {
      v18 = 0;
      while (1)
      {
        if (std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(v40, v17))
        {
          v19 = 1;
          if (!v18)
          {
            goto LABEL_35;
          }
        }

        else
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "//");
          if (quasar::startsWith(v17, __p))
          {
            v19 = 1;
          }

          else
          {
            std::string::basic_string[abi:ne200100]<0>(&v31, "\\PM-");
            if (quasar::startsWith(v17, &v31))
            {
              v19 = 1;
            }

            else
            {
              std::string::basic_string[abi:ne200100]<0>(&v28, "prior=");
              v19 = quasar::startsWith(v17, &v28) || a6 + 8 != std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(a6, v17);
              if (SHIBYTE(v30) < 0)
              {
                operator delete(v28);
              }
            }

            if (v33 < 0)
            {
              operator delete(v31);
            }
          }

          if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p[0].__r_.__value_.__l.__data_);
          }

          if (v18 != v19)
          {
            if (v18)
            {
              std::vector<std::string>::__insert_with_size[abi:ne200100]<std::__wrap_iter<std::string*>,std::__wrap_iter<std::string*>>(&v34, v34.__end_, v35, v36, 0xAAAAAAAAAAAAAAABLL * ((v36 - v35) >> 3));
            }

            else
            {
LABEL_35:
              if (v35 != v36)
              {
                __p[0].__r_.__value_.__r.__words[0] = " ";
                __p[0].__r_.__value_.__l.__size_ = 1;
                quasar::join<std::vector<std::string>>(&v35, __p);
                v28 = 0;
                v29 = 0;
                v30 = 0;
                (*(**a2 + 16))(*a2, &v31, &v28);
                if (v28 == v29)
                {
                  if (quasar::gLogLevel >= 5)
                  {
                    memset(v45, 0, 176);
                    memset(v44, 0, sizeof(v44));
                    memset(__p, 0, sizeof(__p));
                    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
                    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Failed to tokenize ", 19);
                    if ((v33 & 0x80u) == 0)
                    {
                      v21 = &v31;
                    }

                    else
                    {
                      v21 = v31;
                    }

                    if ((v33 & 0x80u) == 0)
                    {
                      v22 = v33;
                    }

                    else
                    {
                      v22 = v32;
                    }

                    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, v21, v22);
                    quasar::QuasarDebugMessage::~QuasarDebugMessage(__p);
                  }

                  std::vector<std::string>::__insert_with_size[abi:ne200100]<std::__wrap_iter<std::string*>,std::__wrap_iter<std::string*>>(&v34, v34.__end_, v35, v36, 0xAAAAAAAAAAAAAAABLL * ((v36 - v35) >> 3));
                }

                else if (v29 - v28 == 32)
                {
                  if (*v28 != *(v28 + 1))
                  {
                    quasar::SpokenFormLine::removeTokenSpokenForm(*v28, __p);
                  }
                }

                else
                {
                  std::string::basic_string[abi:ne200100]<0>(__p, "(");
                  std::vector<std::string>::push_back[abi:ne200100](&v34, __p);
                  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(__p[0].__r_.__value_.__l.__data_);
                  }

                  v23 = v28;
                  while (v23 != v29)
                  {
                    if (*v23 != v23[1])
                    {
                      quasar::SpokenFormLine::removeTokenSpokenForm(*v23, __p);
                    }

                    v23 += 4;
                    if (v29 != v23)
                    {
                      std::string::basic_string[abi:ne200100]<0>(__p, "|");
                      std::vector<std::string>::push_back[abi:ne200100](&v34, __p);
                      if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(__p[0].__r_.__value_.__l.__data_);
                      }
                    }
                  }

                  std::string::basic_string[abi:ne200100]<0>(__p, ")");
                  std::vector<std::string>::push_back[abi:ne200100](&v34, __p);
                  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(__p[0].__r_.__value_.__l.__data_);
                  }
                }

                __p[0].__r_.__value_.__r.__words[0] = &v28;
                std::vector<quasar::TextTokenizer::TokenString>::__destroy_vector::operator()[abi:ne200100](__p);
                if (v33 < 0)
                {
                  operator delete(v31);
                }
              }
            }

            v24 = v35;
            v25 = v36;
            while (v25 != v24)
            {
              v26 = *(v25 - 1);
              v25 -= 3;
              if (v26 < 0)
              {
                operator delete(*v25);
              }
            }

            v36 = v24;
            goto LABEL_68;
          }

          v19 = v18;
        }

LABEL_68:
        std::vector<std::string>::push_back[abi:ne200100](&v35, v17);
        v17 += 24;
        v18 = v19;
        if (v17 == v16)
        {
          if (v35 != v36)
          {
            std::vector<std::string>::__insert_with_size[abi:ne200100]<std::__wrap_iter<std::string*>,std::__wrap_iter<std::string*>>(&v34, v34.__end_, v35, (v36 - 24), 0xAAAAAAAAAAAAAAABLL * ((v36 - 24 - v35) >> 3));
          }

          break;
        }
      }
    }

    v31 = " ";
    v32 = 1;
    quasar::join<std::vector<std::string>>(&v34, &v31);
    if (*(a1 + 55) < 0)
    {
      operator delete(*(a1 + 32));
    }

    *(a1 + 32) = __p[0];
    quasar::RegexRules::applyRules(a4, a1 + 32, __p);
    std::string::operator=((a1 + 32), __p);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    *(a1 + 57) = 1;
    __p[0].__r_.__value_.__r.__words[0] = &v34;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
    __p[0].__r_.__value_.__r.__words[0] = &v35;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
    __p[0].__r_.__value_.__r.__words[0] = &v38;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v40);
    if (v42 < 0)
    {
      operator delete(v41[0]);
    }
  }

  if (*(a1 + 55) < 0)
  {
    std::string::__init_copy_ctor_external(a7, *(a1 + 32), *(a1 + 40));
  }

  else
  {
    *&a7->__r_.__value_.__l.__data_ = *(a1 + 32);
    a7->__r_.__value_.__r.__words[2] = *(a1 + 48);
  }
}

void sub_1B58820A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *__p, uint64_t a41, int a42, __int16 a43, char a44, char a45, char *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51)
{
  a46 = &a26;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a46);
  a46 = &a29;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a46);
  a46 = &a32;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a46);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&a35);
  if (a45 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t quasar::SpokenForm::SpokenForm(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  quasar::SpokenForm::loadFromFile(a1, a2, &v4);
  return a1;
}

void quasar::SpokenForm::loadFromFile(void *a1, uint64_t a2, _BYTE *a3)
{
  v40[19] = *MEMORY[0x1E69E9840];
  memset(&__str, 0, sizeof(__str));
  std::ifstream::basic_ifstream(v38);
  *a3 = 1;
  std::string::basic_string[abi:ne200100]<0>(&v35, "");
  memset(v34, 0, sizeof(v34));
  if (!v39[15])
  {
    if (quasar::gLogLevel >= 1)
    {
      memset(v32, 0, sizeof(v32));
      *__p = 0uLL;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Unable to open the file to read.", 32);
      quasar::QuasarErrorMessage::~QuasarErrorMessage(__p);
    }

    *a3 = 0;
    goto LABEL_108;
  }

  v5 = MEMORY[0x1E69E5318];
  while (1)
  {
    std::ios_base::getloc((v38 + *(v38[0] - 24)));
    v6 = std::locale::use_facet(__p, v5);
    v7 = (v6->__vftable[2].~facet_0)(v6, 10);
    std::locale::~locale(__p);
    v8 = std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v38, &__str, v7);
    if ((*(v8 + *(*v8 - 24) + 32) & 5) != 0)
    {
      break;
    }

    quasar::trim(&__str);
    std::string::basic_string[abi:ne200100]<0>(__p, "#");
    if (quasar::startsWith(&__str, __p))
    {
      goto LABEL_5;
    }

    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __str.__r_.__value_.__l.__size_;
    }

    if (SBYTE7(v32[0]) < 0)
    {
      operator delete(__p[0]);
      if (size)
      {
LABEL_14:
        std::string::basic_string[abi:ne200100]<0>(__p, "[");
        if (quasar::startsWith(&__str, __p))
        {
          std::string::basic_string[abi:ne200100]<0>(&v33, "]");
          if (quasar::endsWith(&__str, &v33))
          {
            if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              p_str = &__str;
            }

            else
            {
              p_str = __str.__r_.__value_.__r.__words[0];
            }

            if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v11 = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v11 = __str.__r_.__value_.__l.__size_;
            }

            if (v11 < 1)
            {
              v16 = 1;
            }

            else
            {
              v12 = p_str + v11;
              v13 = p_str;
              do
              {
                v14 = memchr(v13, 32, v11);
                if (!v14)
                {
                  break;
                }

                if (*v14 == 32)
                {
                  goto LABEL_28;
                }

                v13 = (v14 + 1);
                v11 = v12 - v13;
              }

              while (v12 - v13 > 0);
              v14 = v12;
LABEL_28:
              v16 = v14 == v12 || v14 - p_str == -1;
            }
          }

          else
          {
            v16 = 0;
          }

          if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v33.__r_.__value_.__l.__data_);
          }
        }

        else
        {
          v16 = 0;
        }

        if ((SBYTE7(v32[0]) & 0x80000000) == 0)
        {
          if (v16)
          {
            goto LABEL_41;
          }

          goto LABEL_48;
        }

        operator delete(__p[0]);
        if (v16)
        {
LABEL_41:
          v17 = HIBYTE(v35.__r_.__value_.__r.__words[2]);
          if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v17 = v35.__r_.__value_.__l.__size_;
          }

          if (v17)
          {
            quasar::SpokenFormSection::appendRawLine(v34, &v35);
          }

          if (SHIBYTE(v34[0].__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(__p, v34[0].__r_.__value_.__l.__data_, v34[0].__r_.__value_.__l.__size_);
          }

          else
          {
            *__p = *&v34[0].__r_.__value_.__l.__data_;
            *&v32[0] = *(&v34[0].__r_.__value_.__l + 2);
          }

          if (SBYTE7(v32[0]) < 0)
          {
            v23 = __p[1];
            operator delete(__p[0]);
            if (!v23)
            {
              goto LABEL_79;
            }
          }

          else if (!BYTE7(v32[0]))
          {
            goto LABEL_79;
          }

          if (SHIBYTE(v34[0].__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(__p, v34[0].__r_.__value_.__l.__data_, v34[0].__r_.__value_.__l.__size_);
          }

          else
          {
            *__p = *&v34[0].__r_.__value_.__l.__data_;
            *&v32[0] = *(&v34[0].__r_.__value_.__l + 2);
          }

          v33.__r_.__value_.__r.__words[0] = __p;
          v26 = std::__hash_table<std::__hash_value_type<std::string,quasar::SpokenFormSection>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,quasar::SpokenFormSection>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,quasar::SpokenFormSection>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,quasar::SpokenFormSection>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1, __p);
          std::string::operator=((v26 + 5), v34);
          if (v26 + 5 != v34)
          {
            std::vector<quasar::SpokenFormLine>::__assign_with_size[abi:ne200100]<quasar::SpokenFormLine*,quasar::SpokenFormLine*>((v26 + 8), v34[1].__r_.__value_.__l.__data_, v34[1].__r_.__value_.__l.__size_, 0x6DB6DB6DB6DB6DB7 * ((v34[1].__r_.__value_.__l.__size_ - v34[1].__r_.__value_.__r.__words[0]) >> 4));
          }

          if (SBYTE7(v32[0]) < 0)
          {
            operator delete(__p[0]);
          }

LABEL_79:
          v27 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v27 = __str.__r_.__value_.__l.__size_;
          }

          std::string::basic_string(&v33, &__str, 1uLL, v27 - 2, &v37);
          quasar::SpokenFormSection::SpokenFormSection(__p, &v33);
          if (SHIBYTE(v34[0].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v34[0].__r_.__value_.__l.__data_);
          }

          *&v34[0].__r_.__value_.__l.__data_ = *__p;
          v34[0].__r_.__value_.__r.__words[2] = *&v32[0];
          BYTE7(v32[0]) = 0;
          LOBYTE(__p[0]) = 0;
          std::vector<quasar::SpokenFormLine>::__vdeallocate(&v34[1]);
          v34[1] = *(v32 + 8);
          memset(v32 + 8, 0, 24);
          v37 = v32 + 1;
          std::vector<quasar::SpokenFormLine>::__destroy_vector::operator()[abi:ne200100](&v37);
          if (SBYTE7(v32[0]) < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v33.__r_.__value_.__l.__data_);
          }
        }

        else
        {
LABEL_48:
          std::string::basic_string[abi:ne200100]<0>(__p, "\");
          v18 = quasar::endsWith(&__str, __p);
          v19 = v18;
          if (SBYTE7(v32[0]) < 0)
          {
            operator delete(__p[0]);
            if (v19)
            {
              goto LABEL_50;
            }

LABEL_67:
            if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v24 = &__str;
            }

            else
            {
              v24 = __str.__r_.__value_.__r.__words[0];
            }

            if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v25 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v25 = __str.__r_.__value_.__l.__size_;
            }

            std::string::append(&v35, v24, v25);
            quasar::SpokenFormSection::appendRawLine(v34, &v35);
            MEMORY[0x1B8C84820](&v35, "");
          }

          else
          {
            if (!v18)
            {
              goto LABEL_67;
            }

LABEL_50:
            v20 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
            if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v20 = __str.__r_.__value_.__l.__size_;
            }

            std::string::basic_string(__p, &__str, 0, v20 - 1, &v33);
            if ((SBYTE7(v32[0]) & 0x80u) == 0)
            {
              v21 = __p;
            }

            else
            {
              v21 = __p[0];
            }

            if ((SBYTE7(v32[0]) & 0x80u) == 0)
            {
              v22 = BYTE7(v32[0]);
            }

            else
            {
              v22 = __p[1];
            }

            std::string::append(&v35, v21, v22);
LABEL_5:
            if (SBYTE7(v32[0]) < 0)
            {
              operator delete(__p[0]);
            }
          }
        }
      }
    }

    else if (size)
    {
      goto LABEL_14;
    }
  }

  v28 = HIBYTE(v35.__r_.__value_.__r.__words[2]);
  if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v28 = v35.__r_.__value_.__l.__size_;
  }

  if (v28)
  {
    quasar::SpokenFormSection::appendRawLine(v34, &v35);
  }

  if (SHIBYTE(v34[0].__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(__p, v34[0].__r_.__value_.__l.__data_, v34[0].__r_.__value_.__l.__size_);
  }

  else
  {
    *__p = *&v34[0].__r_.__value_.__l.__data_;
    *&v32[0] = *(&v34[0].__r_.__value_.__l + 2);
  }

  if (SBYTE7(v32[0]) < 0)
  {
    v29 = __p[1];
    operator delete(__p[0]);
    if (!v29)
    {
      goto LABEL_108;
    }
  }

  else if (!BYTE7(v32[0]))
  {
    goto LABEL_108;
  }

  if (SHIBYTE(v34[0].__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(__p, v34[0].__r_.__value_.__l.__data_, v34[0].__r_.__value_.__l.__size_);
  }

  else
  {
    *__p = *&v34[0].__r_.__value_.__l.__data_;
    *&v32[0] = *(&v34[0].__r_.__value_.__l + 2);
  }

  v33.__r_.__value_.__r.__words[0] = __p;
  v30 = std::__hash_table<std::__hash_value_type<std::string,quasar::SpokenFormSection>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,quasar::SpokenFormSection>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,quasar::SpokenFormSection>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,quasar::SpokenFormSection>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1, __p);
  std::string::operator=((v30 + 5), v34);
  if (v30 + 5 != v34)
  {
    std::vector<quasar::SpokenFormLine>::__assign_with_size[abi:ne200100]<quasar::SpokenFormLine*,quasar::SpokenFormLine*>((v30 + 8), v34[1].__r_.__value_.__l.__data_, v34[1].__r_.__value_.__l.__size_, 0x6DB6DB6DB6DB6DB7 * ((v34[1].__r_.__value_.__l.__size_ - v34[1].__r_.__value_.__r.__words[0]) >> 4));
  }

  if (SBYTE7(v32[0]) < 0)
  {
    operator delete(__p[0]);
  }

LABEL_108:
  __p[0] = &v34[1];
  std::vector<quasar::SpokenFormLine>::__destroy_vector::operator()[abi:ne200100](__p);
  if (SHIBYTE(v34[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34[0].__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

  v38[0] = *MEMORY[0x1E69E54C8];
  *(v38 + *(v38[0] - 24)) = *(MEMORY[0x1E69E54C8] + 24);
  MEMORY[0x1B8C84A00](v39);
  std::istream::~istream();
  MEMORY[0x1B8C85200](v40);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }
}

void sub_1B5882A7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, void *__p, uint64_t a55, int a56, __int16 a57, char a58, char a59, void *a60, uint64_t a61, int a62, __int16 a63)
{
  quasar::SpokenFormSection::~SpokenFormSection(&a47);
  if (a59 < 0)
  {
    operator delete(__p);
  }

  std::ifstream::~ifstream(&a67, MEMORY[0x1E69E54C8]);
  MEMORY[0x1B8C85200](&STACK[0x348]);
  if (a65 < 0)
  {
    operator delete(a60);
  }

  _Unwind_Resume(a1);
}

double quasar::SpokenForm::SpokenForm(quasar::SpokenForm *this)
{
  result = 0.0;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 8) = 1065353216;
  return result;
}

void quasar::SpokenFormSection::appendRawLine(uint64_t a1, std::string *a2)
{
  quasar::SpokenFormLine::SpokenFormLine(v5, a2);
  v3 = *(a1 + 32);
  if (v3 >= *(a1 + 40))
  {
    v4 = std::vector<quasar::SpokenFormLine>::__emplace_back_slow_path<quasar::SpokenFormLine>(a1 + 24, v5);
  }

  else
  {
    quasar::SpokenFormLine::SpokenFormLine(*(a1 + 32), v5);
    v4 = v3 + 112;
    *(a1 + 32) = v3 + 112;
  }

  *(a1 + 32) = v4;
  v13 = &v12;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v13);
  if (v11 < 0)
  {
    operator delete(__p);
  }

  if (v9 < 0)
  {
    operator delete(v8);
  }

  if (v7 < 0)
  {
    operator delete(v6);
  }
}

void sub_1B5882C5C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  quasar::SpokenFormLine::~SpokenFormLine(va);
  _Unwind_Resume(a1);
}

void quasar::SpokenFormSection::~SpokenFormSection(void **this)
{
  v2 = this + 3;
  std::vector<quasar::SpokenFormLine>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

std::__split_buffer<std::wstring>::pointer quasar::SpokenForm::getSectionNames@<X0>(std::__split_buffer<std::wstring>::pointer this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  for (i = &this->__r_.__value_.__r.__words[2]; ; this = std::vector<std::string>::push_back[abi:ne200100](a2, i + 1))
  {
    i = *i;
    if (!i)
    {
      break;
    }
  }

  return this;
}

void sub_1B5882D14(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t quasar::SpokenForm::clear(quasar::SpokenForm *this)
{
  std::__hash_table<std::__hash_value_type<std::string,quasar::SpokenFormSection>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,quasar::SpokenFormSection>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,quasar::SpokenFormSection>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,quasar::SpokenFormSection>>>::clear(this);
  memset(v3, 0, sizeof(v3));
  v4 = 1065353216;
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::swap(v3, this);
  return std::__hash_table<std::__hash_value_type<std::string,quasar::SpokenFormSection>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,quasar::SpokenFormSection>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,quasar::SpokenFormSection>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,quasar::SpokenFormSection>>>::~__hash_table(v3);
}

uint64_t std::vector<quasar::SpokenFormLine>::__emplace_back_slow_path<quasar::SpokenFormLine>(uint64_t a1, const quasar::SpokenFormLine *a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 8) - *a1) >> 4);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x249249249249249)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((*(a1 + 16) - *a1) >> 4) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((*(a1 + 16) - *a1) >> 4);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((*(a1 + 16) - *a1) >> 4)) >= 0x124924924924924)
  {
    v6 = 0x249249249249249;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::SpokenFormLine>>(a1, v6);
  }

  v13 = 0;
  v14 = 112 * v2;
  quasar::SpokenFormLine::SpokenFormLine((112 * v2), a2);
  v15 = (112 * v2 + 112);
  v7 = *(a1 + 8);
  v8 = (112 * v2 + *a1 - v7);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::SpokenFormLine>,quasar::SpokenFormLine*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<quasar::SpokenFormLine>::~__split_buffer(&v13);
  return v12;
}

void sub_1B5882EB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<quasar::SpokenFormLine>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::SpokenFormLine>,quasar::SpokenFormLine*>(uint64_t a1, quasar::SpokenFormLine *a2, quasar::SpokenFormLine *a3, quasar::SpokenFormLine *this)
{
  v11 = this;
  v12 = this;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      quasar::SpokenFormLine::SpokenFormLine(this, v7);
      v7 = (v7 + 112);
      this = (v12 + 112);
      v12 = (v12 + 112);
    }

    while (v7 != a3);
    v10 = 1;
    while (v5 != a3)
    {
      std::allocator_traits<std::allocator<quasar::SpokenFormLine>>::destroy[abi:ne200100]<quasar::SpokenFormLine,0>(a1, v5);
      v5 = (v5 + 112);
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::SpokenFormLine>,quasar::SpokenFormLine*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

void std::allocator_traits<std::allocator<quasar::SpokenFormLine>>::destroy[abi:ne200100]<quasar::SpokenFormLine,0>(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 88);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (*(a2 + 87) < 0)
  {
    operator delete(*(a2 + 64));
  }

  if (*(a2 + 55) < 0)
  {
    operator delete(*(a2 + 32));
  }

  if (*(a2 + 31) < 0)
  {
    operator delete(*(a2 + 8));
  }
}

uint64_t std::__split_buffer<quasar::SpokenFormLine>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<quasar::SpokenFormLine>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<quasar::SpokenFormLine>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 112;
    std::allocator_traits<std::allocator<quasar::SpokenFormLine>>::destroy[abi:ne200100]<quasar::SpokenFormLine,0>(v5, v4 - 112);
  }
}

void quasar::SpokenFormLine::~SpokenFormLine(void **this)
{
  v2 = this + 11;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 87) < 0)
  {
    operator delete(this[8]);
  }

  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

void std::vector<quasar::SpokenFormLine>::__assign_with_size[abi:ne200100]<quasar::SpokenFormLine*,quasar::SpokenFormLine*>(uint64_t a1, std::string **a2, std::string **a3, unint64_t a4)
{
  v8 = *a1;
  if (0x6DB6DB6DB6DB6DB7 * ((*(a1 + 16) - *a1) >> 4) < a4)
  {
    std::vector<quasar::SpokenFormLine>::__vdeallocate(a1);
    if (a4 <= 0x249249249249249)
    {
      v9 = 0xDB6DB6DB6DB6DB6ELL * ((*(a1 + 16) - *a1) >> 4);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if ((0x6DB6DB6DB6DB6DB7 * ((*(a1 + 16) - *a1) >> 4)) >= 0x124924924924924)
      {
        v10 = 0x249249249249249;
      }

      else
      {
        v10 = v9;
      }

      std::vector<quasar::SpokenFormLine>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v11 = *(a1 + 8) - v8;
  if (0x6DB6DB6DB6DB6DB7 * (v11 >> 4) >= a4)
  {
    std::__copy_impl::operator()[abi:ne200100]<quasar::SpokenFormLine *,quasar::SpokenFormLine *,quasar::SpokenFormLine *>(&v14, a2, a3, v8);
    std::vector<quasar::SpokenFormLine>::__base_destruct_at_end[abi:ne200100](a1, v12);
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<quasar::SpokenFormLine *,quasar::SpokenFormLine *,quasar::SpokenFormLine *>(&v13, a2, (a2 + v11), v8);
    *(a1 + 8) = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<quasar::SpokenFormLine>,quasar::SpokenFormLine*,quasar::SpokenFormLine*,quasar::SpokenFormLine*>(a1, (a2 + v11), a3, *(a1 + 8));
  }
}

std::string **std::__copy_impl::operator()[abi:ne200100]<quasar::SpokenFormLine *,quasar::SpokenFormLine *,quasar::SpokenFormLine *>(uint64_t a1, std::string **a2, std::string **a3, uint64_t a4)
{
  if (a2 == a3)
  {
    return a2;
  }

  v5 = a3;
  v6 = a2 + 12;
  do
  {
    v7 = v6 - 12;
    *a4 = *(v6 - 24);
    std::string::operator=((a4 + 8), (v6 - 11));
    std::string::operator=((a4 + 32), (v6 - 8));
    *(a4 + 56) = *(v6 - 20);
    std::string::operator=((a4 + 64), (v6 - 4));
    if (a4 != v6 - 12)
    {
      std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>((a4 + 88), *(v6 - 1), *v6, 0xAAAAAAAAAAAAAAABLL * ((*v6 - *(v6 - 1)) >> 3));
    }

    a4 += 112;
    v6 += 14;
  }

  while (v7 + 14 != v5);
  return v5;
}

void std::vector<quasar::SpokenFormLine>::__base_destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; std::allocator_traits<std::allocator<quasar::SpokenFormLine>>::destroy[abi:ne200100]<quasar::SpokenFormLine,0>(a1, i))
  {
    i -= 112;
  }

  *(a1 + 8) = a2;
}

uint64_t quasar::SpokenFormSection::SpokenFormSection(uint64_t a1, const std::string *a2)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  std::string::operator=(a1, a2);
  return a1;
}

void sub_1B5883394(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  a10 = (v10 + 24);
  std::vector<quasar::SpokenFormLine>::__destroy_vector::operator()[abi:ne200100](&a10);
  if (*(v10 + 23) < 0)
  {
    operator delete(*v10);
  }

  _Unwind_Resume(a1);
}

void quasar::ProcessingSource::process(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 23);
  if (v3 < 0)
  {
    if (*(a2 + 8) != 2)
    {
LABEL_7:
      quasar::ProcessingBlock::send(a1, a2, a3, 0);
      return;
    }

    v4 = *a2;
  }

  else
  {
    v4 = a2;
    if (v3 != 2)
    {
      goto LABEL_7;
    }
  }

  if (*v4 != 28265)
  {
    goto LABEL_7;
  }

  quasar::ProcessingBlock::send(a1, a3, 0);
}

void quasar::ProcessingSource::~ProcessingSource(char **this)
{
  quasar::ProcessingBlock::~ProcessingBlock(this);

  JUMPOUT(0x1B8C85350);
}

uint64_t callBackParam(int a1, int a2, void *lpsrc, uint64_t *a4, TAllocator *a5)
{
  if (a4)
  {
    v7 = *a4;
  }

  else
  {
    v7 = 1;
  }

  if (*(lpsrc + 2))
  {
    v14 = v16;
    v15 = xmmword_1B5AE2110;
    v17 = 1;
    (*(*lpsrc + 16))(lpsrc, v7, &v14);
    if (*(lpsrc + 2) == 4)
    {
      TStringParam::getGrammarValue(v8, v7, &v14);
    }

    else
    {
      (*(*lpsrc + 16))(lpsrc, v7, &v14);
    }

    if ((*(&v15 + 1) + 1) >> 62)
    {
      v10 = -1;
    }

    else
    {
      v10 = 4 * (*(&v15 + 1) + 1);
    }

    v11 = TAllocator::allocate(a5, v10);
    if (*(&v15 + 1) >= v15)
    {
      if (v17)
      {
        v18 = 0;
        TBuffer<wchar_t>::insert(&v14, *(&v15 + 1), &v18, 1uLL);
        v12 = v14;
        --*(&v15 + 1);
      }

      else
      {
        v12 = v14;
        if (v15)
        {
          v14[v15 - 1] = 0;
        }
      }
    }

    else
    {
      v12 = v14;
      v14[*(&v15 + 1)] = 0;
    }

    wcscpy(v11, v12);
    if (v17 == 1 && v14 != v16 && v14)
    {
      MEMORY[0x1B8C85310]();
    }
  }

  else
  {
    TParam::getValidConfig(v9, v7);
  }

  return 1;
}

void sub_1B58836B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (LOBYTE(STACK[0x420]) == 1 && a10 != v10)
  {
    if (a10)
    {
      MEMORY[0x1B8C85310]();
    }
  }

  _Unwind_Resume(a1);
}

uint64_t callBackGetLength(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, TAllocator *a5)
{
  if (a2 != 1 || *a1 > 1uLL)
  {
    return 0;
  }

  v11 = v13;
  v12 = xmmword_1B5AE2110;
  v14 = 1;
  v7 = wcslen(*(a1 + 8));
  {
    operator new();
  }

  TLocaleInfo::valueToString(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v7, &v11, 0);
  if ((*(&v12 + 1) + 1) >> 62)
  {
    v8 = -1;
  }

  else
  {
    v8 = 4 * (*(&v12 + 1) + 1);
  }

  v9 = TAllocator::allocate(a5, v8);
  if (*(&v12 + 1) >= v12)
  {
    if (v14)
    {
      v15 = 0;
      TBuffer<wchar_t>::insert(&v11, *(&v12 + 1), &v15, 1uLL);
      v10 = v11;
      --*(&v12 + 1);
    }

    else
    {
      v10 = v11;
      if (v12)
      {
        v11[v12 - 1] = 0;
      }
    }
  }

  else
  {
    v10 = v11;
    v11[*(&v12 + 1)] = 0;
  }

  wcscpy(v9, v10);
  if (v14 == 1 && v11 != v13)
  {
    if (v11)
    {
      MEMORY[0x1B8C85310]();
    }
  }

  return 1;
}

void sub_1B58838A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  MEMORY[0x1B8C85350](v10, 0x1070C40ADD13FEBLL);
  if (LOBYTE(STACK[0x420]) == 1 && a10 != v11)
  {
    if (a10)
    {
      MEMORY[0x1B8C85310]();
    }
  }

  _Unwind_Resume(a1);
}

uint64_t callBackRomanToDigit(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, TAllocator *a5)
{
  if (a2 != 1 || *a1 > 1uLL)
  {
    return 0;
  }

  v5 = a1[1];
  if (*v5)
  {
    v16 = 0;
    if (romanToArabic(v5, &v16))
    {
      return 0;
    }

    v12 = v14;
    v13 = xmmword_1B5AE2110;
    v15 = 1;
    v8 = v16;
    {
      operator new();
    }

    TLocaleInfo::valueToString(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v8, &v12, 0);
    if ((*(&v13 + 1) + 1) >> 62)
    {
      v9 = -1;
    }

    else
    {
      v9 = 4 * (*(&v13 + 1) + 1);
    }

    v10 = TAllocator::allocate(a5, v9);
    if (*(&v13 + 1) >= v13)
    {
      if (v15)
      {
        v17 = 0;
        TBuffer<wchar_t>::insert(&v12, *(&v13 + 1), &v17, 1uLL);
        v11 = v12;
        --*(&v13 + 1);
      }

      else
      {
        v11 = v12;
        if (v13)
        {
          v12[v13 - 1] = 0;
        }
      }
    }

    else
    {
      v11 = v12;
      v12[*(&v13 + 1)] = 0;
    }

    wcscpy(v10, v11);
    if (v15 == 1 && v12 != v14)
    {
      if (v12)
      {
        MEMORY[0x1B8C85310]();
      }
    }
  }

  return 1;
}

void sub_1B5883AE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  MEMORY[0x1B8C85350](v9, 0x1070C40ADD13FEBLL);
  if (LOBYTE(STACK[0x418]) == 1 && a9 != v10)
  {
    if (a9)
    {
      MEMORY[0x1B8C85310]();
    }
  }

  _Unwind_Resume(a1);
}

uint64_t callBackDigitToRoman(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, TAllocator *a5)
{
  if (a2 != 1 || *a1 > 1uLL)
  {
    return 0;
  }

  v7 = a1[1];
  if (!*v7)
  {
    return 1;
  }

  v17 = 0;
  {
    operator new();
  }

  v9 = TLocaleInfo::stringToUInt(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v7, &v17);
  v5 = 1;
  if (!v17)
  {
    v13 = v15;
    v14 = xmmword_1B5AE2110;
    v16 = 1;
    if (arabicToRoman(v9, &v13))
    {
      v5 = 0;
    }

    else
    {
      if ((*(&v14 + 1) + 1) >> 62)
      {
        v10 = -1;
      }

      else
      {
        v10 = 4 * (*(&v14 + 1) + 1);
      }

      v11 = TAllocator::allocate(a5, v10);
      if (*(&v14 + 1) >= v14)
      {
        if (v16)
        {
          v18 = 0;
          TBuffer<wchar_t>::insert(&v13, *(&v14 + 1), &v18, 1uLL);
          v12 = v13;
          --*(&v14 + 1);
        }

        else
        {
          v12 = v13;
          if (v14)
          {
            v13[v14 - 1] = 0;
          }
        }
      }

      else
      {
        v12 = v13;
        v13[*(&v14 + 1)] = 0;
      }

      wcscpy(v11, v12);
      v5 = 1;
    }

    if (v16 == 1 && v13 != v15 && v13)
    {
      MEMORY[0x1B8C85310]();
    }
  }

  return v5;
}

void sub_1B5883D44(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v1, 0x1070C40ADD13FEBLL);
  _Unwind_Resume(a1);
}

uint64_t callBackFormat(void *a1, unint64_t a2, uint64_t a3, uint64_t a4, TAllocator *a5)
{
  if (a2 <= 1 && *a1 > 1uLL)
  {
    return 0;
  }

  v25 = v27;
  v26 = xmmword_1B5AE2110;
  v28 = 1;
  v7 = a1[1];
  v8 = *v7;
  if (*v7)
  {
    v23 = a5;
    v24 = (a1 + 3);
    while (1)
    {
      while (1)
      {
        v9 = v7;
        {
          operator new();
        }

        if (v8 > 159)
        {
          break;
        }

        if (v8 > 0x20 || ((1 << v8) & 0x100002600) == 0)
        {
          goto LABEL_19;
        }

LABEL_17:
        v10 = v7[1];
        v8 = v10;
        ++v7;
        if (!v10)
        {
          goto LABEL_49;
        }
      }

      if (v8 >= 12288)
      {
        if (v8 == 65279 || v8 == 12288)
        {
          goto LABEL_17;
        }
      }

      else if (v8 == 160 || v8 == 8203)
      {
        goto LABEL_17;
      }

LABEL_19:
      v11 = *v7;
      if (!*v7)
      {
        goto LABEL_49;
      }

      while (1)
      {
        {
          operator new();
        }

        if (v11 <= 159)
        {
          if (v11 <= 0x20 && ((1 << v11) & 0x100002600) != 0)
          {
            goto LABEL_35;
          }

          goto LABEL_31;
        }

        if (v11 >= 12288)
        {
          break;
        }

        if (v11 == 160 || v11 == 8203)
        {
          goto LABEL_35;
        }

LABEL_31:
        v12 = v7[1];
        ++v7;
        v11 = v12;
        if (!v12)
        {
          goto LABEL_35;
        }
      }

      if (v11 != 12288 && v11 != 65279)
      {
        goto LABEL_31;
      }

LABEL_35:
      if (a2 >= 3)
      {
        v13 = 2;
        v14 = v24;
        while (1)
        {
          if (*(v14 - 1) > 1)
          {
            v6 = 0;
            goto LABEL_62;
          }

          if (v7 - v9 == wcslen(*v14) && !wcsncmp(v9, *v14, v7 - v9))
          {
            break;
          }

          v14 += 4;
          v13 += 2;
          if (v13 >= a2)
          {
            goto LABEL_45;
          }
        }

        v15 = 0;
        v16 = v14[2];
          ;
        }

        TBuffer<wchar_t>::insert(&v25, *(&v26 + 1), v16, v15 - 1);
      }

LABEL_45:
      v8 = *v7;
      if (!*v7)
      {
LABEL_49:
        if ((*(&v26 + 1) + 1) >> 62)
        {
          v18 = -1;
        }

        else
        {
          v18 = 4 * (*(&v26 + 1) + 1);
        }

        a5 = v23;
        goto LABEL_54;
      }
    }
  }

  v18 = 4;
LABEL_54:
  v19 = TAllocator::allocate(a5, v18);
  if (*(&v26 + 1) >= v26)
  {
    if (v28)
    {
      v29[0] = 0;
      TBuffer<wchar_t>::insert(&v25, *(&v26 + 1), v29, 1uLL);
      v20 = v25;
      --*(&v26 + 1);
    }

    else
    {
      v20 = v25;
      if (v26)
      {
        v25[v26 - 1] = 0;
      }
    }
  }

  else
  {
    v20 = v25;
    v25[*(&v26 + 1)] = 0;
  }

  wcscpy(v19, v20);
  v6 = 1;
LABEL_62:
  if (v28 == 1 && v25 != v27 && v25 != 0)
  {
    MEMORY[0x1B8C85310]();
  }

  return v6;
}

void sub_1B5884150(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  MEMORY[0x1B8C85350](v13, 0x1070C40ADD13FEBLL);
  if (LOBYTE(STACK[0x438]) == 1 && a13 != a12)
  {
    if (a13)
    {
      MEMORY[0x1B8C85310]();
    }
  }

  _Unwind_Resume(a1);
}

uint64_t callBackGetCategoryTag(void *a1, uint64_t a2, void *a3, uint64_t a4, TAllocator *a5)
{
  if (a2 != 1 || *a1 > 1uLL)
  {
    return 0;
  }

  v6 = a1[1];
  if (!*v6)
  {
    return 1;
  }

  HeadClone = TLexicon::findHeadClone(a3, v6);
  result = 1;
  if (HeadClone)
  {
    v12 = v14;
    v13 = xmmword_1B5AE2110;
    v15 = 1;
    TWord::getCategoryTag(HeadClone, &v12);
    if ((*(&v13 + 1) + 1) >> 62)
    {
      v9 = -1;
    }

    else
    {
      v9 = 4 * (*(&v13 + 1) + 1);
    }

    v10 = TAllocator::allocate(a5, v9);
    if (*(&v13 + 1) >= v13)
    {
      if (v15)
      {
        v16 = 0;
        TBuffer<wchar_t>::insert(&v12, *(&v13 + 1), &v16, 1uLL);
        v11 = v12;
        --*(&v13 + 1);
      }

      else
      {
        v11 = v12;
        if (v13)
        {
          v12[v13 - 1] = 0;
        }
      }
    }

    else
    {
      v11 = v12;
      v12[*(&v13 + 1)] = 0;
    }

    wcscpy(v10, v11);
    if (v15 == 1 && v12 != v14)
    {
      if (v12)
      {
        MEMORY[0x1B8C85310]();
      }
    }

    return 1;
  }

  return result;
}

void sub_1B588433C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (LOBYTE(STACK[0x420]) == 1 && a10 != v10)
  {
    if (a10)
    {
      MEMORY[0x1B8C85310]();
    }
  }

  _Unwind_Resume(a1);
}

uint64_t callBackFind(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, TAllocator *a5)
{
  if (a2 != 2 || *a1 > 1uLL || *(a1 + 16) > 1uLL)
  {
    return 0;
  }

  v8 = wcsstr(*(a1 + 8), *(a1 + 24));
  result = 1;
  if (v8)
  {
    v13 = v15;
    v14 = xmmword_1B5AE2110;
    v16 = 1;
    v9 = *(a1 + 8);
    {
      operator new();
    }

    TLocaleInfo::valueToString(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, (v8 - v9) >> 2, &v13, 0);
    if ((*(&v14 + 1) + 1) >> 62)
    {
      v10 = -1;
    }

    else
    {
      v10 = 4 * (*(&v14 + 1) + 1);
    }

    v11 = TAllocator::allocate(a5, v10);
    if (*(&v14 + 1) >= v14)
    {
      if (v16)
      {
        v17 = 0;
        TBuffer<wchar_t>::insert(&v13, *(&v14 + 1), &v17, 1uLL);
        v12 = v13;
        --*(&v14 + 1);
      }

      else
      {
        v12 = v13;
        if (v14)
        {
          v13[v14 - 1] = 0;
        }
      }
    }

    else
    {
      v12 = v13;
      v13[*(&v14 + 1)] = 0;
    }

    wcscpy(v11, v12);
    if (v16 == 1 && v13 != v15)
    {
      if (v13)
      {
        MEMORY[0x1B8C85310]();
      }
    }

    return 1;
  }

  return result;
}

void sub_1B588455C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  MEMORY[0x1B8C85350](v10, 0x1070C40ADD13FEBLL);
  if (LOBYTE(STACK[0x420]) == 1 && a10 != v11)
  {
    if (a10)
    {
      MEMORY[0x1B8C85310]();
    }
  }

  _Unwind_Resume(a1);
}

uint64_t callBackCopy(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, TAllocator *a5)
{
  if ((a2 & 0xFFFFFFFFFFFFFFFELL) != 2 || *a1 > 1uLL || a1[2] > 1uLL || a2 == 3 && a1[4] > 1uLL)
  {
    return 0;
  }

  v8 = a1[1];
  v23 = 0;
  v9 = a1[3];
  {
    operator new();
  }

  v10 = TLocaleInfo::stringToUInt(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v9, &v23);
  if (v23)
  {
    return 0;
  }

  v12 = v10;
  v13 = wcslen(v8);
  v14 = v13 - v12;
  if (v13 >= v12)
  {
    v15 = v13;
    v16 = v13;
    if (a2 == 3)
    {
      v17 = a1[5];
      GlobalLocaleInfo = TLocaleInfo::getGlobalLocaleInfo(v13);
      v19 = TLocaleInfo::stringToUInt(GlobalLocaleInfo, v17, &v23);
      if (v23)
      {
        return 0;
      }

      v16 = v19;
    }

    if (v16 + v12 <= v15)
    {
      v20 = v16;
    }

    else
    {
      v20 = v14;
    }

    if ((v20 + 1) >> 62)
    {
      v21 = -1;
    }

    else
    {
      v21 = 4 * (v20 + 1);
    }

    v22 = TAllocator::allocate(a5, v21);
    wcsncpy(v22, &v8[v12], v20);
    v22[v20] = 0;
  }

  return 1;
}

void sub_1B5884768(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v1, 0x1070C40ADD13FEBLL);
  _Unwind_Resume(a1);
}

void TCondition::TCondition(TCondition *this, signed int **a2, unint64_t a3, TLexicon *a4)
{
  TCondition::setEnum(this, a2, a3);
  *(this + 4) = a4;
  *this = 0;
  if (*(this + 3) != 7)
  {
    buildRegExp(a2, a4);
  }

  if (TFileObject::verify(a2, 0, 0))
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "");
    TException::TException(v12, __p);
    v12[0].__vftable = &unk_1F2D00400;
    if (v13 >= 0)
    {
      v8 = &v12[1];
    }

    else
    {
      v8 = v12[1].__vftable;
    }

    conditionalAssert(v8, "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/libtennessee/src/nashville/libtextproc/tkn/mungemapmgr.cpp", 123);
    TException::~TException(v12);
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(v12, "");
    TException::TException(exception, v12);
    *exception = &unk_1F2D00400;
  }

  LOBYTE(v12[0].__vftable) = 0;
  v7 = a2[3];
  {
    operator new();
  }

  *this = TLocaleInfo::stringToUInt(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v7, v12);
}

void sub_1B5884984(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  MEMORY[0x1B8C85350](v21, 0x1070C40ADD13FEBLL);
  _Unwind_Resume(a1);
}

uint64_t TCondition::setEnum(TCondition *this, const TFileObject *a2, unint64_t a3)
{
  v6 = 0;
  v7 = *(a2 + 1);
  if (a3 > 1)
  {
    v8 = 8;
  }

  else
  {
    v8 = 9;
  }

  *(this + 1) = 0x900000004;
  while (1)
  {
    v9 = *(&TCondition::setEnum(TFileObject const*,unsigned long)::ppszSource + v6);
    v10 = wcslen(v9);
    if (!wcsncmp(v7, v9, v10))
    {
      break;
    }

    if (v8 == ++v6)
    {
      goto LABEL_7;
    }
  }

  *(this + 3) = v6;
  if (a3 <= 1 && v6 == 8)
  {
    tknPrintf("Warning: Pron conditions are no longer supported in munge-map rules!\n");
    LODWORD(v6) = *(this + 3);
  }

  v14 = &v7[wcslen(v9)];
  if (v6 >= 2 && v6 != 7)
  {
    if (v6 == 9)
    {
LABEL_7:
      loggableFileObject(a2);
      if (v26 >= 0)
      {
        v11 = __p;
      }

      else
      {
        v11 = __p[0];
      }

      tknPrintf("Error: %sInvalid attribute\n", v11);
      if (v26 < 0)
      {
        operator delete(__p[0]);
      }

      std::string::basic_string[abi:ne200100]<0>(v23, "");
      TException::TException(__p, v23);
      __p[0] = &unk_1F2D00400;
      if (v27 >= 0)
      {
        v12 = &__p[1];
      }

      else
      {
        v12 = __p[1];
      }

      conditionalAssert(v12, "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/libtennessee/src/nashville/libtextproc/tkn/mungemapmgr.cpp", 180);
      TException::~TException(__p);
      if (v24 < 0)
      {
        operator delete(v23[0]);
      }

      exception = __cxa_allocate_exception(0x20uLL);
      std::string::basic_string[abi:ne200100]<0>(__p, "");
      TException::TException(exception, __p);
      *exception = &unk_1F2D00400;
    }

    v15 = 0;
    v14 += 2 * (wcsncmp(v14, dword_1B5B2D078, 2uLL) == 0);
    while (1)
    {
      v16 = *(&TCondition::setEnum(TFileObject const*,unsigned long)::ppszTokenPos + v15);
      v17 = wcslen(v16);
      if (!wcsncmp(v14, v16, v17))
      {
        break;
      }

      if (++v15 == 5)
      {
        goto LABEL_29;
      }
    }

    *(this + 2) = v15;
    v14 += wcslen(v16);
  }

LABEL_29:
  v18 = &v14[2 * (wcsncmp(v14, dword_1B5B2D13C, 2uLL) == 0)];
  *(this + 16) = 0;
  result = wcsncmp(v18, dword_1B5B2D148, 3uLL);
  if (!result)
  {
    v18 += 3;
    *(this + 16) = 1;
  }

  if (*v18)
  {
    loggableFileObject(a2);
    if (v26 >= 0)
    {
      v20 = __p;
    }

    else
    {
      v20 = __p[0];
    }

    tknPrintf("Error: %sInvalid attribute\n", v20);
    if (v26 < 0)
    {
      operator delete(__p[0]);
    }

    std::string::basic_string[abi:ne200100]<0>(v23, "");
    TException::TException(__p, v23);
    __p[0] = &unk_1F2D00400;
    if (v27 >= 0)
    {
      v21 = &__p[1];
    }

    else
    {
      v21 = __p[1];
    }

    conditionalAssert(v21, "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/libtennessee/src/nashville/libtextproc/tkn/mungemapmgr.cpp", 226);
    TException::~TException(__p);
    if (v24 < 0)
    {
      operator delete(v23[0]);
    }

    v22 = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(__p, "");
    TException::TException(v22, __p);
    *v22 = &unk_1F2D00400;
  }

  return result;
}

void sub_1B5884E08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
    if ((v22 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v21);
  goto LABEL_6;
}

void TCondition::~TCondition(TCondition *this)
{
  v1 = *(this + 3);
  if (v1)
  {
    TRegExp::~TRegExp(v1);
    MEMORY[0x1B8C85350]();
  }
}

void TCondition::getSource(uint64_t a1, uint64_t a2, int *a3, int *a4, void *a5)
{
  TBuffer<wchar_t>::resize(a5, 0);
  v10 = *(a1 + 12);
  if (v10 <= 2)
  {
    if (v10)
    {
      if (v10 != 1)
      {
        if (v10 == 2)
        {
          v12 = *(a2 + 48);
          if (v12 != 2 && v12 != 5)
          {
            v13 = *(a2 + 56);

            TWord::getTokenName(v13, a5);
          }
        }

        return;
      }

      v25 = 0;
      v18 = a5[2];
        ;
      }

      v20 = v25 - 1;
      v21 = a5;
      v22 = a4;
    }

    else
    {
      v17 = 0;
      v18 = a5[2];
        ;
      }

      v20 = v17 - 1;
      v21 = a5;
      v22 = a3;
    }

    TBuffer<wchar_t>::insert(v21, v18, v22, v20);
  }

  else
  {
    if (v10 <= 4)
    {
      if (v10 != 3)
      {
        v11 = *(a2 + 56);

        TWord::getCategoryTag(v11, a5);
        return;
      }

      v23 = *(a2 + 48);
      if (v23 == 2 || v23 == 5)
      {
        return;
      }

      goto LABEL_29;
    }

    if (v10 == 6)
    {
      if (*(a2 + 48) != 5)
      {
        return;
      }

LABEL_29:
      v24 = *(a2 + 56);

      TWord::getWrittenForm(v24, a5);
      return;
    }

    if (v10 == 5)
    {
      v14 = *(*(a2 + 16) + 16);
      if (v14)
      {
        v15 = *(*(a2 + 24) + 24);
        if (v15)
        {
          v16 = *(a1 + 32) + 224;

          TLocaleInfo::multiByteToUnicode(v16, v14, v15 - v14, a5);
        }
      }
    }
  }
}