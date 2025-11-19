void sub_21808F7F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, char a37)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
    if ((v39 & 1) == 0)
    {
LABEL_8:
      if (a35 < 0)
      {
        operator delete(a30);
      }

      if (v37)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v37);
      }

      std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&a37);
      _Unwind_Resume(a1);
    }
  }

  else if (!v39)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v38);
  goto LABEL_8;
}

void ValHelper<float>(uint64_t a1, void *a2, uint64_t a3)
{
  Type = MIL::IRTypedTensorValue<float>::GetType(a1);
  v7 = (*(*Type + 96))(Type);
  v10 = 0;
  v11 = 0;
  __p = 0;
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&__p, *v7, v7[1], (v7[1] - *v7) >> 3);
  if (__p == v10)
  {
    MIL::IRTypedTensorValue<float>::GetScalarValue(a1);
  }

  Values = MIL::IRTypedTensorValue<float>::GetValues(a1);
  if (__p)
  {
    v10 = __p;
    operator delete(__p);
  }
}

void sub_21808FB98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::Text::BasicSerializer::Val<double>(uint64_t a1, MIL::IRTensorValue *a2)
{
  v4 = *(a1 + 384);
  if (v4)
  {
    Type = MIL::IRTypedTensorValue<double>::GetType(a2);
    v6 = MIL::IRValueType::AsTensorType(Type);
    v7 = (*(*v6 + 16))(v6);
    v8 = v7 >= (*(**(a1 + 320) + 136))(*(a1 + 320));
  }

  else
  {
    v8 = MIL::IRTypedTensorValue<double>::UsesFileStorage(a2);
  }

  v9 = MIL::IRTypedTensorValue<double>::GetType(a2);
  v10 = MIL::IRValueType::AsTensorType(v9);
  v11 = (*(*v10 + 88))(v10);
  v12 = v11;
  if (!v4 || !v8 || (v11 <= 0x19 ? (v13 = ((1 << v11) & 0x3F9EE30) == 0) : (v13 = 1), !v13))
  {
    if (v8)
    {
      memset(v71, 0, sizeof(v71));
      v72 = 1065353216;
      if (!v4)
      {
        FileProperties = MIL::IRTypedTensorValue<double>::GetFileProperties(a2);
        if (v71 != FileProperties)
        {
          v72 = *(FileProperties + 32);
          std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *> *>>(v71, *(FileProperties + 16), 0);
        }

        std::string::basic_string[abi:ne200100]<0>(&__str, "type");
        v56 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>(v71, &__str.__r_.__value_.__l.__data_);
        if (v56)
        {
          MIL::IRValue::GetScalar<std::string>(v56[5], &__p);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          std::string::basic_string[abi:ne200100]<0>(&__str, "type");
          std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__erase_unique<std::string>(v71, &__str.__r_.__value_.__l.__data_);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          std::string::basic_string[abi:ne200100]<0>(&__str, "path");
          v57 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>(v71, &__str.__r_.__value_.__l.__data_);
          if (v57)
          {
            v59 = v57[5];
            v58 = v57[6];
            if (v58)
            {
              atomic_fetch_add_explicit(v58 + 1, 1uLL, memory_order_relaxed);
            }

            if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__str.__r_.__value_.__l.__data_);
            }

            MIL::IRValue::GetScalar<std::string>(v59, &__str);
            v60 = (*(**(a1 + 320) + 32))(*(a1 + 320));
            MIL::Util::ReplaceModelPaths(&__str, v60);
            v61 = (*(*v59 + 32))(v59);
            v62 = MIL::IRValueType::AsTensorType(v61);
            v67 = __str;
            memset(&__str, 0, sizeof(__str));
            MIL::IRTensorValueType::MakeStringValue(v62, &v67);
          }

          std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
        }

        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      if (MIL::IRTypedTensorValue<double>::UsesFileStorage(a2))
      {
        v14 = MIL::IRTypedTensorValue<double>::GetFileProperties(a2);
        std::string::basic_string[abi:ne200100]<0>(&__p, "path");
        v15 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(v14, &__p.__r_.__value_.__l.__data_);
        if (!v15)
        {
          std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
        }

        v16 = v15[5];
        v17 = v15[6];
        if (v17)
        {
          atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        MIL::IRValue::GetScalar<std::string>(v16, &__p);
        __str.__r_.__value_.__r.__words[0] = &__p;
        v18 = std::__tree<std::__value_type<std::string,std::shared_ptr<MIL::Blob::StorageWriter>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<MIL::Blob::StorageWriter>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<MIL::Blob::StorageWriter>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1 + 368, &__p.__r_.__value_.__l.__data_);
        v20 = *(v18 + 56);
        v19 = *(v18 + 64);
        if (v19)
        {
          atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v17)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v17);
        }
      }

      else
      {
        v22 = *(a1 + 368);
        v20 = *(v22 + 56);
        v23 = *(v22 + 64);
        if (v23)
        {
          atomic_fetch_add_explicit((v23 + 8), 1uLL, memory_order_relaxed);
        }
      }

      memset(&__p, 0, sizeof(__p));
      v73 = 0;
      if (!MIL::IRTypedTensorValue<double>::UsesFileStorage(a2))
      {
        goto LABEL_59;
      }

      v24 = MIL::IRTypedTensorValue<double>::GetFileProperties(a2);
      std::string::basic_string[abi:ne200100]<0>(&__str, "path");
      v25 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(v24, &__str.__r_.__value_.__l.__data_);
      if (!v25)
      {
        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      v27 = v25[5];
      v26 = v25[6];
      if (v26)
      {
        atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      MIL::IRValue::GetScalar<std::string>(v27, &__str);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      __p = __str;
      std::string::basic_string[abi:ne200100]<0>(&__str, "offset");
      v28 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(v24, &__str.__r_.__value_.__l.__data_);
      v29 = v28;
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
        if (v29)
        {
LABEL_39:
          std::string::basic_string[abi:ne200100]<0>(&__str, "offset");
          v30 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(v24, &__str.__r_.__value_.__l.__data_);
          if (!v30)
          {
            std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
          }

          v31 = v30[5];
          v32 = v30[6];
          if (v32)
          {
            atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          v73 = MIL::IRValue::GetScalar<unsigned long long>(v31);
          if (std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>((a1 + 328), &__p.__r_.__value_.__l.__data_))
          {
            v33 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>((a1 + 328), &__p.__r_.__value_.__l.__data_);
            v34 = v33;
            if (!v33)
            {
              goto LABEL_94;
            }

            if (std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::find<unsigned long long>(v33 + 5, &v73))
            {
              if (std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::find<unsigned long long>(v34 + 5, &v73))
              {
                v35 = 1;
                goto LABEL_50;
              }

LABEL_94:
              std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
            }
          }

          v35 = 0;
LABEL_50:
          if (v32)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v32);
          }

          if (v26)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v26);
          }

          if (v35)
          {
LABEL_78:
            v55 = MIL::IRTypedTensorValue<double>::GetType(a2);
            (*(*v55 + 24))(v55);
            MIL::Blob::StorageWriter::GetFilePath(v20, &__str);
            MIL::IRTensorValueType::MakeValueFromBlobFile();
          }

LABEL_59:
          switch(v12)
          {
            case 4:
              v36 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::Fp16>(v36);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::Fp16>(v20);
              break;
            case 5:
              v51 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<float>(v51);
              v37 = MIL::Blob::StorageWriter::WriteData<float>(v20);
              break;
            case 9:
              v48 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<signed char>(v48);
              v37 = MIL::Blob::StorageWriter::WriteData<signed char>(v20);
              break;
            case 10:
              v50 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<short>(v50);
              v37 = MIL::Blob::StorageWriter::WriteData<short>(v20);
              break;
            case 11:
              v45 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<int>(v45);
              v37 = MIL::Blob::StorageWriter::WriteData<int>(v20);
              break;
            case 13:
              v47 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::Int4>(v47);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::Int4>(v20);
              break;
            case 14:
              v52 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<unsigned char>(v52);
              v37 = MIL::Blob::StorageWriter::WriteData<unsigned char>(v20);
              break;
            case 15:
              v49 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<unsigned short>(v49);
              v37 = MIL::Blob::StorageWriter::WriteData<unsigned short>(v20);
              break;
            case 16:
              v42 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<unsigned int>(v42);
              v37 = MIL::Blob::StorageWriter::WriteData<unsigned int>(v20);
              break;
            case 19:
              v39 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::UInt2>(v39);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::UInt2>(v20);
              break;
            case 20:
              v41 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::UInt4>(v41);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::UInt4>(v20);
              break;
            case 21:
              v38 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::UInt1>(v38);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::UInt1>(v20);
              break;
            case 22:
              v40 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::UInt3>(v40);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::UInt3>(v20);
              break;
            case 23:
              v43 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::UInt6>(v43);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::UInt6>(v20);
              break;
            case 24:
              v44 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::Fp8E4M3FN>(v44);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::Fp8E4M3FN>(v20);
              break;
            case 25:
              v46 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::Fp8E5M2>(v46);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::Fp8E5M2>(v20);
              break;
            default:
              exception = __cxa_allocate_exception(0x10uLL);
              MIL::IRDataTypeToString(v12, &v68);
              v65 = std::string::insert(&v68, 0, "[MIL Serialization] Unsupported Data type ");
              v66 = *&v65->__r_.__value_.__l.__data_;
              __str.__r_.__value_.__r.__words[2] = v65->__r_.__value_.__r.__words[2];
              *&__str.__r_.__value_.__l.__data_ = v66;
              v65->__r_.__value_.__l.__size_ = 0;
              v65->__r_.__value_.__r.__words[2] = 0;
              v65->__r_.__value_.__r.__words[0] = 0;
              std::logic_error::logic_error(exception, &__str);
              exception->__vftable = (MEMORY[0x277D828F8] + 16);
              __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
          }

          v53 = v37;
          if (MIL::IRTypedTensorValue<double>::UsesFileStorage(a2))
          {
            __str.__r_.__value_.__r.__words[0] = &__p;
            v54 = std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<unsigned long long,unsigned long long>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<unsigned long long,unsigned long long>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<unsigned long long,unsigned long long>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<unsigned long long,unsigned long long>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 328), &__p.__r_.__value_.__l.__data_);
            __str.__r_.__value_.__r.__words[0] = &v73;
            std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v54 + 5, &v73)[3] = v53;
          }

          goto LABEL_78;
        }
      }

      else if (v28)
      {
        goto LABEL_39;
      }

      if (v26)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v26);
      }

      goto LABEL_59;
    }
  }

  ValHelper<double>(a2, *(a1 + 40), *(a1 + 320));
  return a1;
}

void sub_2180907A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, char a37)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
    if ((v39 & 1) == 0)
    {
LABEL_8:
      if (a35 < 0)
      {
        operator delete(a30);
      }

      if (v37)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v37);
      }

      std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&a37);
      _Unwind_Resume(a1);
    }
  }

  else if (!v39)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v38);
  goto LABEL_8;
}

void ValHelper<double>(uint64_t a1, void *a2, uint64_t a3)
{
  Type = MIL::IRTypedTensorValue<double>::GetType(a1);
  v7 = (*(*Type + 96))(Type);
  v10 = 0;
  v11 = 0;
  __p = 0;
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&__p, *v7, v7[1], (v7[1] - *v7) >> 3);
  if (__p == v10)
  {
    ScalarValue = MIL::IRTypedTensorValue<double>::GetScalarValue(a1);
  }

  ScalarValue = COERCE_DOUBLE(MIL::IRTypedTensorValue<double>::GetValues(a1));
  if (__p)
  {
    v10 = __p;
    operator delete(__p);
  }
}

void sub_218090B48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::Text::BasicSerializer::Val<MIL::Int4>(uint64_t a1, MIL::IRTensorValue *a2)
{
  v4 = *(a1 + 384);
  if (v4)
  {
    Type = MIL::IRTypedTensorValue<MIL::Int4>::GetType(a2);
    v6 = MIL::IRValueType::AsTensorType(Type);
    v7 = (*(*v6 + 16))(v6);
    v8 = v7 >= (*(**(a1 + 320) + 136))(*(a1 + 320));
  }

  else
  {
    v8 = MIL::IRTypedTensorValue<MIL::Int4>::UsesFileStorage(a2);
  }

  v9 = MIL::IRTypedTensorValue<MIL::Int4>::GetType(a2);
  v10 = MIL::IRValueType::AsTensorType(v9);
  v11 = (*(*v10 + 88))(v10);
  v12 = v11;
  if (!v4 || !v8 || (v11 <= 0x19 ? (v13 = ((1 << v11) & 0x3F9EE30) == 0) : (v13 = 1), !v13))
  {
    if (v8)
    {
      memset(v71, 0, sizeof(v71));
      v72 = 1065353216;
      if (!v4)
      {
        FileProperties = MIL::IRTypedTensorValue<MIL::Int4>::GetFileProperties(a2);
        if (v71 != FileProperties)
        {
          v72 = *(FileProperties + 32);
          std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *> *>>(v71, *(FileProperties + 16), 0);
        }

        std::string::basic_string[abi:ne200100]<0>(&__str, "type");
        v56 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>(v71, &__str.__r_.__value_.__l.__data_);
        if (v56)
        {
          MIL::IRValue::GetScalar<std::string>(v56[5], &__p);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          std::string::basic_string[abi:ne200100]<0>(&__str, "type");
          std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__erase_unique<std::string>(v71, &__str.__r_.__value_.__l.__data_);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          std::string::basic_string[abi:ne200100]<0>(&__str, "path");
          v57 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>(v71, &__str.__r_.__value_.__l.__data_);
          if (v57)
          {
            v59 = v57[5];
            v58 = v57[6];
            if (v58)
            {
              atomic_fetch_add_explicit(v58 + 1, 1uLL, memory_order_relaxed);
            }

            if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__str.__r_.__value_.__l.__data_);
            }

            MIL::IRValue::GetScalar<std::string>(v59, &__str);
            v60 = (*(**(a1 + 320) + 32))(*(a1 + 320));
            MIL::Util::ReplaceModelPaths(&__str, v60);
            v61 = (*(*v59 + 32))(v59);
            v62 = MIL::IRValueType::AsTensorType(v61);
            v67 = __str;
            memset(&__str, 0, sizeof(__str));
            MIL::IRTensorValueType::MakeStringValue(v62, &v67);
          }

          std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
        }

        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      if (MIL::IRTypedTensorValue<MIL::Int4>::UsesFileStorage(a2))
      {
        v14 = MIL::IRTypedTensorValue<MIL::Int4>::GetFileProperties(a2);
        std::string::basic_string[abi:ne200100]<0>(&__p, "path");
        v15 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(v14, &__p.__r_.__value_.__l.__data_);
        if (!v15)
        {
          std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
        }

        v16 = v15[5];
        v17 = v15[6];
        if (v17)
        {
          atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        MIL::IRValue::GetScalar<std::string>(v16, &__p);
        __str.__r_.__value_.__r.__words[0] = &__p;
        v18 = std::__tree<std::__value_type<std::string,std::shared_ptr<MIL::Blob::StorageWriter>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<MIL::Blob::StorageWriter>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<MIL::Blob::StorageWriter>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1 + 368, &__p.__r_.__value_.__l.__data_);
        v20 = *(v18 + 56);
        v19 = *(v18 + 64);
        if (v19)
        {
          atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v17)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v17);
        }
      }

      else
      {
        v22 = *(a1 + 368);
        v20 = *(v22 + 56);
        v23 = *(v22 + 64);
        if (v23)
        {
          atomic_fetch_add_explicit((v23 + 8), 1uLL, memory_order_relaxed);
        }
      }

      memset(&__p, 0, sizeof(__p));
      v73 = 0;
      if (!MIL::IRTypedTensorValue<MIL::Int4>::UsesFileStorage(a2))
      {
        goto LABEL_59;
      }

      v24 = MIL::IRTypedTensorValue<MIL::Int4>::GetFileProperties(a2);
      std::string::basic_string[abi:ne200100]<0>(&__str, "path");
      v25 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(v24, &__str.__r_.__value_.__l.__data_);
      if (!v25)
      {
        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      v27 = v25[5];
      v26 = v25[6];
      if (v26)
      {
        atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      MIL::IRValue::GetScalar<std::string>(v27, &__str);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      __p = __str;
      std::string::basic_string[abi:ne200100]<0>(&__str, "offset");
      v28 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(v24, &__str.__r_.__value_.__l.__data_);
      v29 = v28;
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
        if (v29)
        {
LABEL_39:
          std::string::basic_string[abi:ne200100]<0>(&__str, "offset");
          v30 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(v24, &__str.__r_.__value_.__l.__data_);
          if (!v30)
          {
            std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
          }

          v31 = v30[5];
          v32 = v30[6];
          if (v32)
          {
            atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          v73 = MIL::IRValue::GetScalar<unsigned long long>(v31);
          if (std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>((a1 + 328), &__p.__r_.__value_.__l.__data_))
          {
            v33 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>((a1 + 328), &__p.__r_.__value_.__l.__data_);
            v34 = v33;
            if (!v33)
            {
              goto LABEL_94;
            }

            if (std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::find<unsigned long long>(v33 + 5, &v73))
            {
              if (std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::find<unsigned long long>(v34 + 5, &v73))
              {
                v35 = 1;
                goto LABEL_50;
              }

LABEL_94:
              std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
            }
          }

          v35 = 0;
LABEL_50:
          if (v32)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v32);
          }

          if (v26)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v26);
          }

          if (v35)
          {
LABEL_78:
            v55 = MIL::IRTypedTensorValue<MIL::Int4>::GetType(a2);
            (*(*v55 + 24))(v55);
            MIL::Blob::StorageWriter::GetFilePath(v20, &__str);
            MIL::IRTensorValueType::MakeValueFromBlobFile();
          }

LABEL_59:
          switch(v12)
          {
            case 4:
              v36 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::Fp16>(v36);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::Fp16>(v20);
              break;
            case 5:
              v51 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<float>(v51);
              v37 = MIL::Blob::StorageWriter::WriteData<float>(v20);
              break;
            case 9:
              v48 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<signed char>(v48);
              v37 = MIL::Blob::StorageWriter::WriteData<signed char>(v20);
              break;
            case 10:
              v50 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<short>(v50);
              v37 = MIL::Blob::StorageWriter::WriteData<short>(v20);
              break;
            case 11:
              v45 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<int>(v45);
              v37 = MIL::Blob::StorageWriter::WriteData<int>(v20);
              break;
            case 13:
              v47 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::Int4>(v47);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::Int4>(v20);
              break;
            case 14:
              v52 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<unsigned char>(v52);
              v37 = MIL::Blob::StorageWriter::WriteData<unsigned char>(v20);
              break;
            case 15:
              v49 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<unsigned short>(v49);
              v37 = MIL::Blob::StorageWriter::WriteData<unsigned short>(v20);
              break;
            case 16:
              v42 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<unsigned int>(v42);
              v37 = MIL::Blob::StorageWriter::WriteData<unsigned int>(v20);
              break;
            case 19:
              v39 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::UInt2>(v39);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::UInt2>(v20);
              break;
            case 20:
              v41 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::UInt4>(v41);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::UInt4>(v20);
              break;
            case 21:
              v38 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::UInt1>(v38);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::UInt1>(v20);
              break;
            case 22:
              v40 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::UInt3>(v40);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::UInt3>(v20);
              break;
            case 23:
              v43 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::UInt6>(v43);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::UInt6>(v20);
              break;
            case 24:
              v44 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::Fp8E4M3FN>(v44);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::Fp8E4M3FN>(v20);
              break;
            case 25:
              v46 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::Fp8E5M2>(v46);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::Fp8E5M2>(v20);
              break;
            default:
              exception = __cxa_allocate_exception(0x10uLL);
              MIL::IRDataTypeToString(v12, &v68);
              v65 = std::string::insert(&v68, 0, "[MIL Serialization] Unsupported Data type ");
              v66 = *&v65->__r_.__value_.__l.__data_;
              __str.__r_.__value_.__r.__words[2] = v65->__r_.__value_.__r.__words[2];
              *&__str.__r_.__value_.__l.__data_ = v66;
              v65->__r_.__value_.__l.__size_ = 0;
              v65->__r_.__value_.__r.__words[2] = 0;
              v65->__r_.__value_.__r.__words[0] = 0;
              std::logic_error::logic_error(exception, &__str);
              exception->__vftable = (MEMORY[0x277D828F8] + 16);
              __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
          }

          v53 = v37;
          if (MIL::IRTypedTensorValue<MIL::Int4>::UsesFileStorage(a2))
          {
            __str.__r_.__value_.__r.__words[0] = &__p;
            v54 = std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<unsigned long long,unsigned long long>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<unsigned long long,unsigned long long>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<unsigned long long,unsigned long long>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<unsigned long long,unsigned long long>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 328), &__p.__r_.__value_.__l.__data_);
            __str.__r_.__value_.__r.__words[0] = &v73;
            std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v54 + 5, &v73)[3] = v53;
          }

          goto LABEL_78;
        }
      }

      else if (v28)
      {
        goto LABEL_39;
      }

      if (v26)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v26);
      }

      goto LABEL_59;
    }
  }

  ValHelperForSubByteTypes<MIL::Int4>(a2, *(a1 + 40));
  return a1;
}

void sub_218091750(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, char a37)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
    if ((v39 & 1) == 0)
    {
LABEL_8:
      if (a35 < 0)
      {
        operator delete(a30);
      }

      if (v37)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v37);
      }

      std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&a37);
      _Unwind_Resume(a1);
    }
  }

  else if (!v39)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v38);
  goto LABEL_8;
}

uint64_t MIL::Text::BasicSerializer::Val<signed char>(uint64_t a1, MIL::IRTensorValue *a2)
{
  v4 = *(a1 + 384);
  if (v4)
  {
    Type = MIL::IRTypedTensorValue<signed char>::GetType(a2);
    v6 = MIL::IRValueType::AsTensorType(Type);
    v7 = (*(*v6 + 16))(v6);
    v8 = v7 >= (*(**(a1 + 320) + 136))(*(a1 + 320));
  }

  else
  {
    v8 = MIL::IRTypedTensorValue<signed char>::UsesFileStorage(a2);
  }

  v9 = MIL::IRTypedTensorValue<signed char>::GetType(a2);
  v10 = MIL::IRValueType::AsTensorType(v9);
  v11 = (*(*v10 + 88))(v10);
  v12 = v11;
  if (!v4 || !v8 || (v11 <= 0x19 ? (v13 = ((1 << v11) & 0x3F9EE30) == 0) : (v13 = 1), !v13))
  {
    if (v8)
    {
      memset(v71, 0, sizeof(v71));
      v72 = 1065353216;
      if (!v4)
      {
        FileProperties = MIL::IRTypedTensorValue<signed char>::GetFileProperties(a2);
        if (v71 != FileProperties)
        {
          v72 = *(FileProperties + 32);
          std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *> *>>(v71, *(FileProperties + 16), 0);
        }

        std::string::basic_string[abi:ne200100]<0>(&__str, "type");
        v56 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>(v71, &__str.__r_.__value_.__l.__data_);
        if (v56)
        {
          MIL::IRValue::GetScalar<std::string>(v56[5], &__p);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          std::string::basic_string[abi:ne200100]<0>(&__str, "type");
          std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__erase_unique<std::string>(v71, &__str.__r_.__value_.__l.__data_);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          std::string::basic_string[abi:ne200100]<0>(&__str, "path");
          v57 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>(v71, &__str.__r_.__value_.__l.__data_);
          if (v57)
          {
            v59 = v57[5];
            v58 = v57[6];
            if (v58)
            {
              atomic_fetch_add_explicit(v58 + 1, 1uLL, memory_order_relaxed);
            }

            if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__str.__r_.__value_.__l.__data_);
            }

            MIL::IRValue::GetScalar<std::string>(v59, &__str);
            v60 = (*(**(a1 + 320) + 32))(*(a1 + 320));
            MIL::Util::ReplaceModelPaths(&__str, v60);
            v61 = (*(*v59 + 32))(v59);
            v62 = MIL::IRValueType::AsTensorType(v61);
            v67 = __str;
            memset(&__str, 0, sizeof(__str));
            MIL::IRTensorValueType::MakeStringValue(v62, &v67);
          }

          std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
        }

        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      if (MIL::IRTypedTensorValue<signed char>::UsesFileStorage(a2))
      {
        v14 = MIL::IRTypedTensorValue<signed char>::GetFileProperties(a2);
        std::string::basic_string[abi:ne200100]<0>(&__p, "path");
        v15 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(v14, &__p.__r_.__value_.__l.__data_);
        if (!v15)
        {
          std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
        }

        v16 = v15[5];
        v17 = v15[6];
        if (v17)
        {
          atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        MIL::IRValue::GetScalar<std::string>(v16, &__p);
        __str.__r_.__value_.__r.__words[0] = &__p;
        v18 = std::__tree<std::__value_type<std::string,std::shared_ptr<MIL::Blob::StorageWriter>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<MIL::Blob::StorageWriter>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<MIL::Blob::StorageWriter>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1 + 368, &__p.__r_.__value_.__l.__data_);
        v20 = *(v18 + 56);
        v19 = *(v18 + 64);
        if (v19)
        {
          atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v17)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v17);
        }
      }

      else
      {
        v22 = *(a1 + 368);
        v20 = *(v22 + 56);
        v23 = *(v22 + 64);
        if (v23)
        {
          atomic_fetch_add_explicit((v23 + 8), 1uLL, memory_order_relaxed);
        }
      }

      memset(&__p, 0, sizeof(__p));
      v73 = 0;
      if (!MIL::IRTypedTensorValue<signed char>::UsesFileStorage(a2))
      {
        goto LABEL_59;
      }

      v24 = MIL::IRTypedTensorValue<signed char>::GetFileProperties(a2);
      std::string::basic_string[abi:ne200100]<0>(&__str, "path");
      v25 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(v24, &__str.__r_.__value_.__l.__data_);
      if (!v25)
      {
        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      v27 = v25[5];
      v26 = v25[6];
      if (v26)
      {
        atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      MIL::IRValue::GetScalar<std::string>(v27, &__str);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      __p = __str;
      std::string::basic_string[abi:ne200100]<0>(&__str, "offset");
      v28 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(v24, &__str.__r_.__value_.__l.__data_);
      v29 = v28;
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
        if (v29)
        {
LABEL_39:
          std::string::basic_string[abi:ne200100]<0>(&__str, "offset");
          v30 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(v24, &__str.__r_.__value_.__l.__data_);
          if (!v30)
          {
            std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
          }

          v31 = v30[5];
          v32 = v30[6];
          if (v32)
          {
            atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          v73 = MIL::IRValue::GetScalar<unsigned long long>(v31);
          if (std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>((a1 + 328), &__p.__r_.__value_.__l.__data_))
          {
            v33 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>((a1 + 328), &__p.__r_.__value_.__l.__data_);
            v34 = v33;
            if (!v33)
            {
              goto LABEL_94;
            }

            if (std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::find<unsigned long long>(v33 + 5, &v73))
            {
              if (std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::find<unsigned long long>(v34 + 5, &v73))
              {
                v35 = 1;
                goto LABEL_50;
              }

LABEL_94:
              std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
            }
          }

          v35 = 0;
LABEL_50:
          if (v32)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v32);
          }

          if (v26)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v26);
          }

          if (v35)
          {
LABEL_78:
            v55 = MIL::IRTypedTensorValue<signed char>::GetType(a2);
            (*(*v55 + 24))(v55);
            MIL::Blob::StorageWriter::GetFilePath(v20, &__str);
            MIL::IRTensorValueType::MakeValueFromBlobFile();
          }

LABEL_59:
          switch(v12)
          {
            case 4:
              v36 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::Fp16>(v36);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::Fp16>(v20);
              break;
            case 5:
              v51 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<float>(v51);
              v37 = MIL::Blob::StorageWriter::WriteData<float>(v20);
              break;
            case 9:
              v48 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<signed char>(v48);
              v37 = MIL::Blob::StorageWriter::WriteData<signed char>(v20);
              break;
            case 10:
              v50 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<short>(v50);
              v37 = MIL::Blob::StorageWriter::WriteData<short>(v20);
              break;
            case 11:
              v45 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<int>(v45);
              v37 = MIL::Blob::StorageWriter::WriteData<int>(v20);
              break;
            case 13:
              v47 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::Int4>(v47);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::Int4>(v20);
              break;
            case 14:
              v52 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<unsigned char>(v52);
              v37 = MIL::Blob::StorageWriter::WriteData<unsigned char>(v20);
              break;
            case 15:
              v49 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<unsigned short>(v49);
              v37 = MIL::Blob::StorageWriter::WriteData<unsigned short>(v20);
              break;
            case 16:
              v42 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<unsigned int>(v42);
              v37 = MIL::Blob::StorageWriter::WriteData<unsigned int>(v20);
              break;
            case 19:
              v39 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::UInt2>(v39);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::UInt2>(v20);
              break;
            case 20:
              v41 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::UInt4>(v41);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::UInt4>(v20);
              break;
            case 21:
              v38 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::UInt1>(v38);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::UInt1>(v20);
              break;
            case 22:
              v40 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::UInt3>(v40);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::UInt3>(v20);
              break;
            case 23:
              v43 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::UInt6>(v43);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::UInt6>(v20);
              break;
            case 24:
              v44 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::Fp8E4M3FN>(v44);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::Fp8E4M3FN>(v20);
              break;
            case 25:
              v46 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::Fp8E5M2>(v46);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::Fp8E5M2>(v20);
              break;
            default:
              exception = __cxa_allocate_exception(0x10uLL);
              MIL::IRDataTypeToString(v12, &v68);
              v65 = std::string::insert(&v68, 0, "[MIL Serialization] Unsupported Data type ");
              v66 = *&v65->__r_.__value_.__l.__data_;
              __str.__r_.__value_.__r.__words[2] = v65->__r_.__value_.__r.__words[2];
              *&__str.__r_.__value_.__l.__data_ = v66;
              v65->__r_.__value_.__l.__size_ = 0;
              v65->__r_.__value_.__r.__words[2] = 0;
              v65->__r_.__value_.__r.__words[0] = 0;
              std::logic_error::logic_error(exception, &__str);
              exception->__vftable = (MEMORY[0x277D828F8] + 16);
              __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
          }

          v53 = v37;
          if (MIL::IRTypedTensorValue<signed char>::UsesFileStorage(a2))
          {
            __str.__r_.__value_.__r.__words[0] = &__p;
            v54 = std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<unsigned long long,unsigned long long>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<unsigned long long,unsigned long long>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<unsigned long long,unsigned long long>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<unsigned long long,unsigned long long>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 328), &__p.__r_.__value_.__l.__data_);
            __str.__r_.__value_.__r.__words[0] = &v73;
            std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v54 + 5, &v73)[3] = v53;
          }

          goto LABEL_78;
        }
      }

      else if (v28)
      {
        goto LABEL_39;
      }

      if (v26)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v26);
      }

      goto LABEL_59;
    }
  }

  ValHelper<signed char>(a2, *(a1 + 40));
  return a1;
}

void sub_218092608(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, char a37)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
    if ((v39 & 1) == 0)
    {
LABEL_8:
      if (a35 < 0)
      {
        operator delete(a30);
      }

      if (v37)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v37);
      }

      std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&a37);
      _Unwind_Resume(a1);
    }
  }

  else if (!v39)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v38);
  goto LABEL_8;
}

void ValHelper<signed char>(uint64_t a1, void *a2)
{
  Type = MIL::IRTypedTensorValue<signed char>::GetType(a1);
  v5 = (*(*Type + 96))(Type);
  v9 = 0;
  v10 = 0;
  __p = 0;
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&__p, *v5, v5[1], (v5[1] - *v5) >> 3);
  if (__p == v9)
  {
    ScalarValue = MIL::IRTypedTensorValue<signed char>::GetScalarValue(a1);
    MEMORY[0x21CEAFB50](a2, ScalarValue);
  }

  Values = MIL::IRTypedTensorValue<signed char>::GetValues(a1);
  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }
}

void sub_218092998(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::Text::BasicSerializer::Val<short>(uint64_t a1, MIL::IRTensorValue *a2)
{
  v4 = *(a1 + 384);
  if (v4)
  {
    Type = MIL::IRTypedTensorValue<short>::GetType(a2);
    v6 = MIL::IRValueType::AsTensorType(Type);
    v7 = (*(*v6 + 16))(v6);
    v8 = v7 >= (*(**(a1 + 320) + 136))(*(a1 + 320));
  }

  else
  {
    v8 = MIL::IRTypedTensorValue<short>::UsesFileStorage(a2);
  }

  v9 = MIL::IRTypedTensorValue<short>::GetType(a2);
  v10 = MIL::IRValueType::AsTensorType(v9);
  v11 = (*(*v10 + 88))(v10);
  v12 = v11;
  if (!v4 || !v8 || (v11 <= 0x19 ? (v13 = ((1 << v11) & 0x3F9EE30) == 0) : (v13 = 1), !v13))
  {
    if (v8)
    {
      memset(v71, 0, sizeof(v71));
      v72 = 1065353216;
      if (!v4)
      {
        FileProperties = MIL::IRTypedTensorValue<short>::GetFileProperties(a2);
        if (v71 != FileProperties)
        {
          v72 = *(FileProperties + 32);
          std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *> *>>(v71, *(FileProperties + 16), 0);
        }

        std::string::basic_string[abi:ne200100]<0>(&__str, "type");
        v56 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>(v71, &__str.__r_.__value_.__l.__data_);
        if (v56)
        {
          MIL::IRValue::GetScalar<std::string>(v56[5], &__p);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          std::string::basic_string[abi:ne200100]<0>(&__str, "type");
          std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__erase_unique<std::string>(v71, &__str.__r_.__value_.__l.__data_);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          std::string::basic_string[abi:ne200100]<0>(&__str, "path");
          v57 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>(v71, &__str.__r_.__value_.__l.__data_);
          if (v57)
          {
            v59 = v57[5];
            v58 = v57[6];
            if (v58)
            {
              atomic_fetch_add_explicit(v58 + 1, 1uLL, memory_order_relaxed);
            }

            if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__str.__r_.__value_.__l.__data_);
            }

            MIL::IRValue::GetScalar<std::string>(v59, &__str);
            v60 = (*(**(a1 + 320) + 32))(*(a1 + 320));
            MIL::Util::ReplaceModelPaths(&__str, v60);
            v61 = (*(*v59 + 32))(v59);
            v62 = MIL::IRValueType::AsTensorType(v61);
            v67 = __str;
            memset(&__str, 0, sizeof(__str));
            MIL::IRTensorValueType::MakeStringValue(v62, &v67);
          }

          std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
        }

        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      if (MIL::IRTypedTensorValue<short>::UsesFileStorage(a2))
      {
        v14 = MIL::IRTypedTensorValue<short>::GetFileProperties(a2);
        std::string::basic_string[abi:ne200100]<0>(&__p, "path");
        v15 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(v14, &__p.__r_.__value_.__l.__data_);
        if (!v15)
        {
          std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
        }

        v16 = v15[5];
        v17 = v15[6];
        if (v17)
        {
          atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        MIL::IRValue::GetScalar<std::string>(v16, &__p);
        __str.__r_.__value_.__r.__words[0] = &__p;
        v18 = std::__tree<std::__value_type<std::string,std::shared_ptr<MIL::Blob::StorageWriter>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<MIL::Blob::StorageWriter>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<MIL::Blob::StorageWriter>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1 + 368, &__p.__r_.__value_.__l.__data_);
        v20 = *(v18 + 56);
        v19 = *(v18 + 64);
        if (v19)
        {
          atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v17)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v17);
        }
      }

      else
      {
        v22 = *(a1 + 368);
        v20 = *(v22 + 56);
        v23 = *(v22 + 64);
        if (v23)
        {
          atomic_fetch_add_explicit((v23 + 8), 1uLL, memory_order_relaxed);
        }
      }

      memset(&__p, 0, sizeof(__p));
      v73 = 0;
      if (!MIL::IRTypedTensorValue<short>::UsesFileStorage(a2))
      {
        goto LABEL_59;
      }

      v24 = MIL::IRTypedTensorValue<short>::GetFileProperties(a2);
      std::string::basic_string[abi:ne200100]<0>(&__str, "path");
      v25 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(v24, &__str.__r_.__value_.__l.__data_);
      if (!v25)
      {
        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      v27 = v25[5];
      v26 = v25[6];
      if (v26)
      {
        atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      MIL::IRValue::GetScalar<std::string>(v27, &__str);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      __p = __str;
      std::string::basic_string[abi:ne200100]<0>(&__str, "offset");
      v28 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(v24, &__str.__r_.__value_.__l.__data_);
      v29 = v28;
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
        if (v29)
        {
LABEL_39:
          std::string::basic_string[abi:ne200100]<0>(&__str, "offset");
          v30 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(v24, &__str.__r_.__value_.__l.__data_);
          if (!v30)
          {
            std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
          }

          v31 = v30[5];
          v32 = v30[6];
          if (v32)
          {
            atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          v73 = MIL::IRValue::GetScalar<unsigned long long>(v31);
          if (std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>((a1 + 328), &__p.__r_.__value_.__l.__data_))
          {
            v33 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>((a1 + 328), &__p.__r_.__value_.__l.__data_);
            v34 = v33;
            if (!v33)
            {
              goto LABEL_94;
            }

            if (std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::find<unsigned long long>(v33 + 5, &v73))
            {
              if (std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::find<unsigned long long>(v34 + 5, &v73))
              {
                v35 = 1;
                goto LABEL_50;
              }

LABEL_94:
              std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
            }
          }

          v35 = 0;
LABEL_50:
          if (v32)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v32);
          }

          if (v26)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v26);
          }

          if (v35)
          {
LABEL_78:
            v55 = MIL::IRTypedTensorValue<short>::GetType(a2);
            (*(*v55 + 24))(v55);
            MIL::Blob::StorageWriter::GetFilePath(v20, &__str);
            MIL::IRTensorValueType::MakeValueFromBlobFile();
          }

LABEL_59:
          switch(v12)
          {
            case 4:
              v36 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::Fp16>(v36);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::Fp16>(v20);
              break;
            case 5:
              v51 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<float>(v51);
              v37 = MIL::Blob::StorageWriter::WriteData<float>(v20);
              break;
            case 9:
              v48 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<signed char>(v48);
              v37 = MIL::Blob::StorageWriter::WriteData<signed char>(v20);
              break;
            case 10:
              v50 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<short>(v50);
              v37 = MIL::Blob::StorageWriter::WriteData<short>(v20);
              break;
            case 11:
              v45 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<int>(v45);
              v37 = MIL::Blob::StorageWriter::WriteData<int>(v20);
              break;
            case 13:
              v47 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::Int4>(v47);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::Int4>(v20);
              break;
            case 14:
              v52 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<unsigned char>(v52);
              v37 = MIL::Blob::StorageWriter::WriteData<unsigned char>(v20);
              break;
            case 15:
              v49 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<unsigned short>(v49);
              v37 = MIL::Blob::StorageWriter::WriteData<unsigned short>(v20);
              break;
            case 16:
              v42 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<unsigned int>(v42);
              v37 = MIL::Blob::StorageWriter::WriteData<unsigned int>(v20);
              break;
            case 19:
              v39 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::UInt2>(v39);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::UInt2>(v20);
              break;
            case 20:
              v41 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::UInt4>(v41);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::UInt4>(v20);
              break;
            case 21:
              v38 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::UInt1>(v38);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::UInt1>(v20);
              break;
            case 22:
              v40 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::UInt3>(v40);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::UInt3>(v20);
              break;
            case 23:
              v43 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::UInt6>(v43);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::UInt6>(v20);
              break;
            case 24:
              v44 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::Fp8E4M3FN>(v44);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::Fp8E4M3FN>(v20);
              break;
            case 25:
              v46 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::Fp8E5M2>(v46);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::Fp8E5M2>(v20);
              break;
            default:
              exception = __cxa_allocate_exception(0x10uLL);
              MIL::IRDataTypeToString(v12, &v68);
              v65 = std::string::insert(&v68, 0, "[MIL Serialization] Unsupported Data type ");
              v66 = *&v65->__r_.__value_.__l.__data_;
              __str.__r_.__value_.__r.__words[2] = v65->__r_.__value_.__r.__words[2];
              *&__str.__r_.__value_.__l.__data_ = v66;
              v65->__r_.__value_.__l.__size_ = 0;
              v65->__r_.__value_.__r.__words[2] = 0;
              v65->__r_.__value_.__r.__words[0] = 0;
              std::logic_error::logic_error(exception, &__str);
              exception->__vftable = (MEMORY[0x277D828F8] + 16);
              __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
          }

          v53 = v37;
          if (MIL::IRTypedTensorValue<short>::UsesFileStorage(a2))
          {
            __str.__r_.__value_.__r.__words[0] = &__p;
            v54 = std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<unsigned long long,unsigned long long>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<unsigned long long,unsigned long long>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<unsigned long long,unsigned long long>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<unsigned long long,unsigned long long>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 328), &__p.__r_.__value_.__l.__data_);
            __str.__r_.__value_.__r.__words[0] = &v73;
            std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v54 + 5, &v73)[3] = v53;
          }

          goto LABEL_78;
        }
      }

      else if (v28)
      {
        goto LABEL_39;
      }

      if (v26)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v26);
      }

      goto LABEL_59;
    }
  }

  ValHelper<short>(a2, *(a1 + 40));
  return a1;
}

void sub_2180935A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, char a37)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
    if ((v39 & 1) == 0)
    {
LABEL_8:
      if (a35 < 0)
      {
        operator delete(a30);
      }

      if (v37)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v37);
      }

      std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&a37);
      _Unwind_Resume(a1);
    }
  }

  else if (!v39)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v38);
  goto LABEL_8;
}

void ValHelper<short>(uint64_t a1, void *a2)
{
  Type = MIL::IRTypedTensorValue<short>::GetType(a1);
  v5 = (*(*Type + 96))(Type);
  v9 = 0;
  v10 = 0;
  __p = 0;
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&__p, *v5, v5[1], (v5[1] - *v5) >> 3);
  if (__p == v9)
  {
    ScalarValue = MIL::IRTypedTensorValue<short>::GetScalarValue(a1);
    MEMORY[0x21CEAFB50](a2, ScalarValue);
  }

  Values = MIL::IRTypedTensorValue<short>::GetValues(a1);
  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }
}

void sub_218093930(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::Text::BasicSerializer::Val<int>(uint64_t a1, MIL::IRTensorValue *a2)
{
  v4 = *(a1 + 384);
  if (v4)
  {
    Type = MIL::IRTypedTensorValue<int>::GetType(a2);
    v6 = MIL::IRValueType::AsTensorType(Type);
    v7 = (*(*v6 + 16))(v6);
    v8 = v7 >= (*(**(a1 + 320) + 136))(*(a1 + 320));
  }

  else
  {
    v8 = MIL::IRTypedTensorValue<int>::UsesFileStorage(a2);
  }

  v9 = MIL::IRTypedTensorValue<int>::GetType(a2);
  v10 = MIL::IRValueType::AsTensorType(v9);
  v11 = (*(*v10 + 88))(v10);
  v12 = v11;
  if (!v4 || !v8 || (v11 <= 0x19 ? (v13 = ((1 << v11) & 0x3F9EE30) == 0) : (v13 = 1), !v13))
  {
    if (v8)
    {
      memset(v71, 0, sizeof(v71));
      v72 = 1065353216;
      if (!v4)
      {
        FileProperties = MIL::IRTypedTensorValue<int>::GetFileProperties(a2);
        if (v71 != FileProperties)
        {
          v72 = *(FileProperties + 32);
          std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *> *>>(v71, *(FileProperties + 16), 0);
        }

        std::string::basic_string[abi:ne200100]<0>(&__str, "type");
        v56 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>(v71, &__str.__r_.__value_.__l.__data_);
        if (v56)
        {
          MIL::IRValue::GetScalar<std::string>(v56[5], &__p);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          std::string::basic_string[abi:ne200100]<0>(&__str, "type");
          std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__erase_unique<std::string>(v71, &__str.__r_.__value_.__l.__data_);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          std::string::basic_string[abi:ne200100]<0>(&__str, "path");
          v57 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>(v71, &__str.__r_.__value_.__l.__data_);
          if (v57)
          {
            v59 = v57[5];
            v58 = v57[6];
            if (v58)
            {
              atomic_fetch_add_explicit(v58 + 1, 1uLL, memory_order_relaxed);
            }

            if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__str.__r_.__value_.__l.__data_);
            }

            MIL::IRValue::GetScalar<std::string>(v59, &__str);
            v60 = (*(**(a1 + 320) + 32))(*(a1 + 320));
            MIL::Util::ReplaceModelPaths(&__str, v60);
            v61 = (*(*v59 + 32))(v59);
            v62 = MIL::IRValueType::AsTensorType(v61);
            v67 = __str;
            memset(&__str, 0, sizeof(__str));
            MIL::IRTensorValueType::MakeStringValue(v62, &v67);
          }

          std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
        }

        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      if (MIL::IRTypedTensorValue<int>::UsesFileStorage(a2))
      {
        v14 = MIL::IRTypedTensorValue<int>::GetFileProperties(a2);
        std::string::basic_string[abi:ne200100]<0>(&__p, "path");
        v15 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(v14, &__p.__r_.__value_.__l.__data_);
        if (!v15)
        {
          std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
        }

        v16 = v15[5];
        v17 = v15[6];
        if (v17)
        {
          atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        MIL::IRValue::GetScalar<std::string>(v16, &__p);
        __str.__r_.__value_.__r.__words[0] = &__p;
        v18 = std::__tree<std::__value_type<std::string,std::shared_ptr<MIL::Blob::StorageWriter>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<MIL::Blob::StorageWriter>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<MIL::Blob::StorageWriter>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1 + 368, &__p.__r_.__value_.__l.__data_);
        v20 = *(v18 + 56);
        v19 = *(v18 + 64);
        if (v19)
        {
          atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v17)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v17);
        }
      }

      else
      {
        v22 = *(a1 + 368);
        v20 = *(v22 + 56);
        v23 = *(v22 + 64);
        if (v23)
        {
          atomic_fetch_add_explicit((v23 + 8), 1uLL, memory_order_relaxed);
        }
      }

      memset(&__p, 0, sizeof(__p));
      v73 = 0;
      if (!MIL::IRTypedTensorValue<int>::UsesFileStorage(a2))
      {
        goto LABEL_59;
      }

      v24 = MIL::IRTypedTensorValue<int>::GetFileProperties(a2);
      std::string::basic_string[abi:ne200100]<0>(&__str, "path");
      v25 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(v24, &__str.__r_.__value_.__l.__data_);
      if (!v25)
      {
        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      v27 = v25[5];
      v26 = v25[6];
      if (v26)
      {
        atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      MIL::IRValue::GetScalar<std::string>(v27, &__str);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      __p = __str;
      std::string::basic_string[abi:ne200100]<0>(&__str, "offset");
      v28 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(v24, &__str.__r_.__value_.__l.__data_);
      v29 = v28;
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
        if (v29)
        {
LABEL_39:
          std::string::basic_string[abi:ne200100]<0>(&__str, "offset");
          v30 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(v24, &__str.__r_.__value_.__l.__data_);
          if (!v30)
          {
            std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
          }

          v31 = v30[5];
          v32 = v30[6];
          if (v32)
          {
            atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          v73 = MIL::IRValue::GetScalar<unsigned long long>(v31);
          if (std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>((a1 + 328), &__p.__r_.__value_.__l.__data_))
          {
            v33 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>((a1 + 328), &__p.__r_.__value_.__l.__data_);
            v34 = v33;
            if (!v33)
            {
              goto LABEL_94;
            }

            if (std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::find<unsigned long long>(v33 + 5, &v73))
            {
              if (std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::find<unsigned long long>(v34 + 5, &v73))
              {
                v35 = 1;
                goto LABEL_50;
              }

LABEL_94:
              std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
            }
          }

          v35 = 0;
LABEL_50:
          if (v32)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v32);
          }

          if (v26)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v26);
          }

          if (v35)
          {
LABEL_78:
            v55 = MIL::IRTypedTensorValue<int>::GetType(a2);
            (*(*v55 + 24))(v55);
            MIL::Blob::StorageWriter::GetFilePath(v20, &__str);
            MIL::IRTensorValueType::MakeValueFromBlobFile();
          }

LABEL_59:
          switch(v12)
          {
            case 4:
              v36 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::Fp16>(v36);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::Fp16>(v20);
              break;
            case 5:
              v51 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<float>(v51);
              v37 = MIL::Blob::StorageWriter::WriteData<float>(v20);
              break;
            case 9:
              v48 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<signed char>(v48);
              v37 = MIL::Blob::StorageWriter::WriteData<signed char>(v20);
              break;
            case 10:
              v50 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<short>(v50);
              v37 = MIL::Blob::StorageWriter::WriteData<short>(v20);
              break;
            case 11:
              v45 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<int>(v45);
              v37 = MIL::Blob::StorageWriter::WriteData<int>(v20);
              break;
            case 13:
              v47 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::Int4>(v47);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::Int4>(v20);
              break;
            case 14:
              v52 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<unsigned char>(v52);
              v37 = MIL::Blob::StorageWriter::WriteData<unsigned char>(v20);
              break;
            case 15:
              v49 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<unsigned short>(v49);
              v37 = MIL::Blob::StorageWriter::WriteData<unsigned short>(v20);
              break;
            case 16:
              v42 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<unsigned int>(v42);
              v37 = MIL::Blob::StorageWriter::WriteData<unsigned int>(v20);
              break;
            case 19:
              v39 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::UInt2>(v39);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::UInt2>(v20);
              break;
            case 20:
              v41 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::UInt4>(v41);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::UInt4>(v20);
              break;
            case 21:
              v38 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::UInt1>(v38);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::UInt1>(v20);
              break;
            case 22:
              v40 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::UInt3>(v40);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::UInt3>(v20);
              break;
            case 23:
              v43 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::UInt6>(v43);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::UInt6>(v20);
              break;
            case 24:
              v44 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::Fp8E4M3FN>(v44);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::Fp8E4M3FN>(v20);
              break;
            case 25:
              v46 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::Fp8E5M2>(v46);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::Fp8E5M2>(v20);
              break;
            default:
              exception = __cxa_allocate_exception(0x10uLL);
              MIL::IRDataTypeToString(v12, &v68);
              v65 = std::string::insert(&v68, 0, "[MIL Serialization] Unsupported Data type ");
              v66 = *&v65->__r_.__value_.__l.__data_;
              __str.__r_.__value_.__r.__words[2] = v65->__r_.__value_.__r.__words[2];
              *&__str.__r_.__value_.__l.__data_ = v66;
              v65->__r_.__value_.__l.__size_ = 0;
              v65->__r_.__value_.__r.__words[2] = 0;
              v65->__r_.__value_.__r.__words[0] = 0;
              std::logic_error::logic_error(exception, &__str);
              exception->__vftable = (MEMORY[0x277D828F8] + 16);
              __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
          }

          v53 = v37;
          if (MIL::IRTypedTensorValue<int>::UsesFileStorage(a2))
          {
            __str.__r_.__value_.__r.__words[0] = &__p;
            v54 = std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<unsigned long long,unsigned long long>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<unsigned long long,unsigned long long>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<unsigned long long,unsigned long long>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<unsigned long long,unsigned long long>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 328), &__p.__r_.__value_.__l.__data_);
            __str.__r_.__value_.__r.__words[0] = &v73;
            std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v54 + 5, &v73)[3] = v53;
          }

          goto LABEL_78;
        }
      }

      else if (v28)
      {
        goto LABEL_39;
      }

      if (v26)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v26);
      }

      goto LABEL_59;
    }
  }

  ValHelper<int>(a2, *(a1 + 40));
  return a1;
}

void sub_218094538(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, char a37)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
    if ((v39 & 1) == 0)
    {
LABEL_8:
      if (a35 < 0)
      {
        operator delete(a30);
      }

      if (v37)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v37);
      }

      std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&a37);
      _Unwind_Resume(a1);
    }
  }

  else if (!v39)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v38);
  goto LABEL_8;
}

void ValHelper<int>(uint64_t a1, void *a2)
{
  Type = MIL::IRTypedTensorValue<int>::GetType(a1);
  v5 = (*(*Type + 96))(Type);
  v9 = 0;
  v10 = 0;
  __p = 0;
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&__p, *v5, v5[1], (v5[1] - *v5) >> 3);
  if (__p == v9)
  {
    ScalarValue = MIL::IRTypedTensorValue<int>::GetScalarValue(a1);
    MEMORY[0x21CEAFB20](a2, ScalarValue);
  }

  Values = MIL::IRTypedTensorValue<int>::GetValues(a1);
  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }
}

void sub_2180948C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::Text::BasicSerializer::Val<long long>(uint64_t a1, MIL::IRTensorValue *a2)
{
  v4 = *(a1 + 384);
  if (v4)
  {
    Type = MIL::IRTypedTensorValue<long long>::GetType(a2);
    v6 = MIL::IRValueType::AsTensorType(Type);
    v7 = (*(*v6 + 16))(v6);
    v8 = v7 >= (*(**(a1 + 320) + 136))(*(a1 + 320));
  }

  else
  {
    v8 = MIL::IRTypedTensorValue<long long>::UsesFileStorage(a2);
  }

  v9 = MIL::IRTypedTensorValue<long long>::GetType(a2);
  v10 = MIL::IRValueType::AsTensorType(v9);
  v11 = (*(*v10 + 88))(v10);
  v12 = v11;
  if (!v4 || !v8 || (v11 <= 0x19 ? (v13 = ((1 << v11) & 0x3F9EE30) == 0) : (v13 = 1), !v13))
  {
    if (v8)
    {
      memset(v71, 0, sizeof(v71));
      v72 = 1065353216;
      if (!v4)
      {
        FileProperties = MIL::IRTypedTensorValue<long long>::GetFileProperties(a2);
        if (v71 != FileProperties)
        {
          v72 = *(FileProperties + 32);
          std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *> *>>(v71, *(FileProperties + 16), 0);
        }

        std::string::basic_string[abi:ne200100]<0>(&__str, "type");
        v56 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>(v71, &__str.__r_.__value_.__l.__data_);
        if (v56)
        {
          MIL::IRValue::GetScalar<std::string>(v56[5], &__p);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          std::string::basic_string[abi:ne200100]<0>(&__str, "type");
          std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__erase_unique<std::string>(v71, &__str.__r_.__value_.__l.__data_);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          std::string::basic_string[abi:ne200100]<0>(&__str, "path");
          v57 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>(v71, &__str.__r_.__value_.__l.__data_);
          if (v57)
          {
            v59 = v57[5];
            v58 = v57[6];
            if (v58)
            {
              atomic_fetch_add_explicit(v58 + 1, 1uLL, memory_order_relaxed);
            }

            if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__str.__r_.__value_.__l.__data_);
            }

            MIL::IRValue::GetScalar<std::string>(v59, &__str);
            v60 = (*(**(a1 + 320) + 32))(*(a1 + 320));
            MIL::Util::ReplaceModelPaths(&__str, v60);
            v61 = (*(*v59 + 32))(v59);
            v62 = MIL::IRValueType::AsTensorType(v61);
            v67 = __str;
            memset(&__str, 0, sizeof(__str));
            MIL::IRTensorValueType::MakeStringValue(v62, &v67);
          }

          std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
        }

        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      if (MIL::IRTypedTensorValue<long long>::UsesFileStorage(a2))
      {
        v14 = MIL::IRTypedTensorValue<long long>::GetFileProperties(a2);
        std::string::basic_string[abi:ne200100]<0>(&__p, "path");
        v15 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(v14, &__p.__r_.__value_.__l.__data_);
        if (!v15)
        {
          std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
        }

        v16 = v15[5];
        v17 = v15[6];
        if (v17)
        {
          atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        MIL::IRValue::GetScalar<std::string>(v16, &__p);
        __str.__r_.__value_.__r.__words[0] = &__p;
        v18 = std::__tree<std::__value_type<std::string,std::shared_ptr<MIL::Blob::StorageWriter>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<MIL::Blob::StorageWriter>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<MIL::Blob::StorageWriter>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1 + 368, &__p.__r_.__value_.__l.__data_);
        v20 = *(v18 + 56);
        v19 = *(v18 + 64);
        if (v19)
        {
          atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v17)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v17);
        }
      }

      else
      {
        v22 = *(a1 + 368);
        v20 = *(v22 + 56);
        v23 = *(v22 + 64);
        if (v23)
        {
          atomic_fetch_add_explicit((v23 + 8), 1uLL, memory_order_relaxed);
        }
      }

      memset(&__p, 0, sizeof(__p));
      v73 = 0;
      if (!MIL::IRTypedTensorValue<long long>::UsesFileStorage(a2))
      {
        goto LABEL_59;
      }

      v24 = MIL::IRTypedTensorValue<long long>::GetFileProperties(a2);
      std::string::basic_string[abi:ne200100]<0>(&__str, "path");
      v25 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(v24, &__str.__r_.__value_.__l.__data_);
      if (!v25)
      {
        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      v27 = v25[5];
      v26 = v25[6];
      if (v26)
      {
        atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      MIL::IRValue::GetScalar<std::string>(v27, &__str);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      __p = __str;
      std::string::basic_string[abi:ne200100]<0>(&__str, "offset");
      v28 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(v24, &__str.__r_.__value_.__l.__data_);
      v29 = v28;
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
        if (v29)
        {
LABEL_39:
          std::string::basic_string[abi:ne200100]<0>(&__str, "offset");
          v30 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(v24, &__str.__r_.__value_.__l.__data_);
          if (!v30)
          {
            std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
          }

          v31 = v30[5];
          v32 = v30[6];
          if (v32)
          {
            atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          v73 = MIL::IRValue::GetScalar<unsigned long long>(v31);
          if (std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>((a1 + 328), &__p.__r_.__value_.__l.__data_))
          {
            v33 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>((a1 + 328), &__p.__r_.__value_.__l.__data_);
            v34 = v33;
            if (!v33)
            {
              goto LABEL_94;
            }

            if (std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::find<unsigned long long>(v33 + 5, &v73))
            {
              if (std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::find<unsigned long long>(v34 + 5, &v73))
              {
                v35 = 1;
                goto LABEL_50;
              }

LABEL_94:
              std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
            }
          }

          v35 = 0;
LABEL_50:
          if (v32)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v32);
          }

          if (v26)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v26);
          }

          if (v35)
          {
LABEL_78:
            v55 = MIL::IRTypedTensorValue<long long>::GetType(a2);
            (*(*v55 + 24))(v55);
            MIL::Blob::StorageWriter::GetFilePath(v20, &__str);
            MIL::IRTensorValueType::MakeValueFromBlobFile();
          }

LABEL_59:
          switch(v12)
          {
            case 4:
              v36 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::Fp16>(v36);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::Fp16>(v20);
              break;
            case 5:
              v51 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<float>(v51);
              v37 = MIL::Blob::StorageWriter::WriteData<float>(v20);
              break;
            case 9:
              v48 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<signed char>(v48);
              v37 = MIL::Blob::StorageWriter::WriteData<signed char>(v20);
              break;
            case 10:
              v50 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<short>(v50);
              v37 = MIL::Blob::StorageWriter::WriteData<short>(v20);
              break;
            case 11:
              v45 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<int>(v45);
              v37 = MIL::Blob::StorageWriter::WriteData<int>(v20);
              break;
            case 13:
              v47 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::Int4>(v47);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::Int4>(v20);
              break;
            case 14:
              v52 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<unsigned char>(v52);
              v37 = MIL::Blob::StorageWriter::WriteData<unsigned char>(v20);
              break;
            case 15:
              v49 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<unsigned short>(v49);
              v37 = MIL::Blob::StorageWriter::WriteData<unsigned short>(v20);
              break;
            case 16:
              v42 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<unsigned int>(v42);
              v37 = MIL::Blob::StorageWriter::WriteData<unsigned int>(v20);
              break;
            case 19:
              v39 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::UInt2>(v39);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::UInt2>(v20);
              break;
            case 20:
              v41 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::UInt4>(v41);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::UInt4>(v20);
              break;
            case 21:
              v38 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::UInt1>(v38);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::UInt1>(v20);
              break;
            case 22:
              v40 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::UInt3>(v40);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::UInt3>(v20);
              break;
            case 23:
              v43 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::UInt6>(v43);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::UInt6>(v20);
              break;
            case 24:
              v44 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::Fp8E4M3FN>(v44);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::Fp8E4M3FN>(v20);
              break;
            case 25:
              v46 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::Fp8E5M2>(v46);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::Fp8E5M2>(v20);
              break;
            default:
              exception = __cxa_allocate_exception(0x10uLL);
              MIL::IRDataTypeToString(v12, &v68);
              v65 = std::string::insert(&v68, 0, "[MIL Serialization] Unsupported Data type ");
              v66 = *&v65->__r_.__value_.__l.__data_;
              __str.__r_.__value_.__r.__words[2] = v65->__r_.__value_.__r.__words[2];
              *&__str.__r_.__value_.__l.__data_ = v66;
              v65->__r_.__value_.__l.__size_ = 0;
              v65->__r_.__value_.__r.__words[2] = 0;
              v65->__r_.__value_.__r.__words[0] = 0;
              std::logic_error::logic_error(exception, &__str);
              exception->__vftable = (MEMORY[0x277D828F8] + 16);
              __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
          }

          v53 = v37;
          if (MIL::IRTypedTensorValue<long long>::UsesFileStorage(a2))
          {
            __str.__r_.__value_.__r.__words[0] = &__p;
            v54 = std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<unsigned long long,unsigned long long>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<unsigned long long,unsigned long long>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<unsigned long long,unsigned long long>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<unsigned long long,unsigned long long>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 328), &__p.__r_.__value_.__l.__data_);
            __str.__r_.__value_.__r.__words[0] = &v73;
            std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v54 + 5, &v73)[3] = v53;
          }

          goto LABEL_78;
        }
      }

      else if (v28)
      {
        goto LABEL_39;
      }

      if (v26)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v26);
      }

      goto LABEL_59;
    }
  }

  ValHelper<long long>(a2, *(a1 + 40));
  return a1;
}

void sub_2180954D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, char a37)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
    if ((v39 & 1) == 0)
    {
LABEL_8:
      if (a35 < 0)
      {
        operator delete(a30);
      }

      if (v37)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v37);
      }

      std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&a37);
      _Unwind_Resume(a1);
    }
  }

  else if (!v39)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v38);
  goto LABEL_8;
}

void ValHelper<long long>(uint64_t a1, void *a2)
{
  Type = MIL::IRTypedTensorValue<long long>::GetType(a1);
  v5 = (*(*Type + 96))(Type);
  v9 = 0;
  v10 = 0;
  __p = 0;
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&__p, *v5, v5[1], (v5[1] - *v5) >> 3);
  if (__p == v9)
  {
    ScalarValue = MIL::IRTypedTensorValue<long long>::GetScalarValue(a1);
    MEMORY[0x21CEAFB70](a2, ScalarValue);
  }

  Values = MIL::IRTypedTensorValue<long long>::GetValues(a1);
  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }
}

void sub_218095860(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::Text::BasicSerializer::Val<MIL::UInt1>(uint64_t a1, MIL::IRTensorValue *a2)
{
  v4 = *(a1 + 384);
  if (v4)
  {
    Type = MIL::IRTypedTensorValue<MIL::UInt1>::GetType(a2);
    v6 = MIL::IRValueType::AsTensorType(Type);
    v7 = (*(*v6 + 16))(v6);
    v8 = v7 >= (*(**(a1 + 320) + 136))(*(a1 + 320));
  }

  else
  {
    v8 = MIL::IRTypedTensorValue<MIL::UInt1>::UsesFileStorage(a2);
  }

  v9 = MIL::IRTypedTensorValue<MIL::UInt1>::GetType(a2);
  v10 = MIL::IRValueType::AsTensorType(v9);
  v11 = (*(*v10 + 88))(v10);
  v12 = v11;
  if (!v4 || !v8 || (v11 <= 0x19 ? (v13 = ((1 << v11) & 0x3F9EE30) == 0) : (v13 = 1), !v13))
  {
    if (v8)
    {
      memset(v71, 0, sizeof(v71));
      v72 = 1065353216;
      if (!v4)
      {
        FileProperties = MIL::IRTypedTensorValue<MIL::UInt1>::GetFileProperties(a2);
        if (v71 != FileProperties)
        {
          v72 = *(FileProperties + 32);
          std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *> *>>(v71, *(FileProperties + 16), 0);
        }

        std::string::basic_string[abi:ne200100]<0>(&__str, "type");
        v56 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>(v71, &__str.__r_.__value_.__l.__data_);
        if (v56)
        {
          MIL::IRValue::GetScalar<std::string>(v56[5], &__p);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          std::string::basic_string[abi:ne200100]<0>(&__str, "type");
          std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__erase_unique<std::string>(v71, &__str.__r_.__value_.__l.__data_);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          std::string::basic_string[abi:ne200100]<0>(&__str, "path");
          v57 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>(v71, &__str.__r_.__value_.__l.__data_);
          if (v57)
          {
            v59 = v57[5];
            v58 = v57[6];
            if (v58)
            {
              atomic_fetch_add_explicit(v58 + 1, 1uLL, memory_order_relaxed);
            }

            if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__str.__r_.__value_.__l.__data_);
            }

            MIL::IRValue::GetScalar<std::string>(v59, &__str);
            v60 = (*(**(a1 + 320) + 32))(*(a1 + 320));
            MIL::Util::ReplaceModelPaths(&__str, v60);
            v61 = (*(*v59 + 32))(v59);
            v62 = MIL::IRValueType::AsTensorType(v61);
            v67 = __str;
            memset(&__str, 0, sizeof(__str));
            MIL::IRTensorValueType::MakeStringValue(v62, &v67);
          }

          std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
        }

        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      if (MIL::IRTypedTensorValue<MIL::UInt1>::UsesFileStorage(a2))
      {
        v14 = MIL::IRTypedTensorValue<MIL::UInt1>::GetFileProperties(a2);
        std::string::basic_string[abi:ne200100]<0>(&__p, "path");
        v15 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(v14, &__p.__r_.__value_.__l.__data_);
        if (!v15)
        {
          std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
        }

        v16 = v15[5];
        v17 = v15[6];
        if (v17)
        {
          atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        MIL::IRValue::GetScalar<std::string>(v16, &__p);
        __str.__r_.__value_.__r.__words[0] = &__p;
        v18 = std::__tree<std::__value_type<std::string,std::shared_ptr<MIL::Blob::StorageWriter>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<MIL::Blob::StorageWriter>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<MIL::Blob::StorageWriter>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1 + 368, &__p.__r_.__value_.__l.__data_);
        v20 = *(v18 + 56);
        v19 = *(v18 + 64);
        if (v19)
        {
          atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v17)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v17);
        }
      }

      else
      {
        v22 = *(a1 + 368);
        v20 = *(v22 + 56);
        v23 = *(v22 + 64);
        if (v23)
        {
          atomic_fetch_add_explicit((v23 + 8), 1uLL, memory_order_relaxed);
        }
      }

      memset(&__p, 0, sizeof(__p));
      v73 = 0;
      if (!MIL::IRTypedTensorValue<MIL::UInt1>::UsesFileStorage(a2))
      {
        goto LABEL_59;
      }

      v24 = MIL::IRTypedTensorValue<MIL::UInt1>::GetFileProperties(a2);
      std::string::basic_string[abi:ne200100]<0>(&__str, "path");
      v25 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(v24, &__str.__r_.__value_.__l.__data_);
      if (!v25)
      {
        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      v27 = v25[5];
      v26 = v25[6];
      if (v26)
      {
        atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      MIL::IRValue::GetScalar<std::string>(v27, &__str);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      __p = __str;
      std::string::basic_string[abi:ne200100]<0>(&__str, "offset");
      v28 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(v24, &__str.__r_.__value_.__l.__data_);
      v29 = v28;
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
        if (v29)
        {
LABEL_39:
          std::string::basic_string[abi:ne200100]<0>(&__str, "offset");
          v30 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(v24, &__str.__r_.__value_.__l.__data_);
          if (!v30)
          {
            std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
          }

          v31 = v30[5];
          v32 = v30[6];
          if (v32)
          {
            atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          v73 = MIL::IRValue::GetScalar<unsigned long long>(v31);
          if (std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>((a1 + 328), &__p.__r_.__value_.__l.__data_))
          {
            v33 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>((a1 + 328), &__p.__r_.__value_.__l.__data_);
            v34 = v33;
            if (!v33)
            {
              goto LABEL_94;
            }

            if (std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::find<unsigned long long>(v33 + 5, &v73))
            {
              if (std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::find<unsigned long long>(v34 + 5, &v73))
              {
                v35 = 1;
                goto LABEL_50;
              }

LABEL_94:
              std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
            }
          }

          v35 = 0;
LABEL_50:
          if (v32)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v32);
          }

          if (v26)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v26);
          }

          if (v35)
          {
LABEL_78:
            v55 = MIL::IRTypedTensorValue<MIL::UInt1>::GetType(a2);
            (*(*v55 + 24))(v55);
            MIL::Blob::StorageWriter::GetFilePath(v20, &__str);
            MIL::IRTensorValueType::MakeValueFromBlobFile();
          }

LABEL_59:
          switch(v12)
          {
            case 4:
              v36 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::Fp16>(v36);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::Fp16>(v20);
              break;
            case 5:
              v51 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<float>(v51);
              v37 = MIL::Blob::StorageWriter::WriteData<float>(v20);
              break;
            case 9:
              v48 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<signed char>(v48);
              v37 = MIL::Blob::StorageWriter::WriteData<signed char>(v20);
              break;
            case 10:
              v50 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<short>(v50);
              v37 = MIL::Blob::StorageWriter::WriteData<short>(v20);
              break;
            case 11:
              v45 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<int>(v45);
              v37 = MIL::Blob::StorageWriter::WriteData<int>(v20);
              break;
            case 13:
              v47 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::Int4>(v47);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::Int4>(v20);
              break;
            case 14:
              v52 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<unsigned char>(v52);
              v37 = MIL::Blob::StorageWriter::WriteData<unsigned char>(v20);
              break;
            case 15:
              v49 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<unsigned short>(v49);
              v37 = MIL::Blob::StorageWriter::WriteData<unsigned short>(v20);
              break;
            case 16:
              v42 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<unsigned int>(v42);
              v37 = MIL::Blob::StorageWriter::WriteData<unsigned int>(v20);
              break;
            case 19:
              v39 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::UInt2>(v39);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::UInt2>(v20);
              break;
            case 20:
              v41 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::UInt4>(v41);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::UInt4>(v20);
              break;
            case 21:
              v38 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::UInt1>(v38);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::UInt1>(v20);
              break;
            case 22:
              v40 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::UInt3>(v40);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::UInt3>(v20);
              break;
            case 23:
              v43 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::UInt6>(v43);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::UInt6>(v20);
              break;
            case 24:
              v44 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::Fp8E4M3FN>(v44);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::Fp8E4M3FN>(v20);
              break;
            case 25:
              v46 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::Fp8E5M2>(v46);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::Fp8E5M2>(v20);
              break;
            default:
              exception = __cxa_allocate_exception(0x10uLL);
              MIL::IRDataTypeToString(v12, &v68);
              v65 = std::string::insert(&v68, 0, "[MIL Serialization] Unsupported Data type ");
              v66 = *&v65->__r_.__value_.__l.__data_;
              __str.__r_.__value_.__r.__words[2] = v65->__r_.__value_.__r.__words[2];
              *&__str.__r_.__value_.__l.__data_ = v66;
              v65->__r_.__value_.__l.__size_ = 0;
              v65->__r_.__value_.__r.__words[2] = 0;
              v65->__r_.__value_.__r.__words[0] = 0;
              std::logic_error::logic_error(exception, &__str);
              exception->__vftable = (MEMORY[0x277D828F8] + 16);
              __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
          }

          v53 = v37;
          if (MIL::IRTypedTensorValue<MIL::UInt1>::UsesFileStorage(a2))
          {
            __str.__r_.__value_.__r.__words[0] = &__p;
            v54 = std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<unsigned long long,unsigned long long>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<unsigned long long,unsigned long long>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<unsigned long long,unsigned long long>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<unsigned long long,unsigned long long>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 328), &__p.__r_.__value_.__l.__data_);
            __str.__r_.__value_.__r.__words[0] = &v73;
            std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v54 + 5, &v73)[3] = v53;
          }

          goto LABEL_78;
        }
      }

      else if (v28)
      {
        goto LABEL_39;
      }

      if (v26)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v26);
      }

      goto LABEL_59;
    }
  }

  ValHelperForSubByteTypes<MIL::UInt1>(a2, *(a1 + 40));
  return a1;
}

void sub_218096468(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, char a37)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
    if ((v39 & 1) == 0)
    {
LABEL_8:
      if (a35 < 0)
      {
        operator delete(a30);
      }

      if (v37)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v37);
      }

      std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&a37);
      _Unwind_Resume(a1);
    }
  }

  else if (!v39)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v38);
  goto LABEL_8;
}

uint64_t MIL::Text::BasicSerializer::Val<MIL::UInt2>(uint64_t a1, MIL::IRTensorValue *a2)
{
  v4 = *(a1 + 384);
  if (v4)
  {
    Type = MIL::IRTypedTensorValue<MIL::UInt2>::GetType(a2);
    v6 = MIL::IRValueType::AsTensorType(Type);
    v7 = (*(*v6 + 16))(v6);
    v8 = v7 >= (*(**(a1 + 320) + 136))(*(a1 + 320));
  }

  else
  {
    v8 = MIL::IRTypedTensorValue<MIL::UInt2>::UsesFileStorage(a2);
  }

  v9 = MIL::IRTypedTensorValue<MIL::UInt2>::GetType(a2);
  v10 = MIL::IRValueType::AsTensorType(v9);
  v11 = (*(*v10 + 88))(v10);
  v12 = v11;
  if (!v4 || !v8 || (v11 <= 0x19 ? (v13 = ((1 << v11) & 0x3F9EE30) == 0) : (v13 = 1), !v13))
  {
    if (v8)
    {
      memset(v71, 0, sizeof(v71));
      v72 = 1065353216;
      if (!v4)
      {
        FileProperties = MIL::IRTypedTensorValue<MIL::UInt2>::GetFileProperties(a2);
        if (v71 != FileProperties)
        {
          v72 = *(FileProperties + 32);
          std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *> *>>(v71, *(FileProperties + 16), 0);
        }

        std::string::basic_string[abi:ne200100]<0>(&__str, "type");
        v56 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>(v71, &__str.__r_.__value_.__l.__data_);
        if (v56)
        {
          MIL::IRValue::GetScalar<std::string>(v56[5], &__p);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          std::string::basic_string[abi:ne200100]<0>(&__str, "type");
          std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__erase_unique<std::string>(v71, &__str.__r_.__value_.__l.__data_);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          std::string::basic_string[abi:ne200100]<0>(&__str, "path");
          v57 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>(v71, &__str.__r_.__value_.__l.__data_);
          if (v57)
          {
            v59 = v57[5];
            v58 = v57[6];
            if (v58)
            {
              atomic_fetch_add_explicit(v58 + 1, 1uLL, memory_order_relaxed);
            }

            if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__str.__r_.__value_.__l.__data_);
            }

            MIL::IRValue::GetScalar<std::string>(v59, &__str);
            v60 = (*(**(a1 + 320) + 32))(*(a1 + 320));
            MIL::Util::ReplaceModelPaths(&__str, v60);
            v61 = (*(*v59 + 32))(v59);
            v62 = MIL::IRValueType::AsTensorType(v61);
            v67 = __str;
            memset(&__str, 0, sizeof(__str));
            MIL::IRTensorValueType::MakeStringValue(v62, &v67);
          }

          std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
        }

        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      if (MIL::IRTypedTensorValue<MIL::UInt2>::UsesFileStorage(a2))
      {
        v14 = MIL::IRTypedTensorValue<MIL::UInt2>::GetFileProperties(a2);
        std::string::basic_string[abi:ne200100]<0>(&__p, "path");
        v15 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(v14, &__p.__r_.__value_.__l.__data_);
        if (!v15)
        {
          std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
        }

        v16 = v15[5];
        v17 = v15[6];
        if (v17)
        {
          atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        MIL::IRValue::GetScalar<std::string>(v16, &__p);
        __str.__r_.__value_.__r.__words[0] = &__p;
        v18 = std::__tree<std::__value_type<std::string,std::shared_ptr<MIL::Blob::StorageWriter>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<MIL::Blob::StorageWriter>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<MIL::Blob::StorageWriter>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1 + 368, &__p.__r_.__value_.__l.__data_);
        v20 = *(v18 + 56);
        v19 = *(v18 + 64);
        if (v19)
        {
          atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v17)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v17);
        }
      }

      else
      {
        v22 = *(a1 + 368);
        v20 = *(v22 + 56);
        v23 = *(v22 + 64);
        if (v23)
        {
          atomic_fetch_add_explicit((v23 + 8), 1uLL, memory_order_relaxed);
        }
      }

      memset(&__p, 0, sizeof(__p));
      v73 = 0;
      if (!MIL::IRTypedTensorValue<MIL::UInt2>::UsesFileStorage(a2))
      {
        goto LABEL_59;
      }

      v24 = MIL::IRTypedTensorValue<MIL::UInt2>::GetFileProperties(a2);
      std::string::basic_string[abi:ne200100]<0>(&__str, "path");
      v25 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(v24, &__str.__r_.__value_.__l.__data_);
      if (!v25)
      {
        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      v27 = v25[5];
      v26 = v25[6];
      if (v26)
      {
        atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      MIL::IRValue::GetScalar<std::string>(v27, &__str);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      __p = __str;
      std::string::basic_string[abi:ne200100]<0>(&__str, "offset");
      v28 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(v24, &__str.__r_.__value_.__l.__data_);
      v29 = v28;
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
        if (v29)
        {
LABEL_39:
          std::string::basic_string[abi:ne200100]<0>(&__str, "offset");
          v30 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(v24, &__str.__r_.__value_.__l.__data_);
          if (!v30)
          {
            std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
          }

          v31 = v30[5];
          v32 = v30[6];
          if (v32)
          {
            atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          v73 = MIL::IRValue::GetScalar<unsigned long long>(v31);
          if (std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>((a1 + 328), &__p.__r_.__value_.__l.__data_))
          {
            v33 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>((a1 + 328), &__p.__r_.__value_.__l.__data_);
            v34 = v33;
            if (!v33)
            {
              goto LABEL_94;
            }

            if (std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::find<unsigned long long>(v33 + 5, &v73))
            {
              if (std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::find<unsigned long long>(v34 + 5, &v73))
              {
                v35 = 1;
                goto LABEL_50;
              }

LABEL_94:
              std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
            }
          }

          v35 = 0;
LABEL_50:
          if (v32)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v32);
          }

          if (v26)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v26);
          }

          if (v35)
          {
LABEL_78:
            v55 = MIL::IRTypedTensorValue<MIL::UInt2>::GetType(a2);
            (*(*v55 + 24))(v55);
            MIL::Blob::StorageWriter::GetFilePath(v20, &__str);
            MIL::IRTensorValueType::MakeValueFromBlobFile();
          }

LABEL_59:
          switch(v12)
          {
            case 4:
              v36 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::Fp16>(v36);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::Fp16>(v20);
              break;
            case 5:
              v51 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<float>(v51);
              v37 = MIL::Blob::StorageWriter::WriteData<float>(v20);
              break;
            case 9:
              v48 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<signed char>(v48);
              v37 = MIL::Blob::StorageWriter::WriteData<signed char>(v20);
              break;
            case 10:
              v50 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<short>(v50);
              v37 = MIL::Blob::StorageWriter::WriteData<short>(v20);
              break;
            case 11:
              v45 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<int>(v45);
              v37 = MIL::Blob::StorageWriter::WriteData<int>(v20);
              break;
            case 13:
              v47 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::Int4>(v47);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::Int4>(v20);
              break;
            case 14:
              v52 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<unsigned char>(v52);
              v37 = MIL::Blob::StorageWriter::WriteData<unsigned char>(v20);
              break;
            case 15:
              v49 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<unsigned short>(v49);
              v37 = MIL::Blob::StorageWriter::WriteData<unsigned short>(v20);
              break;
            case 16:
              v42 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<unsigned int>(v42);
              v37 = MIL::Blob::StorageWriter::WriteData<unsigned int>(v20);
              break;
            case 19:
              v39 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::UInt2>(v39);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::UInt2>(v20);
              break;
            case 20:
              v41 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::UInt4>(v41);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::UInt4>(v20);
              break;
            case 21:
              v38 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::UInt1>(v38);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::UInt1>(v20);
              break;
            case 22:
              v40 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::UInt3>(v40);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::UInt3>(v20);
              break;
            case 23:
              v43 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::UInt6>(v43);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::UInt6>(v20);
              break;
            case 24:
              v44 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::Fp8E4M3FN>(v44);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::Fp8E4M3FN>(v20);
              break;
            case 25:
              v46 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::Fp8E5M2>(v46);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::Fp8E5M2>(v20);
              break;
            default:
              exception = __cxa_allocate_exception(0x10uLL);
              MIL::IRDataTypeToString(v12, &v68);
              v65 = std::string::insert(&v68, 0, "[MIL Serialization] Unsupported Data type ");
              v66 = *&v65->__r_.__value_.__l.__data_;
              __str.__r_.__value_.__r.__words[2] = v65->__r_.__value_.__r.__words[2];
              *&__str.__r_.__value_.__l.__data_ = v66;
              v65->__r_.__value_.__l.__size_ = 0;
              v65->__r_.__value_.__r.__words[2] = 0;
              v65->__r_.__value_.__r.__words[0] = 0;
              std::logic_error::logic_error(exception, &__str);
              exception->__vftable = (MEMORY[0x277D828F8] + 16);
              __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
          }

          v53 = v37;
          if (MIL::IRTypedTensorValue<MIL::UInt2>::UsesFileStorage(a2))
          {
            __str.__r_.__value_.__r.__words[0] = &__p;
            v54 = std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<unsigned long long,unsigned long long>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<unsigned long long,unsigned long long>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<unsigned long long,unsigned long long>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<unsigned long long,unsigned long long>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 328), &__p.__r_.__value_.__l.__data_);
            __str.__r_.__value_.__r.__words[0] = &v73;
            std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v54 + 5, &v73)[3] = v53;
          }

          goto LABEL_78;
        }
      }

      else if (v28)
      {
        goto LABEL_39;
      }

      if (v26)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v26);
      }

      goto LABEL_59;
    }
  }

  ValHelperForSubByteTypes<MIL::UInt2>(a2, *(a1 + 40));
  return a1;
}

void sub_218097320(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, char a37)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
    if ((v39 & 1) == 0)
    {
LABEL_8:
      if (a35 < 0)
      {
        operator delete(a30);
      }

      if (v37)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v37);
      }

      std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&a37);
      _Unwind_Resume(a1);
    }
  }

  else if (!v39)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v38);
  goto LABEL_8;
}

uint64_t MIL::Text::BasicSerializer::Val<MIL::UInt3>(uint64_t a1, MIL::IRTensorValue *a2)
{
  v4 = *(a1 + 384);
  if (v4)
  {
    Type = MIL::IRTypedTensorValue<MIL::UInt3>::GetType(a2);
    v6 = MIL::IRValueType::AsTensorType(Type);
    v7 = (*(*v6 + 16))(v6);
    v8 = v7 >= (*(**(a1 + 320) + 136))(*(a1 + 320));
  }

  else
  {
    v8 = MIL::IRTypedTensorValue<MIL::UInt3>::UsesFileStorage(a2);
  }

  v9 = MIL::IRTypedTensorValue<MIL::UInt3>::GetType(a2);
  v10 = MIL::IRValueType::AsTensorType(v9);
  v11 = (*(*v10 + 88))(v10);
  v12 = v11;
  if (!v4 || !v8 || (v11 <= 0x19 ? (v13 = ((1 << v11) & 0x3F9EE30) == 0) : (v13 = 1), !v13))
  {
    if (v8)
    {
      memset(v71, 0, sizeof(v71));
      v72 = 1065353216;
      if (!v4)
      {
        FileProperties = MIL::IRTypedTensorValue<MIL::UInt3>::GetFileProperties(a2);
        if (v71 != FileProperties)
        {
          v72 = *(FileProperties + 32);
          std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *> *>>(v71, *(FileProperties + 16), 0);
        }

        std::string::basic_string[abi:ne200100]<0>(&__str, "type");
        v56 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>(v71, &__str.__r_.__value_.__l.__data_);
        if (v56)
        {
          MIL::IRValue::GetScalar<std::string>(v56[5], &__p);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          std::string::basic_string[abi:ne200100]<0>(&__str, "type");
          std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__erase_unique<std::string>(v71, &__str.__r_.__value_.__l.__data_);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          std::string::basic_string[abi:ne200100]<0>(&__str, "path");
          v57 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>(v71, &__str.__r_.__value_.__l.__data_);
          if (v57)
          {
            v59 = v57[5];
            v58 = v57[6];
            if (v58)
            {
              atomic_fetch_add_explicit(v58 + 1, 1uLL, memory_order_relaxed);
            }

            if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__str.__r_.__value_.__l.__data_);
            }

            MIL::IRValue::GetScalar<std::string>(v59, &__str);
            v60 = (*(**(a1 + 320) + 32))(*(a1 + 320));
            MIL::Util::ReplaceModelPaths(&__str, v60);
            v61 = (*(*v59 + 32))(v59);
            v62 = MIL::IRValueType::AsTensorType(v61);
            v67 = __str;
            memset(&__str, 0, sizeof(__str));
            MIL::IRTensorValueType::MakeStringValue(v62, &v67);
          }

          std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
        }

        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      if (MIL::IRTypedTensorValue<MIL::UInt3>::UsesFileStorage(a2))
      {
        v14 = MIL::IRTypedTensorValue<MIL::UInt3>::GetFileProperties(a2);
        std::string::basic_string[abi:ne200100]<0>(&__p, "path");
        v15 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(v14, &__p.__r_.__value_.__l.__data_);
        if (!v15)
        {
          std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
        }

        v16 = v15[5];
        v17 = v15[6];
        if (v17)
        {
          atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        MIL::IRValue::GetScalar<std::string>(v16, &__p);
        __str.__r_.__value_.__r.__words[0] = &__p;
        v18 = std::__tree<std::__value_type<std::string,std::shared_ptr<MIL::Blob::StorageWriter>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<MIL::Blob::StorageWriter>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<MIL::Blob::StorageWriter>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1 + 368, &__p.__r_.__value_.__l.__data_);
        v20 = *(v18 + 56);
        v19 = *(v18 + 64);
        if (v19)
        {
          atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v17)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v17);
        }
      }

      else
      {
        v22 = *(a1 + 368);
        v20 = *(v22 + 56);
        v23 = *(v22 + 64);
        if (v23)
        {
          atomic_fetch_add_explicit((v23 + 8), 1uLL, memory_order_relaxed);
        }
      }

      memset(&__p, 0, sizeof(__p));
      v73 = 0;
      if (!MIL::IRTypedTensorValue<MIL::UInt3>::UsesFileStorage(a2))
      {
        goto LABEL_59;
      }

      v24 = MIL::IRTypedTensorValue<MIL::UInt3>::GetFileProperties(a2);
      std::string::basic_string[abi:ne200100]<0>(&__str, "path");
      v25 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(v24, &__str.__r_.__value_.__l.__data_);
      if (!v25)
      {
        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      v27 = v25[5];
      v26 = v25[6];
      if (v26)
      {
        atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      MIL::IRValue::GetScalar<std::string>(v27, &__str);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      __p = __str;
      std::string::basic_string[abi:ne200100]<0>(&__str, "offset");
      v28 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(v24, &__str.__r_.__value_.__l.__data_);
      v29 = v28;
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
        if (v29)
        {
LABEL_39:
          std::string::basic_string[abi:ne200100]<0>(&__str, "offset");
          v30 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(v24, &__str.__r_.__value_.__l.__data_);
          if (!v30)
          {
            std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
          }

          v31 = v30[5];
          v32 = v30[6];
          if (v32)
          {
            atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          v73 = MIL::IRValue::GetScalar<unsigned long long>(v31);
          if (std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>((a1 + 328), &__p.__r_.__value_.__l.__data_))
          {
            v33 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>((a1 + 328), &__p.__r_.__value_.__l.__data_);
            v34 = v33;
            if (!v33)
            {
              goto LABEL_94;
            }

            if (std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::find<unsigned long long>(v33 + 5, &v73))
            {
              if (std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::find<unsigned long long>(v34 + 5, &v73))
              {
                v35 = 1;
                goto LABEL_50;
              }

LABEL_94:
              std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
            }
          }

          v35 = 0;
LABEL_50:
          if (v32)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v32);
          }

          if (v26)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v26);
          }

          if (v35)
          {
LABEL_78:
            v55 = MIL::IRTypedTensorValue<MIL::UInt3>::GetType(a2);
            (*(*v55 + 24))(v55);
            MIL::Blob::StorageWriter::GetFilePath(v20, &__str);
            MIL::IRTensorValueType::MakeValueFromBlobFile();
          }

LABEL_59:
          switch(v12)
          {
            case 4:
              v36 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::Fp16>(v36);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::Fp16>(v20);
              break;
            case 5:
              v51 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<float>(v51);
              v37 = MIL::Blob::StorageWriter::WriteData<float>(v20);
              break;
            case 9:
              v48 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<signed char>(v48);
              v37 = MIL::Blob::StorageWriter::WriteData<signed char>(v20);
              break;
            case 10:
              v50 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<short>(v50);
              v37 = MIL::Blob::StorageWriter::WriteData<short>(v20);
              break;
            case 11:
              v45 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<int>(v45);
              v37 = MIL::Blob::StorageWriter::WriteData<int>(v20);
              break;
            case 13:
              v47 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::Int4>(v47);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::Int4>(v20);
              break;
            case 14:
              v52 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<unsigned char>(v52);
              v37 = MIL::Blob::StorageWriter::WriteData<unsigned char>(v20);
              break;
            case 15:
              v49 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<unsigned short>(v49);
              v37 = MIL::Blob::StorageWriter::WriteData<unsigned short>(v20);
              break;
            case 16:
              v42 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<unsigned int>(v42);
              v37 = MIL::Blob::StorageWriter::WriteData<unsigned int>(v20);
              break;
            case 19:
              v39 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::UInt2>(v39);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::UInt2>(v20);
              break;
            case 20:
              v41 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::UInt4>(v41);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::UInt4>(v20);
              break;
            case 21:
              v38 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::UInt1>(v38);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::UInt1>(v20);
              break;
            case 22:
              v40 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::UInt3>(v40);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::UInt3>(v20);
              break;
            case 23:
              v43 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::UInt6>(v43);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::UInt6>(v20);
              break;
            case 24:
              v44 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::Fp8E4M3FN>(v44);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::Fp8E4M3FN>(v20);
              break;
            case 25:
              v46 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::Fp8E5M2>(v46);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::Fp8E5M2>(v20);
              break;
            default:
              exception = __cxa_allocate_exception(0x10uLL);
              MIL::IRDataTypeToString(v12, &v68);
              v65 = std::string::insert(&v68, 0, "[MIL Serialization] Unsupported Data type ");
              v66 = *&v65->__r_.__value_.__l.__data_;
              __str.__r_.__value_.__r.__words[2] = v65->__r_.__value_.__r.__words[2];
              *&__str.__r_.__value_.__l.__data_ = v66;
              v65->__r_.__value_.__l.__size_ = 0;
              v65->__r_.__value_.__r.__words[2] = 0;
              v65->__r_.__value_.__r.__words[0] = 0;
              std::logic_error::logic_error(exception, &__str);
              exception->__vftable = (MEMORY[0x277D828F8] + 16);
              __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
          }

          v53 = v37;
          if (MIL::IRTypedTensorValue<MIL::UInt3>::UsesFileStorage(a2))
          {
            __str.__r_.__value_.__r.__words[0] = &__p;
            v54 = std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<unsigned long long,unsigned long long>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<unsigned long long,unsigned long long>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<unsigned long long,unsigned long long>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<unsigned long long,unsigned long long>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 328), &__p.__r_.__value_.__l.__data_);
            __str.__r_.__value_.__r.__words[0] = &v73;
            std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v54 + 5, &v73)[3] = v53;
          }

          goto LABEL_78;
        }
      }

      else if (v28)
      {
        goto LABEL_39;
      }

      if (v26)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v26);
      }

      goto LABEL_59;
    }
  }

  ValHelperForSubByteTypes<MIL::UInt3>(a2, *(a1 + 40));
  return a1;
}

void sub_2180981D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, char a37)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
    if ((v39 & 1) == 0)
    {
LABEL_8:
      if (a35 < 0)
      {
        operator delete(a30);
      }

      if (v37)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v37);
      }

      std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&a37);
      _Unwind_Resume(a1);
    }
  }

  else if (!v39)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v38);
  goto LABEL_8;
}

uint64_t MIL::Text::BasicSerializer::Val<MIL::UInt4>(uint64_t a1, MIL::IRTensorValue *a2)
{
  v4 = *(a1 + 384);
  if (v4)
  {
    Type = MIL::IRTypedTensorValue<MIL::UInt4>::GetType(a2);
    v6 = MIL::IRValueType::AsTensorType(Type);
    v7 = (*(*v6 + 16))(v6);
    v8 = v7 >= (*(**(a1 + 320) + 136))(*(a1 + 320));
  }

  else
  {
    v8 = MIL::IRTypedTensorValue<MIL::UInt4>::UsesFileStorage(a2);
  }

  v9 = MIL::IRTypedTensorValue<MIL::UInt4>::GetType(a2);
  v10 = MIL::IRValueType::AsTensorType(v9);
  v11 = (*(*v10 + 88))(v10);
  v12 = v11;
  if (!v4 || !v8 || (v11 <= 0x19 ? (v13 = ((1 << v11) & 0x3F9EE30) == 0) : (v13 = 1), !v13))
  {
    if (v8)
    {
      memset(v71, 0, sizeof(v71));
      v72 = 1065353216;
      if (!v4)
      {
        FileProperties = MIL::IRTypedTensorValue<MIL::UInt4>::GetFileProperties(a2);
        if (v71 != FileProperties)
        {
          v72 = *(FileProperties + 32);
          std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *> *>>(v71, *(FileProperties + 16), 0);
        }

        std::string::basic_string[abi:ne200100]<0>(&__str, "type");
        v56 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>(v71, &__str.__r_.__value_.__l.__data_);
        if (v56)
        {
          MIL::IRValue::GetScalar<std::string>(v56[5], &__p);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          std::string::basic_string[abi:ne200100]<0>(&__str, "type");
          std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__erase_unique<std::string>(v71, &__str.__r_.__value_.__l.__data_);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          std::string::basic_string[abi:ne200100]<0>(&__str, "path");
          v57 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>(v71, &__str.__r_.__value_.__l.__data_);
          if (v57)
          {
            v59 = v57[5];
            v58 = v57[6];
            if (v58)
            {
              atomic_fetch_add_explicit(v58 + 1, 1uLL, memory_order_relaxed);
            }

            if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__str.__r_.__value_.__l.__data_);
            }

            MIL::IRValue::GetScalar<std::string>(v59, &__str);
            v60 = (*(**(a1 + 320) + 32))(*(a1 + 320));
            MIL::Util::ReplaceModelPaths(&__str, v60);
            v61 = (*(*v59 + 32))(v59);
            v62 = MIL::IRValueType::AsTensorType(v61);
            v67 = __str;
            memset(&__str, 0, sizeof(__str));
            MIL::IRTensorValueType::MakeStringValue(v62, &v67);
          }

          std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
        }

        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      if (MIL::IRTypedTensorValue<MIL::UInt4>::UsesFileStorage(a2))
      {
        v14 = MIL::IRTypedTensorValue<MIL::UInt4>::GetFileProperties(a2);
        std::string::basic_string[abi:ne200100]<0>(&__p, "path");
        v15 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(v14, &__p.__r_.__value_.__l.__data_);
        if (!v15)
        {
          std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
        }

        v16 = v15[5];
        v17 = v15[6];
        if (v17)
        {
          atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        MIL::IRValue::GetScalar<std::string>(v16, &__p);
        __str.__r_.__value_.__r.__words[0] = &__p;
        v18 = std::__tree<std::__value_type<std::string,std::shared_ptr<MIL::Blob::StorageWriter>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<MIL::Blob::StorageWriter>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<MIL::Blob::StorageWriter>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1 + 368, &__p.__r_.__value_.__l.__data_);
        v20 = *(v18 + 56);
        v19 = *(v18 + 64);
        if (v19)
        {
          atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v17)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v17);
        }
      }

      else
      {
        v22 = *(a1 + 368);
        v20 = *(v22 + 56);
        v23 = *(v22 + 64);
        if (v23)
        {
          atomic_fetch_add_explicit((v23 + 8), 1uLL, memory_order_relaxed);
        }
      }

      memset(&__p, 0, sizeof(__p));
      v73 = 0;
      if (!MIL::IRTypedTensorValue<MIL::UInt4>::UsesFileStorage(a2))
      {
        goto LABEL_59;
      }

      v24 = MIL::IRTypedTensorValue<MIL::UInt4>::GetFileProperties(a2);
      std::string::basic_string[abi:ne200100]<0>(&__str, "path");
      v25 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(v24, &__str.__r_.__value_.__l.__data_);
      if (!v25)
      {
        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      v27 = v25[5];
      v26 = v25[6];
      if (v26)
      {
        atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      MIL::IRValue::GetScalar<std::string>(v27, &__str);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      __p = __str;
      std::string::basic_string[abi:ne200100]<0>(&__str, "offset");
      v28 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(v24, &__str.__r_.__value_.__l.__data_);
      v29 = v28;
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
        if (v29)
        {
LABEL_39:
          std::string::basic_string[abi:ne200100]<0>(&__str, "offset");
          v30 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(v24, &__str.__r_.__value_.__l.__data_);
          if (!v30)
          {
            std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
          }

          v31 = v30[5];
          v32 = v30[6];
          if (v32)
          {
            atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          v73 = MIL::IRValue::GetScalar<unsigned long long>(v31);
          if (std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>((a1 + 328), &__p.__r_.__value_.__l.__data_))
          {
            v33 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>((a1 + 328), &__p.__r_.__value_.__l.__data_);
            v34 = v33;
            if (!v33)
            {
              goto LABEL_94;
            }

            if (std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::find<unsigned long long>(v33 + 5, &v73))
            {
              if (std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::find<unsigned long long>(v34 + 5, &v73))
              {
                v35 = 1;
                goto LABEL_50;
              }

LABEL_94:
              std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
            }
          }

          v35 = 0;
LABEL_50:
          if (v32)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v32);
          }

          if (v26)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v26);
          }

          if (v35)
          {
LABEL_78:
            v55 = MIL::IRTypedTensorValue<MIL::UInt4>::GetType(a2);
            (*(*v55 + 24))(v55);
            MIL::Blob::StorageWriter::GetFilePath(v20, &__str);
            MIL::IRTensorValueType::MakeValueFromBlobFile();
          }

LABEL_59:
          switch(v12)
          {
            case 4:
              v36 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::Fp16>(v36);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::Fp16>(v20);
              break;
            case 5:
              v51 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<float>(v51);
              v37 = MIL::Blob::StorageWriter::WriteData<float>(v20);
              break;
            case 9:
              v48 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<signed char>(v48);
              v37 = MIL::Blob::StorageWriter::WriteData<signed char>(v20);
              break;
            case 10:
              v50 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<short>(v50);
              v37 = MIL::Blob::StorageWriter::WriteData<short>(v20);
              break;
            case 11:
              v45 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<int>(v45);
              v37 = MIL::Blob::StorageWriter::WriteData<int>(v20);
              break;
            case 13:
              v47 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::Int4>(v47);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::Int4>(v20);
              break;
            case 14:
              v52 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<unsigned char>(v52);
              v37 = MIL::Blob::StorageWriter::WriteData<unsigned char>(v20);
              break;
            case 15:
              v49 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<unsigned short>(v49);
              v37 = MIL::Blob::StorageWriter::WriteData<unsigned short>(v20);
              break;
            case 16:
              v42 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<unsigned int>(v42);
              v37 = MIL::Blob::StorageWriter::WriteData<unsigned int>(v20);
              break;
            case 19:
              v39 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::UInt2>(v39);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::UInt2>(v20);
              break;
            case 20:
              v41 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::UInt4>(v41);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::UInt4>(v20);
              break;
            case 21:
              v38 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::UInt1>(v38);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::UInt1>(v20);
              break;
            case 22:
              v40 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::UInt3>(v40);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::UInt3>(v20);
              break;
            case 23:
              v43 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::UInt6>(v43);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::UInt6>(v20);
              break;
            case 24:
              v44 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::Fp8E4M3FN>(v44);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::Fp8E4M3FN>(v20);
              break;
            case 25:
              v46 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::Fp8E5M2>(v46);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::Fp8E5M2>(v20);
              break;
            default:
              exception = __cxa_allocate_exception(0x10uLL);
              MIL::IRDataTypeToString(v12, &v68);
              v65 = std::string::insert(&v68, 0, "[MIL Serialization] Unsupported Data type ");
              v66 = *&v65->__r_.__value_.__l.__data_;
              __str.__r_.__value_.__r.__words[2] = v65->__r_.__value_.__r.__words[2];
              *&__str.__r_.__value_.__l.__data_ = v66;
              v65->__r_.__value_.__l.__size_ = 0;
              v65->__r_.__value_.__r.__words[2] = 0;
              v65->__r_.__value_.__r.__words[0] = 0;
              std::logic_error::logic_error(exception, &__str);
              exception->__vftable = (MEMORY[0x277D828F8] + 16);
              __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
          }

          v53 = v37;
          if (MIL::IRTypedTensorValue<MIL::UInt4>::UsesFileStorage(a2))
          {
            __str.__r_.__value_.__r.__words[0] = &__p;
            v54 = std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<unsigned long long,unsigned long long>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<unsigned long long,unsigned long long>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<unsigned long long,unsigned long long>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<unsigned long long,unsigned long long>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 328), &__p.__r_.__value_.__l.__data_);
            __str.__r_.__value_.__r.__words[0] = &v73;
            std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v54 + 5, &v73)[3] = v53;
          }

          goto LABEL_78;
        }
      }

      else if (v28)
      {
        goto LABEL_39;
      }

      if (v26)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v26);
      }

      goto LABEL_59;
    }
  }

  ValHelperForSubByteTypes<MIL::UInt4>(a2, *(a1 + 40));
  return a1;
}

void sub_218099090(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, char a37)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
    if ((v39 & 1) == 0)
    {
LABEL_8:
      if (a35 < 0)
      {
        operator delete(a30);
      }

      if (v37)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v37);
      }

      std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&a37);
      _Unwind_Resume(a1);
    }
  }

  else if (!v39)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v38);
  goto LABEL_8;
}

uint64_t MIL::Text::BasicSerializer::Val<MIL::UInt6>(uint64_t a1, MIL::IRTensorValue *a2)
{
  v4 = *(a1 + 384);
  if (v4)
  {
    Type = MIL::IRTypedTensorValue<MIL::UInt6>::GetType(a2);
    v6 = MIL::IRValueType::AsTensorType(Type);
    v7 = (*(*v6 + 16))(v6);
    v8 = v7 >= (*(**(a1 + 320) + 136))(*(a1 + 320));
  }

  else
  {
    v8 = MIL::IRTypedTensorValue<MIL::UInt6>::UsesFileStorage(a2);
  }

  v9 = MIL::IRTypedTensorValue<MIL::UInt6>::GetType(a2);
  v10 = MIL::IRValueType::AsTensorType(v9);
  v11 = (*(*v10 + 88))(v10);
  v12 = v11;
  if (!v4 || !v8 || (v11 <= 0x19 ? (v13 = ((1 << v11) & 0x3F9EE30) == 0) : (v13 = 1), !v13))
  {
    if (v8)
    {
      memset(v71, 0, sizeof(v71));
      v72 = 1065353216;
      if (!v4)
      {
        FileProperties = MIL::IRTypedTensorValue<MIL::UInt6>::GetFileProperties(a2);
        if (v71 != FileProperties)
        {
          v72 = *(FileProperties + 32);
          std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *> *>>(v71, *(FileProperties + 16), 0);
        }

        std::string::basic_string[abi:ne200100]<0>(&__str, "type");
        v56 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>(v71, &__str.__r_.__value_.__l.__data_);
        if (v56)
        {
          MIL::IRValue::GetScalar<std::string>(v56[5], &__p);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          std::string::basic_string[abi:ne200100]<0>(&__str, "type");
          std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__erase_unique<std::string>(v71, &__str.__r_.__value_.__l.__data_);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          std::string::basic_string[abi:ne200100]<0>(&__str, "path");
          v57 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>(v71, &__str.__r_.__value_.__l.__data_);
          if (v57)
          {
            v59 = v57[5];
            v58 = v57[6];
            if (v58)
            {
              atomic_fetch_add_explicit(v58 + 1, 1uLL, memory_order_relaxed);
            }

            if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__str.__r_.__value_.__l.__data_);
            }

            MIL::IRValue::GetScalar<std::string>(v59, &__str);
            v60 = (*(**(a1 + 320) + 32))(*(a1 + 320));
            MIL::Util::ReplaceModelPaths(&__str, v60);
            v61 = (*(*v59 + 32))(v59);
            v62 = MIL::IRValueType::AsTensorType(v61);
            v67 = __str;
            memset(&__str, 0, sizeof(__str));
            MIL::IRTensorValueType::MakeStringValue(v62, &v67);
          }

          std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
        }

        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      if (MIL::IRTypedTensorValue<MIL::UInt6>::UsesFileStorage(a2))
      {
        v14 = MIL::IRTypedTensorValue<MIL::UInt6>::GetFileProperties(a2);
        std::string::basic_string[abi:ne200100]<0>(&__p, "path");
        v15 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(v14, &__p.__r_.__value_.__l.__data_);
        if (!v15)
        {
          std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
        }

        v16 = v15[5];
        v17 = v15[6];
        if (v17)
        {
          atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        MIL::IRValue::GetScalar<std::string>(v16, &__p);
        __str.__r_.__value_.__r.__words[0] = &__p;
        v18 = std::__tree<std::__value_type<std::string,std::shared_ptr<MIL::Blob::StorageWriter>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<MIL::Blob::StorageWriter>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<MIL::Blob::StorageWriter>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1 + 368, &__p.__r_.__value_.__l.__data_);
        v20 = *(v18 + 56);
        v19 = *(v18 + 64);
        if (v19)
        {
          atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v17)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v17);
        }
      }

      else
      {
        v22 = *(a1 + 368);
        v20 = *(v22 + 56);
        v23 = *(v22 + 64);
        if (v23)
        {
          atomic_fetch_add_explicit((v23 + 8), 1uLL, memory_order_relaxed);
        }
      }

      memset(&__p, 0, sizeof(__p));
      v73 = 0;
      if (!MIL::IRTypedTensorValue<MIL::UInt6>::UsesFileStorage(a2))
      {
        goto LABEL_59;
      }

      v24 = MIL::IRTypedTensorValue<MIL::UInt6>::GetFileProperties(a2);
      std::string::basic_string[abi:ne200100]<0>(&__str, "path");
      v25 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(v24, &__str.__r_.__value_.__l.__data_);
      if (!v25)
      {
        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      v27 = v25[5];
      v26 = v25[6];
      if (v26)
      {
        atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      MIL::IRValue::GetScalar<std::string>(v27, &__str);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      __p = __str;
      std::string::basic_string[abi:ne200100]<0>(&__str, "offset");
      v28 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(v24, &__str.__r_.__value_.__l.__data_);
      v29 = v28;
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
        if (v29)
        {
LABEL_39:
          std::string::basic_string[abi:ne200100]<0>(&__str, "offset");
          v30 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(v24, &__str.__r_.__value_.__l.__data_);
          if (!v30)
          {
            std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
          }

          v31 = v30[5];
          v32 = v30[6];
          if (v32)
          {
            atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          v73 = MIL::IRValue::GetScalar<unsigned long long>(v31);
          if (std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>((a1 + 328), &__p.__r_.__value_.__l.__data_))
          {
            v33 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>((a1 + 328), &__p.__r_.__value_.__l.__data_);
            v34 = v33;
            if (!v33)
            {
              goto LABEL_94;
            }

            if (std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::find<unsigned long long>(v33 + 5, &v73))
            {
              if (std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::find<unsigned long long>(v34 + 5, &v73))
              {
                v35 = 1;
                goto LABEL_50;
              }

LABEL_94:
              std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
            }
          }

          v35 = 0;
LABEL_50:
          if (v32)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v32);
          }

          if (v26)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v26);
          }

          if (v35)
          {
LABEL_78:
            v55 = MIL::IRTypedTensorValue<MIL::UInt6>::GetType(a2);
            (*(*v55 + 24))(v55);
            MIL::Blob::StorageWriter::GetFilePath(v20, &__str);
            MIL::IRTensorValueType::MakeValueFromBlobFile();
          }

LABEL_59:
          switch(v12)
          {
            case 4:
              v36 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::Fp16>(v36);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::Fp16>(v20);
              break;
            case 5:
              v51 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<float>(v51);
              v37 = MIL::Blob::StorageWriter::WriteData<float>(v20);
              break;
            case 9:
              v48 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<signed char>(v48);
              v37 = MIL::Blob::StorageWriter::WriteData<signed char>(v20);
              break;
            case 10:
              v50 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<short>(v50);
              v37 = MIL::Blob::StorageWriter::WriteData<short>(v20);
              break;
            case 11:
              v45 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<int>(v45);
              v37 = MIL::Blob::StorageWriter::WriteData<int>(v20);
              break;
            case 13:
              v47 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::Int4>(v47);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::Int4>(v20);
              break;
            case 14:
              v52 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<unsigned char>(v52);
              v37 = MIL::Blob::StorageWriter::WriteData<unsigned char>(v20);
              break;
            case 15:
              v49 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<unsigned short>(v49);
              v37 = MIL::Blob::StorageWriter::WriteData<unsigned short>(v20);
              break;
            case 16:
              v42 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<unsigned int>(v42);
              v37 = MIL::Blob::StorageWriter::WriteData<unsigned int>(v20);
              break;
            case 19:
              v39 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::UInt2>(v39);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::UInt2>(v20);
              break;
            case 20:
              v41 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::UInt4>(v41);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::UInt4>(v20);
              break;
            case 21:
              v38 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::UInt1>(v38);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::UInt1>(v20);
              break;
            case 22:
              v40 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::UInt3>(v40);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::UInt3>(v20);
              break;
            case 23:
              v43 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::UInt6>(v43);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::UInt6>(v20);
              break;
            case 24:
              v44 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::Fp8E4M3FN>(v44);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::Fp8E4M3FN>(v20);
              break;
            case 25:
              v46 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::Fp8E5M2>(v46);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::Fp8E5M2>(v20);
              break;
            default:
              exception = __cxa_allocate_exception(0x10uLL);
              MIL::IRDataTypeToString(v12, &v68);
              v65 = std::string::insert(&v68, 0, "[MIL Serialization] Unsupported Data type ");
              v66 = *&v65->__r_.__value_.__l.__data_;
              __str.__r_.__value_.__r.__words[2] = v65->__r_.__value_.__r.__words[2];
              *&__str.__r_.__value_.__l.__data_ = v66;
              v65->__r_.__value_.__l.__size_ = 0;
              v65->__r_.__value_.__r.__words[2] = 0;
              v65->__r_.__value_.__r.__words[0] = 0;
              std::logic_error::logic_error(exception, &__str);
              exception->__vftable = (MEMORY[0x277D828F8] + 16);
              __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
          }

          v53 = v37;
          if (MIL::IRTypedTensorValue<MIL::UInt6>::UsesFileStorage(a2))
          {
            __str.__r_.__value_.__r.__words[0] = &__p;
            v54 = std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<unsigned long long,unsigned long long>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<unsigned long long,unsigned long long>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<unsigned long long,unsigned long long>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<unsigned long long,unsigned long long>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 328), &__p.__r_.__value_.__l.__data_);
            __str.__r_.__value_.__r.__words[0] = &v73;
            std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v54 + 5, &v73)[3] = v53;
          }

          goto LABEL_78;
        }
      }

      else if (v28)
      {
        goto LABEL_39;
      }

      if (v26)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v26);
      }

      goto LABEL_59;
    }
  }

  ValHelperForSubByteTypes<MIL::UInt6>(a2, *(a1 + 40));
  return a1;
}

void sub_218099F48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, char a37)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
    if ((v39 & 1) == 0)
    {
LABEL_8:
      if (a35 < 0)
      {
        operator delete(a30);
      }

      if (v37)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v37);
      }

      std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&a37);
      _Unwind_Resume(a1);
    }
  }

  else if (!v39)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v38);
  goto LABEL_8;
}

uint64_t MIL::Text::BasicSerializer::Val<unsigned char>(uint64_t a1, MIL::IRTensorValue *a2)
{
  v4 = *(a1 + 384);
  if (v4)
  {
    Type = MIL::IRTypedTensorValue<unsigned char>::GetType(a2);
    v6 = MIL::IRValueType::AsTensorType(Type);
    v7 = (*(*v6 + 16))(v6);
    v8 = v7 >= (*(**(a1 + 320) + 136))(*(a1 + 320));
  }

  else
  {
    v8 = MIL::IRTypedTensorValue<unsigned char>::UsesFileStorage(a2);
  }

  v9 = MIL::IRTypedTensorValue<unsigned char>::GetType(a2);
  v10 = MIL::IRValueType::AsTensorType(v9);
  v11 = (*(*v10 + 88))(v10);
  v12 = v11;
  if (!v4 || !v8 || (v11 <= 0x19 ? (v13 = ((1 << v11) & 0x3F9EE30) == 0) : (v13 = 1), !v13))
  {
    if (v8)
    {
      memset(v71, 0, sizeof(v71));
      v72 = 1065353216;
      if (!v4)
      {
        FileProperties = MIL::IRTypedTensorValue<unsigned char>::GetFileProperties(a2);
        if (v71 != FileProperties)
        {
          v72 = *(FileProperties + 32);
          std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *> *>>(v71, *(FileProperties + 16), 0);
        }

        std::string::basic_string[abi:ne200100]<0>(&__str, "type");
        v56 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>(v71, &__str.__r_.__value_.__l.__data_);
        if (v56)
        {
          MIL::IRValue::GetScalar<std::string>(v56[5], &__p);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          std::string::basic_string[abi:ne200100]<0>(&__str, "type");
          std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__erase_unique<std::string>(v71, &__str.__r_.__value_.__l.__data_);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          std::string::basic_string[abi:ne200100]<0>(&__str, "path");
          v57 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>(v71, &__str.__r_.__value_.__l.__data_);
          if (v57)
          {
            v59 = v57[5];
            v58 = v57[6];
            if (v58)
            {
              atomic_fetch_add_explicit(v58 + 1, 1uLL, memory_order_relaxed);
            }

            if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__str.__r_.__value_.__l.__data_);
            }

            MIL::IRValue::GetScalar<std::string>(v59, &__str);
            v60 = (*(**(a1 + 320) + 32))(*(a1 + 320));
            MIL::Util::ReplaceModelPaths(&__str, v60);
            v61 = (*(*v59 + 32))(v59);
            v62 = MIL::IRValueType::AsTensorType(v61);
            v67 = __str;
            memset(&__str, 0, sizeof(__str));
            MIL::IRTensorValueType::MakeStringValue(v62, &v67);
          }

          std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
        }

        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      if (MIL::IRTypedTensorValue<unsigned char>::UsesFileStorage(a2))
      {
        v14 = MIL::IRTypedTensorValue<unsigned char>::GetFileProperties(a2);
        std::string::basic_string[abi:ne200100]<0>(&__p, "path");
        v15 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(v14, &__p.__r_.__value_.__l.__data_);
        if (!v15)
        {
          std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
        }

        v16 = v15[5];
        v17 = v15[6];
        if (v17)
        {
          atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        MIL::IRValue::GetScalar<std::string>(v16, &__p);
        __str.__r_.__value_.__r.__words[0] = &__p;
        v18 = std::__tree<std::__value_type<std::string,std::shared_ptr<MIL::Blob::StorageWriter>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<MIL::Blob::StorageWriter>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<MIL::Blob::StorageWriter>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1 + 368, &__p.__r_.__value_.__l.__data_);
        v20 = *(v18 + 56);
        v19 = *(v18 + 64);
        if (v19)
        {
          atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v17)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v17);
        }
      }

      else
      {
        v22 = *(a1 + 368);
        v20 = *(v22 + 56);
        v23 = *(v22 + 64);
        if (v23)
        {
          atomic_fetch_add_explicit((v23 + 8), 1uLL, memory_order_relaxed);
        }
      }

      memset(&__p, 0, sizeof(__p));
      v73 = 0;
      if (!MIL::IRTypedTensorValue<unsigned char>::UsesFileStorage(a2))
      {
        goto LABEL_59;
      }

      v24 = MIL::IRTypedTensorValue<unsigned char>::GetFileProperties(a2);
      std::string::basic_string[abi:ne200100]<0>(&__str, "path");
      v25 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(v24, &__str.__r_.__value_.__l.__data_);
      if (!v25)
      {
        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      v27 = v25[5];
      v26 = v25[6];
      if (v26)
      {
        atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      MIL::IRValue::GetScalar<std::string>(v27, &__str);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      __p = __str;
      std::string::basic_string[abi:ne200100]<0>(&__str, "offset");
      v28 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(v24, &__str.__r_.__value_.__l.__data_);
      v29 = v28;
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
        if (v29)
        {
LABEL_39:
          std::string::basic_string[abi:ne200100]<0>(&__str, "offset");
          v30 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(v24, &__str.__r_.__value_.__l.__data_);
          if (!v30)
          {
            std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
          }

          v31 = v30[5];
          v32 = v30[6];
          if (v32)
          {
            atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          v73 = MIL::IRValue::GetScalar<unsigned long long>(v31);
          if (std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>((a1 + 328), &__p.__r_.__value_.__l.__data_))
          {
            v33 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>((a1 + 328), &__p.__r_.__value_.__l.__data_);
            v34 = v33;
            if (!v33)
            {
              goto LABEL_94;
            }

            if (std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::find<unsigned long long>(v33 + 5, &v73))
            {
              if (std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::find<unsigned long long>(v34 + 5, &v73))
              {
                v35 = 1;
                goto LABEL_50;
              }

LABEL_94:
              std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
            }
          }

          v35 = 0;
LABEL_50:
          if (v32)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v32);
          }

          if (v26)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v26);
          }

          if (v35)
          {
LABEL_78:
            v55 = MIL::IRTypedTensorValue<unsigned char>::GetType(a2);
            (*(*v55 + 24))(v55);
            MIL::Blob::StorageWriter::GetFilePath(v20, &__str);
            MIL::IRTensorValueType::MakeValueFromBlobFile();
          }

LABEL_59:
          switch(v12)
          {
            case 4:
              v36 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::Fp16>(v36);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::Fp16>(v20);
              break;
            case 5:
              v51 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<float>(v51);
              v37 = MIL::Blob::StorageWriter::WriteData<float>(v20);
              break;
            case 9:
              v48 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<signed char>(v48);
              v37 = MIL::Blob::StorageWriter::WriteData<signed char>(v20);
              break;
            case 10:
              v50 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<short>(v50);
              v37 = MIL::Blob::StorageWriter::WriteData<short>(v20);
              break;
            case 11:
              v45 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<int>(v45);
              v37 = MIL::Blob::StorageWriter::WriteData<int>(v20);
              break;
            case 13:
              v47 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::Int4>(v47);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::Int4>(v20);
              break;
            case 14:
              v52 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<unsigned char>(v52);
              v37 = MIL::Blob::StorageWriter::WriteData<unsigned char>(v20);
              break;
            case 15:
              v49 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<unsigned short>(v49);
              v37 = MIL::Blob::StorageWriter::WriteData<unsigned short>(v20);
              break;
            case 16:
              v42 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<unsigned int>(v42);
              v37 = MIL::Blob::StorageWriter::WriteData<unsigned int>(v20);
              break;
            case 19:
              v39 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::UInt2>(v39);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::UInt2>(v20);
              break;
            case 20:
              v41 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::UInt4>(v41);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::UInt4>(v20);
              break;
            case 21:
              v38 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::UInt1>(v38);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::UInt1>(v20);
              break;
            case 22:
              v40 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::UInt3>(v40);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::UInt3>(v20);
              break;
            case 23:
              v43 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::UInt6>(v43);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::UInt6>(v20);
              break;
            case 24:
              v44 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::Fp8E4M3FN>(v44);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::Fp8E4M3FN>(v20);
              break;
            case 25:
              v46 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::Fp8E5M2>(v46);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::Fp8E5M2>(v20);
              break;
            default:
              exception = __cxa_allocate_exception(0x10uLL);
              MIL::IRDataTypeToString(v12, &v68);
              v65 = std::string::insert(&v68, 0, "[MIL Serialization] Unsupported Data type ");
              v66 = *&v65->__r_.__value_.__l.__data_;
              __str.__r_.__value_.__r.__words[2] = v65->__r_.__value_.__r.__words[2];
              *&__str.__r_.__value_.__l.__data_ = v66;
              v65->__r_.__value_.__l.__size_ = 0;
              v65->__r_.__value_.__r.__words[2] = 0;
              v65->__r_.__value_.__r.__words[0] = 0;
              std::logic_error::logic_error(exception, &__str);
              exception->__vftable = (MEMORY[0x277D828F8] + 16);
              __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
          }

          v53 = v37;
          if (MIL::IRTypedTensorValue<unsigned char>::UsesFileStorage(a2))
          {
            __str.__r_.__value_.__r.__words[0] = &__p;
            v54 = std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<unsigned long long,unsigned long long>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<unsigned long long,unsigned long long>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<unsigned long long,unsigned long long>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<unsigned long long,unsigned long long>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 328), &__p.__r_.__value_.__l.__data_);
            __str.__r_.__value_.__r.__words[0] = &v73;
            std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v54 + 5, &v73)[3] = v53;
          }

          goto LABEL_78;
        }
      }

      else if (v28)
      {
        goto LABEL_39;
      }

      if (v26)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v26);
      }

      goto LABEL_59;
    }
  }

  ValHelper<unsigned char>(a2, *(a1 + 40));
  return a1;
}

void sub_21809AE00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, char a37)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
    if ((v39 & 1) == 0)
    {
LABEL_8:
      if (a35 < 0)
      {
        operator delete(a30);
      }

      if (v37)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v37);
      }

      std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&a37);
      _Unwind_Resume(a1);
    }
  }

  else if (!v39)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v38);
  goto LABEL_8;
}

void ValHelper<unsigned char>(uint64_t a1, void *a2)
{
  Type = MIL::IRTypedTensorValue<unsigned char>::GetType(a1);
  v5 = (*(*Type + 96))(Type);
  v9 = 0;
  v10 = 0;
  __p = 0;
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&__p, *v5, v5[1], (v5[1] - *v5) >> 3);
  if (__p == v9)
  {
    ScalarValue = MIL::IRTypedTensorValue<BOOL>::GetScalarValue(a1);
    MEMORY[0x21CEAFB60](a2, ScalarValue);
  }

  Values = MIL::IRTypedTensorValue<BOOL>::GetValues(a1);
  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }
}

void sub_21809B190(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::Text::BasicSerializer::Val<unsigned short>(uint64_t a1, MIL::IRTensorValue *a2)
{
  v4 = *(a1 + 384);
  if (v4)
  {
    Type = MIL::IRTypedTensorValue<unsigned short>::GetType(a2);
    v6 = MIL::IRValueType::AsTensorType(Type);
    v7 = (*(*v6 + 16))(v6);
    v8 = v7 >= (*(**(a1 + 320) + 136))(*(a1 + 320));
  }

  else
  {
    v8 = MIL::IRTypedTensorValue<unsigned short>::UsesFileStorage(a2);
  }

  v9 = MIL::IRTypedTensorValue<unsigned short>::GetType(a2);
  v10 = MIL::IRValueType::AsTensorType(v9);
  v11 = (*(*v10 + 88))(v10);
  v12 = v11;
  if (!v4 || !v8 || (v11 <= 0x19 ? (v13 = ((1 << v11) & 0x3F9EE30) == 0) : (v13 = 1), !v13))
  {
    if (v8)
    {
      memset(v71, 0, sizeof(v71));
      v72 = 1065353216;
      if (!v4)
      {
        FileProperties = MIL::IRTypedTensorValue<unsigned short>::GetFileProperties(a2);
        if (v71 != FileProperties)
        {
          v72 = *(FileProperties + 32);
          std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *> *>>(v71, *(FileProperties + 16), 0);
        }

        std::string::basic_string[abi:ne200100]<0>(&__str, "type");
        v56 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>(v71, &__str.__r_.__value_.__l.__data_);
        if (v56)
        {
          MIL::IRValue::GetScalar<std::string>(v56[5], &__p);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          std::string::basic_string[abi:ne200100]<0>(&__str, "type");
          std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__erase_unique<std::string>(v71, &__str.__r_.__value_.__l.__data_);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          std::string::basic_string[abi:ne200100]<0>(&__str, "path");
          v57 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>(v71, &__str.__r_.__value_.__l.__data_);
          if (v57)
          {
            v59 = v57[5];
            v58 = v57[6];
            if (v58)
            {
              atomic_fetch_add_explicit(v58 + 1, 1uLL, memory_order_relaxed);
            }

            if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__str.__r_.__value_.__l.__data_);
            }

            MIL::IRValue::GetScalar<std::string>(v59, &__str);
            v60 = (*(**(a1 + 320) + 32))(*(a1 + 320));
            MIL::Util::ReplaceModelPaths(&__str, v60);
            v61 = (*(*v59 + 32))(v59);
            v62 = MIL::IRValueType::AsTensorType(v61);
            v67 = __str;
            memset(&__str, 0, sizeof(__str));
            MIL::IRTensorValueType::MakeStringValue(v62, &v67);
          }

          std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
        }

        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      if (MIL::IRTypedTensorValue<unsigned short>::UsesFileStorage(a2))
      {
        v14 = MIL::IRTypedTensorValue<unsigned short>::GetFileProperties(a2);
        std::string::basic_string[abi:ne200100]<0>(&__p, "path");
        v15 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(v14, &__p.__r_.__value_.__l.__data_);
        if (!v15)
        {
          std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
        }

        v16 = v15[5];
        v17 = v15[6];
        if (v17)
        {
          atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        MIL::IRValue::GetScalar<std::string>(v16, &__p);
        __str.__r_.__value_.__r.__words[0] = &__p;
        v18 = std::__tree<std::__value_type<std::string,std::shared_ptr<MIL::Blob::StorageWriter>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<MIL::Blob::StorageWriter>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<MIL::Blob::StorageWriter>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1 + 368, &__p.__r_.__value_.__l.__data_);
        v20 = *(v18 + 56);
        v19 = *(v18 + 64);
        if (v19)
        {
          atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v17)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v17);
        }
      }

      else
      {
        v22 = *(a1 + 368);
        v20 = *(v22 + 56);
        v23 = *(v22 + 64);
        if (v23)
        {
          atomic_fetch_add_explicit((v23 + 8), 1uLL, memory_order_relaxed);
        }
      }

      memset(&__p, 0, sizeof(__p));
      v73 = 0;
      if (!MIL::IRTypedTensorValue<unsigned short>::UsesFileStorage(a2))
      {
        goto LABEL_59;
      }

      v24 = MIL::IRTypedTensorValue<unsigned short>::GetFileProperties(a2);
      std::string::basic_string[abi:ne200100]<0>(&__str, "path");
      v25 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(v24, &__str.__r_.__value_.__l.__data_);
      if (!v25)
      {
        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      v27 = v25[5];
      v26 = v25[6];
      if (v26)
      {
        atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      MIL::IRValue::GetScalar<std::string>(v27, &__str);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      __p = __str;
      std::string::basic_string[abi:ne200100]<0>(&__str, "offset");
      v28 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(v24, &__str.__r_.__value_.__l.__data_);
      v29 = v28;
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
        if (v29)
        {
LABEL_39:
          std::string::basic_string[abi:ne200100]<0>(&__str, "offset");
          v30 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(v24, &__str.__r_.__value_.__l.__data_);
          if (!v30)
          {
            std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
          }

          v31 = v30[5];
          v32 = v30[6];
          if (v32)
          {
            atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          v73 = MIL::IRValue::GetScalar<unsigned long long>(v31);
          if (std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>((a1 + 328), &__p.__r_.__value_.__l.__data_))
          {
            v33 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>((a1 + 328), &__p.__r_.__value_.__l.__data_);
            v34 = v33;
            if (!v33)
            {
              goto LABEL_94;
            }

            if (std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::find<unsigned long long>(v33 + 5, &v73))
            {
              if (std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::find<unsigned long long>(v34 + 5, &v73))
              {
                v35 = 1;
                goto LABEL_50;
              }

LABEL_94:
              std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
            }
          }

          v35 = 0;
LABEL_50:
          if (v32)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v32);
          }

          if (v26)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v26);
          }

          if (v35)
          {
LABEL_78:
            v55 = MIL::IRTypedTensorValue<unsigned short>::GetType(a2);
            (*(*v55 + 24))(v55);
            MIL::Blob::StorageWriter::GetFilePath(v20, &__str);
            MIL::IRTensorValueType::MakeValueFromBlobFile();
          }

LABEL_59:
          switch(v12)
          {
            case 4:
              v36 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::Fp16>(v36);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::Fp16>(v20);
              break;
            case 5:
              v51 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<float>(v51);
              v37 = MIL::Blob::StorageWriter::WriteData<float>(v20);
              break;
            case 9:
              v48 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<signed char>(v48);
              v37 = MIL::Blob::StorageWriter::WriteData<signed char>(v20);
              break;
            case 10:
              v50 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<short>(v50);
              v37 = MIL::Blob::StorageWriter::WriteData<short>(v20);
              break;
            case 11:
              v45 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<int>(v45);
              v37 = MIL::Blob::StorageWriter::WriteData<int>(v20);
              break;
            case 13:
              v47 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::Int4>(v47);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::Int4>(v20);
              break;
            case 14:
              v52 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<unsigned char>(v52);
              v37 = MIL::Blob::StorageWriter::WriteData<unsigned char>(v20);
              break;
            case 15:
              v49 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<unsigned short>(v49);
              v37 = MIL::Blob::StorageWriter::WriteData<unsigned short>(v20);
              break;
            case 16:
              v42 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<unsigned int>(v42);
              v37 = MIL::Blob::StorageWriter::WriteData<unsigned int>(v20);
              break;
            case 19:
              v39 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::UInt2>(v39);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::UInt2>(v20);
              break;
            case 20:
              v41 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::UInt4>(v41);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::UInt4>(v20);
              break;
            case 21:
              v38 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::UInt1>(v38);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::UInt1>(v20);
              break;
            case 22:
              v40 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::UInt3>(v40);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::UInt3>(v20);
              break;
            case 23:
              v43 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::UInt6>(v43);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::UInt6>(v20);
              break;
            case 24:
              v44 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::Fp8E4M3FN>(v44);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::Fp8E4M3FN>(v20);
              break;
            case 25:
              v46 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::Fp8E5M2>(v46);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::Fp8E5M2>(v20);
              break;
            default:
              exception = __cxa_allocate_exception(0x10uLL);
              MIL::IRDataTypeToString(v12, &v68);
              v65 = std::string::insert(&v68, 0, "[MIL Serialization] Unsupported Data type ");
              v66 = *&v65->__r_.__value_.__l.__data_;
              __str.__r_.__value_.__r.__words[2] = v65->__r_.__value_.__r.__words[2];
              *&__str.__r_.__value_.__l.__data_ = v66;
              v65->__r_.__value_.__l.__size_ = 0;
              v65->__r_.__value_.__r.__words[2] = 0;
              v65->__r_.__value_.__r.__words[0] = 0;
              std::logic_error::logic_error(exception, &__str);
              exception->__vftable = (MEMORY[0x277D828F8] + 16);
              __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
          }

          v53 = v37;
          if (MIL::IRTypedTensorValue<unsigned short>::UsesFileStorage(a2))
          {
            __str.__r_.__value_.__r.__words[0] = &__p;
            v54 = std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<unsigned long long,unsigned long long>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<unsigned long long,unsigned long long>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<unsigned long long,unsigned long long>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<unsigned long long,unsigned long long>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 328), &__p.__r_.__value_.__l.__data_);
            __str.__r_.__value_.__r.__words[0] = &v73;
            std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v54 + 5, &v73)[3] = v53;
          }

          goto LABEL_78;
        }
      }

      else if (v28)
      {
        goto LABEL_39;
      }

      if (v26)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v26);
      }

      goto LABEL_59;
    }
  }

  ValHelper<unsigned short>(a2, *(a1 + 40));
  return a1;
}

void sub_21809BD98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, char a37)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
    if ((v39 & 1) == 0)
    {
LABEL_8:
      if (a35 < 0)
      {
        operator delete(a30);
      }

      if (v37)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v37);
      }

      std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&a37);
      _Unwind_Resume(a1);
    }
  }

  else if (!v39)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v38);
  goto LABEL_8;
}

void ValHelper<unsigned short>(uint64_t a1, void *a2)
{
  Type = MIL::IRTypedTensorValue<unsigned short>::GetType(a1);
  v5 = (*(*Type + 96))(Type);
  v9 = 0;
  v10 = 0;
  __p = 0;
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&__p, *v5, v5[1], (v5[1] - *v5) >> 3);
  if (__p == v9)
  {
    ScalarValue = MIL::IRTypedTensorValue<unsigned short>::GetScalarValue(a1);
    MEMORY[0x21CEAFB60](a2, ScalarValue);
  }

  Values = MIL::IRTypedTensorValue<unsigned short>::GetValues(a1);
  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }
}

void sub_21809C128(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::Text::BasicSerializer::Val<unsigned int>(uint64_t a1, MIL::IRTensorValue *a2)
{
  v4 = *(a1 + 384);
  if (v4)
  {
    Type = MIL::IRTypedTensorValue<unsigned int>::GetType(a2);
    v6 = MIL::IRValueType::AsTensorType(Type);
    v7 = (*(*v6 + 16))(v6);
    v8 = v7 >= (*(**(a1 + 320) + 136))(*(a1 + 320));
  }

  else
  {
    v8 = MIL::IRTypedTensorValue<unsigned int>::UsesFileStorage(a2);
  }

  v9 = MIL::IRTypedTensorValue<unsigned int>::GetType(a2);
  v10 = MIL::IRValueType::AsTensorType(v9);
  v11 = (*(*v10 + 88))(v10);
  v12 = v11;
  if (!v4 || !v8 || (v11 <= 0x19 ? (v13 = ((1 << v11) & 0x3F9EE30) == 0) : (v13 = 1), !v13))
  {
    if (v8)
    {
      memset(v71, 0, sizeof(v71));
      v72 = 1065353216;
      if (!v4)
      {
        FileProperties = MIL::IRTypedTensorValue<unsigned int>::GetFileProperties(a2);
        if (v71 != FileProperties)
        {
          v72 = *(FileProperties + 32);
          std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *> *>>(v71, *(FileProperties + 16), 0);
        }

        std::string::basic_string[abi:ne200100]<0>(&__str, "type");
        v56 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>(v71, &__str.__r_.__value_.__l.__data_);
        if (v56)
        {
          MIL::IRValue::GetScalar<std::string>(v56[5], &__p);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          std::string::basic_string[abi:ne200100]<0>(&__str, "type");
          std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__erase_unique<std::string>(v71, &__str.__r_.__value_.__l.__data_);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          std::string::basic_string[abi:ne200100]<0>(&__str, "path");
          v57 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>(v71, &__str.__r_.__value_.__l.__data_);
          if (v57)
          {
            v59 = v57[5];
            v58 = v57[6];
            if (v58)
            {
              atomic_fetch_add_explicit(v58 + 1, 1uLL, memory_order_relaxed);
            }

            if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__str.__r_.__value_.__l.__data_);
            }

            MIL::IRValue::GetScalar<std::string>(v59, &__str);
            v60 = (*(**(a1 + 320) + 32))(*(a1 + 320));
            MIL::Util::ReplaceModelPaths(&__str, v60);
            v61 = (*(*v59 + 32))(v59);
            v62 = MIL::IRValueType::AsTensorType(v61);
            v67 = __str;
            memset(&__str, 0, sizeof(__str));
            MIL::IRTensorValueType::MakeStringValue(v62, &v67);
          }

          std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
        }

        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      if (MIL::IRTypedTensorValue<unsigned int>::UsesFileStorage(a2))
      {
        v14 = MIL::IRTypedTensorValue<unsigned int>::GetFileProperties(a2);
        std::string::basic_string[abi:ne200100]<0>(&__p, "path");
        v15 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(v14, &__p.__r_.__value_.__l.__data_);
        if (!v15)
        {
          std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
        }

        v16 = v15[5];
        v17 = v15[6];
        if (v17)
        {
          atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        MIL::IRValue::GetScalar<std::string>(v16, &__p);
        __str.__r_.__value_.__r.__words[0] = &__p;
        v18 = std::__tree<std::__value_type<std::string,std::shared_ptr<MIL::Blob::StorageWriter>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<MIL::Blob::StorageWriter>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<MIL::Blob::StorageWriter>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1 + 368, &__p.__r_.__value_.__l.__data_);
        v20 = *(v18 + 56);
        v19 = *(v18 + 64);
        if (v19)
        {
          atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v17)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v17);
        }
      }

      else
      {
        v22 = *(a1 + 368);
        v20 = *(v22 + 56);
        v23 = *(v22 + 64);
        if (v23)
        {
          atomic_fetch_add_explicit((v23 + 8), 1uLL, memory_order_relaxed);
        }
      }

      memset(&__p, 0, sizeof(__p));
      v73 = 0;
      if (!MIL::IRTypedTensorValue<unsigned int>::UsesFileStorage(a2))
      {
        goto LABEL_59;
      }

      v24 = MIL::IRTypedTensorValue<unsigned int>::GetFileProperties(a2);
      std::string::basic_string[abi:ne200100]<0>(&__str, "path");
      v25 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(v24, &__str.__r_.__value_.__l.__data_);
      if (!v25)
      {
        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      v27 = v25[5];
      v26 = v25[6];
      if (v26)
      {
        atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      MIL::IRValue::GetScalar<std::string>(v27, &__str);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      __p = __str;
      std::string::basic_string[abi:ne200100]<0>(&__str, "offset");
      v28 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(v24, &__str.__r_.__value_.__l.__data_);
      v29 = v28;
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
        if (v29)
        {
LABEL_39:
          std::string::basic_string[abi:ne200100]<0>(&__str, "offset");
          v30 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(v24, &__str.__r_.__value_.__l.__data_);
          if (!v30)
          {
            std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
          }

          v31 = v30[5];
          v32 = v30[6];
          if (v32)
          {
            atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          v73 = MIL::IRValue::GetScalar<unsigned long long>(v31);
          if (std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>((a1 + 328), &__p.__r_.__value_.__l.__data_))
          {
            v33 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>((a1 + 328), &__p.__r_.__value_.__l.__data_);
            v34 = v33;
            if (!v33)
            {
              goto LABEL_94;
            }

            if (std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::find<unsigned long long>(v33 + 5, &v73))
            {
              if (std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::find<unsigned long long>(v34 + 5, &v73))
              {
                v35 = 1;
                goto LABEL_50;
              }

LABEL_94:
              std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
            }
          }

          v35 = 0;
LABEL_50:
          if (v32)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v32);
          }

          if (v26)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v26);
          }

          if (v35)
          {
LABEL_78:
            v55 = MIL::IRTypedTensorValue<unsigned int>::GetType(a2);
            (*(*v55 + 24))(v55);
            MIL::Blob::StorageWriter::GetFilePath(v20, &__str);
            MIL::IRTensorValueType::MakeValueFromBlobFile();
          }

LABEL_59:
          switch(v12)
          {
            case 4:
              v36 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::Fp16>(v36);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::Fp16>(v20);
              break;
            case 5:
              v51 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<float>(v51);
              v37 = MIL::Blob::StorageWriter::WriteData<float>(v20);
              break;
            case 9:
              v48 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<signed char>(v48);
              v37 = MIL::Blob::StorageWriter::WriteData<signed char>(v20);
              break;
            case 10:
              v50 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<short>(v50);
              v37 = MIL::Blob::StorageWriter::WriteData<short>(v20);
              break;
            case 11:
              v45 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<int>(v45);
              v37 = MIL::Blob::StorageWriter::WriteData<int>(v20);
              break;
            case 13:
              v47 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::Int4>(v47);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::Int4>(v20);
              break;
            case 14:
              v52 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<unsigned char>(v52);
              v37 = MIL::Blob::StorageWriter::WriteData<unsigned char>(v20);
              break;
            case 15:
              v49 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<unsigned short>(v49);
              v37 = MIL::Blob::StorageWriter::WriteData<unsigned short>(v20);
              break;
            case 16:
              v42 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<unsigned int>(v42);
              v37 = MIL::Blob::StorageWriter::WriteData<unsigned int>(v20);
              break;
            case 19:
              v39 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::UInt2>(v39);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::UInt2>(v20);
              break;
            case 20:
              v41 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::UInt4>(v41);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::UInt4>(v20);
              break;
            case 21:
              v38 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::UInt1>(v38);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::UInt1>(v20);
              break;
            case 22:
              v40 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::UInt3>(v40);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::UInt3>(v20);
              break;
            case 23:
              v43 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::UInt6>(v43);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::UInt6>(v20);
              break;
            case 24:
              v44 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::Fp8E4M3FN>(v44);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::Fp8E4M3FN>(v20);
              break;
            case 25:
              v46 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::Fp8E5M2>(v46);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::Fp8E5M2>(v20);
              break;
            default:
              exception = __cxa_allocate_exception(0x10uLL);
              MIL::IRDataTypeToString(v12, &v68);
              v65 = std::string::insert(&v68, 0, "[MIL Serialization] Unsupported Data type ");
              v66 = *&v65->__r_.__value_.__l.__data_;
              __str.__r_.__value_.__r.__words[2] = v65->__r_.__value_.__r.__words[2];
              *&__str.__r_.__value_.__l.__data_ = v66;
              v65->__r_.__value_.__l.__size_ = 0;
              v65->__r_.__value_.__r.__words[2] = 0;
              v65->__r_.__value_.__r.__words[0] = 0;
              std::logic_error::logic_error(exception, &__str);
              exception->__vftable = (MEMORY[0x277D828F8] + 16);
              __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
          }

          v53 = v37;
          if (MIL::IRTypedTensorValue<unsigned int>::UsesFileStorage(a2))
          {
            __str.__r_.__value_.__r.__words[0] = &__p;
            v54 = std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<unsigned long long,unsigned long long>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<unsigned long long,unsigned long long>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<unsigned long long,unsigned long long>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<unsigned long long,unsigned long long>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 328), &__p.__r_.__value_.__l.__data_);
            __str.__r_.__value_.__r.__words[0] = &v73;
            std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v54 + 5, &v73)[3] = v53;
          }

          goto LABEL_78;
        }
      }

      else if (v28)
      {
        goto LABEL_39;
      }

      if (v26)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v26);
      }

      goto LABEL_59;
    }
  }

  ValHelper<unsigned int>(a2, *(a1 + 40));
  return a1;
}

void sub_21809CD30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, char a37)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
    if ((v39 & 1) == 0)
    {
LABEL_8:
      if (a35 < 0)
      {
        operator delete(a30);
      }

      if (v37)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v37);
      }

      std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&a37);
      _Unwind_Resume(a1);
    }
  }

  else if (!v39)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v38);
  goto LABEL_8;
}

void ValHelper<unsigned int>(uint64_t a1, void *a2)
{
  Type = MIL::IRTypedTensorValue<unsigned int>::GetType(a1);
  v5 = (*(*Type + 96))(Type);
  v9 = 0;
  v10 = 0;
  __p = 0;
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&__p, *v5, v5[1], (v5[1] - *v5) >> 3);
  if (__p == v9)
  {
    ScalarValue = MIL::IRTypedTensorValue<unsigned int>::GetScalarValue(a1);
    MEMORY[0x21CEAFB30](a2, ScalarValue);
  }

  Values = MIL::IRTypedTensorValue<unsigned int>::GetValues(a1);
  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }
}

void sub_21809D0C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::Text::BasicSerializer::Val<unsigned long long>(uint64_t a1, MIL::IRTensorValue *a2)
{
  v4 = *(a1 + 384);
  if (v4)
  {
    Type = MIL::IRTypedTensorValue<unsigned long long>::GetType(a2);
    v6 = MIL::IRValueType::AsTensorType(Type);
    v7 = (*(*v6 + 16))(v6);
    v8 = v7 >= (*(**(a1 + 320) + 136))(*(a1 + 320));
  }

  else
  {
    v8 = MIL::IRTypedTensorValue<unsigned long long>::UsesFileStorage(a2);
  }

  v9 = MIL::IRTypedTensorValue<unsigned long long>::GetType(a2);
  v10 = MIL::IRValueType::AsTensorType(v9);
  v11 = (*(*v10 + 88))(v10);
  v12 = v11;
  if (!v4 || !v8 || (v11 <= 0x19 ? (v13 = ((1 << v11) & 0x3F9EE30) == 0) : (v13 = 1), !v13))
  {
    if (v8)
    {
      memset(v71, 0, sizeof(v71));
      v72 = 1065353216;
      if (!v4)
      {
        FileProperties = MIL::IRTypedTensorValue<unsigned long long>::GetFileProperties(a2);
        if (v71 != FileProperties)
        {
          v72 = *(FileProperties + 32);
          std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *> *>>(v71, *(FileProperties + 16), 0);
        }

        std::string::basic_string[abi:ne200100]<0>(&__str, "type");
        v56 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>(v71, &__str.__r_.__value_.__l.__data_);
        if (v56)
        {
          MIL::IRValue::GetScalar<std::string>(v56[5], &__p);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          std::string::basic_string[abi:ne200100]<0>(&__str, "type");
          std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__erase_unique<std::string>(v71, &__str.__r_.__value_.__l.__data_);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          std::string::basic_string[abi:ne200100]<0>(&__str, "path");
          v57 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>(v71, &__str.__r_.__value_.__l.__data_);
          if (v57)
          {
            v59 = v57[5];
            v58 = v57[6];
            if (v58)
            {
              atomic_fetch_add_explicit(v58 + 1, 1uLL, memory_order_relaxed);
            }

            if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__str.__r_.__value_.__l.__data_);
            }

            MIL::IRValue::GetScalar<std::string>(v59, &__str);
            v60 = (*(**(a1 + 320) + 32))(*(a1 + 320));
            MIL::Util::ReplaceModelPaths(&__str, v60);
            v61 = (*(*v59 + 32))(v59);
            v62 = MIL::IRValueType::AsTensorType(v61);
            v67 = __str;
            memset(&__str, 0, sizeof(__str));
            MIL::IRTensorValueType::MakeStringValue(v62, &v67);
          }

          std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
        }

        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      if (MIL::IRTypedTensorValue<unsigned long long>::UsesFileStorage(a2))
      {
        v14 = MIL::IRTypedTensorValue<unsigned long long>::GetFileProperties(a2);
        std::string::basic_string[abi:ne200100]<0>(&__p, "path");
        v15 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(v14, &__p.__r_.__value_.__l.__data_);
        if (!v15)
        {
          std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
        }

        v16 = v15[5];
        v17 = v15[6];
        if (v17)
        {
          atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        MIL::IRValue::GetScalar<std::string>(v16, &__p);
        __str.__r_.__value_.__r.__words[0] = &__p;
        v18 = std::__tree<std::__value_type<std::string,std::shared_ptr<MIL::Blob::StorageWriter>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<MIL::Blob::StorageWriter>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<MIL::Blob::StorageWriter>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1 + 368, &__p.__r_.__value_.__l.__data_);
        v20 = *(v18 + 56);
        v19 = *(v18 + 64);
        if (v19)
        {
          atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v17)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v17);
        }
      }

      else
      {
        v22 = *(a1 + 368);
        v20 = *(v22 + 56);
        v23 = *(v22 + 64);
        if (v23)
        {
          atomic_fetch_add_explicit((v23 + 8), 1uLL, memory_order_relaxed);
        }
      }

      memset(&__p, 0, sizeof(__p));
      v73 = 0;
      if (!MIL::IRTypedTensorValue<unsigned long long>::UsesFileStorage(a2))
      {
        goto LABEL_59;
      }

      v24 = MIL::IRTypedTensorValue<unsigned long long>::GetFileProperties(a2);
      std::string::basic_string[abi:ne200100]<0>(&__str, "path");
      v25 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(v24, &__str.__r_.__value_.__l.__data_);
      if (!v25)
      {
        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      v27 = v25[5];
      v26 = v25[6];
      if (v26)
      {
        atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      MIL::IRValue::GetScalar<std::string>(v27, &__str);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      __p = __str;
      std::string::basic_string[abi:ne200100]<0>(&__str, "offset");
      v28 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(v24, &__str.__r_.__value_.__l.__data_);
      v29 = v28;
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
        if (v29)
        {
LABEL_39:
          std::string::basic_string[abi:ne200100]<0>(&__str, "offset");
          v30 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(v24, &__str.__r_.__value_.__l.__data_);
          if (!v30)
          {
            std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
          }

          v31 = v30[5];
          v32 = v30[6];
          if (v32)
          {
            atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          v73 = MIL::IRValue::GetScalar<unsigned long long>(v31);
          if (std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>((a1 + 328), &__p.__r_.__value_.__l.__data_))
          {
            v33 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>((a1 + 328), &__p.__r_.__value_.__l.__data_);
            v34 = v33;
            if (!v33)
            {
              goto LABEL_94;
            }

            if (std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::find<unsigned long long>(v33 + 5, &v73))
            {
              if (std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::find<unsigned long long>(v34 + 5, &v73))
              {
                v35 = 1;
                goto LABEL_50;
              }

LABEL_94:
              std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
            }
          }

          v35 = 0;
LABEL_50:
          if (v32)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v32);
          }

          if (v26)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v26);
          }

          if (v35)
          {
LABEL_78:
            v55 = MIL::IRTypedTensorValue<unsigned long long>::GetType(a2);
            (*(*v55 + 24))(v55);
            MIL::Blob::StorageWriter::GetFilePath(v20, &__str);
            MIL::IRTensorValueType::MakeValueFromBlobFile();
          }

LABEL_59:
          switch(v12)
          {
            case 4:
              v36 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::Fp16>(v36);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::Fp16>(v20);
              break;
            case 5:
              v51 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<float>(v51);
              v37 = MIL::Blob::StorageWriter::WriteData<float>(v20);
              break;
            case 9:
              v48 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<signed char>(v48);
              v37 = MIL::Blob::StorageWriter::WriteData<signed char>(v20);
              break;
            case 10:
              v50 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<short>(v50);
              v37 = MIL::Blob::StorageWriter::WriteData<short>(v20);
              break;
            case 11:
              v45 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<int>(v45);
              v37 = MIL::Blob::StorageWriter::WriteData<int>(v20);
              break;
            case 13:
              v47 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::Int4>(v47);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::Int4>(v20);
              break;
            case 14:
              v52 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<unsigned char>(v52);
              v37 = MIL::Blob::StorageWriter::WriteData<unsigned char>(v20);
              break;
            case 15:
              v49 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<unsigned short>(v49);
              v37 = MIL::Blob::StorageWriter::WriteData<unsigned short>(v20);
              break;
            case 16:
              v42 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<unsigned int>(v42);
              v37 = MIL::Blob::StorageWriter::WriteData<unsigned int>(v20);
              break;
            case 19:
              v39 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::UInt2>(v39);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::UInt2>(v20);
              break;
            case 20:
              v41 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::UInt4>(v41);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::UInt4>(v20);
              break;
            case 21:
              v38 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::UInt1>(v38);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::UInt1>(v20);
              break;
            case 22:
              v40 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::UInt3>(v40);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::UInt3>(v20);
              break;
            case 23:
              v43 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::UInt6>(v43);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::UInt6>(v20);
              break;
            case 24:
              v44 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::Fp8E4M3FN>(v44);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::Fp8E4M3FN>(v20);
              break;
            case 25:
              v46 = MIL::IRTensorValue::TryAsTensor(a2);
              MIL::IRTensorValue::GetDataView<MIL::Fp8E5M2>(v46);
              v37 = MIL::Blob::StorageWriter::WriteData<MIL::Fp8E5M2>(v20);
              break;
            default:
              exception = __cxa_allocate_exception(0x10uLL);
              MIL::IRDataTypeToString(v12, &v68);
              v65 = std::string::insert(&v68, 0, "[MIL Serialization] Unsupported Data type ");
              v66 = *&v65->__r_.__value_.__l.__data_;
              __str.__r_.__value_.__r.__words[2] = v65->__r_.__value_.__r.__words[2];
              *&__str.__r_.__value_.__l.__data_ = v66;
              v65->__r_.__value_.__l.__size_ = 0;
              v65->__r_.__value_.__r.__words[2] = 0;
              v65->__r_.__value_.__r.__words[0] = 0;
              std::logic_error::logic_error(exception, &__str);
              exception->__vftable = (MEMORY[0x277D828F8] + 16);
              __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
          }

          v53 = v37;
          if (MIL::IRTypedTensorValue<unsigned long long>::UsesFileStorage(a2))
          {
            __str.__r_.__value_.__r.__words[0] = &__p;
            v54 = std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<unsigned long long,unsigned long long>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<unsigned long long,unsigned long long>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<unsigned long long,unsigned long long>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<unsigned long long,unsigned long long>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 328), &__p.__r_.__value_.__l.__data_);
            __str.__r_.__value_.__r.__words[0] = &v73;
            std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v54 + 5, &v73)[3] = v53;
          }

          goto LABEL_78;
        }
      }

      else if (v28)
      {
        goto LABEL_39;
      }

      if (v26)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v26);
      }

      goto LABEL_59;
    }
  }

  ValHelper<unsigned long long>(a2, *(a1 + 40));
  return a1;
}

void sub_21809DCC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, char a37)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
    if ((v39 & 1) == 0)
    {
LABEL_8:
      if (a35 < 0)
      {
        operator delete(a30);
      }

      if (v37)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v37);
      }

      std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&a37);
      _Unwind_Resume(a1);
    }
  }

  else if (!v39)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v38);
  goto LABEL_8;
}

void ValHelper<unsigned long long>(uint64_t a1, void *a2)
{
  Type = MIL::IRTypedTensorValue<unsigned long long>::GetType(a1);
  v5 = (*(*Type + 96))(Type);
  v9 = 0;
  v10 = 0;
  __p = 0;
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&__p, *v5, v5[1], (v5[1] - *v5) >> 3);
  if (__p == v9)
  {
    ScalarValue = MIL::IRTypedTensorValue<unsigned long long>::GetScalarValue(a1);
    MEMORY[0x21CEAFB80](a2, ScalarValue);
  }

  Values = MIL::IRTypedTensorValue<unsigned long long>::GetValues(a1);
  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }
}

void sub_21809E058(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<std::unordered_map<std::string,std::string>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2829E8B50;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x21CEAFEA0);
}

_BYTE *std::string::basic_string[abi:ne200100](_BYTE *__b, size_t __len, int __c)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  __b[23] = __len;
  if (__len)
  {
    memset(__b, __c, __len);
  }

  __b[__len] = 0;
  return __b;
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<unsigned long long,unsigned long long>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<unsigned long long,unsigned long long>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<unsigned long long,unsigned long long>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<unsigned long long,unsigned long long>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<unsigned long long,unsigned long long>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<unsigned long long,unsigned long long>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<unsigned long long,unsigned long long>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<unsigned long long,unsigned long long>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<unsigned long long,unsigned long long>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<unsigned long long,unsigned long long>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<unsigned long long,unsigned long long>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<unsigned long long,unsigned long long>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unordered_map<unsigned long long,unsigned long long>>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unordered_map<unsigned long long,unsigned long long>>,0>(uint64_t a1)
{
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(a1 + 24);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void std::__tree<std::__value_type<std::string,std::shared_ptr<MIL::Blob::StorageWriter>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<MIL::Blob::StorageWriter>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<MIL::Blob::StorageWriter>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,std::shared_ptr<MIL::Blob::StorageWriter>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<MIL::Blob::StorageWriter>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<MIL::Blob::StorageWriter>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,std::shared_ptr<MIL::Blob::StorageWriter>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<MIL::Blob::StorageWriter>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<MIL::Blob::StorageWriter>>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<MIL::IRValue const>>,0>((a2 + 4));

    operator delete(a2);
  }
}

void *std::__shared_ptr_emplace<MIL::Blob::StorageWriter>::__shared_ptr_emplace[abi:ne200100]<std::string const&,BOOL,std::allocator<MIL::Blob::StorageWriter>,0>(void *a1, uint64_t a2, unsigned __int8 *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2829E8BA0;
  MIL::Blob::StorageWriter::StorageWriter(a1 + 3, a2, *a3);
  return a1;
}

void std::__shared_ptr_emplace<MIL::Blob::StorageWriter>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2829E8BA0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t std::__tree<std::__value_type<std::string,std::shared_ptr<MIL::Blob::StorageWriter>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<MIL::Blob::StorageWriter>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<MIL::Blob::StorageWriter>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    std::__tree<std::__value_type<std::string,std::shared_ptr<MIL::Blob::StorageWriter>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<MIL::Blob::StorageWriter>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<MIL::Blob::StorageWriter>>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return v2;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::shared_ptr<MIL::Blob::StorageWriter>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::shared_ptr<MIL::Blob::StorageWriter>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<MIL::IRValue const>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::__tree<std::__value_type<std::string,std::shared_ptr<MIL::Blob::StorageWriter>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<MIL::Blob::StorageWriter>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<MIL::Blob::StorageWriter>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void *std::__shared_ptr_emplace<MIL::Blob::StorageWriter>::__shared_ptr_emplace[abi:ne200100]<std::string &,BOOL,std::allocator<MIL::Blob::StorageWriter>,0>(void *a1, uint64_t a2, unsigned __int8 *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2829E8BA0;
  MIL::Blob::StorageWriter::StorageWriter(a1 + 3, a2, *a3);
  return a1;
}

MIL::IRDimension **anonymous namespace::SerializeImmediateTensorDim<BOOL,MIL::Util::Span<BOOL const,18446744073709551615ul>>(MIL::IRDimension **result, MIL::IRDimension **a2, unint64_t *a3, void *a4)
{
  if (result != a2)
  {
    v8 = result;
    v9 = MIL::IRDimension::AsConstant(*result);
    v10 = (*(*v9 + 48))(v9);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "[", 1);
    if (v10)
    {
      if (a2 - 1 == v8)
      {
        if (v10 >= 1)
        {
          v11 = "";
          v12 = *a3 + v10;
          do
          {
            v13 = strlen(v11);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, v11, v13);
            if (**a3)
            {
              v14 = "true";
            }

            else
            {
              v14 = "false";
            }

            if (**a3)
            {
              v15 = 4;
            }

            else
            {
              v15 = 5;
            }

            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, v14, v15);
            v16 = *a3 + 1;
            *a3 = v16;
            v11 = ", ";
          }

          while (v16 < v12);
        }
      }

      else
      {
        v17 = "";
        do
        {
          v18 = strlen(v17);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, v17, v18);
          v17 = ", ";
          --v10;
        }

        while (v10);
      }
    }

    return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "]", 1);
  }

  return result;
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<unsigned long long,unsigned long long>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<unsigned long long,unsigned long long>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<unsigned long long,unsigned long long>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<unsigned long long,unsigned long long>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<unsigned long long,unsigned long long>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<unsigned long long,unsigned long long>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<unsigned long long,unsigned long long>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<unsigned long long,unsigned long long>>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
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

void sub_21809EB4C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unordered_map<unsigned long long,unsigned long long>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unordered_map<unsigned long long,unsigned long long>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unordered_map<unsigned long long,unsigned long long>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unordered_map<unsigned long long,unsigned long long>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unordered_map<unsigned long long,unsigned long long>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(void *a1, unint64_t *a2)
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

void std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *> *>>(void *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  v6 = a1[1];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v8 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v8)
    {
      v9 = a2 == a3;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      v10 = v8;
    }

    else
    {
      do
      {
        std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>::operator=[abi:ne200100]((v8 + 16), (v4 + 2));
        v10 = *v8;
        std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__node_insert_multi(a1, v8);
        v4 = *v4;
        if (v10)
        {
          v11 = v4 == a3;
        }

        else
        {
          v11 = 1;
        }

        v8 = v10;
      }

      while (!v11);
    }

    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__deallocate_node(a1, v10);
  }

  if (v4 != a3)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__emplace_multi<std::pair<std::string const,std::shared_ptr<MIL::IRValue const>> const&>();
  }
}

void sub_21809EF68(void *a1)
{
  __cxa_begin_catch(a1);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__deallocate_node(v1, v2);
  __cxa_rethrow();
}

std::string *std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>::operator=[abi:ne200100](std::string *a1, const std::string *a2)
{
  std::string::operator=(a1, a2);
  data = a2[1].__r_.__value_.__l.__data_;
  size = a2[1].__r_.__value_.__l.__size_;
  if (size)
  {
    atomic_fetch_add_explicit((size + 8), 1uLL, memory_order_relaxed);
  }

  v6 = a1[1].__r_.__value_.__l.__size_;
  a1[1].__r_.__value_.__r.__words[0] = data;
  a1[1].__r_.__value_.__l.__size_ = size;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__node_insert_multi(void *a1, uint64_t a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2 + 16);
  *(a2 + 8) = v4;
  inserted = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__node_insert_multi_prepare(a1, v4, (a2 + 16));
  std::__hash_table<std::shared_ptr<MIL::Builder::OperationBuilder>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::allocator<std::shared_ptr<MIL::Builder::OperationBuilder>>>::__node_insert_multi_perform(a1, a2, inserted);
  return a2;
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__node_insert_multi_prepare(uint64_t a1, unint64_t a2, const void **a3)
{
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 1;
    if (v6 >= 3)
    {
      v9 = (v6 & (v6 - 1)) != 0;
    }

    v10 = v9 | (2 * v6);
    v11 = vcvtps_u32_f32(v7 / v8);
    if (v10 <= v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = v10;
    }

    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__rehash<false>(a1, v12);
    v6 = *(a1 + 8);
  }

  v13 = vcnt_s8(v6);
  v13.i16[0] = vaddlv_u8(v13);
  v14 = v13.u32[0];
  if (v13.u32[0] > 1uLL)
  {
    v15 = a2;
    if (v6 <= a2)
    {
      v15 = a2 % v6;
    }
  }

  else
  {
    v15 = (v6 - 1) & a2;
  }

  v16 = *(*a1 + 8 * v15);
  if (v16)
  {
    v17 = *v16;
    if (*v16)
    {
      v18 = 0;
      do
      {
        v19 = v17[1];
        if (v14 > 1)
        {
          v20 = v17[1];
          if (v19 >= v6)
          {
            v20 = v19 % v6;
          }
        }

        else
        {
          v20 = v19 & (v6 - 1);
        }

        if (v20 != v15)
        {
          break;
        }

        v21 = v19 == a2 && std::equal_to<std::string>::operator()[abi:ne200100](a1, v17 + 2, a3);
        if ((v18 & (v21 != (v18 & 1))) != 0)
        {
          break;
        }

        v18 |= v21 != (v18 & 1);
        v16 = *v16;
        v17 = *v16;
      }

      while (*v16);
    }
  }

  return v16;
}

void std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__rehash<false>(uint64_t a1, size_t __n)
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

      std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__do_rehash<false>(a1, prime);
    }
  }
}

void std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__do_rehash<false>(uint64_t a1, unint64_t a2)
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

void sub_21809F4B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void anonymous namespace::ScalarToString<std::string>(uint64_t *a1, void *a2)
{
  v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "", 1);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v17);
  v4 = *(a1 + 23);
  v5 = a1[1];
  if ((v4 & 0x80000000) == 0)
  {
    v5 = *(a1 + 23);
  }

  if (v5)
  {
    v6 = 0;
    v7 = v4 >> 63;
    do
    {
      if (v7)
      {
        v8 = *a1;
      }

      else
      {
        v8 = a1;
      }

      v9 = *(v8 + v6);
      if (v9 == 92 || v9 == 34)
      {
        v23 = 92;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, &v23, 1);
      }

      v23 = v9;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, &v23, 1);
      ++v6;
      v10 = *(a1 + 23);
      v7 = v10 >> 63;
      if ((v10 & 0x80000000) != 0)
      {
        v10 = a1[1];
      }
    }

    while (v6 < v10);
  }

  std::stringbuf::str();
  v17[0] = *MEMORY[0x277D82818];
  v11 = *(MEMORY[0x277D82818] + 72);
  *(v17 + *(v17[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v18 = v11;
  v19 = MEMORY[0x277D82878] + 16;
  if (v21 < 0)
  {
    operator delete(v20[7].__locale_);
  }

  v19 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v20);
  std::iostream::~basic_iostream();
  MEMORY[0x21CEAFDA0](&v22);
  if ((v16 & 0x80u) == 0)
  {
    v12 = v15;
  }

  else
  {
    v12 = v15[0];
  }

  if ((v16 & 0x80u) == 0)
  {
    v13 = v16;
  }

  else
  {
    v13 = v15[1];
  }

  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, v12, v13);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "", 1);
  if (v16 < 0)
  {
    operator delete(v15[0]);
  }
}

void sub_21809F7C4(_Unwind_Exception *a1, uint64_t a2, void *__p, uint64_t a4, int a5, __int16 a6, char a7, char a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a9, MEMORY[0x277D82818]);
  MEMORY[0x21CEAFDA0](va);
  _Unwind_Resume(a1);
}

MIL::IRDimension **anonymous namespace::SerializeImmediateTensorDim<std::string,MIL::Util::Span<std::string const,18446744073709551615ul>>(MIL::IRDimension **result, MIL::IRDimension **a2, uint64_t **a3, void *a4)
{
  if (result != a2)
  {
    v8 = result;
    v9 = MIL::IRDimension::AsConstant(*result);
    v10 = (*(*v9 + 48))(v9);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "[", 1);
    if (v10)
    {
      if (a2 - 1 == v8)
      {
        if (v10 >= 1)
        {
          v11 = &(*a3)[3 * v10];
          v12 = "";
          do
          {
            v13 = strlen(v12);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, v12, v13);
            v14 = (*a3 + 3);
            *a3 = v14;
            v12 = ", ";
          }

          while (v14 < v11);
        }
      }

      else
      {
        v15 = "";
        do
        {
          v16 = strlen(v15);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, v15, v16);
          v15 = ", ";
          --v10;
        }

        while (v10);
      }
    }

    return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "]", 1);
  }

  return result;
}

uint64_t *std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](uint64_t *a1)
{
  a1[22] = 0;
  v2 = MEMORY[0x277D82890] + 104;
  a1[16] = MEMORY[0x277D82890] + 104;
  v3 = a1 + 2;
  v4 = MEMORY[0x277D82890] + 64;
  a1[2] = MEMORY[0x277D82890] + 64;
  v5 = MEMORY[0x277D82818];
  v6 = *(MEMORY[0x277D82818] + 24);
  v7 = *(MEMORY[0x277D82818] + 16);
  *a1 = v7;
  *(a1 + *(v7 - 24)) = v6;
  a1[1] = 0;
  v8 = (a1 + *(*a1 - 24));
  std::ios_base::init(v8, a1 + 3);
  v9 = MEMORY[0x277D82890] + 24;
  v8[1].__vftable = 0;
  v8[1].__fmtflags_ = -1;
  v10 = v5[5];
  v11 = v5[4];
  a1[2] = v11;
  *(v3 + *(v11 - 24)) = v10;
  v12 = v5[1];
  *a1 = v12;
  *(a1 + *(v12 - 24)) = v5[6];
  *a1 = v9;
  a1[16] = v2;
  a1[2] = v4;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 3), 24);
  return a1;
}

void sub_21809FBF4(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x21CEAFDA0](v1);
  _Unwind_Resume(a1);
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[8];
  *(a1 + 16) = a2[9];
  *(a1 + 24) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

MIL::IRDimension **anonymous namespace::SerializeImmediateTensorDim<MIL::Bf16,MIL::Util::Span<MIL::Bf16 const,18446744073709551615ul>>(MIL::IRDimension **result, MIL::IRDimension **a2, MIL::Bf16 **a3, void *a4, uint64_t a5)
{
  if (result != a2)
  {
    v10 = result;
    v11 = MIL::IRDimension::AsConstant(*result);
    v12 = (*(*v11 + 48))(v11);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "[", 1);
    if (v12)
    {
      if (a2 - 1 == v10)
      {
        if (v12 >= 1)
        {
          v13 = *a3 + 2 * v12;
          v14 = "";
          do
          {
            v15 = strlen(v14);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, v14, v15);
            MIL::Bf16::GetFloat(*a3);
            v16 = *a3 + 2;
            *a3 = v16;
            v14 = ", ";
          }

          while (v16 < v13);
        }
      }

      else
      {
        v17 = "";
        do
        {
          v18 = strlen(v17);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, v17, v18);
          v17 = ", ";
          --v12;
        }

        while (v12);
      }
    }

    return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "]", 1);
  }

  return result;
}

void *anonymous namespace::FloatToString<float>(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = (*(*a3 + 80))(a3, a1);
  if (v4 == 1)
  {
    *(a2 + *(*a2 - 24) + 8) |= 0x104u;
    result = std::ostream::operator<<();
    *(result + *(*result - 24) + 8) = *(result + *(*result - 24) + 8) & 0xFFFFFEFB | 4;
  }

  else
  {
    if (v4)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Unexpected float serialization mode.");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    *(a2 + *(*a2 - 24) + 16) = 9;

    return std::ostream::operator<<();
  }

  return result;
}

MIL::IRDimension **anonymous namespace::SerializeImmediateTensorDim<MIL::Fp16,MIL::Util::Span<MIL::Fp16 const,18446744073709551615ul>>(MIL::IRDimension **result, MIL::IRDimension **a2, MIL::Fp16 **a3, void *a4, uint64_t a5)
{
  if (result != a2)
  {
    v10 = result;
    v11 = MIL::IRDimension::AsConstant(*result);
    v12 = (*(*v11 + 48))(v11);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "[", 1);
    if (v12)
    {
      if (a2 - 1 == v10)
      {
        if (v12 >= 1)
        {
          v13 = *a3 + 2 * v12;
          v14 = "";
          do
          {
            v15 = strlen(v14);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, v14, v15);
            MIL::Fp16::GetFloat(*a3);
            v16 = *a3 + 2;
            *a3 = v16;
            v14 = ", ";
          }

          while (v16 < v13);
        }
      }

      else
      {
        v17 = "";
        do
        {
          v18 = strlen(v17);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, v17, v18);
          v17 = ", ";
          --v12;
        }

        while (v12);
      }
    }

    return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "]", 1);
  }

  return result;
}

MIL::IRDimension **anonymous namespace::SerializeImmediateTensorDim<MIL::Fp8E5M2,MIL::Util::Span<MIL::Fp8E5M2 const,18446744073709551615ul>>(MIL::IRDimension **result, MIL::IRDimension **a2, MIL::Fp8E5M2 **a3, void *a4, uint64_t a5)
{
  if (result != a2)
  {
    v10 = result;
    v11 = MIL::IRDimension::AsConstant(*result);
    v12 = (*(*v11 + 48))(v11);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "[", 1);
    if (v12)
    {
      if (a2 - 1 == v10)
      {
        if (v12 >= 1)
        {
          v13 = *a3 + v12;
          v14 = "";
          do
          {
            v15 = strlen(v14);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, v14, v15);
            MIL::Fp8E5M2::GetFloat(*a3);
            v16 = *a3 + 1;
            *a3 = v16;
            v14 = ", ";
          }

          while (v16 < v13);
        }
      }

      else
      {
        v17 = "";
        do
        {
          v18 = strlen(v17);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, v17, v18);
          v17 = ", ";
          --v12;
        }

        while (v12);
      }
    }

    return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "]", 1);
  }

  return result;
}

MIL::IRDimension **anonymous namespace::SerializeImmediateTensorDim<MIL::Fp8E4M3FN,MIL::Util::Span<MIL::Fp8E4M3FN const,18446744073709551615ul>>(MIL::IRDimension **result, MIL::IRDimension **a2, MIL::Fp8E4M3FN **a3, void *a4, uint64_t a5)
{
  if (result != a2)
  {
    v10 = result;
    v11 = MIL::IRDimension::AsConstant(*result);
    v12 = (*(*v11 + 48))(v11);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "[", 1);
    if (v12)
    {
      if (a2 - 1 == v10)
      {
        if (v12 >= 1)
        {
          v13 = *a3 + v12;
          v14 = "";
          do
          {
            v15 = strlen(v14);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, v14, v15);
            MIL::Fp8E4M3FN::GetFloat(*a3);
            v16 = *a3 + 1;
            *a3 = v16;
            v14 = ", ";
          }

          while (v16 < v13);
        }
      }

      else
      {
        v17 = "";
        do
        {
          v18 = strlen(v17);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, v17, v18);
          v17 = ", ";
          --v12;
        }

        while (v12);
      }
    }

    return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "]", 1);
  }

  return result;
}

MIL::IRDimension **anonymous namespace::SerializeImmediateTensorDim<float,MIL::Util::Span<float const,18446744073709551615ul>>(MIL::IRDimension **result, MIL::IRDimension **a2, unint64_t *a3, void *a4, uint64_t a5)
{
  if (result != a2)
  {
    v10 = result;
    v11 = MIL::IRDimension::AsConstant(*result);
    v12 = (*(*v11 + 48))(v11);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "[", 1);
    if (v12)
    {
      if (a2 - 1 == v10)
      {
        if (v12 >= 1)
        {
          v13 = *a3 + 4 * v12;
          v14 = "";
          do
          {
            v15 = strlen(v14);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, v14, v15);
            v16 = *a3 + 4;
            *a3 = v16;
            v14 = ", ";
          }

          while (v16 < v13);
        }
      }

      else
      {
        v17 = "";
        do
        {
          v18 = strlen(v17);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, v17, v18);
          v17 = ", ";
          --v12;
        }

        while (v12);
      }
    }

    return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "]", 1);
  }

  return result;
}

void *anonymous namespace::ScalarToString<double>(double *a1, void *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = (*(*a3 + 80))(a3, 6);
  if (v5 != 1)
  {
    if (!v5)
    {
      *(a2 + *(*a2 - 24) + 16) = 17;

      JUMPOUT(0x21CEAFB00);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Unexpected float serialization mode.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  *(a2 + *(*a2 - 24) + 8) |= 0x104u;
  result = MEMORY[0x21CEAFB00](a2, v4);
  *(result + *(*result - 24) + 8) = *(result + *(*result - 24) + 8) & 0xFFFFFEFB | 4;
  return result;
}

MIL::IRDimension **anonymous namespace::SerializeImmediateTensorDim<double,MIL::Util::Span<double const,18446744073709551615ul>>(MIL::IRDimension **result, MIL::IRDimension **a2, double **a3, void *a4, uint64_t a5)
{
  if (result != a2)
  {
    v10 = result;
    v11 = MIL::IRDimension::AsConstant(*result);
    v12 = (*(*v11 + 48))(v11);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "[", 1);
    if (v12)
    {
      if (a2 - 1 == v10)
      {
        if (v12 >= 1)
        {
          v13 = &(*a3)[v12];
          v14 = "";
          do
          {
            v15 = strlen(v14);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, v14, v15);
            v16 = (*a3 + 1);
            *a3 = v16;
            v14 = ", ";
          }

          while (v16 < v13);
        }
      }

      else
      {
        v17 = "";
        do
        {
          v18 = strlen(v17);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, v17, v18);
          v17 = ", ";
          --v12;
        }

        while (v12);
      }
    }

    return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "]", 1);
  }

  return result;
}

void ValHelperForSubByteTypes<MIL::Int4>(uint64_t a1, void *a2)
{
  Type = MIL::IRTypedTensorValue<MIL::Int4>::GetType(a1);
  v5 = (*(*Type + 96))(Type);
  v19 = 0;
  v20 = 0;
  v18 = 0;
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&v18, *v5, v5[1], (v5[1] - *v5) >> 3);
  if (v18 == v19)
  {
    LOBYTE(v16) = MIL::IRTypedTensorValue<MIL::Int4>::GetScalarValue(a1);
    Int = MIL::Int4::GetInt(&v16);
    MEMORY[0x21CEAFB50](a2, Int);
  }

  MIL::IRTypedTensorValue<MIL::Int4>::GetValues(a1);
  v9 = ((v8 >> 1) & 0x1FFFFFFFFFFFFFFFLL) + (v8 & 1);
  if (v9)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0;
  }

  __p = 0;
  v14 = 0;
  v15 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&__p, v10, v10 + v9, v9);
  v11 = MIL::IRTypedTensorValue<MIL::Int4>::GetType(a1);
  v12 = (*(*v11 + 16))(v11);
  MIL::UnPackSubByteVec<MIL::Int4>(&v16, &__p, v12);
  if (__p)
  {
    v14 = __p;
    operator delete(__p);
  }

  if (v16 != v17)
  {
    operator new();
  }

  __p = 0;
  if (v16)
  {
    v17 = v16;
    operator delete(v16);
  }

  if (v18)
  {
    v19 = v18;
    operator delete(v18);
  }
}

void sub_2180A0BD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  if (v17)
  {
    operator delete(v17);
  }

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

MIL::IRDimension **anonymous namespace::SerializeImmediateTensorDim<signed char,MIL::Util::Span<signed char const,18446744073709551615ul>>(MIL::IRDimension **result, MIL::IRDimension **a2, unint64_t *a3, void *a4)
{
  if (result != a2)
  {
    v8 = result;
    v9 = MIL::IRDimension::AsConstant(*result);
    v10 = (*(*v9 + 48))(v9);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "[", 1);
    if (v10)
    {
      if (a2 - 1 == v8)
      {
        if (v10 >= 1)
        {
          v11 = *a3 + v10;
          v12 = "";
          do
          {
            v13 = strlen(v12);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, v12, v13);
            MEMORY[0x21CEAFB50](a4, **a3);
            v14 = *a3 + 1;
            *a3 = v14;
            v12 = ", ";
          }

          while (v14 < v11);
        }
      }

      else
      {
        v15 = "";
        do
        {
          v16 = strlen(v15);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, v15, v16);
          v15 = ", ";
          --v10;
        }

        while (v10);
      }
    }

    return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "]", 1);
  }

  return result;
}

MIL::IRDimension **anonymous namespace::SerializeImmediateTensorDim<short,MIL::Util::Span<short const,18446744073709551615ul>>(MIL::IRDimension **result, MIL::IRDimension **a2, unint64_t *a3, void *a4)
{
  if (result != a2)
  {
    v8 = result;
    v9 = MIL::IRDimension::AsConstant(*result);
    v10 = (*(*v9 + 48))(v9);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "[", 1);
    if (v10)
    {
      if (a2 - 1 == v8)
      {
        if (v10 >= 1)
        {
          v11 = *a3 + 2 * v10;
          v12 = "";
          do
          {
            v13 = strlen(v12);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, v12, v13);
            MEMORY[0x21CEAFB50](a4, **a3);
            v14 = *a3 + 2;
            *a3 = v14;
            v12 = ", ";
          }

          while (v14 < v11);
        }
      }

      else
      {
        v15 = "";
        do
        {
          v16 = strlen(v15);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, v15, v16);
          v15 = ", ";
          --v10;
        }

        while (v10);
      }
    }

    return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "]", 1);
  }

  return result;
}

MIL::IRDimension **anonymous namespace::SerializeImmediateTensorDim<int,MIL::Util::Span<int const,18446744073709551615ul>>(MIL::IRDimension **result, MIL::IRDimension **a2, unint64_t *a3, void *a4)
{
  if (result != a2)
  {
    v8 = result;
    v9 = MIL::IRDimension::AsConstant(*result);
    v10 = (*(*v9 + 48))(v9);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "[", 1);
    if (v10)
    {
      if (a2 - 1 == v8)
      {
        if (v10 >= 1)
        {
          v11 = *a3 + 4 * v10;
          v12 = "";
          do
          {
            v13 = strlen(v12);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, v12, v13);
            MEMORY[0x21CEAFB20](a4, **a3);
            v14 = *a3 + 4;
            *a3 = v14;
            v12 = ", ";
          }

          while (v14 < v11);
        }
      }

      else
      {
        v15 = "";
        do
        {
          v16 = strlen(v15);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, v15, v16);
          v15 = ", ";
          --v10;
        }

        while (v10);
      }
    }

    return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "]", 1);
  }

  return result;
}

MIL::IRDimension **anonymous namespace::SerializeImmediateTensorDim<long long,MIL::Util::Span<long long const,18446744073709551615ul>>(MIL::IRDimension **result, MIL::IRDimension **a2, unint64_t *a3, void *a4)
{
  if (result != a2)
  {
    v8 = result;
    v9 = MIL::IRDimension::AsConstant(*result);
    v10 = (*(*v9 + 48))(v9);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "[", 1);
    if (v10)
    {
      if (a2 - 1 == v8)
      {
        if (v10 >= 1)
        {
          v11 = *a3 + 8 * v10;
          v12 = "";
          do
          {
            v13 = strlen(v12);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, v12, v13);
            MEMORY[0x21CEAFB70](a4, **a3);
            v14 = *a3 + 8;
            *a3 = v14;
            v12 = ", ";
          }

          while (v14 < v11);
        }
      }

      else
      {
        v15 = "";
        do
        {
          v16 = strlen(v15);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, v15, v16);
          v15 = ", ";
          --v10;
        }

        while (v10);
      }
    }

    return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "]", 1);
  }

  return result;
}

void ValHelperForSubByteTypes<MIL::UInt1>(uint64_t a1, void *a2)
{
  Type = MIL::IRTypedTensorValue<MIL::UInt1>::GetType(a1);
  v5 = (*(*Type + 96))(Type);
  v24 = 0;
  v25 = 0;
  v23 = 0;
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&v23, *v5, v5[1], (v5[1] - *v5) >> 3);
  if (v23 == v24)
  {
    LOBYTE(v21) = MIL::IRTypedTensorValue<MIL::UInt1>::GetScalarValue(a1);
    Int = MIL::UInt1::GetInt(&v21);
    MEMORY[0x21CEAFB60](a2, Int);
  }

  MIL::IRTypedTensorValue<MIL::UInt1>::GetValues(a1);
  if ((v8 & 7) != 0)
  {
    v9 = (v8 >> 3) + 1;
  }

  else
  {
    v9 = v8 >> 3;
  }

  if (v9)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0;
  }

  __p = 0;
  v19 = 0;
  v20 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&__p, v10, v10 + v9, v9);
  v11 = MIL::IRTypedTensorValue<MIL::UInt1>::GetType(a1);
  v12 = (*(*v11 + 16))(v11);
  MIL::UnPackSubByteVec<MIL::UInt1>(&v21, &__p, v12);
  if (__p)
  {
    v19 = __p;
    operator delete(__p);
  }

  __p = 0;
  v19 = 0;
  v20 = 0;
  v13 = v21;
  v14 = v22;
  if (v21 == v22)
  {
    v16 = 0;
    v15 = 0;
  }

  else
  {
    do
    {
      std::vector<char>::push_back[abi:ne200100](&__p, v13++);
    }

    while (v13 != v14);
    v15 = __p;
    v16 = v19;
  }

  if (v16 == v15)
  {
    v15 = 0;
  }

  v17 = v15;
  if (__p)
  {
    v19 = __p;
    operator delete(__p);
  }

  if (v21)
  {
    v22 = v21;
    operator delete(v21);
  }

  if (v23)
  {
    v24 = v23;
    operator delete(v23);
  }
}

void sub_2180A139C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
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

MIL::IRDimension **anonymous namespace::SerializeImmediateTensorDim<unsigned char,MIL::Util::Span<unsigned char const,18446744073709551615ul>>(MIL::IRDimension **result, MIL::IRDimension **a2, unint64_t *a3, void *a4)
{
  if (result != a2)
  {
    v8 = result;
    v9 = MIL::IRDimension::AsConstant(*result);
    v10 = (*(*v9 + 48))(v9);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "[", 1);
    if (v10)
    {
      if (a2 - 1 == v8)
      {
        if (v10 >= 1)
        {
          v11 = *a3 + v10;
          v12 = "";
          do
          {
            v13 = strlen(v12);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, v12, v13);
            MEMORY[0x21CEAFB60](a4, **a3);
            v14 = *a3 + 1;
            *a3 = v14;
            v12 = ", ";
          }

          while (v14 < v11);
        }
      }

      else
      {
        v15 = "";
        do
        {
          v16 = strlen(v15);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, v15, v16);
          v15 = ", ";
          --v10;
        }

        while (v10);
      }
    }

    return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "]", 1);
  }

  return result;
}

void ValHelperForSubByteTypes<MIL::UInt2>(uint64_t a1, void *a2)
{
  Type = MIL::IRTypedTensorValue<MIL::UInt2>::GetType(a1);
  v5 = (*(*Type + 96))(Type);
  v24 = 0;
  v25 = 0;
  v23 = 0;
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&v23, *v5, v5[1], (v5[1] - *v5) >> 3);
  if (v23 == v24)
  {
    LOBYTE(v21) = MIL::IRTypedTensorValue<MIL::UInt2>::GetScalarValue(a1);
    Int = MIL::UInt2::GetInt(&v21);
    MEMORY[0x21CEAFB60](a2, Int);
  }

  MIL::IRTypedTensorValue<MIL::UInt2>::GetValues(a1);
  if ((v8 & 3) != 0)
  {
    v9 = ((v8 >> 2) & 0x1FFFFFFFFFFFFFFFLL) + 1;
  }

  else
  {
    v9 = (v8 >> 2) & 0x1FFFFFFFFFFFFFFFLL;
  }

  if (v9)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0;
  }

  __p = 0;
  v19 = 0;
  v20 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&__p, v10, v10 + v9, v9);
  v11 = MIL::IRTypedTensorValue<MIL::UInt2>::GetType(a1);
  v12 = (*(*v11 + 16))(v11);
  MIL::UnPackSubByteVec<MIL::UInt2>(&v21, &__p, v12);
  if (__p)
  {
    v19 = __p;
    operator delete(__p);
  }

  __p = 0;
  v19 = 0;
  v20 = 0;
  v13 = v21;
  v14 = v22;
  if (v21 == v22)
  {
    v16 = 0;
    v15 = 0;
  }

  else
  {
    do
    {
      std::vector<char>::push_back[abi:ne200100](&__p, v13++);
    }

    while (v13 != v14);
    v15 = __p;
    v16 = v19;
  }

  if (v16 == v15)
  {
    v15 = 0;
  }

  v17 = v15;
  if (__p)
  {
    v19 = __p;
    operator delete(__p);
  }

  if (v21)
  {
    v22 = v21;
    operator delete(v21);
  }

  if (v23)
  {
    v24 = v23;
    operator delete(v23);
  }
}

void sub_2180A1718(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
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

void ValHelperForSubByteTypes<MIL::UInt3>(uint64_t a1, void *a2)
{
  Type = MIL::IRTypedTensorValue<MIL::UInt3>::GetType(a1);
  v5 = (*(*Type + 96))(Type);
  v24 = 0;
  v25 = 0;
  v23 = 0;
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&v23, *v5, v5[1], (v5[1] - *v5) >> 3);
  if (v23 == v24)
  {
    LOBYTE(v21) = MIL::IRTypedTensorValue<MIL::UInt3>::GetScalarValue(a1);
    Int = MIL::UInt3::GetInt(&v21);
    MEMORY[0x21CEAFB60](a2, Int);
  }

  MIL::IRTypedTensorValue<MIL::UInt3>::GetValues(a1);
  if (((3 * v8) & 7) != 0)
  {
    v9 = ((3 * v8) >> 3) + 1;
  }

  else
  {
    v9 = (3 * v8) >> 3;
  }

  if (v9)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0;
  }

  __p = 0;
  v19 = 0;
  v20 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&__p, v10, v10 + v9, v9);
  v11 = MIL::IRTypedTensorValue<MIL::UInt3>::GetType(a1);
  v12 = (*(*v11 + 16))(v11);
  MIL::UnPackSubByteVec<MIL::UInt3>(&v21, &__p, v12);
  if (__p)
  {
    v19 = __p;
    operator delete(__p);
  }

  __p = 0;
  v19 = 0;
  v20 = 0;
  v13 = v21;
  v14 = v22;
  if (v21 == v22)
  {
    v16 = 0;
    v15 = 0;
  }

  else
  {
    do
    {
      std::vector<char>::push_back[abi:ne200100](&__p, v13++);
    }

    while (v13 != v14);
    v15 = __p;
    v16 = v19;
  }

  if (v16 == v15)
  {
    v15 = 0;
  }

  v17 = v15;
  if (__p)
  {
    v19 = __p;
    operator delete(__p);
  }

  if (v21)
  {
    v22 = v21;
    operator delete(v21);
  }

  if (v23)
  {
    v24 = v23;
    operator delete(v23);
  }
}

void sub_2180A1928(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
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

void ValHelperForSubByteTypes<MIL::UInt4>(uint64_t a1, void *a2)
{
  Type = MIL::IRTypedTensorValue<MIL::UInt4>::GetType(a1);
  v5 = (*(*Type + 96))(Type);
  v24 = 0;
  v25 = 0;
  v23 = 0;
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&v23, *v5, v5[1], (v5[1] - *v5) >> 3);
  if (v23 == v24)
  {
    LOBYTE(v21) = MIL::IRTypedTensorValue<MIL::UInt4>::GetScalarValue(a1);
    Int = MIL::UInt4::GetInt(&v21);
    MEMORY[0x21CEAFB60](a2, Int);
  }

  MIL::IRTypedTensorValue<MIL::UInt4>::GetValues(a1);
  v9 = ((v8 >> 1) & 0x1FFFFFFFFFFFFFFFLL) + (v8 & 1);
  if (v9)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0;
  }

  __p = 0;
  v19 = 0;
  v20 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&__p, v10, v10 + v9, v9);
  v11 = MIL::IRTypedTensorValue<MIL::UInt4>::GetType(a1);
  v12 = (*(*v11 + 16))(v11);
  MIL::UnPackSubByteVec<MIL::UInt4>(&v21, &__p, v12);
  if (__p)
  {
    v19 = __p;
    operator delete(__p);
  }

  __p = 0;
  v19 = 0;
  v20 = 0;
  v13 = v21;
  v14 = v22;
  if (v21 == v22)
  {
    v16 = 0;
    v15 = 0;
  }

  else
  {
    do
    {
      std::vector<char>::push_back[abi:ne200100](&__p, v13++);
    }

    while (v13 != v14);
    v15 = __p;
    v16 = v19;
  }

  if (v16 == v15)
  {
    v15 = 0;
  }

  v17 = v15;
  if (__p)
  {
    v19 = __p;
    operator delete(__p);
  }

  if (v21)
  {
    v22 = v21;
    operator delete(v21);
  }

  if (v23)
  {
    v24 = v23;
    operator delete(v23);
  }
}

void sub_2180A1B30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
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

void ValHelperForSubByteTypes<MIL::UInt6>(uint64_t a1, void *a2)
{
  Type = MIL::IRTypedTensorValue<MIL::UInt6>::GetType(a1);
  v5 = (*(*Type + 96))(Type);
  v24 = 0;
  v25 = 0;
  v23 = 0;
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&v23, *v5, v5[1], (v5[1] - *v5) >> 3);
  if (v23 == v24)
  {
    LOBYTE(v21) = MIL::IRTypedTensorValue<MIL::UInt6>::GetScalarValue(a1);
    Int = MIL::UInt6::GetInt(&v21);
    MEMORY[0x21CEAFB60](a2, Int);
  }

  MIL::IRTypedTensorValue<MIL::UInt6>::GetValues(a1);
  if (((6 * v8) & 6) != 0)
  {
    v9 = (((3 * v8) >> 2) & 0x1FFFFFFFFFFFFFFFLL) + 1;
  }

  else
  {
    v9 = ((3 * v8) >> 2) & 0x1FFFFFFFFFFFFFFFLL;
  }

  if (v9)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0;
  }

  __p = 0;
  v19 = 0;
  v20 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&__p, v10, v10 + v9, v9);
  v11 = MIL::IRTypedTensorValue<MIL::UInt6>::GetType(a1);
  v12 = (*(*v11 + 16))(v11);
  MIL::UnPackSubByteVec<MIL::UInt6>(&v21, &__p, v12);
  if (__p)
  {
    v19 = __p;
    operator delete(__p);
  }

  __p = 0;
  v19 = 0;
  v20 = 0;
  v13 = v21;
  v14 = v22;
  if (v21 == v22)
  {
    v16 = 0;
    v15 = 0;
  }

  else
  {
    do
    {
      std::vector<char>::push_back[abi:ne200100](&__p, v13++);
    }

    while (v13 != v14);
    v15 = __p;
    v16 = v19;
  }

  if (v16 == v15)
  {
    v15 = 0;
  }

  v17 = v15;
  if (__p)
  {
    v19 = __p;
    operator delete(__p);
  }

  if (v21)
  {
    v22 = v21;
    operator delete(v21);
  }

  if (v23)
  {
    v24 = v23;
    operator delete(v23);
  }
}

void sub_2180A1D44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
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

MIL::IRDimension **anonymous namespace::SerializeImmediateTensorDim<unsigned short,MIL::Util::Span<unsigned short const,18446744073709551615ul>>(MIL::IRDimension **result, MIL::IRDimension **a2, unint64_t *a3, void *a4)
{
  if (result != a2)
  {
    v8 = result;
    v9 = MIL::IRDimension::AsConstant(*result);
    v10 = (*(*v9 + 48))(v9);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "[", 1);
    if (v10)
    {
      if (a2 - 1 == v8)
      {
        if (v10 >= 1)
        {
          v11 = *a3 + 2 * v10;
          v12 = "";
          do
          {
            v13 = strlen(v12);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, v12, v13);
            MEMORY[0x21CEAFB60](a4, **a3);
            v14 = *a3 + 2;
            *a3 = v14;
            v12 = ", ";
          }

          while (v14 < v11);
        }
      }

      else
      {
        v15 = "";
        do
        {
          v16 = strlen(v15);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, v15, v16);
          v15 = ", ";
          --v10;
        }

        while (v10);
      }
    }

    return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "]", 1);
  }

  return result;
}

MIL::IRDimension **anonymous namespace::SerializeImmediateTensorDim<unsigned int,MIL::Util::Span<unsigned int const,18446744073709551615ul>>(MIL::IRDimension **result, MIL::IRDimension **a2, unint64_t *a3, void *a4)
{
  if (result != a2)
  {
    v8 = result;
    v9 = MIL::IRDimension::AsConstant(*result);
    v10 = (*(*v9 + 48))(v9);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "[", 1);
    if (v10)
    {
      if (a2 - 1 == v8)
      {
        if (v10 >= 1)
        {
          v11 = *a3 + 4 * v10;
          v12 = "";
          do
          {
            v13 = strlen(v12);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, v12, v13);
            MEMORY[0x21CEAFB30](a4, **a3);
            v14 = *a3 + 4;
            *a3 = v14;
            v12 = ", ";
          }

          while (v14 < v11);
        }
      }

      else
      {
        v15 = "";
        do
        {
          v16 = strlen(v15);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, v15, v16);
          v15 = ", ";
          --v10;
        }

        while (v10);
      }
    }

    return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "]", 1);
  }

  return result;
}

MIL::IRDimension **anonymous namespace::SerializeImmediateTensorDim<unsigned long long,MIL::Util::Span<unsigned long long const,18446744073709551615ul>>(MIL::IRDimension **result, MIL::IRDimension **a2, unint64_t *a3, void *a4)
{
  if (result != a2)
  {
    v8 = result;
    v9 = MIL::IRDimension::AsConstant(*result);
    v10 = (*(*v9 + 48))(v9);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "[", 1);
    if (v10)
    {
      if (a2 - 1 == v8)
      {
        if (v10 >= 1)
        {
          v11 = *a3 + 8 * v10;
          v12 = "";
          do
          {
            v13 = strlen(v12);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, v12, v13);
            MEMORY[0x21CEAFB80](a4, **a3);
            v14 = *a3 + 8;
            *a3 = v14;
            v12 = ", ";
          }

          while (v14 < v11);
        }
      }

      else
      {
        v15 = "";
        do
        {
          v16 = strlen(v15);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, v15, v16);
          v15 = ", ";
          --v10;
        }

        while (v10);
      }
    }

    return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "]", 1);
  }

  return result;
}

void MIL::Util::TypeDispatchDetail::Dispatch<(MIL::IRDataType)18,MIL::Text::BasicSerializer &,anonymous namespace::SerializeTensorHelper,MIL::Text::BasicSerializer &,MIL::IRTensorValue const&,true>()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "cannot dispatch on type");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

MIL::Text::BasicSerializer *MIL::Text::BasicSerializer::PropertyItem<long long>(MIL::Text::BasicSerializer *a1, MIL::IRProperty *this)
{
  v4 = MIL::IRProperty::TryAsConstant(this);
  if (v4)
  {
    v5 = *(a1 + 5);
    Int64ScalarValue = MIL::IRConstantProperty::GetInt64ScalarValue(v4);
    MEMORY[0x21CEAFB70](v5, Int64ScalarValue);
  }

  else
  {
    v7 = MIL::IRProperty::TryAsUnknown(this);
    if (!v7)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Property type is not supported by the serializer.");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    MIL::Text::BasicSerializer::PropertyItem(a1, v7);
  }

  return a1;
}

MIL::Text::BasicSerializer *MIL::Text::BasicSerializer::PropertyItem<unsigned char>(MIL::Text::BasicSerializer *a1, MIL::IRProperty *this)
{
  v4 = MIL::IRProperty::TryAsConstant(this);
  if (v4)
  {
    v5 = *(a1 + 5);
    UInt8ScalarValue = MIL::IRConstantProperty::GetUInt8ScalarValue(v4);
    MEMORY[0x21CEAFB70](v5, UInt8ScalarValue);
  }

  else
  {
    v7 = MIL::IRProperty::TryAsUnknown(this);
    if (!v7)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Property type is not supported by the serializer.");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    MIL::Text::BasicSerializer::PropertyItem(a1, v7);
  }

  return a1;
}

uint64_t std::regex_match[abi:ne200100]<std::__wrap_iter<char const*>,std::allocator<std::sub_match<std::__wrap_iter<char const*>>>,char,std::regex_traits<char>>(char *__f, char *__l, uint64_t a3, uint64_t a4, int a5)
{
  v5 = a5;
  memset(&__p.__prefix_, 0, 17);
  memset(&__p.__suffix_, 0, 17);
  __p.__ready_ = 0;
  __p.__position_start_ = 0;
  memset(&__p, 0, 41);
  v9 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(a4, __f, __l, &__p, a5 | 0x1040u);
  std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(a3, __f, __l, &__p, (v5 & 0x800) != 0);
  if (__p.__matches_.__begin_)
  {
    __p.__matches_.__end_ = __p.__matches_.__begin_;
    operator delete(__p.__matches_.__begin_);
  }

  if (!v9)
  {
    return 0;
  }

  if (*(a3 + 88) != 1)
  {
    return 1;
  }

  result = 0;
  *(a3 + 8) = *a3;
  return result;
}

void sub_2180A2494(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(std::vector<std::ssub_match> *a1, uint64_t a2, std::sub_match<std::__wrap_iter<const char *>> *a3, uint64_t *a4, char a5)
{
  v10 = a4[6];
  std::vector<std::sub_match<std::__wrap_iter<char const*>>>::resize(a1, 0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3));
  begin = a1->__begin_;
  if (a1->__end_ == a1->__begin_)
  {
    v14 = a2 - v10;
  }

  else
  {
    v12 = 0;
    v13 = 0;
    v14 = a2 - v10;
    v16 = *a4;
    v15 = a4[1];
    do
    {
      v17 = 0xAAAAAAAAAAAAAAABLL * ((v15 - v16) >> 3);
      v18 = (v16 + v12 * 24);
      if (v17 <= v13)
      {
        v19 = a4 + 3;
      }

      else
      {
        v19 = v18;
      }

      begin[v12].first.__i_ = (v14 + *v19);
      if (0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3) <= v13)
      {
        v20 = a4 + 3;
      }

      else
      {
        v20 = (*a4 + v12 * 24);
      }

      a1->__begin_[v12].second.__i_ = (v14 + v20[1]);
      v16 = *a4;
      v15 = a4[1];
      if (0xAAAAAAAAAAAAAAABLL * ((v15 - *a4) >> 3) <= v13)
      {
        v21 = a4 + 3;
      }

      else
      {
        v21 = (*a4 + v12 * 24);
      }

      v22 = *(v21 + 16);
      begin = a1->__begin_;
      end = a1->__end_;
      a1->__begin_[v12].matched = v22;
      ++v13;
      ++v12;
    }

    while (v13 < 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3));
  }

  a1[1].__begin_ = a3;
  a1[1].__end_ = a3;
  LOBYTE(a1[1].__end_cap_.__value_) = 0;
  v24 = (v14 + a4[6]);
  a1[2].__begin_ = v24;
  a1[2].__end_ = (v14 + a4[7]);
  LOBYTE(a1[2].__end_cap_.__value_) = *(a4 + 64);
  a1[3].__begin_ = (v14 + a4[9]);
  a1[3].__end_ = (v14 + a4[10]);
  LOBYTE(a1[3].__end_cap_.__value_) = *(a4 + 88);
  if ((a5 & 1) == 0)
  {
    a1[4].__end_ = v24;
  }

  LOBYTE(a1[4].__begin_) = *(a4 + 96);
}

void std::vector<std::sub_match<std::__wrap_iter<char const*>>>::resize(std::vector<std::ssub_match> *this, std::vector<std::ssub_match>::size_type __sz)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((this->__end_ - this->__begin_) >> 3);
  v3 = __sz >= v2;
  v4 = __sz - v2;
  if (v4 != 0 && v3)
  {
    std::vector<std::sub_match<std::__wrap_iter<char const*>>>::__append(this, v4);
  }

  else if (!v3)
  {
    this->__end_ = &this->__begin_[__sz];
  }
}

void std::vector<std::sub_match<std::__wrap_iter<char const*>>>::__append(std::vector<std::ssub_match> *this, std::vector<std::ssub_match>::size_type __n)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (0xAAAAAAAAAAAAAAABLL * ((value - end) >> 3) >= __n)
  {
    if (__n)
    {
      v10 = &end[__n];
      v11 = 24 * __n;
      do
      {
        end->first.__i_ = 0;
        end->second.__i_ = 0;
        end->matched = 0;
        ++end;
        v11 -= 24;
      }

      while (v11);
      end = v10;
    }

    this->__end_ = end;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((end - this->__begin_) >> 3);
    v7 = v6 + __n;
    if (v6 + __n > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((value - this->__begin_) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::sub_match<char const*>>>(this, v9);
    }

    v12 = 24 * __n;
    v13 = 24 * v6;
    do
    {
      *v13 = 0;
      *(v13 + 8) = 0;
      *(v13 + 16) = 0;
      v13 += 24;
      v12 -= 24;
    }

    while (v12);
    begin = this->__begin_;
    v15 = this->__end_;
    v16 = (24 * v6 + this->__begin_ - v15);
    if (v15 != this->__begin_)
    {
      v17 = (24 * v6 + this->__begin_ - v15);
      do
      {
        v18 = begin->std::pair<std::__wrap_iter<const char *>, std::__wrap_iter<const char *>>;
        *(v17 + 2) = *&begin->matched;
        *v17 = v18;
        v17 += 24;
        ++begin;
      }

      while (begin != v15);
      begin = this->__begin_;
    }

    this->__begin_ = v16;
    this->__end_ = (24 * v6 + 24 * __n);
    this->__end_cap_.__value_ = 0;
    if (begin)
    {

      operator delete(begin);
    }
  }
}

void MIL::Text::ParseProgram(void *a1, uint64_t a2)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = *(a2 + 23);
  if (v3 < 0)
  {
    v4 = a2;
    a2 = *a2;
    v3 = *(v4 + 8);
  }

  MIL::Text::ParseProgramView(v5, a2, v3);
}

void sub_2180A2864(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Text::ParseProgramView(MIL::ParserOptions *a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  v4 = a3;
  MIL::ParserOptions::Make(a1);
}

void sub_2180A29D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26)
{
  if (a26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a26);
  }

  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a19);
  }

  v29 = *(v26 - 80);
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  v30 = *(v26 - 72);
  *(v26 - 72) = 0;
  if (v30)
  {
    (*(*v30 + 8))(v30);
  }

  v31 = *(v26 - 64);
  *(v26 - 64) = 0;
  if (v31)
  {
    (*(*v31 + 8))(v31);
  }

  if (a2 == 2)
  {
    __cxa_begin_catch(exception_object);
    __cxa_rethrow();
  }

  if (a2 == 1)
  {
    __cxa_begin_catch(exception_object);
    exception = __cxa_allocate_exception(0x48uLL);
    MIL::UnknownLocation::Make(exception);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Text::ParseProgram(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1[1];
  v7[0] = *a1;
  v7[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a2 + 23);
  if (v5 < 0)
  {
    v6 = a2;
    a2 = *a2;
    v5 = *(v6 + 8);
  }

  MIL::Text::ParseProgramView(v7, a2, v5, a3);
}

void sub_2180A2CE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Text::ParseProgramView(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a2;
  v5 = a3;
  (*(*a4 + 24))(a4);
  MIL::Scanner::Make();
}

void sub_2180A2E1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, __int128 a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, std::__shared_weak_count *a30)
{
  v32 = v30;
  a24 = &unk_2829E6500;
  if (a30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a30);
  }

  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a22);
  }

  v35 = *(v31 - 72);
  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  }

  v36 = *(v31 - 64);
  *(v31 - 64) = 0;
  if (v36)
  {
    (*(*v36 + 8))(v36);
  }

  if (a2 == 2)
  {
    __cxa_begin_catch(exception_object);
    __cxa_rethrow();
  }

  if (a2 == 1)
  {
    __cxa_begin_catch(exception_object);
    __cxa_allocate_exception(0x48uLL);
    v37 = (*(*v32 + 24))(v32);
    if (*(v37 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&a16, *v37, *(v37 + 8));
    }

    else
    {
      v38 = *v37;
      a17 = *(v37 + 16);
      a16 = v38;
    }

    MIL::TextFileLocation::Make();
  }

  _Unwind_Resume(exception_object);
}

void MIL::Text::TryParseProgram(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1[1];
  *&v7 = *a1;
  *(&v7 + 1) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a2 + 23);
  if (v5 < 0)
  {
    v6 = a2;
    a2 = *a2;
    v5 = *(v6 + 8);
  }

  MIL::Text::TryParseProgramView(&v7, a2, v5, a3);
}

void sub_2180A317C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Text::TryParseProgramView(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  *a1 = 0;
  *(a1 + 1) = 0;
  MIL::Text::ParseProgramView(&v4, a2, a3, a4);
}

void sub_2180A3218(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::__shared_weak_count *a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, __int128 a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, std::string *a31, uint64_t a32, __int128 a33, uint64_t a34)
{
  v40 = *v34;
  *v34 = 0;
  if (v40)
  {
    MIL::Pass::Run(v40);
  }

  if (a2 == 4)
  {
    v41 = __cxa_begin_catch(a1);
    ParseResult = MIL::ParseError::GetParseResult(v41);
    std::shared_ptr<MIL::Location const>::operator=[abi:ne200100]((v35 + 8), (ParseResult + 8));
    std::string::operator=((v35 + 24), (ParseResult + 24));
    *(v35 + 48) = *(ParseResult + 48);
  }

  else
  {
    if (a2 != 3)
    {
      __cxa_begin_catch(a1);
      if (a2 == 2)
      {
        v46 = (*(*v36 + 24))(v36);
        if (*(v46 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&a23, *v46, *(v46 + 8));
        }

        else
        {
          v47 = *v46;
          a24 = *(v46 + 16);
          a23 = v47;
        }

        MIL::TextFileLocation::Make();
      }

      v48 = (*(*v36 + 24))(v36);
      if (*(v48 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&a33, *v48, *(v48 + 8));
      }

      else
      {
        v49 = *v48;
        a34 = *(v48 + 16);
        a33 = v49;
      }

      MIL::TextFileLocation::Make();
    }

    v43 = __cxa_begin_catch(a1);
    v44 = (*(*v43 + 48))(v43);
    v45 = v44[1];
    a15 = *v44;
    a16 = v45;
    if (v45)
    {
      atomic_fetch_add_explicit(&v45->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v43 + 24))(&__p, v43);
    MIL::ParseResult::ParseResult(v37 - 120, &a15, 1, &__p);
    MIL::MILResult::operator=(v35, v37 - 120);
    *(v35 + 48) = *(v37 - 72);
    MIL::ParseResult::~ParseResult((v37 - 120));
    if (a14 < 0)
    {
      operator delete(__p);
    }

    if (a16)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a16);
    }
  }

  *v34 = 0;
  __cxa_end_catch();
  JUMPOUT(0x2180A3200);
}

void sub_2180A363C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  v44 = *(v42 - 144);
  *(v42 - 144) = 0;
  if (v44)
  {
    (*(*v44 + 8))(v44);
  }

  if (a42 < 0)
  {
    operator delete(__p);
  }

  __cxa_end_catch();
  _Unwind_Resume(a1);
}

void MIL::Text::ParseProgramFromFile(uint64_t a1, uint64_t a2)
{
  v2 = (*(*a2 + 24))(a2);
  if (*(v2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v4, *v2, *(v2 + 8));
  }

  else
  {
    v3 = *v2;
    v4.__r_.__value_.__r.__words[2] = *(v2 + 16);
    *&v4.__r_.__value_.__l.__data_ = v3;
  }

  MIL::Blob::MakeMMapFileReader();
}

void sub_2180A3934(_Unwind_Exception *a1, std::string *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *__p, uint64_t a9, int a10, __int16 a11, char a12, char a13, std::string *a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, std::string *a20, void *__pa, uint64_t a22, uint64_t a23, __int128 a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, std::__shared_weak_count *a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, std::__shared_weak_count *a37)
{
  v39 = a2;
  a31 = &unk_2829E6500;
  if (a37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a37);
  }

  if (a30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a30);
  }

  v41 = *(v38 - 104);
  if (v41)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v41);
  }

  v42 = *(v38 - 96);
  *(v38 - 96) = 0;
  if (v42)
  {
    (*(*v42 + 8))(v42, a2, a3, a4, a5, a6, a7, __p);
  }

  std::unique_ptr<MIL::Blob::MMapFileReader>::~unique_ptr[abi:ne200100]((v38 - 88));
  switch(v39)
  {
    case 3:
      __cxa_begin_catch(a1);
      __cxa_rethrow();
    case 2:
      __cxa_begin_catch(a1);
      exception = __cxa_allocate_exception(0x48uLL);
      MIL::UnknownLocation::Make(exception);
    case 1:
      __cxa_begin_catch(a1);
      __cxa_allocate_exception(0x48uLL);
      v44 = (*(*v37 + 24))(v37);
      if (*(v44 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&a24, *v44, *(v44 + 8));
      }

      else
      {
        v45 = *v44;
        a25 = *(v44 + 16);
        a24 = v45;
      }

      MIL::TextFileLocation::Make();
  }

  if (*(v38 - 57) < 0)
  {
    operator delete(*(v38 - 80));
  }

  _Unwind_Resume(a1);
}

void sub_2180A3FBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v21 = *(v18 - 64);
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  v22 = *(v18 - 56);
  *(v18 - 56) = 0;
  if (v22)
  {
    (*(*v22 + 8))(v22);
  }

  v23 = *(v18 - 48);
  *(v18 - 48) = 0;
  if (v23)
  {
    (*(*v23 + 8))(v23);
  }

  if (a2 == 2)
  {
    __cxa_begin_catch(exception_object);
    __cxa_rethrow();
  }

  if (a2 == 1)
  {
    __cxa_begin_catch(exception_object);
    exception = __cxa_allocate_exception(0x48uLL);
    MIL::UnknownLocation::Make(exception);
  }

  _Unwind_Resume(exception_object);
}

void sub_2180A4354(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v20 = *(v17 - 56);
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  v21 = *(v17 - 48);
  *(v17 - 48) = 0;
  if (v21)
  {
    (*(*v21 + 8))(v21);
  }

  if (a2 == 2)
  {
    __cxa_begin_catch(exception_object);
    __cxa_rethrow();
  }

  if (a2 == 1)
  {
    __cxa_begin_catch(exception_object);
    exception = __cxa_allocate_exception(0x48uLL);
    MIL::UnknownLocation::Make(exception);
  }

  _Unwind_Resume(exception_object);
}

void sub_2180A4614(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  MIL::Text::ParseValueType((v23 - 56), a1, a2, v23 - 48);
  v26 = *(v23 - 40);
  if (v26 == 2)
  {
    __cxa_begin_catch(*(v23 - 48));
    __cxa_rethrow();
  }

  if (v26 == 1)
  {
    __cxa_begin_catch(*(v23 - 48));
    exception = __cxa_allocate_exception(0x48uLL);
    MIL::UnknownLocation::Make(exception);
  }

  _Unwind_Resume(*(v23 - 48));
}

void sub_2180A4950(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v20 = *(v17 - 56);
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  v21 = *(v17 - 48);
  *(v17 - 48) = 0;
  if (v21)
  {
    (*(*v21 + 8))(v21);
  }

  if (a2 == 2)
  {
    __cxa_begin_catch(exception_object);
    __cxa_rethrow();
  }

  if (a2 == 1)
  {
    __cxa_begin_catch(exception_object);
    exception = __cxa_allocate_exception(0x48uLL);
    MIL::UnknownLocation::Make(exception);
  }

  _Unwind_Resume(exception_object);
}

void *std::shared_ptr<MIL::Location const>::operator=[abi:ne200100](void *a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = a1[1];
  *a1 = v4;
  a1[1] = v3;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return a1;
}

void *std::__shared_ptr_emplace<MIL::ParserContext>::__shared_ptr_emplace[abi:ne200100]<MIL::ParserOptions const&,std::allocator<MIL::ParserContext>,0>(void *a1, const MIL::ParserOptions *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2829E8140;
  MIL::ParserContext::ParserContext((a1 + 3), a2);
  return a1;
}

void MIL::ScanError::~ScanError(std::runtime_error *this)
{
  this->__vftable = &unk_2829E6258;
  MIL::ParseResult::~ParseResult(&this[1]);

  std::runtime_error::~runtime_error(this);
}

{
  this->__vftable = &unk_2829E6258;
  MIL::ParseResult::~ParseResult(&this[1]);

  std::runtime_error::~runtime_error(this);
}

{
  this->__vftable = &unk_2829E6258;
  MIL::ParseResult::~ParseResult(&this[1]);
  std::runtime_error::~runtime_error(this);

  JUMPOUT(0x21CEAFEA0);
}

void *MIL::ScanError::ScanError(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  *__p = *a3;
  v7 = *(a3 + 16);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  MIL::ParseError::ParseError(a1, &v8, __p, a4);
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }

  if (*(&v8 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v8 + 1));
  }

  *a1 = &unk_2829E8BF0;
  return a1;
}

void sub_2180A4E18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

void MIL::UnexpectedTokenTypeError::~UnexpectedTokenTypeError(std::runtime_error *this)
{
  this->__vftable = &unk_2829E8C40;
  UnknownLocationImpl::~UnknownLocationImpl(&this[5]);
  this->__vftable = &unk_2829E6258;
  MIL::ParseResult::~ParseResult(&this[1]);

  std::runtime_error::~runtime_error(this);
}

{
  MIL::UnexpectedTokenTypeError::~UnexpectedTokenTypeError(this);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t MIL::UnexpectedTokenTypeError::UnexpectedTokenTypeError(uint64_t a1, uint64_t *a2, unsigned int a3, MIL::ParserContext *a4, uint64_t a5)
{
  v9 = a2[1];
  v24 = *a2;
  v25 = v9;
  *a2 = 0;
  a2[1] = 0;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v28);
  v10 = *(a5 + 23);
  if (v10 >= 0)
  {
    v11 = a5;
  }

  else
  {
    v11 = *a5;
  }

  if (v10 >= 0)
  {
    v12 = *(a5 + 23);
  }

  else
  {
    v12 = *(a5 + 8);
  }

  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v28, v11, v12);
  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, ": got '", 7);
  ProgramFirstSet = MIL::ParserContext::GetProgramFirstSet(a4);
  v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, *ProgramFirstSet, ProgramFirstSet[1]);
  v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "' when expecting token of type '", 32);
  MIL::GetTokenName(a3, __p);
  if ((v27 & 0x80u) == 0)
  {
    v18 = __p;
  }

  else
  {
    v18 = __p[0];
  }

  if ((v27 & 0x80u) == 0)
  {
    v19 = v27;
  }

  else
  {
    v19 = __p[1];
  }

  v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, v18, v19);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "'.", 2);
  if (v27 < 0)
  {
    operator delete(__p[0]);
  }

  std::stringbuf::str();
  v28 = *MEMORY[0x277D82828];
  *(&v28 + *(v28 - 24)) = *(MEMORY[0x277D82828] + 24);
  v29 = MEMORY[0x277D82878] + 16;
  if (v31 < 0)
  {
    operator delete(v30[7].__locale_);
  }

  v29 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v30);
  std::ostream::~ostream();
  MEMORY[0x21CEAFDA0](&v32);
  MIL::ScanError::ScanError(a1, &v24, &v22, 201);
  if (v23 < 0)
  {
    operator delete(v22);
  }

  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  *a1 = &unk_2829E8C40;
  *(a1 + 72) = a3;
  MIL::Scanner::Token::Token((a1 + 80), a4);
  return a1;
}

void sub_2180A516C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24)
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