void sub_259921220(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void MilTranslator::anonymous namespace::GetCustomPadValues(void *a1@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(&v53, "pad_type");
  MIL::IROperation::GetParameterValue();
  MIL::IRValue::GetScalar<std::string>();
  if (SHIBYTE(v54) < 0)
  {
    operator delete(v53);
  }

  std::string::basic_string[abi:ne200100]<0>(&v53, "x");
  ParameterType = MIL::IROperation::GetParameterType();
  v6 = MIL::IRValueType::AsTensorType(ParameterType);
  if (SHIBYTE(v54) < 0)
  {
    operator delete(v53);
  }

  ANEMachineIR::Utils::GetStaticTensorShape(v6, v5, &__p);
  std::string::basic_string[abi:ne200100]<0>(&v53, "kernel_sizes");
  ParameterValue = MIL::IROperation::GetParameterValue();
  MIL::IRValue::AsTensor(ParameterValue);
  v44[0] = MIL::IRTensorValue::GetDataView<int>();
  v44[1] = v8;
  if (SHIBYTE(v54) < 0)
  {
    operator delete(v53);
  }

  std::string::basic_string[abi:ne200100]<0>(&v53, "strides");
  v9 = MIL::IROperation::GetParameterValue();
  MIL::IRValue::AsTensor(v9);
  v43[0] = MIL::IRTensorValue::GetDataView<int>();
  v43[1] = v10;
  if (SHIBYTE(v54) < 0)
  {
    operator delete(v53);
  }

  std::string::basic_string[abi:ne200100]<0>(&v53, "pad");
  v11 = MIL::IROperation::GetParameterValue();
  MIL::IRValue::AsTensor(v11);
  Data = MIL::IRTensorValue::GetDataView<int>();
  v42 = v12;
  if (SHIBYTE(v54) < 0)
  {
    operator delete(v53);
    v12 = v42;
  }

  std::vector<int>::vector[abi:ne200100](a1, v12);
  v13 = __p;
  v14 = (v46 - __p) >> 3;
  v15 = v14 - 2;
  if (v14 != 2)
  {
    v16 = 0;
    v17 = 0;
    while (1)
    {
      v18 = *(__p + v17);
      v19 = *MIL::Util::Span<int const,18446744073709551615ul>::At(v44, v17);
      v20 = *MIL::Util::Span<int const,18446744073709551615ul>::At(v43, v17);
      v21 = *MIL::Util::Span<int const,18446744073709551615ul>::At(&Data, v16);
      v22 = *MIL::Util::Span<int const,18446744073709551615ul>::At(&Data, v16 + 1);
      if (v49 < 0)
      {
        if (v48 == 4)
        {
          v28 = *v47;
          goto LABEL_40;
        }

        if (v48 != 5)
        {
          if (v48 != 6)
          {
            goto LABEL_49;
          }

          v23 = v47;
LABEL_22:
          v24 = *v23;
          v25 = v23[2];
          if (v24 != 1953723747 || v25 != 28015)
          {
            goto LABEL_49;
          }

          goto LABEL_42;
        }

        if (*v47 != 1768710518 || *(v47 + 4) != 100)
        {
LABEL_49:
          exception = __cxa_allocate_exception(0x10uLL);
          std::string::basic_string[abi:ne200100]<0>(&v50, "pad_type");
          v33 = std::string::insert(&v50, 0, "Invalid ");
          v34 = *&v33->__r_.__value_.__l.__data_;
          v51.__r_.__value_.__r.__words[2] = v33->__r_.__value_.__r.__words[2];
          *&v51.__r_.__value_.__l.__data_ = v34;
          v33->__r_.__value_.__l.__size_ = 0;
          v33->__r_.__value_.__r.__words[2] = 0;
          v33->__r_.__value_.__r.__words[0] = 0;
          v35 = std::string::append(&v51, ": ");
          v36 = *&v35->__r_.__value_.__l.__data_;
          v52.__r_.__value_.__r.__words[2] = v35->__r_.__value_.__r.__words[2];
          *&v52.__r_.__value_.__l.__data_ = v36;
          v35->__r_.__value_.__l.__size_ = 0;
          v35->__r_.__value_.__r.__words[2] = 0;
          v35->__r_.__value_.__r.__words[0] = 0;
          if ((v49 & 0x80u) == 0)
          {
            v37 = &v47;
          }

          else
          {
            v37 = v47;
          }

          if ((v49 & 0x80u) == 0)
          {
            v38 = v49;
          }

          else
          {
            v38 = v48;
          }

          v39 = std::string::append(&v52, v37, v38);
          v40 = *&v39->__r_.__value_.__l.__data_;
          v54 = v39->__r_.__value_.__r.__words[2];
          v53 = v40;
          v39->__r_.__value_.__l.__size_ = 0;
          v39->__r_.__value_.__r.__words[2] = 0;
          v39->__r_.__value_.__r.__words[0] = 0;
          MEMORY[0x259CA9540](exception, &v53);
          __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }
      }

      else
      {
        if (v49 == 4)
        {
          v28 = v47;
LABEL_40:
          if (v28 != 1701667187)
          {
            goto LABEL_49;
          }

          v30 = (v19 + ~v18 + v18 - (v18 + v20 - 1) % v20) & ~((v19 + ~v18 + v18 - (v18 + v20 - 1) % v20) >> 31);
          v21 = v30 >> 1;
          v22 = (v30 + 1) >> 1;
          goto LABEL_42;
        }

        if (v49 != 5)
        {
          if (v49 != 6)
          {
            goto LABEL_49;
          }

          v23 = &v47;
          goto LABEL_22;
        }

        if (v47 != 1768710518 || BYTE4(v47) != 100)
        {
          goto LABEL_49;
        }
      }

      v21 = 0;
      v22 = 0;
LABEL_42:
      v31 = (*a1 + 4 * v16);
      *v31 = v21;
      v31[1] = v22;
      ++v17;
      v16 += 2;
      if (v15 == v17)
      {
        v13 = __p;
        break;
      }
    }
  }

  if (v13)
  {
    v46 = v13;
    operator delete(v13);
  }

  if (v49 < 0)
  {
    operator delete(v47);
  }
}

void sub_259921674(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::pair<std::string const,std::pair<std::string,std::array<unsigned char,5ul>>>::~pair(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

MIL::IRNamedValueType **std::unique_ptr<MIL::IRNamedValueType>::~unique_ptr[abi:ne200100](MIL::IRNamedValueType **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    MIL::IRNamedValueType::~IRNamedValueType(v2);
    MEMORY[0x259CA9760]();
  }

  return a1;
}

void ANEMachineIR::Validators::NePoolParamValues::~NePoolParamValues(ANEMachineIR::Validators::NePoolParamValues *this)
{
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    *(this + 4) = v3;
    operator delete(v3);
  }

  v4 = *this;
  if (*this)
  {
    *(this + 1) = v4;
    operator delete(v4);
  }
}

void MilTranslator::OpTranslator::TranslateMaxPool(MilTranslator::OpTranslator *this@<X0>, const MIL::IROperation *a2@<X1>, uint64_t a3@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, "x");
  v6 = (*(*a2 + 120))(a2, &__p, 0);
  v7 = v6;
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_6:
    *a3 = 4;
    std::string::basic_string[abi:ne200100]<0>((a3 + 8), "Immediate value inputs not handled.");
    return;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (!v7)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (*(v7 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v157, *v7, *(v7 + 8));
  }

  else
  {
    v8 = *v7;
    v157.__r_.__value_.__r.__words[2] = *(v7 + 16);
    *&v157.__r_.__value_.__l.__data_ = v8;
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "x");
  ParameterType = MIL::IROperation::GetParameterType();
  v11 = MIL::IRValueType::AsTensorType(ParameterType);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  ANEMachineIR::Utils::GetStaticTensorShape(v11, v10, v156);
  std::string::basic_string[abi:ne200100]<0>(&__p, "kernel_sizes");
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "strides");
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "ceil_mode");
  MIL::IROperation::GetParameterValue();
  v12 = MIL::IRValue::GetScalar<BOOL>();
  v13 = v12;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (v13)
    {
      goto LABEL_16;
    }

LABEL_29:
    MilTranslator::OpTranslator::GetChannelLastTensorNameMayInsertTranspose(this, &v157, v11, &v149);
    v26 = (*(*a2 + 176))(a2);
    v28 = **v26;
    v27 = (*v26)[1];
    if (v27)
    {
      atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    Type = MIL::IRNamedValueType::GetType(v28);
    v30 = MIL::IRValueType::AsTensorType(Type);
    v147 = 0;
    v146 = 0;
    v148 = 0;
    ANEMachineIR::Utils::GetStaticTensorShape(v30, v31, &v144);
    v32 = (*(*v11 + 96))(v11);
    MilTranslator::OpTranslator::InferChannelLastTransposeInfo(this, &v157, (v32[1] - *v32) >> 3, &__s);
    MilTranslator::OpTranslator::GetTransposeOpParamPerm(&__s, (v145 - v144) >> 3, v140);
    if (MilTranslator::OpTranslator::IsTransposeRequired(v140))
    {
      MilTranslator::OpTranslator::InferTransposedShape(&v144, v140, &v124);
      v33 = *(this + 1);
      (*(*v30 + 88))(v30);
      MIL::IRTensorValueType::Make();
      Name = MIL::IRNamedValueType::GetName(v28);
      v35 = Name;
      if (*(Name + 23) >= 0)
      {
        v36 = *(Name + 23);
      }

      else
      {
        v36 = *(Name + 8);
      }

      p_str = &__str;
      std::string::basic_string[abi:ne200100](&__str, v36 + 13);
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_str = __str.__r_.__value_.__r.__words[0];
      }

      if (v36)
      {
        if (v35[23] >= 0)
        {
          v38 = v35;
        }

        else
        {
          v38 = *v35;
        }

        memmove(p_str, v38, v36);
      }

      strcpy(p_str + v36, "_channel_last");
      if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v125, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
      }

      else
      {
        v125 = __s;
      }

      LODWORD(v126) = v142;
      BYTE4(v126) = v143;
      std::string::operator=(&v125, &__str);
      v42 = MIL::IRNamedValueType::GetName(v28);
      std::pair<std::string const,std::pair<std::string,std::array<unsigned char,5ul>>>::pair[abi:ne200100]<std::string const&,std::pair<std::string,std::array<unsigned char,5ul>>&,0>(&__p, v42, &v125);
      std::__hash_table<std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::pair<std::string,std::array<unsigned char,5ul>>>>(this + 37, &__p.__r_.__value_.__l.__data_);
      if (SHIBYTE(v97) < 0)
      {
        operator delete(v95);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v139, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_);
      }

      else
      {
        v139 = __str;
      }

      MIL::IRNamedValueType::Make();
      __p.__r_.__value_.__r.__words[0] = v136;
      if (v136)
      {
        operator new();
      }

      *&__p.__r_.__value_.__l.__data_ = 0uLL;
      v136 = 0;
      std::vector<std::shared_ptr<MIL::IRParameter>>::push_back[abi:ne200100](&v146, &__p);
      if (__p.__r_.__value_.__l.__size_)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__size_);
      }

      std::unique_ptr<MIL::IRNamedValueType>::~unique_ptr[abi:ne200100](&v136);
      if (SHIBYTE(v139.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v139.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v125.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v125.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      v41 = v124.__r_.__value_.__r.__words[0];
      if (!v124.__r_.__value_.__r.__words[0])
      {
        goto LABEL_74;
      }

      v124.__r_.__value_.__l.__size_ = v124.__r_.__value_.__r.__words[0];
    }

    else
    {
      v39 = MIL::IRNamedValueType::GetName(v28);
      if (*(v39 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v138, *v39, *(v39 + 8));
      }

      else
      {
        v40 = *v39;
        v138.__r_.__value_.__r.__words[2] = *(v39 + 16);
        *&v138.__r_.__value_.__l.__data_ = v40;
      }

      MIL::IRNamedValueType::Make();
      __p.__r_.__value_.__r.__words[0] = v125.__r_.__value_.__r.__words[0];
      if (v125.__r_.__value_.__r.__words[0])
      {
        operator new();
      }

      *&__p.__r_.__value_.__l.__data_ = 0uLL;
      v125.__r_.__value_.__r.__words[0] = 0;
      std::vector<std::shared_ptr<MIL::IRParameter>>::push_back[abi:ne200100](&v146, &__p);
      if (__p.__r_.__value_.__l.__size_)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__size_);
      }

      std::unique_ptr<MIL::IRNamedValueType>::~unique_ptr[abi:ne200100](&v125);
      if ((SHIBYTE(v138.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_74;
      }

      v41 = v138.__r_.__value_.__r.__words[0];
    }

    operator delete(v41);
LABEL_74:
    MilTranslator::OpTranslator::InferTransposedShape(v156, v140, &v136);
    v43 = *(this + 1);
    (*(*v11 + 88))(v11);
    memset(&__p, 0, sizeof(__p));
    std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&__p, v136, v137, (v137 - v136) >> 3);
    v44 = MIL::IRTensorValueType::Make();
    if (__p.__r_.__value_.__r.__words[0])
    {
      __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    memset(&v135, 0, sizeof(v135));
    memset(&v125, 0, sizeof(v125));
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v125, v154, v155, (v155 - v154) >> 2);
    v127 = 0;
    v126 = 0;
    v128 = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v126, v152, v153, (v153 - v152) >> 2);
    v130 = 0;
    v129 = 0;
    v131 = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v129, v150, v151, (v151 - v150) >> 2);
    v132 = 0;
    v133 = 0;
    v134 = 0;
    LocationPtr = MIL::IRObject::GetLocationPtr(a2);
    v46 = (*(*a2 + 56))(a2);
    if (v147 == v146)
    {
      std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
    }

    v47 = v46;
    v48 = MIL::IRNamedValueType::GetType(*v146);
    v49 = MIL::IRValueType::AsTensorType(v48);
    v50 = **(this + 12);
    ANEMachineIR::Validators::ValidatePePool(LocationPtr, v47, v44, v49, &v125, &v124);
    if (MIL::ValidationResult::IsGood(&v124))
    {
      std::string::basic_string[abi:ne200100]<0>(&v122, "pe_max_pool");
      MilTranslator::OpTranslator::AddOperation(this);
      if (v123 < 0)
      {
        operator delete(v122);
      }

      std::string::basic_string[abi:ne200100]<0>(&v119, "x");
      if (SHIBYTE(v149.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v118, v149.__r_.__value_.__l.__data_, v149.__r_.__value_.__l.__size_);
      }

      else
      {
        v118 = v149;
      }

      MIL::Builder::OperationBuilder::AddInput();
      if (v121)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v121);
      }

      if (SHIBYTE(v118.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v118.__r_.__value_.__l.__data_);
      }

      if (v120 < 0)
      {
        operator delete(v119);
      }

      std::string::basic_string[abi:ne200100]<0>(&v115, "kernel_sizes");
      MIL::Builder::OperationBuilder::AddInputInt32();
      if (v117)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v117);
      }

      if (v116 < 0)
      {
        operator delete(v115);
      }

      std::string::basic_string[abi:ne200100]<0>(&v112, "strides");
      MIL::Builder::OperationBuilder::AddInputInt32();
      if (v114)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v114);
      }

      if (v113 < 0)
      {
        operator delete(v112);
      }

      std::string::basic_string[abi:ne200100]<0>(&v109, "custom_pads");
      memset(&__p, 0, sizeof(__p));
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, v150, v151, (v151 - v150) >> 2);
      MIL::Builder::OperationBuilder::AddInputInt32();
      if (v111)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v111);
      }

      if (__p.__r_.__value_.__r.__words[0])
      {
        __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v110 < 0)
      {
        operator delete(v109);
      }

      if (v147 == v146)
      {
        std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
      }

      v70 = MIL::IRNamedValueType::GetName(*v146);
      if (*(v70 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v107, *v70, *(v70 + 8));
      }

      else
      {
        v71 = *v70;
        v107.__r_.__value_.__r.__words[2] = *(v70 + 16);
        *&v107.__r_.__value_.__l.__data_ = v71;
      }

      if (v147 == v146)
      {
        std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
      }

      MIL::IRNamedValueType::GetType(*v146);
      MIL::Builder::OperationBuilder::AddOutput();
      if (v108)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v108);
      }

      if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v107.__r_.__value_.__l.__data_);
      }

      *a3 = 0;
      std::string::basic_string[abi:ne200100]<0>((a3 + 8), &unk_259A4D977);
      if (__str.__r_.__value_.__l.__size_)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](__str.__r_.__value_.__l.__size_);
      }
    }

    else
    {
      MIL::MILResult::GetMessage(&v124);
      std::operator+<char>();
      v51 = std::string::append(&__str, "; ");
      v52 = *&v51->__r_.__value_.__l.__data_;
      __p.__r_.__value_.__r.__words[2] = v51->__r_.__value_.__r.__words[2];
      *&__p.__r_.__value_.__l.__data_ = v52;
      v51->__r_.__value_.__l.__size_ = 0;
      v51->__r_.__value_.__r.__words[2] = 0;
      v51->__r_.__value_.__r.__words[0] = 0;
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

      std::string::append(&v135, p_p, size);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      LODWORD(__p.__r_.__value_.__l.__data_) = 1;
      std::vector<int>::push_back[abi:ne200100](&v154, &__p);
      LODWORD(__p.__r_.__value_.__l.__data_) = 1;
      std::vector<int>::push_back[abi:ne200100](&v152, &__p);
      memset(&__p, 0, sizeof(__p));
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, v154, v155, (v155 - v154) >> 2);
      v95 = 0;
      v96 = 0;
      v97 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v95, v152, v153, (v153 - v152) >> 2);
      v98 = 0;
      v99 = 0;
      v100 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v98, v150, v151, (v151 - v150) >> 2);
      v101 = 0;
      v102 = 0;
      v103 = 0;
      v104 = 0;
      v105 = 0;
      v106 = 0;
      v55 = MIL::IRObject::GetLocationPtr(a2);
      v56 = (*(*a2 + 56))(a2);
      if (v147 == v146)
      {
        std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
      }

      v57 = v56;
      v58 = MIL::IRNamedValueType::GetType(*v146);
      v59 = MIL::IRValueType::AsTensorType(v58);
      v60 = **(this + 12);
      ANEMachineIR::Validators::ValidateNePool(v55, v57, v44, v59, &__p, &__str);
      if (MIL::ValidationResult::IsGood(&__str))
      {
        std::string::basic_string[abi:ne200100]<0>(&v91, "ne_max_pool");
        MilTranslator::OpTranslator::AddOperation(this);
        if (v92 < 0)
        {
          operator delete(v91);
        }

        std::string::basic_string[abi:ne200100]<0>(&v88, "x");
        if (SHIBYTE(v149.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v87, v149.__r_.__value_.__l.__data_, v149.__r_.__value_.__l.__size_);
        }

        else
        {
          v87 = v149;
        }

        MIL::Builder::OperationBuilder::AddInput();
        if (v90)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v90);
        }

        if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v87.__r_.__value_.__l.__data_);
        }

        if (v89 < 0)
        {
          operator delete(v88);
        }

        std::string::basic_string[abi:ne200100]<0>(&v84, "kernel_sizes");
        MIL::Builder::OperationBuilder::AddInputInt32();
        if (v86)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v86);
        }

        if (v85 < 0)
        {
          operator delete(v84);
        }

        std::string::basic_string[abi:ne200100]<0>(&v81, "strides");
        MIL::Builder::OperationBuilder::AddInputInt32();
        if (v83)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v83);
        }

        if (v82 < 0)
        {
          operator delete(v81);
        }

        std::string::basic_string[abi:ne200100]<0>(&v78, "custom_pads");
        memset(&v77, 0, sizeof(v77));
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v77, v150, v151, (v151 - v150) >> 2);
        MIL::Builder::OperationBuilder::AddInputInt32();
        if (v80)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v80);
        }

        if (v77.__r_.__value_.__r.__words[0])
        {
          v77.__r_.__value_.__l.__size_ = v77.__r_.__value_.__r.__words[0];
          operator delete(v77.__r_.__value_.__l.__data_);
        }

        if (v79 < 0)
        {
          operator delete(v78);
        }

        if (v147 == v146)
        {
          std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
        }

        v72 = MIL::IRNamedValueType::GetName(*v146);
        if (*(v72 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v75, *v72, *(v72 + 8));
        }

        else
        {
          v73 = *v72;
          v75.__r_.__value_.__r.__words[2] = *(v72 + 16);
          *&v75.__r_.__value_.__l.__data_ = v73;
        }

        if (v147 == v146)
        {
          std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
        }

        MIL::IRNamedValueType::GetType(*v146);
        MIL::Builder::OperationBuilder::AddOutput();
        if (v76)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v76);
        }

        if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v75.__r_.__value_.__l.__data_);
        }

        *a3 = 0;
        std::string::basic_string[abi:ne200100]<0>((a3 + 8), &unk_259A4D977);
        if (v74.__r_.__value_.__l.__size_)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v74.__r_.__value_.__l.__size_);
        }
      }

      else
      {
        MIL::MILResult::GetMessage(&__str);
        std::operator+<char>();
        if ((v77.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v61 = &v77;
        }

        else
        {
          v61 = v77.__r_.__value_.__r.__words[0];
        }

        if ((v77.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v62 = HIBYTE(v77.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v62 = v77.__r_.__value_.__l.__size_;
        }

        std::string::append(&v135, v61, v62);
        if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v77.__r_.__value_.__l.__data_);
        }

        *a3 = 6;
        v63 = a3 + 8;
        (*(*a2 + 56))(a2);
        std::operator+<char>();
        v64 = std::string::append(&v74, "', violations: ");
        v65 = *&v64->__r_.__value_.__l.__data_;
        v77.__r_.__value_.__r.__words[2] = v64->__r_.__value_.__r.__words[2];
        *&v77.__r_.__value_.__l.__data_ = v65;
        v64->__r_.__value_.__l.__size_ = 0;
        v64->__r_.__value_.__r.__words[2] = 0;
        v64->__r_.__value_.__r.__words[0] = 0;
        if ((v135.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v66 = &v135;
        }

        else
        {
          v66 = v135.__r_.__value_.__r.__words[0];
        }

        if ((v135.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v67 = HIBYTE(v135.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v67 = v135.__r_.__value_.__l.__size_;
        }

        v68 = std::string::append(&v77, v66, v67);
        v69 = *&v68->__r_.__value_.__l.__data_;
        *(v63 + 16) = *(&v68->__r_.__value_.__l + 2);
        *v63 = v69;
        v68->__r_.__value_.__l.__size_ = 0;
        v68->__r_.__value_.__r.__words[2] = 0;
        v68->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v77.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v74.__r_.__value_.__l.__data_);
        }
      }

      MEMORY[0x259CA8F00](&__str);
      if (v98)
      {
        v99 = v98;
        operator delete(v98);
      }

      if (v95)
      {
        v96 = v95;
        operator delete(v95);
      }

      if (__p.__r_.__value_.__r.__words[0])
      {
        __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    MEMORY[0x259CA8F00](&v124);
    if (v129)
    {
      v130 = v129;
      operator delete(v129);
    }

    if (v126)
    {
      v127 = v126;
      operator delete(v126);
    }

    if (v125.__r_.__value_.__r.__words[0])
    {
      v125.__r_.__value_.__l.__size_ = v125.__r_.__value_.__r.__words[0];
      operator delete(v125.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v135.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v135.__r_.__value_.__l.__data_);
    }

    if (v136)
    {
      v137 = v136;
      operator delete(v136);
    }

    if (v140[0])
    {
      v140[1] = v140[0];
      operator delete(v140[0]);
    }

    if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__s.__r_.__value_.__l.__data_);
    }

    if (v144)
    {
      v145 = v144;
      operator delete(v144);
    }

    __p.__r_.__value_.__r.__words[0] = &v146;
    std::vector<std::shared_ptr<MIL::IRParameter>>::__destroy_vector::operator()[abi:ne200100](&__p);
    if (v27)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v27);
    }

    if ((SHIBYTE(v149.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_207;
    }

    v25 = v149.__r_.__value_.__r.__words[0];
    goto LABEL_206;
  }

  if (!v12)
  {
    goto LABEL_29;
  }

LABEL_16:
  *a3 = 6;
  v14 = a3 + 8;
  std::string::basic_string[abi:ne200100]<0>(&v124, "ceil_mode");
  v15 = std::string::insert(&v124, 0, "Input '");
  v16 = *&v15->__r_.__value_.__l.__data_;
  v125.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
  *&v125.__r_.__value_.__l.__data_ = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  v17 = std::string::append(&v125, "' is not supported for ");
  v18 = *&v17->__r_.__value_.__l.__data_;
  __p.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
  *&__p.__r_.__value_.__l.__data_ = v18;
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  v17->__r_.__value_.__r.__words[0] = 0;
  v19 = (*(*a2 + 56))(a2);
  v20 = *(v19 + 23);
  if (v20 >= 0)
  {
    v21 = v19;
  }

  else
  {
    v21 = *v19;
  }

  if (v20 >= 0)
  {
    v22 = *(v19 + 23);
  }

  else
  {
    v22 = *(v19 + 8);
  }

  v23 = std::string::append(&__p, v21, v22);
  v24 = *&v23->__r_.__value_.__l.__data_;
  *(v14 + 16) = *(&v23->__r_.__value_.__l + 2);
  *v14 = v24;
  v23->__r_.__value_.__l.__size_ = 0;
  v23->__r_.__value_.__r.__words[2] = 0;
  v23->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v125.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v125.__r_.__value_.__l.__data_);
  }

  if ((SHIBYTE(v124.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_207;
  }

  v25 = v124.__r_.__value_.__r.__words[0];
LABEL_206:
  operator delete(v25);
LABEL_207:
  if (v150)
  {
    v151 = v150;
    operator delete(v150);
  }

  if (v152)
  {
    v153 = v152;
    operator delete(v152);
  }

  if (v154)
  {
    v155 = v154;
    operator delete(v154);
  }

  if (v156[0])
  {
    v156[1] = v156[0];
    operator delete(v156[0]);
  }

  if (SHIBYTE(v157.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v157.__r_.__value_.__l.__data_);
  }
}

void sub_2599229D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, void *__p, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, void *a58)
{
  if (a45 < 0)
  {
    operator delete(__p);
  }

  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  MEMORY[0x259CA8F00](&a51);
  ANEMachineIR::Validators::NePoolParamValues::~NePoolParamValues(&a58);
  MEMORY[0x259CA8F00](&STACK[0x2C8]);
  ANEMachineIR::Validators::NePoolParamValues::~NePoolParamValues(&STACK[0x300]);
  if (SLOBYTE(STACK[0x367]) < 0)
  {
    operator delete(STACK[0x350]);
  }

  v61 = STACK[0x368];
  if (STACK[0x368])
  {
    STACK[0x370] = v61;
    operator delete(v61);
  }

  v62 = STACK[0x3C0];
  if (STACK[0x3C0])
  {
    STACK[0x3C8] = v62;
    operator delete(v62);
  }

  if (SLOBYTE(STACK[0x3EF]) < 0)
  {
    operator delete(STACK[0x3D8]);
  }

  v63 = STACK[0x3F8];
  if (STACK[0x3F8])
  {
    STACK[0x400] = v63;
    operator delete(v63);
  }

  a58 = &STACK[0x410];
  std::vector<std::shared_ptr<MIL::IRParameter>>::__destroy_vector::operator()[abi:ne200100](&a58);
  if (v58)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v58);
  }

  if (*(v59 - 225) < 0)
  {
    operator delete(*(v59 - 248));
  }

  v64 = *(v59 - 224);
  if (v64)
  {
    *(v59 - 216) = v64;
    operator delete(v64);
  }

  v65 = *(v59 - 200);
  if (v65)
  {
    *(v59 - 192) = v65;
    operator delete(v65);
  }

  v66 = *(v59 - 176);
  if (v66)
  {
    *(v59 - 168) = v66;
    operator delete(v66);
  }

  v67 = *(v59 - 152);
  if (v67)
  {
    *(v59 - 144) = v67;
    operator delete(v67);
  }

  if (*(v59 - 105) < 0)
  {
    operator delete(*(v59 - 128));
  }

  _Unwind_Resume(a1);
}

void sub_259922F3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, int a57, __int16 a58, char a59, char a60)
{
  if (a60 < 0)
  {
    JUMPOUT(0x259922EE0);
  }

  JUMPOUT(0x259922EE4);
}

void sub_259922F50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, int a57, __int16 a58, char a59, char a60)
{
  if (a60 < 0)
  {
    JUMPOUT(0x259922F20);
  }

  JUMPOUT(0x259922F24);
}

uint64_t MIL::Util::Span<int const,18446744073709551615ul>::At(void *a1, unint64_t a2)
{
  if (a1[1] <= a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::range_error::range_error[abi:ne200100](exception, "index out of bounds");
    __cxa_throw(exception, off_2798E3508, MEMORY[0x277D825E0]);
  }

  return *a1 + 4 * a2;
}

void *std::vector<int>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<int>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_259923044(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<int>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a1, a2);
  }

  std::vector<MIL::Fp16>::__throw_length_error[abi:ne200100]();
}

std::string *std::pair<std::string const,std::pair<std::string,std::array<unsigned char,5ul>>>::pair[abi:ne200100]<std::string const&,std::pair<std::string,std::array<unsigned char,5ul>>&,0>(std::string *this, __int128 *a2, __int128 *a3)
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

  v7 = *(a3 + 6);
  this[2].__r_.__value_.__s.__data_[4] = *(a3 + 28);
  LODWORD(this[2].__r_.__value_.__l.__data_) = v7;
  return this;
}

void sub_259923128(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
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

const void **std::__hash_table<std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::pair<std::string,std::array<unsigned char,5ul>>>>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>>>::__construct_node_hash<std::pair<std::string const,std::pair<std::string,std::array<unsigned char,5ul>>>>();
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

void sub_259923418(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::pair<std::string,std::array<unsigned char,5ul>>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

std::string *std::pair<std::string const,std::pair<std::string,std::array<unsigned char,5ul>>>::pair[abi:ne200100](std::string *this, __int128 *a2)
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

  v5 = *(a2 + 24);
  this[1].__r_.__value_.__r.__words[2] = *(a2 + 5);
  *&this[1].__r_.__value_.__l.__data_ = v5;
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  *(a2 + 3) = 0;
  v6 = *(a2 + 12);
  this[2].__r_.__value_.__s.__data_[4] = *(a2 + 52);
  LODWORD(this[2].__r_.__value_.__l.__data_) = v6;
  return this;
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::pair<std::string,std::array<unsigned char,5ul>>>,0>(uint64_t a1)
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

void std::__shared_ptr_pointer<MIL::IRNamedValueType  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259CA9760);
}

MIL::IRNamedValueType *std::__shared_ptr_pointer<MIL::IRNamedValueType  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    MIL::IRNamedValueType::~IRNamedValueType(result);

    JUMPOUT(0x259CA9760);
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<MIL::IRNamedValueType  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<int>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2599236E4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void ANEMachineIR::H2022::NeReduce::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_259924BBC(_Unwind_Exception *a1)
{
  v4 = *(v2 - 88);
  *(v2 - 88) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x250], 0);
  _Unwind_Resume(a1);
}

void ANEMachineIR::H2022::PeReduce::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_259926728(_Unwind_Exception *a1)
{
  v4 = *(v2 - 88);
  *(v2 - 88) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x250], 0);
  _Unwind_Resume(a1);
}

void MIL::ANEMachineIR::Interpreter::NeAvgPoolCpu::Run(MIL::IROperation *a1@<X1>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v152 = *MEMORY[0x277D85DE8];
  v6 = (*(*a1 + 56))(a1);
  v7 = *(v6 + 23);
  if (v7 < 0)
  {
    if (*(v6 + 8) != 11)
    {
      goto LABEL_10;
    }

    v6 = *v6;
  }

  else if (v7 != 11)
  {
    goto LABEL_10;
  }

  if (*v6 != 0x705F6776615F656ELL || *(v6 + 3) != 0x6C6F6F705F677661)
  {
LABEL_10:
    *a3 = 1;
    v9 = a3 + 8;
    std::string::basic_string[abi:ne200100]<0>(&v140, "ne_avg_pool");
    v10 = std::string::insert(&v140, 0, "Expected '");
    v11 = *&v10->__r_.__value_.__l.__data_;
    v151.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
    *&v151.__r_.__value_.__l.__data_ = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    v12 = std::string::append(&v151, "' op. Got ");
    v13 = *&v12->__r_.__value_.__l.__data_;
    v128.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
    *&v128.__r_.__value_.__l.__data_ = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    v14 = (*(*a1 + 56))(a1);
    v15 = *(v14 + 23);
    if (v15 >= 0)
    {
      v16 = v14;
    }

    else
    {
      v16 = *v14;
    }

    if (v15 >= 0)
    {
      v17 = *(v14 + 23);
    }

    else
    {
      v17 = *(v14 + 8);
    }

    v18 = std::string::append(&v128, v16, v17);
    v19 = *&v18->__r_.__value_.__l.__data_;
    *(v9 + 16) = *(&v18->__r_.__value_.__l + 2);
    *v9 = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v128.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v128.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v151.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v151.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v140.__r_.__value_.__r.__words[2]) < 0)
    {
      v20 = v140.__r_.__value_.__r.__words[0];
LABEL_22:
      operator delete(v20);
      goto LABEL_23;
    }

    goto LABEL_23;
  }

  std::string::basic_string[abi:ne200100]<0>(&v128, "x");
  InterpretedTensorValue = MIL::ANEMachineIR::Interpreter::TryGetInterpretedTensorValue(a2, a1, &v128);
  v23 = InterpretedTensorValue;
  if ((SHIBYTE(v128.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (InterpretedTensorValue)
    {
      goto LABEL_26;
    }

LABEL_89:
    *a3 = 2;
    std::string::basic_string[abi:ne200100]<0>(&v128, "x");
    v70 = std::string::insert(&v128, 0, "No value for ");
    v71 = *&v70->__r_.__value_.__l.__data_;
    *(a3 + 24) = *(&v70->__r_.__value_.__l + 2);
    *(a3 + 8) = v71;
    v70->__r_.__value_.__l.__size_ = 0;
    v70->__r_.__value_.__r.__words[2] = 0;
    v70->__r_.__value_.__r.__words[0] = 0;
    if ((SHIBYTE(v128.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_23;
    }

    v20 = v128.__r_.__value_.__r.__words[0];
    goto LABEL_22;
  }

  operator delete(v128.__r_.__value_.__l.__data_);
  if (!v23)
  {
    goto LABEL_89;
  }

LABEL_26:
  std::string::basic_string[abi:ne200100]<0>(&v128, "kernel_sizes");
  ParameterValue = MIL::IROperation::GetParameterValue();
  MIL::IRValue::AsTensor(ParameterValue);
  Data = MIL::IRTensorValue::GetDataView<int>();
  v139 = v25;
  if (SHIBYTE(v128.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v128.__r_.__value_.__l.__data_);
    v25 = v139;
  }

  std::vector<int>::vector[abi:ne200100](&v140, v25);
  if (v140.__r_.__value_.__l.__size_ != v140.__r_.__value_.__r.__words[0])
  {
    v26 = 0;
    do
    {
      v27 = MIL::Util::Span<int const,18446744073709551615ul>::At(&Data, v26);
      v28 = v140.__r_.__value_.__r.__words[0];
      *(v140.__r_.__value_.__r.__words[0] + 4 * v26++) = *v27;
    }

    while (v26 < (v140.__r_.__value_.__l.__size_ - v28) >> 2);
  }

  std::string::basic_string[abi:ne200100]<0>(&v128, "strides");
  v29 = MIL::IROperation::GetParameterValue();
  MIL::IRValue::AsTensor(v29);
  v136 = MIL::IRTensorValue::GetDataView<int>();
  v137 = v30;
  if (SHIBYTE(v128.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v128.__r_.__value_.__l.__data_);
    v30 = v137;
  }

  std::vector<int>::vector[abi:ne200100](&v134, v30);
  if (v135 != v134)
  {
    v31 = 0;
    do
    {
      v32 = MIL::Util::Span<int const,18446744073709551615ul>::At(&v136, v31);
      v33 = v134;
      *(v134 + v31++) = *v32;
    }

    while (v31 < (v135 - v33) >> 2);
  }

  std::string::basic_string[abi:ne200100]<0>(&v128, "post_right_shift");
  v34 = MIL::IROperation::TryGetParameterValue();
  if (v34 && (*(*v34 + 40))(v34) && (v35 = MEMORY[0x259CA93E0]()) != 0)
  {
    v120 = *v35;
  }

  else
  {
    v120 = 0;
  }

  if (SHIBYTE(v128.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v128.__r_.__value_.__l.__data_);
  }

  v36 = std::string::basic_string[abi:ne200100]<0>(&v128, "post_scale");
  v124 = MIL::Fp16::FromFloat(v36, 1.0);
  v37 = MIL::IROperation::TryGetParameterValue();
  if (v37)
  {
    if ((*(*v37 + 40))(v37))
    {
      v38 = MEMORY[0x259CA93C0]();
      if (v38)
      {
        v124 = *v38;
      }
    }
  }

  if (SHIBYTE(v128.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v128.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v128, "custom_pads");
  v39 = MIL::IROperation::TryGetParameterValue();
  if (SHIBYTE(v128.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v128.__r_.__value_.__l.__data_);
  }

  v40 = std::string::basic_string[abi:ne200100]<0>(&v128, "bias");
  v123 = MIL::Fp16::FromFloat(v40, 0.0);
  v41 = MIL::IROperation::TryGetParameterValue();
  if (v41)
  {
    if ((*(*v41 + 40))(v41))
    {
      v42 = MEMORY[0x259CA93C0]();
      if (v42)
      {
        v123 = *v42;
      }
    }
  }

  if (SHIBYTE(v128.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v128.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v128, "acc_left_shift");
  v43 = MIL::IROperation::TryGetParameterValue();
  if (v43 && (*(*v43 + 40))(v43) && (v44 = MEMORY[0x259CA93E0]()) != 0)
  {
    v119 = *v44;
  }

  else
  {
    v119 = 0;
  }

  if (SHIBYTE(v128.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v128.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v128, "acc_bias_shift");
  v45 = MIL::IROperation::TryGetParameterValue();
  if (v45 && (*(*v45 + 40))(v45) && (v46 = MEMORY[0x259CA93E0]()) != 0)
  {
    v118 = *v46;
  }

  else
  {
    v118 = 0;
  }

  if (SHIBYTE(v128.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v128.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v128, "include_pads");
  v47 = MIL::IROperation::TryGetParameterValue();
  if (v47 && (*(*v47 + 40))(v47) && (v48 = MEMORY[0x259CA93F0]()) != 0)
  {
    v117 = *v48;
  }

  else
  {
    v117 = 0;
  }

  if (SHIBYTE(v128.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v128.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v128, "pre_relu");
  v49 = MIL::IROperation::TryGetParameterValue();
  if (v49 && (*(*v49 + 40))(v49) && (v50 = MEMORY[0x259CA93F0]()) != 0)
  {
    v115 = *v50;
  }

  else
  {
    v115 = 0;
  }

  if (SHIBYTE(v128.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v128.__r_.__value_.__l.__data_);
  }

  v51 = (*(*v23 + 32))(v23);
  v52 = (*(*v51 + 88))(v51);
  OutputType = MIL::IROperation::GetOutputType(a1);
  v54 = MIL::IRValueType::AsTensorType(OutputType);
  v122 = (*(*v54 + 88))(v54);
  v55 = MIL::IROperation::GetOutputType(a1);
  v56 = MIL::IRValueType::AsTensorType(v55);
  v116 = (*(*v56 + 16))(v56);
  v57 = (*(*v23 + 32))(v23);
  ANEMachineIR::Utils::GetStaticTensorShape(v57, v58, &v132);
  v121 = a2;
  v59 = MIL::IROperation::GetOutputType(a1);
  v60 = MIL::IRValueType::AsTensorType(v59);
  ANEMachineIR::Utils::GetStaticTensorShape(v60, v61, v131);
  v62 = v52;
  if (v39)
  {
    v64 = v132;
    v63 = v133;
    MIL::IRValue::AsTensor(v39);
    v65 = MIL::IRTensorValue::GetDataView<int>();
    v66 = (v63 - v64) >> 3;
    v67 = v66 - 2;
    v128.__r_.__value_.__r.__words[0] = v65;
    v128.__r_.__value_.__l.__size_ = v68;
    if (v66 == 5)
    {
      v39 = *MIL::Util::Span<int const,18446744073709551615ul>::At(&v128, 0);
      v69 = *MIL::Util::Span<int const,18446744073709551615ul>::At(&v128, 1uLL);
    }

    else
    {
      if (v67 <= 1)
      {
        v39 = 0;
        v69 = 0;
        v74 = 0;
        v75 = 0;
        v76 = 2 * v67;
        goto LABEL_96;
      }

      v39 = 0;
      v69 = 0;
    }

    v76 = 2 * v67;
    v75 = *MIL::Util::Span<int const,18446744073709551615ul>::At(&v128, v76 - 4);
    v74 = *MIL::Util::Span<int const,18446744073709551615ul>::At(&v128, v76 - 3);
LABEL_96:
    v73 = *MIL::Util::Span<int const,18446744073709551615ul>::At(&v128, v76 - 2);
    v72 = *MIL::Util::Span<int const,18446744073709551615ul>::At(&v128, v76 - 1);
    goto LABEL_97;
  }

  v72 = 0;
  v73 = 0;
  v74 = 0;
  v75 = 0;
  v69 = 0;
LABEL_97:
  v130[0] = v39;
  v130[1] = v69;
  v130[2] = v75;
  v130[3] = v74;
  v130[4] = v73;
  v130[5] = v72;
  if (v39 || v69 || v75 || v74 || v73 || v72)
  {
    *a3 = 3;
    std::string::basic_string[abi:ne200100]<0>((a3 + 8), "Unimplemented pad: rdar://84906152");
    goto LABEL_160;
  }

  *&v128.__r_.__value_.__r.__words[1] = 0uLL;
  v129 = 0;
  MIL::ANEMachineIR::Interpreter::GetCpuNeActivationFunction(a1, &v128, &v151);
  if (LODWORD(v128.__r_.__value_.__l.__data_))
  {
    *a3 = v128.__r_.__value_.__l.__data_;
    *(a3 + 8) = *&v128.__r_.__value_.__r.__words[1];
    *(a3 + 24) = v129;
    *&v128.__r_.__value_.__r.__words[1] = 0uLL;
    v129 = 0;
    goto LABEL_158;
  }

  switch(v62)
  {
    case 14:
      switch(v122)
      {
        case 14:
          v106 = MIL::IRTensorValue::GetDataView<unsigned char>();
          std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v146, &v151);
          std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v146);
          (*(*a1 + 200))(&v125, a1);
          v107 = v125;
          if (v126 == v125)
          {
            std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
          }

          v108 = MIL::IROperation::GetOutputType(a1);
          MIL::IRValueType::AsTensorType(v108);
          MIL::IRTensorValueType::MakeUInt8Value();
          MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(v121, v107, &v141);
          v109 = v141;
          v141 = 0;
          if (v109)
          {
            (*(*v109 + 1))(v109);
          }

          goto LABEL_156;
        case 9:
          v98 = MIL::IRTensorValue::GetDataView<unsigned char>();
          std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v145, &v151);
          std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v145);
          (*(*a1 + 200))(&v125, a1);
          v99 = v125;
          if (v126 == v125)
          {
            std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
          }

          v100 = MIL::IROperation::GetOutputType(a1);
          MIL::IRValueType::AsTensorType(v100);
          MIL::IRTensorValueType::MakeInt8Value();
          MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(v121, v99, &v141);
          v101 = v141;
          v141 = 0;
          if (v101)
          {
            (*(*v101 + 1))(v101);
          }

          goto LABEL_156;
        case 4:
          v85 = MIL::IRTensorValue::GetDataView<unsigned char>();
          std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v147, &v151);
          std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v147);
          (*(*a1 + 200))(&v125, a1);
          v86 = v125;
          if (v126 == v125)
          {
            std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
          }

          v87 = MIL::IROperation::GetOutputType(a1);
          MIL::IRValueType::AsTensorType(v87);
          MIL::IRTensorValueType::MakeFloat16Value();
          MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(v121, v86, &v141);
          v88 = v141;
          v141 = 0;
          if (v88)
          {
            (*(*v88 + 1))(v88);
          }

          goto LABEL_156;
      }

LABEL_131:
      v89 = "Unimplemented output dtype";
      goto LABEL_132;
    case 9:
      switch(v122)
      {
        case 14:
          v94 = MIL::IRTensorValue::GetDataView<signed char>();
          std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v143, &v151);
          std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v143);
          (*(*a1 + 200))(&v125, a1);
          v95 = v125;
          if (v126 == v125)
          {
            std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
          }

          v96 = MIL::IROperation::GetOutputType(a1);
          MIL::IRValueType::AsTensorType(v96);
          MIL::IRTensorValueType::MakeUInt8Value();
          MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(v121, v95, &v141);
          v97 = v141;
          v141 = 0;
          if (v97)
          {
            (*(*v97 + 1))(v97);
          }

          goto LABEL_156;
        case 9:
          v90 = MIL::IRTensorValue::GetDataView<signed char>();
          std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v142, &v151);
          std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v142);
          (*(*a1 + 200))(&v125, a1);
          v91 = v125;
          if (v126 == v125)
          {
            std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
          }

          v92 = MIL::IROperation::GetOutputType(a1);
          MIL::IRValueType::AsTensorType(v92);
          MIL::IRTensorValueType::MakeInt8Value();
          MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(v121, v91, &v141);
          v93 = v141;
          v141 = 0;
          if (v93)
          {
            (*(*v93 + 1))(v93);
          }

          goto LABEL_156;
        case 4:
          v81 = MIL::IRTensorValue::GetDataView<signed char>();
          std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v144, &v151);
          std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v144);
          (*(*a1 + 200))(&v125, a1);
          v82 = v125;
          if (v126 == v125)
          {
            std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
          }

          v83 = MIL::IROperation::GetOutputType(a1);
          MIL::IRValueType::AsTensorType(v83);
          MIL::IRTensorValueType::MakeFloat16Value();
          MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(v121, v82, &v141);
          v84 = v141;
          v141 = 0;
          if (v84)
          {
            (*(*v84 + 1))(v84);
          }

          goto LABEL_156;
      }

      goto LABEL_131;
    case 4:
      switch(v122)
      {
        case 14:
          v110 = MIL::IRTensorValue::GetDataView<MIL::Fp16>();
          std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v149, &v151);
          std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v149);
          (*(*a1 + 200))(&v125, a1);
          v111 = v125;
          if (v126 == v125)
          {
            std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
          }

          v112 = MIL::IROperation::GetOutputType(a1);
          MIL::IRValueType::AsTensorType(v112);
          MIL::IRTensorValueType::MakeUInt8Value();
          MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(v121, v111, &v141);
          v113 = v141;
          v141 = 0;
          if (v113)
          {
            (*(*v113 + 1))(v113);
          }

          goto LABEL_156;
        case 9:
          v102 = MIL::IRTensorValue::GetDataView<MIL::Fp16>();
          std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v148, &v151);
          std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v148);
          (*(*a1 + 200))(&v125, a1);
          v103 = v125;
          if (v126 == v125)
          {
            std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
          }

          v104 = MIL::IROperation::GetOutputType(a1);
          MIL::IRValueType::AsTensorType(v104);
          MIL::IRTensorValueType::MakeInt8Value();
          MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(v121, v103, &v141);
          v105 = v141;
          v141 = 0;
          if (v105)
          {
            (*(*v105 + 1))(v105);
          }

          goto LABEL_156;
        case 4:
          v77 = MIL::IRTensorValue::GetDataView<MIL::Fp16>();
          std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v150, &v151);
          std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v150);
          (*(*a1 + 200))(&v125, a1);
          v78 = v125;
          if (v126 == v125)
          {
            std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
          }

          v79 = MIL::IROperation::GetOutputType(a1);
          MIL::IRValueType::AsTensorType(v79);
          MIL::IRTensorValueType::MakeFloat16Value();
          MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(v121, v78, &v141);
          v80 = v141;
          v141 = 0;
          if (v80)
          {
            (*(*v80 + 1))(v80);
          }

LABEL_156:
          v141 = &v125;
          std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v141);
          *a3 = 0;
          std::string::basic_string[abi:ne200100]<0>((a3 + 8), &unk_259A4D977);
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

          goto LABEL_158;
      }

      goto LABEL_131;
  }

  v89 = "Unimplemented input dtype";
LABEL_132:
  *a3 = 3;
  std::string::basic_string[abi:ne200100]<0>((a3 + 8), v89);
LABEL_158:
  std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](&v151);
  if (SHIBYTE(v129) < 0)
  {
    operator delete(v128.__r_.__value_.__l.__size_);
  }

LABEL_160:
  if (v131[0])
  {
    v131[1] = v131[0];
    operator delete(v131[0]);
  }

  if (v132)
  {
    v133 = v132;
    operator delete(v132);
  }

  if (v134)
  {
    v135 = v134;
    operator delete(v134);
  }

  v20 = v140.__r_.__value_.__r.__words[0];
  if (v140.__r_.__value_.__r.__words[0])
  {
    v140.__r_.__value_.__l.__size_ = v140.__r_.__value_.__r.__words[0];
    goto LABEL_22;
  }

LABEL_23:
  v21 = *MEMORY[0x277D85DE8];
}

void sub_259928488(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, void *a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, void *a52)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v52 - 128);
  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (a39)
  {
    operator delete(a39);
  }

  if (a42)
  {
    operator delete(a42);
  }

  if (a45)
  {
    operator delete(a45);
  }

  if (a52)
  {
    operator delete(a52);
  }

  _Unwind_Resume(a1);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValueAvgPool<MIL::Fp16,MIL::Fp16>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, int *a7@<X6>, int a8@<W7>, void *a9@<X8>, char a10, char a11, int a12, __int16 a13, int a14, __int16 a15, int a16, char a17, char a18, uint64_t a19)
{
  v144 = *MEMORY[0x277D85DE8];
  v139 = a13;
  v138 = a15;
  a9[1] = 0;
  a9[2] = 0;
  *a9 = 0;
  std::vector<MIL::Fp16>::resize(a9, a2);
  v24 = *a3;
  v25 = a3[1];
  v26 = v25 - *a3;
  if (v26 != a4[1] - *a4)
  {
    v100 = "x_rank == o_shape.size()";
    v101 = 68;
    goto LABEL_115;
  }

  v27 = v26 >> 3;
  v28 = *a5;
  v29 = a5[1];
  v30 = v29 - *a5;
  if (v27 - 1 != v30 >> 2)
  {
    v100 = "kernel_sizes.size() == num_spatial_dims + 1";
    v101 = 69;
    goto LABEL_115;
  }

  v31 = *a6;
  v32 = a6[1];
  if (v32 - *a6 != v30)
  {
    v100 = "strides.size() == num_spatial_dims + 1";
    v101 = 70;
    goto LABEL_115;
  }

  if (*(v29 - 4) != *(v32 - 4))
  {
    v100 = "kernel_sizes.back() == strides.back()";
    v101 = 71;
LABEL_115:
    __assert_rtn("ComputeValueAvgPool", "NePoolCpu.cpp", v101, v100);
  }

  v33 = v27 - 2;
  v34 = v28 + 4 * v27;
  v35 = v31 + 4 * v27;
  if (v27 == 5)
  {
    v117 = *(v34 - 20);
    v36 = (v34 - 12);
    v103 = *(v35 - 20);
    v37 = 2;
LABEL_9:
    v122 = *(v34 - 16);
    v104 = *(v35 - 16);
    v38 = 1;
    goto LABEL_11;
  }

  v37 = v27 - 3;
  v36 = (v28 + 4 * (v27 - 3));
  v103 = 1;
  if (v33 > 1)
  {
    v117 = 1;
    goto LABEL_9;
  }

  v38 = 0;
  v117 = 1;
  v122 = 1;
  v104 = 1;
LABEL_11:
  v128 = *(v28 + 4 * v33);
  v105 = *(v31 + 4 * v37);
  v121 = *v36;
  v109 = *(v31 + 4 * v33);
  v135 = 0;
  v136 = 0;
  v137 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v135, v24, v25, v27);
  v132 = 0;
  v133 = 0;
  v134 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v132, *a4, a4[1], (a4[1] - *a4) >> 3);
  if (v27 == 3)
  {
    *__e = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v135, v135 + 8, __e, v142, 2);
    *__e = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v132, v132 + 8, __e, v142, 2);
  }

  else if (v27 == 4)
  {
    *__e = 1;
    std::vector<unsigned long long>::insert(&v135, v135 + 8, __e);
    *__e = 1;
    std::vector<unsigned long long>::insert(&v132, v132 + 8, __e);
  }

  MIL::Fp16::GetFloat(&v139);
  v40 = v39;
  MIL::Fp16::GetFloat(&v138);
  v42 = a17;
  if (v27 == 5)
  {
    v40 = v40 * v117;
    if (a17)
    {
      v41 = v41 / v117;
    }
  }

  if (v38)
  {
    v43 = v41 / v122;
  }

  else
  {
    v43 = v41;
  }

  if (v38)
  {
    v44 = v40 * v122;
  }

  else
  {
    v44 = v40;
  }

  v45 = v44 * v121;
  v46 = *v132;
  v106 = *(v132 + 1);
  v107 = *(v132 + 2);
  v108 = *(v132 + 3);
  v114 = *(v132 + 4);
  v116 = *(v135 + 1);
  v120 = *(v135 + 2);
  v124 = *(v135 + 3);
  v140[0] = &unk_286AADFF8;
  v140[3] = v140;
  if (a18)
  {
    *__e = &unk_286AAE088;
    v143 = __e;
    std::__function::__value_func<MIL::Fp16 ()(MIL::Fp16)>::swap[abi:ne200100](__e, v140);
    std::__function::__value_func<MIL::Fp16 ()(MIL::Fp16)>::~__value_func[abi:ne200100](__e);
  }

  v47 = ldexp(1.0, a8 + 20);
  v48 = ldexp(1.0, a8 + 20 + a10);
  v49 = v45 * v48;
  v50 = llroundf(v49);
  if (fabsf(v49) < 1.0)
  {
    v50 = 0;
  }

  v110 = v50;
  v51 = exp2(-(a8 + 20 + a11));
  v52 = a7;
  v102 = v46;
  if (v46)
  {
    v53 = 0;
    v54 = v43 / v121;
    v55 = v47;
    v56 = v51 * v54;
    v57 = v128;
    if (v128 <= 1)
    {
      v57 = 1;
    }

    v125 = v57;
    v58 = v121;
    if (v121 <= 1)
    {
      v58 = 1;
    }

    v129 = v58;
    v59 = v56;
    while (!v106)
    {
LABEL_105:
      if (++v53 == v102)
      {
        goto LABEL_106;
      }
    }

    v112 = 0;
    while (!v107)
    {
LABEL_104:
      if (++v112 == v106)
      {
        goto LABEL_105;
      }
    }

    v113 = 0;
    while (!v108)
    {
LABEL_103:
      if (++v113 == v107)
      {
        goto LABEL_104;
      }
    }

    v115 = 0;
    while (!v114)
    {
LABEL_102:
      if (++v115 == v108)
      {
        goto LABEL_103;
      }
    }

    v126 = 0;
    v60 = 0;
    while (1)
    {
      if (v117)
      {
        v61 = 0;
        v62 = 0;
        v63 = 0;
        v131 = v110;
        while (1)
        {
          v64 = v61 + v112 * v103;
          if ((v42 & 1) == 0 && (v64 < *v52 || v64 >= v116 - v52[1]))
          {
            goto LABEL_85;
          }

          v118 = v61;
          v119 = v62;
          if (v122)
          {
            break;
          }

LABEL_82:
          v61 = v118;
          v62 = v119 + 1;
          v52 = a7;
LABEL_85:
          if (++v61 == v117)
          {
            goto LABEL_88;
          }
        }

        v65 = 0;
        while (2)
        {
          v66 = v65 + v113 * v104;
          v123 = v65;
          if (v42)
          {
            if (v121)
            {
              goto LABEL_55;
            }

LABEL_81:
            v65 = v123 + 1;
            v42 = a17;
            if (v123 + 1 == v122)
            {
              goto LABEL_82;
            }

            continue;
          }

          break;
        }

        if (v66 < a7[2])
        {
          goto LABEL_81;
        }

        if (v66 >= v120 - a7[3] || v121 == 0)
        {
          goto LABEL_81;
        }

LABEL_55:
        v68 = 0;
        while (2)
        {
          v69 = v68 + v115 * v105;
          if (a17)
          {
            if (!v128)
            {
              goto LABEL_80;
            }

LABEL_64:
            v72 = v125;
            v71 = v126;
            do
            {
              v74 = std::function<MIL::Fp16 ()(MIL::Fp16)>::operator()(v140, *(a1 + 2 * Index));
              if (!v63)
              {
                LOWORD(__e[0]) = v74;
                MIL::Fp16::GetFloat(__e);
                v76 = v75;
                v77 = ilogbf(v75);
                if (v77 <= -14)
                {
                  v78 = -14;
                }

                else
                {
                  v78 = v77;
                }

                v79 = ilogbf(1.0);
                if (v79 <= -14)
                {
                  v80 = -14;
                }

                else
                {
                  v80 = v79;
                }

                if (v78 + a8 + v80 >= -20)
                {
                  v81 = llroundf(v76 * v55) + v131;
                  if (v81 <= 0x7FFFFFFF)
                  {
                    v82 = v81 < 0xFFFFFFFF80000000;
                    if (v81 < 0xFFFFFFFF80000000)
                    {
                      LODWORD(v81) = -8388608;
                    }

                    v131 = v81;
                    v63 = 2 * v82;
                  }

                  else
                  {
                    v63 = 1;
                    v131 = 2139095040;
                  }
                }

                else
                {
                  v63 = 0;
                }
              }

              ++v71;
              --v72;
            }

            while (v72);
          }

          else if (v69 >= a7[4] && v69 < v124 - a7[5] && v128 != 0)
          {
            goto LABEL_64;
          }

LABEL_80:
          if (++v68 == v129)
          {
            goto LABEL_81;
          }

          continue;
        }
      }

      v63 = 0;
      v62 = 0;
      v131 = v110;
LABEL_88:
      LOWORD(__e[0]) = MIL::ANEMachineIR::Interpreter::RecipTableRaw[v62];
      MIL::Fp16::GetFloat(__e);
      v84 = v83 * v59;
      v85 = 0.0;
      if (v84 == 0.0)
      {
        if (v63)
        {
          goto LABEL_90;
        }
      }

      else
      {
        __e[0] = 0;
        v87 = frexp(v84, __e);
        v88 = ldexp(v87, 11);
        v85 = ldexp(round(v88), __e[0] - 11);
        if (v63)
        {
LABEL_90:
          v86 = INFINITY;
          if (v63 == 2)
          {
            v86 = -INFINITY;
          }

          goto LABEL_96;
        }
      }

      if (!v131)
      {
        v91 = 0.0;
        goto LABEL_97;
      }

      v86 = v131;
LABEL_96:
      __e[0] = 0;
      v89 = frexp(v86, __e);
      v90 = ldexp(v89, 11);
      v91 = ldexp(round(v90), __e[0] - 11);
LABEL_97:
      v92 = v85 * v91;
      v93 = 0.0;
      if (v92 != 0.0)
      {
        __e[0] = 0;
        v94 = frexp(v92, __e);
        v95 = ldexp(v94, 11);
        v93 = ldexp(round(v95), __e[0] - 11);
      }

      v96 = std::function<float ()(float)>::operator()(a19, v93);
      v98 = MIL::Fp16::FromFloat(v96, v97);
      v126 += v109;
      if (v60 == v114)
      {
        goto LABEL_102;
      }
    }
  }

LABEL_106:
  std::__function::__value_func<MIL::Fp16 ()(MIL::Fp16)>::~__value_func[abi:ne200100](v140);
  if (v132)
  {
    v133 = v132;
    operator delete(v132);
  }

  if (v135)
  {
    v136 = v135;
    operator delete(v135);
  }

  v99 = *MEMORY[0x277D85DE8];
}

void sub_2599290F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v21 = *(v19 - 248);
  if (v21)
  {
    *(v19 - 240) = v21;
    operator delete(v21);
  }

  v22 = *(v19 - 224);
  if (v22)
  {
    *(v19 - 216) = v22;
    operator delete(v22);
  }

  v23 = *a19;
  if (*a19)
  {
    *(a19 + 8) = v23;
    operator delete(v23);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValueAvgPool<unsigned char,MIL::Fp16>(uint64_t a1@<X0>, size_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, int *a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, char a10, char a11, uint64_t a12, uint64_t a13, char a14, char a15, uint64_t a16)
{
  v141 = *MEMORY[0x277D85DE8];
  v136 = a12;
  v135 = a13;
  *(a9 + 8) = 0;
  *(a9 + 16) = 0;
  *a9 = 0;
  if (a2)
  {
    std::vector<unsigned char>::__append(a9, a2);
  }

  v21 = *a3;
  v22 = a3[1];
  v23 = v22 - *a3;
  if (v23 != a4[1] - *a4)
  {
    v97 = "x_rank == o_shape.size()";
    v98 = 68;
    goto LABEL_124;
  }

  v24 = v23 >> 3;
  v25 = *a5;
  v26 = a5[1];
  v27 = v26 - *a5;
  if (v24 - 1 != v27 >> 2)
  {
    v97 = "kernel_sizes.size() == num_spatial_dims + 1";
    v98 = 69;
    goto LABEL_124;
  }

  v28 = *a6;
  v29 = a6[1];
  if (v29 - *a6 != v27)
  {
    v97 = "strides.size() == num_spatial_dims + 1";
    v98 = 70;
    goto LABEL_124;
  }

  if (*(v26 - 4) != *(v29 - 4))
  {
    v97 = "kernel_sizes.back() == strides.back()";
    v98 = 71;
LABEL_124:
    __assert_rtn("ComputeValueAvgPool", "NePoolCpu.cpp", v98, v97);
  }

  v30 = v24 - 2;
  v31 = v25 + 4 * v24;
  v32 = v28 + 4 * v24;
  if (v24 == 5)
  {
    v114 = *(v31 - 20);
    v33 = (v31 - 12);
    v100 = *(v32 - 20);
    v34 = 2;
LABEL_11:
    v119 = *(v31 - 16);
    v101 = *(v32 - 16);
    v35 = 1;
    goto LABEL_13;
  }

  v34 = v24 - 3;
  v33 = (v25 + 4 * (v24 - 3));
  v100 = 1;
  if (v30 > 1)
  {
    v114 = 1;
    goto LABEL_11;
  }

  v35 = 0;
  v114 = 1;
  v119 = 1;
  v101 = 1;
LABEL_13:
  v125 = *(v25 + 4 * v30);
  v102 = *(v28 + 4 * v34);
  v118 = *v33;
  v106 = *(v28 + 4 * v30);
  v132 = 0;
  v133 = 0;
  v134 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v132, v21, v22, v24);
  v129 = 0;
  v130 = 0;
  v131 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v129, *a4, a4[1], (a4[1] - *a4) >> 3);
  if (v24 == 3)
  {
    *__e = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v132, v132 + 8, __e, v139, 2);
    *__e = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v129, v129 + 8, __e, v139, 2);
  }

  else if (v24 == 4)
  {
    *__e = 1;
    std::vector<unsigned long long>::insert(&v132, v132 + 8, __e);
    *__e = 1;
    std::vector<unsigned long long>::insert(&v129, v129 + 8, __e);
  }

  MIL::Fp16::GetFloat(&v136);
  v37 = v36;
  MIL::Fp16::GetFloat(&v135);
  v39 = a14;
  if (v24 == 5)
  {
    v37 = v37 * v114;
    if (a14)
    {
      v38 = v38 / v114;
    }
  }

  if (v35)
  {
    v40 = v38 / v119;
  }

  else
  {
    v40 = v38;
  }

  if (v35)
  {
    v41 = v37 * v119;
  }

  else
  {
    v41 = v37;
  }

  v42 = v41 * v118;
  v43 = *v129;
  v103 = *(v129 + 1);
  v104 = *(v129 + 2);
  v105 = *(v129 + 3);
  v111 = *(v129 + 4);
  v113 = *(v132 + 1);
  v117 = *(v132 + 2);
  v121 = *(v132 + 3);
  v137[0] = &unk_286AAE108;
  v137[3] = v137;
  if (a15)
  {
    *__e = &unk_286AAE188;
    v140 = __e;
    std::__function::__value_func<MIL::Fp16 ()(MIL::Fp16)>::swap[abi:ne200100](__e, v137);
    std::__function::__value_func<MIL::Fp16 ()(MIL::Fp16)>::~__value_func[abi:ne200100](__e);
  }

  v44 = ldexp(1.0, a8 + 20);
  v45 = ldexp(1.0, a8 + 20 + a10);
  v46 = v42 * v45;
  v47 = llroundf(v46);
  if (fabsf(v46) < 1.0)
  {
    v47 = 0;
  }

  v107 = v47;
  v48 = exp2(-(a8 + 20 + a11));
  v49 = a7;
  v99 = v43;
  if (v43)
  {
    v50 = 0;
    v51 = v40 / v118;
    v52 = v44;
    v53 = v48 * v51;
    v54 = v125;
    if (v125 <= 1)
    {
      v54 = 1;
    }

    v122 = v54;
    v55 = v118;
    if (v118 <= 1)
    {
      v55 = 1;
    }

    v126 = v55;
    v56 = v53;
    while (!v103)
    {
LABEL_114:
      if (++v50 == v99)
      {
        goto LABEL_115;
      }
    }

    v109 = 0;
    while (!v104)
    {
LABEL_113:
      if (++v109 == v103)
      {
        goto LABEL_114;
      }
    }

    v110 = 0;
    while (!v105)
    {
LABEL_112:
      if (++v110 == v104)
      {
        goto LABEL_113;
      }
    }

    v112 = 0;
    while (!v111)
    {
LABEL_111:
      if (++v112 == v105)
      {
        goto LABEL_112;
      }
    }

    v123 = 0;
    v57 = 0;
    while (1)
    {
      if (v114)
      {
        v58 = 0;
        v59 = 0;
        v60 = 0;
        v128 = v107;
        while (1)
        {
          v61 = v58 + v109 * v100;
          if ((v39 & 1) == 0 && (v61 < *v49 || v61 >= v113 - v49[1]))
          {
            goto LABEL_87;
          }

          v115 = v58;
          v116 = v59;
          if (v119)
          {
            break;
          }

LABEL_84:
          v58 = v115;
          v59 = v116 + 1;
          v49 = a7;
LABEL_87:
          if (++v58 == v114)
          {
            goto LABEL_90;
          }
        }

        v62 = 0;
        while (2)
        {
          v63 = v62 + v110 * v101;
          v120 = v62;
          if (v39)
          {
            if (v118)
            {
              goto LABEL_57;
            }

LABEL_83:
            v62 = v120 + 1;
            v39 = a14;
            if (v120 + 1 == v119)
            {
              goto LABEL_84;
            }

            continue;
          }

          break;
        }

        if (v63 < a7[2])
        {
          goto LABEL_83;
        }

        if (v63 >= v117 - a7[3] || v118 == 0)
        {
          goto LABEL_83;
        }

LABEL_57:
        v65 = 0;
        while (2)
        {
          v66 = v65 + v112 * v102;
          if (a14)
          {
            if (!v125)
            {
              goto LABEL_82;
            }

LABEL_66:
            v69 = v122;
            v68 = v123;
            do
            {
              v71 = std::function<MIL::Fp16 ()(MIL::Fp16)>::operator()(v137, *(a1 + 2 * Index));
              if (!v60)
              {
                LOWORD(__e[0]) = v71;
                MIL::Fp16::GetFloat(__e);
                v73 = v72;
                v74 = ilogbf(v72);
                if (v74 <= -14)
                {
                  v75 = -14;
                }

                else
                {
                  v75 = v74;
                }

                v76 = ilogbf(1.0);
                if (v76 <= -14)
                {
                  v77 = -14;
                }

                else
                {
                  v77 = v76;
                }

                if (v75 + a8 + v77 >= -20)
                {
                  v78 = llroundf(v73 * v52) + v128;
                  if (v78 <= 0x7FFFFFFF)
                  {
                    v79 = v78 < 0xFFFFFFFF80000000;
                    if (v78 < 0xFFFFFFFF80000000)
                    {
                      LODWORD(v78) = -8388608;
                    }

                    v128 = v78;
                    v60 = 2 * v79;
                  }

                  else
                  {
                    v60 = 1;
                    v128 = 2139095040;
                  }
                }

                else
                {
                  v60 = 0;
                }
              }

              ++v68;
              --v69;
            }

            while (v69);
          }

          else if (v66 >= a7[4] && v66 < v121 - a7[5] && v125 != 0)
          {
            goto LABEL_66;
          }

LABEL_82:
          if (++v65 == v126)
          {
            goto LABEL_83;
          }

          continue;
        }
      }

      v60 = 0;
      v59 = 0;
      v128 = v107;
LABEL_90:
      LOWORD(__e[0]) = MIL::ANEMachineIR::Interpreter::RecipTableRaw[v59];
      MIL::Fp16::GetFloat(__e);
      v81 = v80 * v56;
      v82 = 0.0;
      if (v81 == 0.0)
      {
        if (v60)
        {
          goto LABEL_92;
        }
      }

      else
      {
        __e[0] = 0;
        v84 = frexp(v81, __e);
        v85 = ldexp(v84, 11);
        v82 = ldexp(round(v85), __e[0] - 11);
        if (v60)
        {
LABEL_92:
          v83 = INFINITY;
          if (v60 == 2)
          {
            v83 = -INFINITY;
          }

          goto LABEL_98;
        }
      }

      if (!v128)
      {
        v88 = 0.0;
        goto LABEL_99;
      }

      v83 = v128;
LABEL_98:
      __e[0] = 0;
      v86 = frexp(v83, __e);
      v87 = ldexp(v86, 11);
      v88 = ldexp(round(v87), __e[0] - 11);
LABEL_99:
      v89 = v82 * v88;
      v90 = 0.0;
      if (v89 != 0.0)
      {
        __e[0] = 0;
        v91 = frexp(v89, __e);
        v92 = ldexp(v91, 11);
        v90 = ldexp(round(v92), __e[0] - 11);
      }

      std::function<float ()(float)>::operator()(a16, v90);
      if (v93 == INFINITY)
      {
        LOBYTE(v94) = -1;
      }

      else if (v93 == -INFINITY)
      {
        LOBYTE(v94) = 0;
      }

      else
      {
        v95 = llroundf(v93);
        if (v95 >= 255)
        {
          v95 = 255;
        }

        v94 = v95 & ~(v95 >> 31);
      }

      v123 += v106;
      if (v57 == v111)
      {
        goto LABEL_111;
      }
    }
  }

LABEL_115:
  std::__function::__value_func<MIL::Fp16 ()(MIL::Fp16)>::~__value_func[abi:ne200100](v137);
  if (v129)
  {
    v130 = v129;
    operator delete(v129);
  }

  if (v132)
  {
    v133 = v132;
    operator delete(v132);
  }

  v96 = *MEMORY[0x277D85DE8];
}

void sub_259929A90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v21 = *(v19 - 248);
  if (v21)
  {
    *(v19 - 240) = v21;
    operator delete(v21);
  }

  v22 = *(v19 - 224);
  if (v22)
  {
    *(v19 - 216) = v22;
    operator delete(v22);
  }

  v23 = *a19;
  if (*a19)
  {
    *(a19 + 8) = v23;
    operator delete(v23);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValueAvgPool<signed char,MIL::Fp16>(uint64_t a1@<X0>, size_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, int *a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, char a10, char a11, uint64_t a12, uint64_t a13, char a14, char a15, uint64_t a16)
{
  v141 = *MEMORY[0x277D85DE8];
  v136 = a12;
  v135 = a13;
  *(a9 + 8) = 0;
  *(a9 + 16) = 0;
  *a9 = 0;
  if (a2)
  {
    std::vector<unsigned char>::__append(a9, a2);
  }

  v21 = *a3;
  v22 = a3[1];
  v23 = v22 - *a3;
  if (v23 != a4[1] - *a4)
  {
    v97 = "x_rank == o_shape.size()";
    v98 = 68;
    goto LABEL_126;
  }

  v24 = v23 >> 3;
  v25 = *a5;
  v26 = a5[1];
  v27 = v26 - *a5;
  if (v24 - 1 != v27 >> 2)
  {
    v97 = "kernel_sizes.size() == num_spatial_dims + 1";
    v98 = 69;
    goto LABEL_126;
  }

  v28 = *a6;
  v29 = a6[1];
  if (v29 - *a6 != v27)
  {
    v97 = "strides.size() == num_spatial_dims + 1";
    v98 = 70;
    goto LABEL_126;
  }

  if (*(v26 - 4) != *(v29 - 4))
  {
    v97 = "kernel_sizes.back() == strides.back()";
    v98 = 71;
LABEL_126:
    __assert_rtn("ComputeValueAvgPool", "NePoolCpu.cpp", v98, v97);
  }

  v30 = v24 - 2;
  v31 = v25 + 4 * v24;
  v32 = v28 + 4 * v24;
  if (v24 == 5)
  {
    v114 = *(v31 - 20);
    v33 = (v31 - 12);
    v100 = *(v32 - 20);
    v34 = 2;
LABEL_11:
    v119 = *(v31 - 16);
    v101 = *(v32 - 16);
    v35 = 1;
    goto LABEL_13;
  }

  v34 = v24 - 3;
  v33 = (v25 + 4 * (v24 - 3));
  v100 = 1;
  if (v30 > 1)
  {
    v114 = 1;
    goto LABEL_11;
  }

  v35 = 0;
  v114 = 1;
  v119 = 1;
  v101 = 1;
LABEL_13:
  v125 = *(v25 + 4 * v30);
  v102 = *(v28 + 4 * v34);
  v118 = *v33;
  v106 = *(v28 + 4 * v30);
  v132 = 0;
  v133 = 0;
  v134 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v132, v21, v22, v24);
  v129 = 0;
  v130 = 0;
  v131 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v129, *a4, a4[1], (a4[1] - *a4) >> 3);
  if (v24 == 3)
  {
    *__e = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v132, v132 + 8, __e, v139, 2);
    *__e = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v129, v129 + 8, __e, v139, 2);
  }

  else if (v24 == 4)
  {
    *__e = 1;
    std::vector<unsigned long long>::insert(&v132, v132 + 8, __e);
    *__e = 1;
    std::vector<unsigned long long>::insert(&v129, v129 + 8, __e);
  }

  MIL::Fp16::GetFloat(&v136);
  v37 = v36;
  MIL::Fp16::GetFloat(&v135);
  v39 = a14;
  if (v24 == 5)
  {
    v37 = v37 * v114;
    if (a14)
    {
      v38 = v38 / v114;
    }
  }

  if (v35)
  {
    v40 = v38 / v119;
  }

  else
  {
    v40 = v38;
  }

  if (v35)
  {
    v41 = v37 * v119;
  }

  else
  {
    v41 = v37;
  }

  v42 = v41 * v118;
  v43 = *v129;
  v103 = *(v129 + 1);
  v104 = *(v129 + 2);
  v105 = *(v129 + 3);
  v111 = *(v129 + 4);
  v113 = *(v132 + 1);
  v117 = *(v132 + 2);
  v121 = *(v132 + 3);
  v137[0] = &unk_286AAE208;
  v137[3] = v137;
  if (a15)
  {
    *__e = &unk_286AAE288;
    v140 = __e;
    std::__function::__value_func<MIL::Fp16 ()(MIL::Fp16)>::swap[abi:ne200100](__e, v137);
    std::__function::__value_func<MIL::Fp16 ()(MIL::Fp16)>::~__value_func[abi:ne200100](__e);
  }

  v44 = ldexp(1.0, a8 + 20);
  v45 = ldexp(1.0, a8 + 20 + a10);
  v46 = v42 * v45;
  v47 = llroundf(v46);
  if (fabsf(v46) < 1.0)
  {
    v47 = 0;
  }

  v107 = v47;
  v48 = exp2(-(a8 + 20 + a11));
  v49 = a7;
  v99 = v43;
  if (v43)
  {
    v50 = 0;
    v51 = v40 / v118;
    v52 = v44;
    v53 = v48 * v51;
    v54 = v125;
    if (v125 <= 1)
    {
      v54 = 1;
    }

    v122 = v54;
    v55 = v118;
    if (v118 <= 1)
    {
      v55 = 1;
    }

    v126 = v55;
    v56 = v53;
    while (!v103)
    {
LABEL_116:
      if (++v50 == v99)
      {
        goto LABEL_117;
      }
    }

    v109 = 0;
    while (!v104)
    {
LABEL_115:
      if (++v109 == v103)
      {
        goto LABEL_116;
      }
    }

    v110 = 0;
    while (!v105)
    {
LABEL_114:
      if (++v110 == v104)
      {
        goto LABEL_115;
      }
    }

    v112 = 0;
    while (!v111)
    {
LABEL_113:
      if (++v112 == v105)
      {
        goto LABEL_114;
      }
    }

    v123 = 0;
    v57 = 0;
    while (1)
    {
      if (v114)
      {
        v58 = 0;
        v59 = 0;
        v60 = 0;
        v128 = v107;
        while (1)
        {
          v61 = v58 + v109 * v100;
          if ((v39 & 1) == 0 && (v61 < *v49 || v61 >= v113 - v49[1]))
          {
            goto LABEL_87;
          }

          v115 = v58;
          v116 = v59;
          if (v119)
          {
            break;
          }

LABEL_84:
          v58 = v115;
          v59 = v116 + 1;
          v49 = a7;
LABEL_87:
          if (++v58 == v114)
          {
            goto LABEL_90;
          }
        }

        v62 = 0;
        while (2)
        {
          v63 = v62 + v110 * v101;
          v120 = v62;
          if (v39)
          {
            if (v118)
            {
              goto LABEL_57;
            }

LABEL_83:
            v62 = v120 + 1;
            v39 = a14;
            if (v120 + 1 == v119)
            {
              goto LABEL_84;
            }

            continue;
          }

          break;
        }

        if (v63 < a7[2])
        {
          goto LABEL_83;
        }

        if (v63 >= v117 - a7[3] || v118 == 0)
        {
          goto LABEL_83;
        }

LABEL_57:
        v65 = 0;
        while (2)
        {
          v66 = v65 + v112 * v102;
          if (a14)
          {
            if (!v125)
            {
              goto LABEL_82;
            }

LABEL_66:
            v69 = v122;
            v68 = v123;
            do
            {
              v71 = std::function<MIL::Fp16 ()(MIL::Fp16)>::operator()(v137, *(a1 + 2 * Index));
              if (!v60)
              {
                LOWORD(__e[0]) = v71;
                MIL::Fp16::GetFloat(__e);
                v73 = v72;
                v74 = ilogbf(v72);
                if (v74 <= -14)
                {
                  v75 = -14;
                }

                else
                {
                  v75 = v74;
                }

                v76 = ilogbf(1.0);
                if (v76 <= -14)
                {
                  v77 = -14;
                }

                else
                {
                  v77 = v76;
                }

                if (v75 + a8 + v77 >= -20)
                {
                  v78 = llroundf(v73 * v52) + v128;
                  if (v78 <= 0x7FFFFFFF)
                  {
                    v79 = v78 < 0xFFFFFFFF80000000;
                    if (v78 < 0xFFFFFFFF80000000)
                    {
                      LODWORD(v78) = -8388608;
                    }

                    v128 = v78;
                    v60 = 2 * v79;
                  }

                  else
                  {
                    v60 = 1;
                    v128 = 2139095040;
                  }
                }

                else
                {
                  v60 = 0;
                }
              }

              ++v68;
              --v69;
            }

            while (v69);
          }

          else if (v66 >= a7[4] && v66 < v121 - a7[5] && v125 != 0)
          {
            goto LABEL_66;
          }

LABEL_82:
          if (++v65 == v126)
          {
            goto LABEL_83;
          }

          continue;
        }
      }

      v60 = 0;
      v59 = 0;
      v128 = v107;
LABEL_90:
      LOWORD(__e[0]) = MIL::ANEMachineIR::Interpreter::RecipTableRaw[v59];
      MIL::Fp16::GetFloat(__e);
      v81 = v80 * v56;
      v82 = 0.0;
      if (v81 == 0.0)
      {
        if (v60)
        {
          goto LABEL_92;
        }
      }

      else
      {
        __e[0] = 0;
        v84 = frexp(v81, __e);
        v85 = ldexp(v84, 11);
        v82 = ldexp(round(v85), __e[0] - 11);
        if (v60)
        {
LABEL_92:
          v83 = INFINITY;
          if (v60 == 2)
          {
            v83 = -INFINITY;
          }

          goto LABEL_98;
        }
      }

      if (!v128)
      {
        v88 = 0.0;
        goto LABEL_99;
      }

      v83 = v128;
LABEL_98:
      __e[0] = 0;
      v86 = frexp(v83, __e);
      v87 = ldexp(v86, 11);
      v88 = ldexp(round(v87), __e[0] - 11);
LABEL_99:
      v89 = v82 * v88;
      v90 = 0.0;
      if (v89 != 0.0)
      {
        __e[0] = 0;
        v91 = frexp(v89, __e);
        v92 = ldexp(v91, 11);
        v90 = ldexp(round(v92), __e[0] - 11);
      }

      std::function<float ()(float)>::operator()(a16, v90);
      if (v93 == INFINITY)
      {
        v94 = 127;
      }

      else if (v93 == -INFINITY)
      {
        v94 = 0x80;
      }

      else
      {
        v95 = llroundf(v93);
        if (v95 >= 127)
        {
          v95 = 127;
        }

        if (v95 <= -128)
        {
          v94 = 0x80;
        }

        else
        {
          v94 = v95;
        }
      }

      v123 += v106;
      if (v57 == v111)
      {
        goto LABEL_113;
      }
    }
  }

LABEL_117:
  std::__function::__value_func<MIL::Fp16 ()(MIL::Fp16)>::~__value_func[abi:ne200100](v137);
  if (v129)
  {
    v130 = v129;
    operator delete(v129);
  }

  if (v132)
  {
    v133 = v132;
    operator delete(v132);
  }

  v96 = *MEMORY[0x277D85DE8];
}

void sub_25992A434(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v21 = *(v19 - 248);
  if (v21)
  {
    *(v19 - 240) = v21;
    operator delete(v21);
  }

  v22 = *(v19 - 224);
  if (v22)
  {
    *(v19 - 216) = v22;
    operator delete(v22);
  }

  v23 = *a19;
  if (*a19)
  {
    *(a19 + 8) = v23;
    operator delete(v23);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValueAvgPool<MIL::Fp16,unsigned char>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, int *a7@<X6>, int a8@<W7>, void *a9@<X8>, char a10, char a11, int a12, __int16 a13, int a14, __int16 a15, int a16, char a17, uint64_t a18)
{
  v141 = *MEMORY[0x277D85DE8];
  v136 = a13;
  v135 = a15;
  a9[1] = 0;
  a9[2] = 0;
  *a9 = 0;
  std::vector<MIL::Fp16>::resize(a9, a2);
  v23 = *a3;
  v24 = a3[1];
  v25 = v24 - *a3;
  if (v25 != a4[1] - *a4)
  {
    v96 = "x_rank == o_shape.size()";
    v97 = 68;
    goto LABEL_111;
  }

  v26 = v25 >> 3;
  v27 = *a5;
  v28 = a5[1];
  v29 = v28 - *a5;
  if (v26 - 1 != v29 >> 2)
  {
    v96 = "kernel_sizes.size() == num_spatial_dims + 1";
    v97 = 69;
    goto LABEL_111;
  }

  v30 = *a6;
  v31 = a6[1];
  v32 = a9;
  if (v31 - *a6 != v29)
  {
    v96 = "strides.size() == num_spatial_dims + 1";
    v97 = 70;
    goto LABEL_111;
  }

  if (*(v28 - 4) != *(v31 - 4))
  {
    v96 = "kernel_sizes.back() == strides.back()";
    v97 = 71;
LABEL_111:
    __assert_rtn("ComputeValueAvgPool", "NePoolCpu.cpp", v97, v96);
  }

  v33 = v26 - 2;
  v34 = v27 + 4 * v26;
  v35 = v30 + 4 * v26;
  if (v26 == 5)
  {
    v113 = *(v34 - 20);
    v36 = (v34 - 12);
    v99 = *(v35 - 20);
    v37 = 2;
LABEL_9:
    v118 = *(v34 - 16);
    v100 = *(v35 - 16);
    v38 = 1;
    goto LABEL_11;
  }

  v37 = v26 - 3;
  v36 = (v27 + 4 * (v26 - 3));
  v99 = 1;
  if (v33 > 1)
  {
    v113 = 1;
    goto LABEL_9;
  }

  v38 = 0;
  v113 = 1;
  v118 = 1;
  v100 = 1;
LABEL_11:
  v124 = *(v27 + 4 * v33);
  v101 = *(v30 + 4 * v37);
  v117 = *v36;
  v105 = *(v30 + 4 * v33);
  v132 = 0;
  v133 = 0;
  v134 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v132, v23, v24, v26);
  v129 = 0;
  v130 = 0;
  v131 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v129, *a4, a4[1], (a4[1] - *a4) >> 3);
  if (v26 == 3)
  {
    __src = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v132, v132 + 8, __src.i8, v139, 2);
    __src = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v129, v129 + 8, __src.i8, v139, 2);
  }

  else if (v26 == 4)
  {
    __src.i64[0] = 1;
    std::vector<unsigned long long>::insert(&v132, v132 + 8, &__src);
    __src.i64[0] = 1;
    std::vector<unsigned long long>::insert(&v129, v129 + 8, &__src);
  }

  MIL::Fp16::GetFloat(&v136);
  v40 = v39;
  MIL::Fp16::GetFloat(&v135);
  if (v26 == 5)
  {
    v40 = v40 * v113;
    if (a17)
    {
      v41 = v41 / v113;
    }
  }

  v42 = a17;
  if (v38)
  {
    v43 = v41 / v118;
  }

  else
  {
    v43 = v41;
  }

  if (v38)
  {
    v44 = v40 * v118;
  }

  else
  {
    v44 = v40;
  }

  v45 = *v129;
  v102 = *(v129 + 1);
  v103 = *(v129 + 2);
  v104 = *(v129 + 3);
  v109 = *(v129 + 4);
  v112 = *(v132 + 1);
  v116 = *(v132 + 2);
  v120 = *(v132 + 3);
  __src.i64[0] = &unk_286AAE308;
  p_src = &__src;
  v46 = v44 * v117;
  v47 = ldexp(1.0, a8);
  v48 = ldexp(1.0, a10 + a8);
  v49 = v46 * v48;
  v50 = llroundf(v49);
  if (fabsf(v49) < 1.0)
  {
    v50 = 0;
  }

  v106 = v50;
  v51 = exp2(-(a11 + a8));
  v52 = a7;
  v98 = v45;
  if (v45)
  {
    v53 = 0;
    v54 = v47;
    v55 = v51 * (v43 / v117);
    v126 = -20 - a8;
    v56 = v124;
    if (v124 <= 1)
    {
      v56 = 1;
    }

    v121 = v56;
    v57 = v117;
    if (v117 <= 1)
    {
      v57 = 1;
    }

    v125 = v57;
    v58 = v55;
    while (!v102)
    {
LABEL_101:
      if (++v53 == v98)
      {
        goto LABEL_102;
      }
    }

    v107 = 0;
    while (!v103)
    {
LABEL_100:
      if (++v107 == v102)
      {
        goto LABEL_101;
      }
    }

    v108 = 0;
    while (!v104)
    {
LABEL_99:
      if (++v108 == v103)
      {
        goto LABEL_100;
      }
    }

    v110 = 0;
    while (!v109)
    {
LABEL_98:
      if (++v110 == v104)
      {
        goto LABEL_99;
      }
    }

    v122 = 0;
    v59 = 0;
    while (1)
    {
      v111 = v59;
      if (v113)
      {
        v60 = 0;
        v61 = 0;
        v62 = 0;
        v63 = v106;
        while (1)
        {
          v64 = v60 + v107 * v99;
          if ((v42 & 1) == 0 && (v64 < *v52 || v64 >= v112 - v52[1]))
          {
            goto LABEL_81;
          }

          v114 = v60;
          v115 = v61;
          if (v118)
          {
            break;
          }

LABEL_78:
          v60 = v114;
          v61 = v115 + 1;
          v52 = a7;
LABEL_81:
          if (++v60 == v113)
          {
            goto LABEL_84;
          }
        }

        v65 = 0;
        while (2)
        {
          v119 = v65;
          v66 = v65 + v108 * v100;
          if (v42)
          {
            if (v117)
            {
              goto LABEL_53;
            }

LABEL_77:
            v65 = v119 + 1;
            v42 = a17;
            if (v119 + 1 == v118)
            {
              goto LABEL_78;
            }

            continue;
          }

          break;
        }

        if (v66 < a7[2])
        {
          goto LABEL_77;
        }

        if (v66 >= v116 - a7[3] || v117 == 0)
        {
          goto LABEL_77;
        }

LABEL_53:
        v68 = 0;
        while (2)
        {
          v69 = v68 + v110 * v101;
          if (a17)
          {
            if (!v124)
            {
              goto LABEL_76;
            }

LABEL_62:
            v71 = v121;
            v72 = v122;
            do
            {
              v74 = std::function<unsigned char ()(unsigned char)>::operator()(&__src, *(a1 + Index));
              if (!v62)
              {
                v75 = v74;
                v76 = ilogbf(1.0);
                if (v76 <= -14)
                {
                  v77 = -14;
                }

                else
                {
                  v77 = v76;
                }

                if (v77 >= v126)
                {
                  v78 = llroundf(v54 * v75) + v63;
                  if (v78 <= 0x7FFFFFFF)
                  {
                    if (v78 >= 0xFFFFFFFF80000000)
                    {
                      v63 = v78;
                    }

                    else
                    {
                      v63 = -8388608;
                    }

                    v62 = 2 * (v78 < 0xFFFFFFFF80000000);
                  }

                  else
                  {
                    v62 = 1;
                    v63 = 2139095040;
                  }
                }

                else
                {
                  v62 = 0;
                }
              }

              v32 = a9;
              ++v72;
              --v71;
            }

            while (v71);
          }

          else if (v69 >= a7[4] && v69 < v120 - a7[5] && v124 != 0)
          {
            goto LABEL_62;
          }

LABEL_76:
          if (++v68 == v125)
          {
            goto LABEL_77;
          }

          continue;
        }
      }

      v62 = 0;
      v61 = 0;
      v63 = v106;
LABEL_84:
      LOWORD(__e) = MIL::ANEMachineIR::Interpreter::RecipTableRaw[v61];
      MIL::Fp16::GetFloat(&__e);
      v80 = v79 * v58;
      v81 = 0.0;
      if (v80 == 0.0)
      {
        if (v62)
        {
          goto LABEL_86;
        }
      }

      else
      {
        __e = 0;
        v83 = frexp(v80, &__e);
        v84 = ldexp(v83, 11);
        v81 = ldexp(round(v84), __e - 11);
        if (v62)
        {
LABEL_86:
          v82 = INFINITY;
          if (v62 == 2)
          {
            v82 = -INFINITY;
          }

          goto LABEL_92;
        }
      }

      if (!v63)
      {
        v87 = 0.0;
        goto LABEL_93;
      }

      v82 = v63;
LABEL_92:
      __e = 0;
      v85 = frexp(v82, &__e);
      v86 = ldexp(v85, 11);
      v87 = ldexp(round(v86), __e - 11);
LABEL_93:
      v88 = v81 * v87;
      v89 = 0.0;
      if (v88 != 0.0)
      {
        __e = 0;
        v90 = frexp(v88, &__e);
        v91 = ldexp(v90, 11);
        v89 = ldexp(round(v91), __e - 11);
      }

      v92 = std::function<float ()(float)>::operator()(a18, v89);
      v94 = MIL::Fp16::FromFloat(v92, v93);
      v59 = v111 + 1;
      v122 += v105;
      v52 = a7;
      if (v111 + 1 == v109)
      {
        goto LABEL_98;
      }
    }
  }

LABEL_102:
  std::__function::__value_func<unsigned char ()(unsigned char)>::~__value_func[abi:ne200100](&__src);
  if (v129)
  {
    v130 = v129;
    operator delete(v129);
  }

  if (v132)
  {
    v133 = v132;
    operator delete(v132);
  }

  v95 = *MEMORY[0x277D85DE8];
}

void sub_25992AD24(_Unwind_Exception *exception_object)
{
  v4 = *(v2 - 216);
  if (v4)
  {
    *(v2 - 208) = v4;
    operator delete(v4);
  }

  v5 = *(v2 - 192);
  if (v5)
  {
    *(v2 - 184) = v5;
    operator delete(v5);
  }

  v6 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValueAvgPool<unsigned char,unsigned char>(uint64_t a1@<X0>, size_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, int *a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, char a10, char a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15)
{
  v139 = *MEMORY[0x277D85DE8];
  v134 = a12;
  v133 = a13;
  *(a9 + 8) = 0;
  *(a9 + 16) = 0;
  *a9 = 0;
  if (a2)
  {
    std::vector<unsigned char>::__append(a9, a2);
  }

  v126 = a9;
  v21 = *a3;
  v22 = a3[1];
  v23 = v22 - *a3;
  if (v23 != a4[1] - *a4)
  {
    v94 = "x_rank == o_shape.size()";
    v95 = 68;
    goto LABEL_120;
  }

  v24 = v23 >> 3;
  v25 = *a5;
  v26 = a5[1];
  v27 = v26 - *a5;
  if (v24 - 1 != v27 >> 2)
  {
    v94 = "kernel_sizes.size() == num_spatial_dims + 1";
    v95 = 69;
    goto LABEL_120;
  }

  v28 = *a6;
  v29 = a6[1];
  v30 = a9;
  if (v29 - *a6 != v27)
  {
    v94 = "strides.size() == num_spatial_dims + 1";
    v95 = 70;
    goto LABEL_120;
  }

  if (*(v26 - 4) != *(v29 - 4))
  {
    v94 = "kernel_sizes.back() == strides.back()";
    v95 = 71;
LABEL_120:
    __assert_rtn("ComputeValueAvgPool", "NePoolCpu.cpp", v95, v94);
  }

  v31 = v24 - 2;
  v32 = v25 + 4 * v24;
  v33 = v28 + 4 * v24;
  if (v24 == 5)
  {
    v111 = *(v32 - 20);
    v34 = (v32 - 12);
    v97 = *(v33 - 20);
    v35 = 2;
LABEL_11:
    v116 = *(v32 - 16);
    v98 = *(v33 - 16);
    v36 = 1;
    goto LABEL_13;
  }

  v35 = v24 - 3;
  v34 = (v25 + 4 * (v24 - 3));
  v97 = 1;
  if (v31 > 1)
  {
    v111 = 1;
    goto LABEL_11;
  }

  v36 = 0;
  v111 = 1;
  v116 = 1;
  v98 = 1;
LABEL_13:
  v122 = *(v25 + 4 * v31);
  v99 = *(v28 + 4 * v35);
  v115 = *v34;
  v103 = *(v28 + 4 * v31);
  v130 = 0;
  v131 = 0;
  v132 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v130, v21, v22, v24);
  v127 = 0;
  v128 = 0;
  v129 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v127, *a4, a4[1], (a4[1] - *a4) >> 3);
  if (v24 == 3)
  {
    __src = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v130, v130 + 8, __src.i8, v137, 2);
    __src = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v127, v127 + 8, __src.i8, v137, 2);
  }

  else if (v24 == 4)
  {
    __src.i64[0] = 1;
    std::vector<unsigned long long>::insert(&v130, v130 + 8, &__src);
    __src.i64[0] = 1;
    std::vector<unsigned long long>::insert(&v127, v127 + 8, &__src);
  }

  MIL::Fp16::GetFloat(&v134);
  v38 = v37;
  MIL::Fp16::GetFloat(&v133);
  if (v24 == 5)
  {
    v38 = v38 * v111;
    if (a14)
    {
      v39 = v39 / v111;
    }
  }

  v40 = a14;
  if (v36)
  {
    v41 = v39 / v116;
  }

  else
  {
    v41 = v39;
  }

  if (v36)
  {
    v42 = v38 * v116;
  }

  else
  {
    v42 = v38;
  }

  v43 = *v127;
  v100 = *(v127 + 1);
  v101 = *(v127 + 2);
  v102 = *(v127 + 3);
  v107 = *(v127 + 4);
  v110 = *(v130 + 1);
  v114 = *(v130 + 2);
  v118 = *(v130 + 3);
  __src.i64[0] = &unk_286AAE398;
  p_src = &__src;
  v44 = v42 * v115;
  v45 = ldexp(1.0, a8);
  v46 = ldexp(1.0, a10 + a8);
  v47 = v44 * v46;
  v48 = llroundf(v47);
  if (fabsf(v47) < 1.0)
  {
    v48 = 0;
  }

  v104 = v48;
  v49 = exp2(-(a11 + a8));
  v50 = a7;
  v96 = v43;
  if (v43)
  {
    v51 = 0;
    v52 = v45;
    v53 = v49 * (v41 / v115);
    v124 = -20 - a8;
    v54 = v122;
    if (v122 <= 1)
    {
      v54 = 1;
    }

    v119 = v54;
    v55 = v115;
    if (v115 <= 1)
    {
      v55 = 1;
    }

    v123 = v55;
    v56 = v53;
    while (!v100)
    {
LABEL_110:
      if (++v51 == v96)
      {
        goto LABEL_111;
      }
    }

    v105 = 0;
    while (!v101)
    {
LABEL_109:
      if (++v105 == v100)
      {
        goto LABEL_110;
      }
    }

    v106 = 0;
    while (!v102)
    {
LABEL_108:
      if (++v106 == v101)
      {
        goto LABEL_109;
      }
    }

    v108 = 0;
    while (!v107)
    {
LABEL_107:
      if (++v108 == v102)
      {
        goto LABEL_108;
      }
    }

    v120 = 0;
    v57 = 0;
    while (1)
    {
      v109 = v57;
      if (v111)
      {
        v58 = 0;
        v59 = 0;
        v60 = 0;
        v61 = v104;
        while (1)
        {
          v62 = v58 + v105 * v97;
          if ((v40 & 1) == 0 && (v62 < *v50 || v62 >= v110 - v50[1]))
          {
            goto LABEL_83;
          }

          v112 = v58;
          v113 = v59;
          if (v116)
          {
            break;
          }

LABEL_80:
          v58 = v112;
          v59 = v113 + 1;
          v50 = a7;
LABEL_83:
          if (++v58 == v111)
          {
            goto LABEL_86;
          }
        }

        v63 = 0;
        while (2)
        {
          v117 = v63;
          v64 = v63 + v106 * v98;
          if (v40)
          {
            if (v115)
            {
              goto LABEL_55;
            }

LABEL_79:
            v63 = v117 + 1;
            v40 = a14;
            if (v117 + 1 == v116)
            {
              goto LABEL_80;
            }

            continue;
          }

          break;
        }

        if (v64 < a7[2])
        {
          goto LABEL_79;
        }

        if (v64 >= v114 - a7[3] || v115 == 0)
        {
          goto LABEL_79;
        }

LABEL_55:
        v66 = 0;
        while (2)
        {
          v67 = v66 + v108 * v99;
          if (a14)
          {
            if (!v122)
            {
              goto LABEL_78;
            }

LABEL_64:
            v69 = v119;
            v70 = v120;
            do
            {
              v72 = std::function<unsigned char ()(unsigned char)>::operator()(&__src, *(a1 + Index));
              if (!v60)
              {
                v73 = v72;
                v74 = ilogbf(1.0);
                if (v74 <= -14)
                {
                  v75 = -14;
                }

                else
                {
                  v75 = v74;
                }

                if (v75 >= v124)
                {
                  v76 = llroundf(v52 * v73) + v61;
                  if (v76 <= 0x7FFFFFFF)
                  {
                    if (v76 >= 0xFFFFFFFF80000000)
                    {
                      v61 = v76;
                    }

                    else
                    {
                      v61 = -8388608;
                    }

                    v60 = 2 * (v76 < 0xFFFFFFFF80000000);
                  }

                  else
                  {
                    v60 = 1;
                    v61 = 2139095040;
                  }
                }

                else
                {
                  v60 = 0;
                }
              }

              v30 = v126;
              ++v70;
              --v69;
            }

            while (v69);
          }

          else if (v67 >= a7[4] && v67 < v118 - a7[5] && v122 != 0)
          {
            goto LABEL_64;
          }

LABEL_78:
          if (++v66 == v123)
          {
            goto LABEL_79;
          }

          continue;
        }
      }

      v60 = 0;
      v59 = 0;
      v61 = v104;
LABEL_86:
      LOWORD(__e) = MIL::ANEMachineIR::Interpreter::RecipTableRaw[v59];
      MIL::Fp16::GetFloat(&__e);
      v78 = v77 * v56;
      v79 = 0.0;
      if (v78 == 0.0)
      {
        if (v60)
        {
          goto LABEL_88;
        }
      }

      else
      {
        __e = 0;
        v81 = frexp(v78, &__e);
        v82 = ldexp(v81, 11);
        v79 = ldexp(round(v82), __e - 11);
        if (v60)
        {
LABEL_88:
          v80 = INFINITY;
          if (v60 == 2)
          {
            v80 = -INFINITY;
          }

          goto LABEL_94;
        }
      }

      if (!v61)
      {
        v85 = 0.0;
        goto LABEL_95;
      }

      v80 = v61;
LABEL_94:
      __e = 0;
      v83 = frexp(v80, &__e);
      v84 = ldexp(v83, 11);
      v85 = ldexp(round(v84), __e - 11);
LABEL_95:
      v86 = v79 * v85;
      v87 = 0.0;
      if (v86 != 0.0)
      {
        __e = 0;
        v88 = frexp(v86, &__e);
        v89 = ldexp(v88, 11);
        v87 = ldexp(round(v89), __e - 11);
      }

      std::function<float ()(float)>::operator()(a15, v87);
      if (v90 == INFINITY)
      {
        LOBYTE(v91) = -1;
      }

      else if (v90 == -INFINITY)
      {
        LOBYTE(v91) = 0;
      }

      else
      {
        v92 = llroundf(v90);
        if (v92 >= 255)
        {
          v92 = 255;
        }

        v91 = v92 & ~(v92 >> 31);
      }

      v57 = v109 + 1;
      v120 += v103;
      v50 = a7;
      if (v109 + 1 == v107)
      {
        goto LABEL_107;
      }
    }
  }

LABEL_111:
  std::__function::__value_func<unsigned char ()(unsigned char)>::~__value_func[abi:ne200100](&__src);
  if (v127)
  {
    v128 = v127;
    operator delete(v127);
  }

  if (v130)
  {
    v131 = v130;
    operator delete(v130);
  }

  v93 = *MEMORY[0x277D85DE8];
}

void sub_25992B660(_Unwind_Exception *exception_object)
{
  v4 = *(v2 - 216);
  if (v4)
  {
    *(v2 - 208) = v4;
    operator delete(v4);
  }

  v5 = *(v2 - 192);
  if (v5)
  {
    *(v2 - 184) = v5;
    operator delete(v5);
  }

  v6 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValueAvgPool<signed char,unsigned char>(uint64_t a1@<X0>, size_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, int *a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, char a10, char a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15)
{
  v139 = *MEMORY[0x277D85DE8];
  v134 = a12;
  v133 = a13;
  *(a9 + 8) = 0;
  *(a9 + 16) = 0;
  *a9 = 0;
  if (a2)
  {
    std::vector<unsigned char>::__append(a9, a2);
  }

  v126 = a9;
  v21 = *a3;
  v22 = a3[1];
  v23 = v22 - *a3;
  if (v23 != a4[1] - *a4)
  {
    v94 = "x_rank == o_shape.size()";
    v95 = 68;
    goto LABEL_122;
  }

  v24 = v23 >> 3;
  v25 = *a5;
  v26 = a5[1];
  v27 = v26 - *a5;
  if (v24 - 1 != v27 >> 2)
  {
    v94 = "kernel_sizes.size() == num_spatial_dims + 1";
    v95 = 69;
    goto LABEL_122;
  }

  v28 = *a6;
  v29 = a6[1];
  v30 = a9;
  if (v29 - *a6 != v27)
  {
    v94 = "strides.size() == num_spatial_dims + 1";
    v95 = 70;
    goto LABEL_122;
  }

  if (*(v26 - 4) != *(v29 - 4))
  {
    v94 = "kernel_sizes.back() == strides.back()";
    v95 = 71;
LABEL_122:
    __assert_rtn("ComputeValueAvgPool", "NePoolCpu.cpp", v95, v94);
  }

  v31 = v24 - 2;
  v32 = v25 + 4 * v24;
  v33 = v28 + 4 * v24;
  if (v24 == 5)
  {
    v111 = *(v32 - 20);
    v34 = (v32 - 12);
    v97 = *(v33 - 20);
    v35 = 2;
LABEL_11:
    v116 = *(v32 - 16);
    v98 = *(v33 - 16);
    v36 = 1;
    goto LABEL_13;
  }

  v35 = v24 - 3;
  v34 = (v25 + 4 * (v24 - 3));
  v97 = 1;
  if (v31 > 1)
  {
    v111 = 1;
    goto LABEL_11;
  }

  v36 = 0;
  v111 = 1;
  v116 = 1;
  v98 = 1;
LABEL_13:
  v122 = *(v25 + 4 * v31);
  v99 = *(v28 + 4 * v35);
  v115 = *v34;
  v103 = *(v28 + 4 * v31);
  v130 = 0;
  v131 = 0;
  v132 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v130, v21, v22, v24);
  v127 = 0;
  v128 = 0;
  v129 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v127, *a4, a4[1], (a4[1] - *a4) >> 3);
  if (v24 == 3)
  {
    __src = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v130, v130 + 8, __src.i8, v137, 2);
    __src = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v127, v127 + 8, __src.i8, v137, 2);
  }

  else if (v24 == 4)
  {
    __src.i64[0] = 1;
    std::vector<unsigned long long>::insert(&v130, v130 + 8, &__src);
    __src.i64[0] = 1;
    std::vector<unsigned long long>::insert(&v127, v127 + 8, &__src);
  }

  MIL::Fp16::GetFloat(&v134);
  v38 = v37;
  MIL::Fp16::GetFloat(&v133);
  if (v24 == 5)
  {
    v38 = v38 * v111;
    if (a14)
    {
      v39 = v39 / v111;
    }
  }

  v40 = a14;
  if (v36)
  {
    v41 = v39 / v116;
  }

  else
  {
    v41 = v39;
  }

  if (v36)
  {
    v42 = v38 * v116;
  }

  else
  {
    v42 = v38;
  }

  v43 = *v127;
  v100 = *(v127 + 1);
  v101 = *(v127 + 2);
  v102 = *(v127 + 3);
  v107 = *(v127 + 4);
  v110 = *(v130 + 1);
  v114 = *(v130 + 2);
  v118 = *(v130 + 3);
  __src.i64[0] = &unk_286AAE418;
  p_src = &__src;
  v44 = v42 * v115;
  v45 = ldexp(1.0, a8);
  v46 = ldexp(1.0, a10 + a8);
  v47 = v44 * v46;
  v48 = llroundf(v47);
  if (fabsf(v47) < 1.0)
  {
    v48 = 0;
  }

  v104 = v48;
  v49 = exp2(-(a11 + a8));
  v50 = a7;
  v96 = v43;
  if (v43)
  {
    v51 = 0;
    v52 = v45;
    v124 = -20 - a8;
    v53 = v49 * (v41 / v115);
    v54 = v122;
    if (v122 <= 1)
    {
      v54 = 1;
    }

    v119 = v54;
    v55 = v115;
    if (v115 <= 1)
    {
      v55 = 1;
    }

    v123 = v55;
    v56 = v53;
    while (!v100)
    {
LABEL_112:
      if (++v51 == v96)
      {
        goto LABEL_113;
      }
    }

    v105 = 0;
    while (!v101)
    {
LABEL_111:
      if (++v105 == v100)
      {
        goto LABEL_112;
      }
    }

    v106 = 0;
    while (!v102)
    {
LABEL_110:
      if (++v106 == v101)
      {
        goto LABEL_111;
      }
    }

    v108 = 0;
    while (!v107)
    {
LABEL_109:
      if (++v108 == v102)
      {
        goto LABEL_110;
      }
    }

    v120 = 0;
    v57 = 0;
    while (1)
    {
      v109 = v57;
      if (v111)
      {
        v58 = 0;
        v59 = 0;
        v60 = 0;
        v61 = v104;
        while (1)
        {
          v62 = v58 + v105 * v97;
          if ((v40 & 1) == 0 && (v62 < *v50 || v62 >= v110 - v50[1]))
          {
            goto LABEL_83;
          }

          v112 = v58;
          v113 = v59;
          if (v116)
          {
            break;
          }

LABEL_80:
          v58 = v112;
          v59 = v113 + 1;
          v50 = a7;
LABEL_83:
          if (++v58 == v111)
          {
            goto LABEL_86;
          }
        }

        v63 = 0;
        while (2)
        {
          v117 = v63;
          v64 = v63 + v106 * v98;
          if (v40)
          {
            if (v115)
            {
              goto LABEL_55;
            }

LABEL_79:
            v63 = v117 + 1;
            v40 = a14;
            if (v117 + 1 == v116)
            {
              goto LABEL_80;
            }

            continue;
          }

          break;
        }

        if (v64 < a7[2])
        {
          goto LABEL_79;
        }

        if (v64 >= v114 - a7[3] || v115 == 0)
        {
          goto LABEL_79;
        }

LABEL_55:
        v66 = 0;
        while (2)
        {
          v67 = v66 + v108 * v99;
          if (a14)
          {
            if (!v122)
            {
              goto LABEL_78;
            }

LABEL_64:
            v69 = v119;
            v70 = v120;
            do
            {
              v72 = std::function<unsigned char ()(unsigned char)>::operator()(&__src, *(a1 + Index));
              if (!v60)
              {
                v73 = v72;
                v74 = ilogbf(1.0);
                if (v74 <= -14)
                {
                  v75 = -14;
                }

                else
                {
                  v75 = v74;
                }

                if (v75 >= v124)
                {
                  v76 = llroundf(v52 * v73) + v61;
                  if (v76 <= 0x7FFFFFFF)
                  {
                    if (v76 >= 0xFFFFFFFF80000000)
                    {
                      v61 = v76;
                    }

                    else
                    {
                      v61 = -8388608;
                    }

                    v60 = 2 * (v76 < 0xFFFFFFFF80000000);
                  }

                  else
                  {
                    v60 = 1;
                    v61 = 2139095040;
                  }
                }

                else
                {
                  v60 = 0;
                }
              }

              v30 = v126;
              ++v70;
              --v69;
            }

            while (v69);
          }

          else if (v67 >= a7[4] && v67 < v118 - a7[5] && v122 != 0)
          {
            goto LABEL_64;
          }

LABEL_78:
          if (++v66 == v123)
          {
            goto LABEL_79;
          }

          continue;
        }
      }

      v60 = 0;
      v59 = 0;
      v61 = v104;
LABEL_86:
      LOWORD(__e) = MIL::ANEMachineIR::Interpreter::RecipTableRaw[v59];
      MIL::Fp16::GetFloat(&__e);
      v78 = v77 * v56;
      v79 = 0.0;
      if (v78 == 0.0)
      {
        if (v60)
        {
          goto LABEL_88;
        }
      }

      else
      {
        __e = 0;
        v81 = frexp(v78, &__e);
        v82 = ldexp(v81, 11);
        v79 = ldexp(round(v82), __e - 11);
        if (v60)
        {
LABEL_88:
          v80 = INFINITY;
          if (v60 == 2)
          {
            v80 = -INFINITY;
          }

          goto LABEL_94;
        }
      }

      if (!v61)
      {
        v85 = 0.0;
        goto LABEL_95;
      }

      v80 = v61;
LABEL_94:
      __e = 0;
      v83 = frexp(v80, &__e);
      v84 = ldexp(v83, 11);
      v85 = ldexp(round(v84), __e - 11);
LABEL_95:
      v86 = v79 * v85;
      v87 = 0.0;
      if (v86 != 0.0)
      {
        __e = 0;
        v88 = frexp(v86, &__e);
        v89 = ldexp(v88, 11);
        v87 = ldexp(round(v89), __e - 11);
      }

      std::function<float ()(float)>::operator()(a15, v87);
      if (v90 == INFINITY)
      {
        v91 = 127;
      }

      else if (v90 == -INFINITY)
      {
        v91 = 0x80;
      }

      else
      {
        v92 = llroundf(v90);
        if (v92 >= 127)
        {
          v92 = 127;
        }

        if (v92 <= -128)
        {
          v91 = 0x80;
        }

        else
        {
          v91 = v92;
        }
      }

      v57 = v109 + 1;
      v120 += v103;
      v50 = a7;
      if (v109 + 1 == v107)
      {
        goto LABEL_109;
      }
    }
  }

LABEL_113:
  std::__function::__value_func<unsigned char ()(unsigned char)>::~__value_func[abi:ne200100](&__src);
  if (v127)
  {
    v128 = v127;
    operator delete(v127);
  }

  if (v130)
  {
    v131 = v130;
    operator delete(v130);
  }

  v93 = *MEMORY[0x277D85DE8];
}

void sub_25992BFA4(_Unwind_Exception *exception_object)
{
  v4 = *(v2 - 216);
  if (v4)
  {
    *(v2 - 208) = v4;
    operator delete(v4);
  }

  v5 = *(v2 - 192);
  if (v5)
  {
    *(v2 - 184) = v5;
    operator delete(v5);
  }

  v6 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValueAvgPool<MIL::Fp16,signed char>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, int *a7@<X6>, int a8@<W7>, void *a9@<X8>, char a10, char a11, int a12, __int16 a13, int a14, __int16 a15, int a16, char a17, char a18, uint64_t a19)
{
  v142 = *MEMORY[0x277D85DE8];
  v137 = a13;
  v136 = a15;
  a9[1] = 0;
  a9[2] = 0;
  *a9 = 0;
  std::vector<MIL::Fp16>::resize(a9, a2);
  v24 = *a3;
  v25 = a3[1];
  v26 = v25 - *a3;
  if (v26 != a4[1] - *a4)
  {
    v97 = "x_rank == o_shape.size()";
    v98 = 68;
    goto LABEL_113;
  }

  v27 = v26 >> 3;
  v28 = *a5;
  v29 = a5[1];
  v30 = v29 - *a5;
  if (v27 - 1 != v30 >> 2)
  {
    v97 = "kernel_sizes.size() == num_spatial_dims + 1";
    v98 = 69;
    goto LABEL_113;
  }

  v31 = *a6;
  v32 = a6[1];
  v33 = a9;
  if (v32 - *a6 != v30)
  {
    v97 = "strides.size() == num_spatial_dims + 1";
    v98 = 70;
    goto LABEL_113;
  }

  if (*(v29 - 4) != *(v32 - 4))
  {
    v97 = "kernel_sizes.back() == strides.back()";
    v98 = 71;
LABEL_113:
    __assert_rtn("ComputeValueAvgPool", "NePoolCpu.cpp", v98, v97);
  }

  v34 = v27 - 2;
  v35 = v28 + 4 * v27;
  v36 = v31 + 4 * v27;
  if (v27 == 5)
  {
    v114 = *(v35 - 20);
    v37 = (v35 - 12);
    v100 = *(v36 - 20);
    v38 = 2;
LABEL_9:
    v119 = *(v35 - 16);
    v101 = *(v36 - 16);
    v39 = 1;
    goto LABEL_11;
  }

  v38 = v27 - 3;
  v37 = (v28 + 4 * (v27 - 3));
  v100 = 1;
  if (v34 > 1)
  {
    v114 = 1;
    goto LABEL_9;
  }

  v39 = 0;
  v114 = 1;
  v119 = 1;
  v101 = 1;
LABEL_11:
  v125 = *(v28 + 4 * v34);
  v102 = *(v31 + 4 * v38);
  v118 = *v37;
  v106 = *(v31 + 4 * v34);
  v133 = 0;
  v134 = 0;
  v135 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v133, v24, v25, v27);
  v130 = 0;
  v131 = 0;
  v132 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v130, *a4, a4[1], (a4[1] - *a4) >> 3);
  if (v27 == 3)
  {
    *__e = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v133, v133 + 8, __e, v140, 2);
    *__e = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v130, v130 + 8, __e, v140, 2);
  }

  else if (v27 == 4)
  {
    *__e = 1;
    std::vector<unsigned long long>::insert(&v133, v133 + 8, __e);
    *__e = 1;
    std::vector<unsigned long long>::insert(&v130, v130 + 8, __e);
  }

  MIL::Fp16::GetFloat(&v137);
  v41 = v40;
  MIL::Fp16::GetFloat(&v136);
  if (v27 == 5)
  {
    v41 = v41 * v114;
    if (a17)
    {
      v42 = v42 / v114;
    }
  }

  if (v39)
  {
    v43 = v42 / v119;
  }

  else
  {
    v43 = v42;
  }

  if (v39)
  {
    v44 = v41 * v119;
  }

  else
  {
    v44 = v41;
  }

  v45 = v44 * v118;
  v46 = *v130;
  v103 = *(v130 + 1);
  v104 = *(v130 + 2);
  v105 = *(v130 + 3);
  v110 = *(v130 + 4);
  v113 = *(v133 + 1);
  v117 = *(v133 + 2);
  v121 = *(v133 + 3);
  v138[0] = &unk_286AAE498;
  v138[3] = v138;
  if (a18)
  {
    *__e = &unk_286AAE528;
    v141 = __e;
    std::__function::__value_func<signed char ()(signed char)>::swap[abi:ne200100](__e, v138);
    std::__function::__value_func<signed char ()(signed char)>::~__value_func[abi:ne200100](__e);
  }

  v47 = ldexp(1.0, a8);
  v48 = ldexp(1.0, a10 + a8);
  v49 = v45 * v48;
  v50 = llroundf(v49);
  if (fabsf(v49) < 1.0)
  {
    v50 = 0;
  }

  v107 = v50;
  v51 = exp2(-(a11 + a8));
  v52 = a7;
  v53 = a17;
  v99 = v46;
  if (v46)
  {
    v54 = 0;
    v55 = v47;
    v56 = v51 * (v43 / v118);
    v127 = -20 - a8;
    v57 = v125;
    if (v125 <= 1)
    {
      v57 = 1;
    }

    v122 = v57;
    v58 = v118;
    if (v118 <= 1)
    {
      v58 = 1;
    }

    v126 = v58;
    v59 = v56;
    while (!v103)
    {
LABEL_103:
      if (++v54 == v99)
      {
        goto LABEL_104;
      }
    }

    v108 = 0;
    while (!v104)
    {
LABEL_102:
      if (++v108 == v103)
      {
        goto LABEL_103;
      }
    }

    v109 = 0;
    while (!v105)
    {
LABEL_101:
      if (++v109 == v104)
      {
        goto LABEL_102;
      }
    }

    v111 = 0;
    while (!v110)
    {
LABEL_100:
      if (++v111 == v105)
      {
        goto LABEL_101;
      }
    }

    v123 = 0;
    v60 = 0;
    while (1)
    {
      v112 = v60;
      if (v114)
      {
        v61 = 0;
        v62 = 0;
        v63 = 0;
        v64 = v107;
        while (1)
        {
          v65 = v61 + v108 * v100;
          if ((v53 & 1) == 0 && (v65 < *v52 || v65 >= v113 - v52[1]))
          {
            goto LABEL_83;
          }

          v115 = v61;
          v116 = v62;
          if (v119)
          {
            break;
          }

LABEL_80:
          v61 = v115;
          v62 = v116 + 1;
          v52 = a7;
LABEL_83:
          if (++v61 == v114)
          {
            goto LABEL_86;
          }
        }

        v66 = 0;
        while (2)
        {
          v120 = v66;
          v67 = v66 + v109 * v101;
          if (v53)
          {
            if (v118)
            {
              goto LABEL_55;
            }

LABEL_79:
            v66 = v120 + 1;
            v53 = a17;
            if (v120 + 1 == v119)
            {
              goto LABEL_80;
            }

            continue;
          }

          break;
        }

        if (v67 < a7[2])
        {
          goto LABEL_79;
        }

        if (v67 >= v117 - a7[3] || v118 == 0)
        {
          goto LABEL_79;
        }

LABEL_55:
        v69 = 0;
        while (2)
        {
          v70 = v69 + v111 * v102;
          if (a17)
          {
            if (!v125)
            {
              goto LABEL_78;
            }

LABEL_64:
            v72 = v122;
            v73 = v123;
            do
            {
              v75 = std::function<signed char ()(signed char)>::operator()(v138, *(a1 + Index));
              if (!v63)
              {
                v76 = v75;
                v77 = ilogbf(1.0);
                if (v77 <= -14)
                {
                  v78 = -14;
                }

                else
                {
                  v78 = v77;
                }

                if (v78 >= v127)
                {
                  v79 = llroundf(v55 * v76) + v64;
                  if (v79 <= 0x7FFFFFFF)
                  {
                    if (v79 >= 0xFFFFFFFF80000000)
                    {
                      v64 = v79;
                    }

                    else
                    {
                      v64 = -8388608;
                    }

                    v63 = 2 * (v79 < 0xFFFFFFFF80000000);
                  }

                  else
                  {
                    v63 = 1;
                    v64 = 2139095040;
                  }
                }

                else
                {
                  v63 = 0;
                }
              }

              v33 = a9;
              ++v73;
              --v72;
            }

            while (v72);
          }

          else if (v70 >= a7[4] && v70 < v121 - a7[5] && v125 != 0)
          {
            goto LABEL_64;
          }

LABEL_78:
          if (++v69 == v126)
          {
            goto LABEL_79;
          }

          continue;
        }
      }

      v63 = 0;
      v62 = 0;
      v64 = v107;
LABEL_86:
      LOWORD(__e[0]) = MIL::ANEMachineIR::Interpreter::RecipTableRaw[v62];
      MIL::Fp16::GetFloat(__e);
      v81 = v80 * v59;
      v82 = 0.0;
      if (v81 == 0.0)
      {
        if (v63)
        {
          goto LABEL_88;
        }
      }

      else
      {
        __e[0] = 0;
        v84 = frexp(v81, __e);
        v85 = ldexp(v84, 11);
        v82 = ldexp(round(v85), __e[0] - 11);
        if (v63)
        {
LABEL_88:
          v83 = INFINITY;
          if (v63 == 2)
          {
            v83 = -INFINITY;
          }

          goto LABEL_94;
        }
      }

      if (!v64)
      {
        v88 = 0.0;
        goto LABEL_95;
      }

      v83 = v64;
LABEL_94:
      __e[0] = 0;
      v86 = frexp(v83, __e);
      v87 = ldexp(v86, 11);
      v88 = ldexp(round(v87), __e[0] - 11);
LABEL_95:
      v89 = v82 * v88;
      v90 = 0.0;
      if (v89 != 0.0)
      {
        __e[0] = 0;
        v91 = frexp(v89, __e);
        v92 = ldexp(v91, 11);
        v90 = ldexp(round(v92), __e[0] - 11);
      }

      v93 = std::function<float ()(float)>::operator()(a19, v90);
      v95 = MIL::Fp16::FromFloat(v93, v94);
      v60 = v112 + 1;
      v123 += v106;
      v52 = a7;
      if (v112 + 1 == v110)
      {
        goto LABEL_100;
      }
    }
  }

LABEL_104:
  std::__function::__value_func<signed char ()(signed char)>::~__value_func[abi:ne200100](v138);
  if (v130)
  {
    v131 = v130;
    operator delete(v130);
  }

  if (v133)
  {
    v134 = v133;
    operator delete(v133);
  }

  v96 = *MEMORY[0x277D85DE8];
}

void sub_25992C8DC(_Unwind_Exception *exception_object)
{
  v4 = *(v2 - 248);
  if (v4)
  {
    *(v2 - 240) = v4;
    operator delete(v4);
  }

  v5 = *(v2 - 224);
  if (v5)
  {
    *(v2 - 216) = v5;
    operator delete(v5);
  }

  v6 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValueAvgPool<unsigned char,signed char>(uint64_t a1@<X0>, size_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, int *a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, char a10, char a11, uint64_t a12, uint64_t a13, char a14, char a15, uint64_t a16)
{
  v140 = *MEMORY[0x277D85DE8];
  v135 = a12;
  v134 = a13;
  *(a9 + 8) = 0;
  *(a9 + 16) = 0;
  *a9 = 0;
  if (a2)
  {
    std::vector<unsigned char>::__append(a9, a2);
  }

  v127 = a9;
  v22 = *a3;
  v23 = a3[1];
  v24 = v23 - *a3;
  if (v24 != a4[1] - *a4)
  {
    v95 = "x_rank == o_shape.size()";
    v96 = 68;
    goto LABEL_122;
  }

  v25 = v24 >> 3;
  v26 = *a5;
  v27 = a5[1];
  v28 = v27 - *a5;
  if (v25 - 1 != v28 >> 2)
  {
    v95 = "kernel_sizes.size() == num_spatial_dims + 1";
    v96 = 69;
    goto LABEL_122;
  }

  v29 = *a6;
  v30 = a6[1];
  v31 = a9;
  if (v30 - *a6 != v28)
  {
    v95 = "strides.size() == num_spatial_dims + 1";
    v96 = 70;
    goto LABEL_122;
  }

  if (*(v27 - 4) != *(v30 - 4))
  {
    v95 = "kernel_sizes.back() == strides.back()";
    v96 = 71;
LABEL_122:
    __assert_rtn("ComputeValueAvgPool", "NePoolCpu.cpp", v96, v95);
  }

  v32 = v25 - 2;
  v33 = v26 + 4 * v25;
  v34 = v29 + 4 * v25;
  if (v25 == 5)
  {
    v112 = *(v33 - 20);
    v35 = (v33 - 12);
    v98 = *(v34 - 20);
    v36 = 2;
LABEL_11:
    v117 = *(v33 - 16);
    v99 = *(v34 - 16);
    v37 = 1;
    goto LABEL_13;
  }

  v36 = v25 - 3;
  v35 = (v26 + 4 * (v25 - 3));
  v98 = 1;
  if (v32 > 1)
  {
    v112 = 1;
    goto LABEL_11;
  }

  v37 = 0;
  v112 = 1;
  v117 = 1;
  v99 = 1;
LABEL_13:
  v123 = *(v26 + 4 * v32);
  v100 = *(v29 + 4 * v36);
  v116 = *v35;
  v104 = *(v29 + 4 * v32);
  v131 = 0;
  v132 = 0;
  v133 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v131, v22, v23, v25);
  v128 = 0;
  v129 = 0;
  v130 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v128, *a4, a4[1], (a4[1] - *a4) >> 3);
  if (v25 == 3)
  {
    *__e = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v131, v131 + 8, __e, v138, 2);
    *__e = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v128, v128 + 8, __e, v138, 2);
  }

  else if (v25 == 4)
  {
    *__e = 1;
    std::vector<unsigned long long>::insert(&v131, v131 + 8, __e);
    *__e = 1;
    std::vector<unsigned long long>::insert(&v128, v128 + 8, __e);
  }

  MIL::Fp16::GetFloat(&v135);
  v39 = v38;
  MIL::Fp16::GetFloat(&v134);
  if (v25 == 5)
  {
    v39 = v39 * v112;
    if (a14)
    {
      v40 = v40 / v112;
    }
  }

  if (v37)
  {
    v41 = v40 / v117;
  }

  else
  {
    v41 = v40;
  }

  if (v37)
  {
    v42 = v39 * v117;
  }

  else
  {
    v42 = v39;
  }

  v43 = v42 * v116;
  v44 = *v128;
  v101 = *(v128 + 1);
  v102 = *(v128 + 2);
  v103 = *(v128 + 3);
  v108 = *(v128 + 4);
  v111 = *(v131 + 1);
  v115 = *(v131 + 2);
  v119 = *(v131 + 3);
  v136[0] = &unk_286AAE5A8;
  v136[3] = v136;
  if (a15)
  {
    *__e = &unk_286AAE628;
    v139 = __e;
    std::__function::__value_func<signed char ()(signed char)>::swap[abi:ne200100](__e, v136);
    std::__function::__value_func<signed char ()(signed char)>::~__value_func[abi:ne200100](__e);
  }

  v45 = ldexp(1.0, a8);
  v46 = ldexp(1.0, a10 + a8);
  v47 = v43 * v46;
  v48 = llroundf(v47);
  if (fabsf(v47) < 1.0)
  {
    v48 = 0;
  }

  v105 = v48;
  v49 = exp2(-(a11 + a8));
  v50 = a7;
  v51 = a14;
  v97 = v44;
  if (v44)
  {
    v52 = 0;
    v53 = v45;
    v54 = v49 * (v41 / v116);
    v125 = -20 - a8;
    v55 = v123;
    if (v123 <= 1)
    {
      v55 = 1;
    }

    v120 = v55;
    v56 = v116;
    if (v116 <= 1)
    {
      v56 = 1;
    }

    v124 = v56;
    v57 = v54;
    while (!v101)
    {
LABEL_112:
      if (++v52 == v97)
      {
        goto LABEL_113;
      }
    }

    v106 = 0;
    while (!v102)
    {
LABEL_111:
      if (++v106 == v101)
      {
        goto LABEL_112;
      }
    }

    v107 = 0;
    while (!v103)
    {
LABEL_110:
      if (++v107 == v102)
      {
        goto LABEL_111;
      }
    }

    v109 = 0;
    while (!v108)
    {
LABEL_109:
      if (++v109 == v103)
      {
        goto LABEL_110;
      }
    }

    v121 = 0;
    v58 = 0;
    while (1)
    {
      v110 = v58;
      if (v112)
      {
        v59 = 0;
        v60 = 0;
        v61 = 0;
        v62 = v105;
        while (1)
        {
          v63 = v59 + v106 * v98;
          if ((v51 & 1) == 0 && (v63 < *v50 || v63 >= v111 - v50[1]))
          {
            goto LABEL_85;
          }

          v113 = v59;
          v114 = v60;
          if (v117)
          {
            break;
          }

LABEL_82:
          v59 = v113;
          v60 = v114 + 1;
          v50 = a7;
LABEL_85:
          if (++v59 == v112)
          {
            goto LABEL_88;
          }
        }

        v64 = 0;
        while (2)
        {
          v118 = v64;
          v65 = v64 + v107 * v99;
          if (v51)
          {
            if (v116)
            {
              goto LABEL_57;
            }

LABEL_81:
            v64 = v118 + 1;
            v51 = a14;
            if (v118 + 1 == v117)
            {
              goto LABEL_82;
            }

            continue;
          }

          break;
        }

        if (v65 < a7[2])
        {
          goto LABEL_81;
        }

        if (v65 >= v115 - a7[3] || v116 == 0)
        {
          goto LABEL_81;
        }

LABEL_57:
        v67 = 0;
        while (2)
        {
          v68 = v67 + v109 * v100;
          if (a14)
          {
            if (!v123)
            {
              goto LABEL_80;
            }

LABEL_66:
            v70 = v120;
            v71 = v121;
            do
            {
              v73 = std::function<signed char ()(signed char)>::operator()(v136, *(a1 + Index));
              if (!v61)
              {
                v74 = v73;
                v75 = ilogbf(1.0);
                if (v75 <= -14)
                {
                  v76 = -14;
                }

                else
                {
                  v76 = v75;
                }

                if (v76 >= v125)
                {
                  v77 = llroundf(v53 * v74) + v62;
                  if (v77 <= 0x7FFFFFFF)
                  {
                    if (v77 >= 0xFFFFFFFF80000000)
                    {
                      v62 = v77;
                    }

                    else
                    {
                      v62 = -8388608;
                    }

                    v61 = 2 * (v77 < 0xFFFFFFFF80000000);
                  }

                  else
                  {
                    v61 = 1;
                    v62 = 2139095040;
                  }
                }

                else
                {
                  v61 = 0;
                }
              }

              v31 = v127;
              ++v71;
              --v70;
            }

            while (v70);
          }

          else if (v68 >= a7[4] && v68 < v119 - a7[5] && v123 != 0)
          {
            goto LABEL_66;
          }

LABEL_80:
          if (++v67 == v124)
          {
            goto LABEL_81;
          }

          continue;
        }
      }

      v61 = 0;
      v60 = 0;
      v62 = v105;
LABEL_88:
      LOWORD(__e[0]) = MIL::ANEMachineIR::Interpreter::RecipTableRaw[v60];
      MIL::Fp16::GetFloat(__e);
      v79 = v78 * v57;
      v80 = 0.0;
      if (v79 == 0.0)
      {
        if (v61)
        {
          goto LABEL_90;
        }
      }

      else
      {
        __e[0] = 0;
        v82 = frexp(v79, __e);
        v83 = ldexp(v82, 11);
        v80 = ldexp(round(v83), __e[0] - 11);
        if (v61)
        {
LABEL_90:
          v81 = INFINITY;
          if (v61 == 2)
          {
            v81 = -INFINITY;
          }

          goto LABEL_96;
        }
      }

      if (!v62)
      {
        v86 = 0.0;
        goto LABEL_97;
      }

      v81 = v62;
LABEL_96:
      __e[0] = 0;
      v84 = frexp(v81, __e);
      v85 = ldexp(v84, 11);
      v86 = ldexp(round(v85), __e[0] - 11);
LABEL_97:
      v87 = v80 * v86;
      v88 = 0.0;
      if (v87 != 0.0)
      {
        __e[0] = 0;
        v89 = frexp(v87, __e);
        v90 = ldexp(v89, 11);
        v88 = ldexp(round(v90), __e[0] - 11);
      }

      std::function<float ()(float)>::operator()(a16, v88);
      if (v91 == INFINITY)
      {
        LOBYTE(v92) = -1;
      }

      else if (v91 == -INFINITY)
      {
        LOBYTE(v92) = 0;
      }

      else
      {
        v93 = llroundf(v91);
        if (v93 >= 255)
        {
          v93 = 255;
        }

        v92 = v93 & ~(v93 >> 31);
      }

      v58 = v110 + 1;
      v121 += v104;
      v50 = a7;
      if (v110 + 1 == v108)
      {
        goto LABEL_109;
      }
    }
  }

LABEL_113:
  std::__function::__value_func<signed char ()(signed char)>::~__value_func[abi:ne200100](v136);
  if (v128)
  {
    v129 = v128;
    operator delete(v128);
  }

  if (v131)
  {
    v132 = v131;
    operator delete(v131);
  }

  v94 = *MEMORY[0x277D85DE8];
}

void sub_25992D258(_Unwind_Exception *exception_object)
{
  v4 = *(v2 - 248);
  if (v4)
  {
    *(v2 - 240) = v4;
    operator delete(v4);
  }

  v5 = *(v2 - 224);
  if (v5)
  {
    *(v2 - 216) = v5;
    operator delete(v5);
  }

  v6 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValueAvgPool<signed char,signed char>(uint64_t a1@<X0>, size_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, int *a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, char a10, char a11, uint64_t a12, uint64_t a13, char a14, char a15, uint64_t a16)
{
  v140 = *MEMORY[0x277D85DE8];
  v135 = a12;
  v134 = a13;
  *(a9 + 8) = 0;
  *(a9 + 16) = 0;
  *a9 = 0;
  if (a2)
  {
    std::vector<unsigned char>::__append(a9, a2);
  }

  v127 = a9;
  v22 = *a3;
  v23 = a3[1];
  v24 = v23 - *a3;
  if (v24 != a4[1] - *a4)
  {
    v95 = "x_rank == o_shape.size()";
    v96 = 68;
    goto LABEL_124;
  }

  v25 = v24 >> 3;
  v26 = *a5;
  v27 = a5[1];
  v28 = v27 - *a5;
  if (v25 - 1 != v28 >> 2)
  {
    v95 = "kernel_sizes.size() == num_spatial_dims + 1";
    v96 = 69;
    goto LABEL_124;
  }

  v29 = *a6;
  v30 = a6[1];
  v31 = a9;
  if (v30 - *a6 != v28)
  {
    v95 = "strides.size() == num_spatial_dims + 1";
    v96 = 70;
    goto LABEL_124;
  }

  if (*(v27 - 4) != *(v30 - 4))
  {
    v95 = "kernel_sizes.back() == strides.back()";
    v96 = 71;
LABEL_124:
    __assert_rtn("ComputeValueAvgPool", "NePoolCpu.cpp", v96, v95);
  }

  v32 = v25 - 2;
  v33 = v26 + 4 * v25;
  v34 = v29 + 4 * v25;
  if (v25 == 5)
  {
    v112 = *(v33 - 20);
    v35 = (v33 - 12);
    v98 = *(v34 - 20);
    v36 = 2;
LABEL_11:
    v117 = *(v33 - 16);
    v99 = *(v34 - 16);
    v37 = 1;
    goto LABEL_13;
  }

  v36 = v25 - 3;
  v35 = (v26 + 4 * (v25 - 3));
  v98 = 1;
  if (v32 > 1)
  {
    v112 = 1;
    goto LABEL_11;
  }

  v37 = 0;
  v112 = 1;
  v117 = 1;
  v99 = 1;
LABEL_13:
  v123 = *(v26 + 4 * v32);
  v100 = *(v29 + 4 * v36);
  v116 = *v35;
  v104 = *(v29 + 4 * v32);
  v131 = 0;
  v132 = 0;
  v133 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v131, v22, v23, v25);
  v128 = 0;
  v129 = 0;
  v130 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v128, *a4, a4[1], (a4[1] - *a4) >> 3);
  if (v25 == 3)
  {
    *__e = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v131, v131 + 8, __e, v138, 2);
    *__e = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v128, v128 + 8, __e, v138, 2);
  }

  else if (v25 == 4)
  {
    *__e = 1;
    std::vector<unsigned long long>::insert(&v131, v131 + 8, __e);
    *__e = 1;
    std::vector<unsigned long long>::insert(&v128, v128 + 8, __e);
  }

  MIL::Fp16::GetFloat(&v135);
  v39 = v38;
  MIL::Fp16::GetFloat(&v134);
  if (v25 == 5)
  {
    v39 = v39 * v112;
    if (a14)
    {
      v40 = v40 / v112;
    }
  }

  if (v37)
  {
    v41 = v40 / v117;
  }

  else
  {
    v41 = v40;
  }

  if (v37)
  {
    v42 = v39 * v117;
  }

  else
  {
    v42 = v39;
  }

  v43 = v42 * v116;
  v44 = *v128;
  v101 = *(v128 + 1);
  v102 = *(v128 + 2);
  v103 = *(v128 + 3);
  v108 = *(v128 + 4);
  v111 = *(v131 + 1);
  v115 = *(v131 + 2);
  v119 = *(v131 + 3);
  v136[0] = &unk_286AAE6A8;
  v136[3] = v136;
  if (a15)
  {
    *__e = &unk_286AAE728;
    v139 = __e;
    std::__function::__value_func<signed char ()(signed char)>::swap[abi:ne200100](__e, v136);
    std::__function::__value_func<signed char ()(signed char)>::~__value_func[abi:ne200100](__e);
  }

  v45 = ldexp(1.0, a8);
  v46 = ldexp(1.0, a10 + a8);
  v47 = v43 * v46;
  v48 = llroundf(v47);
  if (fabsf(v47) < 1.0)
  {
    v48 = 0;
  }

  v105 = v48;
  v49 = exp2(-(a11 + a8));
  v50 = a7;
  v51 = a14;
  v97 = v44;
  if (v44)
  {
    v52 = 0;
    v53 = v45;
    v125 = -20 - a8;
    v54 = v49 * (v41 / v116);
    v55 = v123;
    if (v123 <= 1)
    {
      v55 = 1;
    }

    v120 = v55;
    v56 = v116;
    if (v116 <= 1)
    {
      v56 = 1;
    }

    v124 = v56;
    v57 = v54;
    while (!v101)
    {
LABEL_114:
      if (++v52 == v97)
      {
        goto LABEL_115;
      }
    }

    v106 = 0;
    while (!v102)
    {
LABEL_113:
      if (++v106 == v101)
      {
        goto LABEL_114;
      }
    }

    v107 = 0;
    while (!v103)
    {
LABEL_112:
      if (++v107 == v102)
      {
        goto LABEL_113;
      }
    }

    v109 = 0;
    while (!v108)
    {
LABEL_111:
      if (++v109 == v103)
      {
        goto LABEL_112;
      }
    }

    v121 = 0;
    v58 = 0;
    while (1)
    {
      v110 = v58;
      if (v112)
      {
        v59 = 0;
        v60 = 0;
        v61 = 0;
        v62 = v105;
        while (1)
        {
          v63 = v59 + v106 * v98;
          if ((v51 & 1) == 0 && (v63 < *v50 || v63 >= v111 - v50[1]))
          {
            goto LABEL_85;
          }

          v113 = v59;
          v114 = v60;
          if (v117)
          {
            break;
          }

LABEL_82:
          v59 = v113;
          v60 = v114 + 1;
          v50 = a7;
LABEL_85:
          if (++v59 == v112)
          {
            goto LABEL_88;
          }
        }

        v64 = 0;
        while (2)
        {
          v118 = v64;
          v65 = v64 + v107 * v99;
          if (v51)
          {
            if (v116)
            {
              goto LABEL_57;
            }

LABEL_81:
            v64 = v118 + 1;
            v51 = a14;
            if (v118 + 1 == v117)
            {
              goto LABEL_82;
            }

            continue;
          }

          break;
        }

        if (v65 < a7[2])
        {
          goto LABEL_81;
        }

        if (v65 >= v115 - a7[3] || v116 == 0)
        {
          goto LABEL_81;
        }

LABEL_57:
        v67 = 0;
        while (2)
        {
          v68 = v67 + v109 * v100;
          if (a14)
          {
            if (!v123)
            {
              goto LABEL_80;
            }

LABEL_66:
            v70 = v120;
            v71 = v121;
            do
            {
              v73 = std::function<signed char ()(signed char)>::operator()(v136, *(a1 + Index));
              if (!v61)
              {
                v74 = v73;
                v75 = ilogbf(1.0);
                if (v75 <= -14)
                {
                  v76 = -14;
                }

                else
                {
                  v76 = v75;
                }

                if (v76 >= v125)
                {
                  v77 = llroundf(v53 * v74) + v62;
                  if (v77 <= 0x7FFFFFFF)
                  {
                    if (v77 >= 0xFFFFFFFF80000000)
                    {
                      v62 = v77;
                    }

                    else
                    {
                      v62 = -8388608;
                    }

                    v61 = 2 * (v77 < 0xFFFFFFFF80000000);
                  }

                  else
                  {
                    v61 = 1;
                    v62 = 2139095040;
                  }
                }

                else
                {
                  v61 = 0;
                }
              }

              v31 = v127;
              ++v71;
              --v70;
            }

            while (v70);
          }

          else if (v68 >= a7[4] && v68 < v119 - a7[5] && v123 != 0)
          {
            goto LABEL_66;
          }

LABEL_80:
          if (++v67 == v124)
          {
            goto LABEL_81;
          }

          continue;
        }
      }

      v61 = 0;
      v60 = 0;
      v62 = v105;
LABEL_88:
      LOWORD(__e[0]) = MIL::ANEMachineIR::Interpreter::RecipTableRaw[v60];
      MIL::Fp16::GetFloat(__e);
      v79 = v78 * v57;
      v80 = 0.0;
      if (v79 == 0.0)
      {
        if (v61)
        {
          goto LABEL_90;
        }
      }

      else
      {
        __e[0] = 0;
        v82 = frexp(v79, __e);
        v83 = ldexp(v82, 11);
        v80 = ldexp(round(v83), __e[0] - 11);
        if (v61)
        {
LABEL_90:
          v81 = INFINITY;
          if (v61 == 2)
          {
            v81 = -INFINITY;
          }

          goto LABEL_96;
        }
      }

      if (!v62)
      {
        v86 = 0.0;
        goto LABEL_97;
      }

      v81 = v62;
LABEL_96:
      __e[0] = 0;
      v84 = frexp(v81, __e);
      v85 = ldexp(v84, 11);
      v86 = ldexp(round(v85), __e[0] - 11);
LABEL_97:
      v87 = v80 * v86;
      v88 = 0.0;
      if (v87 != 0.0)
      {
        __e[0] = 0;
        v89 = frexp(v87, __e);
        v90 = ldexp(v89, 11);
        v88 = ldexp(round(v90), __e[0] - 11);
      }

      std::function<float ()(float)>::operator()(a16, v88);
      if (v91 == INFINITY)
      {
        v92 = 127;
      }

      else if (v91 == -INFINITY)
      {
        v92 = 0x80;
      }

      else
      {
        v93 = llroundf(v91);
        if (v93 >= 127)
        {
          v93 = 127;
        }

        if (v93 <= -128)
        {
          v92 = 0x80;
        }

        else
        {
          v92 = v93;
        }
      }

      v58 = v110 + 1;
      v121 += v104;
      v50 = a7;
      if (v110 + 1 == v108)
      {
        goto LABEL_111;
      }
    }
  }

LABEL_115:
  std::__function::__value_func<signed char ()(signed char)>::~__value_func[abi:ne200100](v136);
  if (v128)
  {
    v129 = v128;
    operator delete(v128);
  }

  if (v131)
  {
    v132 = v131;
    operator delete(v131);
  }

  v94 = *MEMORY[0x277D85DE8];
}

void sub_25992DBDC(_Unwind_Exception *exception_object)
{
  v4 = *(v2 - 248);
  if (v4)
  {
    *(v2 - 240) = v4;
    operator delete(v4);
  }

  v5 = *(v2 - 224);
  if (v5)
  {
    *(v2 - 216) = v5;
    operator delete(v5);
  }

  v6 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::NeMaxPoolCpu::Run(MIL::IROperation *a1@<X1>, void *a2@<X2>, _DWORD *a3@<X8>)
{
  v6 = (*(*a1 + 56))(a1);
  v7 = *(v6 + 23);
  if (v7 < 0)
  {
    if (*(v6 + 8) != 11)
    {
LABEL_10:
      *a3 = 1;
      v9 = a3 + 2;
      std::string::basic_string[abi:ne200100]<0>(&v20, "ne_max_pool");
      v10 = std::string::insert(&v20, 0, "Expected '");
      v11 = *&v10->__r_.__value_.__l.__data_;
      v21.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
      *&v21.__r_.__value_.__l.__data_ = v11;
      v10->__r_.__value_.__l.__size_ = 0;
      v10->__r_.__value_.__r.__words[2] = 0;
      v10->__r_.__value_.__r.__words[0] = 0;
      v12 = std::string::append(&v21, "' op. Got ");
      v13 = *&v12->__r_.__value_.__l.__data_;
      v22.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
      *&v22.__r_.__value_.__l.__data_ = v13;
      v12->__r_.__value_.__l.__size_ = 0;
      v12->__r_.__value_.__r.__words[2] = 0;
      v12->__r_.__value_.__r.__words[0] = 0;
      v14 = (*(*a1 + 56))(a1);
      v15 = *(v14 + 23);
      if (v15 >= 0)
      {
        v16 = v14;
      }

      else
      {
        v16 = *v14;
      }

      if (v15 >= 0)
      {
        v17 = *(v14 + 23);
      }

      else
      {
        v17 = *(v14 + 8);
      }

      v18 = std::string::append(&v22, v16, v17);
      v19 = *&v18->__r_.__value_.__l.__data_;
      *(v9 + 2) = *(&v18->__r_.__value_.__l + 2);
      *v9 = v19;
      v18->__r_.__value_.__l.__size_ = 0;
      v18->__r_.__value_.__r.__words[2] = 0;
      v18->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v22.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v21.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v20.__r_.__value_.__l.__data_);
      }

      return;
    }

    v6 = *v6;
  }

  else if (v7 != 11)
  {
    goto LABEL_10;
  }

  if (*v6 != 0x705F78616D5F656ELL || *(v6 + 3) != 0x6C6F6F705F78616DLL)
  {
    goto LABEL_10;
  }
}

void sub_25992DE50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::RunMaxOrMinPool(MIL::IROperation *a1@<X0>, void *a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v107 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&__p, "x");
  InterpretedTensorValue = MIL::ANEMachineIR::Interpreter::TryGetInterpretedTensorValue(a2, a1, &__p);
  v9 = InterpretedTensorValue;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (v9)
    {
LABEL_3:
      std::string::basic_string[abi:ne200100]<0>(&__p, "kernel_sizes");
      ParameterValue = MIL::IROperation::GetParameterValue();
      MIL::IRValue::AsTensor(ParameterValue);
      Data = MIL::IRTensorValue::GetDataView<int>();
      v95 = v11;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
        v11 = v95;
      }

      std::vector<int>::vector[abi:ne200100](&v92, v11);
      if (v93 != v92)
      {
        v12 = 0;
        do
        {
          v13 = MIL::Util::Span<int const,18446744073709551615ul>::At(&Data, v12);
          v14 = v92;
          *(v92 + v12++) = *v13;
        }

        while (v12 < (v93 - v14) >> 2);
      }

      std::string::basic_string[abi:ne200100]<0>(&__p, "strides");
      v15 = MIL::IROperation::GetParameterValue();
      MIL::IRValue::AsTensor(v15);
      v90 = MIL::IRTensorValue::GetDataView<int>();
      v91 = v16;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
        v16 = v91;
      }

      std::vector<int>::vector[abi:ne200100](&v88, v16);
      if (v89 != v88)
      {
        v17 = 0;
        do
        {
          v18 = MIL::Util::Span<int const,18446744073709551615ul>::At(&v90, v17);
          v19 = v88;
          *(v88 + v17++) = *v18;
        }

        while (v17 < (v89 - v19) >> 2);
      }

      std::string::basic_string[abi:ne200100]<0>(&__p, "post_right_shift");
      v20 = MIL::IROperation::TryGetParameterValue();
      if (v20 && (*(*v20 + 40))(v20) && (v21 = MEMORY[0x259CA93E0]()) != 0)
      {
        v22 = *v21;
      }

      else
      {
        v22 = 0;
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v23 = std::string::basic_string[abi:ne200100]<0>(&__p, "post_scale");
      v24 = MIL::Fp16::FromFloat(v23, 1.0);
      v25 = MIL::IROperation::TryGetParameterValue();
      if (v25)
      {
        if ((*(*v25 + 40))(v25))
        {
          v26 = MEMORY[0x259CA93C0]();
          if (v26)
          {
            v24 = *v26;
          }
        }
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      *&__p.__r_.__value_.__r.__words[1] = 0uLL;
      v87 = 0;
      MIL::ANEMachineIR::Interpreter::GetCpuNeActivationFunction(a1, &__p, v106);
      if (LODWORD(__p.__r_.__value_.__l.__data_))
      {
        *a4 = __p.__r_.__value_.__l.__data_;
        *(a4 + 8) = *&__p.__r_.__value_.__r.__words[1];
        *(a4 + 24) = v87;
        *&__p.__r_.__value_.__r.__words[1] = 0uLL;
        v87 = 0;
        goto LABEL_87;
      }

      v30 = (*(*v9 + 32))(v9);
      v31 = (*(*v30 + 88))(v30);
      OutputType = MIL::IROperation::GetOutputType(a1);
      v33 = MIL::IRValueType::AsTensorType(OutputType);
      v34 = (*(*v33 + 88))(v33);
      v35 = MIL::IROperation::GetOutputType(a1);
      v36 = MIL::IRValueType::AsTensorType(v35);
      v37 = (*(*v36 + 16))(v36);
      v38 = (*(*v9 + 32))(v9);
      ANEMachineIR::Utils::GetStaticTensorShape(v38, v39, v85);
      v40 = MIL::IROperation::GetOutputType(a1);
      v41 = MIL::IRValueType::AsTensorType(v40);
      ANEMachineIR::Utils::GetStaticTensorShape(v41, v42, v84);
      switch(v31)
      {
        case 4:
          switch(v34)
          {
            case 14:
              v72 = MIL::IRTensorValue::GetDataView<MIL::Fp16>();
              std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v104, v106);
              std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v104);
              (*(*a1 + 200))(&v81, a1);
              v73 = v81;
              if (v82 == v81)
              {
                std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
              }

              v74 = MIL::IROperation::GetOutputType(a1);
              MIL::IRValueType::AsTensorType(v74);
              MIL::IRTensorValueType::MakeUInt8Value();
              MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v73, &v96);
              v75 = v96;
              v96 = 0;
              if (v75)
              {
                (*(*v75 + 1))(v75);
              }

              goto LABEL_81;
            case 9:
              v64 = MIL::IRTensorValue::GetDataView<MIL::Fp16>();
              std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v103, v106);
              std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v103);
              (*(*a1 + 200))(&v81, a1);
              v65 = v81;
              if (v82 == v81)
              {
                std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
              }

              v66 = MIL::IROperation::GetOutputType(a1);
              MIL::IRValueType::AsTensorType(v66);
              MIL::IRTensorValueType::MakeInt8Value();
              MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v65, &v96);
              v67 = v96;
              v96 = 0;
              if (v67)
              {
                (*(*v67 + 1))(v67);
              }

              goto LABEL_81;
            case 4:
              v51 = MIL::IRTensorValue::GetDataView<MIL::Fp16>();
              std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v105, v106);
              std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v105);
              (*(*a1 + 200))(&v81, a1);
              v52 = v81;
              if (v82 == v81)
              {
                std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
              }

              v53 = MIL::IROperation::GetOutputType(a1);
              MIL::IRValueType::AsTensorType(v53);
              MIL::IRTensorValueType::MakeFloat16Value();
              MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v52, &v96);
              v54 = v96;
              v96 = 0;
              if (v54)
              {
                (*(*v54 + 1))(v54);
              }

              goto LABEL_81;
          }

          break;
        case 9:
          switch(v34)
          {
            case 14:
              v60 = MIL::IRTensorValue::GetDataView<signed char>();
              std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v98, v106);
              std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v98);
              (*(*a1 + 200))(&v81, a1);
              v61 = v81;
              if (v82 == v81)
              {
                std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
              }

              v62 = MIL::IROperation::GetOutputType(a1);
              MIL::IRValueType::AsTensorType(v62);
              MIL::IRTensorValueType::MakeUInt8Value();
              MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v61, &v96);
              v63 = v96;
              v96 = 0;
              if (v63)
              {
                (*(*v63 + 1))(v63);
              }

              goto LABEL_81;
            case 9:
              v56 = MIL::IRTensorValue::GetDataView<signed char>();
              std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v97, v106);
              std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v97);
              (*(*a1 + 200))(&v81, a1);
              v57 = v81;
              if (v82 == v81)
              {
                std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
              }

              v58 = MIL::IROperation::GetOutputType(a1);
              MIL::IRValueType::AsTensorType(v58);
              MIL::IRTensorValueType::MakeInt8Value();
              MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v57, &v96);
              v59 = v96;
              v96 = 0;
              if (v59)
              {
                (*(*v59 + 1))(v59);
              }

              goto LABEL_81;
            case 4:
              v47 = MIL::IRTensorValue::GetDataView<signed char>();
              std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v99, v106);
              std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v99);
              (*(*a1 + 200))(&v81, a1);
              v48 = v81;
              if (v82 == v81)
              {
                std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
              }

              v49 = MIL::IROperation::GetOutputType(a1);
              MIL::IRValueType::AsTensorType(v49);
              MIL::IRTensorValueType::MakeFloat16Value();
              MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v48, &v96);
              v50 = v96;
              v96 = 0;
              if (v50)
              {
                (*(*v50 + 1))(v50);
              }

              goto LABEL_81;
          }

          break;
        case 14:
          switch(v34)
          {
            case 14:
              v76 = MIL::IRTensorValue::GetDataView<unsigned char>();
              std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v101, v106);
              std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v101);
              (*(*a1 + 200))(&v81, a1);
              v77 = v81;
              if (v82 == v81)
              {
                std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
              }

              v78 = MIL::IROperation::GetOutputType(a1);
              MIL::IRValueType::AsTensorType(v78);
              MIL::IRTensorValueType::MakeUInt8Value();
              MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v77, &v96);
              v79 = v96;
              v96 = 0;
              if (v79)
              {
                (*(*v79 + 1))(v79);
              }

              goto LABEL_81;
            case 9:
              v68 = MIL::IRTensorValue::GetDataView<unsigned char>();
              std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v100, v106);
              std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v100);
              (*(*a1 + 200))(&v81, a1);
              v69 = v81;
              if (v82 == v81)
              {
                std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
              }

              v70 = MIL::IROperation::GetOutputType(a1);
              MIL::IRValueType::AsTensorType(v70);
              MIL::IRTensorValueType::MakeInt8Value();
              MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v69, &v96);
              v71 = v96;
              v96 = 0;
              if (v71)
              {
                (*(*v71 + 1))(v71);
              }

              goto LABEL_81;
            case 4:
              v43 = MIL::IRTensorValue::GetDataView<unsigned char>();
              std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v102, v106);
              std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v102);
              (*(*a1 + 200))(&v81, a1);
              v44 = v81;
              if (v82 == v81)
              {
                std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
              }

              v45 = MIL::IROperation::GetOutputType(a1);
              MIL::IRValueType::AsTensorType(v45);
              MIL::IRTensorValueType::MakeFloat16Value();
              MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v44, &v96);
              v46 = v96;
              v96 = 0;
              if (v46)
              {
                (*(*v46 + 1))(v46);
              }

LABEL_81:
              v96 = &v81;
              std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v96);
              *a4 = 0;
              std::string::basic_string[abi:ne200100]<0>((a4 + 8), &unk_259A4D977);
              if (v83[0])
              {
                v83[1] = v83[0];
                operator delete(v83[0]);
              }

              goto LABEL_83;
          }

          break;
        default:
          v55 = "Unimplemented input dtype";
LABEL_57:
          *a4 = 3;
          std::string::basic_string[abi:ne200100]<0>((a4 + 8), v55);
LABEL_83:
          if (v84[0])
          {
            v84[1] = v84[0];
            operator delete(v84[0]);
          }

          if (v85[0])
          {
            v85[1] = v85[0];
            operator delete(v85[0]);
          }

LABEL_87:
          std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v106);
          if (SHIBYTE(v87) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__size_);
          }

          if (v88)
          {
            v89 = v88;
            operator delete(v88);
          }

          v29 = v92;
          if (v92)
          {
            v93 = v92;
            goto LABEL_93;
          }

          goto LABEL_94;
      }

      v55 = "Unimplemented output dtype";
      goto LABEL_57;
    }
  }

  else if (InterpretedTensorValue)
  {
    goto LABEL_3;
  }

  *a4 = 2;
  std::string::basic_string[abi:ne200100]<0>(&__p, "x");
  v27 = std::string::insert(&__p, 0, "No value for ");
  v28 = *&v27->__r_.__value_.__l.__data_;
  *(a4 + 24) = *(&v27->__r_.__value_.__l + 2);
  *(a4 + 8) = v28;
  v27->__r_.__value_.__l.__size_ = 0;
  v27->__r_.__value_.__r.__words[2] = 0;
  v27->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    v29 = __p.__r_.__value_.__r.__words[0];
LABEL_93:
    operator delete(v29);
  }

LABEL_94:
  v80 = *MEMORY[0x277D85DE8];
}

{
  v104 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&__p, "x");
  InterpretedTensorValue = MIL::ANEMachineIR::Interpreter::TryGetInterpretedTensorValue(a2, a1, &__p);
  v9 = InterpretedTensorValue;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (v9)
    {
LABEL_3:
      std::string::basic_string[abi:ne200100]<0>(&__p, "kernel_sizes");
      ParameterValue = MIL::IROperation::GetParameterValue();
      MIL::IRValue::AsTensor(ParameterValue);
      Data = MIL::IRTensorValue::GetDataView<int>();
      v92 = v11;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
        v11 = v92;
      }

      std::vector<int>::vector[abi:ne200100](&v89, v11);
      if (v90 != v89)
      {
        v12 = 0;
        do
        {
          v13 = MIL::Util::Span<int const,18446744073709551615ul>::At(&Data, v12);
          v14 = v89;
          *(v89 + v12++) = *v13;
        }

        while (v12 < (v90 - v14) >> 2);
      }

      std::string::basic_string[abi:ne200100]<0>(&__p, "strides");
      v15 = MIL::IROperation::GetParameterValue();
      MIL::IRValue::AsTensor(v15);
      v87 = MIL::IRTensorValue::GetDataView<int>();
      v88 = v16;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
        v16 = v88;
      }

      std::vector<int>::vector[abi:ne200100](&v85, v16);
      if (v86 != v85)
      {
        v17 = 0;
        do
        {
          v18 = MIL::Util::Span<int const,18446744073709551615ul>::At(&v87, v17);
          v19 = v85;
          *(v85 + v17++) = *v18;
        }

        while (v17 < (v86 - v19) >> 2);
      }

      v20 = std::string::basic_string[abi:ne200100]<0>(&__p, "post_scale");
      v21 = MIL::Fp16::FromFloat(v20, 1.0);
      v22 = MIL::IROperation::TryGetParameterValue();
      if (v22)
      {
        if ((*(*v22 + 40))(v22))
        {
          v23 = MEMORY[0x259CA93C0]();
          if (v23)
          {
            v21 = *v23;
          }
        }
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      *&__p.__r_.__value_.__r.__words[1] = 0uLL;
      v84 = 0;
      MIL::ANEMachineIR::Interpreter::GetCpuNeActivationFunction(a1, &__p, v103);
      if (LODWORD(__p.__r_.__value_.__l.__data_))
      {
        *a4 = __p.__r_.__value_.__l.__data_;
        *(a4 + 8) = *&__p.__r_.__value_.__r.__words[1];
        *(a4 + 24) = v84;
        *&__p.__r_.__value_.__r.__words[1] = 0uLL;
        v84 = 0;
        goto LABEL_80;
      }

      v27 = (*(*v9 + 32))(v9);
      v28 = (*(*v27 + 88))(v27);
      OutputType = MIL::IROperation::GetOutputType(a1);
      v30 = MIL::IRValueType::AsTensorType(OutputType);
      v31 = (*(*v30 + 88))(v30);
      v32 = MIL::IROperation::GetOutputType(a1);
      v33 = MIL::IRValueType::AsTensorType(v32);
      v34 = (*(*v33 + 16))(v33);
      v35 = (*(*v9 + 32))(v9);
      ANEMachineIR::Utils::GetStaticTensorShape(v35, v36, v82);
      v37 = MIL::IROperation::GetOutputType(a1);
      v38 = MIL::IRValueType::AsTensorType(v37);
      ANEMachineIR::Utils::GetStaticTensorShape(v38, v39, v81);
      switch(v28)
      {
        case 4:
          switch(v31)
          {
            case 14:
              v69 = MIL::IRTensorValue::GetDataView<MIL::Fp16>();
              std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v101, v103);
              std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v101);
              (*(*a1 + 200))(&v78, a1);
              v70 = v78;
              if (v79 == v78)
              {
                std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
              }

              v71 = MIL::IROperation::GetOutputType(a1);
              MIL::IRValueType::AsTensorType(v71);
              MIL::IRTensorValueType::MakeUInt8Value();
              MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v70, &v93);
              v72 = v93;
              v93 = 0;
              if (v72)
              {
                (*(*v72 + 1))(v72);
              }

              goto LABEL_74;
            case 9:
              v61 = MIL::IRTensorValue::GetDataView<MIL::Fp16>();
              std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v100, v103);
              std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v100);
              (*(*a1 + 200))(&v78, a1);
              v62 = v78;
              if (v79 == v78)
              {
                std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
              }

              v63 = MIL::IROperation::GetOutputType(a1);
              MIL::IRValueType::AsTensorType(v63);
              MIL::IRTensorValueType::MakeInt8Value();
              MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v62, &v93);
              v64 = v93;
              v93 = 0;
              if (v64)
              {
                (*(*v64 + 1))(v64);
              }

              goto LABEL_74;
            case 4:
              v48 = MIL::IRTensorValue::GetDataView<MIL::Fp16>();
              std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v102, v103);
              std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v102);
              (*(*a1 + 200))(&v78, a1);
              v49 = v78;
              if (v79 == v78)
              {
                std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
              }

              v50 = MIL::IROperation::GetOutputType(a1);
              MIL::IRValueType::AsTensorType(v50);
              MIL::IRTensorValueType::MakeFloat16Value();
              MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v49, &v93);
              v51 = v93;
              v93 = 0;
              if (v51)
              {
                (*(*v51 + 1))(v51);
              }

              goto LABEL_74;
          }

          break;
        case 9:
          switch(v31)
          {
            case 14:
              v57 = MIL::IRTensorValue::GetDataView<signed char>();
              std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v95, v103);
              std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v95);
              (*(*a1 + 200))(&v78, a1);
              v58 = v78;
              if (v79 == v78)
              {
                std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
              }

              v59 = MIL::IROperation::GetOutputType(a1);
              MIL::IRValueType::AsTensorType(v59);
              MIL::IRTensorValueType::MakeUInt8Value();
              MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v58, &v93);
              v60 = v93;
              v93 = 0;
              if (v60)
              {
                (*(*v60 + 1))(v60);
              }

              goto LABEL_74;
            case 9:
              v53 = MIL::IRTensorValue::GetDataView<signed char>();
              std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v94, v103);
              std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v94);
              (*(*a1 + 200))(&v78, a1);
              v54 = v78;
              if (v79 == v78)
              {
                std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
              }

              v55 = MIL::IROperation::GetOutputType(a1);
              MIL::IRValueType::AsTensorType(v55);
              MIL::IRTensorValueType::MakeInt8Value();
              MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v54, &v93);
              v56 = v93;
              v93 = 0;
              if (v56)
              {
                (*(*v56 + 1))(v56);
              }

              goto LABEL_74;
            case 4:
              v44 = MIL::IRTensorValue::GetDataView<signed char>();
              std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v96, v103);
              std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v96);
              (*(*a1 + 200))(&v78, a1);
              v45 = v78;
              if (v79 == v78)
              {
                std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
              }

              v46 = MIL::IROperation::GetOutputType(a1);
              MIL::IRValueType::AsTensorType(v46);
              MIL::IRTensorValueType::MakeFloat16Value();
              MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v45, &v93);
              v47 = v93;
              v93 = 0;
              if (v47)
              {
                (*(*v47 + 1))(v47);
              }

              goto LABEL_74;
          }

          break;
        case 14:
          switch(v31)
          {
            case 14:
              v73 = MIL::IRTensorValue::GetDataView<unsigned char>();
              std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v98, v103);
              std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v98);
              (*(*a1 + 200))(&v78, a1);
              v74 = v78;
              if (v79 == v78)
              {
                std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
              }

              v75 = MIL::IROperation::GetOutputType(a1);
              MIL::IRValueType::AsTensorType(v75);
              MIL::IRTensorValueType::MakeUInt8Value();
              MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v74, &v93);
              v76 = v93;
              v93 = 0;
              if (v76)
              {
                (*(*v76 + 1))(v76);
              }

              goto LABEL_74;
            case 9:
              v65 = MIL::IRTensorValue::GetDataView<unsigned char>();
              std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v97, v103);
              std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v97);
              (*(*a1 + 200))(&v78, a1);
              v66 = v78;
              if (v79 == v78)
              {
                std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
              }

              v67 = MIL::IROperation::GetOutputType(a1);
              MIL::IRValueType::AsTensorType(v67);
              MIL::IRTensorValueType::MakeInt8Value();
              MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v66, &v93);
              v68 = v93;
              v93 = 0;
              if (v68)
              {
                (*(*v68 + 1))(v68);
              }

              goto LABEL_74;
            case 4:
              v40 = MIL::IRTensorValue::GetDataView<unsigned char>();
              std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v99, v103);
              std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v99);
              (*(*a1 + 200))(&v78, a1);
              v41 = v78;
              if (v79 == v78)
              {
                std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
              }

              v42 = MIL::IROperation::GetOutputType(a1);
              MIL::IRValueType::AsTensorType(v42);
              MIL::IRTensorValueType::MakeFloat16Value();
              MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v41, &v93);
              v43 = v93;
              v93 = 0;
              if (v43)
              {
                (*(*v43 + 1))(v43);
              }

LABEL_74:
              v93 = &v78;
              std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v93);
              *a4 = 0;
              std::string::basic_string[abi:ne200100]<0>((a4 + 8), &unk_259A4D977);
              if (v80[0])
              {
                v80[1] = v80[0];
                operator delete(v80[0]);
              }

              goto LABEL_76;
          }

          break;
        default:
          v52 = "Unimplemented input dtype";
LABEL_50:
          *a4 = 3;
          std::string::basic_string[abi:ne200100]<0>((a4 + 8), v52);
LABEL_76:
          if (v81[0])
          {
            v81[1] = v81[0];
            operator delete(v81[0]);
          }

          if (v82[0])
          {
            v82[1] = v82[0];
            operator delete(v82[0]);
          }

LABEL_80:
          std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v103);
          if (SHIBYTE(v84) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__size_);
          }

          if (v85)
          {
            v86 = v85;
            operator delete(v85);
          }

          v26 = v89;
          if (v89)
          {
            v90 = v89;
            goto LABEL_86;
          }

          goto LABEL_87;
      }

      v52 = "Unimplemented output dtype";
      goto LABEL_50;
    }
  }

  else if (InterpretedTensorValue)
  {
    goto LABEL_3;
  }

  *a4 = 2;
  std::string::basic_string[abi:ne200100]<0>(&__p, "x");
  v24 = std::string::insert(&__p, 0, "No value for ");
  v25 = *&v24->__r_.__value_.__l.__data_;
  *(a4 + 24) = *(&v24->__r_.__value_.__l + 2);
  *(a4 + 8) = v25;
  v24->__r_.__value_.__l.__size_ = 0;
  v24->__r_.__value_.__r.__words[2] = 0;
  v24->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    v26 = __p.__r_.__value_.__r.__words[0];
LABEL_86:
    operator delete(v26);
  }

LABEL_87:
  v77 = *MEMORY[0x277D85DE8];
}

void sub_25992EDA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, int a26, __int16 a27, char a28, char a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a18)
  {
    operator delete(a18);
  }

  if (a21)
  {
    operator delete(a21);
  }

  std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v61 - 128);
  if (a33 < 0)
  {
    operator delete(a25);
  }

  if (a34)
  {
    operator delete(a34);
  }

  if (a39)
  {
    operator delete(a39);
  }

  _Unwind_Resume(a1);
}

void MIL::ANEMachineIR::Interpreter::NeMinPoolCpu::Run(MIL::IROperation *a1@<X1>, void *a2@<X2>, _DWORD *a3@<X8>)
{
  v6 = (*(*a1 + 56))(a1);
  v7 = *(v6 + 23);
  if (v7 < 0)
  {
    if (*(v6 + 8) != 11)
    {
LABEL_10:
      *a3 = 1;
      v9 = a3 + 2;
      std::string::basic_string[abi:ne200100]<0>(&v20, "ne_min_pool");
      v10 = std::string::insert(&v20, 0, "Expected '");
      v11 = *&v10->__r_.__value_.__l.__data_;
      v21.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
      *&v21.__r_.__value_.__l.__data_ = v11;
      v10->__r_.__value_.__l.__size_ = 0;
      v10->__r_.__value_.__r.__words[2] = 0;
      v10->__r_.__value_.__r.__words[0] = 0;
      v12 = std::string::append(&v21, "' op. Got ");
      v13 = *&v12->__r_.__value_.__l.__data_;
      v22.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
      *&v22.__r_.__value_.__l.__data_ = v13;
      v12->__r_.__value_.__l.__size_ = 0;
      v12->__r_.__value_.__r.__words[2] = 0;
      v12->__r_.__value_.__r.__words[0] = 0;
      v14 = (*(*a1 + 56))(a1);
      v15 = *(v14 + 23);
      if (v15 >= 0)
      {
        v16 = v14;
      }

      else
      {
        v16 = *v14;
      }

      if (v15 >= 0)
      {
        v17 = *(v14 + 23);
      }

      else
      {
        v17 = *(v14 + 8);
      }

      v18 = std::string::append(&v22, v16, v17);
      v19 = *&v18->__r_.__value_.__l.__data_;
      *(v9 + 2) = *(&v18->__r_.__value_.__l + 2);
      *v9 = v19;
      v18->__r_.__value_.__l.__size_ = 0;
      v18->__r_.__value_.__r.__words[2] = 0;
      v18->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v22.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v21.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v20.__r_.__value_.__l.__data_);
      }

      return;
    }

    v6 = *v6;
  }

  else if (v7 != 11)
  {
    goto LABEL_10;
  }

  if (*v6 != 0x705F6E696D5F656ELL || *(v6 + 3) != 0x6C6F6F705F6E696DLL)
  {
    goto LABEL_10;
  }
}

void sub_25992F2AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValueMinMaxPool<MIL::Fp16,MIL::Fp16>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, int a7@<W6>, __int16 a8@<W7>, void *a9@<X8>, uint64_t a10, char a11)
{
  *v105 = *MEMORY[0x277D85DE8];
  v103 = a8;
  a9[1] = 0;
  a9[2] = 0;
  *a9 = 0;
  std::vector<MIL::Fp16>::resize(a9, a2);
  v16 = *a3;
  v17 = a3[1];
  v18 = v17 - *a3;
  if (v18 != a4[1] - *a4)
  {
    v71 = "x_rank == o_shape.size()";
    v72 = 217;
    goto LABEL_65;
  }

  v19 = v18 >> 3;
  v20 = *a5;
  v21 = a5[1];
  v22 = v21 - *a5;
  if (v19 - 1 != v22 >> 2)
  {
    v71 = "kernel_sizes.size() == num_spatial_dims + 1";
    v72 = 218;
    goto LABEL_65;
  }

  v23 = *a6;
  v24 = a6[1];
  if (v24 - *a6 != v22)
  {
    v71 = "strides.size() == num_spatial_dims + 1";
    v72 = 219;
    goto LABEL_65;
  }

  if (*(v21 - 4) != *(v24 - 4))
  {
    v71 = "kernel_sizes.back() == strides.back()";
    v72 = 220;
LABEL_65:
    __assert_rtn("ComputeValueMinMaxPool", "NePoolCpu.cpp", v72, v71);
  }

  v25 = v19 - 2;
  v26 = v20 + 4 * v19;
  v27 = v23 + 4 * v19;
  if (v19 == 5)
  {
    v28 = *(v26 - 20);
    v29 = (v26 - 12);
    v86 = *(v27 - 20);
    v30 = 2;
  }

  else
  {
    v30 = v19 - 3;
    v29 = (v20 + 4 * (v19 - 3));
    v86 = 1;
    v28 = 1;
    v87 = 1;
    v90 = 1;
    v88 = 1;
    if (v25 <= 1)
    {
      goto LABEL_9;
    }
  }

  v90 = *(v26 - 16);
  v87 = v28;
  v88 = *(v27 - 16);
LABEL_9:
  v31 = *(v20 + 4 * v25);
  v93 = *(v23 + 4 * v30);
  v94 = *v29;
  v32 = *(v23 + 4 * v25);
  v100 = 0;
  v101 = 0;
  v102 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v100, v16, v17, v19);
  v97 = 0;
  v98 = 0;
  v99 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v97, *a4, a4[1], (a4[1] - *a4) >> 3);
  if (v19 == 3)
  {
    *__e = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v100, v100 + 8, __e, v105, 2);
    *__e = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v97, v97 + 8, __e, v105, 2);
  }

  else if (v19 == 4)
  {
    *__e = 1;
    std::vector<unsigned long long>::insert(&v100, v100 + 8, __e);
    *__e = 1;
    std::vector<unsigned long long>::insert(&v97, v97 + 8, __e);
  }

  v33 = *v97;
  v34 = *(v97 + 1);
  v35 = *(v97 + 2);
  v36 = *(v97 + 3);
  v82 = *(v97 + 4);
  MIL::Fp16::GetFloat(&v103);
  v38 = v37;
  v39 = exp2(-a7);
  v40 = a9;
  if (v33)
  {
    v96 = 0;
    v41 = v39 * v38;
    v92 = v31;
    v76 = v36;
    v77 = v32;
    v73 = v34;
    v74 = v33;
    v75 = v35;
    do
    {
      if (v34)
      {
        v42 = 0;
        do
        {
          if (v35)
          {
            v43 = 0;
            v44 = v42 * v86;
            v78 = v42;
            do
            {
              if (v36)
              {
                v45 = 0;
                v46 = v43 * v88;
                v80 = v43;
                do
                {
                  if (v82)
                  {
                    v91 = 0;
                    v47 = 0;
                    v48 = v45 * v93;
                    v79 = v45;
                    do
                    {
                      v81 = v47;
                      if (v86)
                      {
                        for (i = 0; i != v86; ++i)
                        {
                          if (v88)
                          {
                            v85 = 0;
                            do
                            {
                              if (v93)
                              {
                                v50 = 0;
                                v51 = v85;
                                do
                                {
                                  v52 = i;
                                  for (j = v50; v52 < v87; v51 = v85)
                                  {
                                    for (; v51 < v90; v51 += v88)
                                    {
                                      for (; v50 < v94; v31 = v92)
                                      {
                                        if (v31)
                                        {
                                          v53 = v91;
                                          do
                                          {
                                            if (a11)
                                            {
                                              LOWORD(__e[0]) = v49;
                                              MIL::Fp16::GetFloat(__e);
                                              v56 = v55;
                                              LOWORD(__e[0]) = v54;
                                              MIL::Fp16::GetFloat(__e);
                                              if (v56 < v57)
                                              {
                                                v49 = v54;
                                              }
                                            }

                                            else
                                            {
                                              LOWORD(__e[0]) = v49;
                                              MIL::Fp16::GetFloat(__e);
                                              v59 = v58;
                                              LOWORD(__e[0]) = v54;
                                              MIL::Fp16::GetFloat(__e);
                                              if (v59 > v60)
                                              {
                                                v49 = v54;
                                              }
                                            }

                                            ++v53;
                                            --v31;
                                          }

                                          while (v31);
                                        }

                                        v50 += v93;
                                      }

                                      v50 = j;
                                    }

                                    v52 += v86;
                                  }

                                  ++v50;
                                }

                                while (v50 != v93);
                              }

                              else
                              {
                                v51 = v85;
                              }

                              v85 = v51 + 1;
                              v61 = v51 + 1 == v88;
                              v40 = a9;
                              v42 = v78;
                              v45 = v79;
                            }

                            while (!v61);
                          }
                        }
                      }

                      LOWORD(__e[0]) = v49;
                      MIL::Fp16::GetFloat(__e);
                      v63 = v62 * v41;
                      v64 = 0.0;
                      v36 = v76;
                      v32 = v77;
                      if (v63 != 0.0)
                      {
                        __e[0] = 0;
                        v65 = frexp(v63, __e);
                        v66 = ldexp(v65, 11);
                        v64 = ldexp(round(v66), __e[0] - 11);
                      }

                      v67 = std::function<float ()(float)>::operator()(a10, v64);
                      v69 = MIL::Fp16::FromFloat(v67, v68);
                      v47 = v81 + 1;
                      v91 += v77;
                    }

                    while (v81 + 1 != v82);
                  }

                  ++v45;
                  v43 = v80;
                }

                while (v45 != v36);
              }

              ++v43;
              v35 = v75;
            }

            while (v43 != v75);
          }

          ++v42;
          v34 = v73;
        }

        while (v42 != v73);
      }

      ++v96;
    }

    while (v96 != v74);
  }

  if (v97)
  {
    v98 = v97;
    operator delete(v97);
  }

  if (v100)
  {
    v101 = v100;
    operator delete(v100);
  }

  v70 = *MEMORY[0x277D85DE8];
}

void sub_25992F930(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v23 = *(v21 - 184);
  if (v23)
  {
    *(v21 - 176) = v23;
    operator delete(v23);
  }

  v24 = *(v21 - 160);
  if (v24)
  {
    *(v21 - 152) = v24;
    operator delete(v24);
  }

  v25 = *a21;
  if (*a21)
  {
    *(a21 + 8) = v25;
    operator delete(v25);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValueMinMaxPool<unsigned char,MIL::Fp16>(uint64_t a1@<X0>, size_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, int a7@<W6>, __int16 a8@<W7>, uint64_t a9@<X8>, uint64_t a10, char a11)
{
  *v106 = *MEMORY[0x277D85DE8];
  v104 = a8;
  *(a9 + 8) = 0;
  *(a9 + 16) = 0;
  *a9 = 0;
  if (a2)
  {
    std::vector<unsigned char>::__append(a9, a2);
  }

  v84 = a9;
  v17 = *a3;
  v18 = a3[1];
  v19 = v18 - *a3;
  if (v19 != a4[1] - *a4)
  {
    v72 = "x_rank == o_shape.size()";
    v73 = 217;
    goto LABEL_74;
  }

  v20 = v19 >> 3;
  v21 = *a5;
  v22 = a5[1];
  v23 = v22 - *a5;
  if (v20 - 1 != v23 >> 2)
  {
    v72 = "kernel_sizes.size() == num_spatial_dims + 1";
    v73 = 218;
    goto LABEL_74;
  }

  v24 = *a6;
  v25 = a6[1];
  if (v25 - *a6 != v23)
  {
    v72 = "strides.size() == num_spatial_dims + 1";
    v73 = 219;
    goto LABEL_74;
  }

  if (*(v22 - 4) != *(v25 - 4))
  {
    v72 = "kernel_sizes.back() == strides.back()";
    v73 = 220;
LABEL_74:
    __assert_rtn("ComputeValueMinMaxPool", "NePoolCpu.cpp", v73, v72);
  }

  v26 = v20 - 2;
  v27 = v21 + 4 * v20;
  v28 = v24 + 4 * v20;
  if (v20 == 5)
  {
    v29 = *(v27 - 20);
    v30 = (v27 - 12);
    v87 = *(v28 - 20);
    v31 = 2;
  }

  else
  {
    v31 = v20 - 3;
    v30 = (v21 + 4 * (v20 - 3));
    v87 = 1;
    v29 = 1;
    v88 = 1;
    v91 = 1;
    v89 = 1;
    if (v26 <= 1)
    {
      goto LABEL_11;
    }
  }

  v91 = *(v27 - 16);
  v88 = v29;
  v89 = *(v28 - 16);
LABEL_11:
  v32 = *(v21 + 4 * v26);
  v94 = *(v24 + 4 * v31);
  v95 = *v30;
  v33 = *(v24 + 4 * v26);
  v101 = 0;
  v102 = 0;
  v103 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v101, v17, v18, v20);
  v98 = 0;
  v99 = 0;
  v100 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v98, *a4, a4[1], (a4[1] - *a4) >> 3);
  if (v20 == 3)
  {
    *__e = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v101, v101 + 8, __e, v106, 2);
    *__e = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v98, v98 + 8, __e, v106, 2);
  }

  else if (v20 == 4)
  {
    *__e = 1;
    std::vector<unsigned long long>::insert(&v101, v101 + 8, __e);
    *__e = 1;
    std::vector<unsigned long long>::insert(&v98, v98 + 8, __e);
  }

  v34 = *v98;
  v35 = *(v98 + 1);
  v36 = *(v98 + 2);
  v37 = *(v98 + 3);
  v83 = *(v98 + 4);
  MIL::Fp16::GetFloat(&v104);
  v39 = v38;
  v40 = exp2(-a7);
  v41 = v84;
  if (v34)
  {
    v97 = 0;
    v42 = v40 * v39;
    v93 = v32;
    v77 = v37;
    v78 = v33;
    v74 = v35;
    v75 = v34;
    v76 = v36;
    do
    {
      if (v35)
      {
        v43 = 0;
        do
        {
          if (v36)
          {
            v44 = 0;
            v45 = v43 * v87;
            v79 = v43;
            do
            {
              if (v37)
              {
                v46 = 0;
                v47 = v44 * v89;
                v81 = v44;
                do
                {
                  if (v83)
                  {
                    v92 = 0;
                    v48 = 0;
                    v49 = v46 * v94;
                    v80 = v46;
                    do
                    {
                      v82 = v48;
                      if (v87)
                      {
                        for (i = 0; i != v87; ++i)
                        {
                          if (v89)
                          {
                            v86 = 0;
                            do
                            {
                              if (v94)
                              {
                                v51 = 0;
                                v52 = v86;
                                do
                                {
                                  v53 = i;
                                  for (j = v51; v53 < v88; v52 = v86)
                                  {
                                    for (; v52 < v91; v52 += v89)
                                    {
                                      for (; v51 < v95; v32 = v93)
                                      {
                                        if (v32)
                                        {
                                          v54 = v92;
                                          do
                                          {
                                            if (a11)
                                            {
                                              LOWORD(__e[0]) = v50;
                                              MIL::Fp16::GetFloat(__e);
                                              v57 = v56;
                                              LOWORD(__e[0]) = v55;
                                              MIL::Fp16::GetFloat(__e);
                                              if (v57 < v58)
                                              {
                                                v50 = v55;
                                              }
                                            }

                                            else
                                            {
                                              LOWORD(__e[0]) = v50;
                                              MIL::Fp16::GetFloat(__e);
                                              v60 = v59;
                                              LOWORD(__e[0]) = v55;
                                              MIL::Fp16::GetFloat(__e);
                                              if (v60 > v61)
                                              {
                                                v50 = v55;
                                              }
                                            }

                                            ++v54;
                                            --v32;
                                          }

                                          while (v32);
                                        }

                                        v51 += v94;
                                      }

                                      v51 = j;
                                    }

                                    v53 += v87;
                                  }

                                  ++v51;
                                }

                                while (v51 != v94);
                              }

                              else
                              {
                                v52 = v86;
                              }

                              v86 = v52 + 1;
                              v62 = v52 + 1 == v89;
                              v41 = v84;
                              v43 = v79;
                              v46 = v80;
                            }

                            while (!v62);
                          }
                        }
                      }

                      LOWORD(__e[0]) = v50;
                      MIL::Fp16::GetFloat(__e);
                      v37 = v77;
                      v33 = v78;
                      v64 = v63 * v42;
                      v65 = 0.0;
                      if (v64 != 0.0)
                      {
                        __e[0] = 0;
                        v66 = frexp(v64, __e);
                        v67 = ldexp(v66, 11);
                        v65 = ldexp(round(v67), __e[0] - 11);
                      }

                      std::function<float ()(float)>::operator()(a10, v65);
                      if (v68 == INFINITY)
                      {
                        LOBYTE(v69) = -1;
                      }

                      else if (v68 == -INFINITY)
                      {
                        LOBYTE(v69) = 0;
                      }

                      else
                      {
                        v70 = llroundf(v68);
                        if (v70 >= 255)
                        {
                          v70 = 255;
                        }

                        v69 = v70 & ~(v70 >> 31);
                      }

                      v48 = v82 + 1;
                      v92 += v78;
                    }

                    while (v82 + 1 != v83);
                  }

                  ++v46;
                  v44 = v81;
                }

                while (v46 != v37);
              }

              ++v44;
              v36 = v76;
            }

            while (v44 != v76);
          }

          ++v43;
          v35 = v74;
        }

        while (v43 != v74);
      }

      ++v97;
    }

    while (v97 != v75);
  }

  if (v98)
  {
    v99 = v98;
    operator delete(v98);
  }

  if (v101)
  {
    v102 = v101;
    operator delete(v101);
  }

  v71 = *MEMORY[0x277D85DE8];
}

void sub_25992FFE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v23 = *(v21 - 184);
  if (v23)
  {
    *(v21 - 176) = v23;
    operator delete(v23);
  }

  v24 = *(v21 - 160);
  if (v24)
  {
    *(v21 - 152) = v24;
    operator delete(v24);
  }

  v25 = *a21;
  if (*a21)
  {
    *(a21 + 8) = v25;
    operator delete(v25);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValueMinMaxPool<signed char,MIL::Fp16>(uint64_t a1@<X0>, size_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, int a7@<W6>, __int16 a8@<W7>, uint64_t a9@<X8>, uint64_t a10, char a11)
{
  *v106 = *MEMORY[0x277D85DE8];
  v104 = a8;
  *(a9 + 8) = 0;
  *(a9 + 16) = 0;
  *a9 = 0;
  if (a2)
  {
    std::vector<unsigned char>::__append(a9, a2);
  }

  v84 = a9;
  v17 = *a3;
  v18 = a3[1];
  v19 = v18 - *a3;
  if (v19 != a4[1] - *a4)
  {
    v72 = "x_rank == o_shape.size()";
    v73 = 217;
    goto LABEL_76;
  }

  v20 = v19 >> 3;
  v21 = *a5;
  v22 = a5[1];
  v23 = v22 - *a5;
  if (v20 - 1 != v23 >> 2)
  {
    v72 = "kernel_sizes.size() == num_spatial_dims + 1";
    v73 = 218;
    goto LABEL_76;
  }

  v24 = *a6;
  v25 = a6[1];
  if (v25 - *a6 != v23)
  {
    v72 = "strides.size() == num_spatial_dims + 1";
    v73 = 219;
    goto LABEL_76;
  }

  if (*(v22 - 4) != *(v25 - 4))
  {
    v72 = "kernel_sizes.back() == strides.back()";
    v73 = 220;
LABEL_76:
    __assert_rtn("ComputeValueMinMaxPool", "NePoolCpu.cpp", v73, v72);
  }

  v26 = v20 - 2;
  v27 = v21 + 4 * v20;
  v28 = v24 + 4 * v20;
  if (v20 == 5)
  {
    v29 = *(v27 - 20);
    v30 = (v27 - 12);
    v87 = *(v28 - 20);
    v31 = 2;
  }

  else
  {
    v31 = v20 - 3;
    v30 = (v21 + 4 * (v20 - 3));
    v87 = 1;
    v29 = 1;
    v88 = 1;
    v91 = 1;
    v89 = 1;
    if (v26 <= 1)
    {
      goto LABEL_11;
    }
  }

  v91 = *(v27 - 16);
  v88 = v29;
  v89 = *(v28 - 16);
LABEL_11:
  v32 = *(v21 + 4 * v26);
  v94 = *(v24 + 4 * v31);
  v95 = *v30;
  v33 = *(v24 + 4 * v26);
  v101 = 0;
  v102 = 0;
  v103 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v101, v17, v18, v20);
  v98 = 0;
  v99 = 0;
  v100 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v98, *a4, a4[1], (a4[1] - *a4) >> 3);
  if (v20 == 3)
  {
    *__e = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v101, v101 + 8, __e, v106, 2);
    *__e = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v98, v98 + 8, __e, v106, 2);
  }

  else if (v20 == 4)
  {
    *__e = 1;
    std::vector<unsigned long long>::insert(&v101, v101 + 8, __e);
    *__e = 1;
    std::vector<unsigned long long>::insert(&v98, v98 + 8, __e);
  }

  v34 = *v98;
  v35 = *(v98 + 1);
  v36 = *(v98 + 2);
  v37 = *(v98 + 3);
  v83 = *(v98 + 4);
  MIL::Fp16::GetFloat(&v104);
  v39 = v38;
  v40 = exp2(-a7);
  v41 = v84;
  if (v34)
  {
    v97 = 0;
    v42 = v40 * v39;
    v93 = v32;
    v77 = v37;
    v78 = v33;
    v74 = v35;
    v75 = v34;
    v76 = v36;
    do
    {
      if (v35)
      {
        v43 = 0;
        do
        {
          if (v36)
          {
            v44 = 0;
            v45 = v43 * v87;
            v79 = v43;
            do
            {
              if (v37)
              {
                v46 = 0;
                v47 = v44 * v89;
                v81 = v44;
                do
                {
                  if (v83)
                  {
                    v92 = 0;
                    v48 = 0;
                    v49 = v46 * v94;
                    v80 = v46;
                    do
                    {
                      v82 = v48;
                      if (v87)
                      {
                        for (i = 0; i != v87; ++i)
                        {
                          if (v89)
                          {
                            v86 = 0;
                            do
                            {
                              if (v94)
                              {
                                v51 = 0;
                                v52 = v86;
                                do
                                {
                                  v53 = i;
                                  for (j = v51; v53 < v88; v52 = v86)
                                  {
                                    for (; v52 < v91; v52 += v89)
                                    {
                                      for (; v51 < v95; v32 = v93)
                                      {
                                        if (v32)
                                        {
                                          v54 = v92;
                                          do
                                          {
                                            if (a11)
                                            {
                                              LOWORD(__e[0]) = v50;
                                              MIL::Fp16::GetFloat(__e);
                                              v57 = v56;
                                              LOWORD(__e[0]) = v55;
                                              MIL::Fp16::GetFloat(__e);
                                              if (v57 < v58)
                                              {
                                                v50 = v55;
                                              }
                                            }

                                            else
                                            {
                                              LOWORD(__e[0]) = v50;
                                              MIL::Fp16::GetFloat(__e);
                                              v60 = v59;
                                              LOWORD(__e[0]) = v55;
                                              MIL::Fp16::GetFloat(__e);
                                              if (v60 > v61)
                                              {
                                                v50 = v55;
                                              }
                                            }

                                            ++v54;
                                            --v32;
                                          }

                                          while (v32);
                                        }

                                        v51 += v94;
                                      }

                                      v51 = j;
                                    }

                                    v53 += v87;
                                  }

                                  ++v51;
                                }

                                while (v51 != v94);
                              }

                              else
                              {
                                v52 = v86;
                              }

                              v86 = v52 + 1;
                              v62 = v52 + 1 == v89;
                              v41 = v84;
                              v43 = v79;
                              v46 = v80;
                            }

                            while (!v62);
                          }
                        }
                      }

                      LOWORD(__e[0]) = v50;
                      MIL::Fp16::GetFloat(__e);
                      v37 = v77;
                      v33 = v78;
                      v64 = v63 * v42;
                      v65 = 0.0;
                      if (v64 != 0.0)
                      {
                        __e[0] = 0;
                        v66 = frexp(v64, __e);
                        v67 = ldexp(v66, 11);
                        v65 = ldexp(round(v67), __e[0] - 11);
                      }

                      std::function<float ()(float)>::operator()(a10, v65);
                      if (v68 == INFINITY)
                      {
                        v69 = 127;
                      }

                      else if (v68 == -INFINITY)
                      {
                        v69 = 0x80;
                      }

                      else
                      {
                        v70 = llroundf(v68);
                        if (v70 >= 127)
                        {
                          v70 = 127;
                        }

                        if (v70 <= -128)
                        {
                          v69 = 0x80;
                        }

                        else
                        {
                          v69 = v70;
                        }
                      }

                      v48 = v82 + 1;
                      v92 += v78;
                    }

                    while (v82 + 1 != v83);
                  }

                  ++v46;
                  v44 = v81;
                }

                while (v46 != v37);
              }

              ++v44;
              v36 = v76;
            }

            while (v44 != v76);
          }

          ++v43;
          v35 = v74;
        }

        while (v43 != v74);
      }

      ++v97;
    }

    while (v97 != v75);
  }

  if (v98)
  {
    v99 = v98;
    operator delete(v98);
  }

  if (v101)
  {
    v102 = v101;
    operator delete(v101);
  }

  v71 = *MEMORY[0x277D85DE8];
}

void sub_2599306A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v23 = *(v21 - 184);
  if (v23)
  {
    *(v21 - 176) = v23;
    operator delete(v23);
  }

  v24 = *(v21 - 160);
  if (v24)
  {
    *(v21 - 152) = v24;
    operator delete(v24);
  }

  v25 = *a21;
  if (*a21)
  {
    *(a21 + 8) = v25;
    operator delete(v25);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValueMinMaxPool<MIL::Fp16,unsigned char>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, int a7@<W6>, __int16 a8@<W7>, void *a9@<X8>, uint64_t a10, char a11)
{
  *v98 = *MEMORY[0x277D85DE8];
  v96 = a8;
  a9[1] = 0;
  a9[2] = 0;
  *a9 = 0;
  std::vector<MIL::Fp16>::resize(a9, a2);
  v16 = *a3;
  v17 = a3[1];
  v18 = v17 - *a3;
  if (v18 != a4[1] - *a4)
  {
    v65 = "x_rank == o_shape.size()";
    v66 = 217;
    goto LABEL_61;
  }

  v19 = v18 >> 3;
  v20 = *a5;
  v21 = a5[1];
  v22 = v21 - *a5;
  if (v19 - 1 != v22 >> 2)
  {
    v65 = "kernel_sizes.size() == num_spatial_dims + 1";
    v66 = 218;
    goto LABEL_61;
  }

  v23 = *a6;
  v24 = a6[1];
  if (v24 - *a6 != v22)
  {
    v65 = "strides.size() == num_spatial_dims + 1";
    v66 = 219;
    goto LABEL_61;
  }

  if (*(v21 - 4) != *(v24 - 4))
  {
    v65 = "kernel_sizes.back() == strides.back()";
    v66 = 220;
LABEL_61:
    __assert_rtn("ComputeValueMinMaxPool", "NePoolCpu.cpp", v66, v65);
  }

  v25 = v19 - 2;
  v26 = v20 + 4 * v19;
  v27 = v23 + 4 * v19;
  if (v19 == 5)
  {
    v28 = *(v26 - 20);
    v29 = (v26 - 12);
    v80 = *(v27 - 20);
    v30 = 2;
  }

  else
  {
    v30 = v19 - 3;
    v29 = (v20 + 4 * (v19 - 3));
    v80 = 1;
    v28 = 1;
    v81 = 1;
    v84 = 1;
    v82 = 1;
    if (v25 <= 1)
    {
      goto LABEL_9;
    }
  }

  v84 = *(v26 - 16);
  v81 = v28;
  v82 = *(v27 - 16);
LABEL_9:
  v31 = *(v20 + 4 * v25);
  v87 = *(v23 + 4 * v30);
  v88 = *v29;
  v32 = *(v23 + 4 * v25);
  v93 = 0;
  v94 = 0;
  v95 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v93, v16, v17, v19);
  v90 = 0;
  v91 = 0;
  v92 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v90, *a4, a4[1], (a4[1] - *a4) >> 3);
  if (v19 == 3)
  {
    *__e = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v93, v93 + 8, __e, v98, 2);
    *__e = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v90, v90 + 8, __e, v98, 2);
  }

  else if (v19 == 4)
  {
    *__e = 1;
    std::vector<unsigned long long>::insert(&v93, v93 + 8, __e);
    *__e = 1;
    std::vector<unsigned long long>::insert(&v90, v90 + 8, __e);
  }

  v33 = *v90;
  v34 = *(v90 + 1);
  v35 = *(v90 + 2);
  v36 = *(v90 + 3);
  v37 = *(v90 + 4);
  MIL::Fp16::GetFloat(&v96);
  v39 = v38;
  v40 = exp2(-a7);
  if (v33)
  {
    v41 = 0;
    v42 = v40 * v39;
    v86 = v31;
    v70 = v32;
    v67 = v33;
    v68 = v34;
    v69 = v35;
    v72 = v36;
    v75 = v37;
    do
    {
      if (v34)
      {
        v43 = 0;
        do
        {
          if (v35)
          {
            v44 = 0;
            v45 = v43 * v80;
            v73 = v43;
            do
            {
              if (v36)
              {
                v46 = 0;
                v47 = v44 * v82;
                v74 = v44;
                do
                {
                  if (v37)
                  {
                    v85 = 0;
                    v48 = 0;
                    v49 = v46 * v87;
                    v71 = v46;
                    do
                    {
                      v76 = v48;
                      if (v80)
                      {
                        for (i = 0; i != v80; ++i)
                        {
                          if (v82)
                          {
                            for (j = 0; j != v82; ++j)
                            {
                              if (v87)
                              {
                                v52 = 0;
                                v79 = j;
                                do
                                {
                                  v53 = i;
                                  for (k = v52; v53 < v81; j = v79)
                                  {
                                    for (; j < v84; j += v82)
                                    {
                                      for (; v52 < v88; v31 = v86)
                                      {
                                        if (v31)
                                        {
                                          v54 = v85;
                                          do
                                          {
                                            v56 = v50 > v55;
                                            if (a11)
                                            {
                                              v56 = v50 < v55;
                                            }

                                            if (v56)
                                            {
                                              v50 = v55;
                                            }

                                            ++v54;
                                            --v31;
                                          }

                                          while (v31);
                                        }

                                        v52 += v87;
                                      }

                                      v52 = k;
                                    }

                                    v53 += v80;
                                  }

                                  ++v52;
                                }

                                while (v52 != v87);
                              }

                              v37 = v75;
                            }
                          }
                        }
                      }

                      v57 = v42 * v50;
                      v58 = 0.0;
                      if (v57 != 0.0)
                      {
                        __e[0] = 0;
                        v59 = frexp(v57, __e);
                        v60 = ldexp(v59, 11);
                        v58 = ldexp(round(v60), __e[0] - 11);
                      }

                      v61 = std::function<float ()(float)>::operator()(a10, v58);
                      v32 = v70;
                      v46 = v71;
                      v63 = MIL::Fp16::FromFloat(v61, v62);
                      v48 = v76 + 1;
                      v85 += v70;
                    }

                    while (v76 + 1 != v37);
                  }

                  ++v46;
                  v44 = v74;
                }

                while (v46 != v72);
              }

              ++v44;
              v35 = v69;
              v36 = v72;
              v43 = v73;
            }

            while (v44 != v69);
          }

          ++v43;
          v34 = v68;
        }

        while (v43 != v68);
      }

      ++v41;
    }

    while (v41 != v67);
  }

  if (v90)
  {
    v91 = v90;
    operator delete(v90);
  }

  if (v93)
  {
    v94 = v93;
    operator delete(v93);
  }

  v64 = *MEMORY[0x277D85DE8];
}

void sub_259930CC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v22 = *(v20 - 184);
  if (v22)
  {
    *(v20 - 176) = v22;
    operator delete(v22);
  }

  v23 = *(v20 - 160);
  if (v23)
  {
    *(v20 - 152) = v23;
    operator delete(v23);
  }

  v24 = *a20;
  if (*a20)
  {
    *(a20 + 8) = v24;
    operator delete(v24);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValueMinMaxPool<unsigned char,unsigned char>(uint64_t a1@<X0>, size_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, int a7@<W6>, __int16 a8@<W7>, uint64_t a9@<X8>, uint64_t a10, char a11)
{
  *v98 = *MEMORY[0x277D85DE8];
  v96 = a8;
  *(a9 + 8) = 0;
  *(a9 + 16) = 0;
  *a9 = 0;
  if (a2)
  {
    std::vector<unsigned char>::__append(a9, a2);
  }

  v16 = *a3;
  v17 = a3[1];
  v18 = v17 - *a3;
  if (v18 != a4[1] - *a4)
  {
    v65 = "x_rank == o_shape.size()";
    v66 = 217;
    goto LABEL_70;
  }

  v19 = v18 >> 3;
  v20 = *a5;
  v21 = a5[1];
  v22 = v21 - *a5;
  if (v19 - 1 != v22 >> 2)
  {
    v65 = "kernel_sizes.size() == num_spatial_dims + 1";
    v66 = 218;
    goto LABEL_70;
  }

  v23 = *a6;
  v24 = a6[1];
  if (v24 - *a6 != v22)
  {
    v65 = "strides.size() == num_spatial_dims + 1";
    v66 = 219;
    goto LABEL_70;
  }

  if (*(v21 - 4) != *(v24 - 4))
  {
    v65 = "kernel_sizes.back() == strides.back()";
    v66 = 220;
LABEL_70:
    __assert_rtn("ComputeValueMinMaxPool", "NePoolCpu.cpp", v66, v65);
  }

  v25 = v19 - 2;
  v26 = v20 + 4 * v19;
  v27 = v23 + 4 * v19;
  if (v19 == 5)
  {
    v28 = *(v26 - 20);
    v29 = (v26 - 12);
    v80 = *(v27 - 20);
    v30 = 2;
  }

  else
  {
    v30 = v19 - 3;
    v29 = (v20 + 4 * (v19 - 3));
    v80 = 1;
    v28 = 1;
    v81 = 1;
    v84 = 1;
    v82 = 1;
    if (v25 <= 1)
    {
      goto LABEL_11;
    }
  }

  v84 = *(v26 - 16);
  v81 = v28;
  v82 = *(v27 - 16);
LABEL_11:
  v31 = *(v20 + 4 * v25);
  v87 = *(v23 + 4 * v30);
  v88 = *v29;
  v32 = *(v23 + 4 * v25);
  v93 = 0;
  v94 = 0;
  v95 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v93, v16, v17, v19);
  v90 = 0;
  v91 = 0;
  v92 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v90, *a4, a4[1], (a4[1] - *a4) >> 3);
  if (v19 == 3)
  {
    *__e = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v93, v93 + 8, __e, v98, 2);
    *__e = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v90, v90 + 8, __e, v98, 2);
  }

  else if (v19 == 4)
  {
    *__e = 1;
    std::vector<unsigned long long>::insert(&v93, v93 + 8, __e);
    *__e = 1;
    std::vector<unsigned long long>::insert(&v90, v90 + 8, __e);
  }

  v33 = *v90;
  v34 = *(v90 + 1);
  v35 = *(v90 + 2);
  v36 = *(v90 + 3);
  v37 = *(v90 + 4);
  MIL::Fp16::GetFloat(&v96);
  v39 = v38;
  v40 = exp2(-a7);
  if (v33)
  {
    v41 = 0;
    v42 = v40 * v39;
    v86 = v31;
    v70 = v32;
    v67 = v33;
    v68 = v34;
    v69 = v35;
    v72 = v36;
    v75 = v37;
    do
    {
      if (v34)
      {
        v43 = 0;
        do
        {
          if (v35)
          {
            v44 = 0;
            v45 = v43 * v80;
            v73 = v43;
            do
            {
              if (v36)
              {
                v46 = 0;
                v47 = v44 * v82;
                v74 = v44;
                do
                {
                  if (v37)
                  {
                    v85 = 0;
                    v48 = 0;
                    v49 = v46 * v87;
                    v71 = v46;
                    do
                    {
                      v76 = v48;
                      if (v80)
                      {
                        for (i = 0; i != v80; ++i)
                        {
                          if (v82)
                          {
                            for (j = 0; j != v82; ++j)
                            {
                              if (v87)
                              {
                                v52 = 0;
                                v79 = j;
                                do
                                {
                                  v53 = i;
                                  for (k = v52; v53 < v81; j = v79)
                                  {
                                    for (; j < v84; j += v82)
                                    {
                                      for (; v52 < v88; v31 = v86)
                                      {
                                        if (v31)
                                        {
                                          v54 = v85;
                                          do
                                          {
                                            v56 = v50 > v55;
                                            if (a11)
                                            {
                                              v56 = v50 < v55;
                                            }

                                            if (v56)
                                            {
                                              v50 = v55;
                                            }

                                            ++v54;
                                            --v31;
                                          }

                                          while (v31);
                                        }

                                        v52 += v87;
                                      }

                                      v52 = k;
                                    }

                                    v53 += v80;
                                  }

                                  ++v52;
                                }

                                while (v52 != v87);
                              }

                              v37 = v75;
                            }
                          }
                        }
                      }

                      v57 = v42 * v50;
                      v58 = 0.0;
                      if (v57 != 0.0)
                      {
                        __e[0] = 0;
                        v59 = frexp(v57, __e);
                        v60 = ldexp(v59, 11);
                        v58 = ldexp(round(v60), __e[0] - 11);
                      }

                      std::function<float ()(float)>::operator()(a10, v58);
                      v32 = v70;
                      v46 = v71;
                      if (v61 == INFINITY)
                      {
                        LOBYTE(v62) = -1;
                      }

                      else if (v61 == -INFINITY)
                      {
                        LOBYTE(v62) = 0;
                      }

                      else
                      {
                        v63 = llroundf(v61);
                        if (v63 >= 255)
                        {
                          v63 = 255;
                        }

                        v62 = v63 & ~(v63 >> 31);
                      }

                      v48 = v76 + 1;
                      v85 += v70;
                    }

                    while (v76 + 1 != v37);
                  }

                  ++v46;
                  v44 = v74;
                }

                while (v46 != v72);
              }

              ++v44;
              v35 = v69;
              v36 = v72;
              v43 = v73;
            }

            while (v44 != v69);
          }

          ++v43;
          v34 = v68;
        }

        while (v43 != v68);
      }

      ++v41;
    }

    while (v41 != v67);
  }

  if (v90)
  {
    v91 = v90;
    operator delete(v90);
  }

  if (v93)
  {
    v94 = v93;
    operator delete(v93);
  }

  v64 = *MEMORY[0x277D85DE8];
}

void sub_25993131C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v22 = *(v20 - 184);
  if (v22)
  {
    *(v20 - 176) = v22;
    operator delete(v22);
  }

  v23 = *(v20 - 160);
  if (v23)
  {
    *(v20 - 152) = v23;
    operator delete(v23);
  }

  v24 = *a20;
  if (*a20)
  {
    *(a20 + 8) = v24;
    operator delete(v24);
  }

  _Unwind_Resume(exception_object);
}