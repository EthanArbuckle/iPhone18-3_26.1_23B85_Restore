void sub_21811E398(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38)
{
  if (*(v38 - 89) < 0)
  {
    operator delete(*(v38 - 112));
  }

  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a38)
  {
    operator delete(a38);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::Shared::ValidateConvolution(MIL::IROperation const&,BOOL,BOOL)::$_0::operator()(uint64_t *a1@<X0>, const void **a2@<X1>, uint64_t a3@<X2>, MIL::ValidationResult *a4@<X8>)
{
  v5 = a2;
  if (!MIL::IROperation::IsParameterSet(*a1, a2))
  {
LABEL_4:

    MIL::ValidationResult::ValidationResult(a4);
    return;
  }

  ParameterType = MIL::IROperation::GetParameterType(*a1);
  v9 = MIL::IRValueType::AsTensorType(ParameterType);
  if (MIL::IRTensorValueType::Rank(v9) == 1)
  {
    if ((*(*v9 + 16))(v9) == a3)
    {
      goto LABEL_4;
    }

    std::operator+<char>();
    v12 = std::string::append(&v31, " must be ");
    v13 = *&v12->__r_.__value_.__l.__data_;
    v32.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
    *&v32.__r_.__value_.__l.__data_ = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    v14 = *(v5 + 23);
    if (v14 < 0)
    {
      if (*(v5 + 1) != 3)
      {
LABEL_24:
        v19 = "";
LABEL_25:
        v20 = std::string::append(&v32, v19);
        v21 = *&v20->__r_.__value_.__l.__data_;
        v33.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
        *&v33.__r_.__value_.__l.__data_ = v21;
        v20->__r_.__value_.__l.__size_ = 0;
        v20->__r_.__value_.__r.__words[2] = 0;
        v20->__r_.__value_.__r.__words[0] = 0;
        v22 = std::string::append(&v33, "# of spatial input dims");
        v23 = v22->__r_.__value_.__r.__words[0];
        size = v22->__r_.__value_.__l.__size_;
        v34[0] = v22->__r_.__value_.__r.__words[2];
        *(v34 + 3) = *(&v22->__r_.__value_.__r.__words[2] + 3);
        v25 = SHIBYTE(v22->__r_.__value_.__r.__words[2]);
        v22->__r_.__value_.__l.__size_ = 0;
        v22->__r_.__value_.__r.__words[2] = 0;
        v22->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v33.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v32.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v31.__r_.__value_.__l.__data_);
        }

        LocationPtr = MIL::IRObject::GetLocationPtr(*a1);
        v27 = LocationPtr[1];
        v29 = *LocationPtr;
        v30 = v27;
        if (v27)
        {
          atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v25 < 0)
        {
          std::string::__init_copy_ctor_external(&__p, v23, size);
        }

        else
        {
          __p.__r_.__value_.__r.__words[0] = v23;
          __p.__r_.__value_.__l.__size_ = size;
          LODWORD(__p.__r_.__value_.__r.__words[2]) = v34[0];
          *(&__p.__r_.__value_.__r.__words[2] + 3) = *(v34 + 3);
          *(&__p.__r_.__value_.__s + 23) = v25;
        }

        MIL::ValidationResult::ValidationResult(a4, &v29, 315, &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v30)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v30);
        }

        if (v25 < 0)
        {
          operator delete(v23);
        }

        return;
      }

      v5 = *v5;
    }

    else if (v14 != 3)
    {
      goto LABEL_24;
    }

    v15 = bswap32(*v5 | (*(v5 + 2) << 16));
    v16 = v15 >= 0x70616400;
    v17 = v15 > 0x70616400;
    v18 = !v16;
    if (v17 == v18)
    {
      v19 = "2 * ";
    }

    else
    {
      v19 = "";
    }

    goto LABEL_25;
  }

  v10 = MIL::IRObject::GetLocationPtr(*a1);
  v11 = v10[1];
  v37 = *v10;
  v38 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(v35, "Input dialations should be rank 1");
  MIL::ValidationResult::ValidationResult(a4, &v37, 315, v35);
  if (v36 < 0)
  {
    operator delete(v35[0]);
  }

  if (v38)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v38);
  }
}

void sub_21811E954(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  if (v36 < 0)
  {
    operator delete(v35);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::Shared::ValidateBaseGatherWithAxis(MIL::Operators::Common::Shared *this@<X0>, MIL::ValidationResult *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "axis");
  IsParameterSet = MIL::IROperation::IsParameterSet(this, __p);
  v6 = IsParameterSet;
  if (v15 < 0)
  {
    operator delete(__p[0]);
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_12:
    MIL::ValidationResult::ValidationResult(a2);
    return;
  }

  if (!IsParameterSet)
  {
    goto LABEL_12;
  }

LABEL_3:
  std::string::basic_string[abi:ne200100]<0>(__p, "x");
  ParameterType = MIL::IROperation::GetParameterType(this);
  v8 = MIL::IRValueType::AsTensorType(ParameterType);
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "axis");
  ParameterValue = MIL::IROperation::GetParameterValue(this);
  v10 = MIL::IRValue::GetScalar<int>(ParameterValue);
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  LocationPtr = MIL::IRObject::GetLocationPtr(this);
  v12 = LocationPtr[1];
  v13[0] = *LocationPtr;
  v13[1] = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }
}

void sub_21811EB30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::Shared::anonymous namespace::ValidateBaseGatherWithAxisInputs(MIL::IRTensorValueType *a1@<X0>, MIL::Validation *a2@<X1>, uint64_t *a3@<X2>, MIL::ValidationResult *a4@<X8>)
{
  v8 = MIL::IRTensorValueType::Rank(a1);
  if ((*(*a1 + 104))(a1) && !MIL::Validation::IsAxisValidForRank(a2, v8))
  {
    v9 = a3[1];
    v12 = *a3;
    v13 = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "'axis' must be within range (-x_rank - 1, x_rank) (exclusive)");
    MIL::ValidationResult::ValidationResult(a4, &v12, 315, __p);
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }

    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }
  }

  else
  {

    MIL::ValidationResult::ValidationResult(a4);
  }
}

void sub_21811EC74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
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

void MIL::Operators::Common::Shared::ValueTypeInferenceGather(MIL::IRUnknownDimension **a1, uint64_t *a2, void *a3)
{
  v50[1] = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(v47, "x");
  SingleValueType = MIL::ValueTypeInferenceUtils::GetSingleValueType(a3, v47);
  v7 = MIL::IRValueType::AsTensorType(SingleValueType);
  if (v48 < 0)
  {
    operator delete(v47[0]);
  }

  (*(*v7 + 88))(v7);
  v8 = (*(*v7 + 96))(v7);
  std::string::basic_string[abi:ne200100]<0>(v47, "indices");
  v9 = MIL::ValueTypeInferenceUtils::GetSingleValueType(a3, v47);
  v10 = MIL::IRValueType::AsTensorType(v9);
  if (v48 < 0)
  {
    operator delete(v47[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v47, "batch_dims");
  v11 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, v47);
  v12 = v11;
  if (v48 < 0)
  {
    operator delete(v47[0]);
    if (!v12)
    {
      goto LABEL_11;
    }
  }

  else if (!v11)
  {
    goto LABEL_11;
  }

  std::string::basic_string[abi:ne200100]<0>(v47, "batch_dims");
  SingleValue = MIL::ValueTypeInferenceUtils::GetSingleValue(a3, v47);
  v14 = MIL::IRValue::AsTensor(SingleValue);
  v12 = MIL::IRValue::GetScalar<int>(v14);
  if (v48 < 0)
  {
    operator delete(v47[0]);
  }

LABEL_11:
  std::string::basic_string[abi:ne200100]<0>(v47, "axis");
  v15 = MIL::ValueTypeInferenceUtils::GetSingleValue(a3, v47);
  v16 = MIL::IRValue::AsTensor(v15);
  v17 = MIL::IRValue::GetScalar<int>(v16);
  if (v48 < 0)
  {
    operator delete(v47[0]);
  }

  v18 = a2[1];
  v46[0] = *a2;
  v46[1] = v18;
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  if (!MIL::ValidationResult::IsGood(v47))
  {
    exception = __cxa_allocate_exception(0x48uLL);
    MIL::MILResult::MILResult(v44, v47);
    v44[0].__r_.__value_.__r.__words[0] = &unk_2829E9B70;
    v45 = v49;
    MIL::ValidationError::ValidationError(exception, v44);
  }

  v19 = (*(*v10 + 96))(v10);
  if (MIL::ValueTypeInferenceUtils::ShapeHasVariadicUnknownDims(v8))
  {
    if (MIL::ValueTypeInferenceUtils::ShapeHasVariadicUnknownDims(v19))
    {
      v36 = __cxa_allocate_exception(0x48uLL);
      v37 = a2[1];
      v42[0] = *a2;
      v42[1] = v37;
      if (v37)
      {
        atomic_fetch_add_explicit((v37 + 8), 1uLL, memory_order_relaxed);
      }

      std::string::basic_string[abi:ne200100]<0>(v41, "'input_shape' and 'indices_shape' cannot both have variadic dimensions.");
      MIL::ValidationResult::ValidationResult(v43, v42, 315, v41);
      MIL::ValidationError::ValidationError(v36, v43);
    }

    VariadicUnknownDimIndex = MIL::ValueTypeInferenceUtils::FindVariadicUnknownDimIndex(v8);
    v21 = VariadicUnknownDimIndex;
    if ((v17 & 0x80000000) == 0 && VariadicUnknownDimIndex <= v17)
    {
      __p = 0;
      v39 = 0;
      v40 = 0;
      std::vector<std::string const*>::reserve(&__p, VariadicUnknownDimIndex + 1);
      if (v21)
      {
        v22 = 0;
        do
        {
          std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](&__p, (*v8 + v22));
          v22 += 8;
          --v21;
        }

        while (v21);
      }

      v50[0] = MIL::IRUnknownDimension::Make(*a1, 1);
      std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](&__p, v50);
      MIL::IRTensorValueType::MakeWithShape();
    }

    if ((v17 & 0x80000000) == 0)
    {
LABEL_30:
      v39 = 0;
      v40 = 0;
      __p = 0;
      std::vector<std::string const*>::reserve(&__p, ((v8[1] - *v8) >> 3) + ((v19[1] - *v19) >> 3) - 1);
      v24 = v17;
      if (v17)
      {
        v25 = 0;
        v26 = v24;
        do
        {
          std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](&__p, (*v8 + v25));
          v25 += 8;
          --v26;
        }

        while (v26);
      }

      v27 = v12;
      v28 = *v19;
      if (v12 < ((v19[1] - *v19) >> 3))
      {
        v29 = 8 * v12;
        do
        {
          std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](&__p, (v28 + v29));
          ++v27;
          v28 = *v19;
          v29 += 8;
        }

        while (v27 < (v19[1] - *v19) >> 3);
      }

      for (i = 8 * v24 + 8; ++v24 < ((v8[1] - *v8) >> 3); i = v31)
      {
        v31 = i + 8;
        std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](&__p, (*v8 + i));
      }

      MIL::IRTensorValueType::MakeWithShape();
    }

    v23 = v8[1] - *v8;
    v32 = (v23 >> 3) - VariadicUnknownDimIndex;
    if (v32 <= -v17)
    {
      __p = 0;
      v39 = 0;
      v40 = 0;
      std::vector<std::string const*>::reserve(&__p, v32);
      v50[0] = MIL::IRUnknownDimension::Make(*a1, 1);
      std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](&__p, v50);
      for (j = 8 * v21 + 8; ++v21 < (v8[1] - *v8) >> 3; j = v34)
      {
        v34 = j + 8;
        std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](&__p, (*v8 + j));
      }

      MIL::IRTensorValueType::MakeWithShape();
    }
  }

  else
  {
    if ((v17 & 0x80000000) == 0)
    {
      goto LABEL_30;
    }

    v23 = v8[1] - *v8;
  }

  LODWORD(v17) = v17 + (v23 >> 3);
  goto LABEL_30;
}

void sub_21811F2B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  MIL::ValidationResult::~ValidationResult((v27 - 160));
  _Unwind_Resume(a1);
}

uint64_t MIL::Operators::Common::Shared::anonymous namespace::ValidateBatchDimMatch(uint64_t result, void *a2, void *a3, void *a4, uint64_t *a5)
{
  if (result)
  {
    v9 = 0;
    v10 = result;
    do
    {
      result = (*(**(*a2 + 8 * v9) + 32))(*(*a2 + 8 * v9));
      if (result)
      {
        break;
      }

      result = (*(**(*a3 + 8 * v9) + 32))(*(*a3 + 8 * v9));
      if (result)
      {
        break;
      }

      if ((*(**(*a2 + 8 * v9) + 24))(*(*a2 + 8 * v9)) || (result = (*(**(*a3 + 8 * v9) + 24))(*(*a3 + 8 * v9))) != 0)
      {
        result = (*(**(*a2 + 8 * v9) + 24))(*(*a2 + 8 * v9));
        v11 = result ? a3 : a2;
        *(*a4 + 8 * v9) = *(*v11 + 8 * v9);
      }

      else if (*(*a2 + 8 * v9) != *(*a3 + 8 * v9))
      {
        exception = __cxa_allocate_exception(0x48uLL);
        v13 = a5;
        v14 = exception;
        v16 = *v13;
        v15 = v13[1];
        v18[0] = v16;
        v18[1] = v15;
        if (v15)
        {
          atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
        }

        std::string::basic_string[abi:ne200100]<0>(v17, "value and index shape must match for first n=batch_dims dimensions.");
        MIL::ValidationResult::ValidationResult(v19, v18, 315, v17);
        MIL::ValidationError::ValidationError(v14, v19);
      }

      ++v9;
    }

    while (v10 != v9);
  }

  return result;
}

void sub_21811F5D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::__shared_weak_count *a16, char a17)
{
  MIL::ValidationResult::~ValidationResult(&a17);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  if (v18)
  {
    __cxa_free_exception(v17);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::Shared::ValueTypeInferenceGatherAlongAxis(uint64_t a1, uint64_t *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(__p, "x");
  SingleValueType = MIL::ValueTypeInferenceUtils::GetSingleValueType(a3, __p);
  v6 = MIL::IRValueType::AsTensorType(SingleValueType);
  if (v22 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "axis");
  SingleValue = MIL::ValueTypeInferenceUtils::GetSingleValue(a3, __p);
  v8 = MIL::IRValue::AsTensor(SingleValue);
  v9 = MIL::IRValue::GetScalar<int>(v8);
  if (v22 < 0)
  {
    operator delete(__p[0]);
  }

  v10 = *a2;
  v11 = a2[1];
  v20[0] = v10;
  v20[1] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  if (MIL::ValidationResult::IsGood(__p))
  {
    (*(*v6 + 88))(v6);
    std::string::basic_string[abi:ne200100]<0>(v16, "indices");
    v12 = MIL::ValueTypeInferenceUtils::GetSingleValueType(a3, v16);
    v13 = MIL::IRValueType::AsTensorType(v12);
    if (SHIBYTE(v17) < 0)
    {
      operator delete(v16[0]);
    }

    v14 = (*(*v13 + 96))(v13);
    v16[0] = 0;
    v16[1] = 0;
    v17 = 0;
    std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(v16, *v14, v14[1], (v14[1] - *v14) >> 3);
    MIL::IRTensorValueType::MakeWithShape();
  }

  exception = __cxa_allocate_exception(0x48uLL);
  MIL::MILResult::MILResult(v18, __p);
  v18[0].__r_.__value_.__r.__words[0] = &unk_2829E9B70;
  v19 = v23;
  MIL::ValidationError::ValidationError(exception, v18);
}

void sub_21811F8A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  MIL::ValidationResult::~ValidationResult(&a16);
  MIL::ValidationResult::~ValidationResult(&a25);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::Shared::ValueTypeInferenceGatherNd(MIL::IRUnknownDimension **a1, uint64_t *a2, void *a3)
{
  v35[1] = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&v32, "x");
  SingleValueType = MIL::ValueTypeInferenceUtils::GetSingleValueType(a3, &v32);
  v7 = MIL::IRValueType::AsTensorType(SingleValueType);
  if (SHIBYTE(v34) < 0)
  {
    operator delete(v32);
  }

  (*(*v7 + 88))(v7);
  v8 = (*(*v7 + 96))(v7);
  std::string::basic_string[abi:ne200100]<0>(&v32, "indices");
  v9 = MIL::ValueTypeInferenceUtils::GetSingleValueType(a3, &v32);
  v10 = MIL::IRValueType::AsTensorType(v9);
  if (SHIBYTE(v34) < 0)
  {
    operator delete(v32);
  }

  v11 = (*(*v10 + 96))(v10);
  std::string::basic_string[abi:ne200100]<0>(&v32, "batch_dims");
  v12 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, &v32);
  v13 = v12;
  if (SHIBYTE(v34) < 0)
  {
    operator delete(v32);
    if (v13)
    {
LABEL_7:
      std::string::basic_string[abi:ne200100]<0>(&v32, "batch_dims");
      SingleValue = MIL::ValueTypeInferenceUtils::GetSingleValue(a3, &v32);
      v15 = MIL::IRValue::AsTensor(SingleValue);
      v16 = MIL::IRValue::GetScalar<int>(v15);
      if (SHIBYTE(v34) < 0)
      {
        operator delete(v32);
      }

LABEL_11:
      if (!MIL::ValueTypeInferenceUtils::ShapeHasVariadicUnknownDims(v8) || !MIL::ValueTypeInferenceUtils::ShapeHasVariadicUnknownDims(v11))
      {
        v17 = *v11;
        v18 = v11[1] - 8;
        v19 = (v18 - *v11) >> 3;
        v32 = 0;
        v33 = 0;
        v34 = 0;
        std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<std::__wrap_iter<MIL::IRDimension const* const*>,std::__wrap_iter<MIL::IRDimension const* const*>>(&v32, v17, v18, v19);
        v20 = (*(**(v11[1] - 8) + 16))(*(v11[1] - 8));
        if (v20)
        {
          v21 = (*(*v20 + 48))(v20);
          if (MIL::ValueTypeInferenceUtils::ShapeHasVariadicUnknownDims(v8) && v21 > MIL::ValueTypeInferenceUtils::FindVariadicUnknownDimIndex(v8))
          {
            v35[0] = MIL::IRUnknownDimension::Make(*a1, 1);
            std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](&v32, v35);
            MIL::IRTensorValueType::MakeWithShape();
          }

          v22 = v8[1];
          if (v21 > &v22[-*v8] >> 3)
          {
            exception = __cxa_allocate_exception(0x48uLL);
            v26 = a2[1];
            *&v28 = *a2;
            *(&v28 + 1) = v26;
            if (v26)
            {
              atomic_fetch_add_explicit((v26 + 8), 1uLL, memory_order_relaxed);
            }

            std::string::basic_string[abi:ne200100]<0>(v27, "The last dimension of indices cannot be larger than the input shape size.");
            MIL::ValidationError::ValidationError(exception, &v28, v27, 315);
          }

          std::vector<MIL::IRDimension const*>::__insert_with_size[abi:ne200100]<std::__wrap_iter<MIL::IRDimension const* const*>,std::__wrap_iter<MIL::IRDimension const* const*>>(&v32, v33, (*v8 + 8 * (v21 + v16)), v22, &v22[-*v8 + -8 * v21 + -8 * v16] >> 3);
        }

        else
        {
          v35[0] = MIL::IRUnknownDimension::Make(*a1, 1);
          std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](&v32, v35);
        }

        MIL::IRTensorValueType::MakeWithShape();
      }

      v23 = __cxa_allocate_exception(0x48uLL);
      v24 = a2[1];
      v30[0] = *a2;
      v30[1] = v24;
      if (v24)
      {
        atomic_fetch_add_explicit((v24 + 8), 1uLL, memory_order_relaxed);
      }

      std::string::basic_string[abi:ne200100]<0>(v29, "'input_shape' and 'indices_shape' cannot both have variadic dimensions.");
      MIL::ValidationResult::ValidationResult(v31, v30, 315, v29);
      MIL::ValidationError::ValidationError(v23, v31);
    }
  }

  else if (v12)
  {
    goto LABEL_7;
  }

  v16 = 0;
  goto LABEL_11;
}

void sub_21811FDD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, std::__shared_weak_count *a24, char a25)
{
  MIL::ValidationResult::~ValidationResult(&a25);
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a24);
  }

  if (v26)
  {
    __cxa_free_exception(v25);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::Shared::ValidatePropertyVec(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X3>, MIL::ValidationResult *a4@<X8>)
{
  v5 = *a1;
  if (a1[1] == *a1)
  {
LABEL_26:

    MIL::ValidationResult::ValidationResult(a4);
    return;
  }

  v9 = 0;
  while (1)
  {
    if (v9 >= (a2[1] - *a2) >> 3)
    {
      std::vector<MIL::IRDimension const*>::__throw_out_of_range[abi:ne200100]();
    }

    v10 = *(v5 + 8 * v9);
    v11 = *(*a2 + 8 * v9);
    v12 = MIL::IRProperty::TryAsConstant(v10);
    v13 = MIL::IRProperty::TryAsConstant(v11);
    v14 = v13;
    if (!v12 || v13 == 0)
    {
      break;
    }

    ScalarDataType = MIL::IRConstantProperty::GetScalarDataType(v12);
    if (ScalarDataType == 14)
    {
      UInt8ScalarValue = MIL::IRConstantProperty::GetUInt8ScalarValue(v12);
      if (UInt8ScalarValue == MIL::IRConstantProperty::GetUInt8ScalarValue(v14))
      {
        goto LABEL_25;
      }

      v60 = a3[1];
      v85 = *a3;
      v86 = v60;
      if (v60)
      {
        atomic_fetch_add_explicit(&v60->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      std::operator+<char>();
      v61 = std::string::append(&v88, " at index: ");
      v62 = *&v61->__r_.__value_.__l.__data_;
      v89.__r_.__value_.__r.__words[2] = v61->__r_.__value_.__r.__words[2];
      *&v89.__r_.__value_.__l.__data_ = v62;
      v61->__r_.__value_.__l.__size_ = 0;
      v61->__r_.__value_.__r.__words[2] = 0;
      v61->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v87, v9);
      if ((v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v63 = &v87;
      }

      else
      {
        v63 = v87.__r_.__value_.__r.__words[0];
      }

      if ((v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v87.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v87.__r_.__value_.__l.__size_;
      }

      v65 = std::string::append(&v89, v63, size);
      v66 = *&v65->__r_.__value_.__l.__data_;
      v84 = v65->__r_.__value_.__r.__words[2];
      *v83 = v66;
      v65->__r_.__value_.__l.__size_ = 0;
      v65->__r_.__value_.__r.__words[2] = 0;
      v65->__r_.__value_.__r.__words[0] = 0;
      MIL::ValidationResult::ValidationResult(a4, &v85, 313, v83);
      if (SHIBYTE(v84) < 0)
      {
        operator delete(v83[0]);
      }

      if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v87.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v89.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v88.__r_.__value_.__l.__data_);
      }

      v31 = v86;
      if (!v86)
      {
        return;
      }

LABEL_46:
      std::__shared_weak_count::__release_shared[abi:ne200100](v31);
      return;
    }

    if (ScalarDataType != 12)
    {
      v46 = a3[1];
      v81 = *a3;
      v82 = v46;
      if (v46)
      {
        atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      std::operator+<char>();
      v47 = std::string::append(&v88, " at index: ");
      v48 = *&v47->__r_.__value_.__l.__data_;
      v89.__r_.__value_.__r.__words[2] = v47->__r_.__value_.__r.__words[2];
      *&v89.__r_.__value_.__l.__data_ = v48;
      v47->__r_.__value_.__l.__size_ = 0;
      v47->__r_.__value_.__r.__words[2] = 0;
      v47->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v87, v9);
      if ((v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v49 = &v87;
      }

      else
      {
        v49 = v87.__r_.__value_.__r.__words[0];
      }

      if ((v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v50 = HIBYTE(v87.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v50 = v87.__r_.__value_.__l.__size_;
      }

      v51 = std::string::append(&v89, v49, v50);
      v52 = *&v51->__r_.__value_.__l.__data_;
      v80 = v51->__r_.__value_.__r.__words[2];
      *v79 = v52;
      v51->__r_.__value_.__l.__size_ = 0;
      v51->__r_.__value_.__r.__words[2] = 0;
      v51->__r_.__value_.__r.__words[0] = 0;
      MIL::ValidationResult::ValidationResult(a4, &v81, 313, v79);
      if (SHIBYTE(v80) < 0)
      {
        operator delete(v79[0]);
      }

      if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v87.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v89.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v88.__r_.__value_.__l.__data_);
      }

      v31 = v82;
      if (!v82)
      {
        return;
      }

      goto LABEL_46;
    }

    Int64ScalarValue = MIL::IRConstantProperty::GetInt64ScalarValue(v12);
    if (Int64ScalarValue != MIL::IRConstantProperty::GetInt64ScalarValue(v14))
    {
      v53 = a3[1];
      v92 = *a3;
      v93 = v53;
      if (v53)
      {
        atomic_fetch_add_explicit(&v53->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      std::operator+<char>();
      v54 = std::string::append(&v88, " at index: ");
      v55 = *&v54->__r_.__value_.__l.__data_;
      v89.__r_.__value_.__r.__words[2] = v54->__r_.__value_.__r.__words[2];
      *&v89.__r_.__value_.__l.__data_ = v55;
      v54->__r_.__value_.__l.__size_ = 0;
      v54->__r_.__value_.__r.__words[2] = 0;
      v54->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v87, v9);
      if ((v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v56 = &v87;
      }

      else
      {
        v56 = v87.__r_.__value_.__r.__words[0];
      }

      if ((v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v57 = HIBYTE(v87.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v57 = v87.__r_.__value_.__l.__size_;
      }

      v58 = std::string::append(&v89, v56, v57);
      v59 = *&v58->__r_.__value_.__l.__data_;
      v91 = v58->__r_.__value_.__r.__words[2];
      v90 = v59;
      v58->__r_.__value_.__l.__size_ = 0;
      v58->__r_.__value_.__r.__words[2] = 0;
      v58->__r_.__value_.__r.__words[0] = 0;
      MIL::ValidationResult::ValidationResult(a4, &v92, 313, &v90);
      if (SHIBYTE(v91) < 0)
      {
        operator delete(v90);
      }

      if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v87.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v89.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v88.__r_.__value_.__l.__data_);
      }

      v31 = v93;
      if (!v93)
      {
        return;
      }

      goto LABEL_46;
    }

LABEL_25:
    ++v9;
    v5 = *a1;
    if (v9 >= (a1[1] - *a1) >> 3)
    {
      goto LABEL_26;
    }
  }

  if (v12)
  {
    v16 = 1;
  }

  else
  {
    v16 = v13 == 0;
  }

  if (v16)
  {
    if (v12)
    {
      v17 = v13 == 0;
    }

    else
    {
      v17 = 0;
    }

    if (v17)
    {
      v32 = a3[1];
      v73 = *a3;
      v74 = v32;
      if (v32)
      {
        atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      std::operator+<char>();
      v33 = std::string::append(&v88, " must not be constant at index: ");
      v34 = *&v33->__r_.__value_.__l.__data_;
      v89.__r_.__value_.__r.__words[2] = v33->__r_.__value_.__r.__words[2];
      *&v89.__r_.__value_.__l.__data_ = v34;
      v33->__r_.__value_.__l.__size_ = 0;
      v33->__r_.__value_.__r.__words[2] = 0;
      v33->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v87, v9);
      if ((v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v35 = &v87;
      }

      else
      {
        v35 = v87.__r_.__value_.__r.__words[0];
      }

      if ((v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v36 = HIBYTE(v87.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v36 = v87.__r_.__value_.__l.__size_;
      }

      v37 = std::string::append(&v89, v35, v36);
      v38 = *&v37->__r_.__value_.__l.__data_;
      v72 = v37->__r_.__value_.__r.__words[2];
      *v71 = v38;
      v37->__r_.__value_.__l.__size_ = 0;
      v37->__r_.__value_.__r.__words[2] = 0;
      v37->__r_.__value_.__r.__words[0] = 0;
      MIL::ValidationResult::ValidationResult(a4, &v73, 313, v71);
      if (SHIBYTE(v72) < 0)
      {
        operator delete(v71[0]);
      }

      if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v87.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v89.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v88.__r_.__value_.__l.__data_);
      }

      v31 = v74;
      if (v74)
      {
        goto LABEL_46;
      }

      return;
    }

    v18 = MIL::IRProperty::AsUnknown(v10);
    IsVariadic = MIL::IRUnknownProperty::IsVariadic(v18);
    v20 = MIL::IRProperty::AsUnknown(v11);
    if (IsVariadic != MIL::IRUnknownProperty::IsVariadic(v20))
    {
      v39 = a3[1];
      v69 = *a3;
      v70 = v39;
      if (v39)
      {
        atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      std::operator+<char>();
      v40 = std::string::append(&v88, " in terms of being unknown variadic at index: ");
      v41 = *&v40->__r_.__value_.__l.__data_;
      v89.__r_.__value_.__r.__words[2] = v40->__r_.__value_.__r.__words[2];
      *&v89.__r_.__value_.__l.__data_ = v41;
      v40->__r_.__value_.__l.__size_ = 0;
      v40->__r_.__value_.__r.__words[2] = 0;
      v40->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v87, v9);
      if ((v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v42 = &v87;
      }

      else
      {
        v42 = v87.__r_.__value_.__r.__words[0];
      }

      if ((v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v43 = HIBYTE(v87.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v43 = v87.__r_.__value_.__l.__size_;
      }

      v44 = std::string::append(&v89, v42, v43);
      v45 = *&v44->__r_.__value_.__l.__data_;
      v68 = v44->__r_.__value_.__r.__words[2];
      *v67 = v45;
      v44->__r_.__value_.__l.__size_ = 0;
      v44->__r_.__value_.__r.__words[2] = 0;
      v44->__r_.__value_.__r.__words[0] = 0;
      MIL::ValidationResult::ValidationResult(a4, &v69, 313, v67);
      if (SHIBYTE(v68) < 0)
      {
        operator delete(v67[0]);
      }

      if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v87.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v89.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v88.__r_.__value_.__l.__data_);
      }

      v31 = v70;
      if (v70)
      {
        goto LABEL_46;
      }

      return;
    }

    goto LABEL_25;
  }

  v24 = a3[1];
  v77 = *a3;
  v78 = v24;
  if (v24)
  {
    atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::operator+<char>();
  v25 = std::string::append(&v88, " must be constant at index: ");
  v26 = *&v25->__r_.__value_.__l.__data_;
  v89.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
  *&v89.__r_.__value_.__l.__data_ = v26;
  v25->__r_.__value_.__l.__size_ = 0;
  v25->__r_.__value_.__r.__words[2] = 0;
  v25->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v87, v9);
  if ((v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v27 = &v87;
  }

  else
  {
    v27 = v87.__r_.__value_.__r.__words[0];
  }

  if ((v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v28 = HIBYTE(v87.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v28 = v87.__r_.__value_.__l.__size_;
  }

  v29 = std::string::append(&v89, v27, v28);
  v30 = *&v29->__r_.__value_.__l.__data_;
  v76 = v29->__r_.__value_.__r.__words[2];
  *__p = v30;
  v29->__r_.__value_.__l.__size_ = 0;
  v29->__r_.__value_.__r.__words[2] = 0;
  v29->__r_.__value_.__r.__words[0] = 0;
  MIL::ValidationResult::ValidationResult(a4, &v77, 313, __p);
  if (SHIBYTE(v76) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v87.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v89.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v88.__r_.__value_.__l.__data_);
  }

  v31 = v78;
  if (v78)
  {
    goto LABEL_46;
  }
}

void sub_218120634(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, void *__p, uint64_t a46, int a47, __int16 a48, char a49, char a50, uint64_t a51, uint64_t a52, std::__shared_weak_count *a53)
{
  if (a50 < 0)
  {
    operator delete(__p);
  }

  if (*(v53 - 185) < 0)
  {
    operator delete(*(v53 - 208));
  }

  if (*(v53 - 137) < 0)
  {
    operator delete(*(v53 - 160));
  }

  if (*(v53 - 161) < 0)
  {
    operator delete(*(v53 - 184));
  }

  if (a53)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a53);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::Operators::Common::Shared::ValidateStridesAndInterleaveFactors@<X0>(uint64_t a1@<X0>, MIL::IRTensorValueType *a2@<X1>, MIL::IRTensorValueType *a3@<X2>, uint64_t a4@<X3>, MIL::ValidationResult *a5@<X8>)
{
  v12[1] = a4;
  v13 = a1;
  v12[0] = &v13;
  std::string::basic_string[abi:ne200100]<0>(__p, "strides");
  MIL::Operators::Common::Shared::ValidateStridesAndInterleaveFactors(MIL::IRTensorValueType const*,MIL::IRTensorValueType const*,MIL::IRTensorValueType const*,std::shared_ptr<MIL::Location const>)::$_0::operator()(a2, v12, __p, a5);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  result = MIL::ValidationResult::IsGood(a5);
  if (result)
  {
    MIL::ValidationResult::~ValidationResult(a5);
    std::string::basic_string[abi:ne200100]<0>(__p, "interleaveFactors");
    MIL::Operators::Common::Shared::ValidateStridesAndInterleaveFactors(MIL::IRTensorValueType const*,MIL::IRTensorValueType const*,MIL::IRTensorValueType const*,std::shared_ptr<MIL::Location const>)::$_0::operator()(a3, v12, __p, a5);
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }

    result = MIL::ValidationResult::IsGood(a5);
    if (result)
    {
      MIL::ValidationResult::~ValidationResult(a5);
      return MIL::ValidationResult::ValidationResult(v9);
    }
  }

  return result;
}

void MIL::Operators::Common::Shared::ValidateStridesAndInterleaveFactors(MIL::IRTensorValueType const*,MIL::IRTensorValueType const*,MIL::IRTensorValueType const*,std::shared_ptr<MIL::Location const>)::$_0::operator()(MIL::IRTensorValueType *this@<X1>, uint64_t a2@<X0>, const void **a3@<X2>, MIL::ValidationResult *a4@<X8>)
{
  if (MIL::IRTensorValueType::Rank(this) != 1)
  {
    v11 = *(a2 + 8);
    v13 = *v11;
    v12 = v11[1];
    v30 = v13;
    v31 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (*(a3 + 23) >= 0)
    {
      v14 = *(a3 + 23);
    }

    else
    {
      v14 = a3[1];
    }

    v15 = __p;
    std::string::basic_string[abi:ne200100](__p, v14 + 18);
    if (v29 < 0)
    {
      v15 = __p[0];
    }

    if (v14)
    {
      if (*(a3 + 23) >= 0)
      {
        v16 = a3;
      }

      else
      {
        v16 = *a3;
      }

      memmove(v15, v16, v14);
    }

    strcpy(v15 + v14, " must have rank 1.");
    MIL::ValidationResult::ValidationResult(a4, &v30, 304, __p);
    if (v29 < 0)
    {
      operator delete(__p[0]);
    }

    v17 = v31;
    if (!v31)
    {
      return;
    }

LABEL_22:
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    return;
  }

  v8 = (*(*this + 96))(this);
  if (*(v8 + 8) == *v8)
  {
    std::vector<MIL::IRDimension const*>::__throw_out_of_range[abi:ne200100]();
  }

  v9 = MIL::IRDimension::AsConstant(**v8);
  v10 = (*(*v9 + 48))(v9);
  if (v10 == MIL::IRTensorValueType::Rank(**a2))
  {

    MIL::ValidationResult::ValidationResult(a4);
    return;
  }

  v18 = *(a2 + 8);
  v20 = *v18;
  v19 = v18[1];
  v26 = v20;
  v27 = v19;
  if (v19)
  {
    atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::operator+<char>();
  v21 = std::string::append(&v23, " must match the rank of input.");
  v22 = *&v21->__r_.__value_.__l.__data_;
  v25 = v21->__r_.__value_.__r.__words[2];
  *v24 = v22;
  v21->__r_.__value_.__l.__size_ = 0;
  v21->__r_.__value_.__r.__words[2] = 0;
  v21->__r_.__value_.__r.__words[0] = 0;
  MIL::ValidationResult::ValidationResult(a4, &v26, 304, v24);
  if (SHIBYTE(v25) < 0)
  {
    operator delete(v24[0]);
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  v17 = v27;
  if (v27)
  {
    goto LABEL_22;
  }
}

void sub_218120C34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, std::__shared_weak_count *a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (a23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a23);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::Shared::CustomValidators::ValidatePixelBufferToTensor(MIL::Operators::Common::Shared::CustomValidators *this, const MIL::IROperation *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&v10, "input");
  ParameterType = MIL::IROperation::GetParameterType(this);
  v4 = MIL::IRValueType::AsMemoryLayoutType(ParameterType);
  v5 = MIL::IRMemoryLayoutValueType::AsPixelBufferType(v4);
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v10, "plane_index");
  MIL::IROperation::TryGetParameterValueSharedPtr(this, &v10, 0, &v8);
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  OutputType = MIL::IROperation::GetOutputType(this, 0);
  MIL::IRValueType::AsTensorType(OutputType);
  std::string::basic_string[abi:ne200100]<0>(&v9, "input");
  MIL::IRTypedArgument::Make(v5, v7);
}

void sub_2181213D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, char a43)
{
  if (v44)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v44);
  }

  v47 = *(v45 - 152);
  if (v47)
  {
    *(v45 - 144) = v47;
    operator delete(v47);
  }

  if (v43)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v43);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>>>::~__hash_table(&a43);
  v48 = *(v45 - 184);
  if (v48)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v48);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::Shared::CustomValueTypeInference::ValueTypeInferencePixelBufferToTensor(MIL::IRConstantDimension **a1, void *a2, void *a3)
{
  v45[2] = *MEMORY[0x277D85DE8];
  if (!a3[3])
  {
    exception = __cxa_allocate_exception(0x48uLL);
    v26 = a2[1];
    v43[0] = *a2;
    v43[1] = v26;
    if (v26)
    {
      atomic_fetch_add_explicit((v26 + 8), 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v42, "At least one input is expected.");
    MIL::ValidationResult::ValidationResult(v44, v43, 300, v42);
    MIL::ValidationError::ValidationError(exception, v44);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "input");
  SingleValueType = MIL::ValueTypeInferenceUtils::GetSingleValueType(a3, &__p);
  v7 = MIL::IRValueType::AsMemoryLayoutType(SingleValueType);
  v8 = MIL::IRMemoryLayoutValueType::AsPixelBufferType(v7);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "plane_index");
  v9 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, &__p.__r_.__value_.__l.__data_);
  v10 = v9;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (v10)
    {
LABEL_6:
      std::string::basic_string[abi:ne200100]<0>(&__p, "plane_index");
      SingleValue = MIL::ValueTypeInferenceUtils::GetSingleValue(a3, &__p);
      v12 = MIL::IRValue::AsTensor(SingleValue);
      v45[0] = MIL::IRTensorValue::GetDataView<unsigned char>(v12);
      v45[1] = v13;
      v14 = *MIL::Util::Span<unsigned char const,18446744073709551615ul>::At(v45, 0);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

LABEL_10:
      Shape = MIL::IRPixelBufferValueType::GetShape(v8);
      if (Shape[1] - *Shape == 16)
      {
        PixelFormatType = MIL::IRPixelBufferValueType::GetPixelFormatType(v8);
        if (MIL::GetNumPlanesForFormat(PixelFormatType) > v14)
        {
          v17 = MIL::IRPixelBufferValueType::GetPixelFormatType(v8);
          if (MIL::SupportsMultiSlice(v17))
          {
            NumSlices = MIL::IRPixelBufferValueType::GetNumSlices(v8);
            v19 = MIL::IRProperty::AsConstant(*(*NumSlices + 8 * v14));
            Int64ScalarValue = MIL::IRConstantProperty::GetInt64ScalarValue(v19);
          }

          else
          {
            Int64ScalarValue = 0;
          }

          v21 = *a1;
          v22 = MIL::IRPixelBufferValueType::GetPixelFormatType(v8);
          v23 = MIL::IRPixelBufferValueType::GetShape(v8);
          MIL::GetShapeForPlane(v21, Int64ScalarValue, v22, v23, v14, &__p);
          v24 = MIL::IRPixelBufferValueType::GetPixelFormatType(v8);
          MIL::GetDTypeForPixelFormat(v24);
          MIL::IRTensorValueType::MakeWithShape();
        }

        v29 = __cxa_allocate_exception(0x48uLL);
        v30 = a2[1];
        v36[0] = *a2;
        v36[1] = v30;
        if (v30)
        {
          atomic_fetch_add_explicit((v30 + 8), 1uLL, memory_order_relaxed);
        }

        v31 = MIL::IRPixelBufferValueType::GetPixelFormatType(v8);
        MIL::IRPixelFormatTypeToString(v31, &__p);
        v32 = std::string::insert(&__p, 0, "Plane index exceeds the number of planes for the given format type: ");
        v33 = *&v32->__r_.__value_.__l.__data_;
        v35 = v32->__r_.__value_.__r.__words[2];
        v34 = v33;
        v32->__r_.__value_.__l.__size_ = 0;
        v32->__r_.__value_.__r.__words[2] = 0;
        v32->__r_.__value_.__r.__words[0] = 0;
        MIL::ValidationResult::ValidationResult(v37, v36, 305, &v34);
        MIL::ValidationError::ValidationError(v29, v37);
      }

      v27 = __cxa_allocate_exception(0x48uLL);
      v28 = a2[1];
      v39[0] = *a2;
      v39[1] = v28;
      if (v28)
      {
        atomic_fetch_add_explicit((v28 + 8), 1uLL, memory_order_relaxed);
      }

      std::string::basic_string[abi:ne200100]<0>(v38, "Input rank must be 2.");
      MIL::ValidationResult::ValidationResult(v40, v39, 305, v38);
      MIL::ValidationError::ValidationError(v27, v40);
    }
  }

  else if (v9)
  {
    goto LABEL_6;
  }

  v14 = 0;
  goto LABEL_10;
}

void sub_218121A28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::__shared_weak_count *a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  MIL::ValidationResult::~ValidationResult(&a17);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a44 < 0)
  {
    operator delete(a39);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  if (v45)
  {
    __cxa_free_exception(v44);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::Shared::anonymous namespace::ValidateShapes(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, MIL::ValidationResult *a4@<X8>)
{
  v5 = *a1;
  if (a1[1] == *a1)
  {
LABEL_22:

    MIL::ValidationResult::ValidationResult(a4);
    return;
  }

  v9 = 0;
  while (1)
  {
    if (v9 >= (a2[1] - *a2) >> 3)
    {
      std::vector<MIL::IRDimension const*>::__throw_out_of_range[abi:ne200100]();
    }

    v10 = *(v5 + 8 * v9);
    v11 = *(*a2 + 8 * v9);
    v12 = (*(*v10 + 16))(v10);
    v13 = (*(*v11 + 16))(v11);
    v14 = v13;
    if (v12 && v13 != 0)
    {
      break;
    }

    if (v12)
    {
      v16 = 1;
    }

    else
    {
      v16 = v13 == 0;
    }

    if (!v16)
    {
      v22 = a3[1];
      v45 = *a3;
      v46 = v22;
      if (v22)
      {
        atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      std::to_string(&v47, v9);
      v23 = std::string::insert(&v47, 0, "Output dim must be constant at index: ");
      v24 = *&v23->__r_.__value_.__l.__data_;
      v44 = v23->__r_.__value_.__r.__words[2];
      *__p = v24;
      v23->__r_.__value_.__l.__size_ = 0;
      v23->__r_.__value_.__r.__words[2] = 0;
      v23->__r_.__value_.__r.__words[0] = 0;
      MIL::ValidationResult::ValidationResult(a4, &v45, 313, __p);
      if (SHIBYTE(v44) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v47.__r_.__value_.__l.__data_);
      }

      v25 = v46;
      if (v46)
      {
        goto LABEL_32;
      }

      return;
    }

    if (v12)
    {
      v17 = v13 == 0;
    }

    else
    {
      v17 = 0;
    }

    if (v17)
    {
      v29 = a3[1];
      v41 = *a3;
      v42 = v29;
      if (v29)
      {
        atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      std::to_string(&v47, v9);
      v30 = std::string::insert(&v47, 0, "Output dim must not be constant at index: ");
      v31 = *&v30->__r_.__value_.__l.__data_;
      v40 = v30->__r_.__value_.__r.__words[2];
      *v39 = v31;
      v30->__r_.__value_.__l.__size_ = 0;
      v30->__r_.__value_.__r.__words[2] = 0;
      v30->__r_.__value_.__r.__words[0] = 0;
      MIL::ValidationResult::ValidationResult(a4, &v41, 313, v39);
      if (SHIBYTE(v40) < 0)
      {
        operator delete(v39[0]);
      }

      if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v47.__r_.__value_.__l.__data_);
      }

      v25 = v42;
      if (v42)
      {
        goto LABEL_32;
      }

      return;
    }

    v18 = MIL::IRDimension::AsUnknown(v10);
    v19 = (*(*v18 + 32))(v18);
    v20 = MIL::IRDimension::AsUnknown(v11);
    if (v19 != (*(*v20 + 32))(v20))
    {
      v32 = a3[1];
      v37 = *a3;
      v38 = v32;
      if (v32)
      {
        atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      std::to_string(&v47, v9);
      v33 = std::string::insert(&v47, 0, "Unexpected unknown dim in terms of being variadic at index: ");
      v34 = *&v33->__r_.__value_.__l.__data_;
      v36 = v33->__r_.__value_.__r.__words[2];
      *v35 = v34;
      v33->__r_.__value_.__l.__size_ = 0;
      v33->__r_.__value_.__r.__words[2] = 0;
      v33->__r_.__value_.__r.__words[0] = 0;
      MIL::ValidationResult::ValidationResult(a4, &v37, 313, v35);
      if (SHIBYTE(v36) < 0)
      {
        operator delete(v35[0]);
      }

      if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v47.__r_.__value_.__l.__data_);
      }

      v25 = v38;
      if (v38)
      {
        goto LABEL_32;
      }

      return;
    }

LABEL_21:
    ++v9;
    v5 = *a1;
    if (v9 >= (a1[1] - *a1) >> 3)
    {
      goto LABEL_22;
    }
  }

  v21 = (*(*v12 + 48))(v12);
  if (v21 == (*(*v14 + 48))(v14))
  {
    goto LABEL_21;
  }

  v26 = a3[1];
  v50 = *a3;
  v51 = v26;
  if (v26)
  {
    atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::to_string(&v47, v9);
  v27 = std::string::insert(&v47, 0, "Unexpected output constant dim at index: ");
  v28 = *&v27->__r_.__value_.__l.__data_;
  v49 = v27->__r_.__value_.__r.__words[2];
  v48 = v28;
  v27->__r_.__value_.__l.__size_ = 0;
  v27->__r_.__value_.__r.__words[2] = 0;
  v27->__r_.__value_.__r.__words[0] = 0;
  MIL::ValidationResult::ValidationResult(a4, &v50, 313, &v48);
  if (SHIBYTE(v49) < 0)
  {
    operator delete(v48);
  }

  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
  }

  v25 = v51;
  if (v51)
  {
LABEL_32:
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }
}

void sub_218121FA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

unint64_t MIL::Util::Span<unsigned char const,18446744073709551615ul>::At(void *a1, unint64_t a2)
{
  if (a1[1] <= a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::range_error::range_error[abi:ne200100](exception, "index out of bounds");
    __cxa_throw(exception, off_278235F68, MEMORY[0x277D825E0]);
  }

  return *a1 + a2;
}

void MIL::Operators::Common::Shared::CustomValidators::ValidateTensorToPixelBuffer(MIL::Operators::Common::Shared::CustomValidators *this@<X0>, uint64_t a2@<X8>)
{
  v24 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&v23, "pixel_format_type");
  MIL::IROperation::TryGetParameterValueSharedPtr(this, &v23, 0, &v21);
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v23, "bytes_per_row");
  MIL::IROperation::TryGetParameterType(this, &v23, 0);
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v23, "num_slices");
  MIL::IROperation::TryGetParameterType(this, &v23, 0);
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  OutputType = MIL::IROperation::GetOutputType(this, 0);
  v6 = MIL::IRValueType::AsMemoryLayoutType(OutputType);
  MIL::IRMemoryLayoutValueType::AsPixelBufferType(v6);
  MIL::IRValue::GetScalar<std::string>(v21, &v23);
  v7 = MIL::StringToIRPixelFormatType(&v23.__r_.__value_.__l.__data_);
  NumPlanesForFormat = MIL::GetNumPlanesForFormat(v7);
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v23, "input");
  v9 = (*(*this + 152))(this, &v23);
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  if (v9 == NumPlanesForFormat)
  {
    std::vector<std::shared_ptr<MIL::IRTypedArgument>>::vector[abi:ne200100](&v16, NumPlanesForFormat);
    if (NumPlanesForFormat)
    {
      std::string::basic_string[abi:ne200100]<0>(&v23, "input");
      ParameterType = MIL::IROperation::GetParameterType(this);
      v11 = MIL::IRValueType::AsTensorType(ParameterType);
      MIL::IRTypedArgument::Make(v11, v12);
    }

    std::pair<std::string const,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>::pair[abi:ne200100]<char const(&)[6],std::vector<std::shared_ptr<MIL::IRTypedArgument>>&,0>(&v23, "input", &v16);
    std::string::basic_string[abi:ne200100]<0>(&v15, "pixel_format_type");
    if (v22)
    {
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    MIL::IRTypedArgument::Make();
  }

  LocationPtr = MIL::IRObject::GetLocationPtr(this);
  v14 = LocationPtr[1];
  v19 = *LocationPtr;
  v20 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "Mismatch between expected number of planes and pixel format.");
  MIL::ValidationResult::ValidationResult(a2, &v19, 315, __p);
  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }
}

void sub_21812363C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, void *a54, uint64_t a55, int a56, __int16 a57, char a58, char a59, void *a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (*(v68 - 169) < 0)
  {
    operator delete(*(v68 - 192));
  }

  if (a59 < 0)
  {
    operator delete(a54);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  if (a60)
  {
    operator delete(a60);
  }

  v70 = *(v68 - 200);
  if (v70)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v70);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>>>::~__hash_table(&a63);
  a63 = &a68;
  std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](&a63);
  v71 = *(v68 - 240);
  if (v71)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v71);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::Shared::CustomValueTypeInference::ValueTypeInferenceTensorToPixelBuffer(MIL::IRConstantDimension **a1, void *a2, void *a3)
{
  v102[2] = *MEMORY[0x277D85DE8];
  if ((a3[3] - 2) >= 3)
  {
    exception = __cxa_allocate_exception(0x48uLL);
    v67 = a2[1];
    v100[0] = *a2;
    v100[1] = v67;
    if (v67)
    {
      atomic_fetch_add_explicit((v67 + 8), 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v99, "Two or three inputs are expected.");
    MIL::ValidationResult::ValidationResult(v101, v100, 300, v99);
    MIL::ValidationError::ValidationError(exception, v101);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "input");
  MIL::ValueTypeInferenceUtils::GetVariadicValueTypes(a3, __p, v98);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  std::string::basic_string[abi:ne200100]<0>(&v95, "pixel_format_type");
  SingleValue = MIL::ValueTypeInferenceUtils::GetSingleValue(a3, &v95);
  MIL::IRValue::GetScalar<std::string>(SingleValue, __p);
  v7 = MIL::StringToIRPixelFormatType(__p);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  if (SHIBYTE(v97) < 0)
  {
    operator delete(v95);
  }

  v9 = v98[0];
  v8 = v98[1];
  if (MIL::GetNumPlanesForFormat(v7) != (v8 - v9) >> 3)
  {
    v68 = __cxa_allocate_exception(0x48uLL);
    v69 = a2[1];
    v93[0] = *a2;
    v93[1] = v69;
    if (v69)
    {
      atomic_fetch_add_explicit((v69 + 8), 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v92, "Mismatch between expected number of planes and pixel format.");
    MIL::ValidationResult::ValidationResult(v94, v93, 315, v92);
    MIL::ValidationError::ValidationError(v68, v94);
  }

  v10 = MIL::IRValueType::AsTensorType(*v98[0]);
  v11 = (*(*v10 + 96))(v10);
  v95 = 0;
  v96 = 0;
  v97 = 0;
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&v95, *v11, v11[1], (v11[1] - *v11) >> 3);
  v12 = v95;
  v13 = v96 - (v95 + 1);
  if (v96 != v95 + 1)
  {
    memmove(v95, v95 + 1, v96 - (v95 + 1));
  }

  v96 = (v12 + v13);
  v14 = MIL::IRValueType::AsTensorType(*v98[0]);
  v15 = (*(*v14 + 88))(v14);
  if (v15 != MIL::GetDTypeForPixelFormat(v7))
  {
    v70 = __cxa_allocate_exception(0x48uLL);
    v71 = a2[1];
    v90[0] = *a2;
    v90[1] = v71;
    if (v71)
    {
      atomic_fetch_add_explicit((v71 + 8), 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v89, "Unexpected pixel format type for the given tensor dtype.");
    MIL::ValidationResult::ValidationResult(v91, v90, 313, v89);
    MIL::ValidationError::ValidationError(v70, v91);
  }

  for (i = 1; MIL::GetNumPlanesForFormat(v7) > i; ++i)
  {
    v17 = MIL::IRValueType::AsTensorType(*(v98[0] + 8 * i));
    v18 = (*(*v17 + 96))(v17);
    memset(__p, 0, 24);
    std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(__p, *v18, v18[1], (v18[1] - *v18) >> 3);
    MIL::GetShapeForPlane(*a1, 0, v7, &v95, i, &v86);
    if ((MIL::Validation::IsEqualConstShape(__p, &v86) & 1) == 0)
    {
      v54 = __cxa_allocate_exception(0x48uLL);
      v55 = a2[1];
      v84[0] = *a2;
      v84[1] = v55;
      if (v55)
      {
        atomic_fetch_add_explicit((v55 + 8), 1uLL, memory_order_relaxed);
      }

      std::to_string(&v80, i);
      v56 = std::string::insert(&v80, 0, "Plane index ");
      v57 = *&v56->__r_.__value_.__l.__data_;
      v81.__r_.__value_.__r.__words[2] = v56->__r_.__value_.__r.__words[2];
      *&v81.__r_.__value_.__l.__data_ = v57;
      v56->__r_.__value_.__l.__size_ = 0;
      v56->__r_.__value_.__r.__words[2] = 0;
      v56->__r_.__value_.__r.__words[0] = 0;
      v58 = std::string::append(&v81, " has unexpected shape.");
      v59 = *&v58->__r_.__value_.__l.__data_;
      v83 = v58->__r_.__value_.__r.__words[2];
      v82 = v59;
      v58->__r_.__value_.__l.__size_ = 0;
      v58->__r_.__value_.__r.__words[2] = 0;
      v58->__r_.__value_.__r.__words[0] = 0;
      MIL::ValidationResult::ValidationResult(v85, v84, 315, &v82);
      MIL::ValidationError::ValidationError(v54, v85);
    }

    v19 = MIL::IRValueType::AsTensorType(*(v98[0] + 8 * i));
    if ((*(*v19 + 88))(v19) != v15)
    {
      v60 = __cxa_allocate_exception(0x48uLL);
      v61 = a2[1];
      v78[0] = *a2;
      v78[1] = v61;
      if (v61)
      {
        atomic_fetch_add_explicit((v61 + 8), 1uLL, memory_order_relaxed);
      }

      std::to_string(&v80, i);
      v62 = std::string::insert(&v80, 0, "Plane index ");
      v63 = *&v62->__r_.__value_.__l.__data_;
      v81.__r_.__value_.__r.__words[2] = v62->__r_.__value_.__r.__words[2];
      *&v81.__r_.__value_.__l.__data_ = v63;
      v62->__r_.__value_.__l.__size_ = 0;
      v62->__r_.__value_.__r.__words[2] = 0;
      v62->__r_.__value_.__r.__words[0] = 0;
      v64 = std::string::append(&v81, " has unexpected dtype.");
      v65 = *&v64->__r_.__value_.__l.__data_;
      v77 = v64->__r_.__value_.__r.__words[2];
      v76 = v65;
      v64->__r_.__value_.__l.__size_ = 0;
      v64->__r_.__value_.__r.__words[2] = 0;
      v64->__r_.__value_.__r.__words[0] = 0;
      MIL::ValidationResult::ValidationResult(v79, v78, 315, &v76);
      MIL::ValidationError::ValidationError(v60, v79);
    }

    if (v86)
    {
      v87 = v86;
      operator delete(v86);
    }

    if (*__p)
    {
      *&__p[8] = *__p;
      operator delete(*__p);
    }
  }

  v86 = 0;
  v87 = 0;
  v88 = 0;
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&v86, v95, v96, v96 - v95);
  memset(&v81, 0, sizeof(v81));
  std::string::basic_string[abi:ne200100]<0>(__p, "bytes_per_row");
  v20 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, __p);
  v21 = v20;
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
    if (!v21)
    {
      goto LABEL_40;
    }
  }

  else if (!v20)
  {
    goto LABEL_40;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "bytes_per_row");
  SingleValueType = MIL::ValueTypeInferenceUtils::GetSingleValueType(a3, __p);
  v23 = MIL::IRValueType::AsTensorType(SingleValueType);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  v24 = (*(*v23 + 96))(v23);
  if (*(v24 + 8) == *v24)
  {
    std::vector<MIL::IRDimension const*>::__throw_out_of_range[abi:ne200100]();
  }

  v25 = MIL::IRDimension::AsConstant(**v24);
  v26 = (*(*v25 + 48))(v25);
  std::vector<MIL::IRProperty const*>::vector[abi:ne200100](__p, v26);
  v27 = *__p;
  v81 = *__p;
  v72 = *&__p[8];
  std::string::basic_string[abi:ne200100]<0>(__p, "bytes_per_row");
  v28 = MIL::ValueTypeInferenceUtils::TryGetSingleValue(a3, __p);
  v29 = v28;
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
    if (v29)
    {
      goto LABEL_30;
    }
  }

  else if (v28)
  {
LABEL_30:
    std::string::basic_string[abi:ne200100]<0>(__p, "bytes_per_row");
    v30 = MIL::ValueTypeInferenceUtils::GetSingleValue(a3, __p);
    v31 = MIL::IRValue::AsTensor(v30);
    v80.__r_.__value_.__r.__words[0] = MIL::IRTensorValue::GetDataView<long long>(v31);
    v80.__r_.__value_.__l.__size_ = v32;
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    if (v72 != v27)
    {
      v33 = 0;
      do
      {
        v34 = *a1;
        v35 = MIL::Util::Span<long long const,18446744073709551615ul>::At(&v80, v33);
        *(v27 + 8 * v33++) = MIL::IRConstantProperty::MakeInt64Scalar(v34, *v35);
        v27 = v81.__r_.__value_.__r.__words[0];
      }

      while (v33 < (v81.__r_.__value_.__l.__size_ - v81.__r_.__value_.__r.__words[0]) >> 3);
    }

    goto LABEL_40;
  }

  if (v72 != v27)
  {
    v36 = 0;
    do
    {
      *(v27 + 8 * v36++) = MIL::IRUnknownProperty::Make(*a1, 0);
      v27 = v81.__r_.__value_.__r.__words[0];
    }

    while (v36 < (v81.__r_.__value_.__l.__size_ - v81.__r_.__value_.__r.__words[0]) >> 3);
  }

LABEL_40:
  memset(&v80, 0, sizeof(v80));
  std::string::basic_string[abi:ne200100]<0>(__p, "num_slices");
  v37 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, __p);
  v38 = v37;
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
    if (!v38)
    {
      goto LABEL_59;
    }
  }

  else if (!v37)
  {
    goto LABEL_59;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "num_slices");
  v39 = MIL::ValueTypeInferenceUtils::GetSingleValueType(a3, __p);
  v40 = MIL::IRValueType::AsTensorType(v39);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  v41 = (*(*v40 + 96))(v40);
  if (*(v41 + 8) == *v41)
  {
    std::vector<MIL::IRDimension const*>::__throw_out_of_range[abi:ne200100]();
  }

  v42 = MIL::IRDimension::AsConstant(**v41);
  v43 = (*(*v42 + 48))(v42);
  std::vector<MIL::IRProperty const*>::vector[abi:ne200100](__p, v43);
  v44 = *__p;
  v80 = *__p;
  v73 = *&__p[8];
  std::string::basic_string[abi:ne200100]<0>(__p, "num_slices");
  v45 = MIL::ValueTypeInferenceUtils::TryGetSingleValue(a3, __p);
  v46 = v45;
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
    if (v46)
    {
      goto LABEL_49;
    }
  }

  else if (v45)
  {
LABEL_49:
    std::string::basic_string[abi:ne200100]<0>(__p, "num_slices");
    v47 = MIL::ValueTypeInferenceUtils::GetSingleValue(a3, __p);
    v48 = MIL::IRValue::AsTensor(v47);
    v102[0] = MIL::IRTensorValue::GetDataView<long long>(v48);
    v102[1] = v49;
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    if (v73 != v44)
    {
      v50 = 0;
      do
      {
        v51 = *a1;
        v52 = MIL::Util::Span<long long const,18446744073709551615ul>::At(v102, v50);
        *(v44 + 8 * v50++) = MIL::IRConstantProperty::MakeInt64Scalar(v51, *v52);
        v44 = v80.__r_.__value_.__r.__words[0];
      }

      while (v50 < (v80.__r_.__value_.__l.__size_ - v80.__r_.__value_.__r.__words[0]) >> 3);
    }

    goto LABEL_59;
  }

  if (v73 != v44)
  {
    v53 = 0;
    do
    {
      *(v44 + 8 * v53++) = MIL::IRUnknownProperty::Make(*a1, 0);
      v44 = v80.__r_.__value_.__r.__words[0];
    }

    while (v53 < (v80.__r_.__value_.__l.__size_ - v80.__r_.__value_.__r.__words[0]) >> 3);
  }

LABEL_59:
  memset(__p, 0, sizeof(__p));
  v75 = 1065353216;
  MIL::IRPixelBufferValueType::MakeWithShapeBytesPerRowNumSlices();
}

void sub_21812479C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, void *__p, uint64_t a53, int a54, __int16 a55, char a56, char a57, uint64_t a58, std::__shared_weak_count *a59, char a60)
{
  MIL::ValidationResult::~ValidationResult(&a60);
  if (a57 < 0)
  {
    operator delete(__p);
  }

  if (a59)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a59);
  }

  if (v61)
  {
    __cxa_free_exception(v60);
  }

  v64 = *(v62 - 248);
  if (v64)
  {
    *(v62 - 240) = v64;
    operator delete(v64);
  }

  v65 = *(v62 - 224);
  if (v65)
  {
    *(v62 - 216) = v65;
    operator delete(v65);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::Shared::anonymous namespace::ValidatePropertyVecPtr(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X3>, uint64_t a4@<X8>)
{
  if (!a1 && a2)
  {
    v5 = a3[1];
    v18 = *a3;
    v19 = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::operator+<char>();
    MIL::ValidationResult::ValidationResult(a4, &v18, 313, &v16);
    if (v17 < 0)
    {
      operator delete(v16);
    }

    v6 = v19;
    if (!v19)
    {
      return;
    }

LABEL_16:
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    return;
  }

  if (!a1 || a2)
  {
    if (a1 && a2)
    {
      v8 = a3[1];
      v9[0] = *a3;
      v9[1] = v8;
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      MIL::Operators::Common::Shared::ValidatePropertyVec(a1, a2, v9, v10);
      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }

      if (!(*(v10[0] + 16))(v10))
      {
        MIL::MILResult::MILResult(a4, v10);
        *a4 = &unk_2829E9B70;
        *(a4 + 48) = v11;
        MIL::ValidationResult::~ValidationResult(v10);
        return;
      }

      MIL::ValidationResult::~ValidationResult(v10);
    }

    MIL::ValidationResult::ValidationResult(a4);
    return;
  }

  v7 = a3[1];
  v14 = *a3;
  v15 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::operator+<char>();
  MIL::ValidationResult::ValidationResult(a4, &v14, 313, &__p);
  if (v13 < 0)
  {
    operator delete(__p);
  }

  v6 = v15;
  if (v15)
  {
    goto LABEL_16;
  }
}

void sub_218124CE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::Util::Span<long long const,18446744073709551615ul>::At(void *a1, unint64_t a2)
{
  if (a1[1] <= a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::range_error::range_error[abi:ne200100](exception, "index out of bounds");
    __cxa_throw(exception, off_278235F68, MEMORY[0x277D825E0]);
  }

  return *a1 + 8 * a2;
}

void MIL::Operators::Common::Shared::CustomValidators::ValidateTensorBufferToTensor(MIL::Operators::Common::Shared::CustomValidators *this@<X0>, MIL::ValidationResult *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(&v27, "input");
  ParameterType = MIL::IROperation::GetParameterType(this);
  v6 = MIL::IRValueType::AsMemoryLayoutType(ParameterType);
  v7 = MIL::IRMemoryLayoutValueType::AsTensorBufferType(v6);
  if (v28 < 0)
  {
    operator delete(v27);
  }

  OutputType = MIL::IROperation::GetOutputType(this, 0);
  v9 = MIL::IRValueType::AsTensorType(OutputType);
  Shape = MIL::IRTensorBufferValueType::GetShape(v7);
  v11 = (*(*v9 + 96))(v9);
  v12 = *(Shape + 8) - *Shape;
  if (v12 == *(v11 + 8) - *v11 && !memcmp(*Shape, *v11, v12))
  {
    RowAlignmentInBytes = MIL::IRTensorBufferValueType::TryGetRowAlignmentInBytes(v7);
    if (!MIL::IRProperty::TryAsUnknown(RowAlignmentInBytes))
    {
      MIL::ValidationResult::ValidationResult(a2);
      return;
    }

    LocationPtr = MIL::IRObject::GetLocationPtr(this);
    v18 = LocationPtr[1];
    v21 = *LocationPtr;
    v22 = v18;
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v19, "Row_alignment_in_bytes in input cannot be unknown.");
    MIL::ValidationResult::ValidationResult(a2, &v21, 313, v19);
    if (v20 < 0)
    {
      operator delete(v19[0]);
    }

    v15 = v22;
    if (v22)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v13 = MIL::IRObject::GetLocationPtr(this);
    v14 = v13[1];
    v25 = *v13;
    v26 = v14;
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "Output shape must match the input shape.");
    MIL::ValidationResult::ValidationResult(a2, &v25, 313, __p);
    if (v24 < 0)
    {
      operator delete(__p[0]);
    }

    v15 = v26;
    if (v26)
    {
LABEL_10:
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }
  }
}

void sub_218124F9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25)
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

void MIL::Operators::Common::Shared::CustomValueTypeInference::ValueTypeInferenceTensorBufferToTensor(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(__p, "input");
  SingleValueType = MIL::ValueTypeInferenceUtils::GetSingleValueType(a3, __p);
  v5 = MIL::IRValueType::AsMemoryLayoutType(SingleValueType);
  v6 = MIL::IRMemoryLayoutValueType::AsTensorBufferType(v5);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  Shape = MIL::IRTensorBufferValueType::GetShape(v6);
  __p[0] = 0;
  __p[1] = 0;
  v9 = 0;
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(__p, *Shape, Shape[1], (Shape[1] - *Shape) >> 3);
  MIL::IRTensorBufferValueType::GetDataType(v6);
  MIL::IRTensorValueType::MakeWithShape();
}

void sub_21812511C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::Shared::CustomValidators::ValidateTensorToTensorBuffer(MIL::Operators::Common::Shared::CustomValidators *this@<X0>, uint64_t a2@<X8>)
{
  v33 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&v32, "input");
  ParameterType = MIL::IROperation::GetParameterType(this);
  v6 = MIL::IRValueType::AsTensorType(ParameterType);
  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v32, "strides");
  MIL::IROperation::TryGetParameterValueSharedPtr(this, &v32, 0, &v30);
  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v32, "strides");
  v7 = MIL::IROperation::TryGetParameterType(this, &v32, 0);
  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v32, "row_alignment_in_bytes");
  MIL::IROperation::TryGetParameterValueSharedPtr(this, &v32, 0, &v28);
  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v32, "interleave_factors");
  MIL::IROperation::TryGetParameterValueSharedPtr(this, &v32, 0, &v26);
  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v32, "interleave_factors");
  v8 = MIL::IROperation::GetParameterType(this);
  MIL::IRValueType::AsTensorType(v8);
  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  OutputType = MIL::IROperation::GetOutputType(this, 0);
  v10 = MIL::IRValueType::AsMemoryLayoutType(OutputType);
  MIL::IRMemoryLayoutValueType::AsTensorBufferType(v10);
  if (v7)
  {
    if (v28)
    {
      LocationPtr = MIL::IRObject::GetLocationPtr(this);
      v12 = LocationPtr[1];
      v20 = *LocationPtr;
      v21 = v12;
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "Both strides and row_alignment_in_bytes cannot be specified as an input parameter simultaneously in ios18 and above opsets.");
      MIL::ValidationResult::ValidationResult(a2, &v20, 315, __p);
      if (v19 < 0)
      {
        operator delete(__p[0]);
      }

      v13 = v21;
      if (!v21)
      {
        goto LABEL_29;
      }

LABEL_28:
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      goto LABEL_29;
    }

LABEL_22:
    std::string::basic_string[abi:ne200100]<0>(&v17, "input");
    MIL::IRTypedArgument::Make(v6, v14);
  }

  if (v28)
  {
    goto LABEL_22;
  }

  v15 = MIL::IRObject::GetLocationPtr(this);
  v16 = v15[1];
  v24 = *v15;
  v25 = v16;
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(v22, "One of strides or row_alignment_in_bytes is a required input parameter in ios18 and above opsets.");
  MIL::ValidationResult::ValidationResult(a2, &v24, 316, v22);
  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  v13 = v25;
  if (v25)
  {
    goto LABEL_28;
  }

LABEL_29:
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }
}

void sub_218126264(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, std::__shared_weak_count *a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, void *a58, uint64_t a59, uint64_t a60, void *a61, uint64_t a62, uint64_t a63)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a19);
  }

  if (a61)
  {
    operator delete(a61);
  }

  if (v64)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v64);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>>>::~__hash_table(&a64);
  v67 = *(v65 - 208);
  if (v67)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v67);
  }

  v68 = *(v65 - 192);
  if (v68)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v68);
  }

  v69 = *(v65 - 176);
  if (v69)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v69);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::Shared::CustomValueTypeInference::ValueTypeInferenceTensorToTensorBuffer(MIL::IRUnknownProperty **a1, void *a2, void *a3)
{
  v99 = *MEMORY[0x277D85DE8];
  if (a3[3] != 3)
  {
    exception = __cxa_allocate_exception(0x48uLL);
    v53 = a2[1];
    v97[0] = *a2;
    v97[1] = v53;
    if (v53)
    {
      atomic_fetch_add_explicit((v53 + 8), 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v96, "Three inputs are expected.");
    MIL::ValidationResult::ValidationResult(v98, v97, 300, v96);
    MIL::ValidationError::ValidationError(exception, v98);
  }

  std::string::basic_string[abi:ne200100]<0>(v93, "input");
  SingleValueType = MIL::ValueTypeInferenceUtils::GetSingleValueType(a3, v93);
  v7 = MIL::IRValueType::AsTensorType(SingleValueType);
  if ((v93[23] & 0x80000000) != 0)
  {
    operator delete(*v93);
  }

  std::string::basic_string[abi:ne200100]<0>(v93, "interleave_factors");
  v8 = MIL::ValueTypeInferenceUtils::GetSingleValueType(a3, v93);
  v9 = MIL::IRValueType::AsTensorType(v8);
  if ((v93[23] & 0x80000000) != 0)
  {
    operator delete(*v93);
  }

  std::string::basic_string[abi:ne200100]<0>(v93, "strides");
  v10 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, v93);
  if ((v93[23] & 0x80000000) != 0)
  {
    operator delete(*v93);
  }

  if (v10)
  {
    std::string::basic_string[abi:ne200100]<0>(v93, "strides");
    v11 = MIL::ValueTypeInferenceUtils::GetSingleValueType(a3, v93);
    v12 = MIL::IRValueType::AsTensorType(v11);
    if ((v93[23] & 0x80000000) != 0)
    {
      operator delete(*v93);
    }

    v13 = a2[1];
    v91 = *a2;
    v92 = v13;
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    MIL::Operators::Common::Shared::ValidateStridesAndInterleaveFactors(v7, v12, v9, &v91, v93);
    if (v92)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v92);
    }

    if (!MIL::ValidationResult::IsGood(v93))
    {
      v54 = __cxa_allocate_exception(0x48uLL);
      MIL::MILResult::MILResult(v89, v93);
      v89[0].__r_.__value_.__r.__words[0] = &unk_2829E9B70;
      v90 = v95;
      MIL::ValidationError::ValidationError(v54, v89);
    }

    MIL::ValidationResult::~ValidationResult(v93);
    v86 = 0;
    v87 = 0;
    v88 = 0;
    v14 = (*(*v12 + 96))(v12);
    if (*(v14 + 8) == *v14)
    {
      std::vector<MIL::IRDimension const*>::__throw_out_of_range[abi:ne200100]();
    }

    v15 = MIL::IRDimension::AsConstant(**v14);
    v16 = (*(*v15 + 48))(v15);
    std::vector<MIL::IRProperty const*>::resize(&v86, v16);
    std::string::basic_string[abi:ne200100]<0>(v93, "strides");
    SingleValue = MIL::ValueTypeInferenceUtils::TryGetSingleValue(a3, v93);
    v18 = SingleValue;
    if ((v93[23] & 0x80000000) != 0)
    {
      operator delete(*v93);
      if (v18)
      {
        goto LABEL_19;
      }
    }

    else if (SingleValue)
    {
LABEL_19:
      std::string::basic_string[abi:ne200100]<0>(v93, "strides");
      v19 = MIL::ValueTypeInferenceUtils::GetSingleValue(a3, v93);
      v20 = MIL::IRValue::AsTensor(v19);
      v82.__r_.__value_.__r.__words[0] = MIL::IRTensorValue::GetDataView<long long>(v20);
      v82.__r_.__value_.__l.__size_ = v21;
      if ((v93[23] & 0x80000000) != 0)
      {
        operator delete(*v93);
      }

      if (v87 != v86)
      {
        v22 = 0;
        do
        {
          v23 = MIL::Util::Span<long long const,18446744073709551615ul>::At(&v82, v22);
          v24 = *a1;
          if (*v23 == -1)
          {
            Int64Scalar = MIL::IRUnknownProperty::Make(*a1, 0);
          }

          else
          {
            v25 = MIL::Util::Span<long long const,18446744073709551615ul>::At(&v82, v22);
            Int64Scalar = MIL::IRConstantProperty::MakeInt64Scalar(v24, *v25);
          }

          *(v86 + v22++) = Int64Scalar;
        }

        while (v22 < (v87 - v86) >> 3);
      }

      goto LABEL_54;
    }

    if (v87 != v86)
    {
      v35 = 0;
      do
      {
        v36 = MIL::IRUnknownProperty::Make(*a1, 0);
        *(v86 + v35++) = v36;
      }

      while (v35 < (v87 - v86) >> 3);
    }
  }

  else
  {
    v86 = 0;
    v87 = 0;
    v88 = 0;
    std::string::basic_string[abi:ne200100]<0>(v93, "row_alignment_in_bytes");
    v27 = MIL::ValueTypeInferenceUtils::GetSingleValue(a3, v93);
    v28 = MIL::IRValue::AsTensor(v27);
    v29 = MIL::IRValue::GetScalar<unsigned long long>(v28);
    if ((v93[23] & 0x80000000) != 0)
    {
      operator delete(*v93);
    }

    v30 = (*(*v7 + 88))(v7);
    v32 = v30 == 15 || v30 == 10 || v30 == 4;
    if (v32 && v29 <= 1)
    {
      v55 = __cxa_allocate_exception(0x48uLL);
      v56 = a2[1];
      *&v85 = *a2;
      *(&v85 + 1) = v56;
      if (v56)
      {
        atomic_fetch_add_explicit((v56 + 8), 1uLL, memory_order_relaxed);
      }

      std::to_string(&v82, v29);
      v57 = std::string::insert(&v82, 0, "Row_alignment_in_bytes is ");
      v58 = *&v57->__r_.__value_.__l.__data_;
      *&v93[16] = *(&v57->__r_.__value_.__l + 2);
      *v93 = v58;
      v57->__r_.__value_.__l.__size_ = 0;
      v57->__r_.__value_.__r.__words[2] = 0;
      v57->__r_.__value_.__r.__words[0] = 0;
      v59 = std::string::append(v93, ", it needs to have a minimum value equal to the natural alignment 2 of the input datatype");
      v60 = *&v59->__r_.__value_.__l.__data_;
      v84 = v59->__r_.__value_.__r.__words[2];
      v83 = v60;
      v59->__r_.__value_.__l.__size_ = 0;
      v59->__r_.__value_.__r.__words[2] = 0;
      v59->__r_.__value_.__r.__words[0] = 0;
      MIL::ValidationError::ValidationError(v55, &v85, &v83, 315);
    }

    v34 = v30 == 16 || v30 == 11 || v30 == 5;
    if (v34 && v29 <= 3)
    {
      v61 = __cxa_allocate_exception(0x48uLL);
      v62 = a2[1];
      *&v81 = *a2;
      *(&v81 + 1) = v62;
      if (v62)
      {
        atomic_fetch_add_explicit((v62 + 8), 1uLL, memory_order_relaxed);
      }

      std::to_string(&v82, v29);
      v63 = std::string::insert(&v82, 0, "Row_alignment_in_bytes is ");
      v64 = *&v63->__r_.__value_.__l.__data_;
      *&v93[16] = *(&v63->__r_.__value_.__l + 2);
      *v93 = v64;
      v63->__r_.__value_.__l.__size_ = 0;
      v63->__r_.__value_.__r.__words[2] = 0;
      v63->__r_.__value_.__r.__words[0] = 0;
      v65 = std::string::append(v93, ", it needs to have a minimum value equal to the natural alignment 4 of the input datatype");
      v66 = *&v65->__r_.__value_.__l.__data_;
      v80 = v65->__r_.__value_.__r.__words[2];
      v79 = v66;
      v65->__r_.__value_.__l.__size_ = 0;
      v65->__r_.__value_.__r.__words[2] = 0;
      v65->__r_.__value_.__r.__words[0] = 0;
      MIL::ValidationError::ValidationError(v61, &v81, &v79, 315);
    }

    if ((v29 ^ (v29 - 1)) <= v29 - 1)
    {
      v67 = __cxa_allocate_exception(0x48uLL);
      v68 = a2[1];
      *&v78 = *a2;
      *(&v78 + 1) = v68;
      if (v68)
      {
        atomic_fetch_add_explicit((v68 + 8), 1uLL, memory_order_relaxed);
      }

      std::to_string(&v82, v29);
      v69 = std::string::insert(&v82, 0, "Row_alignment_in_bytes is ");
      v70 = *&v69->__r_.__value_.__l.__data_;
      *&v93[16] = *(&v69->__r_.__value_.__l + 2);
      *v93 = v70;
      v69->__r_.__value_.__l.__size_ = 0;
      v69->__r_.__value_.__r.__words[2] = 0;
      v69->__r_.__value_.__r.__words[0] = 0;
      v71 = std::string::append(v93, ", it needs to be a power-of-2.");
      v72 = *&v71->__r_.__value_.__l.__data_;
      v77 = v71->__r_.__value_.__r.__words[2];
      v76 = v72;
      v71->__r_.__value_.__l.__size_ = 0;
      v71->__r_.__value_.__r.__words[2] = 0;
      v71->__r_.__value_.__r.__words[0] = 0;
      MIL::ValidationError::ValidationError(v67, &v78, &v76, 315);
    }

    MIL::IRConstantProperty::MakeUInt64Scalar(*a1, v29);
  }

LABEL_54:
  v37 = (*(*v9 + 96))(v9);
  if (*(v37 + 8) == *v37)
  {
    std::vector<MIL::IRDimension const*>::__throw_out_of_range[abi:ne200100]();
  }

  v38 = MIL::IRDimension::AsConstant(**v37);
  v39 = (*(*v38 + 48))(v38);
  std::vector<MIL::IRProperty const*>::vector[abi:ne200100](&v82, v39);
  std::string::basic_string[abi:ne200100]<0>(v93, "interleave_factors");
  v40 = MIL::ValueTypeInferenceUtils::TryGetSingleValue(a3, v93);
  v41 = v40;
  if ((v93[23] & 0x80000000) != 0)
  {
    operator delete(*v93);
    if (v41)
    {
      goto LABEL_57;
    }
  }

  else if (v40)
  {
LABEL_57:
    std::string::basic_string[abi:ne200100]<0>(v93, "interleave_factors");
    v42 = MIL::ValueTypeInferenceUtils::GetSingleValue(a3, v93);
    v43 = MIL::IRValue::AsTensor(v42);
    __p = MIL::IRTensorValue::GetDataView<unsigned char>(v43);
    v74 = v44;
    if ((v93[23] & 0x80000000) != 0)
    {
      operator delete(*v93);
    }

    if (v82.__r_.__value_.__l.__size_ != v82.__r_.__value_.__r.__words[0])
    {
      v45 = 0;
      do
      {
        v46 = *a1;
        v47 = MIL::Util::Span<unsigned char const,18446744073709551615ul>::At(&__p, v45);
        UInt8Scalar = MIL::IRConstantProperty::MakeUInt8Scalar(v46, *v47);
        *(v82.__r_.__value_.__r.__words[0] + 8 * v45++) = UInt8Scalar;
      }

      while (v45 < (v82.__r_.__value_.__l.__size_ - v82.__r_.__value_.__r.__words[0]) >> 3);
    }

    goto LABEL_67;
  }

  if (v82.__r_.__value_.__l.__size_ != v82.__r_.__value_.__r.__words[0])
  {
    v49 = 0;
    do
    {
      v50 = MIL::IRUnknownProperty::Make(*a1, 0);
      *(v82.__r_.__value_.__r.__words[0] + 8 * v49++) = v50;
    }

    while (v49 < (v82.__r_.__value_.__l.__size_ - v82.__r_.__value_.__r.__words[0]) >> 3);
  }

LABEL_67:
  v51 = (*(*v7 + 96))(v7);
  __p = 0;
  v74 = 0;
  v75 = 0;
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&__p, *v51, v51[1], (v51[1] - *v51) >> 3);
  if (v10)
  {
    (*(*v7 + 88))(v7);
    memset(v93, 0, sizeof(v93));
    v94 = 1065353216;
    MIL::IRTensorBufferValueType::MakeWithShape();
  }

  (*(*v7 + 88))(v7);
  memset(v93, 0, sizeof(v93));
  v94 = 1065353216;
  MIL::IRTensorBufferValueType::MakeWithShapeAndRowAlignment();
}

void sub_218127294(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (*(v58 - 233) < 0)
  {
    operator delete(*(v58 - 256));
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a21);
  }

  if (v57)
  {
    __cxa_free_exception(v56);
  }

  if (a45)
  {
    operator delete(a45);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<MIL::IRProperty const*>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    std::vector<MIL::IRProperty const*>::__append(a1, a2 - v2);
  }
}

std::string *std::pair<std::string const,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>::pair[abi:ne200100]<true,0>(std::string *this, __int128 *a2, uint64_t *a3)
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

  this[1].__r_.__value_.__r.__words[0] = 0;
  this[1].__r_.__value_.__l.__size_ = 0;
  this[1].__r_.__value_.__r.__words[2] = 0;
  std::vector<std::shared_ptr<MIL::IRTypedArgument>>::__init_with_size[abi:ne200100]<std::shared_ptr<MIL::IRTypedArgument>*,std::shared_ptr<MIL::IRTypedArgument>*>(&this[1], *a3, a3[1], (a3[1] - *a3) >> 4);
  return this;
}

void sub_218127600(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>::pair[abi:ne200100]<char const(&)[6],std::vector<std::shared_ptr<MIL::IRTypedArgument>>&,0>(_BYTE *a1, char *a2, uint64_t *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  v5[3] = 0;
  v5[4] = 0;
  v5 += 3;
  v5[2] = 0;
  std::vector<std::shared_ptr<MIL::IRTypedArgument>>::__init_with_size[abi:ne200100]<std::shared_ptr<MIL::IRTypedArgument>*,std::shared_ptr<MIL::IRTypedArgument>*>(v5, *a3, a3[1], (a3[1] - *a3) >> 4);
  return a1;
}

void sub_218127660(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<std::shared_ptr<MIL::IRTypedArgument>>::__init_with_size[abi:ne200100]<std::shared_ptr<MIL::IRTypedArgument> const*,std::shared_ptr<MIL::IRTypedArgument> const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::shared_ptr<MIL::IRNamedValueType>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2181276E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::unordered_map<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>::unordered_map(uint64_t a1, const void **a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 48 * a3;
    do
    {
      std::__hash_table<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::vector<std::shared_ptr<MIL::IRTypedArgument>>> const&>(a1, a2);
      a2 += 6;
      v5 -= 48;
    }

    while (v5);
  }

  return a1;
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::vector<std::shared_ptr<MIL::IRTypedArgument>>> const&>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>>>::__construct_node_hash<std::pair<std::string const,std::vector<std::shared_ptr<MIL::IRTypedArgument>>> const&>();
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

void sub_2181279C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

std::string *std::pair<std::string const,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>::pair[abi:ne200100](std::string *this, __int128 *a2)
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

  this[1].__r_.__value_.__r.__words[0] = 0;
  this[1].__r_.__value_.__l.__size_ = 0;
  this[1].__r_.__value_.__r.__words[2] = 0;
  std::vector<std::shared_ptr<MIL::IRTypedArgument>>::__init_with_size[abi:ne200100]<std::shared_ptr<MIL::IRTypedArgument>*,std::shared_ptr<MIL::IRTypedArgument>*>(&this[1], *(a2 + 3), *(a2 + 4), (*(a2 + 4) - *(a2 + 3)) >> 4);
  return this;
}

void sub_218127AC4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<std::shared_ptr<MIL::IRTypedArgument>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<std::shared_ptr<MIL::IRNamedValueType>>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>>>::__construct_node_hash<std::pair<std::string const,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>>();
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

void sub_218127DA8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::vector<MIL::IRProperty const*>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 3);
    if (v7 >> 61)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    if (v8 >> 2 > v7)
    {
      v7 = v8 >> 2;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::string const*>>(a1, v9);
    }

    v10 = (8 * (v6 >> 3));
    bzero(v10, 8 * a2);
    v11 = &v10[8 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

void MIL::Operators::Common::Shared::ValidateTopkInputs(MIL::IRTensorValueType *a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t *a4@<X3>, MIL::ValidationResult *a5@<X8>)
{
  v10 = (*(*a1 + 96))(a1);
  v75 = 0;
  v76 = 0;
  v74 = 0;
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&v74, *v10, v10[1], (v10[1] - *v10) >> 3);
  if (a3 <= 0 && a3 != -1)
  {
    v11 = a4[1];
    v72 = *a4;
    v73 = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::to_string(&v68, a3);
    v12 = std::string::insert(&v68, 0, "Provided k (");
    v13 = *&v12->__r_.__value_.__l.__data_;
    v69.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
    *&v69.__r_.__value_.__l.__data_ = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    v14 = std::string::append(&v69, ") is invalid for TopK.");
    v15 = *&v14->__r_.__value_.__l.__data_;
    v71 = v14->__r_.__value_.__r.__words[2];
    v70 = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    MIL::ValidationResult::ValidationResult(a5, &v72, 315, &v70);
    if (SHIBYTE(v71) < 0)
    {
      operator delete(v70);
    }

    if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v69.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v68.__r_.__value_.__l.__data_);
    }

    if (v73)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v73);
    }

    goto LABEL_81;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    MIL::ValidationResult::ValidationResult(a5);
    goto LABEL_81;
  }

  v16 = (*(*a1 + 96))(a1);
  memset(&v69, 0, sizeof(v69));
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&v69, *v16, v16[1], (v16[1] - *v16) >> 3);
  v17 = a2;
  if (a2 < 0)
  {
    v17 = MIL::IRTensorValueType::Rank(a1) + a2;
  }

  v18 = MIL::IRTensorValueType::Rank(a1);
  if (v17 < 0 || v18 <= v17)
  {
    v34 = a4[1];
    v66 = *a4;
    v67 = v34;
    if (v34)
    {
      atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::to_string(&v59, a2);
    v35 = std::string::insert(&v59, 0, "Provided axis (");
    v36 = *&v35->__r_.__value_.__l.__data_;
    v60.__r_.__value_.__r.__words[2] = v35->__r_.__value_.__r.__words[2];
    *&v60.__r_.__value_.__l.__data_ = v36;
    v35->__r_.__value_.__l.__size_ = 0;
    v35->__r_.__value_.__r.__words[2] = 0;
    v35->__r_.__value_.__r.__words[0] = 0;
    v37 = std::string::append(&v60, ") is not within range [-");
    v38 = *&v37->__r_.__value_.__l.__data_;
    v61.__r_.__value_.__r.__words[2] = v37->__r_.__value_.__r.__words[2];
    *&v61.__r_.__value_.__l.__data_ = v38;
    v37->__r_.__value_.__l.__size_ = 0;
    v37->__r_.__value_.__r.__words[2] = 0;
    v37->__r_.__value_.__r.__words[0] = 0;
    v39 = MIL::IRTensorValueType::Rank(a1);
    std::to_string(&v58, v39);
    if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v40 = &v58;
    }

    else
    {
      v40 = v58.__r_.__value_.__r.__words[0];
    }

    if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v58.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v58.__r_.__value_.__l.__size_;
    }

    v42 = std::string::append(&v61, v40, size);
    v43 = *&v42->__r_.__value_.__l.__data_;
    v62.__r_.__value_.__r.__words[2] = v42->__r_.__value_.__r.__words[2];
    *&v62.__r_.__value_.__l.__data_ = v43;
    v42->__r_.__value_.__l.__size_ = 0;
    v42->__r_.__value_.__r.__words[2] = 0;
    v42->__r_.__value_.__r.__words[0] = 0;
    v44 = std::string::append(&v62, ", ");
    v45 = *&v44->__r_.__value_.__l.__data_;
    v63.__r_.__value_.__r.__words[2] = v44->__r_.__value_.__r.__words[2];
    *&v63.__r_.__value_.__l.__data_ = v45;
    v44->__r_.__value_.__l.__size_ = 0;
    v44->__r_.__value_.__r.__words[2] = 0;
    v44->__r_.__value_.__r.__words[0] = 0;
    v46 = MIL::IRTensorValueType::Rank(a1);
    std::to_string(&v57, v46 - 1);
    if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v47 = &v57;
    }

    else
    {
      v47 = v57.__r_.__value_.__r.__words[0];
    }

    if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v48 = HIBYTE(v57.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v48 = v57.__r_.__value_.__l.__size_;
    }

    v49 = std::string::append(&v63, v47, v48);
    v50 = *&v49->__r_.__value_.__l.__data_;
    v68.__r_.__value_.__r.__words[2] = v49->__r_.__value_.__r.__words[2];
    *&v68.__r_.__value_.__l.__data_ = v50;
    v49->__r_.__value_.__l.__size_ = 0;
    v49->__r_.__value_.__r.__words[2] = 0;
    v49->__r_.__value_.__r.__words[0] = 0;
    v51 = std::string::append(&v68, "] for TopK");
    v52 = *&v51->__r_.__value_.__l.__data_;
    v65 = v51->__r_.__value_.__r.__words[2];
    *v64 = v52;
    v51->__r_.__value_.__l.__size_ = 0;
    v51->__r_.__value_.__r.__words[2] = 0;
    v51->__r_.__value_.__r.__words[0] = 0;
    MIL::ValidationResult::ValidationResult(a5, &v66, 315, v64);
    if (SHIBYTE(v65) < 0)
    {
      operator delete(v64[0]);
    }

    if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v68.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v57.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v63.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v62.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v58.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v61.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v60.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v59.__r_.__value_.__l.__data_);
    }

    v33 = v67;
    if (!v67)
    {
      goto LABEL_79;
    }

LABEL_77:
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
    goto LABEL_79;
  }

  v19 = (*(**(v69.__r_.__value_.__r.__words[0] + 8 * v17) + 16))(*(v69.__r_.__value_.__r.__words[0] + 8 * v17));
  if (a3 != -1)
  {
    v20 = v19;
    if (v19)
    {
      if ((*(*v19 + 48))(v19) < a3)
      {
        v21 = a4[1];
        v55 = *a4;
        v56 = v21;
        if (v21)
        {
          atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        std::to_string(&v61, a3);
        v22 = std::string::insert(&v61, 0, "Provided k (");
        v23 = *&v22->__r_.__value_.__l.__data_;
        v62.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
        *&v62.__r_.__value_.__l.__data_ = v23;
        v22->__r_.__value_.__l.__size_ = 0;
        v22->__r_.__value_.__r.__words[2] = 0;
        v22->__r_.__value_.__r.__words[0] = 0;
        v24 = std::string::append(&v62, ") exceed maximum dimension size (");
        v25 = *&v24->__r_.__value_.__l.__data_;
        v63.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
        *&v63.__r_.__value_.__l.__data_ = v25;
        v24->__r_.__value_.__l.__size_ = 0;
        v24->__r_.__value_.__r.__words[2] = 0;
        v24->__r_.__value_.__r.__words[0] = 0;
        v26 = (*(*v20 + 48))(v20);
        std::to_string(&v60, v26);
        if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v27 = &v60;
        }

        else
        {
          v27 = v60.__r_.__value_.__r.__words[0];
        }

        if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v28 = HIBYTE(v60.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v28 = v60.__r_.__value_.__l.__size_;
        }

        v29 = std::string::append(&v63, v27, v28);
        v30 = *&v29->__r_.__value_.__l.__data_;
        v68.__r_.__value_.__r.__words[2] = v29->__r_.__value_.__r.__words[2];
        *&v68.__r_.__value_.__l.__data_ = v30;
        v29->__r_.__value_.__l.__size_ = 0;
        v29->__r_.__value_.__r.__words[2] = 0;
        v29->__r_.__value_.__r.__words[0] = 0;
        v31 = std::string::append(&v68, ") for TopK");
        v32 = *&v31->__r_.__value_.__l.__data_;
        v54 = v31->__r_.__value_.__r.__words[2];
        *__p = v32;
        v31->__r_.__value_.__l.__size_ = 0;
        v31->__r_.__value_.__r.__words[2] = 0;
        v31->__r_.__value_.__r.__words[0] = 0;
        MIL::ValidationResult::ValidationResult(a5, &v55, 315, __p);
        if (SHIBYTE(v54) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v68.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v60.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v63.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v62.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v61.__r_.__value_.__l.__data_);
        }

        v33 = v56;
        if (!v56)
        {
          goto LABEL_79;
        }

        goto LABEL_77;
      }
    }
  }

  MIL::ValidationResult::ValidationResult(a5);
LABEL_79:
  if (v69.__r_.__value_.__r.__words[0])
  {
    v69.__r_.__value_.__l.__size_ = v69.__r_.__value_.__r.__words[0];
    operator delete(v69.__r_.__value_.__l.__data_);
  }

LABEL_81:
  if (v74)
  {
    v75 = v74;
    operator delete(v74);
  }
}

void sub_218128598(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::__shared_weak_count *a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (*(v52 - 169) < 0)
  {
    operator delete(*(v52 - 192));
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  if (a52 < 0)
  {
    operator delete(a47);
  }

  if (a45 < 0)
  {
    operator delete(a40);
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  v54 = *(v52 - 160);
  if (v54)
  {
    *(v52 - 152) = v54;
    operator delete(v54);
  }

  v55 = *(v52 - 88);
  if (v55)
  {
    *(v52 - 80) = v55;
    operator delete(v55);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::Shared::ValueTypeInferenceTopkCommon(MIL::IRConstantDimension **a1, uint64_t *a2, void *a3)
{
  v42 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(__p, "x");
  SingleValueType = MIL::ValueTypeInferenceUtils::GetSingleValueType(a3, __p);
  v7 = MIL::IRValueType::AsTensorType(SingleValueType);
  if (v37 < 0)
  {
    operator delete(__p[0]);
  }

  v8 = (*(*v7 + 96))(v7);
  (*(*v7 + 88))(v7);
  std::string::basic_string[abi:ne200100]<0>(__p, "k");
  SingleValue = MIL::ValueTypeInferenceUtils::GetSingleValue(a3, __p);
  v10 = MIL::IRValue::TryGetScalar<int>(SingleValue);
  v11 = v10;
  if (v37 < 0)
  {
    operator delete(__p[0]);
    if (v11)
    {
      goto LABEL_5;
    }
  }

  else if (v10)
  {
LABEL_5:
    v12 = *v11;
    goto LABEL_13;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "k");
  v13 = MIL::ValueTypeInferenceUtils::GetSingleValue(a3, __p);
  v14 = MIL::IRValue::TryGetScalar<short>(v13);
  v15 = v14;
  if (v37 < 0)
  {
    operator delete(__p[0]);
    if (v15)
    {
      goto LABEL_9;
    }
  }

  else if (v14)
  {
LABEL_9:
    v12 = *v15;
    goto LABEL_13;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "k");
  v16 = MIL::ValueTypeInferenceUtils::GetSingleValue(a3, __p);
  v12 = MIL::IRValue::GetScalar<signed char>(v16);
  if (v37 < 0)
  {
    operator delete(__p[0]);
  }

LABEL_13:
  std::string::basic_string[abi:ne200100]<0>(__p, "axis");
  v17 = MIL::ValueTypeInferenceUtils::GetSingleValue(a3, __p);
  v18 = MIL::IRValue::GetScalar<int>(v17);
  if (v37 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "return_indices");
  v19 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, __p);
  v20 = v19;
  if (v37 < 0)
  {
    operator delete(__p[0]);
    if (v20)
    {
LABEL_17:
      std::string::basic_string[abi:ne200100]<0>(__p, "return_indices");
      v21 = MIL::ValueTypeInferenceUtils::GetSingleValue(a3, __p);
      v22 = MIL::IRValue::GetScalar<BOOL>(v21);
      if (v37 < 0)
      {
        operator delete(__p[0]);
      }

LABEL_21:
      v23 = MIL::IRTensorValueType::Rank(v7);
      v24 = *a2;
      v25 = a2[1];
      v35[0] = v24;
      v35[1] = v25;
      if (v25)
      {
        atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      MIL::Operators::Common::Shared::ValidateTopkInputs(v7, v18, v12, v35, __p);
      if (v25)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v25);
      }

      if (!MIL::ValidationResult::IsGood(__p))
      {
        exception = __cxa_allocate_exception(0x48uLL);
        MIL::MILResult::MILResult(v33, __p);
        v33[0].__r_.__value_.__r.__words[0] = &unk_2829E9B70;
        v34 = v38;
        MIL::ValidationError::ValidationError(exception, v33);
      }

      memset(&v32, 0, sizeof(v32));
      std::vector<std::string const*>::reserve(&v32, (*(v8 + 8) - *v8) >> 3);
      v26 = MIL::IRConstantDimension::Make(*a1, v12);
      if (v12 == -1)
      {
        v26 = *(*v8 + 8 * v18);
      }

      MIL::ValueTypeInferenceUtils::GetTopkOutShape(a1, v8, v18, v26, v23, &v41);
      if (v32.__r_.__value_.__r.__words[0])
      {
        v32.__r_.__value_.__l.__size_ = v32.__r_.__value_.__r.__words[0];
        operator delete(v32.__r_.__value_.__l.__data_);
      }

      v32 = v41;
      if (!v22)
      {
        MIL::IRTensorValueType::MakeWithShape();
      }

      std::string::basic_string[abi:ne200100]<0>(&v41, "output_indices_dtype");
      v27 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, &v41.__r_.__value_.__l.__data_);
      v28 = v27;
      if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v41.__r_.__value_.__l.__data_);
        if (!v28)
        {
          goto LABEL_39;
        }
      }

      else if (!v27)
      {
        goto LABEL_39;
      }

      std::string::basic_string[abi:ne200100]<0>(&v39, "output_indices_dtype");
      v29 = MIL::ValueTypeInferenceUtils::GetSingleValue(a3, &v39);
      v30 = MIL::IRValue::AsTensor(v29);
      MIL::IRValue::GetScalar<std::string>(v30, &v41);
      if (v40 < 0)
      {
        operator delete(v39);
      }

      MIL::StringToIRDataType(&v41.__r_.__value_.__l.__data_, 0);
      if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v41.__r_.__value_.__l.__data_);
      }

LABEL_39:
      memset(&v41, 0, sizeof(v41));
      std::vector<MIL::IRValueType const*>::__assign_with_size[abi:ne200100]<MIL::IRValueType const**,MIL::IRValueType const**>(&v41, v32.__r_.__value_.__l.__data_, v32.__r_.__value_.__l.__size_, (v32.__r_.__value_.__l.__size_ - v32.__r_.__value_.__r.__words[0]) >> 3);
      MIL::IRTensorValueType::MakeWithShape();
    }
  }

  else if (v19)
  {
    goto LABEL_17;
  }

  v22 = 1;
  goto LABEL_21;
}

void sub_218128CC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  MIL::ValidationResult::~ValidationResult(&a14);
  MIL::ValidationResult::~ValidationResult(&__p);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::CustomValidators::ValidatePReLU(MIL::Operators::Common::ios15::CustomValidators *this@<X0>, MIL::ValidationResult *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "x");
  ParameterType = MIL::IROperation::GetParameterType(this);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "alpha");
  v6 = MIL::IROperation::GetParameterType(this);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v9, "x");
  std::string::basic_string[abi:ne200100]<0>(&v7, "alpha");
  MIL::Validation::VerifyDimSizeIsNumChannels(ParameterType, v6, v9, this, 1, __p);
  if (v8 < 0)
  {
    operator delete(v7);
  }

  if (v10 < 0)
  {
    operator delete(v9[0]);
  }

  if ((*(__p[0] + 2))(__p))
  {
    MIL::ValidationResult::~ValidationResult(__p);
    std::string::basic_string[abi:ne200100]<0>(__p, "x");
    MIL::Validation::VerifyOutputShapeMatchesInput(this, a2);
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    MIL::MILResult::MILResult(a2, __p);
    *a2 = &unk_2829E9B70;
    *(a2 + 12) = v13;
    MIL::ValidationResult::~ValidationResult(__p);
  }
}

void sub_218128F68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios15::CustomValidators::ValidateSoftplusParametric(MIL::Operators::Common::ios15::CustomValidators *this@<X0>, uint64_t a2@<X8>)
{
  v18[2] = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(__p, "x");
  ParameterType = MIL::IROperation::GetParameterType(this);
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  v6 = 0;
  v18[0] = "alpha";
  v18[1] = "beta";
  do
  {
    v7 = v18[v6];
    std::string::basic_string[abi:ne200100]<0>(&v13, v7);
    v8 = MIL::IROperation::GetParameterType(this);
    std::string::basic_string[abi:ne200100]<0>(v11, "x");
    std::string::basic_string[abi:ne200100]<0>(&v9, v7);
    MIL::Validation::VerifyDimSizeIsNumChannels(ParameterType, v8, v11, this, 1, __p);
    if (v10 < 0)
    {
      operator delete(v9);
    }

    if (v12 < 0)
    {
      operator delete(v11[0]);
    }

    if (v14 < 0)
    {
      operator delete(v13);
    }

    if (((*(__p[0] + 2))(__p) & 1) == 0)
    {
      MIL::MILResult::MILResult(a2, __p);
      *a2 = &unk_2829E9B70;
      *(a2 + 48) = v17;
      MIL::ValidationResult::~ValidationResult(__p);
      return;
    }

    MIL::ValidationResult::~ValidationResult(__p);
    ++v6;
  }

  while (v6 != 2);
  std::string::basic_string[abi:ne200100]<0>(__p, "x");
  MIL::Validation::VerifyOutputShapeMatchesInput(this, a2);
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2181291D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios15::BaseActivation::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_218129A3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, int a52, __int16 a53, char a54, char a55, uint64_t a56, uint64_t a57)
{
  if (a50)
  {
    (*(*a50 + 8))(a50);
  }

  v60 = *v57;
  *v57 = 0;
  if (v60)
  {
    (*(*v60 + 8))(v60);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v58 - 96), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v58 - 240), 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::BaseActivationWithAlpha::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_21812A704(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50)
{
  v53 = *(v51 - 112);
  *(v51 - 112) = 0;
  if (v53)
  {
    (*(*v53 + 8))(v53);
  }

  v54 = *v50;
  *v50 = 0;
  if (v54)
  {
    (*(*v54 + 8))(v54);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v51 - 120), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a50, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::BaseActivationWithAlphaBeta::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_21812B650(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60)
{
  v63 = *(v61 - 112);
  *(v61 - 112) = 0;
  if (v63)
  {
    (*(*v63 + 8))(v63);
  }

  v64 = *v60;
  *v60 = 0;
  if (v64)
  {
    (*(*v64 + 8))(v64);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v61 - 120), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a60, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::ClampedReLU::Make(uint64_t a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios15::BaseActivationWithAlphaBeta::Make();
}

void sub_21812BB54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::LinearActivation::Make(uint64_t a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios15::BaseActivationWithAlphaBeta::Make();
}

void sub_21812BC08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::ScaledTanh::Make(uint64_t a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios15::BaseActivationWithAlphaBeta::Make();
}

void sub_21812BCBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::SigmoidHard::Make(uint64_t a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios15::BaseActivationWithAlphaBeta::Make();
}

void sub_21812BD70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::ELU::Make(uint64_t a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios15::BaseActivationWithAlpha::Make();
}

void sub_21812BE24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::LeakyReLU::Make(uint64_t a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios15::BaseActivationWithAlpha::Make();
}

void sub_21812BED8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::ThresholdedReLU::Make(uint64_t a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios15::BaseActivationWithAlpha::Make();
}

void sub_21812BF8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::ERF::Make(uint64_t a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios15::BaseActivation::Make();
}

void sub_21812C040(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::ReLU::Make(uint64_t a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios15::BaseActivation::Make();
}

void sub_21812C0F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::ReLU6::Make(uint64_t a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios15::BaseActivation::Make();
}

void sub_21812C1A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::Sigmoid::Make(uint64_t a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios15::BaseActivation::Make();
}

void sub_21812C25C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::SiLU::Make(uint64_t a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios15::BaseActivation::Make();
}

void sub_21812C310(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::Softplus::Make(uint64_t a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios15::BaseActivation::Make();
}

void sub_21812C3C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::Softsign::Make(uint64_t a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios15::BaseActivation::Make();
}

void sub_21812C478(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::GeLU::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_21812CF60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45)
{
  v48 = *(v46 - 72);
  *(v46 - 72) = 0;
  if (v48)
  {
    (*(*v48 + 8))(v48);
  }

  v49 = *v45;
  *v45 = 0;
  if (v49)
  {
    (*(*v49 + 8))(v49);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v46 - 80), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a45, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::PReLU::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_21812DF6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void **a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56)
{
  v58 = a51;
  a51 = 0;
  if (v58)
  {
    (*(*v58 + 8))(v58);
  }

  v59 = *v56;
  *v56 = 0;
  if (v59)
  {
    (*(*v59 + 8))(v59);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a48, 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a56, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::Softmax::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_21812EDFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *a46)
{
  if (a46)
  {
    (*(*a46 + 8))(a46);
  }

  v49 = *v46;
  *v46 = 0;
  if (v49)
  {
    (*(*v49 + 8))(v49);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v47 - 128), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v47 - 248), 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::SoftplusParametric::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_218130114(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v71 = a69;
  a69 = 0;
  if (v71)
  {
    (*(*v71 + 8))(v71);
  }

  v72 = *v69;
  *v69 = 0;
  if (v72)
  {
    (*(*v72 + 8))(v72);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a64, 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x208], 0);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(result);

    JUMPOUT(0x21CEAFEA0);
  }

  return result;
}

void sub_218130700(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

_BYTE *std::pair<std::string const,std::shared_ptr<MIL::IRParameter>>::pair[abi:ne200100]<char const(&)[2],std::unique_ptr<MIL::IRParameter>,0>(_BYTE *a1, char *a2, uint64_t *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::shared_ptr<MIL::IRParameter>::shared_ptr[abi:ne200100]<MIL::IRParameter,std::default_delete<MIL::IRParameter>,0>(v5 + 3, a3);
  return a1;
}

void sub_2181307E8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void ***std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](void ***result, void **a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2;
    std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](&v3);
    return MEMORY[0x21CEAFEA0](v2, 0x20C40960023A9);
  }

  return result;
}

uint64_t std::default_delete<std::vector<std::shared_ptr<MIL::IRParameter>>>::operator()[abi:ne200100](uint64_t a1, void **a2)
{
  if (a2)
  {
    v4 = a2;
    std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](&v4);
    return MEMORY[0x21CEAFEA0](a2, 0x20C40960023A9);
  }

  return result;
}

uint64_t *std::shared_ptr<MIL::IRParameter>::shared_ptr[abi:ne200100]<MIL::IRParameter,std::default_delete<MIL::IRParameter>,0>(uint64_t *result, uint64_t *a2)
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

void std::__shared_ptr_pointer<MIL::IRParameter  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t std::__shared_ptr_pointer<MIL::IRParameter  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<MIL::IRParameter  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>> *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t std::__shared_ptr_pointer<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>> *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(result);

    JUMPOUT(0x21CEAFEA0);
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>> *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<std::vector<std::shared_ptr<MIL::IRParameter>> *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t std::__shared_ptr_pointer<std::vector<std::shared_ptr<MIL::IRParameter>> *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<MIL::Validation::OpOutputConstraintTarget  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t std::__shared_ptr_pointer<MIL::Validation::OpOutputConstraintTarget  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<MIL::Validation::OpOutputConstraintTarget  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<MIL::Validation::TensorDTypeConstraints  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t std::__shared_ptr_pointer<MIL::Validation::TensorDTypeConstraints  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<MIL::Validation::TensorDTypeConstraints  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_218130CD0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

_BYTE *std::pair<std::string const,std::shared_ptr<MIL::IRParameter>>::pair[abi:ne200100]<char const(&)[6],std::unique_ptr<MIL::IRParameter>,0>(_BYTE *a1, char *a2, uint64_t *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::shared_ptr<MIL::IRParameter>::shared_ptr[abi:ne200100]<MIL::IRParameter,std::default_delete<MIL::IRParameter>,0>(v5 + 3, a3);
  return a1;
}

void sub_218130DB8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_218130E30(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

_BYTE *std::pair<std::string const,std::shared_ptr<MIL::IRParameter>>::pair[abi:ne200100]<char const(&)[5],std::unique_ptr<MIL::IRParameter>,0>(_BYTE *a1, char *a2, uint64_t *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::shared_ptr<MIL::IRParameter>::shared_ptr[abi:ne200100]<MIL::IRParameter,std::default_delete<MIL::IRParameter>,0>(v5 + 3, a3);
  return a1;
}

void sub_218130F18(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<MIL::Validation::PossibleStringValuesConstraints  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t std::__shared_ptr_pointer<MIL::Validation::PossibleStringValuesConstraints  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<MIL::Validation::PossibleStringValuesConstraints  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::ValidationResult (*)(MIL::IROperation const&),std::allocator<MIL::ValidationResult (*)(MIL::IROperation const&)>,MIL::ValidationResult ()(MIL::IROperation const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829EA4C8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<MIL::ValidationResult (*)(MIL::IROperation const&),std::allocator<MIL::ValidationResult (*)(MIL::IROperation const&)>,MIL::ValidationResult ()(MIL::IROperation const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<MIL::Validation::TensorSymbolicShapeConstraints  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t std::__shared_ptr_pointer<MIL::Validation::TensorSymbolicShapeConstraints  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<MIL::Validation::TensorSymbolicShapeConstraints  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceConv(MIL::IRConstantDimension **a1, uint64_t a2, void *a3)
{
  v37[1] = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&__p, "x");
  SingleValueType = MIL::ValueTypeInferenceUtils::GetSingleValueType(a3, &__p);
  v6 = MIL::IRValueType::AsTensorType(SingleValueType);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "weight");
  v7 = MIL::ValueTypeInferenceUtils::GetSingleValueType(a3, &__p);
  v8 = MIL::IRValueType::AsTensorType(v7);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "strides");
  SingleValue = MIL::ValueTypeInferenceUtils::GetSingleValue(a3, &__p);
  v10 = MIL::IRValue::AsTensor(SingleValue);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "dilations");
  v11 = MIL::ValueTypeInferenceUtils::GetSingleValue(a3, &__p);
  v12 = MIL::IRValue::AsTensor(v11);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(v32, "pad_type");
  v13 = MIL::ValueTypeInferenceUtils::GetSingleValue(a3, v32);
  MIL::IRValue::GetScalar<std::string>(v13, &__p);
  if (SHIBYTE(v33) < 0)
  {
    operator delete(v32[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v32, "pad");
  v14 = MIL::ValueTypeInferenceUtils::GetSingleValue(a3, v32);
  v15 = MIL::IRValue::AsTensor(v14);
  if (SHIBYTE(v33) < 0)
  {
    operator delete(v32[0]);
  }

  (*(*v6 + 88))(v6);
  v16 = (*(*v6 + 96))(v6);
  v17 = (*(*v8 + 96))(v8);
  Data = MIL::IRTensorValue::GetDataView<int>(v10);
  v32[0] = 0;
  v32[1] = 0;
  v33 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(v32, Data, Data + 4 * v19, (4 * v19) >> 2);
  v20 = MIL::IRTensorValue::GetDataView<int>(v12);
  memset(v31, 0, sizeof(v31));
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(v31, v20, v20 + 4 * v21, (4 * v21) >> 2);
  v22 = MIL::IRTensorValue::GetDataView<int>(v15);
  memset(v30, 0, sizeof(v30));
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(v30, v22, v22 + 4 * v23, (4 * v23) >> 2);
  v24 = *a1;
  MIL::ValueTypeInferenceUtils::SliceShape(v16, 2uLL, (v16[1] - *v16) >> 3, &v25);
  MIL::ValueTypeInferenceUtils::SliceShape(v17, 2uLL, (v17[1] - *v17) >> 3, &v35);
  MIL::ValueTypeInferenceUtils::GetSpatialDimensionsOutShape(v24, &v25, &v35, v32, v31, &__p, v30, 0, &v28);
  if (v35)
  {
    v36 = v35;
    operator delete(v35);
  }

  if (v25)
  {
    __dst = v25;
    operator delete(v25);
  }

  if (v16[1] != *v16)
  {
    v35 = **v16;
    if (v17[1] != *v17)
    {
      v36 = **v17;
      __dst = 0;
      v27 = 0;
      v25 = 0;
      std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const* const*,MIL::IRDimension const* const*>(&v25, &v35, v37, 2uLL);
      std::vector<MIL::IRDimension const*>::__insert_with_size[abi:ne200100]<std::__wrap_iter<MIL::IRDimension const* const*>,std::__wrap_iter<MIL::IRDimension const* const*>>(&v25, __dst, v28, v29, (v29 - v28) >> 3);
      MIL::IRTensorValueType::MakeWithShape();
    }
  }

  std::vector<MIL::IRDimension const*>::__throw_out_of_range[abi:ne200100]();
}

void sub_2181315C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  if (a15)
  {
    operator delete(a15);
  }

  if (a18)
  {
    operator delete(a18);
  }

  if (a21)
  {
    operator delete(a21);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceConvTranspose(MIL::IRConstantDimension **a1, uint64_t a2, void *a3)
{
  v51 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&__p, "x");
  SingleValueType = MIL::ValueTypeInferenceUtils::GetSingleValueType(a3, &__p);
  v6 = MIL::IRValueType::AsTensorType(SingleValueType);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  (*(*v6 + 88))(v6);
  std::string::basic_string[abi:ne200100]<0>(&__p, "output_shape");
  v7 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, &__p.__r_.__value_.__l.__data_);
  v8 = v7;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (v8)
    {
LABEL_5:
      std::string::basic_string[abi:ne200100]<0>(&__p, "output_shape");
      SingleValue = MIL::ValueTypeInferenceUtils::GetSingleValue(a3, &__p);
      v10 = MIL::IRValue::AsTensor(SingleValue);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      Data = MIL::IRTensorValue::GetDataView<int>(v10);
      v13 = v12;
      memset(&__p, 0, sizeof(__p));
      std::vector<std::string const*>::reserve(&__p, v12);
      if (v13)
      {
        v14 = 4 * v13;
        do
        {
          v49[0] = MIL::IRConstantDimension::Make(*a1, *Data);
          std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](&__p, v49);
          ++Data;
          v14 -= 4;
        }

        while (v14);
      }

      MIL::IRTensorValueType::MakeWithShape();
    }
  }

  else if (v7)
  {
    goto LABEL_5;
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "weight");
  v15 = MIL::ValueTypeInferenceUtils::GetSingleValueType(a3, &__p);
  v16 = MIL::IRValueType::AsTensorType(v15);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "strides");
  v17 = MIL::ValueTypeInferenceUtils::GetSingleValue(a3, &__p);
  v18 = MIL::IRValue::AsTensor(v17);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "dilations");
  v19 = MIL::ValueTypeInferenceUtils::GetSingleValue(a3, &__p);
  v20 = MIL::IRValue::AsTensor(v19);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(v49, "pad_type");
  v21 = MIL::ValueTypeInferenceUtils::GetSingleValue(a3, v49);
  MIL::IRValue::GetScalar<std::string>(v21, &__p);
  if (SHIBYTE(v50) < 0)
  {
    operator delete(v49[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v49, "pad");
  v22 = MIL::ValueTypeInferenceUtils::GetSingleValue(a3, v49);
  v23 = MIL::IRValue::AsTensor(v22);
  if (SHIBYTE(v50) < 0)
  {
    operator delete(v49[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v49, "groups");
  v24 = MIL::ValueTypeInferenceUtils::GetSingleValue(a3, v49);
  v25 = MIL::IRValue::GetScalar<int>(v24);
  if (SHIBYTE(v50) < 0)
  {
    operator delete(v49[0]);
  }

  v26 = (*(*v6 + 96))(v6);
  v27 = (*(*v16 + 96))(v16);
  v28 = MIL::IRTensorValue::GetDataView<int>(v18);
  v49[0] = 0;
  v49[1] = 0;
  v50 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(v49, v28, v28 + 4 * v29, (4 * v29) >> 2);
  v30 = MIL::IRTensorValue::GetDataView<int>(v20);
  memset(v44, 0, sizeof(v44));
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(v44, v30, v30 + 4 * v31, (4 * v31) >> 2);
  v32 = MIL::IRTensorValue::GetDataView<int>(v23);
  memset(v43, 0, sizeof(v43));
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(v43, v32, v32 + 4 * v33, (4 * v33) >> 2);
  if (*(v26 + 8) != *v26)
  {
    v47 = **v26;
    __dst = 0;
    v42 = 0;
    v40 = 0;
    std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const* const*,MIL::IRDimension const* const*>(&v40, &v47, &v48, 1uLL);
    v34 = (*(**(*v27 + 8) + 24))(*(*v27 + 8));
    if (v34)
    {
      v47 = v34;
    }

    else
    {
      v35 = *a1;
      v36 = MIL::IRDimension::AsConstant(*(*v27 + 8));
      v37 = (*(*v36 + 48))(v36);
      v47 = MIL::IRConstantDimension::Make(v35, (v37 * v25));
    }

    std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](&v40, &v47);
    v38 = *a1;
    MIL::ValueTypeInferenceUtils::SliceShape(v26, 2uLL, (*(v26 + 8) - *v26) >> 3, v46);
    MIL::ValueTypeInferenceUtils::SliceShape(v27, 2uLL, (v27[1] - *v27) >> 3, v39);
    MIL::ValueTypeInferenceUtils::ConvTransposeSpatialDimensionsOutShape(v38, v46, v39, v49, v44, &__p, v43, &v47);
    if (v39[0])
    {
      v39[1] = v39[0];
      operator delete(v39[0]);
    }

    if (v46[0])
    {
      v46[1] = v46[0];
      operator delete(v46[0]);
    }

    std::vector<MIL::IRDimension const*>::__insert_with_size[abi:ne200100]<std::__wrap_iter<MIL::IRDimension const* const*>,std::__wrap_iter<MIL::IRDimension const* const*>>(&v40, __dst, v47, v48, (v48 - v47) >> 3);
    MIL::IRTensorValueType::MakeWithShape();
  }

  std::vector<MIL::IRDimension const*>::__throw_out_of_range[abi:ne200100]();
}

void sub_218131CCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  if (a18)
  {
    operator delete(a18);
  }

  v33 = *(v31 - 120);
  if (v33)
  {
    *(v31 - 112) = v33;
    operator delete(v33);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios15::Conv::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_218133C30(_Unwind_Exception *a1)
{
  v5 = STACK[0x4A8];
  STACK[0x4A8] = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v4 = *v1;
  *v1 = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 216), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x3F8], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::ConvTranspose::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2181365A4(_Unwind_Exception *a1)
{
  v5 = STACK[0x4B8];
  STACK[0x4B8] = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v4 = *v1;
  *v1 = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 216), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x408], 0);
  _Unwind_Resume(a1);
}

void sub_21813704C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

_BYTE *std::pair<std::string const,std::shared_ptr<MIL::IRParameter>>::pair[abi:ne200100]<char const(&)[7],std::unique_ptr<MIL::IRParameter>,0>(_BYTE *a1, char *a2, uint64_t *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::shared_ptr<MIL::IRParameter>::shared_ptr[abi:ne200100]<MIL::IRParameter,std::default_delete<MIL::IRParameter>,0>(v5 + 3, a3);
  return a1;
}

void sub_218137134(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_2181371AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

_BYTE *std::pair<std::string const,std::shared_ptr<MIL::IRParameter>>::pair[abi:ne200100]<char const(&)[8],std::unique_ptr<MIL::IRParameter>,0>(_BYTE *a1, char *a2, uint64_t *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::shared_ptr<MIL::IRParameter>::shared_ptr[abi:ne200100]<MIL::IRParameter,std::default_delete<MIL::IRParameter>,0>(v5 + 3, a3);
  return a1;
}

void sub_218137294(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_21813730C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

_BYTE *std::pair<std::string const,std::shared_ptr<MIL::IRParameter>>::pair[abi:ne200100]<char const(&)[9],std::unique_ptr<MIL::IRParameter>,0>(_BYTE *a1, char *a2, uint64_t *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::shared_ptr<MIL::IRParameter>::shared_ptr[abi:ne200100]<MIL::IRParameter,std::default_delete<MIL::IRParameter>,0>(v5 + 3, a3);
  return a1;
}

void sub_2181373F4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_21813746C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

_BYTE *std::pair<std::string const,std::shared_ptr<MIL::IRParameter>>::pair[abi:ne200100]<char const(&)[4],std::unique_ptr<MIL::IRParameter>,0>(_BYTE *a1, char *a2, uint64_t *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::shared_ptr<MIL::IRParameter>::shared_ptr[abi:ne200100]<MIL::IRParameter,std::default_delete<MIL::IRParameter>,0>(v5 + 3, a3);
  return a1;
}

void sub_218137554(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_2181375CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

_BYTE *std::pair<std::string const,std::shared_ptr<MIL::IRParameter>>::pair[abi:ne200100]<char const(&)[10],std::unique_ptr<MIL::IRParameter>,0>(_BYTE *a1, char *a2, uint64_t *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::shared_ptr<MIL::IRParameter>::shared_ptr[abi:ne200100]<MIL::IRParameter,std::default_delete<MIL::IRParameter>,0>(v5 + 3, a3);
  return a1;
}

void sub_2181376B4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<std::vector<MIL::IRValueType const*> (*)(std::shared_ptr<MIL::MILContext> const&,std::shared_ptr<MIL::Location const>,std::unordered_map<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>> const&,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>> const&,std::vector<std::vector<MIL::IRValueType const*>> const&),std::allocator<std::vector<MIL::IRValueType const*> (*)(std::shared_ptr<MIL::MILContext> const&,std::shared_ptr<MIL::Location const>,std::unordered_map<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>> const&,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>> const&,std::vector<std::vector<MIL::IRValueType const*>> const&)>,std::vector<MIL::IRValueType const*> ()(std::shared_ptr<MIL::MILContext> const&,std::shared_ptr<MIL::Location const>,std::unordered_map<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>> const&,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>> const&,std::vector<std::vector<MIL::IRValueType const*>> const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829EA5D8;
  a2[1] = v2;
  return result;
}

void std::__function::__func<std::vector<MIL::IRValueType const*> (*)(std::shared_ptr<MIL::MILContext> const&,std::shared_ptr<MIL::Location const>,std::unordered_map<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>> const&,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>> const&,std::vector<std::vector<MIL::IRValueType const*>> const&),std::allocator<std::vector<MIL::IRValueType const*> (*)(std::shared_ptr<MIL::MILContext> const&,std::shared_ptr<MIL::Location const>,std::unordered_map<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>> const&,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>> const&,std::vector<std::vector<MIL::IRValueType const*>> const&)>,std::vector<MIL::IRValueType const*> ()(std::shared_ptr<MIL::MILContext> const&,std::shared_ptr<MIL::Location const>,std::unordered_map<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>> const&,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>> const&,std::vector<std::vector<MIL::IRValueType const*>> const&)>::operator()(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a1 + 8);
  v7 = *a3;
  *a3 = 0;
  *(a3 + 1) = 0;
  v6(a2, &v7, a4, a5, a6);
  if (*(&v7 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v7 + 1));
  }
}

void sub_2181377C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<std::vector<MIL::IRValueType const*> (*)(std::shared_ptr<MIL::MILContext> const&,std::shared_ptr<MIL::Location const>,std::unordered_map<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>> const&,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>> const&,std::vector<std::vector<MIL::IRValueType const*>> const&),std::allocator<std::vector<MIL::IRValueType const*> (*)(std::shared_ptr<MIL::MILContext> const&,std::shared_ptr<MIL::Location const>,std::unordered_map<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>> const&,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>> const&,std::vector<std::vector<MIL::IRValueType const*>> const&)>,std::vector<MIL::IRValueType const*> ()(std::shared_ptr<MIL::MILContext> const&,std::shared_ptr<MIL::Location const>,std::unordered_map<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>> const&,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>> const&,std::vector<std::vector<MIL::IRValueType const*>> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<MIL::Validation::TensorRankValueConstraints  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t std::__shared_ptr_pointer<MIL::Validation::TensorRankValueConstraints  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<MIL::Validation::TensorRankValueConstraints  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_218137934(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

_BYTE *std::pair<std::string const,std::shared_ptr<MIL::IRParameter>>::pair[abi:ne200100]<char const(&)[13],std::unique_ptr<MIL::IRParameter>,0>(_BYTE *a1, char *a2, uint64_t *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::shared_ptr<MIL::IRParameter>::shared_ptr[abi:ne200100]<MIL::IRParameter,std::default_delete<MIL::IRParameter>,0>(v5 + 3, a3);
  return a1;
}

void sub_218137A1C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceElementwiseBinaryBoolOutput(MIL::IRUnknownDimension **a1, uint64_t a2, void *a3)
{
  v12[1] = *MEMORY[0x277D85DE8];
  memset(v11, 0, sizeof(v11));
  std::vector<std::vector<float>>::reserve(v11, a3[3]);
  for (i = a3[2]; i; i = *i)
  {
    std::pair<std::string const,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>::pair[abi:ne200100](&__p, i + 1);
    SingleValueType = MIL::ValueTypeInferenceUtils::GetSingleValueType(a3, &__p);
    v7 = MIL::IRValueType::AsTensorType(SingleValueType);
    v8 = (*(*v7 + 96))(v7);
    std::vector<std::vector<MIL::IRDimension const*>>::push_back[abi:ne200100](v11, v8);
    v12[0] = &v10;
    std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](v12);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  MIL::ValueTypeInferenceUtils::BroadcastShape(*a1, v11, &__p);
  MIL::IRTensorValueType::MakeWithShape();
}

void sub_218137B9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  __p = &a16;
  std::vector<std::vector<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::CustomValueInference::ValueInferenceAdd(uint64_t a1, void *a2, void *a3)
{
  v7[7] = *MEMORY[0x277D85DE8];
  v5 = a2[1];
  v7[0] = *a2;
  v7[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "add");
}

void sub_218137CEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, uint64_t a20, std::__shared_weak_count *a21)
{
  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a21);
  }

  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a19);
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  _Unwind_Resume(exception_object);
}

void anonymous namespace::BinaryOpHelper(uint64_t a1, uint64_t a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&v23, "x");
  v4 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, &v23.__r_.__value_.__l.__data_);
  if (v4)
  {
    v5 = (*(**v4[5] + 40))(*v4[5]);
    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__r_.__value_.__l.__data_);
    }

    if (v5)
    {
      std::string::basic_string[abi:ne200100]<0>(&v23, "y");
      v6 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, &v23.__r_.__value_.__l.__data_);
      if (v6)
      {
        v7 = (*(**v6[5] + 40))(*v6[5]);
        if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v23.__r_.__value_.__l.__data_);
        }

        if (v7)
        {
          std::string::basic_string[abi:ne200100]<0>(&v23, "x");
          v8 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, &v23.__r_.__value_.__l.__data_);
          if (v8)
          {
            v9 = v8[5];
            v11 = *v9;
            v10 = *(v9 + 1);
            if (v10)
            {
              atomic_fetch_add_explicit(v10 + 1, 1uLL, memory_order_relaxed);
            }

            if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v23.__r_.__value_.__l.__data_);
            }

            std::string::basic_string[abi:ne200100]<0>(&v23, "y");
            v12 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, &v23.__r_.__value_.__l.__data_);
            if (v12)
            {
              v13 = v12[5];
              v15 = *v13;
              v14 = v13[1];
              if (v14)
              {
                atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
              }

              if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v23.__r_.__value_.__l.__data_);
              }

              v16 = (*(*v11 + 32))(v11);
              v17 = (*(*v16 + 88))(v16);
              v18 = (*(*v15 + 32))(v15);
              if (v17 == (*(*v18 + 88))(v18))
              {
                std::string::basic_string[abi:ne200100]<0>(__p, "x");
                __p[15] = v11;
                __p[16] = v10;
                if (v10)
                {
                  atomic_fetch_add_explicit(v10 + 1, 1uLL, memory_order_relaxed);
                }

                MIL::IRTypedArgument::Make();
              }

              exception = __cxa_allocate_exception(0x10uLL);
              std::logic_error::logic_error(exception, "Datatype do not match for input tensors x and Tensor y.");
              exception->__vftable = (MEMORY[0x277D828F8] + 16);
              __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
            }

            std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
          }

          std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
        }

        v20 = __cxa_allocate_exception(0x10uLL);
        std::invalid_argument::invalid_argument[abi:ne200100](v20, "Input Tensor y is not an IRTensor object.");
        __cxa_throw(v20, off_278235F80, MEMORY[0x277D82610]);
      }

      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    v19 = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](v19, "Input Tensor x is not an IRTensor object.");
    __cxa_throw(v19, off_278235F80, MEMORY[0x277D82610]);
  }

  std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
}

void sub_218139464(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, char a56)
{
  MIL::ValueInference::Tensor<int>::~Tensor(&a38);
  MIL::ValueInference::Tensor<int>::~Tensor((v58 - 192));
  std::__function::__value_func<std::vector<MIL::IRValueType const*> ()(std::shared_ptr<MIL::MILContext> const&,std::shared_ptr<MIL::Location const>,std::unordered_map<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>> const&,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>> const&,std::vector<std::vector<MIL::IRValueType const*>> const&)>::~__value_func[abi:ne200100](v58 - 240);
  std::__hash_table<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>>>::~__hash_table(&a56);
  if (v57)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v57);
  }

  if (v56)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v56);
  }

  _Unwind_Resume(a1);
}

void sub_218139944()
{
  if (*(v0 - 169) < 0)
  {
    operator delete(*(v0 - 192));
  }

  JUMPOUT(0x21813993CLL);
}

void MIL::Operators::Common::ios15::CustomValueInference::ValueInferenceFloorDiv(uint64_t a1, void *a2, void *a3)
{
  v7[7] = *MEMORY[0x277D85DE8];
  v5 = a2[1];
  v7[0] = *a2;
  v7[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "floor_div");
}

void sub_218139A6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, uint64_t a20, std::__shared_weak_count *a21)
{
  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a21);
  }

  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a19);
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios15::CustomValueInference::ValueInferenceMaximum(uint64_t a1, void *a2, void *a3)
{
  v7[7] = *MEMORY[0x277D85DE8];
  v5 = a2[1];
  v7[0] = *a2;
  v7[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "maximum");
}

void sub_218139BC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, uint64_t a20, std::__shared_weak_count *a21)
{
  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a21);
  }

  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a19);
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios15::CustomValueInference::ValueInferenceMinimum(uint64_t a1, void *a2, void *a3)
{
  v7[7] = *MEMORY[0x277D85DE8];
  v5 = a2[1];
  v7[0] = *a2;
  v7[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "minimum");
}

void sub_218139D14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, uint64_t a20, std::__shared_weak_count *a21)
{
  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a21);
  }

  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a19);
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios15::CustomValueInference::ValueInferenceMul(uint64_t a1, void *a2, void *a3)
{
  v7[7] = *MEMORY[0x277D85DE8];
  v5 = a2[1];
  v7[0] = *a2;
  v7[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "mul");
}

void sub_218139E68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, uint64_t a20, std::__shared_weak_count *a21)
{
  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a21);
  }

  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a19);
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios15::CustomValueInference::ValueInferencePow(uint64_t a1, void *a2, void *a3)
{
  v7[7] = *MEMORY[0x277D85DE8];
  v5 = a2[1];
  v7[0] = *a2;
  v7[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "pow");
}

void sub_218139FBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, uint64_t a20, std::__shared_weak_count *a21)
{
  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a21);
  }

  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a19);
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios15::CustomValueInference::ValueInferenceRealDiv(uint64_t a1, void *a2, void *a3)
{
  v7[7] = *MEMORY[0x277D85DE8];
  v5 = a2[1];
  v7[0] = *a2;
  v7[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "real_div");
}

void sub_21813A110(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, uint64_t a20, std::__shared_weak_count *a21)
{
  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a21);
  }

  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a19);
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios15::CustomValueInference::ValueInferenceSub(uint64_t a1, void *a2, void *a3)
{
  v7[7] = *MEMORY[0x277D85DE8];
  v5 = a2[1];
  v7[0] = *a2;
  v7[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "sub");
}

void sub_21813A264(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, uint64_t a20, std::__shared_weak_count *a21)
{
  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a21);
  }

  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a19);
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios15::CustomValueInference::ValueInferenceMod(uint64_t a1, void *a2, void *a3)
{
  v7[7] = *MEMORY[0x277D85DE8];
  v5 = a2[1];
  v7[0] = *a2;
  v7[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "mod");
}

void sub_21813A3B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, uint64_t a20, std::__shared_weak_count *a21)
{
  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a21);
  }

  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a19);
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios15::CustomValueInference::ValueInferenceEqual(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&v9, "x");
  std::string::basic_string[abi:ne200100]<0>(v8, "x");
  v4 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, v8);
  if (v4)
  {
    v5 = v4[5];
    v7 = *v5;
    v6 = *(v5 + 1);
    v8[3] = v7;
    v8[4] = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
    }

    MIL::IRTypedArgument::Make();
  }

  std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
}

void sub_21813A934(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  if (a21)
  {
    (*(*a21 + 8))(a21);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>>>::~__hash_table(&a40);
  _Unwind_Resume(a1);
}

void anonymous namespace::BinaryOpBoolOutputHelper(MIL::IRConstantDimension **a1, void *a2, MIL *a3, _DWORD *a4)
{
  v108 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(__p, "x");
  v8 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a2, __p);
  if (!v8)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v9 = (*(**v8[5] + 40))(*v8[5]);
  if (v100 < 0)
  {
    operator delete(__p[0]);
  }

  if (!v9)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "Input Tensor x is not an IRTensor object.");
    __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "y");
  v10 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a2, __p);
  if (!v10)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v11 = (*(**v10[5] + 40))(*v10[5]);
  if (v100 < 0)
  {
    operator delete(__p[0]);
  }

  if (!v11)
  {
    v65 = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](v65, "Input Tensor y is not an IRTensor object.");
    __cxa_throw(v65, off_278235F80, MEMORY[0x277D82610]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "x");
  v12 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a2, __p);
  if (!v12)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v13 = v12[5];
  v15 = *v13;
  v14 = v13[1];
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v100 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "y");
  v16 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a2, __p);
  if (!v16)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v17 = v16[5];
  v19 = *v17;
  v18 = v17[1];
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v100 < 0)
  {
    operator delete(__p[0]);
  }

  v20 = (*(*v15 + 32))(v15);
  v21 = (*(*v20 + 88))(v20);
  v22 = (*(*v19 + 32))(v19);
  if (v21 != (*(*v22 + 88))(v22))
  {
    v66 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v66, "Datatypes do not match for input tensors x and Tensor y.");
    goto LABEL_273;
  }

  if ((*(*a3 + 88))(a3) != 2)
  {
    v66 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v66, "Unsupported Datatype for the output IRTensor.");
    goto LABEL_273;
  }

  if (v21 <= 4)
  {
    if (v21 != 2)
    {
      if (v21 == 4)
      {
        v79 = v15;
        v80 = v14;
        if (v14)
        {
          atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        MIL::ValueInference::Tensor<MIL::Fp16>::FromIRTensorValue(&v79, __p);
        if (v80)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v80);
        }

        v77 = v19;
        v78 = v18;
        if (v18)
        {
          atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        MIL::ValueInference::Tensor<MIL::Fp16>::FromIRTensorValue(&v77, v96);
        if (v78)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v78);
        }

        if (*(a4 + 23) < 0)
        {
          v41 = *(a4 + 1);
          if (v41 <= 8)
          {
            if (v41 != 4)
            {
              if (v41 != 5)
              {
                if (v41 != 7)
                {
                  goto LABEL_161;
                }

                v25 = **a4 == 1634038375 && *(*a4 + 3) == 1919251553;
LABEL_114:
                v42 = MIL::MathOps::GreaterOp<MIL::Fp16>;
                if (!v25)
                {
                  goto LABEL_161;
                }

LABEL_227:
                v105 = &unk_2829EA998;
                v106 = v42;
                v107 = &v105;
                MIL::GetTensorShapeWithDimensionsAllKnown(a3, v23, &v92);
                std::__function::__value_func<unsigned char ()(MIL::Fp16,MIL::Fp16)>::__value_func[abi:ne200100](v102, &v105);
                v74 = 0;
                v75 = 0;
                v76 = 0;
                std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v74, v92, v93, (v93 - v92) >> 3);
                MIL::ValueInference::BinaryOp<MIL::Fp16,BOOL>(__p, v96, v102, &v74, v91);
                if (v74)
                {
                  v75 = v74;
                  operator delete(v74);
                }

                std::__function::__value_func<unsigned char ()(MIL::Fp16,MIL::Fp16)>::~__value_func[abi:ne200100](v102);
                MIL::ValueInference::Tensor<BOOL>::ToIRTensorValue(v91, *a1);
              }

              v54 = **a4 == 1635086693 && *(*a4 + 4) == 108;
              goto LABEL_215;
            }

            v59 = **a4;
            goto LABEL_248;
          }

          if (v41 != 9)
          {
            if (v41 != 10)
            {
              if (v41 != 13)
              {
                goto LABEL_161;
              }

              v46 = **a4 == 0x5F72657461657267 && *(*a4 + 5) == 0x6C617571655F7265;
LABEL_160:
              v42 = MIL::MathOps::GreaterEqualOp<MIL::Fp16>;
              if (!v46)
              {
                goto LABEL_161;
              }

              goto LABEL_227;
            }

            v56 = **a4 == 0x7571655F7373656CLL && *(*a4 + 8) == 27745;
LABEL_225:
            v42 = MIL::MathOps::LessEqualOp<MIL::Fp16>;
            if (v56)
            {
              goto LABEL_227;
            }

            goto LABEL_161;
          }

          a4 = *a4;
        }

        else
        {
          v24 = *(a4 + 23);
          if (v24 <= 8)
          {
            if (v24 != 4)
            {
              if (v24 != 5)
              {
                if (v24 != 7)
                {
                  goto LABEL_161;
                }

                v25 = *a4 == 1634038375 && *(a4 + 3) == 1919251553;
                goto LABEL_114;
              }

              v54 = *a4 == 1635086693 && *(a4 + 4) == 108;
LABEL_215:
              v42 = MIL::MathOps::EqualOp<MIL::Fp16>;
              if (v54)
              {
                goto LABEL_227;
              }

              goto LABEL_161;
            }

            v59 = *a4;
LABEL_248:
            v42 = MIL::MathOps::LessOp<MIL::Fp16>;
            if (v59 == 1936942444)
            {
              goto LABEL_227;
            }

            goto LABEL_161;
          }

          if (v24 != 9)
          {
            if (v24 != 10)
            {
              if (v24 != 13)
              {
                goto LABEL_161;
              }

              v46 = *a4 == 0x5F72657461657267 && *(a4 + 5) == 0x6C617571655F7265;
              goto LABEL_160;
            }

            v56 = *a4 == 0x7571655F7373656CLL && *(a4 + 4) == 27745;
            goto LABEL_225;
          }
        }

        v62 = *a4 == 0x617571655F746F6ELL && *(a4 + 8) == 108;
        v42 = MIL::MathOps::NotEqualOp<MIL::Fp16>;
        if (v62)
        {
          goto LABEL_227;
        }

LABEL_161:
        v50 = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(v50, "Invalid OpName specified");
        v50->__vftable = (MEMORY[0x277D828F8] + 16);
        __cxa_throw(v50, off_278235F80, MEMORY[0x277D82610]);
      }

      goto LABEL_274;
    }

    v72 = v15;
    v73 = v14;
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    MIL::ValueInference::Tensor<BOOL>::FromIRTensorValue(&v72, __p);
    if (v73)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v73);
    }

    v70 = v19;
    v71 = v18;
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    MIL::ValueInference::Tensor<BOOL>::FromIRTensorValue(&v70, v96);
    if (v71)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v71);
    }

    if (*(a4 + 23) < 0)
    {
      v34 = *(a4 + 1);
      if (v34 != 10)
      {
        if (v34 != 11)
        {
          goto LABEL_97;
        }

        a4 = *a4;
        goto LABEL_89;
      }

      v48 = **a4 == 0x5F6C616369676F6CLL && *(*a4 + 8) == 29295;
    }

    else
    {
      v30 = *(a4 + 23);
      if (v30 != 10)
      {
        if (v30 != 11)
        {
          goto LABEL_97;
        }

LABEL_89:
        v35 = *a4 == 0x5F6C616369676F6CLL && *(a4 + 3) == 0x646E615F6C616369;
        v36 = MIL::MathOps::LogicalAndOp;
        if (!v35)
        {
          v37 = *a4 == 0x5F6C616369676F6CLL && *(a4 + 3) == 0x726F785F6C616369;
          v36 = MIL::MathOps::LogicalXorOp;
          if (!v37)
          {
LABEL_97:
            v38 = __cxa_allocate_exception(0x10uLL);
            std::logic_error::logic_error(v38, "Invalid OpName specified");
            v38->__vftable = (MEMORY[0x277D828F8] + 16);
            __cxa_throw(v38, off_278235F80, MEMORY[0x277D82610]);
          }
        }

LABEL_175:
        v105 = &unk_2829EAA48;
        v106 = v36;
        v107 = &v105;
        MIL::GetTensorShapeWithDimensionsAllKnown(a3, v29, &v92);
        std::__function::__value_func<unsigned char ()(unsigned char,unsigned char)>::__value_func[abi:ne200100](v101, &v105);
        v67 = 0;
        v68 = 0;
        v69 = 0;
        std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v67, v92, v93, (v93 - v92) >> 3);
        MIL::ValueInference::BinaryOp<BOOL,BOOL>(__p, v96, v101, &v67, v91);
        if (v67)
        {
          v68 = v67;
          operator delete(v67);
        }

        std::__function::__value_func<unsigned char ()(unsigned char,unsigned char)>::~__value_func[abi:ne200100](v101);
        MIL::ValueInference::Tensor<BOOL>::ToIRTensorValue(v91, *a1);
      }

      v48 = *a4 == 0x5F6C616369676F6CLL && *(a4 + 4) == 29295;
    }

    v36 = MIL::MathOps::LogicalOrOp;
    if (!v48)
    {
      goto LABEL_97;
    }

    goto LABEL_175;
  }

  if (v21 != 11)
  {
    if (v21 != 5)
    {
LABEL_274:
      v66 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v66, "Unsupported Datatype for the input IRTensor.");
LABEL_273:
      v66->__vftable = (MEMORY[0x277D828F8] + 16);
      __cxa_throw(v66, off_278235F80, MEMORY[0x277D82610]);
    }

    v97 = v15;
    v98 = v14;
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    MIL::ValueInference::Tensor<float>::FromIRTensorValue(&v97, __p);
    if (v98)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v98);
    }

    v94 = v19;
    v95 = v18;
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    MIL::ValueInference::Tensor<float>::FromIRTensorValue(&v94, v96);
    if (v95)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v95);
    }

    if (*(a4 + 23) < 0)
    {
      v43 = *(a4 + 1);
      if (v43 <= 8)
      {
        if (v43 != 4)
        {
          if (v43 != 5)
          {
            if (v43 != 7)
            {
              goto LABEL_169;
            }

            v28 = **a4 == 1634038375 && *(*a4 + 3) == 1919251553;
LABEL_123:
            v44 = MIL::MathOps::GreaterOp<float>;
            if (!v28)
            {
              goto LABEL_169;
            }

LABEL_235:
            v105 = &unk_2829EA838;
            v106 = v44;
            v107 = &v105;
            MIL::GetTensorShapeWithDimensionsAllKnown(a3, v26, &v92);
            std::__function::__value_func<unsigned char ()(float,float)>::__value_func[abi:ne200100](v104, &v105);
            v88 = 0;
            v89 = 0;
            v90 = 0;
            std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v88, v92, v93, (v93 - v92) >> 3);
            MIL::ValueInference::BinaryOp<float,BOOL>(__p, v96, v104, &v88, v91);
            if (v88)
            {
              v89 = v88;
              operator delete(v88);
            }

            std::__function::__value_func<unsigned char ()(float,float)>::~__value_func[abi:ne200100](v104);
            MIL::ValueInference::Tensor<BOOL>::ToIRTensorValue(v91, *a1);
          }

          v55 = **a4 == 1635086693 && *(*a4 + 4) == 108;
          goto LABEL_220;
        }

        v60 = **a4;
        goto LABEL_251;
      }

      if (v43 != 9)
      {
        if (v43 != 10)
        {
          if (v43 != 13)
          {
            goto LABEL_169;
          }

          v47 = **a4 == 0x5F72657461657267 && *(*a4 + 5) == 0x6C617571655F7265;
LABEL_168:
          v44 = MIL::MathOps::GreaterEqualOp<float>;
          if (!v47)
          {
            goto LABEL_169;
          }

          goto LABEL_235;
        }

        v57 = **a4 == 0x7571655F7373656CLL && *(*a4 + 8) == 27745;
LABEL_233:
        v44 = MIL::MathOps::LessEqualOp<float>;
        if (v57)
        {
          goto LABEL_235;
        }

        goto LABEL_169;
      }

      a4 = *a4;
    }

    else
    {
      v27 = *(a4 + 23);
      if (v27 <= 8)
      {
        if (v27 != 4)
        {
          if (v27 != 5)
          {
            if (v27 != 7)
            {
              goto LABEL_169;
            }

            v28 = *a4 == 1634038375 && *(a4 + 3) == 1919251553;
            goto LABEL_123;
          }

          v55 = *a4 == 1635086693 && *(a4 + 4) == 108;
LABEL_220:
          v44 = MIL::MathOps::EqualOp<float>;
          if (v55)
          {
            goto LABEL_235;
          }

          goto LABEL_169;
        }

        v60 = *a4;
LABEL_251:
        v44 = MIL::MathOps::LessOp<float>;
        if (v60 == 1936942444)
        {
          goto LABEL_235;
        }

        goto LABEL_169;
      }

      if (v27 != 9)
      {
        if (v27 != 10)
        {
          if (v27 != 13)
          {
            goto LABEL_169;
          }

          v47 = *a4 == 0x5F72657461657267 && *(a4 + 5) == 0x6C617571655F7265;
          goto LABEL_168;
        }

        v57 = *a4 == 0x7571655F7373656CLL && *(a4 + 4) == 27745;
        goto LABEL_233;
      }
    }

    v63 = *a4 == 0x617571655F746F6ELL && *(a4 + 8) == 108;
    v44 = MIL::MathOps::NotEqualOp<float>;
    if (v63)
    {
      goto LABEL_235;
    }

LABEL_169:
    v51 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v51, "Invalid OpName specified");
    v51->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(v51, off_278235F80, MEMORY[0x277D82610]);
  }

  v86 = v15;
  v87 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  MIL::ValueInference::Tensor<int>::FromIRTensorValue(&v86, __p);
  if (v87)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v87);
  }

  v84 = v19;
  v85 = v18;
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  MIL::ValueInference::Tensor<int>::FromIRTensorValue(&v84, v96);
  if (v85)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v85);
  }

  if (*(a4 + 23) < 0)
  {
    v39 = *(a4 + 1);
    if (v39 <= 8)
    {
      if (v39 != 4)
      {
        if (v39 != 5)
        {
          if (v39 != 7)
          {
            goto LABEL_153;
          }

          v33 = **a4 == 1634038375 && *(*a4 + 3) == 1919251553;
LABEL_105:
          v40 = MIL::MathOps::GreaterOp<int>;
          if (!v33)
          {
            goto LABEL_153;
          }

LABEL_209:
          v105 = &unk_2829EA8E8;
          v106 = v40;
          v107 = &v105;
          MIL::GetTensorShapeWithDimensionsAllKnown(a3, v31, &v92);
          std::__function::__value_func<unsigned char ()(int,int)>::__value_func[abi:ne200100](v103, &v105);
          v81 = 0;
          v82 = 0;
          v83 = 0;
          std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v81, v92, v93, (v93 - v92) >> 3);
          MIL::ValueInference::BinaryOp<int,BOOL>(__p, v96, v103, &v81, v91);
          if (v81)
          {
            v82 = v81;
            operator delete(v81);
          }

          std::__function::__value_func<unsigned char ()(int,int)>::~__value_func[abi:ne200100](v103);
          MIL::ValueInference::Tensor<BOOL>::ToIRTensorValue(v91, *a1);
        }

        v52 = **a4 == 1635086693 && *(*a4 + 4) == 108;
        goto LABEL_202;
      }

      v58 = **a4;
      goto LABEL_239;
    }

    if (v39 != 9)
    {
      if (v39 != 10)
      {
        if (v39 != 13)
        {
          goto LABEL_153;
        }

        v45 = **a4 == 0x5F72657461657267 && *(*a4 + 5) == 0x6C617571655F7265;
LABEL_152:
        v40 = MIL::MathOps::GreaterEqualOp<int>;
        if (!v45)
        {
          goto LABEL_153;
        }

        goto LABEL_209;
      }

      v53 = **a4 == 0x7571655F7373656CLL && *(*a4 + 8) == 27745;
LABEL_207:
      v40 = MIL::MathOps::LessEqualOp<int>;
      if (v53)
      {
        goto LABEL_209;
      }

      goto LABEL_153;
    }

    a4 = *a4;
  }

  else
  {
    v32 = *(a4 + 23);
    if (v32 <= 8)
    {
      if (v32 != 4)
      {
        if (v32 != 5)
        {
          if (v32 != 7)
          {
            goto LABEL_153;
          }

          v33 = *a4 == 1634038375 && *(a4 + 3) == 1919251553;
          goto LABEL_105;
        }

        v52 = *a4 == 1635086693 && *(a4 + 4) == 108;
LABEL_202:
        v40 = MIL::MathOps::EqualOp<int>;
        if (v52)
        {
          goto LABEL_209;
        }

        goto LABEL_153;
      }

      v58 = *a4;
LABEL_239:
      v40 = MIL::MathOps::LessOp<int>;
      if (v58 == 1936942444)
      {
        goto LABEL_209;
      }

      goto LABEL_153;
    }

    if (v32 != 9)
    {
      if (v32 != 10)
      {
        if (v32 != 13)
        {
          goto LABEL_153;
        }

        v45 = *a4 == 0x5F72657461657267 && *(a4 + 5) == 0x6C617571655F7265;
        goto LABEL_152;
      }

      v53 = *a4 == 0x7571655F7373656CLL && *(a4 + 4) == 27745;
      goto LABEL_207;
    }
  }

  v61 = *a4 == 0x617571655F746F6ELL && *(a4 + 8) == 108;
  v40 = MIL::MathOps::NotEqualOp<int>;
  if (v61)
  {
    goto LABEL_209;
  }

LABEL_153:
  v49 = __cxa_allocate_exception(0x10uLL);
  std::logic_error::logic_error(v49, "Invalid OpName specified");
  v49->__vftable = (MEMORY[0x277D828F8] + 16);
  __cxa_throw(v49, off_278235F80, MEMORY[0x277D82610]);
}

void sub_21813BE88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *__p, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, int a58, __int16 a59, char a60, char a61)
{
  __cxa_free_exception(v63);
  if (v62)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v62);
  }

  if (v61)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v61);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::CustomValueInference::ValueInferenceGreater(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&v9, "x");
  std::string::basic_string[abi:ne200100]<0>(v8, "x");
  v4 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, v8);
  if (v4)
  {
    v5 = v4[5];
    v7 = *v5;
    v6 = *(v5 + 1);
    v8[3] = v7;
    v8[4] = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
    }

    MIL::IRTypedArgument::Make();
  }

  std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
}

void sub_21813C704(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  if (a21)
  {
    (*(*a21 + 8))(a21);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>>>::~__hash_table(&a40);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::CustomValueInference::ValueInferenceGreaterEqual(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&v9, "x");
  std::string::basic_string[abi:ne200100]<0>(v8, "x");
  v4 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, v8);
  if (v4)
  {
    v5 = v4[5];
    v7 = *v5;
    v6 = *(v5 + 1);
    v8[3] = v7;
    v8[4] = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
    }

    MIL::IRTypedArgument::Make();
  }

  std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
}

void sub_21813CF00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  if (a21)
  {
    (*(*a21 + 8))(a21);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>>>::~__hash_table(&a40);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::CustomValueInference::ValueInferenceLess(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&v9, "x");
  std::string::basic_string[abi:ne200100]<0>(v8, "x");
  v4 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, v8);
  if (v4)
  {
    v5 = v4[5];
    v7 = *v5;
    v6 = *(v5 + 1);
    v8[3] = v7;
    v8[4] = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
    }

    MIL::IRTypedArgument::Make();
  }

  std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
}

void sub_21813D6FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  if (a21)
  {
    (*(*a21 + 8))(a21);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>>>::~__hash_table(&a40);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::CustomValueInference::ValueInferenceLessEqual(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&v9, "x");
  std::string::basic_string[abi:ne200100]<0>(v8, "x");
  v4 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, v8);
  if (v4)
  {
    v5 = v4[5];
    v7 = *v5;
    v6 = *(v5 + 1);
    v8[3] = v7;
    v8[4] = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
    }

    MIL::IRTypedArgument::Make();
  }

  std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
}

void sub_21813DEF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  if (a21)
  {
    (*(*a21 + 8))(a21);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>>>::~__hash_table(&a40);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::CustomValueInference::ValueInferenceNotEqual(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&v9, "x");
  std::string::basic_string[abi:ne200100]<0>(v8, "x");
  v4 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, v8);
  if (v4)
  {
    v5 = v4[5];
    v7 = *v5;
    v6 = *(v5 + 1);
    v8[3] = v7;
    v8[4] = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
    }

    MIL::IRTypedArgument::Make();
  }

  std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
}

void sub_21813E6F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  if (a21)
  {
    (*(*a21 + 8))(a21);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>>>::~__hash_table(&a40);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::CustomValueInference::ValueInferenceLogicalAnd(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&v9, "x");
  std::string::basic_string[abi:ne200100]<0>(v8, "x");
  v4 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, v8);
  if (v4)
  {
    v5 = v4[5];
    v7 = *v5;
    v6 = *(v5 + 1);
    v8[3] = v7;
    v8[4] = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
    }

    MIL::IRTypedArgument::Make();
  }

  std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
}

void sub_21813EEF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  if (a21)
  {
    (*(*a21 + 8))(a21);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>>>::~__hash_table(&a40);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::CustomValueInference::ValueInferenceLogicalOr(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&v9, "x");
  std::string::basic_string[abi:ne200100]<0>(v8, "x");
  v4 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, v8);
  if (v4)
  {
    v5 = v4[5];
    v7 = *v5;
    v6 = *(v5 + 1);
    v8[3] = v7;
    v8[4] = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
    }

    MIL::IRTypedArgument::Make();
  }

  std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
}

void sub_21813F6EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  if (a21)
  {
    (*(*a21 + 8))(a21);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>>>::~__hash_table(&a40);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::CustomValueInference::ValueInferenceLogicalXor(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&v9, "x");
  std::string::basic_string[abi:ne200100]<0>(v8, "x");
  v4 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, v8);
  if (v4)
  {
    v5 = v4[5];
    v7 = *v5;
    v6 = *(v5 + 1);
    v8[3] = v7;
    v8[4] = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
    }

    MIL::IRTypedArgument::Make();
  }

  std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
}

void sub_21813FEE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  if (a21)
  {
    (*(*a21 + 8))(a21);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>>>::~__hash_table(&a40);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<float ()(float,float)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t MIL::MathOps::AddOp<MIL::Fp16>(__int16 a1, __int16 a2)
{
  v7 = a1;
  v6 = a2;
  Float = MIL::Fp16::GetFloat(&v7);
  v3 = MIL::Fp16::GetFloat(&v6);
  return MIL::Fp16::FromFloat(v4, Float + v3);
}

uint64_t MIL::MathOps::FloorDivOp<MIL::Fp16>(__int16 a1, __int16 a2)
{
  v7 = a1;
  v6 = a2;
  Float = MIL::Fp16::GetFloat(&v7);
  v3 = MIL::Fp16::GetFloat(&v6);
  return MIL::Fp16::FromFloat(v4, floorf(Float / v3));
}

uint64_t MIL::MathOps::MaximumOp<MIL::Fp16>(__int16 a1, __int16 a2)
{
  v7 = a1;
  v6 = a2;
  Float = MIL::Fp16::GetFloat(&v7);
  v4 = MIL::Fp16::GetFloat(&v6);
  if (Float >= v4)
  {
    v4 = Float;
  }

  return MIL::Fp16::FromFloat(v3, v4);
}

uint64_t MIL::MathOps::MinimumOp<MIL::Fp16>(__int16 a1, __int16 a2)
{
  v7 = a1;
  v6 = a2;
  Float = MIL::Fp16::GetFloat(&v7);
  v4 = MIL::Fp16::GetFloat(&v6);
  if (v4 >= Float)
  {
    v4 = Float;
  }

  return MIL::Fp16::FromFloat(v3, v4);
}

uint64_t MIL::MathOps::MulOp<MIL::Fp16>(__int16 a1, __int16 a2)
{
  v7 = a1;
  v6 = a2;
  Float = MIL::Fp16::GetFloat(&v7);
  v3 = MIL::Fp16::GetFloat(&v6);
  return MIL::Fp16::FromFloat(v4, Float * v3);
}

uint64_t MIL::MathOps::PowOp<MIL::Fp16>(__int16 a1, __int16 a2)
{
  v8 = a1;
  v7 = a2;
  Float = MIL::Fp16::GetFloat(&v8);
  v3 = MIL::Fp16::GetFloat(&v7);
  v4 = powf(Float, v3);
  return MIL::Fp16::FromFloat(v5, v4);
}

uint64_t MIL::MathOps::RealDivOp<MIL::Fp16>(__int16 a1, __int16 a2)
{
  v7 = a1;
  v6 = a2;
  Float = MIL::Fp16::GetFloat(&v7);
  v3 = MIL::Fp16::GetFloat(&v6);
  return MIL::Fp16::FromFloat(v4, Float / v3);
}

uint64_t MIL::MathOps::SubOp<MIL::Fp16>(__int16 a1, __int16 a2)
{
  v7 = a1;
  v6 = a2;
  Float = MIL::Fp16::GetFloat(&v7);
  v3 = MIL::Fp16::GetFloat(&v6);
  return MIL::Fp16::FromFloat(v4, Float - v3);
}

uint64_t MIL::MathOps::ModOp<MIL::Fp16>(__int16 a1, __int16 a2)
{
  v8 = a1;
  v7 = a2;
  Float = MIL::Fp16::GetFloat(&v8);
  v3 = MIL::Fp16::GetFloat(&v7);
  v4 = fmodf(Float, v3);
  return MIL::Fp16::FromFloat(v5, v4);
}

uint64_t std::__function::__func<MIL::Fp16 (*)(MIL::Fp16,MIL::Fp16),std::allocator<MIL::Fp16 (*)(MIL::Fp16,MIL::Fp16)>,MIL::Fp16 ()(MIL::Fp16,MIL::Fp16)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829EA6D8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<MIL::Fp16 (*)(MIL::Fp16,MIL::Fp16),std::allocator<MIL::Fp16 (*)(MIL::Fp16,MIL::Fp16)>,MIL::Fp16 ()(MIL::Fp16,MIL::Fp16)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<MIL::Fp16 ()(MIL::Fp16,MIL::Fp16)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<MIL::Fp16 ()(MIL::Fp16,MIL::Fp16)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t MIL::MathOps::MaximumOp<int>(uint64_t result, int a2)
{
  if (result <= a2)
  {
    return a2;
  }

  else
  {
    return result;
  }
}

uint64_t MIL::MathOps::MinimumOp<int>(uint64_t result, int a2)
{
  if (a2 >= result)
  {
    return result;
  }

  else
  {
    return a2;
  }
}

uint64_t std::__function::__func<int (*)(int,int),std::allocator<int (*)(int,int)>,int ()(int,int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829EA788;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<int (*)(int,int),std::allocator<int (*)(int,int)>,int ()(int,int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<int ()(int,int)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<int ()(int,int)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<unsigned char (*)(float,float),std::allocator<unsigned char (*)(float,float)>,unsigned char ()(float,float)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829EA838;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<unsigned char (*)(float,float),std::allocator<unsigned char (*)(float,float)>,unsigned char ()(float,float)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<unsigned char ()(float,float)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<unsigned char ()(float,float)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<unsigned char (*)(int,int),std::allocator<unsigned char (*)(int,int)>,unsigned char ()(int,int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829EA8E8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<unsigned char (*)(int,int),std::allocator<unsigned char (*)(int,int)>,unsigned char ()(int,int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<unsigned char ()(int,int)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<unsigned char ()(int,int)>::~__value_func[abi:ne200100](uint64_t a1)
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

BOOL MIL::MathOps::GreaterOp<MIL::Fp16>(__int16 a1, __int16 a2)
{
  v5 = a1;
  v4 = a2;
  Float = MIL::Fp16::GetFloat(&v5);
  return Float > MIL::Fp16::GetFloat(&v4);
}

BOOL MIL::MathOps::GreaterEqualOp<MIL::Fp16>(__int16 a1, __int16 a2)
{
  v5 = a1;
  v4 = a2;
  Float = MIL::Fp16::GetFloat(&v5);
  return Float >= MIL::Fp16::GetFloat(&v4);
}

BOOL MIL::MathOps::LessOp<MIL::Fp16>(__int16 a1, __int16 a2)
{
  v5 = a1;
  v4 = a2;
  Float = MIL::Fp16::GetFloat(&v5);
  return Float < MIL::Fp16::GetFloat(&v4);
}

BOOL MIL::MathOps::LessEqualOp<MIL::Fp16>(__int16 a1, __int16 a2)
{
  v5 = a1;
  v4 = a2;
  Float = MIL::Fp16::GetFloat(&v5);
  return Float <= MIL::Fp16::GetFloat(&v4);
}

uint64_t std::__function::__func<unsigned char (*)(MIL::Fp16,MIL::Fp16),std::allocator<unsigned char (*)(MIL::Fp16,MIL::Fp16)>,unsigned char ()(MIL::Fp16,MIL::Fp16)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829EA998;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<unsigned char (*)(MIL::Fp16,MIL::Fp16),std::allocator<unsigned char (*)(MIL::Fp16,MIL::Fp16)>,unsigned char ()(MIL::Fp16,MIL::Fp16)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<unsigned char ()(MIL::Fp16,MIL::Fp16)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<unsigned char ()(MIL::Fp16,MIL::Fp16)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<unsigned char (*)(unsigned char,unsigned char),std::allocator<unsigned char (*)(unsigned char,unsigned char)>,unsigned char ()(unsigned char,unsigned char)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829EAA48;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<unsigned char (*)(unsigned char,unsigned char),std::allocator<unsigned char (*)(unsigned char,unsigned char)>,unsigned char ()(unsigned char,unsigned char)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<unsigned char ()(unsigned char,unsigned char)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<unsigned char ()(unsigned char,unsigned char)>::~__value_func[abi:ne200100](uint64_t a1)
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

void MIL::Operators::Common::ios15::ElementwiseBinary::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_218141F0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  v61 = *(v59 - 256);
  *(v59 - 256) = 0;
  if (v61)
  {
    (*(*v61 + 8))(v61);
  }

  v62 = *v58;
  *v58 = 0;
  if (v62)
  {
    (*(*v62 + 8))(v62);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v59 - 80), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a58, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::Add::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_218142F1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  v61 = *(v59 - 240);
  *(v59 - 240) = 0;
  if (v61)
  {
    (*(*v61 + 8))(v61);
  }

  v62 = *v58;
  *v58 = 0;
  if (v62)
  {
    (*(*v62 + 8))(v62);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v59 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a58, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::ElementwiseBinaryBoolOutput::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_218143CF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, void *a54, uint64_t a55, uint64_t a56, void *a57, uint64_t a58, uint64_t a59, void *a60, uint64_t a61)
{
  v64 = *(v62 - 104);
  *(v62 - 104) = 0;
  if (v64)
  {
    (*(*v64 + 8))(v64);
  }

  v65 = *v61;
  *v61 = 0;
  if (v65)
  {
    (*(*v65 + 8))(v65);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a57, 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v62 - 232), 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::ElementwiseBinaryLogical::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_218144860(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56)
{
  if (a55)
  {
    (*(*a55 + 8))(a55);
  }

  v59 = *v56;
  *v56 = 0;
  if (v59)
  {
    (*(*v59 + 8))(v59);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v57 - 80), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v57 - 208), 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::LogicalAnd::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2181453DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56)
{
  if (a55)
  {
    (*(*a55 + 8))(a55);
  }

  v59 = *v56;
  *v56 = 0;
  if (v59)
  {
    (*(*v59 + 8))(v59);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v57 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v57 - 224), 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::LogicalOr::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_218145F68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56)
{
  if (a55)
  {
    (*(*a55 + 8))(a55);
  }

  v59 = *v56;
  *v56 = 0;
  if (v59)
  {
    (*(*v59 + 8))(v59);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v57 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v57 - 224), 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::LogicalXor::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_218146AF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56)
{
  if (a55)
  {
    (*(*a55 + 8))(a55);
  }

  v59 = *v56;
  *v56 = 0;
  if (v59)
  {
    (*(*v59 + 8))(v59);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v57 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v57 - 224), 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::Equal::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2181477CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, void *a42)
{
  v45 = *(v43 - 88);
  *(v43 - 88) = 0;
  if (v45)
  {
    (*(*v45 + 8))(v45);
  }

  v46 = *v42;
  *v42 = 0;
  if (v46)
  {
    (*(*v46 + 8))(v46);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a42, 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v43 - 248), 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::Greater::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2181484EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, void *a42)
{
  v45 = *(v43 - 88);
  *(v43 - 88) = 0;
  if (v45)
  {
    (*(*v45 + 8))(v45);
  }

  v46 = *v42;
  *v42 = 0;
  if (v46)
  {
    (*(*v46 + 8))(v46);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a42, 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v43 - 248), 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::GreaterEqual::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_21814920C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, void *a42)
{
  v45 = *(v43 - 88);
  *(v43 - 88) = 0;
  if (v45)
  {
    (*(*v45 + 8))(v45);
  }

  v46 = *v42;
  *v42 = 0;
  if (v46)
  {
    (*(*v46 + 8))(v46);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a42, 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v43 - 248), 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::Less::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_218149F2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, void *a42)
{
  v45 = *(v43 - 88);
  *(v43 - 88) = 0;
  if (v45)
  {
    (*(*v45 + 8))(v45);
  }

  v46 = *v42;
  *v42 = 0;
  if (v46)
  {
    (*(*v46 + 8))(v46);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a42, 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v43 - 248), 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::LessEqual::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_21814AC4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, void *a42)
{
  v45 = *(v43 - 88);
  *(v43 - 88) = 0;
  if (v45)
  {
    (*(*v45 + 8))(v45);
  }

  v46 = *v42;
  *v42 = 0;
  if (v46)
  {
    (*(*v46 + 8))(v46);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a42, 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v43 - 248), 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::NotEqual::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_21814B96C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, void *a42)
{
  v45 = *(v43 - 88);
  *(v43 - 88) = 0;
  if (v45)
  {
    (*(*v45 + 8))(v45);
  }

  v46 = *v42;
  *v42 = 0;
  if (v46)
  {
    (*(*v46 + 8))(v46);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a42, 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v43 - 248), 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::FloorDiv::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_21814C884(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  v61 = *(v59 - 240);
  *(v59 - 240) = 0;
  if (v61)
  {
    (*(*v61 + 8))(v61);
  }

  v62 = *v58;
  *v58 = 0;
  if (v62)
  {
    (*(*v62 + 8))(v62);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v59 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a58, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::Maximum::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_21814D8A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  v61 = *(v59 - 240);
  *(v59 - 240) = 0;
  if (v61)
  {
    (*(*v61 + 8))(v61);
  }

  v62 = *v58;
  *v58 = 0;
  if (v62)
  {
    (*(*v62 + 8))(v62);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v59 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a58, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::Minimum::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_21814E8C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  v61 = *(v59 - 240);
  *(v59 - 240) = 0;
  if (v61)
  {
    (*(*v61 + 8))(v61);
  }

  v62 = *v58;
  *v58 = 0;
  if (v62)
  {
    (*(*v62 + 8))(v62);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v59 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a58, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::Mul::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_21814F8E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  v61 = *(v59 - 240);
  *(v59 - 240) = 0;
  if (v61)
  {
    (*(*v61 + 8))(v61);
  }

  v62 = *v58;
  *v58 = 0;
  if (v62)
  {
    (*(*v62 + 8))(v62);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v59 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a58, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::Pow::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_218150904(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  v61 = *(v59 - 240);
  *(v59 - 240) = 0;
  if (v61)
  {
    (*(*v61 + 8))(v61);
  }

  v62 = *v58;
  *v58 = 0;
  if (v62)
  {
    (*(*v62 + 8))(v62);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v59 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a58, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::RealDiv::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_218151924(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  v61 = *(v59 - 240);
  *(v59 - 240) = 0;
  if (v61)
  {
    (*(*v61 + 8))(v61);
  }

  v62 = *v58;
  *v58 = 0;
  if (v62)
  {
    (*(*v62 + 8))(v62);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v59 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a58, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::Sub::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_218152944(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  v61 = *(v59 - 240);
  *(v59 - 240) = 0;
  if (v61)
  {
    (*(*v61 + 8))(v61);
  }

  v62 = *v58;
  *v58 = 0;
  if (v62)
  {
    (*(*v62 + 8))(v62);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v59 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a58, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::Mod::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_218153964(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  v61 = *(v59 - 240);
  *(v59 - 240) = 0;
  if (v61)
  {
    (*(*v61 + 8))(v61);
  }

  v62 = *v58;
  *v58 = 0;
  if (v62)
  {
    (*(*v62 + 8))(v62);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v59 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a58, 0);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<std::vector<std::shared_ptr<MIL::IRValue const>> (*)(std::shared_ptr<MIL::MILContext> const&,std::shared_ptr<MIL::Location const>,std::unordered_map<std::string,std::vector<std::shared_ptr<MIL::IRValue const>>> const&,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>> const&,std::vector<std::shared_ptr<MIL::IRBlock>> const&,int),std::allocator<std::vector<std::shared_ptr<MIL::IRValue const>> (*)(std::shared_ptr<MIL::MILContext> const&,std::shared_ptr<MIL::Location const>,std::unordered_map<std::string,std::vector<std::shared_ptr<MIL::IRValue const>>> const&,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>> const&,std::vector<std::shared_ptr<MIL::IRBlock>> const&,int)>,std::vector<std::shared_ptr<MIL::IRValue const>> ()(std::shared_ptr<MIL::MILContext> const&,std::shared_ptr<MIL::Location const>,std::unordered_map<std::string,std::vector<std::shared_ptr<MIL::IRValue const>>> const&,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>> const&,std::vector<std::shared_ptr<MIL::IRBlock>> const&,int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829EAAF8;
  a2[1] = v2;
  return result;
}

void std::__function::__func<std::vector<std::shared_ptr<MIL::IRValue const>> (*)(std::shared_ptr<MIL::MILContext> const&,std::shared_ptr<MIL::Location const>,std::unordered_map<std::string,std::vector<std::shared_ptr<MIL::IRValue const>>> const&,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>> const&,std::vector<std::shared_ptr<MIL::IRBlock>> const&,int),std::allocator<std::vector<std::shared_ptr<MIL::IRValue const>> (*)(std::shared_ptr<MIL::MILContext> const&,std::shared_ptr<MIL::Location const>,std::unordered_map<std::string,std::vector<std::shared_ptr<MIL::IRValue const>>> const&,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>> const&,std::vector<std::shared_ptr<MIL::IRBlock>> const&,int)>,std::vector<std::shared_ptr<MIL::IRValue const>> ()(std::shared_ptr<MIL::MILContext> const&,std::shared_ptr<MIL::Location const>,std::unordered_map<std::string,std::vector<std::shared_ptr<MIL::IRValue const>>> const&,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>> const&,std::vector<std::shared_ptr<MIL::IRBlock>> const&,int)>::operator()(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int *a7)
{
  v7 = *(a1 + 8);
  v8 = *a3;
  *a3 = 0;
  *(a3 + 1) = 0;
  v7(a2, &v8, a4, a5, a6, *a7);
  if (*(&v8 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v8 + 1));
  }
}

void sub_218153ECC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<std::vector<std::shared_ptr<MIL::IRValue const>> (*)(std::shared_ptr<MIL::MILContext> const&,std::shared_ptr<MIL::Location const>,std::unordered_map<std::string,std::vector<std::shared_ptr<MIL::IRValue const>>> const&,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>> const&,std::vector<std::shared_ptr<MIL::IRBlock>> const&,int),std::allocator<std::vector<std::shared_ptr<MIL::IRValue const>> (*)(std::shared_ptr<MIL::MILContext> const&,std::shared_ptr<MIL::Location const>,std::unordered_map<std::string,std::vector<std::shared_ptr<MIL::IRValue const>>> const&,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>> const&,std::vector<std::shared_ptr<MIL::IRBlock>> const&,int)>,std::vector<std::shared_ptr<MIL::IRValue const>> ()(std::shared_ptr<MIL::MILContext> const&,std::shared_ptr<MIL::Location const>,std::unordered_map<std::string,std::vector<std::shared_ptr<MIL::IRValue const>>> const&,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>> const&,std::vector<std::shared_ptr<MIL::IRBlock>> const&,int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void MIL::Operators::Common::ios15::CustomValidators::ValidateCast(MIL::Operators::Common::ios15::CustomValidators *this@<X0>, MIL::ValidationResult *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, "dtype");
  ParameterValue = MIL::IROperation::GetParameterValue(this);
  v6 = MIL::IRValue::AsTensor(ParameterValue);
  MIL::IRValue::GetScalar<std::string>(v6, &v19);
  if (v18 < 0)
  {
    operator delete(__p);
  }

  v7 = MIL::StringToIRDataType(&v19.__r_.__value_.__l.__data_, 0);
  v8 = (*(*this + 176))(this);
  if (*(v8 + 8) == *v8)
  {
    std::vector<MIL::IRDimension const*>::__throw_out_of_range[abi:ne200100]();
  }

  Type = MIL::IRNamedValueType::GetType(**v8);
  v10 = MIL::IRValueType::AsTensorType(Type);
  if (v7 == (*(*v10 + 88))(v10))
  {
    MIL::ValidationResult::ValidationResult(a2);
  }

  else
  {
    LocationPtr = MIL::IRObject::GetLocationPtr(this);
    v12 = LocationPtr[1];
    v15 = *LocationPtr;
    v16 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v13, "Specified dtype of cast does not match that of output tensor.");
    MIL::ValidationResult::ValidationResult(a2, &v15, 313, v13);
    if (v14 < 0)
    {
      operator delete(v13[0]);
    }

    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }
  }

  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }
}

void sub_2181540A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  if (*(v23 - 33) < 0)
  {
    operator delete(*(v23 - 56));
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceCast(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(__p, "dtype");
  v4 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, __p);
  if (v4)
  {
    Value = MIL::IRTypedArgument::TryGetValue(*v4[5]);
    v6 = (*(*Value + 40))(Value);
    MIL::IRValue::GetScalar<std::string>(v6, &v13);
    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p[0]);
    }

    MIL::StringToIRDataType(&v13.__r_.__value_.__l.__data_, 0);
    std::string::basic_string[abi:ne200100]<0>(v14, "x");
    v7 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, v14);
    if (v7)
    {
      ValueType = MIL::IRTypedArgument::TryGetValueType(*v7[5]);
      v9 = MIL::IRValueType::AsTensorType(ValueType);
      v10 = (*(*v9 + 96))(v9);
      __p[0] = 0;
      __p[1] = 0;
      v12 = 0;
      std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(__p, *v10, v10[1], (v10[1] - *v10) >> 3);
      if (v15 < 0)
      {
        operator delete(v14[0]);
      }

      MIL::IRTensorValueType::MakeWithShape();
    }

    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
}

void sub_2181542D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios15::CustomValueInference::ValueInferenceAcos(uint64_t a1, void *a2, void *a3)
{
  v15[7] = *MEMORY[0x277D85DE8];
  v5 = a2[1];
  v15[0] = *a2;
  v15[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(v13, "x");
  v6 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, v13);
  if (v6)
  {
    v7 = v6[5];
    v8 = v7[1];
    v14[0] = *v7;
    v14[1] = v8;
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    v10 = 0u;
    v11 = 0u;
    v12 = 1065353216;
    std::string::basic_string[abi:ne200100]<0>(&__p, "acos");
  }

  std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
}

void sub_2181544C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  v30 = *(v28 - 56);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  v31 = *(v28 - 72);
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&a16);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  _Unwind_Resume(a1);
}

void anonymous namespace::UnaryOpHelper(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  if ((*(**a3 + 40))())
  {
    v5 = *a3;
    v4 = a3[1];
    if (v4)
    {
      atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "x");
    __p[23] = v5;
    __p[24] = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
    }

    MIL::IRTypedArgument::Make();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::invalid_argument::invalid_argument[abi:ne200100](exception, "IRValue x is not an IRTensor object.");
  __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
}

void sub_2181567A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, char a56)
{
  __cxa_free_exception(v57);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&a23);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&a43);
  MIL::ValueInference::Tensor<MIL::Fp16>::~Tensor((v58 - 208));
  std::__function::__value_func<std::vector<MIL::IRValueType const*> ()(std::shared_ptr<MIL::MILContext> const&,std::shared_ptr<MIL::Location const>,std::unordered_map<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>> const&,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>> const&,std::vector<std::vector<MIL::IRValueType const*>> const&)>::~__value_func[abi:ne200100](v58 - 136);
  std::__hash_table<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>>>::~__hash_table(&a56);
  if (v56)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v56);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::CustomValueInference::ValueInferenceAcosh(uint64_t a1, void *a2, void *a3)
{
  v15[7] = *MEMORY[0x277D85DE8];
  v5 = a2[1];
  v15[0] = *a2;
  v15[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(v13, "x");
  v6 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, v13);
  if (v6)
  {
    v7 = v6[5];
    v8 = v7[1];
    v14[0] = *v7;
    v14[1] = v8;
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    v10 = 0u;
    v11 = 0u;
    v12 = 1065353216;
    std::string::basic_string[abi:ne200100]<0>(&__p, "acosh");
  }

  std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
}

void sub_218156CCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  v30 = *(v28 - 56);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  v31 = *(v28 - 72);
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&a16);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::CustomValueInference::ValueInferenceAsin(uint64_t a1, void *a2, void *a3)
{
  v15[7] = *MEMORY[0x277D85DE8];
  v5 = a2[1];
  v15[0] = *a2;
  v15[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(v13, "x");
  v6 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, v13);
  if (v6)
  {
    v7 = v6[5];
    v8 = v7[1];
    v14[0] = *v7;
    v14[1] = v8;
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    v10 = 0u;
    v11 = 0u;
    v12 = 1065353216;
    std::string::basic_string[abi:ne200100]<0>(&__p, "asin");
  }

  std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
}

void sub_218156ED8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  v30 = *(v28 - 56);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  v31 = *(v28 - 72);
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&a16);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::CustomValueInference::ValueInferenceCast(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&v16, "x");
  v4 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, &v16.__r_.__value_.__l.__data_);
  if (v4)
  {
    v5 = (*(**v4[5] + 40))(*v4[5]);
    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
    }

    if (v5)
    {
      std::string::basic_string[abi:ne200100]<0>(&v16, "x");
      v6 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, &v16.__r_.__value_.__l.__data_);
      if (v6)
      {
        v7 = v6[5];
        v9 = *v7;
        v8 = v7[1];
        if (v8)
        {
          atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
        }

        if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v16.__r_.__value_.__l.__data_);
        }

        std::string::basic_string[abi:ne200100]<0>(&v16, "dtype");
        v10 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, &v16.__r_.__value_.__l.__data_);
        if (v10)
        {
          v11 = *(v10[5] + 1);
          if (v11)
          {
            atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
          }

          if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v16.__r_.__value_.__l.__data_);
          }

          std::string::basic_string[abi:ne200100]<0>(&v15, "x");
          v13 = v9;
          v14 = v8;
          if (v8)
          {
            atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
          }

          MIL::IRTypedArgument::Make();
        }

        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "IRValue x is not an IRTensor object.");
    __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
  }

  std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
}

void sub_218157A2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51)
{
  __cxa_free_exception(v53);
  std::__hash_table<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>>>::~__hash_table(&a46);
  if (v52)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v52);
  }

  if (v51)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v51);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::CustomValueInference::ValueInferenceAsinh(uint64_t a1, void *a2, void *a3)
{
  v15[7] = *MEMORY[0x277D85DE8];
  v5 = a2[1];
  v15[0] = *a2;
  v15[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(v13, "x");
  v6 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, v13);
  if (v6)
  {
    v7 = v6[5];
    v8 = v7[1];
    v14[0] = *v7;
    v14[1] = v8;
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    v10 = 0u;
    v11 = 0u;
    v12 = 1065353216;
    std::string::basic_string[abi:ne200100]<0>(&__p, "asinh");
  }

  std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
}

void sub_218158064(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  v30 = *(v28 - 56);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  v31 = *(v28 - 72);
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&a16);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::CustomValueInference::ValueInferenceAtan(uint64_t a1, void *a2, void *a3)
{
  v15[7] = *MEMORY[0x277D85DE8];
  v5 = a2[1];
  v15[0] = *a2;
  v15[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(v13, "x");
  v6 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, v13);
  if (v6)
  {
    v7 = v6[5];
    v8 = v7[1];
    v14[0] = *v7;
    v14[1] = v8;
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    v10 = 0u;
    v11 = 0u;
    v12 = 1065353216;
    std::string::basic_string[abi:ne200100]<0>(&__p, "atan");
  }

  std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
}

void sub_218158270(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  v30 = *(v28 - 56);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  v31 = *(v28 - 72);
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&a16);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::CustomValueInference::ValueInferenceAtanh(uint64_t a1, void *a2, void *a3)
{
  v15[7] = *MEMORY[0x277D85DE8];
  v5 = a2[1];
  v15[0] = *a2;
  v15[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(v13, "x");
  v6 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, v13);
  if (v6)
  {
    v7 = v6[5];
    v8 = v7[1];
    v14[0] = *v7;
    v14[1] = v8;
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    v10 = 0u;
    v11 = 0u;
    v12 = 1065353216;
    std::string::basic_string[abi:ne200100]<0>(&__p, "atanh");
  }

  std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
}

void sub_21815847C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  v30 = *(v28 - 56);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  v31 = *(v28 - 72);
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&a16);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::CustomValueInference::ValueInferenceCeil(uint64_t a1, void *a2, void *a3)
{
  v15[7] = *MEMORY[0x277D85DE8];
  v5 = a2[1];
  v15[0] = *a2;
  v15[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(v13, "x");
  v6 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, v13);
  if (v6)
  {
    v7 = v6[5];
    v8 = v7[1];
    v14[0] = *v7;
    v14[1] = v8;
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    v10 = 0u;
    v11 = 0u;
    v12 = 1065353216;
    std::string::basic_string[abi:ne200100]<0>(&__p, "ceil");
  }

  std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
}

void sub_218158688(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  v30 = *(v28 - 56);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  v31 = *(v28 - 72);
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&a16);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::CustomValueInference::ValueInferenceCos(uint64_t a1, void *a2, void *a3)
{
  v15[7] = *MEMORY[0x277D85DE8];
  v5 = a2[1];
  v15[0] = *a2;
  v15[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(v13, "x");
  v6 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, v13);
  if (v6)
  {
    v7 = v6[5];
    v8 = v7[1];
    v14[0] = *v7;
    v14[1] = v8;
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    v10 = 0u;
    v11 = 0u;
    v12 = 1065353216;
    std::string::basic_string[abi:ne200100]<0>(&__p, "cos");
  }

  std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
}

void sub_218158894(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  v30 = *(v28 - 56);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  v31 = *(v28 - 72);
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&a16);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::CustomValueInference::ValueInferenceCosh(uint64_t a1, void *a2, void *a3)
{
  v15[7] = *MEMORY[0x277D85DE8];
  v5 = a2[1];
  v15[0] = *a2;
  v15[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(v13, "x");
  v6 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, v13);
  if (v6)
  {
    v7 = v6[5];
    v8 = v7[1];
    v14[0] = *v7;
    v14[1] = v8;
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    v10 = 0u;
    v11 = 0u;
    v12 = 1065353216;
    std::string::basic_string[abi:ne200100]<0>(&__p, "cosh");
  }

  std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
}

void sub_218158AA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  v30 = *(v28 - 56);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  v31 = *(v28 - 72);
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&a16);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::CustomValueInference::ValueInferenceExp(uint64_t a1, void *a2, void *a3)
{
  v15[7] = *MEMORY[0x277D85DE8];
  v5 = a2[1];
  v15[0] = *a2;
  v15[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(v13, "x");
  v6 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, v13);
  if (v6)
  {
    v7 = v6[5];
    v8 = v7[1];
    v14[0] = *v7;
    v14[1] = v8;
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    v10 = 0u;
    v11 = 0u;
    v12 = 1065353216;
    std::string::basic_string[abi:ne200100]<0>(&__p, "exp");
  }

  std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
}

void sub_218158CAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  v30 = *(v28 - 56);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  v31 = *(v28 - 72);
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&a16);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::CustomValueInference::ValueInferenceFloor(uint64_t a1, void *a2, void *a3)
{
  v15[7] = *MEMORY[0x277D85DE8];
  v5 = a2[1];
  v15[0] = *a2;
  v15[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(v13, "x");
  v6 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, v13);
  if (v6)
  {
    v7 = v6[5];
    v8 = v7[1];
    v14[0] = *v7;
    v14[1] = v8;
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    v10 = 0u;
    v11 = 0u;
    v12 = 1065353216;
    std::string::basic_string[abi:ne200100]<0>(&__p, "floor");
  }

  std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
}

void sub_218158EB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  v30 = *(v28 - 56);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  v31 = *(v28 - 72);
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&a16);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::CustomValueInference::ValueInferenceRound(uint64_t a1, void *a2, void *a3)
{
  v15[7] = *MEMORY[0x277D85DE8];
  v5 = a2[1];
  v15[0] = *a2;
  v15[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(v13, "x");
  v6 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, v13);
  if (v6)
  {
    v7 = v6[5];
    v8 = v7[1];
    v14[0] = *v7;
    v14[1] = v8;
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    v10 = 0u;
    v11 = 0u;
    v12 = 1065353216;
    std::string::basic_string[abi:ne200100]<0>(&__p, "round");
  }

  std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
}

void sub_2181590C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  v30 = *(v28 - 56);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  v31 = *(v28 - 72);
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&a16);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::CustomValueInference::ValueInferenceSin(uint64_t a1, void *a2, void *a3)
{
  v15[7] = *MEMORY[0x277D85DE8];
  v5 = a2[1];
  v15[0] = *a2;
  v15[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(v13, "x");
  v6 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, v13);
  if (v6)
  {
    v7 = v6[5];
    v8 = v7[1];
    v14[0] = *v7;
    v14[1] = v8;
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    v10 = 0u;
    v11 = 0u;
    v12 = 1065353216;
    std::string::basic_string[abi:ne200100]<0>(&__p, "sin");
  }

  std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
}

void sub_2181592D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  v30 = *(v28 - 56);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  v31 = *(v28 - 72);
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&a16);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::CustomValueInference::ValueInferenceSinh(uint64_t a1, void *a2, void *a3)
{
  v15[7] = *MEMORY[0x277D85DE8];
  v5 = a2[1];
  v15[0] = *a2;
  v15[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(v13, "x");
  v6 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, v13);
  if (v6)
  {
    v7 = v6[5];
    v8 = v7[1];
    v14[0] = *v7;
    v14[1] = v8;
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    v10 = 0u;
    v11 = 0u;
    v12 = 1065353216;
    std::string::basic_string[abi:ne200100]<0>(&__p, "sinh");
  }

  std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
}

void sub_2181594DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  v30 = *(v28 - 56);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  v31 = *(v28 - 72);
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&a16);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::CustomValueInference::ValueInferenceSqrt(uint64_t a1, void *a2, void *a3)
{
  v15[7] = *MEMORY[0x277D85DE8];
  v5 = a2[1];
  v15[0] = *a2;
  v15[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(v13, "x");
  v6 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, v13);
  if (v6)
  {
    v7 = v6[5];
    v8 = v7[1];
    v14[0] = *v7;
    v14[1] = v8;
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    v10 = 0u;
    v11 = 0u;
    v12 = 1065353216;
    std::string::basic_string[abi:ne200100]<0>(&__p, "sqrt");
  }

  std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
}

void sub_2181596E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  v30 = *(v28 - 56);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  v31 = *(v28 - 72);
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&a16);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::CustomValueInference::ValueInferenceTan(uint64_t a1, void *a2, void *a3)
{
  v15[7] = *MEMORY[0x277D85DE8];
  v5 = a2[1];
  v15[0] = *a2;
  v15[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(v13, "x");
  v6 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, v13);
  if (v6)
  {
    v7 = v6[5];
    v8 = v7[1];
    v14[0] = *v7;
    v14[1] = v8;
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    v10 = 0u;
    v11 = 0u;
    v12 = 1065353216;
    std::string::basic_string[abi:ne200100]<0>(&__p, "tan");
  }

  std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
}