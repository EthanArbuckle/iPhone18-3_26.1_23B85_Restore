void sub_218445A18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, std::__shared_weak_count *a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54, uint64_t a55, uint64_t a56)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  if (a32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a32);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios18::CustomValueTypeInference::ValueTypeInferenceScaledDotProductAttention(MIL::IRUnknownDimension **a1, uint64_t *a2, void *a3)
{
  v42[1] = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(__p, "query");
  SingleValueType = MIL::ValueTypeInferenceUtils::GetSingleValueType(a3, __p);
  v7 = MIL::IRValueType::AsTensorType(SingleValueType);
  if (v38 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "key");
  v8 = MIL::ValueTypeInferenceUtils::GetSingleValueType(a3, __p);
  v9 = MIL::IRValueType::AsTensorType(v8);
  if (v38 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "value");
  v10 = MIL::ValueTypeInferenceUtils::GetSingleValueType(a3, __p);
  v11 = MIL::IRValueType::AsTensorType(v10);
  if (v38 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "attn_mask");
  if (std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, __p))
  {
    std::string::basic_string[abi:ne200100]<0>(v40, "attn_mask");
    v12 = MIL::ValueTypeInferenceUtils::GetSingleValueType(a3, v40);
    v13 = MIL::IRValueType::AsTensorType(v12);
    if (SHIBYTE(v41) < 0)
    {
      operator delete(v40[0]);
    }
  }

  else
  {
    v13 = 0;
  }

  if (v38 < 0)
  {
    operator delete(__p[0]);
  }

  v14 = *a2;
  v15 = a2[1];
  v36[0] = v14;
  v36[1] = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  if (!MIL::ValidationResult::IsGood(__p))
  {
    exception = __cxa_allocate_exception(0x48uLL);
    MIL::MILResult::MILResult(v34, __p);
    v34[0].__r_.__value_.__r.__words[0] = &unk_2829E9B70;
    v35 = v39;
    MIL::ValidationError::ValidationError(exception, v34);
  }

  v40[0] = 0;
  v40[1] = 0;
  v41 = 0;
  v16 = (*(*v7 + 96))(v7);
  v17 = (*(*v9 + 96))(v9);
  v18 = (*(*v11 + 96))(v11);
  v19 = v16[1] - *v16;
  if (!v19)
  {
LABEL_35:
    (*(*v7 + 88))(v7);
    MIL::IRTensorValueType::MakeWithShape();
  }

  v20 = v18;
  v21 = 0;
  v22 = v19 >> 3;
  v23 = v22 - 2;
  v24 = v22 - 1;
  if (v22 <= 1)
  {
    v25 = 1;
  }

  else
  {
    v25 = v22;
  }

  while (1)
  {
    if (v23 == v21)
    {
      v26 = (*(**(*v16 + 8 * v23) + 16))(*(*v16 + 8 * v23));
      v27 = v16;
      v28 = v23;
      if (v26)
      {
        goto LABEL_31;
      }
    }

    else if (v24 == v21)
    {
      v29 = (*(**(*v20 + 8 * v24) + 16))(*(*v20 + 8 * v24));
      v27 = v20;
      v28 = v24;
      if (v29)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v30 = (*(**(*v16 + 8 * v21) + 16))(*(*v16 + 8 * v21));
      v27 = v16;
      v28 = v21;
      if (v30 || (v31 = (*(**(*v17 + 8 * v21) + 16))(*(*v17 + 8 * v21)), v27 = v17, v28 = v21, v31) || (v32 = (*(**(*v20 + 8 * v21) + 16))(*(*v20 + 8 * v21)), v27 = v20, v28 = v21, v32))
      {
LABEL_31:
        std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](v40, (*v27 + 8 * v28));
        goto LABEL_32;
      }
    }

    v42[0] = MIL::IRUnknownDimension::Make(*a1, 0);
    std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](v40, v42);
LABEL_32:
    if (v25 == ++v21)
    {
      goto LABEL_35;
    }
  }
}

void sub_2184460D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  MIL::ValidationResult::~ValidationResult(&a9);
  MIL::ValidationResult::~ValidationResult(&a18);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::ScaledDotProductAttention::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_218448468(_Unwind_Exception *a1)
{
  v4 = *(v2 - 112);
  *(v2 - 112) = 0;
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x578], 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x4D8], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios19::CustomValueTypeInference::ValueTypeInferenceConstexprBlockwiseShiftScale(uint64_t a1, void *a2, void *a3)
{
  v3 = a2[1];
  v4[0] = *a2;
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios18::CustomValueTypeInference::ValueTypeInferenceConstexprBlockwiseShiftScale(a1, v4, a3);
}

void sub_218449008(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios19::CustomValueTypeInference::ValueTypeInferenceConstexprLutToDense(MIL::IRConstantDimension **a1, void *a2, void *a3)
{
  v3 = a2[1];
  v4[0] = *a2;
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios18::CustomValueTypeInference::ValueTypeInferenceConstexprLutToDense(a1, v4, a3);
}

void sub_218449070(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios19::CustomValueTypeInference::ValueTypeInferenceConstexprSparseToDense(uint64_t a1, void *a2, void *a3)
{
  v3 = a2[1];
  v4[0] = *a2;
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios18::CustomValueTypeInference::ValueTypeInferenceConstexprSparseToDense(a1, v4, a3);
}

void sub_2184490D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios19::CustomValueTypeInference::ValueTypeInferenceConstexprCast(uint64_t a1, void *a2, void *a3)
{
  v3 = a2[1];
  v4[0] = *a2;
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios18::CustomValueTypeInference::ValueTypeInferenceConstexprCast(a1, v4, a3);
}

void sub_218449140(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios19::ConstexprBlockwiseShiftScale::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_21844A8E8(_Unwind_Exception *a1)
{
  v4 = *(v2 - 128);
  *(v2 - 128) = 0;
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 184), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x278], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios19::ConstexprCast::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_21844BB3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51)
{
  if (a43)
  {
    (*(*a43 + 8))(a43);
  }

  v53 = *v51;
  *v51 = 0;
  if (v53)
  {
    (*(*v53 + 8))(v53);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a46, 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a51, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios19::ConstexprLutToDense::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_21844D760(_Unwind_Exception *a1)
{
  v4 = *(v2 - 216);
  *(v2 - 216) = 0;
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x398], 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x288], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios19::ConstexprSparseToDense::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_21844F19C(_Unwind_Exception *a1)
{
  v4 = *(v2 - 128);
  *(v2 - 128) = 0;
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 136), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x230], 0);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<MIL::Operators::Common::ios19::ConstexprBlockwiseShiftScale::Make(MIL::MILContext &,std::string)::$_0,std::allocator<MIL::Operators::Common::ios19::ConstexprBlockwiseShiftScale::Make(MIL::MILContext &,std::string)::$_0>,std::shared_ptr<MIL::IRValue const> ()(MIL::IROperation const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829EC6F8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<MIL::Operators::Common::ios19::ConstexprBlockwiseShiftScale::Make(MIL::MILContext &,std::string)::$_0,std::allocator<MIL::Operators::Common::ios19::ConstexprBlockwiseShiftScale::Make(MIL::MILContext &,std::string)::$_0>,std::shared_ptr<MIL::IRValue const> ()(MIL::IROperation const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Operators::Common::ios19::ConstexprCast::Make(MIL::MILContext &,std::string)::$_0,std::allocator<MIL::Operators::Common::ios19::ConstexprCast::Make(MIL::MILContext &,std::string)::$_0>,std::shared_ptr<MIL::IRValue const> ()(MIL::IROperation const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829EC778;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<MIL::Operators::Common::ios19::ConstexprCast::Make(MIL::MILContext &,std::string)::$_0,std::allocator<MIL::Operators::Common::ios19::ConstexprCast::Make(MIL::MILContext &,std::string)::$_0>,std::shared_ptr<MIL::IRValue const> ()(MIL::IROperation const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Operators::Common::ios19::ConstexprLutToDense::Make(MIL::MILContext &,std::string)::$_0,std::allocator<MIL::Operators::Common::ios19::ConstexprLutToDense::Make(MIL::MILContext &,std::string)::$_0>,std::shared_ptr<MIL::IRValue const> ()(MIL::IROperation const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829EC7F8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<MIL::Operators::Common::ios19::ConstexprLutToDense::Make(MIL::MILContext &,std::string)::$_0,std::allocator<MIL::Operators::Common::ios19::ConstexprLutToDense::Make(MIL::MILContext &,std::string)::$_0>,std::shared_ptr<MIL::IRValue const> ()(MIL::IROperation const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Operators::Common::ios19::ConstexprSparseToDense::Make(MIL::MILContext &,std::string)::$_0,std::allocator<MIL::Operators::Common::ios19::ConstexprSparseToDense::Make(MIL::MILContext &,std::string)::$_0>,std::shared_ptr<MIL::IRValue const> ()(MIL::IROperation const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829EC878;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<MIL::Operators::Common::ios19::ConstexprSparseToDense::Make(MIL::MILContext &,std::string)::$_0,std::allocator<MIL::Operators::Common::ios19::ConstexprSparseToDense::Make(MIL::MILContext &,std::string)::$_0>,std::shared_ptr<MIL::IRValue const> ()(MIL::IROperation const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void MIL::Operators::Common::ios19::CustomValueTypeInference::ValueTypeInferenceElementwiseBinaryBoolOutput(MIL::IRUnknownDimension **a1, void *a2, void *a3)
{
  v3 = a2[1];
  v4[0] = *a2;
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios17::CustomValueTypeInference::ValueTypeInferenceElementwiseBinaryBoolOutput(a1, v4, a3);
}

void sub_21844FBB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios19::ElementwiseBinary::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_218450D68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, uint64_t a61, void *a62, uint64_t a63)
{
  v73 = a65;
  a65 = 0;
  if (v73)
  {
    (*(*v73 + 8))(v73);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a62, 0);
  v74 = *v70;
  *v70 = 0;
  if (v74)
  {
    (*(*v74 + 8))(v74);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v71 - 80), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a70, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios19::Add::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2184525B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, uint64_t a61, void *a62, uint64_t a63)
{
  v73 = a65;
  a65 = 0;
  if (v73)
  {
    (*(*v73 + 8))(v73);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a62, 0);
  v74 = *v70;
  *v70 = 0;
  if (v74)
  {
    (*(*v74 + 8))(v74);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v71 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a70, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios19::ElementwiseBinaryBoolOutput::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_218453AD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, void *a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60)
{
  v63 = *(v61 - 120);
  *(v61 - 120) = 0;
  if (v63)
  {
    (*(*v63 + 8))(v63);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a51, 0);
  v64 = *v60;
  *v60 = 0;
  if (v64)
  {
    (*(*v64 + 8))(v64);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a54, 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a60, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios19::ElementwiseBinaryLogical::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_218454C14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53)
{
  v56 = *(v54 - 96);
  *(v54 - 96) = 0;
  if (v56)
  {
    (*(*v56 + 8))(v56);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v54 - 88), 0);
  v57 = *v53;
  *v53 = 0;
  if (v57)
  {
    (*(*v57 + 8))(v57);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v54 - 80), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a53, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios19::LogicalAnd::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_218455D40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53)
{
  v56 = *(v54 - 80);
  *(v54 - 80) = 0;
  if (v56)
  {
    (*(*v56 + 8))(v56);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v54 - 72), 0);
  v57 = *v53;
  *v53 = 0;
  if (v57)
  {
    (*(*v57 + 8))(v57);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v54 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a53, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios19::LogicalOr::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_218456E7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53)
{
  v56 = *(v54 - 80);
  *(v54 - 80) = 0;
  if (v56)
  {
    (*(*v56 + 8))(v56);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v54 - 72), 0);
  v57 = *v53;
  *v53 = 0;
  if (v57)
  {
    (*(*v57 + 8))(v57);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v54 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a53, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios19::LogicalXor::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_218457FB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53)
{
  v56 = *(v54 - 80);
  *(v54 - 80) = 0;
  if (v56)
  {
    (*(*v56 + 8))(v56);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v54 - 72), 0);
  v57 = *v53;
  *v53 = 0;
  if (v57)
  {
    (*(*v57 + 8))(v57);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v54 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a53, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios19::Equal::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_21845938C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, void *a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60)
{
  v63 = *(v61 - 104);
  *(v61 - 104) = 0;
  if (v63)
  {
    (*(*v63 + 8))(v63);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a51, 0);
  v64 = *v60;
  *v60 = 0;
  if (v64)
  {
    (*(*v64 + 8))(v64);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a54, 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a60, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios19::Greater::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_21845A7F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, void *a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60)
{
  v63 = *(v61 - 104);
  *(v61 - 104) = 0;
  if (v63)
  {
    (*(*v63 + 8))(v63);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a51, 0);
  v64 = *v60;
  *v60 = 0;
  if (v64)
  {
    (*(*v64 + 8))(v64);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a54, 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a60, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios19::GreaterEqual::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_21845BC54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, void *a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60)
{
  v63 = *(v61 - 104);
  *(v61 - 104) = 0;
  if (v63)
  {
    (*(*v63 + 8))(v63);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a51, 0);
  v64 = *v60;
  *v60 = 0;
  if (v64)
  {
    (*(*v64 + 8))(v64);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a54, 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a60, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios19::Less::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_21845D0B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, void *a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60)
{
  v63 = *(v61 - 104);
  *(v61 - 104) = 0;
  if (v63)
  {
    (*(*v63 + 8))(v63);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a51, 0);
  v64 = *v60;
  *v60 = 0;
  if (v64)
  {
    (*(*v64 + 8))(v64);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a54, 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a60, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios19::LessEqual::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_21845E51C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, void *a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60)
{
  v63 = *(v61 - 104);
  *(v61 - 104) = 0;
  if (v63)
  {
    (*(*v63 + 8))(v63);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a51, 0);
  v64 = *v60;
  *v60 = 0;
  if (v64)
  {
    (*(*v64 + 8))(v64);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a54, 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a60, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios19::NotEqual::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_21845F980(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, void *a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60)
{
  v63 = *(v61 - 104);
  *(v61 - 104) = 0;
  if (v63)
  {
    (*(*v63 + 8))(v63);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a51, 0);
  v64 = *v60;
  *v60 = 0;
  if (v64)
  {
    (*(*v64 + 8))(v64);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a54, 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a60, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios19::FloorDiv::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_21846109C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, uint64_t a61, void *a62, uint64_t a63)
{
  v73 = a65;
  a65 = 0;
  if (v73)
  {
    (*(*v73 + 8))(v73);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a62, 0);
  v74 = *v70;
  *v70 = 0;
  if (v74)
  {
    (*(*v74 + 8))(v74);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v71 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a70, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios19::Maximum::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2184628F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, uint64_t a61, void *a62, uint64_t a63)
{
  v73 = a65;
  a65 = 0;
  if (v73)
  {
    (*(*v73 + 8))(v73);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a62, 0);
  v74 = *v70;
  *v70 = 0;
  if (v74)
  {
    (*(*v74 + 8))(v74);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v71 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a70, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios19::Minimum::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_218464154(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, uint64_t a61, void *a62, uint64_t a63)
{
  v73 = a65;
  a65 = 0;
  if (v73)
  {
    (*(*v73 + 8))(v73);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a62, 0);
  v74 = *v70;
  *v70 = 0;
  if (v74)
  {
    (*(*v74 + 8))(v74);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v71 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a70, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios19::Mod::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2184659B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, uint64_t a61, void *a62, uint64_t a63)
{
  v73 = a65;
  a65 = 0;
  if (v73)
  {
    (*(*v73 + 8))(v73);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a62, 0);
  v74 = *v70;
  *v70 = 0;
  if (v74)
  {
    (*(*v74 + 8))(v74);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v71 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a70, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios19::Mul::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_21846720C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, uint64_t a61, void *a62, uint64_t a63)
{
  v73 = a65;
  a65 = 0;
  if (v73)
  {
    (*(*v73 + 8))(v73);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a62, 0);
  v74 = *v70;
  *v70 = 0;
  if (v74)
  {
    (*(*v74 + 8))(v74);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v71 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a70, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios19::Pow::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_218468A68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, uint64_t a61, void *a62, uint64_t a63)
{
  v73 = a65;
  a65 = 0;
  if (v73)
  {
    (*(*v73 + 8))(v73);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a62, 0);
  v74 = *v70;
  *v70 = 0;
  if (v74)
  {
    (*(*v74 + 8))(v74);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v71 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a70, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios19::RealDiv::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_21846A2C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, uint64_t a61, void *a62, uint64_t a63)
{
  v73 = a65;
  a65 = 0;
  if (v73)
  {
    (*(*v73 + 8))(v73);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a62, 0);
  v74 = *v70;
  *v70 = 0;
  if (v74)
  {
    (*(*v74 + 8))(v74);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v71 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a70, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios19::Sub::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_21846BB20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, uint64_t a61, void *a62, uint64_t a63)
{
  v73 = a65;
  a65 = 0;
  if (v73)
  {
    (*(*v73 + 8))(v73);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a62, 0);
  v74 = *v70;
  *v70 = 0;
  if (v74)
  {
    (*(*v74 + 8))(v74);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v71 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a70, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios19::Select::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_21846D2A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v69 = *(v67 - 136);
  *(v67 - 136) = 0;
  if (v69)
  {
    (*(*v69 + 8))(v69);
  }

  v70 = *v66;
  *v66 = 0;
  if (v70)
  {
    (*(*v70 + 8))(v70);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v67 - 144), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a66, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios19::CustomValidators::ValidateQuantize(MIL::Operators::Common::ios19::CustomValidators *this@<X0>, uint64_t a2@<X8>)
{
  OutputType = MIL::IROperation::GetOutputType(this, 0);
  v6 = MIL::IRValueType::AsTensorType(OutputType);
  v7 = (*(*v6 + 88))(v6);
  std::string::basic_string[abi:ne200100]<0>(__p, "zero_point");
  IsParameterSet = MIL::IROperation::IsParameterSet(this, __p);
  LocationPtr = MIL::IRObject::GetLocationPtr(this);
  v10 = LocationPtr[1];
  v12[0] = *LocationPtr;
  v12[1] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  if (MIL::ValidationResult::IsGood(v15))
  {
    MIL::Operators::Common::ios17::CustomValidators::ValidateQuantize(this, a2);
  }

  else
  {
    v11 = v17;
    *(a2 + 8) = v16;
    v16 = 0uLL;
    *(a2 + 24) = v11;
    *(a2 + 40) = v18;
    v17 = 0uLL;
    v18 = 0;
    *a2 = &unk_2829E9B70;
    *(a2 + 48) = v19;
  }

  MIL::ValidationResult::~ValidationResult(v15);
}

void sub_21846D964(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void anonymous namespace::ValidateZeroPointForFP8(int a1@<W0>, int a2@<W1>, uint64_t *a3@<X2>, MIL::ValidationResult *a4@<X8>)
{
  if ((a1 & 0xFFFFFFFE) != 0x18 || a2 == 0)
  {

    MIL::ValidationResult::ValidationResult(a4);
  }

  else
  {
    v6 = a3[1];
    v9 = *a3;
    v10 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "Zero_point cannot be set when quantizing to an FP8 datattype.");
    MIL::ValidationResult::ValidationResult(a4, &v9, 315, __p);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }

    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }
  }
}

void sub_21846DA58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
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

void MIL::Operators::Common::ios19::CustomValidators::ValidateDequantize(MIL::Operators::Common::ios19::CustomValidators *this@<X0>, uint64_t a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, "input");
  ParameterType = MIL::IROperation::GetParameterType(this);
  v6 = MIL::IRValueType::AsTensorType(ParameterType);
  v7 = (*(*v6 + 88))(v6);
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(v13, "zero_point");
  IsParameterSet = MIL::IROperation::IsParameterSet(this, v13);
  LocationPtr = MIL::IRObject::GetLocationPtr(this);
  v10 = LocationPtr[1];
  v12[0] = *LocationPtr;
  v12[1] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  if (v14 < 0)
  {
    operator delete(v13[0]);
  }

  if (MIL::ValidationResult::IsGood(&__p))
  {
    MIL::Operators::Common::ios17::CustomValidators::ValidateDequantize(this, a2);
  }

  else
  {
    v11 = v17;
    *(a2 + 8) = v16;
    v16 = 0uLL;
    *(a2 + 24) = v11;
    *(a2 + 40) = v18;
    v17 = 0uLL;
    v18 = 0;
    *a2 = &unk_2829E9B70;
    *(a2 + 48) = v19;
  }

  MIL::ValidationResult::~ValidationResult(&__p);
}

void sub_21846DBF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios19::CustomValidators::ValidateDynamicQuantize(MIL::Operators::Common::ios19::CustomValidators *this@<X0>, uint64_t a2@<X8>)
{
  OutputType = MIL::IROperation::GetOutputType(this, 0);
  v6 = MIL::IRValueType::AsTensorType(OutputType);
  v7 = (*(*v6 + 88))(v6);
  std::string::basic_string[abi:ne200100]<0>(&__p, "has_zero_point");
  ParameterValue = MIL::IROperation::GetParameterValue(this);
  v9 = MIL::IRValue::AsTensor(ParameterValue);
  v10 = MIL::IRValue::GetScalar<BOOL>(v9);
  LocationPtr = MIL::IRObject::GetLocationPtr(this);
  v12 = LocationPtr[1];
  v14[0] = *LocationPtr;
  v14[1] = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  if (v16 < 0)
  {
    operator delete(__p);
  }

  if (MIL::ValidationResult::IsGood(v17))
  {
    MIL::Operators::Common::ios17::CustomValidators::ValidateDynamicQuantize(this, a2);
  }

  else
  {
    v13 = v19;
    *(a2 + 8) = v18;
    v18 = 0uLL;
    *(a2 + 24) = v13;
    *(a2 + 40) = v20;
    v19 = 0uLL;
    v20 = 0;
    *a2 = &unk_2829E9B70;
    *(a2 + 48) = v21;
  }

  MIL::ValidationResult::~ValidationResult(v17);
}

void sub_21846DDA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios19::CustomValidators::ValidateDynamicDequantize(MIL::Operators::Common::ios19::CustomValidators *this@<X0>, uint64_t a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, "input");
  ParameterType = MIL::IROperation::GetParameterType(this);
  v6 = MIL::IRValueType::AsTensorType(ParameterType);
  v7 = (*(*v6 + 88))(v6);
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(v13, "zero_point");
  IsParameterSet = MIL::IROperation::IsParameterSet(this, v13);
  LocationPtr = MIL::IRObject::GetLocationPtr(this);
  v10 = LocationPtr[1];
  v12[0] = *LocationPtr;
  v12[1] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  if (v14 < 0)
  {
    operator delete(v13[0]);
  }

  if (MIL::ValidationResult::IsGood(&__p))
  {
    MIL::Operators::Common::ios17::CustomValidators::ValidateDynamicDequantize(this, a2);
  }

  else
  {
    v11 = v17;
    *(a2 + 8) = v16;
    v16 = 0uLL;
    *(a2 + 24) = v11;
    *(a2 + 40) = v18;
    v17 = 0uLL;
    v18 = 0;
    *a2 = &unk_2829E9B70;
    *(a2 + 48) = v19;
  }

  MIL::ValidationResult::~ValidationResult(&__p);
}

void sub_21846DF50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios19::CustomValueTypeInference::ValueTypeInferenceDequantize(uint64_t a1, uint64_t *a2, void *a3)
{
  v3 = a2[1];
  v4[0] = *a2;
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios17::CustomValueTypeInference::ValueTypeInferenceDequantize(a1, v4, a3);
}

void sub_21846DFF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios19::CustomValueTypeInference::ValueTypeInferenceDynamicDequantize(uint64_t a1, uint64_t *a2, void *a3)
{
  v3 = a2[1];
  v4[0] = *a2;
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios17::CustomValueTypeInference::ValueTypeInferenceDynamicDequantize(a1, v4, a3);
}

void sub_21846E05C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios19::CustomValueTypeInference::ValueTypeInferenceDynamicQuantize(uint64_t a1, void *a2, void *a3)
{
  v3 = a2[1];
  v4[0] = *a2;
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios17::CustomValueTypeInference::ValueTypeInferenceDynamicQuantize(a1, v4, a3);
}

void sub_21846E0C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios19::CustomValueTypeInference::ValueTypeInferenceQuantize(uint64_t a1, uint64_t *a2, void *a3)
{
  v3 = a2[1];
  v4[0] = *a2;
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios17::CustomValueTypeInference::ValueTypeInferenceQuantize(a1, v4, a3);
}

void sub_21846E12C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios19::Dequantize::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_21846F650(_Unwind_Exception *a1)
{
  v4 = *(v2 - 104);
  *(v2 - 104) = 0;
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 184), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x268], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios19::DynamicDequantize::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2184710F4(_Unwind_Exception *a1)
{
  v4 = *(v2 - 96);
  *(v2 - 96) = 0;
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
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 256), 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios19::DynamicQuantize::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_218472364(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57)
{
  if (a48)
  {
    (*(*a48 + 8))(a48);
  }

  v59 = *v57;
  *v57 = 0;
  if (v59)
  {
    (*(*v59 + 8))(v59);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a51, 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a57, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios19::Quantize::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_218473F04(_Unwind_Exception *a1)
{
  v4 = STACK[0x290];
  STACK[0x290] = 0;
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
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x2B8], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios19::CustomValueTypeInference::ValueTypeInferenceExpandDims(MIL::IRUnknownDimension **a1, void *a2, void *a3)
{
  v3 = a2[1];
  v4[0] = *a2;
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceExpandDims(a1, v4, a3);
}

void sub_218474730(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios19::CustomValueTypeInference::ValueTypeInferenceSliceByIndex(MIL::IRUnknownDimension **a1, void *a2, void *a3)
{
  v3 = a2[1];
  v4[0] = *a2;
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceSliceByIndex(a1, v4, a3);
}

void sub_218474798(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios19::CustomValueTypeInference::ValueTypeInferenceSliceBySize(MIL::IRUnknownDimension **a1, void *a2, void *a3)
{
  v3 = a2[1];
  v4[0] = *a2;
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceSliceBySize(a1, v4, a3);
}

void sub_218474800(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios19::CustomValueTypeInference::ValueTypeInferenceSlidingWindows(MIL::IRUnknownDimension **a1, void *a2, void *a3)
{
  v3 = a2[1];
  v4[0] = *a2;
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceSlidingWindows(a1, v4, a3);
}

void sub_218474868(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios19::CustomValueTypeInference::ValueTypeInferenceSplit(MIL::IRUnknownDimension **a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v4 = a2[1];
  v5 = *a2;
  v6 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceSplit(a1, &v5, a3, a4);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void sub_2184748D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios19::CustomValueTypeInference::ValueTypeInferenceSqueeze(MIL::IRUnknownDimension **a1, void *a2, void *a3)
{
  v3 = a2[1];
  v4[0] = *a2;
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceSqueeze(a1, v4, a3);
}

void sub_218474938(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios19::CustomValueTypeInference::ValueTypeInferenceTranspose(MIL::IRUnknownDimension **a1, void *a2, void *a3)
{
  v3 = a2[1];
  v4[0] = *a2;
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceTranspose(a1, v4, a3);
}

void sub_2184749A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios19::CustomValueTypeInference::ValueTypeInferenceStack(MIL::IRConstantDimension **a1, void *a2, void *a3)
{
  v3 = a2[1];
  v4[0] = *a2;
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceStack(a1, v4, a3);
}

void sub_218474A08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios19::CustomValueTypeInference::ValueTypeInferenceReshapeLike(MIL::UnknownLocation *a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios16::CustomValueTypeInference::ValueTypeInferenceReshapeLike(a1);
}

void sub_218474A70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios19::CustomValueTypeInference::ValueTypeInferenceConcat(MIL::IRConstantDimension **a1, uint64_t *a2, void *a3)
{
  v3 = a2[1];
  v4 = *a2;
  v5 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios17::CustomValueTypeInference::ValueTypeInferenceConcat(a1, &v4, a3);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void sub_218474AD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios19::CustomValueTypeInference::ValueTypeInferenceReshape(MIL::IRConstantDimension **a1, uint64_t *a2, void *a3)
{
  v3 = a2[1];
  v4[0] = *a2;
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios17::CustomValueTypeInference::ValueTypeInferenceReshape(a1, v4, a3);
}

void sub_218474B40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios19::Concat::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2184758D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v67 = *(v65 - 120);
  *(v65 - 120) = 0;
  if (v67)
  {
    (*(*v67 + 8))(v67);
  }

  v68 = *v64;
  *v64 = 0;
  if (v68)
  {
    (*(*v68 + 8))(v68);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v65 - 152), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a64, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios19::ExpandDims::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_218476E40(_Unwind_Exception *a1)
{
  v4 = *(v2 - 144);
  *(v2 - 144) = 0;
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 152), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x220], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios19::Reshape::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_21847867C(_Unwind_Exception *a1)
{
  v4 = *(v2 - 144);
  *(v2 - 144) = 0;
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 152), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x248], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios19::ReshapeLike::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_21847A2E0(_Unwind_Exception *a1)
{
  v4 = *(v2 - 144);
  *(v2 - 144) = 0;
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 176), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x258], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios19::Reverse::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_21847BDE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, void **a58)
{
  v61 = *(v59 - 144);
  *(v59 - 144) = 0;
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a58, 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x288], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios19::ReverseSequence::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_21847DC10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v69 = *(v67 - 144);
  *(v67 - 144) = 0;
  if (v69)
  {
    (*(*v69 + 8))(v69);
  }

  v70 = *v66;
  *v66 = 0;
  if (v70)
  {
    (*(*v70 + 8))(v70);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a66, 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x2B8], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios19::SliceByIndex::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_218480890(_Unwind_Exception *a1)
{
  v4 = *(v2 - 152);
  *(v2 - 152) = 0;
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 208), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x440], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios19::SliceBySize::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_218482E4C(_Unwind_Exception *a1)
{
  v4 = *(v2 - 152);
  *(v2 - 152) = 0;
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 184), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x2F0], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios19::SliceUpdate::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_218486140(_Unwind_Exception *a1)
{
  v4 = *(v2 - 144);
  *(v2 - 144) = 0;
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x408], 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x520], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios19::SlidingWindows::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2184880F4(_Unwind_Exception *a1)
{
  v4 = *(v2 - 152);
  *(v2 - 152) = 0;
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 208), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x248], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios19::Split::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_218489058(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, __int16 a56, char a57, char a58, uint64_t a59, uint64_t a60, uint64_t a61, char a62)
{
  v65 = *(v63 - 128);
  *(v63 - 128) = 0;
  if (v65)
  {
    (*(*v65 + 8))(v65);
  }

  v66 = *v62;
  *v62 = 0;
  if (v66)
  {
    (*(*v66 + 8))(v66);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v63 - 104), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a55, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios19::Squeeze::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_21848A62C(_Unwind_Exception *a1)
{
  v4 = *(v2 - 152);
  *(v2 - 152) = 0;
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 208), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x250], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios19::Stack::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_21848B89C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  v61 = *(v59 - 112);
  *(v59 - 112) = 0;
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v59 - 144), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a58, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios19::Transpose::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_21848CF80(_Unwind_Exception *a1)
{
  v4 = *(v2 - 152);
  *(v2 - 152) = 0;
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 208), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x250], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Prototype::prototype::CustomValueTypeInference::ValueTypeInferenceConstexprBlockwiseShiftScale(uint64_t a1, void *a2, void *a3)
{
  v3 = a2[1];
  v4[0] = *a2;
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios18::CustomValueTypeInference::ValueTypeInferenceConstexprBlockwiseShiftScale(a1, v4, a3);
}

void sub_21848D628(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Prototype::prototype::CustomValueTypeInference::ValueTypeInferenceConstexprLutToDense(MIL::IRConstantDimension **a1, void *a2, void *a3)
{
  v3 = a2[1];
  v4[0] = *a2;
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios18::CustomValueTypeInference::ValueTypeInferenceConstexprLutToDense(a1, v4, a3);
}

void sub_21848D690(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Prototype::prototype::CustomValueTypeInference::ValueTypeInferenceConstexprSparseToDense(uint64_t a1, void *a2, void *a3)
{
  v3 = a2[1];
  v4[0] = *a2;
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios18::CustomValueTypeInference::ValueTypeInferenceConstexprSparseToDense(a1, v4, a3);
}

void sub_21848D6F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Prototype::prototype::CustomValueTypeInference::ValueTypeInferenceConstexprCast(uint64_t a1, void *a2, void *a3)
{
  v3 = a2[1];
  v4[0] = *a2;
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios18::CustomValueTypeInference::ValueTypeInferenceConstexprCast(a1, v4, a3);
}

void sub_21848D760(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Prototype::prototype::ConstexprBlockwiseShiftScale::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_21848EEF8(_Unwind_Exception *a1)
{
  v4 = *(v2 - 128);
  *(v2 - 128) = 0;
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 184), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x278], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Prototype::prototype::ConstexprCast::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2184900FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51)
{
  if (a43)
  {
    (*(*a43 + 8))(a43);
  }

  v53 = *v51;
  *v51 = 0;
  if (v53)
  {
    (*(*v53 + 8))(v53);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a46, 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a51, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Prototype::prototype::ConstexprLutToDense::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_218491D04(_Unwind_Exception *a1)
{
  v4 = *(v2 - 216);
  *(v2 - 216) = 0;
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x398], 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x288], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Prototype::prototype::ConstexprSparseToDense::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_218493698(_Unwind_Exception *a1)
{
  v4 = *(v2 - 120);
  *(v2 - 120) = 0;
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 128), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x220], 0);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<MIL::Operators::Prototype::prototype::ConstexprBlockwiseShiftScale::Make(MIL::MILContext &,std::string)::$_0,std::allocator<MIL::Operators::Prototype::prototype::ConstexprBlockwiseShiftScale::Make(MIL::MILContext &,std::string)::$_0>,std::shared_ptr<MIL::IRValue const> ()(MIL::IROperation const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829EC8F8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<MIL::Operators::Prototype::prototype::ConstexprBlockwiseShiftScale::Make(MIL::MILContext &,std::string)::$_0,std::allocator<MIL::Operators::Prototype::prototype::ConstexprBlockwiseShiftScale::Make(MIL::MILContext &,std::string)::$_0>,std::shared_ptr<MIL::IRValue const> ()(MIL::IROperation const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Operators::Prototype::prototype::ConstexprCast::Make(MIL::MILContext &,std::string)::$_0,std::allocator<MIL::Operators::Prototype::prototype::ConstexprCast::Make(MIL::MILContext &,std::string)::$_0>,std::shared_ptr<MIL::IRValue const> ()(MIL::IROperation const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829EC978;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<MIL::Operators::Prototype::prototype::ConstexprCast::Make(MIL::MILContext &,std::string)::$_0,std::allocator<MIL::Operators::Prototype::prototype::ConstexprCast::Make(MIL::MILContext &,std::string)::$_0>,std::shared_ptr<MIL::IRValue const> ()(MIL::IROperation const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Operators::Prototype::prototype::ConstexprLutToDense::Make(MIL::MILContext &,std::string)::$_0,std::allocator<MIL::Operators::Prototype::prototype::ConstexprLutToDense::Make(MIL::MILContext &,std::string)::$_0>,std::shared_ptr<MIL::IRValue const> ()(MIL::IROperation const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829EC9F8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<MIL::Operators::Prototype::prototype::ConstexprLutToDense::Make(MIL::MILContext &,std::string)::$_0,std::allocator<MIL::Operators::Prototype::prototype::ConstexprLutToDense::Make(MIL::MILContext &,std::string)::$_0>,std::shared_ptr<MIL::IRValue const> ()(MIL::IROperation const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Operators::Prototype::prototype::ConstexprSparseToDense::Make(MIL::MILContext &,std::string)::$_0,std::allocator<MIL::Operators::Prototype::prototype::ConstexprSparseToDense::Make(MIL::MILContext &,std::string)::$_0>,std::shared_ptr<MIL::IRValue const> ()(MIL::IROperation const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829ECA78;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<MIL::Operators::Prototype::prototype::ConstexprSparseToDense::Make(MIL::MILContext &,std::string)::$_0,std::allocator<MIL::Operators::Prototype::prototype::ConstexprSparseToDense::Make(MIL::MILContext &,std::string)::$_0>,std::shared_ptr<MIL::IRValue const> ()(MIL::IROperation const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void MIL::Operators::Prototype::prototype::CustomValueTypeInference::ValueTypeInferenceDequantize(uint64_t a1, uint64_t *a2, void *a3)
{
  v3 = a2[1];
  v4[0] = *a2;
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios17::CustomValueTypeInference::ValueTypeInferenceDequantize(a1, v4, a3);
}

void sub_218494088(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Prototype::prototype::CustomValueTypeInference::ValueTypeInferenceDynamicDequantize(uint64_t a1, uint64_t *a2, void *a3)
{
  v3 = a2[1];
  v4[0] = *a2;
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios17::CustomValueTypeInference::ValueTypeInferenceDynamicDequantize(a1, v4, a3);
}

void sub_2184940F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Prototype::prototype::CustomValueTypeInference::ValueTypeInferenceDynamicQuantize(uint64_t a1, void *a2, void *a3)
{
  v3 = a2[1];
  v4[0] = *a2;
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios17::CustomValueTypeInference::ValueTypeInferenceDynamicQuantize(a1, v4, a3);
}

void sub_218494158(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Prototype::prototype::CustomValueTypeInference::ValueTypeInferenceQuantize(uint64_t a1, uint64_t *a2, void *a3)
{
  v3 = a2[1];
  v4[0] = *a2;
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios17::CustomValueTypeInference::ValueTypeInferenceQuantize(a1, v4, a3);
}

void sub_2184941C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Prototype::prototype::Dequantize::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_218495564(_Unwind_Exception *a1)
{
  v4 = *(v2 - 96);
  *(v2 - 96) = 0;
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 216), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x218], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Prototype::prototype::DynamicDequantize::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_218496F00(_Unwind_Exception *a1)
{
  v4 = *(v2 - 96);
  *(v2 - 96) = 0;
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 216), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x218], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Prototype::prototype::DynamicQuantize::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_21849811C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52)
{
  if (a51)
  {
    (*(*a51 + 8))(a51);
  }

  v55 = *v52;
  *v52 = 0;
  if (v55)
  {
    (*(*v55 + 8))(v55);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v53 - 72), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a52, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Prototype::prototype::Quantize::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_218499BE8(_Unwind_Exception *a1)
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
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x288], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Prototype::prototype::CustomValueTypeInference::ValueTypeInferenceExpandDims(MIL::IRUnknownDimension **a1, void *a2, void *a3)
{
  v3 = a2[1];
  v4[0] = *a2;
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceExpandDims(a1, v4, a3);
}

void sub_21849A428(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Prototype::prototype::CustomValueTypeInference::ValueTypeInferenceSliceByIndex(MIL::IRUnknownDimension **a1, void *a2, void *a3)
{
  v3 = a2[1];
  v4[0] = *a2;
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceSliceByIndex(a1, v4, a3);
}

void sub_21849A490(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Prototype::prototype::CustomValueTypeInference::ValueTypeInferenceSliceBySize(MIL::IRUnknownDimension **a1, void *a2, void *a3)
{
  v3 = a2[1];
  v4[0] = *a2;
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceSliceBySize(a1, v4, a3);
}

void sub_21849A4F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Prototype::prototype::CustomValueTypeInference::ValueTypeInferenceSlidingWindows(MIL::IRUnknownDimension **a1, void *a2, void *a3)
{
  v3 = a2[1];
  v4[0] = *a2;
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceSlidingWindows(a1, v4, a3);
}

void sub_21849A560(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Prototype::prototype::CustomValueTypeInference::ValueTypeInferenceSplit(MIL::IRUnknownDimension **a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v4 = a2[1];
  v5 = *a2;
  v6 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceSplit(a1, &v5, a3, a4);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void sub_21849A5C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Prototype::prototype::CustomValueTypeInference::ValueTypeInferenceSqueeze(MIL::IRUnknownDimension **a1, void *a2, void *a3)
{
  v3 = a2[1];
  v4[0] = *a2;
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceSqueeze(a1, v4, a3);
}

void sub_21849A630(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Prototype::prototype::CustomValueTypeInference::ValueTypeInferenceTranspose(MIL::IRUnknownDimension **a1, void *a2, void *a3)
{
  v3 = a2[1];
  v4[0] = *a2;
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceTranspose(a1, v4, a3);
}

void sub_21849A698(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Prototype::prototype::CustomValueTypeInference::ValueTypeInferenceStack(MIL::IRConstantDimension **a1, void *a2, void *a3)
{
  v3 = a2[1];
  v4[0] = *a2;
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceStack(a1, v4, a3);
}

void sub_21849A700(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Prototype::prototype::CustomValueTypeInference::ValueTypeInferenceReshapeLike(MIL::UnknownLocation *a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios16::CustomValueTypeInference::ValueTypeInferenceReshapeLike(a1);
}

void sub_21849A768(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Prototype::prototype::CustomValueTypeInference::ValueTypeInferenceConcat(MIL::IRConstantDimension **a1, uint64_t *a2, void *a3)
{
  v3 = a2[1];
  v4 = *a2;
  v5 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios17::CustomValueTypeInference::ValueTypeInferenceConcat(a1, &v4, a3);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void sub_21849A7D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Prototype::prototype::CustomValueTypeInference::ValueTypeInferenceReshape(MIL::IRConstantDimension **a1, uint64_t *a2, void *a3)
{
  v3 = a2[1];
  v4[0] = *a2;
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios17::CustomValueTypeInference::ValueTypeInferenceReshape(a1, v4, a3);
}

void sub_21849A838(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Prototype::prototype::Concat::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_21849B474(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  v61 = *(v59 - 104);
  *(v59 - 104) = 0;
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v59 - 136), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a58, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Prototype::prototype::ExpandDims::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_21849C8CC(_Unwind_Exception *a1)
{
  v4 = *(v2 - 136);
  *(v2 - 136) = 0;
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 144), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x210], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Prototype::prototype::Reshape::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_21849E014(_Unwind_Exception *a1)
{
  v4 = *(v2 - 136);
  *(v2 - 136) = 0;
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 144), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x238], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Prototype::prototype::ReshapeLike::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_21849FB38(_Unwind_Exception *a1)
{
  v4 = *(v2 - 136);
  *(v2 - 136) = 0;
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 168), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x248], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Prototype::prototype::Reverse::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2184A1530(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, void **a58)
{
  v61 = *(v59 - 136);
  *(v59 - 136) = 0;
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a58, 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x270], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Prototype::prototype::ReverseSequence::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2184A3250(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v69 = *(v67 - 136);
  *(v67 - 136) = 0;
  if (v69)
  {
    (*(*v69 + 8))(v69);
  }

  v70 = *v66;
  *v66 = 0;
  if (v70)
  {
    (*(*v70 + 8))(v70);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a66, 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x2A0], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Prototype::prototype::SliceByIndex::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2184A5AC0(_Unwind_Exception *a1)
{
  v4 = *(v2 - 144);
  *(v2 - 144) = 0;
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 200), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x440], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Prototype::prototype::SliceBySize::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2184A7D10(_Unwind_Exception *a1)
{
  v4 = *(v2 - 144);
  *(v2 - 144) = 0;
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 176), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x2F0], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Prototype::prototype::SliceUpdate::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2184AAE64(_Unwind_Exception *a1)
{
  v4 = *(v2 - 136);
  *(v2 - 136) = 0;
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x408], 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x508], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Prototype::prototype::SlidingWindows::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2184ACD18(_Unwind_Exception *a1)
{
  v4 = *(v2 - 144);
  *(v2 - 144) = 0;
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 200), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x230], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Prototype::prototype::Split::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2184ADB98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, __int16 a50, char a51, char a52)
{
  v55 = *(v53 - 112);
  *(v53 - 112) = 0;
  if (v55)
  {
    (*(*v55 + 8))(v55);
  }

  v56 = *v52;
  *v52 = 0;
  if (v56)
  {
    (*(*v56 + 8))(v56);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v53 - 88), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a49, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Prototype::prototype::Squeeze::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2184AF074(_Unwind_Exception *a1)
{
  v4 = *(v2 - 144);
  *(v2 - 144) = 0;
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 200), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x238], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Prototype::prototype::Stack::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2184B00B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, void *a54, uint64_t a55, uint64_t a56, void *a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  v65 = *(v63 - 88);
  *(v63 - 88) = 0;
  if (v65)
  {
    (*(*v65 + 8))(v65);
  }

  v66 = *v62;
  *v62 = 0;
  if (v66)
  {
    (*(*v66 + 8))(v66);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v63 - 120), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a62, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Prototype::prototype::Transpose::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2184B162C(_Unwind_Exception *a1)
{
  v4 = *(v2 - 144);
  *(v2 - 144) = 0;
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 200), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x238], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Prototype::prototype::Foo::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2184B2180(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v32 - 96), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a26, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Train::ios16Train::CustomValidators::ValidateBaseConvGrad(MIL::Operators::Train::ios16Train::CustomValidators *this@<X0>, MIL::ValidationResult *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(&v73, "has_input_grad");
  ParameterValue = MIL::IROperation::GetParameterValue(this);
  v6 = MIL::IRValue::GetScalar<BOOL>(ParameterValue);
  if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v73.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v73, "has_weight_grad");
  v7 = MIL::IROperation::GetParameterValue(this);
  v8 = MIL::IRValue::GetScalar<BOOL>(v7);
  if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v73.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v73, "has_bias_grad");
  v9 = MIL::IROperation::GetParameterValue(this);
  v10 = MIL::IRValue::GetScalar<BOOL>(v9);
  if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v73.__r_.__value_.__l.__data_);
  }

  v11 = v8 + v6;
  v12 = (*(*this + 176))(this);
  v13 = *v12;
  v14 = *(v12 + 8);
  v15 = (v14 - *v12) >> 4;
  if (v15 != v11 + v10)
  {
    std::to_string(&v69, v15);
    v26 = std::string::insert(&v69, 0, "The length of outputs(");
    v27 = *&v26->__r_.__value_.__l.__data_;
    v70.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
    *&v70.__r_.__value_.__l.__data_ = v27;
    v26->__r_.__value_.__l.__size_ = 0;
    v26->__r_.__value_.__r.__words[2] = 0;
    v26->__r_.__value_.__r.__words[0] = 0;
    v28 = std::string::append(&v70, ") does not match the expected(");
    v29 = *&v28->__r_.__value_.__l.__data_;
    v71.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
    *&v71.__r_.__value_.__l.__data_ = v29;
    v28->__r_.__value_.__l.__size_ = 0;
    v28->__r_.__value_.__r.__words[2] = 0;
    v28->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v68, v11 + v10);
    if ((v68.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v30 = &v68;
    }

    else
    {
      v30 = v68.__r_.__value_.__r.__words[0];
    }

    if ((v68.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v68.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v68.__r_.__value_.__l.__size_;
    }

    v32 = std::string::append(&v71, v30, size);
    v33 = *&v32->__r_.__value_.__l.__data_;
    v73.__r_.__value_.__r.__words[2] = v32->__r_.__value_.__r.__words[2];
    *&v73.__r_.__value_.__l.__data_ = v33;
    v32->__r_.__value_.__l.__size_ = 0;
    v32->__r_.__value_.__r.__words[2] = 0;
    v32->__r_.__value_.__r.__words[0] = 0;
    v34 = std::string::append(&v73, ")");
    v21 = v34->__r_.__value_.__r.__words[0];
    v35 = v34->__r_.__value_.__l.__size_;
    v72[0] = v34->__r_.__value_.__r.__words[2];
    *(v72 + 3) = *(&v34->__r_.__value_.__r.__words[2] + 3);
    v23 = SHIBYTE(v34->__r_.__value_.__r.__words[2]);
    v34->__r_.__value_.__l.__size_ = 0;
    v34->__r_.__value_.__r.__words[2] = 0;
    v34->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v73.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v68.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v71.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v70.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v69.__r_.__value_.__l.__data_);
    }

    LocationPtr = MIL::IRObject::GetLocationPtr(this);
    v37 = LocationPtr[1];
    v66 = *LocationPtr;
    v67 = v37;
    if (v37)
    {
      atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v23 < 0)
    {
      std::string::__init_copy_ctor_external(&v65, v21, v35);
    }

    else
    {
      v65.__r_.__value_.__r.__words[0] = v21;
      v65.__r_.__value_.__l.__size_ = v35;
      LODWORD(v65.__r_.__value_.__r.__words[2]) = v72[0];
      *(&v65.__r_.__value_.__r.__words[2] + 3) = *(v72 + 3);
      *(&v65.__r_.__value_.__s + 23) = v23;
    }

    MIL::ValidationResult::ValidationResult(a2, &v66, 310, &v65);
    if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v65.__r_.__value_.__l.__data_);
    }

    v54 = v67;
    if (!v67)
    {
      goto LABEL_71;
    }

LABEL_70:
    std::__shared_weak_count::__release_shared[abi:ne200100](v54);
LABEL_71:
    if (v23 < 0)
    {
      operator delete(v21);
    }

    return;
  }

  if (v6)
  {
    if (v14 == v13)
    {
      goto LABEL_85;
    }

    Type = MIL::IRNamedValueType::GetType(*v13);
    std::string::basic_string[abi:ne200100]<0>(&v73, "x");
    ParameterType = MIL::IROperation::GetParameterType(this);
    if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v73.__r_.__value_.__l.__data_);
    }

    if (Type != ParameterType)
    {
      std::to_string(&v71, 0);
      v18 = std::string::insert(&v71, 0, "The shape and data type of the output at index = ");
      v19 = *&v18->__r_.__value_.__l.__data_;
      v73.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
      *&v73.__r_.__value_.__l.__data_ = v19;
      v18->__r_.__value_.__l.__size_ = 0;
      v18->__r_.__value_.__r.__words[2] = 0;
      v18->__r_.__value_.__r.__words[0] = 0;
      v20 = std::string::append(&v73, " must match input 'x'");
      v21 = v20->__r_.__value_.__r.__words[0];
      v22 = v20->__r_.__value_.__l.__size_;
      LODWORD(v70.__r_.__value_.__l.__data_) = v20->__r_.__value_.__r.__words[2];
      *(v70.__r_.__value_.__r.__words + 3) = *(&v20->__r_.__value_.__r.__words[2] + 3);
      v23 = SHIBYTE(v20->__r_.__value_.__r.__words[2]);
      v20->__r_.__value_.__l.__size_ = 0;
      v20->__r_.__value_.__r.__words[2] = 0;
      v20->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v73.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v71.__r_.__value_.__l.__data_);
      }

      v24 = MIL::IRObject::GetLocationPtr(this);
      v25 = v24[1];
      v63 = *v24;
      v64 = v25;
      if (v25)
      {
        atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v23 < 0)
      {
        std::string::__init_copy_ctor_external(&v62, v21, v22);
      }

      else
      {
        v62.__r_.__value_.__r.__words[0] = v21;
        v62.__r_.__value_.__l.__size_ = v22;
        LODWORD(v62.__r_.__value_.__r.__words[2]) = v70.__r_.__value_.__l.__data_;
        *(&v62.__r_.__value_.__r.__words[2] + 3) = *(v70.__r_.__value_.__r.__words + 3);
        *(&v62.__r_.__value_.__s + 23) = v23;
      }

      MIL::ValidationResult::ValidationResult(a2, &v63, 313, &v62);
      if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v62.__r_.__value_.__l.__data_);
      }

      v54 = v64;
      if (!v64)
      {
        goto LABEL_71;
      }

      goto LABEL_70;
    }
  }

  if (v8)
  {
    if (v6 >= ((*(v12 + 8) - *v12) >> 4))
    {
      goto LABEL_85;
    }

    v38 = MIL::IRNamedValueType::GetType(*(*v12 + 16 * v6));
    std::string::basic_string[abi:ne200100]<0>(&v73, "weight");
    v39 = MIL::IROperation::GetParameterType(this);
    if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v73.__r_.__value_.__l.__data_);
    }

    if (v38 != v39)
    {
      std::to_string(&v71, v6);
      v40 = std::string::insert(&v71, 0, "The shape and data type of the output at index = ");
      v41 = *&v40->__r_.__value_.__l.__data_;
      v73.__r_.__value_.__r.__words[2] = v40->__r_.__value_.__r.__words[2];
      *&v73.__r_.__value_.__l.__data_ = v41;
      v40->__r_.__value_.__l.__size_ = 0;
      v40->__r_.__value_.__r.__words[2] = 0;
      v40->__r_.__value_.__r.__words[0] = 0;
      v42 = std::string::append(&v73, " must match input 'weight'");
      v21 = v42->__r_.__value_.__r.__words[0];
      v43 = v42->__r_.__value_.__l.__size_;
      LODWORD(v70.__r_.__value_.__l.__data_) = v42->__r_.__value_.__r.__words[2];
      *(v70.__r_.__value_.__r.__words + 3) = *(&v42->__r_.__value_.__r.__words[2] + 3);
      v23 = SHIBYTE(v42->__r_.__value_.__r.__words[2]);
      v42->__r_.__value_.__l.__size_ = 0;
      v42->__r_.__value_.__r.__words[2] = 0;
      v42->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v73.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v71.__r_.__value_.__l.__data_);
      }

      v44 = MIL::IRObject::GetLocationPtr(this);
      v45 = v44[1];
      v60 = *v44;
      v61 = v45;
      if (v45)
      {
        atomic_fetch_add_explicit(&v45->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v23 < 0)
      {
        std::string::__init_copy_ctor_external(&v59, v21, v43);
      }

      else
      {
        v59.__r_.__value_.__r.__words[0] = v21;
        v59.__r_.__value_.__l.__size_ = v43;
        LODWORD(v59.__r_.__value_.__r.__words[2]) = v70.__r_.__value_.__l.__data_;
        *(&v59.__r_.__value_.__r.__words[2] + 3) = *(v70.__r_.__value_.__r.__words + 3);
        *(&v59.__r_.__value_.__s + 23) = v23;
      }

      MIL::ValidationResult::ValidationResult(a2, &v60, 313, &v59);
      if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v59.__r_.__value_.__l.__data_);
      }

      v54 = v61;
      if (!v61)
      {
        goto LABEL_71;
      }

      goto LABEL_70;
    }
  }

  if (!v10)
  {
LABEL_73:
    MIL::ValidationResult::ValidationResult(a2);
    return;
  }

  if (v11 >= (*(v12 + 8) - *v12) >> 4)
  {
LABEL_85:
    std::vector<MIL::IRDimension const*>::__throw_out_of_range[abi:ne200100]();
  }

  v46 = MIL::IRNamedValueType::GetType(*(*v12 + 16 * v11));
  std::string::basic_string[abi:ne200100]<0>(&v73, "weight");
  v47 = MIL::IROperation::GetParameterType(this);
  if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v73.__r_.__value_.__l.__data_);
  }

  v48 = MIL::IRValueType::AsTensorType(v46);
  v49 = (*(*v48 + 96))(v48);
  v50 = MIL::IRValueType::AsTensorType(v47);
  v51 = (*(*v50 + 96))(v50);
  if (v49[1] - *v49 == 8 && **v49 == **v51)
  {
    goto LABEL_73;
  }

  v52 = MIL::IRObject::GetLocationPtr(this);
  v53 = v52[1];
  v57 = *v52;
  v58 = v53;
  if (v53)
  {
    atomic_fetch_add_explicit(&v53->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "The shape of output 'db'([C_out]) must match the shape with the first dimension size of input 'weight'");
  MIL::ValidationResult::ValidationResult(a2, &v57, 313, __p);
  if (v56 < 0)
  {
    operator delete(__p[0]);
  }

  if (v58)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v58);
  }
}

void sub_2184B29EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, std::__shared_weak_count *a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, uint64_t a47, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  if (a24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a24);
  }

  if (v53 < 0)
  {
    operator delete(v52);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Train::ios16Train::CustomValidators::ValidateConvGrad(MIL::Operators::Train::ios16Train::CustomValidators *this@<X0>, uint64_t a2@<X8>)
{
  MIL::Operators::Train::ios16Train::CustomValidators::ValidateBaseConvGrad(this, v5);
  if ((*(v5[0] + 16))(v5))
  {
    MIL::ValidationResult::~ValidationResult(v5);
    MIL::Operators::Common::ios15::CustomValidators::ValidateConv(this, a2);
  }

  else
  {
    MIL::MILResult::MILResult(a2, v5);
    *a2 = &unk_2829E9B70;
    *(a2 + 48) = v6;
    MIL::ValidationResult::~ValidationResult(v5);
  }
}

void sub_2184B2C40(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  MIL::ValidationResult::~ValidationResult(va);
  _Unwind_Resume(a1);
}

void MIL::Operators::Train::ios16Train::BaseConvGrad::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2184B3B88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *a55)
{
  if (a55)
  {
    (*(*a55 + 8))(a55);
  }

  v58 = *v55;
  *v55 = 0;
  if (v58)
  {
    (*(*v58 + 8))(v58);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v56 - 96), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v56 - 232), 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Train::ios16Train::ConvGrad::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2184B642C(_Unwind_Exception *a1)
{
  v5 = STACK[0x4E8];
  STACK[0x4E8] = 0;
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
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x458], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Train::ios16Train::CustomValidators::ValidateLinearGrad(MIL::Operators::Train::ios16Train::CustomValidators *this@<X0>, MIL::ValidationResult *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(&v73, "has_input_grad");
  ParameterValue = MIL::IROperation::GetParameterValue(this);
  v6 = MIL::IRValue::GetScalar<BOOL>(ParameterValue);
  if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v73.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v73, "has_weight_grad");
  v7 = MIL::IROperation::GetParameterValue(this);
  v8 = MIL::IRValue::GetScalar<BOOL>(v7);
  if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v73.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v73, "has_bias_grad");
  v9 = MIL::IROperation::GetParameterValue(this);
  v10 = MIL::IRValue::GetScalar<BOOL>(v9);
  if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v73.__r_.__value_.__l.__data_);
  }

  v11 = v8 + v6;
  v12 = (*(*this + 176))(this);
  v13 = *v12;
  v14 = *(v12 + 8);
  v15 = (v14 - *v12) >> 4;
  if (v15 != v11 + v10)
  {
    std::to_string(&v69, v15);
    v26 = std::string::insert(&v69, 0, "The length of outputs(");
    v27 = *&v26->__r_.__value_.__l.__data_;
    v70.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
    *&v70.__r_.__value_.__l.__data_ = v27;
    v26->__r_.__value_.__l.__size_ = 0;
    v26->__r_.__value_.__r.__words[2] = 0;
    v26->__r_.__value_.__r.__words[0] = 0;
    v28 = std::string::append(&v70, ") does not match the expected(");
    v29 = *&v28->__r_.__value_.__l.__data_;
    v71.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
    *&v71.__r_.__value_.__l.__data_ = v29;
    v28->__r_.__value_.__l.__size_ = 0;
    v28->__r_.__value_.__r.__words[2] = 0;
    v28->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v68, v11 + v10);
    if ((v68.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v30 = &v68;
    }

    else
    {
      v30 = v68.__r_.__value_.__r.__words[0];
    }

    if ((v68.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v68.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v68.__r_.__value_.__l.__size_;
    }

    v32 = std::string::append(&v71, v30, size);
    v33 = *&v32->__r_.__value_.__l.__data_;
    v73.__r_.__value_.__r.__words[2] = v32->__r_.__value_.__r.__words[2];
    *&v73.__r_.__value_.__l.__data_ = v33;
    v32->__r_.__value_.__l.__size_ = 0;
    v32->__r_.__value_.__r.__words[2] = 0;
    v32->__r_.__value_.__r.__words[0] = 0;
    v34 = std::string::append(&v73, ")");
    v21 = v34->__r_.__value_.__r.__words[0];
    v35 = v34->__r_.__value_.__l.__size_;
    v72[0] = v34->__r_.__value_.__r.__words[2];
    *(v72 + 3) = *(&v34->__r_.__value_.__r.__words[2] + 3);
    v23 = SHIBYTE(v34->__r_.__value_.__r.__words[2]);
    v34->__r_.__value_.__l.__size_ = 0;
    v34->__r_.__value_.__r.__words[2] = 0;
    v34->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v73.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v68.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v71.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v70.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v69.__r_.__value_.__l.__data_);
    }

    LocationPtr = MIL::IRObject::GetLocationPtr(this);
    v37 = LocationPtr[1];
    v66 = *LocationPtr;
    v67 = v37;
    if (v37)
    {
      atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v23 < 0)
    {
      std::string::__init_copy_ctor_external(&v65, v21, v35);
    }

    else
    {
      v65.__r_.__value_.__r.__words[0] = v21;
      v65.__r_.__value_.__l.__size_ = v35;
      LODWORD(v65.__r_.__value_.__r.__words[2]) = v72[0];
      *(&v65.__r_.__value_.__r.__words[2] + 3) = *(v72 + 3);
      *(&v65.__r_.__value_.__s + 23) = v23;
    }

    MIL::ValidationResult::ValidationResult(a2, &v66, 310, &v65);
    if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v65.__r_.__value_.__l.__data_);
    }

    v54 = v67;
    if (!v67)
    {
      goto LABEL_71;
    }

LABEL_70:
    std::__shared_weak_count::__release_shared[abi:ne200100](v54);
LABEL_71:
    if (v23 < 0)
    {
      operator delete(v21);
    }

    return;
  }

  if (v6)
  {
    if (v14 == v13)
    {
      goto LABEL_85;
    }

    Type = MIL::IRNamedValueType::GetType(*v13);
    std::string::basic_string[abi:ne200100]<0>(&v73, "x");
    ParameterType = MIL::IROperation::GetParameterType(this);
    if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v73.__r_.__value_.__l.__data_);
    }

    if (Type != ParameterType)
    {
      std::to_string(&v71, 0);
      v18 = std::string::insert(&v71, 0, "The shape and data type of the output at index = ");
      v19 = *&v18->__r_.__value_.__l.__data_;
      v73.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
      *&v73.__r_.__value_.__l.__data_ = v19;
      v18->__r_.__value_.__l.__size_ = 0;
      v18->__r_.__value_.__r.__words[2] = 0;
      v18->__r_.__value_.__r.__words[0] = 0;
      v20 = std::string::append(&v73, " must match input 'x'");
      v21 = v20->__r_.__value_.__r.__words[0];
      v22 = v20->__r_.__value_.__l.__size_;
      LODWORD(v70.__r_.__value_.__l.__data_) = v20->__r_.__value_.__r.__words[2];
      *(v70.__r_.__value_.__r.__words + 3) = *(&v20->__r_.__value_.__r.__words[2] + 3);
      v23 = SHIBYTE(v20->__r_.__value_.__r.__words[2]);
      v20->__r_.__value_.__l.__size_ = 0;
      v20->__r_.__value_.__r.__words[2] = 0;
      v20->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v73.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v71.__r_.__value_.__l.__data_);
      }

      v24 = MIL::IRObject::GetLocationPtr(this);
      v25 = v24[1];
      v63 = *v24;
      v64 = v25;
      if (v25)
      {
        atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v23 < 0)
      {
        std::string::__init_copy_ctor_external(&v62, v21, v22);
      }

      else
      {
        v62.__r_.__value_.__r.__words[0] = v21;
        v62.__r_.__value_.__l.__size_ = v22;
        LODWORD(v62.__r_.__value_.__r.__words[2]) = v70.__r_.__value_.__l.__data_;
        *(&v62.__r_.__value_.__r.__words[2] + 3) = *(v70.__r_.__value_.__r.__words + 3);
        *(&v62.__r_.__value_.__s + 23) = v23;
      }

      MIL::ValidationResult::ValidationResult(a2, &v63, 313, &v62);
      if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v62.__r_.__value_.__l.__data_);
      }

      v54 = v64;
      if (!v64)
      {
        goto LABEL_71;
      }

      goto LABEL_70;
    }
  }

  if (v8)
  {
    if (v6 >= ((*(v12 + 8) - *v12) >> 4))
    {
      goto LABEL_85;
    }

    v38 = MIL::IRNamedValueType::GetType(*(*v12 + 16 * v6));
    std::string::basic_string[abi:ne200100]<0>(&v73, "weight");
    v39 = MIL::IROperation::GetParameterType(this);
    if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v73.__r_.__value_.__l.__data_);
    }

    if (v38 != v39)
    {
      std::to_string(&v71, v6);
      v40 = std::string::insert(&v71, 0, "The shape and data type of the output at index = ");
      v41 = *&v40->__r_.__value_.__l.__data_;
      v73.__r_.__value_.__r.__words[2] = v40->__r_.__value_.__r.__words[2];
      *&v73.__r_.__value_.__l.__data_ = v41;
      v40->__r_.__value_.__l.__size_ = 0;
      v40->__r_.__value_.__r.__words[2] = 0;
      v40->__r_.__value_.__r.__words[0] = 0;
      v42 = std::string::append(&v73, " must match input 'weight'");
      v21 = v42->__r_.__value_.__r.__words[0];
      v43 = v42->__r_.__value_.__l.__size_;
      LODWORD(v70.__r_.__value_.__l.__data_) = v42->__r_.__value_.__r.__words[2];
      *(v70.__r_.__value_.__r.__words + 3) = *(&v42->__r_.__value_.__r.__words[2] + 3);
      v23 = SHIBYTE(v42->__r_.__value_.__r.__words[2]);
      v42->__r_.__value_.__l.__size_ = 0;
      v42->__r_.__value_.__r.__words[2] = 0;
      v42->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v73.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v71.__r_.__value_.__l.__data_);
      }

      v44 = MIL::IRObject::GetLocationPtr(this);
      v45 = v44[1];
      v60 = *v44;
      v61 = v45;
      if (v45)
      {
        atomic_fetch_add_explicit(&v45->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v23 < 0)
      {
        std::string::__init_copy_ctor_external(&v59, v21, v43);
      }

      else
      {
        v59.__r_.__value_.__r.__words[0] = v21;
        v59.__r_.__value_.__l.__size_ = v43;
        LODWORD(v59.__r_.__value_.__r.__words[2]) = v70.__r_.__value_.__l.__data_;
        *(&v59.__r_.__value_.__r.__words[2] + 3) = *(v70.__r_.__value_.__r.__words + 3);
        *(&v59.__r_.__value_.__s + 23) = v23;
      }

      MIL::ValidationResult::ValidationResult(a2, &v60, 313, &v59);
      if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v59.__r_.__value_.__l.__data_);
      }

      v54 = v61;
      if (!v61)
      {
        goto LABEL_71;
      }

      goto LABEL_70;
    }
  }

  if (!v10)
  {
LABEL_73:
    MIL::ValidationResult::ValidationResult(a2);
    return;
  }

  if (v11 >= (*(v12 + 8) - *v12) >> 4)
  {
LABEL_85:
    std::vector<MIL::IRDimension const*>::__throw_out_of_range[abi:ne200100]();
  }

  v46 = MIL::IRNamedValueType::GetType(*(*v12 + 16 * v11));
  std::string::basic_string[abi:ne200100]<0>(&v73, "weight");
  v47 = MIL::IROperation::GetParameterType(this);
  if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v73.__r_.__value_.__l.__data_);
  }

  v48 = MIL::IRValueType::AsTensorType(v46);
  v49 = (*(*v48 + 96))(v48);
  v50 = MIL::IRValueType::AsTensorType(v47);
  v51 = (*(*v50 + 96))(v50);
  if (v49[1] - *v49 == 8 && **v49 == **v51)
  {
    goto LABEL_73;
  }

  v52 = MIL::IRObject::GetLocationPtr(this);
  v53 = v52[1];
  v57 = *v52;
  v58 = v53;
  if (v53)
  {
    atomic_fetch_add_explicit(&v53->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "The shape of output 'db'([D_out]) must match the shape with the first dimension size of input 'weight'");
  MIL::ValidationResult::ValidationResult(a2, &v57, 313, __p);
  if (v56 < 0)
  {
    operator delete(__p[0]);
  }

  if (v58)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v58);
  }
}

void sub_2184B7684(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, std::__shared_weak_count *a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, uint64_t a47, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  if (a24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a24);
  }

  if (v53 < 0)
  {
    operator delete(v52);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Train::ios16Train::CustomValueTypeInference::ValueTypeInferenceLinearTrain(uint64_t a1, void *a2, void *a3)
{
  v3 = a2[1];
  v4[0] = *a2;
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceLinear(a1, v4, a3);
}

void sub_2184B786C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Train::ios16Train::LinearTrain::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2184B8A78(_Unwind_Exception *a1)
{
  v4 = STACK[0x290];
  STACK[0x290] = 0;
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 112), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 232), 0);
  _Unwind_Resume(a1);
}

void sub_2184B8F20()
{
  std::__function::__value_func<std::shared_ptr<MIL::IRValue const> ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](v0 - 192);
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](v0 - 160);
  if (STACK[0x218])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x218]);
  }

  if (STACK[0x228])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x228]);
  }

  JUMPOUT(0x2184B8F54);
}

void sub_2184B8F64()
{
  v1 = *(v0 - 72);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  v2 = *(v0 - 64);
  *(v0 - 64) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x2184B8FACLL);
}

void sub_2184B8FCC()
{
  v1 = *(v0 - 96);
  *(v0 - 96) = 0;
  if (v1)
  {
    MIL::Operators::Common::ios15::BaseActivation::Make();
  }

  if (STACK[0x260])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x260]);
  }

  v2 = STACK[0x278];
  if (STACK[0x278])
  {
    STACK[0x280] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x2184B90CCLL);
}

void sub_2184B90C8()
{
  v0 = STACK[0x290];
  if (STACK[0x290])
  {
    STACK[0x298] = v0;
    operator delete(v0);
  }

  JUMPOUT(0x2184B8EF4);
}

void MIL::Operators::Train::ios16Train::LinearGrad::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2184BAC98(_Unwind_Exception *a1)
{
  v4 = STACK[0x368];
  STACK[0x368] = 0;
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 136), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 256), 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Train::ios16Train::LayerNormTrain::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2184BC7B4(_Unwind_Exception *a1)
{
  v4 = *(v2 - 112);
  *(v2 - 112) = 0;
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 152), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x248], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Train::ios16Train::CustomValidators::ValidateBaseOptimizer(MIL::Operators::Train::ios16Train::CustomValidators *this@<X0>, MIL::ValidationResult *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(&v42, "xs");
  v5 = (*(*this + 152))(this, &v42);
  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v42, "dxs");
  v6 = (*(*this + 152))(this, &v42);
  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__data_);
  }

  if (v5 != v6)
  {
    LocationPtr = MIL::IRObject::GetLocationPtr(this);
    v16 = LocationPtr[1];
    v40 = *LocationPtr;
    v41 = v16;
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "The length of inputs 'xs' and 'dxs' must be the same");
    MIL::ValidationResult::ValidationResult(a2, &v40, 315, __p);
    if (v39 < 0)
    {
      operator delete(__p[0]);
    }

    v17 = v41;
    if (!v41)
    {
      return;
    }

    goto LABEL_51;
  }

  if (v5)
  {
    v7 = 0;
    while (1)
    {
      std::string::basic_string[abi:ne200100]<0>(&v42, "xs");
      ParameterType = MIL::IROperation::GetParameterType(this);
      if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v42.__r_.__value_.__l.__data_);
      }

      std::string::basic_string[abi:ne200100]<0>(&v42, "dxs");
      v10 = MIL::IROperation::GetParameterType(this);
      if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v42.__r_.__value_.__l.__data_);
      }

      if (!MIL::Validation::TypeShapeAndDataTypeMatch(ParameterType, v10, v9))
      {
        break;
      }

      if (v5 == ++v7)
      {
        goto LABEL_14;
      }
    }

    v23 = MIL::IRObject::GetLocationPtr(this);
    v24 = v23[1];
    v36 = *v23;
    v37 = v24;
    if (v24)
    {
      atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v34, "The shape and data type of each argument of 'xs' and 'dxs' must be the same");
    MIL::ValidationResult::ValidationResult(a2, &v36, 315, v34);
    if (v35 < 0)
    {
      operator delete(v34[0]);
    }

    v17 = v37;
    if (!v37)
    {
      return;
    }

LABEL_51:
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    return;
  }

LABEL_14:
  v11 = (*(*this + 176))(this);
  v12 = v5;
  if (v5 > ((v11[1] - *v11) >> 4))
  {
    std::string::basic_string[abi:ne200100]<0>(&v42, "The length of outputs cannot be less than the length of input 'xs', i.e. the number of variables");
    v13 = MIL::IRObject::GetLocationPtr(this);
    v14 = v13[1];
    v32 = *v13;
    v33 = v14;
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v31, v42.__r_.__value_.__l.__data_, v42.__r_.__value_.__l.__size_);
    }

    else
    {
      v31 = v42;
    }

    MIL::ValidationResult::ValidationResult(a2, &v32, 310, &v31);
    if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v31.__r_.__value_.__l.__data_);
    }

    if (v33)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v33);
    }

    if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v42.__r_.__value_.__l.__data_);
    }

    return;
  }

  if (!v5)
  {
LABEL_32:
    MIL::ValidationResult::ValidationResult(a2);
    return;
  }

  v18 = v11;
  v19 = 0;
  while (1)
  {
    if (v19 >= (v18[1] - *v18) >> 4)
    {
      std::vector<MIL::IRDimension const*>::__throw_out_of_range[abi:ne200100]();
    }

    Type = MIL::IRNamedValueType::GetType(*(*v18 + 16 * v19));
    std::string::basic_string[abi:ne200100]<0>(&v42, "xs");
    v22 = MIL::IROperation::GetParameterType(this);
    if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v42.__r_.__value_.__l.__data_);
    }

    if (!MIL::Validation::TypeShapeAndDataTypeMatch(Type, v22, v21))
    {
      break;
    }

    if (++v19 == v12)
    {
      goto LABEL_32;
    }
  }

  v25 = MIL::IRObject::GetLocationPtr(this);
  v26 = v25[1];
  v29 = *v25;
  v30 = v26;
  if (v26)
  {
    atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(v27, "The shape and data type of each updated xs must match each argument of input 'xs'");
  MIL::ValidationResult::ValidationResult(a2, &v29, 313, v27);
  if (v28 < 0)
  {
    operator delete(v27[0]);
  }

  v17 = v30;
  if (v30)
  {
    goto LABEL_51;
  }
}

void sub_2184BD1C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
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

void MIL::Operators::Train::ios16Train::CustomValidators::ValidateAdam(MIL::Operators::Train::ios16Train::CustomValidators *this@<X0>, uint64_t a2@<X8>)
{
  MIL::Operators::Train::ios16Train::CustomValidators::ValidateBaseOptimizer(this, &v88);
  if (((*(v88.__r_.__value_.__r.__words[0] + 16))(&v88) & 1) == 0)
  {
    MIL::MILResult::MILResult(a2, &v88);
    *a2 = &unk_2829E9B70;
    *(a2 + 48) = v89;
    MIL::ValidationResult::~ValidationResult(&v88);
    return;
  }

  MIL::ValidationResult::~ValidationResult(&v88);
  std::string::basic_string[abi:ne200100]<0>(v5, "xs");
  v6 = (*(*this + 152))(this, &v88);
  if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v88.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v88, "mean");
  v7 = (*(*this + 152))(this, &v88);
  if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v88.__r_.__value_.__l.__data_);
  }

  if (v6 != v7)
  {
    LocationPtr = MIL::IRObject::GetLocationPtr(this);
    v30 = LocationPtr[1];
    v86 = *LocationPtr;
    v87 = v30;
    if (v30)
    {
      atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v84, "The length of input 'xs' and 'm' must be the same");
    MIL::ValidationResult::ValidationResult(a2, &v86, 315, v84);
    if (v85 < 0)
    {
      operator delete(v84[0]);
    }

    v31 = v87;
    if (!v87)
    {
      return;
    }

    goto LABEL_96;
  }

  if (v6)
  {
    v8 = 0;
    while (1)
    {
      std::string::basic_string[abi:ne200100]<0>(&v88, "xs");
      ParameterType = MIL::IROperation::GetParameterType(this);
      if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v88.__r_.__value_.__l.__data_);
      }

      std::string::basic_string[abi:ne200100]<0>(&v88, "mean");
      v11 = MIL::IROperation::GetParameterType(this);
      if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v88.__r_.__value_.__l.__data_);
      }

      if (!MIL::Validation::TypeShapeAndDataTypeMatch(ParameterType, v11, v10))
      {
        break;
      }

      if (v6 == ++v8)
      {
        goto LABEL_15;
      }
    }

    v34 = MIL::IRObject::GetLocationPtr(this);
    v35 = v34[1];
    v82 = *v34;
    v83 = v35;
    if (v35)
    {
      atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v80, "The shape and data type of each argument of 'xs' and 'm' must be the same");
    MIL::ValidationResult::ValidationResult(a2, &v82, 315, v80);
    if (v81 < 0)
    {
      operator delete(v80[0]);
    }

    v31 = v83;
    if (!v83)
    {
      return;
    }

    goto LABEL_96;
  }

LABEL_15:
  std::string::basic_string[abi:ne200100]<0>(&v88, "variance");
  v12 = (*(*this + 152))(this, &v88);
  if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v88.__r_.__value_.__l.__data_);
  }

  if (v6 != v12)
  {
    v32 = MIL::IRObject::GetLocationPtr(this);
    v33 = v32[1];
    v78 = *v32;
    v79 = v33;
    if (v33)
    {
      atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "The length of input 'xs' and 'v' must be the same");
    MIL::ValidationResult::ValidationResult(a2, &v78, 315, __p);
    if (v77 < 0)
    {
      operator delete(__p[0]);
    }

    v31 = v79;
    if (!v79)
    {
      return;
    }

    goto LABEL_96;
  }

  if (!v6)
  {
LABEL_26:
    v17 = 3 * v6;
    v18 = (*(*this + 176))(this);
    v19 = (v18[1] - *v18) >> 4;
    if (v19 == v17)
    {
      if (v6)
      {
        v20 = 0;
        v21 = 16 * v6;
        do
        {
          std::string::basic_string[abi:ne200100]<0>(&v88, "mean");
          v22 = MIL::IROperation::GetParameterType(this);
          if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v88.__r_.__value_.__l.__data_);
          }

          Type = MIL::IRNamedValueType::GetType(*(*v18 + v21));
          if (!MIL::Validation::TypeShapeAndDataTypeMatch(Type, v22, v24))
          {
            v52 = MIL::IRObject::GetLocationPtr(this);
            v53 = v52[1];
            v62 = *v52;
            v63 = v53;
            if (v53)
            {
              atomic_fetch_add_explicit(&v53->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            std::string::basic_string[abi:ne200100]<0>(v60, "The shape and data type of each updated 'm' must match each argument of input 'm'");
            MIL::ValidationResult::ValidationResult(a2, &v62, 313, v60);
            if (v61 < 0)
            {
              operator delete(v60[0]);
            }

            v31 = v63;
            if (!v63)
            {
              return;
            }

            goto LABEL_96;
          }

          ++v20;
          v21 += 16;
        }

        while (v6 != v20);
        v25 = 0;
        while (1)
        {
          std::string::basic_string[abi:ne200100]<0>(&v88, "variance");
          v26 = MIL::IROperation::GetParameterType(this);
          if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v88.__r_.__value_.__l.__data_);
          }

          v27 = MIL::IRNamedValueType::GetType(*(*v18 + v21));
          if (!MIL::Validation::TypeShapeAndDataTypeMatch(v27, v26, v28))
          {
            break;
          }

          ++v25;
          v21 += 16;
          if (v6 == v25)
          {
            goto LABEL_38;
          }
        }

        v54 = MIL::IRObject::GetLocationPtr(this);
        v55 = v54[1];
        v58 = *v54;
        v59 = v55;
        if (v55)
        {
          atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        std::string::basic_string[abi:ne200100]<0>(v56, "The shape and data type of each updated 'v' must match each argument of input 'v'");
        MIL::ValidationResult::ValidationResult(a2, &v58, 313, v56);
        if (v57 < 0)
        {
          operator delete(v56[0]);
        }

        v31 = v59;
        if (v59)
        {
          goto LABEL_96;
        }
      }

      else
      {
LABEL_38:
        MIL::ValidationResult::ValidationResult(a2);
      }
    }

    else
    {
      std::to_string(&v68, v19);
      v36 = std::string::insert(&v68, 0, "The length of outputs(");
      v37 = *&v36->__r_.__value_.__l.__data_;
      v69.__r_.__value_.__r.__words[2] = v36->__r_.__value_.__r.__words[2];
      *&v69.__r_.__value_.__l.__data_ = v37;
      v36->__r_.__value_.__l.__size_ = 0;
      v36->__r_.__value_.__r.__words[2] = 0;
      v36->__r_.__value_.__r.__words[0] = 0;
      v38 = std::string::append(&v69, ") does not match the expected(");
      v39 = *&v38->__r_.__value_.__l.__data_;
      v70.__r_.__value_.__r.__words[2] = v38->__r_.__value_.__r.__words[2];
      *&v70.__r_.__value_.__l.__data_ = v39;
      v38->__r_.__value_.__l.__size_ = 0;
      v38->__r_.__value_.__r.__words[2] = 0;
      v38->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v67, v17);
      if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v40 = &v67;
      }

      else
      {
        v40 = v67.__r_.__value_.__r.__words[0];
      }

      if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v67.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v67.__r_.__value_.__l.__size_;
      }

      v42 = std::string::append(&v70, v40, size);
      v43 = *&v42->__r_.__value_.__l.__data_;
      v88.__r_.__value_.__r.__words[2] = v42->__r_.__value_.__r.__words[2];
      *&v88.__r_.__value_.__l.__data_ = v43;
      v42->__r_.__value_.__l.__size_ = 0;
      v42->__r_.__value_.__r.__words[2] = 0;
      v42->__r_.__value_.__r.__words[0] = 0;
      v44 = std::string::append(&v88, ")");
      v45 = v44->__r_.__value_.__r.__words[0];
      v46 = v44->__r_.__value_.__l.__size_;
      v71[0] = v44->__r_.__value_.__r.__words[2];
      *(v71 + 3) = *(&v44->__r_.__value_.__r.__words[2] + 3);
      v47 = SHIBYTE(v44->__r_.__value_.__r.__words[2]);
      v44->__r_.__value_.__l.__size_ = 0;
      v44->__r_.__value_.__r.__words[2] = 0;
      v44->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v88.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v67.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v70.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v69.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v68.__r_.__value_.__l.__data_);
      }

      v48 = MIL::IRObject::GetLocationPtr(this);
      v49 = v48[1];
      v65 = *v48;
      v66 = v49;
      if (v49)
      {
        atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v47 < 0)
      {
        std::string::__init_copy_ctor_external(&v64, v45, v46);
      }

      else
      {
        v64.__r_.__value_.__r.__words[0] = v45;
        v64.__r_.__value_.__l.__size_ = v46;
        LODWORD(v64.__r_.__value_.__r.__words[2]) = v71[0];
        *(&v64.__r_.__value_.__r.__words[2] + 3) = *(v71 + 3);
        *(&v64.__r_.__value_.__s + 23) = v47;
      }

      MIL::ValidationResult::ValidationResult(a2, &v65, 310, &v64);
      if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v64.__r_.__value_.__l.__data_);
      }

      if (v66)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v66);
      }

      if (v47 < 0)
      {
        operator delete(v45);
      }
    }

    return;
  }

  v13 = 0;
  while (1)
  {
    std::string::basic_string[abi:ne200100]<0>(&v88, "xs");
    v14 = MIL::IROperation::GetParameterType(this);
    if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v88.__r_.__value_.__l.__data_);
    }

    std::string::basic_string[abi:ne200100]<0>(&v88, "variance");
    v16 = MIL::IROperation::GetParameterType(this);
    if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v88.__r_.__value_.__l.__data_);
    }

    if (!MIL::Validation::TypeShapeAndDataTypeMatch(v14, v16, v15))
    {
      break;
    }

    if (v6 == ++v13)
    {
      goto LABEL_26;
    }
  }

  v50 = MIL::IRObject::GetLocationPtr(this);
  v51 = v50[1];
  v74 = *v50;
  v75 = v51;
  if (v51)
  {
    atomic_fetch_add_explicit(&v51->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(v72, "The shape and data type of each argument of 'xs' and 'v' must be the same");
  MIL::ValidationResult::ValidationResult(a2, &v74, 315, v72);
  if (v73 < 0)
  {
    operator delete(v72[0]);
  }

  v31 = v75;
  if (v75)
  {
LABEL_96:
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }
}

void sub_2184BDAA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Train::ios16Train::CustomValidators::ValidateSgd(MIL::Operators::Train::ios16Train::CustomValidators *this@<X0>, uint64_t a2@<X8>)
{
  MIL::Operators::Train::ios16Train::CustomValidators::ValidateBaseOptimizer(this, &v67);
  if ((v67[2](&v67) & 1) == 0)
  {
    MIL::MILResult::MILResult(a2, &v67);
    *a2 = &unk_2829E9B70;
    *(a2 + 48) = v71;
    MIL::ValidationResult::~ValidationResult(&v67);
    return;
  }

  MIL::ValidationResult::~ValidationResult(&v67);
  std::string::basic_string[abi:ne200100]<0>(v5, "xs");
  v6 = (*(*this + 152))(this, &v67);
  if (SHIBYTE(v68) < 0)
  {
    operator delete(v67);
  }

  v64 = 0;
  v65 = 0;
  v7 = v6;
  v66 = 0;
  std::vector<std::string const*>::reserve(&v64, v6);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      std::string::basic_string[abi:ne200100]<0>(&v67, "xs");
      ParameterType = MIL::IROperation::GetParameterType(this);
      if (SHIBYTE(v68) < 0)
      {
        operator delete(v67);
      }

      v62.__begin_ = ParameterType;
      std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](&v64, &v62);
    }
  }

  LOBYTE(v62.__begin_) = 0;
  v63 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v67, "momentum");
  IsParameterSet = MIL::IROperation::IsParameterSet(this, &v67);
  v11 = IsParameterSet;
  if (SHIBYTE(v68) < 0)
  {
    operator delete(v67);
    if (!v11)
    {
      goto LABEL_23;
    }
  }

  else if (!IsParameterSet)
  {
    goto LABEL_23;
  }

  std::string::basic_string[abi:ne200100]<0>(&v67, "momentum");
  v12 = (*(*this + 152))(this, &v67);
  if (SHIBYTE(v68) < 0)
  {
    operator delete(v67);
  }

  v67 = 0;
  v68 = 0uLL;
  std::vector<std::string const*>::reserve(&v67, v12);
  if (v12)
  {
    for (j = 0; j != v12; ++j)
    {
      std::string::basic_string[abi:ne200100]<0>(&v61, "momentum");
      v14 = MIL::IROperation::GetParameterType(this);
      if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v61.__r_.__value_.__l.__data_);
      }

      v57.__r_.__value_.__r.__words[0] = v14;
      std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](&v67, &v57);
    }
  }

  std::optional<std::vector<MIL::IRValueType const*>>::operator=[abi:ne200100]<std::vector<MIL::IRValueType const*>,void>(&v62, &v67);
  if (v67)
  {
    *&v68 = v67;
    operator delete(v67);
  }

LABEL_23:
  std::string::basic_string[abi:ne200100]<0>(&v67, "nesterov");
  v15 = MIL::IROperation::IsParameterSet(this, &v67);
  v16 = v15;
  if ((SHIBYTE(v68) & 0x80000000) == 0)
  {
    if (!v15)
    {
      goto LABEL_29;
    }

LABEL_27:
    std::string::basic_string[abi:ne200100]<0>(&v67, "nesterov");
    ParameterValue = MIL::IROperation::GetParameterValue(this);
    v16 = MIL::IRValue::GetScalar<BOOL>(ParameterValue);
    if (SHIBYTE(v68) < 0)
    {
      operator delete(v67);
    }

    goto LABEL_29;
  }

  operator delete(v67);
  if (v16)
  {
    goto LABEL_27;
  }

LABEL_29:
  std::__optional_copy_base<std::vector<MIL::IRValueType const*>,false>::__optional_copy_base[abi:ne200100](__p, &v62);
  std::string::basic_string[abi:ne200100]<0>(&v61, "momentum_val");
  v18 = MIL::IROperation::IsParameterSet(this, &v61.__r_.__value_.__l.__data_);
  LocationPtr = MIL::IRObject::GetLocationPtr(this);
  v20 = LocationPtr[1];
  v58[0] = *LocationPtr;
  v58[1] = v20;
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v61.__r_.__value_.__l.__data_);
  }

  if (v60 == 1 && __p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (MIL::ValidationResult::IsGood(&v67))
  {
    std::string::basic_string[abi:ne200100]<0>(&v61, "momentum");
    if (MIL::IROperation::IsParameterSet(this, &v61.__r_.__value_.__l.__data_))
    {
      std::string::basic_string[abi:ne200100]<0>(&v57, "momentum_val");
      v21 = MIL::IROperation::IsParameterSet(this, &v57.__r_.__value_.__l.__data_);
      if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v57.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v21 = 0;
    }

    if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v61.__r_.__value_.__l.__data_);
    }

    v22 = (*(*this + 176))(this);
    v23 = (v22[1] - *v22) >> 4;
    if (v23 == v6 << v21)
    {
      if (v6)
      {
        v24 = v21;
      }

      else
      {
        v24 = 0;
      }

      if (v24 == 1)
      {
        v25 = 0;
        while (1)
        {
          v26 = (v7 + v25);
          if (v26 >= (v22[1] - *v22) >> 4)
          {
            std::vector<MIL::IRDimension const*>::__throw_out_of_range[abi:ne200100]();
          }

          Type = MIL::IRNamedValueType::GetType(*(*v22 + 16 * v26));
          std::string::basic_string[abi:ne200100]<0>(&v61, "momentum");
          v29 = MIL::IROperation::GetParameterType(this);
          if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v61.__r_.__value_.__l.__data_);
          }

          if (!MIL::Validation::TypeShapeAndDataTypeMatch(Type, v29, v28))
          {
            break;
          }

          if (v7 == ++v25)
          {
            goto LABEL_57;
          }
        }

        v44 = MIL::IRObject::GetLocationPtr(this);
        v45 = v44[1];
        v48 = *v44;
        v49 = v45;
        if (v45)
        {
          atomic_fetch_add_explicit(&v45->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        std::string::basic_string[abi:ne200100]<0>(v46, "The shape and data type of each updated momentum must match each argument of input 'momentum'");
        MIL::ValidationResult::ValidationResult(a2, &v48, 313, v46);
        if (v47 < 0)
        {
          operator delete(v46[0]);
        }

        if (v49)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v49);
        }
      }

      else
      {
LABEL_57:
        MIL::ValidationResult::ValidationResult(a2);
      }
    }

    else
    {
      std::to_string(&v54, v23);
      v30 = std::string::insert(&v54, 0, "The length of outputs(");
      v31 = *&v30->__r_.__value_.__l.__data_;
      v55.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
      *&v55.__r_.__value_.__l.__data_ = v31;
      v30->__r_.__value_.__l.__size_ = 0;
      v30->__r_.__value_.__r.__words[2] = 0;
      v30->__r_.__value_.__r.__words[0] = 0;
      v32 = std::string::append(&v55, ") does not match the expected(");
      v33 = *&v32->__r_.__value_.__l.__data_;
      v57.__r_.__value_.__r.__words[2] = v32->__r_.__value_.__r.__words[2];
      *&v57.__r_.__value_.__l.__data_ = v33;
      v32->__r_.__value_.__l.__size_ = 0;
      v32->__r_.__value_.__r.__words[2] = 0;
      v32->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v53, v6 << v21);
      if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v34 = &v53;
      }

      else
      {
        v34 = v53.__r_.__value_.__r.__words[0];
      }

      if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v53.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v53.__r_.__value_.__l.__size_;
      }

      v36 = std::string::append(&v57, v34, size);
      v37 = *&v36->__r_.__value_.__l.__data_;
      v61.__r_.__value_.__r.__words[2] = v36->__r_.__value_.__r.__words[2];
      *&v61.__r_.__value_.__l.__data_ = v37;
      v36->__r_.__value_.__l.__size_ = 0;
      v36->__r_.__value_.__r.__words[2] = 0;
      v36->__r_.__value_.__r.__words[0] = 0;
      v38 = std::string::append(&v61, ")");
      v39 = v38->__r_.__value_.__r.__words[0];
      v40 = v38->__r_.__value_.__l.__size_;
      v56[0] = v38->__r_.__value_.__r.__words[2];
      *(v56 + 3) = *(&v38->__r_.__value_.__r.__words[2] + 3);
      v41 = SHIBYTE(v38->__r_.__value_.__r.__words[2]);
      v38->__r_.__value_.__l.__size_ = 0;
      v38->__r_.__value_.__r.__words[2] = 0;
      v38->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v61.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v53.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v57.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v55.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v54.__r_.__value_.__l.__data_);
      }

      v42 = MIL::IRObject::GetLocationPtr(this);
      v43 = v42[1];
      v51 = *v42;
      v52 = v43;
      if (v43)
      {
        atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v41 < 0)
      {
        std::string::__init_copy_ctor_external(&v50, v39, v40);
      }

      else
      {
        v50.__r_.__value_.__r.__words[0] = v39;
        v50.__r_.__value_.__l.__size_ = v40;
        LODWORD(v50.__r_.__value_.__r.__words[2]) = v56[0];
        *(&v50.__r_.__value_.__r.__words[2] + 3) = *(v56 + 3);
        *(&v50.__r_.__value_.__s + 23) = v41;
      }

      MIL::ValidationResult::ValidationResult(a2, &v51, 310, &v50);
      if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v50.__r_.__value_.__l.__data_);
      }

      if (v52)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v52);
      }

      if (v41 < 0)
      {
        operator delete(v39);
      }
    }
  }

  else
  {
    *(a2 + 8) = v68;
    v68 = 0uLL;
    *(a2 + 24) = v69;
    *(a2 + 40) = v70;
    v69 = 0uLL;
    v70 = 0;
    *a2 = &unk_2829E9B70;
    *(a2 + 48) = v71;
  }

  MIL::ValidationResult::~ValidationResult(&v67);
  if (v63 == 1 && v62.__begin_)
  {
    v62.__end_ = v62.__begin_;
    operator delete(v62.__begin_);
  }

  if (v64)
  {
    v65 = v64;
    operator delete(v64);
  }
}

void sub_2184BE440(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::__shared_weak_count *a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, char a56)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  MIL::ValidationResult::~ValidationResult((v56 - 136));
  if (*(v56 - 168) == 1)
  {
    v58 = *(v56 - 192);
    if (v58)
    {
      *(v56 - 184) = v58;
      operator delete(v58);
    }
  }

  v59 = *(v56 - 160);
  if (v59)
  {
    *(v56 - 152) = v59;
    operator delete(v59);
  }

  _Unwind_Resume(a1);
}

std::vector<unsigned int> *std::optional<std::vector<MIL::IRValueType const*>>::operator=[abi:ne200100]<std::vector<MIL::IRValueType const*>,void>(std::vector<unsigned int> *this, __n128 *a2)
{
  if (LOBYTE(this[1].__begin_) == 1)
  {
    std::vector<float>::__move_assign(this, a2);
  }

  else
  {
    this->__begin_ = 0;
    this->__end_ = 0;
    this->__end_cap_.__value_ = 0;
    *this = *a2->n128_u8;
    a2->n128_u64[0] = 0;
    a2->n128_u64[1] = 0;
    a2[1].n128_u64[0] = 0;
    LOBYTE(this[1].__begin_) = 1;
  }

  return this;
}

void MIL::Operators::Train::ios16Train::anonymous namespace::ValidateSgdInputs(void *a1@<X0>, uint64_t a2@<X1>, const MIL::IRValueType *a3@<X2>, int a4@<W3>, uint64_t *a5@<X4>, MIL::ValidationResult *a6@<X8>)
{
  v10 = *(a2 + 24);
  if (v10 != 1 || (a3 & 1) == 0)
  {
    if (v10 == a3)
    {
      if (!a4)
      {
        goto LABEL_3;
      }

      v19 = a5[1];
      v32 = *a5;
      v33 = v19;
      if (v19)
      {
        atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "Input 'nesterov' can be true only when both input 'momentum' and 'momentum_val' are specified(momentum is used) ");
      MIL::ValidationResult::ValidationResult(a6, &v32, 315, __p);
      if (v31 < 0)
      {
        operator delete(__p[0]);
      }

      v18 = v33;
      if (!v33)
      {
        return;
      }
    }

    else
    {
      v17 = a5[1];
      v36 = *a5;
      v37 = v17;
      if (v17)
      {
        atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      std::string::basic_string[abi:ne200100]<0>(v34, "Inputs 'momentum' and 'momentum_val' must be either both specified or not specified");
      MIL::ValidationResult::ValidationResult(a6, &v36, 315, v34);
      if (v35 < 0)
      {
        operator delete(v34[0]);
      }

      v18 = v37;
      if (!v37)
      {
        return;
      }
    }

LABEL_19:
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    return;
  }

LABEL_3:
  if (!*(a2 + 24))
  {
LABEL_10:

    MIL::ValidationResult::ValidationResult(a6);
    return;
  }

  v11 = a1[1];
  v12 = v11 - *a1;
  if (v12 != *(a2 + 8) - *a2)
  {
    v20 = a5[1];
    v28 = *a5;
    v29 = v20;
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v26, "The length of inputs 'xs' and 'momentum' must be the same");
    MIL::ValidationResult::ValidationResult(a6, &v28, 315, v26);
    if (v27 < 0)
    {
      operator delete(v26[0]);
    }

    v18 = v29;
    if (!v29)
    {
      return;
    }

    goto LABEL_19;
  }

  if (v11 == *a1)
  {
    goto LABEL_10;
  }

  v13 = 0;
  v14 = v12 >> 3;
  v15 = 1;
  while (1)
  {
    if (v13 >= (*(a2 + 8) - *a2) >> 3)
    {
      std::vector<MIL::IRDimension const*>::__throw_out_of_range[abi:ne200100]();
    }

    if (!MIL::Validation::TypeShapeAndDataTypeMatch(*(*a1 + 8 * v13), *(*a2 + 8 * v13), a3))
    {
      break;
    }

    v13 = v15;
    if (v14 <= v15++)
    {
      goto LABEL_10;
    }
  }

  v21 = a5[1];
  v24 = *a5;
  v25 = v21;
  if (v21)
  {
    atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(v22, "The shape and data type of each argument of 'xs' and 'momentum' must be the same");
  MIL::ValidationResult::ValidationResult(a6, &v24, 315, v22);
  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  v18 = v25;
  if (v25)
  {
    goto LABEL_19;
  }
}

void sub_2184BE970(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::__shared_weak_count *a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Train::ios16Train::CustomValueTypeInference::ValueTypeInferenceSgd(uint64_t *a1@<X1>, void *a2@<X2>, uint64_t a3@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, "xs");
  v6 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a2, &__p);
  if (!v6)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = v6[5];
  v7 = v6[6];
  v9 = (v7 - v8) >> 4;
  if (SHIBYTE(v42) < 0)
  {
    operator delete(__p);
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  std::vector<std::string const*>::reserve(a3, (v7 - v8) >> 4);
  if (v7 != v8)
  {
    v10 = 0;
    v11 = 1;
    do
    {
      std::string::basic_string[abi:ne200100]<0>(&__p, "xs");
      v12 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a2, &__p);
      if (!v12)
      {
        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      ValueType = MIL::IRTypedArgument::GetValueType(*(v12[5] + 2 * v10));
      if (SHIBYTE(v42) < 0)
      {
        operator delete(__p);
      }

      v46 = ValueType;
      std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](a3, &v46);
      v10 = v11;
      v14 = v9 > v11++;
    }

    while (v14);
  }

  LOBYTE(v46) = 0;
  v48 = 0;
  std::string::basic_string[abi:ne200100]<0>(&__p, "momentum");
  v15 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a2, &__p);
  v16 = v15;
  if (SHIBYTE(v42) < 0)
  {
    operator delete(__p);
    if (!v16)
    {
      goto LABEL_25;
    }
  }

  else if (!v15)
  {
    goto LABEL_25;
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "momentum");
  v17 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a2, &__p);
  if (!v17)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v19 = v17[5];
  v18 = v17[6];
  v20 = (v18 - v19) >> 4;
  if (SHIBYTE(v42) < 0)
  {
    operator delete(__p);
  }

  __p = 0;
  v41 = 0;
  v42 = 0;
  std::vector<std::string const*>::reserve(&__p, (v18 - v19) >> 4);
  if (v18 != v19)
  {
    v21 = 0;
    v22 = 1;
    do
    {
      std::string::basic_string[abi:ne200100]<0>(v44, "momentum");
      v23 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a2, v44);
      if (!v23)
      {
        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      v24 = MIL::IRTypedArgument::GetValueType(*(v23[5] + 2 * v21));
      if (SHIBYTE(v45) < 0)
      {
        operator delete(v44[0]);
      }

      v33[0] = v24;
      std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](&__p, v33);
      v21 = v22;
      v14 = v20 > v22++;
    }

    while (v14);
  }

  std::optional<std::vector<MIL::IRValueType const*>>::operator=[abi:ne200100]<std::vector<MIL::IRValueType const*>&,void>(&v46, &__p);
  if (__p)
  {
    v41 = __p;
    operator delete(__p);
  }

LABEL_25:
  std::string::basic_string[abi:ne200100]<0>(&__p, "nesterov");
  v25 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a2, &__p);
  v26 = v25;
  if (SHIBYTE(v42) < 0)
  {
    operator delete(__p);
    if (!v26)
    {
      goto LABEL_31;
    }
  }

  else if (!v25)
  {
    goto LABEL_31;
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "nesterov");
  SingleValue = MIL::ValueTypeInferenceUtils::TryGetSingleValue(a2, &__p);
  LODWORD(v26) = MIL::IRValue::GetScalar<BOOL>(SingleValue);
  if (SHIBYTE(v42) < 0)
  {
    operator delete(__p);
  }

LABEL_31:
  std::__optional_copy_base<std::vector<MIL::IRValueType const*>,false>::__optional_copy_base[abi:ne200100](v38, &v46);
  std::string::basic_string[abi:ne200100]<0>(v44, "momentum_val");
  v28 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a2, v44);
  v29 = *a1;
  v30 = a1[1];
  v37[0] = v29;
  v37[1] = v30;
  if (v30)
  {
    atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  if (SHIBYTE(v45) < 0)
  {
    operator delete(v44[0]);
  }

  if (v39 == 1 && v38[0])
  {
    v38[1] = v38[0];
    operator delete(v38[0]);
  }

  if (!MIL::ValidationResult::IsGood(&__p))
  {
    exception = __cxa_allocate_exception(0x48uLL);
    MIL::MILResult::MILResult(v35, &__p);
    v35[0].__r_.__value_.__r.__words[0] = &unk_2829E9B70;
    v36 = v43;
    MIL::ValidationError::ValidationError(exception, v35);
  }

  std::string::basic_string[abi:ne200100]<0>(v33, "xs");
  v31 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a2, v33);
  if (!v31)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v44[0] = 0;
  v44[1] = 0;
  v45 = 0;
  std::vector<std::shared_ptr<MIL::IRTypedArgument>>::__init_with_size[abi:ne200100]<std::shared_ptr<MIL::IRTypedArgument>*,std::shared_ptr<MIL::IRTypedArgument>*>(v44, v31[5], v31[6], (v31[6] - v31[5]) >> 4);
  if (v34 < 0)
  {
    operator delete(v33[0]);
  }

  if (v48 == 1)
  {
    std::vector<MIL::IRDimension const*>::__insert_with_size[abi:ne200100]<std::__wrap_iter<MIL::IRDimension const**>,std::__wrap_iter<MIL::IRDimension const**>>(a3, *(a3 + 8), v46, v47, (v47 - v46) >> 3);
  }

  v33[0] = v44;
  std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](v33);
  MIL::ValidationResult::~ValidationResult(&__p);
  if (v48 == 1)
  {
    if (v46)
    {
      v47 = v46;
      operator delete(v46);
    }
  }
}

void sub_2184BEEC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  MIL::ValidationResult::~ValidationResult(&a15);
  MIL::ValidationResult::~ValidationResult(&a28);
  if (*(v34 - 72) == 1)
  {
    v36 = *(v34 - 96);
    if (v36)
    {
      *(v34 - 88) = v36;
      operator delete(v36);
    }
  }

  v37 = *v33;
  if (*v33)
  {
    *(v33 + 8) = v37;
    operator delete(v37);
  }

  _Unwind_Resume(a1);
}

uint64_t std::optional<std::vector<MIL::IRValueType const*>>::operator=[abi:ne200100]<std::vector<MIL::IRValueType const*>&,void>(uint64_t a1, char **a2)
{
  if (*(a1 + 24) == 1)
  {
    if (a1 != a2)
    {
      std::vector<MIL::IRValueType const*>::__assign_with_size[abi:ne200100]<MIL::IRValueType const**,MIL::IRValueType const**>(a1, *a2, a2[1], (a2[1] - *a2) >> 3);
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    std::vector<MIL::IRValueType const*>::__init_with_size[abi:ne200100]<MIL::IRValueType const**,MIL::IRValueType const**>(a1, *a2, a2[1], (a2[1] - *a2) >> 3);
    *(a1 + 24) = 1;
  }

  return a1;
}

uint64_t std::__optional_copy_base<std::vector<MIL::IRValueType const*>,false>::__optional_copy_base[abi:ne200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  std::__optional_storage_base<std::vector<MIL::IRValueType const*>,false>::__construct_from[abi:ne200100]<std::__optional_copy_base<std::vector<MIL::IRValueType const*>,false> const&>(a1, a2);
  return a1;
}

void sub_2184BF114(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1)
  {
    std::__optional_copy_base<std::vector<MIL::IRValueType const*>,false>::__optional_copy_base[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::__optional_storage_base<std::vector<MIL::IRValueType const*>,false>::__construct_from[abi:ne200100]<std::__optional_copy_base<std::vector<MIL::IRValueType const*>,false> const&>(void *result, uint64_t a2)
{
  if (*(a2 + 24) == 1)
  {
    v2 = result;
    *result = 0;
    result[1] = 0;
    result[2] = 0;
    result = std::vector<MIL::IRValueType const*>::__init_with_size[abi:ne200100]<MIL::IRValueType const**,MIL::IRValueType const**>(result, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 3);
    *(v2 + 24) = 1;
  }

  return result;
}

void MIL::Operators::Train::ios16Train::BaseOptimizer::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2184BFF14(_Unwind_Exception *a1)
{
  v4 = *(v2 - 248);
  *(v2 - 248) = 0;
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::~unique_ptr[abi:ne200100]((v2 - 112));
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 200), 0);
  _Unwind_Resume(a1);
}

void ***std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::~unique_ptr[abi:ne200100](void ***a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v4 = v2;
    std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](&v4);
    MEMORY[0x21CEAFEA0](v2, 0x20C40960023A9);
  }

  return a1;
}

void MIL::Operators::Train::ios16Train::Adam::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2184C1E60(_Unwind_Exception *a1)
{
  v4 = *(v2 - 128);
  *(v2 - 128) = 0;
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::~unique_ptr[abi:ne200100]((v2 - 96));
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 208), 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Train::ios16Train::Sgd::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2184C3C10(_Unwind_Exception *a1)
{
  v4 = *(v2 - 128);
  *(v2 - 128) = 0;
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::~unique_ptr[abi:ne200100]((v2 - 96));
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 240), 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Train::ios16Train::BasePoolGrad::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2184C5F1C(_Unwind_Exception *a1)
{
  v5 = *(v2 - 112);
  *(v2 - 112) = 0;
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x338], 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x3B0], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Train::ios16Train::BaseAvgPoolGrad::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2184C8510(_Unwind_Exception *a1)
{
  v5 = *(v2 - 112);
  *(v2 - 112) = 0;
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x338], 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x3C0], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Train::ios16Train::AvgPoolGrad::Make(uint64_t a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Train::ios16Train::BaseAvgPoolGrad::Make();
}

void sub_2184C8F00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Train::ios16Train::SliceByIndexGrad::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2184CA7C0(_Unwind_Exception *a1)
{
  v4 = *(v2 - 232);
  *(v2 - 232) = 0;
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x308], 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 192), 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Train::ios16Train::SliceBySizeGrad::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2184CC0AC(_Unwind_Exception *a1)
{
  v4 = *(v2 - 232);
  *(v2 - 232) = 0;
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x208], 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 192), 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Train::ios17Train::CustomValidators::ValidateResizeBilinearGrad(MIL::Operators::Train::ios17Train::CustomValidators *this@<X0>, MIL::ValidationResult *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "input_size_height");
  ParameterValue = MIL::IROperation::GetParameterValue(this);
  v6 = MIL::IRValue::GetScalar<int>(ParameterValue);
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "input_size_width");
  v7 = MIL::IROperation::GetParameterValue(this);
  v8 = MIL::IRValue::GetScalar<int>(v7);
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  if (v6 < 1 || v8 <= 0)
  {
    LocationPtr = MIL::IRObject::GetLocationPtr(this);
    v10 = LocationPtr[1];
    v13 = *LocationPtr;
    v14 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v11, "Input size height or width cannot be zero or negative!");
    MIL::ValidationResult::ValidationResult(a2, &v13, 315, v11);
    if (v12 < 0)
    {
      operator delete(v11[0]);
    }

    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }
  }

  else
  {
    MIL::ValidationResult::ValidationResult(a2);
  }
}

void sub_2184CC78C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::__shared_weak_count *a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Train::ios17Train::CustomValueTypeInference::ValueTypeInferenceResizeBilinearGrad(MIL::IRConstantDimension **a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(__p, "dy");
  SingleValueType = MIL::ValueTypeInferenceUtils::GetSingleValueType(a3, __p);
  v6 = MIL::IRValueType::AsTensorType(SingleValueType);
  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p[0]);
  }

  (*(*v6 + 88))(v6);
  std::string::basic_string[abi:ne200100]<0>(__p, "input_size_height");
  SingleValue = MIL::ValueTypeInferenceUtils::GetSingleValue(a3, __p);
  v8 = MIL::IRValue::AsTensor(SingleValue);
  v9 = MIL::IRValue::GetScalar<int>(v8);
  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "input_size_width");
  v10 = MIL::ValueTypeInferenceUtils::GetSingleValue(a3, __p);
  v11 = MIL::IRValue::AsTensor(v10);
  v12 = MIL::IRValue::GetScalar<int>(v11);
  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p[0]);
  }

  __p[0] = **(*(*v6 + 96))(v6);
  __p[1] = *(*(*(*v6 + 96))(v6) + 8);
  v15 = MIL::IRConstantDimension::Make(*a1, v9);
  v16 = MIL::IRConstantDimension::Make(*a1, v12);
  memset(v13, 0, sizeof(v13));
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const* const*,MIL::IRDimension const* const*>(v13, __p, &v17, 4uLL);
  MIL::IRTensorValueType::MakeWithShape();
}

void sub_2184CCA04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Train::ios17Train::ResizeBilinearGrad::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2184CE4D4(_Unwind_Exception *a1)
{
  v3 = STACK[0x340];
  STACK[0x340] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 160), 0);
  v4 = *v1;
  *v1 = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x308], 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x368], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Train::ios17Train::CustomValidators::ValidateBasePoolGrad(MIL::Operators::Train::ios17Train::CustomValidators *this, const MIL::IROperation *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(v14, "dy");
  ParameterType = MIL::IROperation::GetParameterType(this);
  v4 = MIL::IRValueType::AsTensorType(ParameterType);
  if (SHIBYTE(v15) < 0)
  {
    operator delete(v14[0]);
  }

  MIL::IRTensorValueType::Rank(v4);
  std::string::basic_string[abi:ne200100]<0>(v14, "x");
  v5 = MIL::IROperation::GetParameterType(this);
  MIL::IRValueType::AsTensorType(v5);
  if (SHIBYTE(v15) < 0)
  {
    operator delete(v14[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v14, "kernel_sizes");
  ParameterValue = MIL::IROperation::GetParameterValue(this);
  v7 = MIL::IRValue::AsTensor(ParameterValue);
  MIL::IRTensorValue::GetDataView<int>(v7);
  if (SHIBYTE(v15) < 0)
  {
    operator delete(v14[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v14, "strides");
  v8 = MIL::IROperation::GetParameterValue(this);
  v9 = MIL::IRValue::AsTensor(v8);
  Data = MIL::IRTensorValue::GetDataView<int>(v9);
  v12 = v11;
  if (SHIBYTE(v15) < 0)
  {
    operator delete(v14[0]);
  }

  v14[0] = 0;
  v14[1] = 0;
  v15 = 0;
  v13 = std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(v14, Data, Data + 4 * v12, (4 * v12) >> 2);
  MIL::MILContext::Make(v13);
}

void sub_2184CFE88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, uint64_t a56, void *a57, uint64_t a58, uint64_t a59, uint64_t a60, void *a61, uint64_t a62, uint64_t a63)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  if (v73 < 0)
  {
    operator delete(v72);
  }

  if (a72 < 0)
  {
    operator delete(__p);
  }

  if (SLOBYTE(STACK[0x217]) < 0)
  {
    operator delete(STACK[0x200]);
  }

  v76 = STACK[0x218];
  if (STACK[0x218])
  {
    STACK[0x220] = v76;
    operator delete(v76);
  }

  v77 = *(v74 - 232);
  if (v77)
  {
    *(v74 - 224) = v77;
    operator delete(v77);
  }

  if (*(v74 - 185) < 0)
  {
    operator delete(*(v74 - 208));
  }

  v78 = *(v74 - 184);
  *(v74 - 184) = 0;
  if (v78)
  {
    (*(*v78 + 8))(v78);
  }

  v79 = *(v74 - 176);
  if (v79)
  {
    *(v74 - 168) = v79;
    operator delete(v79);
  }

  v80 = *(v74 - 152);
  if (v80)
  {
    *(v74 - 144) = v80;
    operator delete(v80);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Train::ios17Train::CustomValueInference::ValueInferenceMaxPoolGrad(MIL::IRConstantDimension **a1, uint64_t a2, void *a3)
{
  *&v172[4] = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(__p, "dy");
  v4 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, __p);
  if (!v4)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v5 = v4[5];
  v7 = *v5;
  v6 = *(v5 + 1);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v108 = v6;
  if (v149 < 0)
  {
    operator delete(__p[0]);
  }

  v8 = MIL::IRValue::AsTensor(v7);
  v9 = (*(*v8 + 32))(v8);
  v10 = (*(*v9 + 96))(v9);
  v151 = 0;
  v150 = 0;
  v152 = 0;
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&v150, *v10, v10[1], (v10[1] - *v10) >> 3);
  if (v108)
  {
    atomic_fetch_add_explicit(&v108->__shared_owners_, 1uLL, memory_order_relaxed);
    v147 = v108;
    atomic_fetch_add_explicit(&v108->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v147 = 0;
  }

  v146 = v7;
  MIL::ValueInference::Tensor<float>::FromIRTensorValue(&v146, __p);
  if (v147)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v147);
  }

  std::string::basic_string[abi:ne200100]<0>(v141, "x");
  v11 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, v141);
  if (!v11)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v12 = v11[5];
  v14 = *v12;
  v13 = *(v12 + 1);
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v107 = v13;
  if (v142 < 0)
  {
    operator delete(v141[0]);
  }

  v15 = MIL::IRValue::AsTensor(v14);
  v16 = (*(*v15 + 32))(v15);
  v17 = (*(*v16 + 96))(v16);
  v143 = 0;
  v144 = 0;
  v145 = 0;
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&v143, *v17, v17[1], (v17[1] - *v17) >> 3);
  if (v107)
  {
    atomic_fetch_add_explicit(&v107->__shared_owners_, 1uLL, memory_order_relaxed);
    v140 = v107;
    atomic_fetch_add_explicit(&v107->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v140 = 0;
  }

  v139 = v14;
  MIL::ValueInference::Tensor<float>::FromIRTensorValue(&v139, v141);
  if (v140)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v140);
  }

  v19 = v143;
  v18 = v144;
  std::string::basic_string[abi:ne200100]<0>(v134, "kernel_sizes");
  v20 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, v134);
  if (!v20)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v21 = v20[5];
  v23 = *v21;
  v22 = v21[1];
  if (v22)
  {
    atomic_fetch_add_explicit(v22 + 1, 1uLL, memory_order_relaxed);
  }

  if (v135 < 0)
  {
    operator delete(v134[0]);
  }

  v24 = MIL::IRValue::AsTensor(v23);
  Data = MIL::IRTensorValue::GetDataView<int>(v24);
  memset(v138, 0, sizeof(v138));
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(v138, Data, Data + 4 * v26, (4 * v26) >> 2);
  std::string::basic_string[abi:ne200100]<0>(v134, "strides");
  v27 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, v134);
  if (!v27)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v28 = v27[5];
  v30 = *v28;
  v29 = v28[1];
  if (v29)
  {
    atomic_fetch_add_explicit(v29 + 1, 1uLL, memory_order_relaxed);
  }

  if (v135 < 0)
  {
    operator delete(v134[0]);
  }

  v31 = MIL::IRValue::AsTensor(v30);
  v32 = MIL::IRTensorValue::GetDataView<int>(v31);
  memset(v137, 0, sizeof(v137));
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(v137, v32, v32 + 4 * v33, (4 * v33) >> 2);
  std::string::basic_string[abi:ne200100]<0>(v134, "pad");
  v34 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, v134);
  if (!v34)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v35 = v34[5];
  v37 = *v35;
  v36 = v35[1];
  if (v36)
  {
    atomic_fetch_add_explicit(v36 + 1, 1uLL, memory_order_relaxed);
  }

  if (v135 < 0)
  {
    operator delete(v134[0]);
  }

  v38 = MIL::IRValue::AsTensor(v37);
  v39 = MIL::IRTensorValue::GetDataView<int>(v38);
  memset(v136, 0, sizeof(v136));
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(v136, v39, v39 + 4 * v40, (4 * v40) >> 2);
  ProgramFirstSet = MIL::ParserContext::GetProgramFirstSet(v141);
  v132 = 0uLL;
  v133 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v132, *ProgramFirstSet, ProgramFirstSet[1], (ProgramFirstSet[1] - *ProgramFirstSet) >> 3);
  MIL::ValueInference::Tensor<float>::Zeros(&v132, v134);
  if (v132.n128_u64[0])
  {
    v132.n128_u64[1] = v132.n128_u64[0];
    operator delete(v132.n128_u64[0]);
  }

  memset(v131, 0, sizeof(v131));
  v42 = v150;
  if (v151 != v150)
  {
    v43 = 0;
    do
    {
      v44 = MIL::IRDimension::AsConstant(v42[v43]);
      LODWORD(v159) = (*(*v44 + 48))(v44);
      std::vector<int>::push_back[abi:ne200100](v131, &v159);
      ++v43;
      v42 = v150;
    }

    while (v43 < (v151 - v150) >> 3);
  }

  if (v18 - v19 != 40)
  {
    if ((5 - ((v18 - v19) >> 3)) <= 1)
    {
      v45 = 1;
    }

    else
    {
      v45 = 5 - ((v18 - v19) >> 3);
    }

    do
    {
      LODWORD(v159) = 1;
      std::vector<int>::push_back[abi:ne200100](v131, &v159);
      --v45;
    }

    while (v45);
  }

  v128 = 0;
  v129 = 0;
  v130 = 0;
  __src = 0;
  v126 = 0;
  v127 = 0;
  v46 = v143;
  if ((v144 - v143) >= 0x11)
  {
    v47 = 0;
    v48 = 2;
    do
    {
      v49 = MIL::IRDimension::AsConstant(v46[v48]);
      LODWORD(v159) = (*(*v49 + 48))(v49);
      std::vector<int>::push_back[abi:ne200100](&v128, &v159);
      v50 = v126;
      if (v126 >= v127)
      {
        v52 = __src;
        v53 = v126 - __src;
        v54 = (v126 - __src) >> 2;
        v55 = v54 + 1;
        if ((v54 + 1) >> 62)
        {
          std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
        }

        v56 = v127 - __src;
        if ((v127 - __src) >> 1 > v55)
        {
          v55 = v56 >> 1;
        }

        if (v56 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v57 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v57 = v55;
        }

        if (v57)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(&__src, v57);
        }

        v58 = (4 * v54);
        v59 = &v58[-((v126 - __src) >> 2)];
        *v58 = *(v136[0] + v47);
        v51 = (v58 + 1);
        memcpy(v59, v52, v53);
        v60 = __src;
        __src = v59;
        v126 = v51;
        v127 = 0;
        if (v60)
        {
          operator delete(v60);
        }
      }

      else
      {
        *v126 = *(v136[0] + v47);
        v51 = v50 + 4;
      }

      v126 = v51;
      ++v48;
      v46 = v143;
      v47 += 8;
    }

    while (v48 < (v144 - v143) >> 3);
  }

  v61 = v131[0];
  v62 = *v131[0];
  if (*v131[0] < 1)
  {
    goto LABEL_129;
  }

  v63 = 0;
  v112 = 0;
LABEL_63:
  if (v61[1] < 1)
  {
    goto LABEL_128;
  }

  v64 = 0;
  LODWORD(v109) = v63;
LABEL_65:
  if (v61[2] < 1)
  {
    goto LABEL_126;
  }

  v65 = 0;
  HIDWORD(v109) = v64;
LABEL_67:
  if (v61[3] < 1)
  {
    goto LABEL_125;
  }

  v66 = 0;
  LODWORD(v110) = v65;
LABEL_69:
  if (v61[4] < 1)
  {
    goto LABEL_124;
  }

  v67 = 0;
  HIDWORD(v110) = v66;
LABEL_71:
  v158[0] = v63;
  v158[1] = v64;
  v158[2] = v65;
  v158[3] = v66;
  v158[4] = v67;
  v120 = 0;
  v121 = 0;
  v119 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v119, v158, &v159, 5uLL);
  LODWORD(v159) = 0;
  std::vector<int>::vector[abi:ne200100](v156, 3uLL);
  LODWORD(v159) = 0;
  std::vector<int>::vector[abi:ne200100](&v169, 3uLL);
  v68 = *v119;
  v69 = *(v119 + 1);
  v70 = v128;
  v71 = v156[0];
  v72 = (v129 - v128) >> 2;
  if (v129 != v128)
  {
    v73 = (v119 + 8);
    v74 = v137[0];
    v75 = __src;
    v76 = v138[0];
    v77 = v169;
    if (v72 <= 1)
    {
      v78 = 1;
    }

    else
    {
      v78 = (v129 - v128) >> 2;
    }

    v79 = v156[0];
    do
    {
      v81 = *v74++;
      v80 = v81;
      v83 = *v73++;
      v82 = v83;
      v84 = *v75++;
      v85 = v82 * v80 - v84;
      *v79 = v85;
      v86 = *v70++;
      v87 = v86 - 1;
      v88 = *v76++;
      v89 = v85 + v88 - 1;
      if (v89 >= v87)
      {
        v89 = v87;
      }

      *v77++ = v89;
      *v79 &= ~(*v79 >> 31);
      ++v79;
      --v78;
    }

    while (v78);
  }

  v167 = 0;
  v168 = 0;
  v166 = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<std::__wrap_iter<int *>,std::__wrap_iter<int *>>(&v166, v71, v156[1], (v156[1] - v71) >> 2);
  v155 = 0;
  v153 = 0;
  v154 = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<std::__wrap_iter<int *>,std::__wrap_iter<int *>>(&v153, v169, v170, v170 - v169);
  v111 = v67;
  v90 = *v166;
  v91 = v153;
  v92 = *v153;
  if (*v166 > *v153)
  {
    v93 = -1;
    v94 = -1;
    v95 = -1;
    goto LABEL_100;
  }

  v95 = -1;
  v96 = -2147500000.0;
  v94 = -1;
  v93 = -1;
LABEL_82:
  v97 = *(v166 + 1);
  if (v97 > v91[1])
  {
    goto LABEL_99;
  }

LABEL_83:
  for (i = *(v166 + 2); ; ++i)
  {
    if (i > v91[2])
    {
      if (++v97 > v91[1])
      {
        v92 = *v91;
LABEL_99:
        if (++v90 > v92)
        {
LABEL_100:
          *&v159 = __PAIR64__(v94, v95);
          DWORD2(v159) = v93;
          v123 = 0;
          v124 = 0;
          v122 = 0;
          std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v122, &v159, &v159 + 12, 3uLL);
          v63 = v109;
          v64 = HIDWORD(v109);
          v65 = v110;
          v66 = HIDWORD(v110);
          if (v153)
          {
            v154 = v153;
            operator delete(v153);
          }

          if (v166)
          {
            v167 = v166;
            operator delete(v166);
          }

          if (v169)
          {
            v170 = v169;
            operator delete(v169);
          }

          if (v156[0])
          {
            v156[1] = v156[0];
            operator delete(v156[0]);
          }

          if (v112)
          {
            operator delete(v112);
          }

          v112 = v122;
          v123 = 0;
          v124 = 0;
          v122 = 0;
          if (v119)
          {
            v120 = v119;
            operator delete(v119);
          }

          v169 = v109;
          v170 = v110;
          v171 = v111;
          v117 = 0;
          v118 = 0;
          v116 = 0;
          std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v116, &v169, v172, 5uLL);
          v166 = v109;
          v167 = *v112;
          LODWORD(v168) = v112[2];
          v114 = 0;
          v115 = 0;
          v113 = 0;
          std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v113, &v166, &v168 + 4, 5uLL);
          v160 = 0;
          v159 = 0uLL;
          std::vector<unsigned long long>::__init_with_size[abi:ne200100]<std::__wrap_iter<int *>,std::__wrap_iter<int *>>(&v159, v116, v116 + 12, 3uLL);
          v157 = 0;
          v156[0] = 0;
          v156[1] = 0;
          std::vector<unsigned long long>::__init_with_size[abi:ne200100]<std::__wrap_iter<int *>,std::__wrap_iter<int *>>(v156, v113, v113 + 12, 3uLL);
          v102 = MIL::ParserContext::GetProgramFirstSet(__p);
          v103 = ((v102[1] - *v102) >> 3) - 2;
          if (v103 >= 2)
          {
            v153 = *(v116 + 3);
            std::vector<unsigned long long>::push_back[abi:ne200100](&v159, &v153);
            v153 = *(v113 + 3);
            std::vector<unsigned long long>::push_back[abi:ne200100](v156, &v153);
            if (v103 != 2)
            {
              v153 = *(v116 + 4);
              std::vector<unsigned long long>::push_back[abi:ne200100](&v159, &v153);
              v153 = *(v113 + 4);
              std::vector<unsigned long long>::push_back[abi:ne200100](v156, &v153);
            }
          }

          v104 = *MIL::ValueInference::Tensor<float>::operator[](__p, &v159);
          v105 = MIL::ValueInference::Tensor<float>::operator[](v134, v156);
          *v105 = v104 + *v105;
          if (v156[0])
          {
            v156[1] = v156[0];
            operator delete(v156[0]);
          }

          if (v159)
          {
            *(&v159 + 1) = v159;
            operator delete(v159);
          }

          if (v113)
          {
            v114 = v113;
            operator delete(v113);
          }

          if (v116)
          {
            v117 = v116;
            operator delete(v116);
          }

          v67 = v111 + 1;
          v61 = v131[0];
          if (v111 + 1 >= *(v131[0] + 4))
          {
LABEL_124:
            if (++v66 >= v61[3])
            {
LABEL_125:
              if (++v65 >= v61[2])
              {
LABEL_126:
                if (++v64 >= v61[1])
                {
                  v62 = *v61;
LABEL_128:
                  if (++v63 >= v62)
                  {
LABEL_129:
                    MIL::ValueInference::Tensor<float>::ToIRTensorValue(v134, *a1);
                  }

                  goto LABEL_63;
                }

                goto LABEL_65;
              }

              goto LABEL_67;
            }

            goto LABEL_69;
          }

          goto LABEL_71;
        }

        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (v72 == 2)
    {
      *&v159 = v68;
      *(&v159 + 1) = v69;
      v160 = v90;
      v161 = v97;
      v164 = 0;
      v165 = 0;
      v163 = 0;
      std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v163, &v159, &v162, 4uLL);
      v101 = MIL::ValueInference::Tensor<float>::operator[](v141, &v163);
    }

    else
    {
      if (v72 == 1)
      {
        v163 = v68;
        v164 = v69;
        v165 = v90;
        v160 = 0;
        v159 = 0uLL;
        std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v159, &v163, &v166, 3uLL);
        v99 = *MIL::ValueInference::Tensor<float>::operator[](v141, &v159);
        v100 = v159;
        if (!v159)
        {
          goto LABEL_94;
        }

        *(&v159 + 1) = v159;
        goto LABEL_93;
      }

      *&v159 = v68;
      *(&v159 + 1) = v69;
      v160 = v90;
      v161 = v97;
      v162 = i;
      v163 = 0;
      v164 = 0;
      v165 = 0;
      std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v163, &v159, &v163, 5uLL);
      v101 = MIL::ValueInference::Tensor<float>::operator[](v141, &v163);
    }

    v99 = *v101;
    v100 = v163;
    if (!v163)
    {
      goto LABEL_94;
    }

    v164 = v163;
LABEL_93:
    operator delete(v100);
LABEL_94:
    if (v99 > v96)
    {
      v93 = i;
      v94 = v97;
      v95 = v90;
      v96 = v99;
    }

    v91 = v153;
  }
}

void sub_2184D0FEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, std::__shared_weak_count *a13, std::__shared_weak_count *a14, std::__shared_weak_count *a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v74 = *(v72 - 216);
  if (v74)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v74);
  }

  if (STACK[0x298])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x298]);
  }

  v75 = a20;
  if (__p)
  {
    operator delete(__p);
    v75 = a20;
  }

  if (a36)
  {
    v76 = v75;
    operator delete(a36);
    v75 = v76;
  }

  if (v75)
  {
    operator delete(v75);
  }

  if (a39)
  {
    operator delete(a39);
  }

  MIL::ValueInference::Tensor<float>::~Tensor(&a45);
  if (a53)
  {
    a54 = a53;
    operator delete(a53);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (a56)
  {
    a57 = a56;
    operator delete(a56);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  if (a59)
  {
    a60 = a59;
    operator delete(a59);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  MIL::ValueInference::Tensor<float>::~Tensor(&a64);
  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  v77 = a72;
  if (a72)
  {
    STACK[0x200] = a72;
    operator delete(v77);
  }

  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  MIL::ValueInference::Tensor<float>::~Tensor(&STACK[0x220]);
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  v78 = STACK[0x260];
  if (STACK[0x260])
  {
    STACK[0x268] = v78;
    operator delete(v78);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  _Unwind_Resume(a1);
}

uint64_t std::vector<unsigned long>::__init_with_size[abi:ne200100]<std::__wrap_iter<int *>,std::__wrap_iter<int *>>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned long long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2184D13E8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<unsigned long long>::__init_with_size[abi:ne200100]<std::__wrap_iter<int *>,std::__wrap_iter<int *>>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned long long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2184D145C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Train::ios17Train::BasePoolGrad::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2184D3738(_Unwind_Exception *a1)
{
  v5 = *(v2 - 112);
  *(v2 - 112) = 0;
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x488], 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x500], 0);
  _Unwind_Resume(a1);
}

void sub_2184D42B8()
{
  v0 = STACK[0x508];
  if (STACK[0x508])
  {
    STACK[0x510] = v0;
    operator delete(v0);
  }

  JUMPOUT(0x2184D3FACLL);
}

void MIL::Operators::Train::ios17Train::MaxPoolGrad::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2184D6988(_Unwind_Exception *a1)
{
  v5 = *(v2 - 120);
  *(v2 - 120) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 96), 0);
  v4 = *v1;
  *v1 = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x4C8], 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x540], 0);
  _Unwind_Resume(a1);
}

void sub_2184D766C()
{
  v0 = STACK[0x548];
  if (STACK[0x548])
  {
    STACK[0x550] = v0;
    operator delete(v0);
  }

  JUMPOUT(0x2184D7268);
}

void sub_2184D7700(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  *v1 = 0;
  if (v3)
  {
    MIL::Opsets::Common::CreateMILContext(v3);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Opsets::Common::RegisterIos15ToIos16Conversions(MIL::Opsets::Common *this, MIL::MILContext *a2)
{
  v12 = 0;
  v13 = 0;
  v14 = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, "ios15");
  Opset = MIL::MILContext::GetOpset(this);
  MIL::IROpset::GetReversedOperatorNamesMap(Opset, v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  for (i = v11; i; i = *i)
  {
    std::vector<std::string>::push_back[abi:ne200100](&v12, (i + 5));
  }

  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(v10);
  std::string::basic_string[abi:ne200100]<0>(v10, "ios15");
  std::string::basic_string[abi:ne200100]<0>(v6, "ios16");
  memset(v5, 0, sizeof(v5));
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v5, v12, v13, 0xAAAAAAAAAAAAAAABLL * ((v13 - v12) >> 3));
  __p[0] = v5;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  if (SHIBYTE(v11) < 0)
  {
    operator delete(v10[0]);
  }

  v10[0] = &v12;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v10);
}

void sub_2184D7840(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a19);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  a19 = v30 - 40;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a19);
  _Unwind_Resume(a1);
}

void MIL::Opsets::Common::RegisterIos16ToIos17Conversions(MIL::Opsets::Common *this, MIL::MILContext *a2)
{
  v13[3] = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(v11, "gather");
  std::string::basic_string[abi:ne200100]<0>(&__p, "ios16");
  Opset = MIL::MILContext::GetOpset(this);
  NamedOperatorMap = MIL::IROpset::GetNamedOperatorMap(Opset);
  v5 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(NamedOperatorMap, &v11[0].__r_.__value_.__l.__data_);
  if (v5)
  {
    v6 = v5[6];
    if (v6)
    {
      atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
    }

    if (v10 < 0)
    {
      operator delete(__p);
    }

    std::operator+<char>();
    std::operator+<char>();
    std::set<std::string>::set[abi:ne200100](&v8, v13, 1);
    if (SHIBYTE(v11[0].__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v7, v11[0].__r_.__value_.__l.__data_, v11[0].__r_.__value_.__l.__size_);
    }

    else
    {
      v7 = v11[0];
    }

    v12 = 0;
    operator new();
  }

  std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
}

void sub_2184D7F64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, char a31, uint64_t a32, uint64_t a33, void *a34, char *a35, int a36, __int16 a37, char a38, char a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  *(v46 - 128) = v45;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v46 - 128));
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a45 < 0)
  {
    operator delete(a40);
  }

  *(v46 - 128) = &a31;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v46 - 128));
  std::__tree<std::__value_type<std::string,MIL::IRValueType const*>,std::__map_value_compare<std::string,std::__value_type<std::string,MIL::IRValueType const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MIL::IRValueType const*>>>::destroy(&a34, a35);
  _Unwind_Resume(a1);
}

void MIL::Opsets::Common::RegisterIos17ToIos18Conversions(MIL::Opsets::Common *this, MIL::MILContext *a2)
{
  v16[3] = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(v14, "constexpr_cast");
  std::string::basic_string[abi:ne200100]<0>(&__p, "ios17");
  Opset = MIL::MILContext::GetOpset(this);
  NamedOperatorMap = MIL::IROpset::GetNamedOperatorMap(Opset);
  v5 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(NamedOperatorMap, &v14[0].__r_.__value_.__l.__data_);
  if (v5)
  {
    v7 = v5[5];
    v6 = v5[6];
    if (v6)
    {
      atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
    }

    if (v13 < 0)
    {
      operator delete(__p);
    }

    std::operator+<char>();
    std::operator+<char>();
    std::set<std::string>::set[abi:ne200100](&v11, v16, 1);
    if (SHIBYTE(v14[0].__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v8, v14[0].__r_.__value_.__l.__data_, v14[0].__r_.__value_.__l.__size_);
    }

    else
    {
      v8 = v14[0];
    }

    v9 = v7;
    v10 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
    }

    v15 = 0;
    operator new();
  }

  std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
}

void sub_2184D8B2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, char *a43, uint64_t a44, void *__p, uint64_t a46, int a47, __int16 a48, char a49, char a50, void *a51, uint64_t a52, int a53, __int16 a54, char a55, char a56)
{
  std::__tree<std::__value_type<std::string,MIL::IRValueType const*>,std::__map_value_compare<std::string,std::__value_type<std::string,MIL::IRValueType const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MIL::IRValueType const*>>>::destroy(&a42, a43);
  if (*(v57 - 57) < 0)
  {
    operator delete(*(v57 - 80));
  }

  if (a50 < 0)
  {
    operator delete(__p);
  }

  if (v56)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v56);
  }

  if (a56 < 0)
  {
    operator delete(a51);
  }

  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::RegisterDirectlyUpgradeableOps(uint64_t result, uint64_t a2, __int128 **a3)
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = *a3;
  if (*a3 != a3[1])
  {
    v5 = result;
    if (*(result + 23) >= 0)
    {
      v6 = *(result + 23);
    }

    else
    {
      v6 = *(result + 8);
    }

    std::string::basic_string[abi:ne200100](&v28, v6 + 2);
    if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v7 = &v28;
    }

    else
    {
      v7 = v28.__r_.__value_.__r.__words[0];
    }

    if (v6)
    {
      if (*(v5 + 23) >= 0)
      {
        v8 = v5;
      }

      else
      {
        v8 = *v5;
      }

      memmove(v7, v8, v6);
    }

    strcpy(v7 + v6, "::");
    v9 = *(v3 + 23);
    if (v9 >= 0)
    {
      v10 = v3;
    }

    else
    {
      v10 = *v3;
    }

    if (v9 >= 0)
    {
      v11 = *(v3 + 23);
    }

    else
    {
      v11 = *(v3 + 1);
    }

    v12 = std::string::append(&v28, v10, v11);
    v13 = *&v12->__r_.__value_.__l.__data_;
    v30 = v12->__r_.__value_.__r.__words[2];
    *v29 = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    if (*(a2 + 23) >= 0)
    {
      v14 = *(a2 + 23);
    }

    else
    {
      v14 = *(a2 + 8);
    }

    std::string::basic_string[abi:ne200100](&v26, v14 + 2);
    if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v15 = &v26;
    }

    else
    {
      v15 = v26.__r_.__value_.__r.__words[0];
    }

    if (v14)
    {
      if (*(a2 + 23) >= 0)
      {
        v16 = a2;
      }

      else
      {
        v16 = *a2;
      }

      memmove(v15, v16, v14);
    }

    strcpy(v15 + v14, "::");
    v17 = *(v3 + 23);
    if (v17 >= 0)
    {
      v18 = v3;
    }

    else
    {
      v18 = *v3;
    }

    if (v17 >= 0)
    {
      v19 = *(v3 + 23);
    }

    else
    {
      v19 = *(v3 + 1);
    }

    v20 = std::string::append(&v26, v18, v19);
    v21 = *&v20->__r_.__value_.__l.__data_;
    v33 = v20->__r_.__value_.__r.__words[2];
    v32 = v21;
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    std::set<std::string>::set[abi:ne200100](&v27, &v32, 1);
    if (*(v5 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v23, *v5, *(v5 + 8));
    }

    else
    {
      v23 = *v5;
    }

    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v24, *a2, *(a2 + 8));
    }

    else
    {
      v24 = *a2;
    }

    if (*(v3 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *v3, *(v3 + 1));
    }

    else
    {
      v22 = *v3;
      __p.__r_.__value_.__r.__words[2] = *(v3 + 2);
      *&__p.__r_.__value_.__l.__data_ = v22;
    }

    v31 = 0;
    operator new();
  }

  return result;
}

void sub_2184D9150(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, char a30, char *a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<std::string,MIL::IRValueType const*>,std::__map_value_compare<std::string,std::__value_type<std::string,MIL::IRValueType const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MIL::IRValueType const*>>>::destroy(&a30, a31);
  if (*(v44 - 105) < 0)
  {
    operator delete(*(v44 - 128));
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  if (a44 < 0)
  {
    operator delete(a39);
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  _Unwind_Resume(a1);
}

void MIL::Opsets::Common::RegisterIos18Decompositions(MIL::Opsets::Common *this, MIL::MILContext *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&v12, "scaled_dot_product_attention");
  std::string::basic_string[abi:ne200100]<0>(__p, "ios18");
  Opset = MIL::MILContext::GetOpset(this);
  NamedOperatorMap = MIL::IROpset::GetNamedOperatorMap(Opset);
  v5 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(NamedOperatorMap, &v12.__r_.__value_.__l.__data_);
  if (v5)
  {
    v7 = v5[5];
    v6 = v5[6];
    if (v6)
    {
      atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
    }

    if (v15 < 0)
    {
      operator delete(__p[0]);
    }

    std::operator+<char>();
    std::string::basic_string[abi:ne200100]<0>(__p, "ios18::matmul");
    std::string::basic_string[abi:ne200100]<0>(v16, "ios18::transpose");
    std::string::basic_string[abi:ne200100]<0>(v17, "ios18::sqrt");
    std::string::basic_string[abi:ne200100]<0>(v18, "ios18::softmax");
    std::string::basic_string[abi:ne200100]<0>(v19, "ios18::shape");
    std::string::basic_string[abi:ne200100]<0>(v20, "ios18::add");
    std::string::basic_string[abi:ne200100]<0>(v21, "ios18::real_div");
    std::string::basic_string[abi:ne200100]<0>(v22, "ios18::cast");
    std::string::basic_string[abi:ne200100]<0>(v23, "ios18::slice_by_size");
    std::set<std::string>::set[abi:ne200100](&v11, __p, 9);
    if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v8, v12.__r_.__value_.__l.__data_, v12.__r_.__value_.__l.__size_);
    }

    else
    {
      v8 = v12;
    }

    v9 = v7;
    v10 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
    }

    v13 = 0;
    operator new();
  }

  std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
}

void sub_2184D9588(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, char *a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  operator delete(v68);
  std::pair<std::string const,std::shared_ptr<MIL::IRValue const>>::~pair(&a9);
  std::__tree<std::__value_type<std::string,MIL::IRValueType const*>,std::__map_value_compare<std::string,std::__value_type<std::string,MIL::IRValueType const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MIL::IRValueType const*>>>::destroy(&a16, a17);
  v70 = &a67;
  v71 = -216;
  v72 = &a67;
  while (1)
  {
    v73 = *v72;
    v72 -= 24;
    if (v73 < 0)
    {
      operator delete(*(v70 - 23));
    }

    v70 = v72;
    v71 += 24;
    if (!v71)
    {
      if (a24 < 0)
      {
        operator delete(__p);
      }

      if (v67)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v67);
      }

      if (a30 < 0)
      {
        operator delete(a25);
      }

      _Unwind_Resume(a1);
    }
  }
}

uint64_t std::__function::__func<anonymous namespace::RegisterDirectlyUpgradeableOps(std::string const&,std::string,std::vector<std::string>,MIL::MILContext &)::$_0,std::allocator<anonymous namespace::RegisterDirectlyUpgradeableOps(std::string const&,std::string,std::vector<std::string>,MIL::MILContext &)::$_0>,void ()(MIL::Transform::ProgramTransformer &)>::~__func(uint64_t a1)
{
  *a1 = &unk_2829ECAF8;
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void std::__function::__func<anonymous namespace::RegisterDirectlyUpgradeableOps(std::string const&,std::string,std::vector<std::string>,MIL::MILContext &)::$_0,std::allocator<anonymous namespace::RegisterDirectlyUpgradeableOps(std::string const&,std::string,std::vector<std::string>,MIL::MILContext &)::$_0>,void ()(MIL::Transform::ProgramTransformer &)>::~__func(uint64_t a1)
{
  *a1 = &unk_2829ECAF8;
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x21CEAFEA0);
}

void sub_2184D9870(_Unwind_Exception *a1)
{
  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

void std::__function::__func<anonymous namespace::RegisterDirectlyUpgradeableOps(std::string const&,std::string,std::vector<std::string>,MIL::MILContext &)::$_0,std::allocator<anonymous namespace::RegisterDirectlyUpgradeableOps(std::string const&,std::string,std::vector<std::string>,MIL::MILContext &)::$_0>,void ()(MIL::Transform::ProgramTransformer &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2829ECAF8;
  v4 = (a2 + 8);
  if (*(a1 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(a1 + 8), *(a1 + 16));
  }

  else
  {
    v5 = *(a1 + 8);
    *(a2 + 24) = *(a1 + 24);
    *&v4->__r_.__value_.__l.__data_ = v5;
  }

  if (*(a1 + 55) < 0)
  {
    std::string::__init_copy_ctor_external((a2 + 32), *(a1 + 32), *(a1 + 40));
  }

  else
  {
    v6 = *(a1 + 32);
    *(a2 + 48) = *(a1 + 48);
    *(a2 + 32) = v6;
  }

  if (*(a1 + 79) < 0)
  {
    std::string::__init_copy_ctor_external((a2 + 56), *(a1 + 56), *(a1 + 64));
  }

  else
  {
    v7 = *(a1 + 56);
    *(a2 + 72) = *(a1 + 72);
    *(a2 + 56) = v7;
  }
}

void sub_2184D9978(_Unwind_Exception *exception_object)
{
  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<anonymous namespace::RegisterDirectlyUpgradeableOps(std::string const&,std::string,std::vector<std::string>,MIL::MILContext &)::$_0,std::allocator<anonymous namespace::RegisterDirectlyUpgradeableOps(std::string const&,std::string,std::vector<std::string>,MIL::MILContext &)::$_0>,void ()(MIL::Transform::ProgramTransformer &)>::destroy(uint64_t a1)
{
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 31) < 0)
  {
    v2 = *(a1 + 8);

    operator delete(v2);
  }
}

void std::__function::__func<anonymous namespace::RegisterDirectlyUpgradeableOps(std::string const&,std::string,std::vector<std::string>,MIL::MILContext &)::$_0,std::allocator<anonymous namespace::RegisterDirectlyUpgradeableOps(std::string const&,std::string,std::vector<std::string>,MIL::MILContext &)::$_0>,void ()(MIL::Transform::ProgramTransformer &)>::destroy_deallocate(void **__p)
{
  if (*(__p + 79) < 0)
  {
    operator delete(__p[7]);
  }

  if (*(__p + 55) < 0)
  {
    operator delete(__p[4]);
  }

  if (*(__p + 31) < 0)
  {
    operator delete(__p[1]);
  }

  operator delete(__p);
}

void std::__function::__func<anonymous namespace::RegisterDirectlyUpgradeableOps(std::string const&,std::string,std::vector<std::string>,MIL::MILContext &)::$_0,std::allocator<anonymous namespace::RegisterDirectlyUpgradeableOps(std::string const&,std::string,std::vector<std::string>,MIL::MILContext &)::$_0>,void ()(MIL::Transform::ProgramTransformer &)>::operator()(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (*(a1 + 31) >= 0)
  {
    v2 = *(a1 + 31);
  }

  else
  {
    v2 = *(a1 + 16);
  }

  v3 = &v10;
  std::string::basic_string[abi:ne200100](&v10, v2 + 2);
  if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v3 = v10.__r_.__value_.__r.__words[0];
  }

  if (v2)
  {
    if (*(a1 + 31) >= 0)
    {
      v4 = (a1 + 8);
    }

    else
    {
      v4 = *(a1 + 8);
    }

    memmove(v3, v4, v2);
  }

  strcpy(v3 + v2, "::");
  v5 = *(a1 + 79);
  if (v5 >= 0)
  {
    v6 = (a1 + 56);
  }

  else
  {
    v6 = *(a1 + 56);
  }

  if (v5 >= 0)
  {
    v7 = *(a1 + 79);
  }

  else
  {
    v7 = *(a1 + 64);
  }

  v8 = std::string::append(&v10, v6, v7);
  v9 = *&v8->__r_.__value_.__l.__data_;
  v12 = v8->__r_.__value_.__r.__words[2];
  *__p = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  MIL::Matching::Op();
}

void sub_2184D9C18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, char a24)
{
  std::__function::__value_func<void ()(MIL::Transform::MatchContext &,MIL::Matching::MatchView)>::~__value_func[abi:ne200100](&a24);
  MIL::Matching::Pattern::~Pattern(&a22);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<anonymous namespace::RegisterDirectlyUpgradeableOps(std::string const&,std::string,std::vector<std::string>,MIL::MILContext &)::$_0,std::allocator<anonymous namespace::RegisterDirectlyUpgradeableOps(std::string const&,std::string,std::vector<std::string>,MIL::MILContext &)::$_0>,void ()(MIL::Transform::ProgramTransformer &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<anonymous namespace::RegisterDirectlyUpgradeableOps(std::string const&,std::string,std::vector<std::string>,MIL::MILContext &)::$_0::operator() const(MIL::Transform::ProgramTransformer &)::{lambda(MIL::Transform::MatchContext &,MIL::Matching::MatchView)#1},std::allocator<anonymous namespace::RegisterDirectlyUpgradeableOps(std::string const&,std::string,std::vector<std::string>,MIL::MILContext &)::$_0::operator() const(MIL::Transform::ProgramTransformer &)::{lambda(MIL::Transform::MatchContext &,MIL::Matching::MatchView)#1}>,void ()(MIL::Transform::MatchContext &,MIL::Matching::MatchView)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2829ECB78;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<anonymous namespace::RegisterDirectlyUpgradeableOps(std::string const&,std::string,std::vector<std::string>,MIL::MILContext &)::$_0::operator() const(MIL::Transform::ProgramTransformer &)::{lambda(MIL::Transform::MatchContext &,MIL::Matching::MatchView)#1},std::allocator<anonymous namespace::RegisterDirectlyUpgradeableOps(std::string const&,std::string,std::vector<std::string>,MIL::MILContext &)::$_0::operator() const(MIL::Transform::ProgramTransformer &)::{lambda(MIL::Transform::MatchContext &,MIL::Matching::MatchView)#1}>,void ()(MIL::Transform::MatchContext &,MIL::Matching::MatchView)>::operator()(uint64_t a1, MIL::Transform::MatchContext *a2, void *a3)
{
  v38 = *MEMORY[0x277D85DE8];
  MIL::Matching::MatchView::MatchView(&v30, a3);
  MILContext = MIL::Transform::MatchContext::GetMILContext(a2);
  Opset = MIL::MILContext::GetOpset(MILContext);
  Operator = MIL::IROpset::GetOperator(Opset, *(a1 + 24));
  v31 = 0;
  v32 = 0;
  v33 = 0;
  if ((*(*Operator + 72))(Operator))
  {
    for (i = *((*(*Operator + 64))(Operator) + 16); i; i = *i)
    {
      for (j = 0; j < MIL::Matching::MatchView::GetArgumentCount(&v30, i + 2); ++j)
      {
        v10 = i + 2;
        if (*(i + 39) < 0)
        {
          v10 = i[2];
        }

        MIL::Matching::MatchView::GetVariadicArgument(&v30, i + 2, j, &v34);
        __p[0] = v10;
        MIL::Matching::ArgumentView::ArgumentView(&__p[1], &v34);
        v37.__r_.__value_.__l.__data_ = __p[0];
        MIL::Transform::ArgumentDescription::ArgumentDescription(&v37.__r_.__value_.__r.__words[1], &__p[1]);
        v11 = v32;
        if (v32 >= v33)
        {
          v12 = std::vector<std::pair<char const*,MIL::Transform::ArgumentDescription>>::__emplace_back_slow_path<std::pair<char const*,MIL::Transform::ArgumentDescription>>(&v31, &v37);
        }

        else
        {
          *v32 = v37.__r_.__value_.__r.__words[0];
          MIL::Transform::ArgumentDescription::ArgumentDescription(v11 + 1, &v37.__r_.__value_.__r.__words[1]);
          v12 = (v11 + 5);
        }

        v32 = v12;
        MIL::Transform::ArgumentDescription::~ArgumentDescription(&v37.__r_.__value_.__r.__words[1]);
        MIL::Matching::ArgumentView::~ArgumentView(&__p[1]);
        MIL::Matching::ArgumentView::~ArgumentView(&v34);
      }
    }
  }

  v13 = *(a1 + 16);
  if (*(v13 + 23) >= 0)
  {
    v14 = *(v13 + 23);
  }

  else
  {
    v14 = v13[1];
  }

  v15 = &v37;
  std::string::basic_string[abi:ne200100](&v37, v14 + 2);
  if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v15 = v37.__r_.__value_.__r.__words[0];
  }

  if (v14)
  {
    if (*(v13 + 23) >= 0)
    {
      v16 = v13;
    }

    else
    {
      v16 = *v13;
    }

    memmove(v15, v16, v14);
  }

  strcpy(v15 + v14, "::");
  v17 = *(a1 + 24);
  v18 = *(v17 + 23);
  if (v18 >= 0)
  {
    v19 = *(a1 + 24);
  }

  else
  {
    v19 = *v17;
  }

  if (v18 >= 0)
  {
    v20 = *(v17 + 23);
  }

  else
  {
    v20 = *(v17 + 8);
  }

  v21 = std::string::append(&v37, v19, v20);
  v22 = *&v21->__r_.__value_.__l.__data_;
  v36 = v21->__r_.__value_.__r.__words[2];
  *__p = v22;
  v21->__r_.__value_.__l.__size_ = 0;
  v21->__r_.__value_.__r.__words[2] = 0;
  v21->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  NumOutputs = MIL::Matching::MatchView::GetNumOutputs(&v30);
  v24 = SHIBYTE(v36);
  v25 = __p[0];
  v26 = v31;
  v27 = v32;
  MIL::Matching::MatchView::GetAttributes(&v30);
  if (v27 == v26)
  {
    v28 = 0;
  }

  else
  {
    v28 = v26;
  }

  if (v24 >= 0)
  {
    v29 = __p;
  }

  else
  {
    v29 = v25;
  }

  MIL::Transform::MatchContext::AddMultiOutputOperation(a2, v29, NumOutputs, v28, 0xCCCCCCCCCCCCCCCDLL * ((v27 - v26) >> 3));
}

void sub_2184DA078(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, char *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  __p = &a10;
  std::vector<std::pair<char const*,MIL::Transform::ArgumentDescription>>::__destroy_vector::operator()[abi:ne200100](&__p);
  MIL::Matching::MatchView::~MatchView(&a9);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<anonymous namespace::RegisterDirectlyUpgradeableOps(std::string const&,std::string,std::vector<std::string>,MIL::MILContext &)::$_0::operator() const(MIL::Transform::ProgramTransformer &)::{lambda(MIL::Transform::MatchContext &,MIL::Matching::MatchView)#1},std::allocator<anonymous namespace::RegisterDirectlyUpgradeableOps(std::string const&,std::string,std::vector<std::string>,MIL::MILContext &)::$_0::operator() const(MIL::Transform::ProgramTransformer &)::{lambda(MIL::Transform::MatchContext &,MIL::Matching::MatchView)#1}>,void ()(MIL::Transform::MatchContext &,MIL::Matching::MatchView)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::set<std::string>::set[abi:ne200100](void *a1, const void **a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 24 * a3;
    do
    {
      std::__tree<std::string>::__emplace_hint_unique_key_args<std::string,std::string const&>(a1, v4, a2);
      a2 += 3;
      v6 -= 24;
    }

    while (v6);
  }

  return a1;
}

uint64_t std::__function::__func<MIL::Opsets::Common::RegisterIos16ToIos17Conversions(MIL::MILContext &)::$_0,std::allocator<MIL::Opsets::Common::RegisterIos16ToIos17Conversions(MIL::MILContext &)::$_0>,void ()(MIL::Transform::ProgramTransformer &)>::~__func(uint64_t a1)
{
  *a1 = &unk_2829ECC08;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void std::__function::__func<MIL::Opsets::Common::RegisterIos16ToIos17Conversions(MIL::MILContext &)::$_0,std::allocator<MIL::Opsets::Common::RegisterIos16ToIos17Conversions(MIL::MILContext &)::$_0>,void ()(MIL::Transform::ProgramTransformer &)>::~__func(uint64_t a1)
{
  *a1 = &unk_2829ECC08;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x21CEAFEA0);
}

void std::__function::__func<MIL::Opsets::Common::RegisterIos16ToIos17Conversions(MIL::MILContext &)::$_0,std::allocator<MIL::Opsets::Common::RegisterIos16ToIos17Conversions(MIL::MILContext &)::$_0>,void ()(MIL::Transform::ProgramTransformer &)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_2829ECC08;
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

void std::__function::__func<MIL::Opsets::Common::RegisterIos16ToIos17Conversions(MIL::MILContext &)::$_0,std::allocator<MIL::Opsets::Common::RegisterIos16ToIos17Conversions(MIL::MILContext &)::$_0>,void ()(MIL::Transform::ProgramTransformer &)>::destroy(uint64_t a1)
{
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }
}

void std::__function::__func<MIL::Opsets::Common::RegisterIos16ToIos17Conversions(MIL::MILContext &)::$_0,std::allocator<MIL::Opsets::Common::RegisterIos16ToIos17Conversions(MIL::MILContext &)::$_0>,void ()(MIL::Transform::ProgramTransformer &)>::destroy_deallocate(void **__p)
{
  if (*(__p + 31) < 0)
  {
    operator delete(__p[1]);
  }

  operator delete(__p);
}

void std::__function::__func<MIL::Opsets::Common::RegisterIos16ToIos17Conversions(MIL::MILContext &)::$_0,std::allocator<MIL::Opsets::Common::RegisterIos16ToIos17Conversions(MIL::MILContext &)::$_0>,void ()(MIL::Transform::ProgramTransformer &)>::operator()()
{
  v0 = *MEMORY[0x277D85DE8];
  std::operator+<char>();
  MIL::Matching::Op();
}

void sub_2184DA4A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, char a17)
{
  std::__function::__value_func<void ()(MIL::Transform::MatchContext &,MIL::Matching::MatchView)>::~__value_func[abi:ne200100](&a17);
  MIL::Matching::Pattern::~Pattern(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<MIL::Opsets::Common::RegisterIos16ToIos17Conversions(MIL::MILContext &)::$_0,std::allocator<MIL::Opsets::Common::RegisterIos16ToIos17Conversions(MIL::MILContext &)::$_0>,void ()(MIL::Transform::ProgramTransformer &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::RegisterIos16ToIos17Conversions(MIL::MILContext &)::$_1,std::allocator<MIL::Opsets::Common::RegisterIos16ToIos17Conversions(MIL::MILContext &)::$_1>,void ()(MIL::Transform::ProgramTransformer &)>::~__func(uint64_t a1)
{
  *a1 = &unk_2829ECC88;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void std::__function::__func<MIL::Opsets::Common::RegisterIos16ToIos17Conversions(MIL::MILContext &)::$_1,std::allocator<MIL::Opsets::Common::RegisterIos16ToIos17Conversions(MIL::MILContext &)::$_1>,void ()(MIL::Transform::ProgramTransformer &)>::~__func(uint64_t a1)
{
  *a1 = &unk_2829ECC88;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x21CEAFEA0);
}

void std::__function::__func<MIL::Opsets::Common::RegisterIos16ToIos17Conversions(MIL::MILContext &)::$_1,std::allocator<MIL::Opsets::Common::RegisterIos16ToIos17Conversions(MIL::MILContext &)::$_1>,void ()(MIL::Transform::ProgramTransformer &)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_2829ECC88;
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

void std::__function::__func<MIL::Opsets::Common::RegisterIos16ToIos17Conversions(MIL::MILContext &)::$_1,std::allocator<MIL::Opsets::Common::RegisterIos16ToIos17Conversions(MIL::MILContext &)::$_1>,void ()(MIL::Transform::ProgramTransformer &)>::destroy(uint64_t a1)
{
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }
}

void std::__function::__func<MIL::Opsets::Common::RegisterIos16ToIos17Conversions(MIL::MILContext &)::$_1,std::allocator<MIL::Opsets::Common::RegisterIos16ToIos17Conversions(MIL::MILContext &)::$_1>,void ()(MIL::Transform::ProgramTransformer &)>::destroy_deallocate(void **__p)
{
  if (*(__p + 31) < 0)
  {
    operator delete(__p[1]);
  }

  operator delete(__p);
}

void std::__function::__func<MIL::Opsets::Common::RegisterIos16ToIos17Conversions(MIL::MILContext &)::$_1,std::allocator<MIL::Opsets::Common::RegisterIos16ToIos17Conversions(MIL::MILContext &)::$_1>,void ()(MIL::Transform::ProgramTransformer &)>::operator()()
{
  v0 = *MEMORY[0x277D85DE8];
  std::operator+<char>();
  MIL::Matching::Op();
}

void sub_2184DA7D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, char a17)
{
  std::__function::__value_func<void ()(MIL::Transform::MatchContext &,MIL::Matching::MatchView)>::~__value_func[abi:ne200100](&a17);
  MIL::Matching::Pattern::~Pattern(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<MIL::Opsets::Common::RegisterIos16ToIos17Conversions(MIL::MILContext &)::$_1,std::allocator<MIL::Opsets::Common::RegisterIos16ToIos17Conversions(MIL::MILContext &)::$_1>,void ()(MIL::Transform::ProgramTransformer &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::RegisterIos17ToIos18Conversions(MIL::MILContext &)::$_0,std::allocator<MIL::Opsets::Common::RegisterIos17ToIos18Conversions(MIL::MILContext &)::$_0>,void ()(MIL::Transform::ProgramTransformer &)>::~__func(uint64_t a1)
{
  *a1 = &unk_2829ECD08;
  v2 = *(a1 + 40);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void std::__function::__func<MIL::Opsets::Common::RegisterIos17ToIos18Conversions(MIL::MILContext &)::$_0,std::allocator<MIL::Opsets::Common::RegisterIos17ToIos18Conversions(MIL::MILContext &)::$_0>,void ()(MIL::Transform::ProgramTransformer &)>::~__func(uint64_t a1)
{
  *a1 = &unk_2829ECD08;
  v2 = *(a1 + 40);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x21CEAFEA0);
}

void std::__function::__func<MIL::Opsets::Common::RegisterIos17ToIos18Conversions(MIL::MILContext &)::$_0,std::allocator<MIL::Opsets::Common::RegisterIos17ToIos18Conversions(MIL::MILContext &)::$_0>,void ()(MIL::Transform::ProgramTransformer &)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_2829ECD08;
  v4 = (a2 + 1);
  if (*(a1 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(a1 + 8), *(a1 + 16));
  }

  else
  {
    v5 = *(a1 + 8);
    a2[3] = *(a1 + 24);
    *&v4->__r_.__value_.__l.__data_ = v5;
  }

  v6 = *(a1 + 40);
  a2[4] = *(a1 + 32);
  a2[5] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }
}

void std::__function::__func<MIL::Opsets::Common::RegisterIos17ToIos18Conversions(MIL::MILContext &)::$_0,std::allocator<MIL::Opsets::Common::RegisterIos17ToIos18Conversions(MIL::MILContext &)::$_0>,void ()(MIL::Transform::ProgramTransformer &)>::destroy_deallocate(void *a1)
{
  std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<MIL::IRValue const>>,0>(a1 + 8);

  operator delete(a1);
}

void std::__function::__func<MIL::Opsets::Common::RegisterIos17ToIos18Conversions(MIL::MILContext &)::$_0,std::allocator<MIL::Opsets::Common::RegisterIos17ToIos18Conversions(MIL::MILContext &)::$_0>,void ()(MIL::Transform::ProgramTransformer &)>::operator()()
{
  v0 = *MEMORY[0x277D85DE8];
  std::operator+<char>();
  MIL::Matching::Op();
}

void sub_2184DAB60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, char a17)
{
  std::__function::__value_func<void ()(MIL::Transform::MatchContext &,MIL::Matching::MatchView)>::~__value_func[abi:ne200100](&a17);
  MIL::Matching::Pattern::~Pattern(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<MIL::Opsets::Common::RegisterIos17ToIos18Conversions(MIL::MILContext &)::$_0,std::allocator<MIL::Opsets::Common::RegisterIos17ToIos18Conversions(MIL::MILContext &)::$_0>,void ()(MIL::Transform::ProgramTransformer &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::RegisterIos17ToIos18Conversions(MIL::MILContext &)::$_1,std::allocator<MIL::Opsets::Common::RegisterIos17ToIos18Conversions(MIL::MILContext &)::$_1>,void ()(MIL::Transform::ProgramTransformer &)>::~__func(uint64_t a1)
{
  *a1 = &unk_2829ECD88;
  v2 = *(a1 + 40);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void std::__function::__func<MIL::Opsets::Common::RegisterIos17ToIos18Conversions(MIL::MILContext &)::$_1,std::allocator<MIL::Opsets::Common::RegisterIos17ToIos18Conversions(MIL::MILContext &)::$_1>,void ()(MIL::Transform::ProgramTransformer &)>::~__func(uint64_t a1)
{
  *a1 = &unk_2829ECD88;
  v2 = *(a1 + 40);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x21CEAFEA0);
}

void std::__function::__func<MIL::Opsets::Common::RegisterIos17ToIos18Conversions(MIL::MILContext &)::$_1,std::allocator<MIL::Opsets::Common::RegisterIos17ToIos18Conversions(MIL::MILContext &)::$_1>,void ()(MIL::Transform::ProgramTransformer &)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_2829ECD88;
  v4 = (a2 + 1);
  if (*(a1 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(a1 + 8), *(a1 + 16));
  }

  else
  {
    v5 = *(a1 + 8);
    a2[3] = *(a1 + 24);
    *&v4->__r_.__value_.__l.__data_ = v5;
  }

  v6 = *(a1 + 40);
  a2[4] = *(a1 + 32);
  a2[5] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }
}

void std::__function::__func<MIL::Opsets::Common::RegisterIos17ToIos18Conversions(MIL::MILContext &)::$_1,std::allocator<MIL::Opsets::Common::RegisterIos17ToIos18Conversions(MIL::MILContext &)::$_1>,void ()(MIL::Transform::ProgramTransformer &)>::destroy_deallocate(void *a1)
{
  std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<MIL::IRValue const>>,0>(a1 + 8);

  operator delete(a1);
}

void std::__function::__func<MIL::Opsets::Common::RegisterIos17ToIos18Conversions(MIL::MILContext &)::$_1,std::allocator<MIL::Opsets::Common::RegisterIos17ToIos18Conversions(MIL::MILContext &)::$_1>,void ()(MIL::Transform::ProgramTransformer &)>::operator()()
{
  v0 = *MEMORY[0x277D85DE8];
  std::operator+<char>();
  MIL::Matching::Op();
}

void sub_2184DAEE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, char a17)
{
  std::__function::__value_func<void ()(MIL::Transform::MatchContext &,MIL::Matching::MatchView)>::~__value_func[abi:ne200100](&a17);
  MIL::Matching::Pattern::~Pattern(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<MIL::Opsets::Common::RegisterIos17ToIos18Conversions(MIL::MILContext &)::$_1,std::allocator<MIL::Opsets::Common::RegisterIos17ToIos18Conversions(MIL::MILContext &)::$_1>,void ()(MIL::Transform::ProgramTransformer &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::RegisterIos17ToIos18Conversions(MIL::MILContext &)::$_2,std::allocator<MIL::Opsets::Common::RegisterIos17ToIos18Conversions(MIL::MILContext &)::$_2>,void ()(MIL::Transform::ProgramTransformer &)>::~__func(uint64_t a1)
{
  *a1 = &unk_2829ECE08;
  v2 = *(a1 + 40);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void std::__function::__func<MIL::Opsets::Common::RegisterIos17ToIos18Conversions(MIL::MILContext &)::$_2,std::allocator<MIL::Opsets::Common::RegisterIos17ToIos18Conversions(MIL::MILContext &)::$_2>,void ()(MIL::Transform::ProgramTransformer &)>::~__func(uint64_t a1)
{
  *a1 = &unk_2829ECE08;
  v2 = *(a1 + 40);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x21CEAFEA0);
}

void std::__function::__func<MIL::Opsets::Common::RegisterIos17ToIos18Conversions(MIL::MILContext &)::$_2,std::allocator<MIL::Opsets::Common::RegisterIos17ToIos18Conversions(MIL::MILContext &)::$_2>,void ()(MIL::Transform::ProgramTransformer &)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_2829ECE08;
  v4 = (a2 + 1);
  if (*(a1 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(a1 + 8), *(a1 + 16));
  }

  else
  {
    v5 = *(a1 + 8);
    a2[3] = *(a1 + 24);
    *&v4->__r_.__value_.__l.__data_ = v5;
  }

  v6 = *(a1 + 40);
  a2[4] = *(a1 + 32);
  a2[5] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }
}

void std::__function::__func<MIL::Opsets::Common::RegisterIos17ToIos18Conversions(MIL::MILContext &)::$_2,std::allocator<MIL::Opsets::Common::RegisterIos17ToIos18Conversions(MIL::MILContext &)::$_2>,void ()(MIL::Transform::ProgramTransformer &)>::destroy_deallocate(void *a1)
{
  std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<MIL::IRValue const>>,0>(a1 + 8);

  operator delete(a1);
}

void std::__function::__func<MIL::Opsets::Common::RegisterIos17ToIos18Conversions(MIL::MILContext &)::$_2,std::allocator<MIL::Opsets::Common::RegisterIos17ToIos18Conversions(MIL::MILContext &)::$_2>,void ()(MIL::Transform::ProgramTransformer &)>::operator()()
{
  v0 = *MEMORY[0x277D85DE8];
  std::operator+<char>();
  MIL::Matching::Op();
}

void sub_2184DB270(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, char a17)
{
  std::__function::__value_func<void ()(MIL::Transform::MatchContext &,MIL::Matching::MatchView)>::~__value_func[abi:ne200100](&a17);
  MIL::Matching::Pattern::~Pattern(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<MIL::Opsets::Common::RegisterIos17ToIos18Conversions(MIL::MILContext &)::$_2,std::allocator<MIL::Opsets::Common::RegisterIos17ToIos18Conversions(MIL::MILContext &)::$_2>,void ()(MIL::Transform::ProgramTransformer &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::RegisterIos17ToIos18Conversions(MIL::MILContext &)::$_3,std::allocator<MIL::Opsets::Common::RegisterIos17ToIos18Conversions(MIL::MILContext &)::$_3>,void ()(MIL::Transform::ProgramTransformer &)>::~__func(uint64_t a1)
{
  *a1 = &unk_2829ECE88;
  v2 = *(a1 + 40);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void std::__function::__func<MIL::Opsets::Common::RegisterIos17ToIos18Conversions(MIL::MILContext &)::$_3,std::allocator<MIL::Opsets::Common::RegisterIos17ToIos18Conversions(MIL::MILContext &)::$_3>,void ()(MIL::Transform::ProgramTransformer &)>::~__func(uint64_t a1)
{
  *a1 = &unk_2829ECE88;
  v2 = *(a1 + 40);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x21CEAFEA0);
}

void std::__function::__func<MIL::Opsets::Common::RegisterIos17ToIos18Conversions(MIL::MILContext &)::$_3,std::allocator<MIL::Opsets::Common::RegisterIos17ToIos18Conversions(MIL::MILContext &)::$_3>,void ()(MIL::Transform::ProgramTransformer &)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_2829ECE88;
  v4 = (a2 + 1);
  if (*(a1 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(a1 + 8), *(a1 + 16));
  }

  else
  {
    v5 = *(a1 + 8);
    a2[3] = *(a1 + 24);
    *&v4->__r_.__value_.__l.__data_ = v5;
  }

  v6 = *(a1 + 40);
  a2[4] = *(a1 + 32);
  a2[5] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }
}

void std::__function::__func<MIL::Opsets::Common::RegisterIos17ToIos18Conversions(MIL::MILContext &)::$_3,std::allocator<MIL::Opsets::Common::RegisterIos17ToIos18Conversions(MIL::MILContext &)::$_3>,void ()(MIL::Transform::ProgramTransformer &)>::destroy_deallocate(void *a1)
{
  std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<MIL::IRValue const>>,0>(a1 + 8);

  operator delete(a1);
}

void std::__function::__func<MIL::Opsets::Common::RegisterIos17ToIos18Conversions(MIL::MILContext &)::$_3,std::allocator<MIL::Opsets::Common::RegisterIos17ToIos18Conversions(MIL::MILContext &)::$_3>,void ()(MIL::Transform::ProgramTransformer &)>::operator()()
{
  v0 = *MEMORY[0x277D85DE8];
  std::operator+<char>();
  MIL::Matching::Op();
}

void sub_2184DB5F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, char a17)
{
  std::__function::__value_func<void ()(MIL::Transform::MatchContext &,MIL::Matching::MatchView)>::~__value_func[abi:ne200100](&a17);
  MIL::Matching::Pattern::~Pattern(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<MIL::Opsets::Common::RegisterIos17ToIos18Conversions(MIL::MILContext &)::$_3,std::allocator<MIL::Opsets::Common::RegisterIos17ToIos18Conversions(MIL::MILContext &)::$_3>,void ()(MIL::Transform::ProgramTransformer &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::RegisterIos18Decompositions(MIL::MILContext &)::$_0,std::allocator<MIL::Opsets::Common::RegisterIos18Decompositions(MIL::MILContext &)::$_0>,void ()(MIL::Transform::ProgramTransformer &)>::~__func(uint64_t a1)
{
  *a1 = &unk_2829ECF08;
  v2 = *(a1 + 40);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void std::__function::__func<MIL::Opsets::Common::RegisterIos18Decompositions(MIL::MILContext &)::$_0,std::allocator<MIL::Opsets::Common::RegisterIos18Decompositions(MIL::MILContext &)::$_0>,void ()(MIL::Transform::ProgramTransformer &)>::~__func(uint64_t a1)
{
  *a1 = &unk_2829ECF08;
  v2 = *(a1 + 40);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x21CEAFEA0);
}

void std::__function::__func<MIL::Opsets::Common::RegisterIos18Decompositions(MIL::MILContext &)::$_0,std::allocator<MIL::Opsets::Common::RegisterIos18Decompositions(MIL::MILContext &)::$_0>,void ()(MIL::Transform::ProgramTransformer &)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_2829ECF08;
  v4 = (a2 + 1);
  if (*(a1 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(a1 + 8), *(a1 + 16));
  }

  else
  {
    v5 = *(a1 + 8);
    a2[3] = *(a1 + 24);
    *&v4->__r_.__value_.__l.__data_ = v5;
  }

  v6 = *(a1 + 40);
  a2[4] = *(a1 + 32);
  a2[5] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }
}

void std::__function::__func<MIL::Opsets::Common::RegisterIos18Decompositions(MIL::MILContext &)::$_0,std::allocator<MIL::Opsets::Common::RegisterIos18Decompositions(MIL::MILContext &)::$_0>,void ()(MIL::Transform::ProgramTransformer &)>::destroy_deallocate(void *a1)
{
  std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<MIL::IRValue const>>,0>(a1 + 8);

  operator delete(a1);
}

void std::__function::__func<MIL::Opsets::Common::RegisterIos18Decompositions(MIL::MILContext &)::$_0,std::allocator<MIL::Opsets::Common::RegisterIos18Decompositions(MIL::MILContext &)::$_0>,void ()(MIL::Transform::ProgramTransformer &)>::operator()()
{
  v0 = *MEMORY[0x277D85DE8];
  std::operator+<char>();
  MIL::Matching::Op();
}

void sub_2184DB980(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, char a17)
{
  std::__function::__value_func<void ()(MIL::Transform::MatchContext &,MIL::Matching::MatchView)>::~__value_func[abi:ne200100](&a17);
  MIL::Matching::Pattern::~Pattern(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<MIL::Opsets::Common::RegisterIos18Decompositions(MIL::MILContext &)::$_0,std::allocator<MIL::Opsets::Common::RegisterIos18Decompositions(MIL::MILContext &)::$_0>,void ()(MIL::Transform::ProgramTransformer &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void MIL::Opsets::Common::ios15::ios15Opset::Register(MIL::Opsets::Common::ios15::ios15Opset *this, MIL::MILContext *a2)
{
  v3 = 5;
  strcpy(__p, "ios15");
  operator new();
}

void sub_2184DBAF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, MIL::IROpset *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  v18 = a11;
  a11 = 0;
  if (v18)
  {
    MIL::Opsets::Common::ios15::ios15Opset::Register();
  }

  std::unique_ptr<MIL::Opsets::Common::ios15::ios15Opset>::~unique_ptr[abi:ne200100](&a10);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

MIL::IROpset **std::unique_ptr<MIL::Opsets::Common::ios15::ios15Opset>::~unique_ptr[abi:ne200100](MIL::IROpset **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    MIL::IROpset::~IROpset(v2);
    MEMORY[0x21CEAFEA0]();
  }

  return a1;
}

void sub_2184DBC2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(&a9);
  std::__hash_table<std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>>>::~__hash_table(&a14);
  _Unwind_Resume(a1);
}

void MIL::Opsets::Common::ios15::ios15Opset::GetOperatorConstructors(uint64_t a1@<X8>)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  operator new();
}

void sub_2184E0F28(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  std::__hash_table<std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>>>::~__hash_table(v2);
  _Unwind_Resume(a1);
}

void MIL::Opsets::Common::ios15::ios15Opset::GetOperatorNameToNameMap(uint64_t a1@<X8>)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_impl<char const(&)[4],char const(&)[4]>();
}

void MIL::Opsets::Common::ios15::ios15Opset::GetOps(uint64_t a1@<X8>)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  std::string::basic_string[abi:ne200100]<0>(&v3, "abs");
  MIL::Operators::Common::ios15::Abs::Make();
}

void sub_2184E6718(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  v17 = *(v15 - 40);
  *(v15 - 40) = 0;
  if (v17)
  {
    MIL::Operators::Common::ios15::ListLength::Make();
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v14);
  _Unwind_Resume(a1);
}

void MIL::Opsets::Common::ios15::ios15Opset::~ios15Opset(MIL::Opsets::Common::ios15::ios15Opset *this)
{
  MIL::IROpset::~IROpset(this);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios15::ios15Opset::GetOperatorConstructors(MIL::MILContext &)::$_0,std::allocator<MIL::Opsets::Common::ios15::ios15Opset::GetOperatorConstructors(MIL::MILContext &)::$_0>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829ECFC8;
  a2[1] = v2;
  return result;
}

void sub_2184E84C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios15::ios15Opset::GetOperatorConstructors(MIL::MILContext &)::$_0,std::allocator<MIL::Opsets::Common::ios15::ios15Opset::GetOperatorConstructors(MIL::MILContext &)::$_0>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios15::ios15Opset::GetOperatorConstructors(MIL::MILContext &)::$_1,std::allocator<MIL::Opsets::Common::ios15::ios15Opset::GetOperatorConstructors(MIL::MILContext &)::$_1>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829ED058;
  a2[1] = v2;
  return result;
}

void sub_2184E8620(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios15::ios15Opset::GetOperatorConstructors(MIL::MILContext &)::$_1,std::allocator<MIL::Opsets::Common::ios15::ios15Opset::GetOperatorConstructors(MIL::MILContext &)::$_1>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios15::ios15Opset::GetOperatorConstructors(MIL::MILContext &)::$_2,std::allocator<MIL::Opsets::Common::ios15::ios15Opset::GetOperatorConstructors(MIL::MILContext &)::$_2>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829ED0D8;
  a2[1] = v2;
  return result;
}

void sub_2184E8780(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios15::ios15Opset::GetOperatorConstructors(MIL::MILContext &)::$_2,std::allocator<MIL::Opsets::Common::ios15::ios15Opset::GetOperatorConstructors(MIL::MILContext &)::$_2>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios15::ios15Opset::GetOperatorConstructors(MIL::MILContext &)::$_3,std::allocator<MIL::Opsets::Common::ios15::ios15Opset::GetOperatorConstructors(MIL::MILContext &)::$_3>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829ED158;
  a2[1] = v2;
  return result;
}

void sub_2184E88E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios15::ios15Opset::GetOperatorConstructors(MIL::MILContext &)::$_3,std::allocator<MIL::Opsets::Common::ios15::ios15Opset::GetOperatorConstructors(MIL::MILContext &)::$_3>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios15::ios15Opset::GetOperatorConstructors(MIL::MILContext &)::$_4,std::allocator<MIL::Opsets::Common::ios15::ios15Opset::GetOperatorConstructors(MIL::MILContext &)::$_4>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829ED1D8;
  a2[1] = v2;
  return result;
}

void sub_2184E8A40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios15::ios15Opset::GetOperatorConstructors(MIL::MILContext &)::$_4,std::allocator<MIL::Opsets::Common::ios15::ios15Opset::GetOperatorConstructors(MIL::MILContext &)::$_4>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios15::ios15Opset::GetOperatorConstructors(MIL::MILContext &)::$_5,std::allocator<MIL::Opsets::Common::ios15::ios15Opset::GetOperatorConstructors(MIL::MILContext &)::$_5>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829ED258;
  a2[1] = v2;
  return result;
}

void sub_2184E8BA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios15::ios15Opset::GetOperatorConstructors(MIL::MILContext &)::$_5,std::allocator<MIL::Opsets::Common::ios15::ios15Opset::GetOperatorConstructors(MIL::MILContext &)::$_5>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios15::ios15Opset::GetOperatorConstructors(MIL::MILContext &)::$_6,std::allocator<MIL::Opsets::Common::ios15::ios15Opset::GetOperatorConstructors(MIL::MILContext &)::$_6>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829ED2D8;
  a2[1] = v2;
  return result;
}

void sub_2184E8D00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios15::ios15Opset::GetOperatorConstructors(MIL::MILContext &)::$_6,std::allocator<MIL::Opsets::Common::ios15::ios15Opset::GetOperatorConstructors(MIL::MILContext &)::$_6>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios15::ios15Opset::GetOperatorConstructors(MIL::MILContext &)::$_7,std::allocator<MIL::Opsets::Common::ios15::ios15Opset::GetOperatorConstructors(MIL::MILContext &)::$_7>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829ED358;
  a2[1] = v2;
  return result;
}

void sub_2184E8E60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios15::ios15Opset::GetOperatorConstructors(MIL::MILContext &)::$_7,std::allocator<MIL::Opsets::Common::ios15::ios15Opset::GetOperatorConstructors(MIL::MILContext &)::$_7>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios15::ios15Opset::GetOperatorConstructors(MIL::MILContext &)::$_8,std::allocator<MIL::Opsets::Common::ios15::ios15Opset::GetOperatorConstructors(MIL::MILContext &)::$_8>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829ED3D8;
  a2[1] = v2;
  return result;
}

void sub_2184E8FC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios15::ios15Opset::GetOperatorConstructors(MIL::MILContext &)::$_8,std::allocator<MIL::Opsets::Common::ios15::ios15Opset::GetOperatorConstructors(MIL::MILContext &)::$_8>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios15::ios15Opset::GetOperatorConstructors(MIL::MILContext &)::$_9,std::allocator<MIL::Opsets::Common::ios15::ios15Opset::GetOperatorConstructors(MIL::MILContext &)::$_9>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829ED458;
  a2[1] = v2;
  return result;
}

void sub_2184E9120(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios15::ios15Opset::GetOperatorConstructors(MIL::MILContext &)::$_9,std::allocator<MIL::Opsets::Common::ios15::ios15Opset::GetOperatorConstructors(MIL::MILContext &)::$_9>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios15::ios15Opset::GetOperatorConstructors(MIL::MILContext &)::$_10,std::allocator<MIL::Opsets::Common::ios15::ios15Opset::GetOperatorConstructors(MIL::MILContext &)::$_10>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829ED4D8;
  a2[1] = v2;
  return result;
}

void std::__function::__func<MIL::Opsets::Common::ios15::ios15Opset::GetOperatorConstructors(MIL::MILContext &)::$_10,std::allocator<MIL::Opsets::Common::ios15::ios15Opset::GetOperatorConstructors(MIL::MILContext &)::$_10>,std::unique_ptr<MIL::IROperator> ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  std::string::basic_string[abi:ne200100]<0>(__p, "avg_pool");
  MIL::Operators::Common::ios15::AvgPool::Make(v1, __p);
}

void sub_2184E9280(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios15::ios15Opset::GetOperatorConstructors(MIL::MILContext &)::$_10,std::allocator<MIL::Opsets::Common::ios15::ios15Opset::GetOperatorConstructors(MIL::MILContext &)::$_10>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios15::ios15Opset::GetOperatorConstructors(MIL::MILContext &)::$_11,std::allocator<MIL::Opsets::Common::ios15::ios15Opset::GetOperatorConstructors(MIL::MILContext &)::$_11>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829ED558;
  a2[1] = v2;
  return result;
}

void sub_2184E93E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios15::ios15Opset::GetOperatorConstructors(MIL::MILContext &)::$_11,std::allocator<MIL::Opsets::Common::ios15::ios15Opset::GetOperatorConstructors(MIL::MILContext &)::$_11>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios15::ios15Opset::GetOperatorConstructors(MIL::MILContext &)::$_12,std::allocator<MIL::Opsets::Common::ios15::ios15Opset::GetOperatorConstructors(MIL::MILContext &)::$_12>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829ED5D8;
  a2[1] = v2;
  return result;
}

void sub_2184E9540(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios15::ios15Opset::GetOperatorConstructors(MIL::MILContext &)::$_12,std::allocator<MIL::Opsets::Common::ios15::ios15Opset::GetOperatorConstructors(MIL::MILContext &)::$_12>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios15::ios15Opset::GetOperatorConstructors(MIL::MILContext &)::$_13,std::allocator<MIL::Opsets::Common::ios15::ios15Opset::GetOperatorConstructors(MIL::MILContext &)::$_13>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829ED658;
  a2[1] = v2;
  return result;
}

void sub_2184E96A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios15::ios15Opset::GetOperatorConstructors(MIL::MILContext &)::$_13,std::allocator<MIL::Opsets::Common::ios15::ios15Opset::GetOperatorConstructors(MIL::MILContext &)::$_13>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios15::ios15Opset::GetOperatorConstructors(MIL::MILContext &)::$_14,std::allocator<MIL::Opsets::Common::ios15::ios15Opset::GetOperatorConstructors(MIL::MILContext &)::$_14>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829ED6D8;
  a2[1] = v2;
  return result;
}

void sub_2184E9800(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios15::ios15Opset::GetOperatorConstructors(MIL::MILContext &)::$_14,std::allocator<MIL::Opsets::Common::ios15::ios15Opset::GetOperatorConstructors(MIL::MILContext &)::$_14>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios15::ios15Opset::GetOperatorConstructors(MIL::MILContext &)::$_15,std::allocator<MIL::Opsets::Common::ios15::ios15Opset::GetOperatorConstructors(MIL::MILContext &)::$_15>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829ED758;
  a2[1] = v2;
  return result;
}

void sub_2184E9960(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios15::ios15Opset::GetOperatorConstructors(MIL::MILContext &)::$_15,std::allocator<MIL::Opsets::Common::ios15::ios15Opset::GetOperatorConstructors(MIL::MILContext &)::$_15>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios15::ios15Opset::GetOperatorConstructors(MIL::MILContext &)::$_16,std::allocator<MIL::Opsets::Common::ios15::ios15Opset::GetOperatorConstructors(MIL::MILContext &)::$_16>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829ED7D8;
  a2[1] = v2;
  return result;
}

void std::__function::__func<MIL::Opsets::Common::ios15::ios15Opset::GetOperatorConstructors(MIL::MILContext &)::$_16,std::allocator<MIL::Opsets::Common::ios15::ios15Opset::GetOperatorConstructors(MIL::MILContext &)::$_16>,std::unique_ptr<MIL::IROperator> ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  std::string::basic_string[abi:ne200100]<0>(__p, "clamped_relu");
  MIL::Operators::Common::ios15::ClampedReLU::Make(v1, __p);
}

void sub_2184E9AC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios15::ios15Opset::GetOperatorConstructors(MIL::MILContext &)::$_16,std::allocator<MIL::Opsets::Common::ios15::ios15Opset::GetOperatorConstructors(MIL::MILContext &)::$_16>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios15::ios15Opset::GetOperatorConstructors(MIL::MILContext &)::$_17,std::allocator<MIL::Opsets::Common::ios15::ios15Opset::GetOperatorConstructors(MIL::MILContext &)::$_17>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829ED858;
  a2[1] = v2;
  return result;
}

void sub_2184E9C20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios15::ios15Opset::GetOperatorConstructors(MIL::MILContext &)::$_17,std::allocator<MIL::Opsets::Common::ios15::ios15Opset::GetOperatorConstructors(MIL::MILContext &)::$_17>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios15::ios15Opset::GetOperatorConstructors(MIL::MILContext &)::$_18,std::allocator<MIL::Opsets::Common::ios15::ios15Opset::GetOperatorConstructors(MIL::MILContext &)::$_18>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829ED8D8;
  a2[1] = v2;
  return result;
}

void sub_2184E9D80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios15::ios15Opset::GetOperatorConstructors(MIL::MILContext &)::$_18,std::allocator<MIL::Opsets::Common::ios15::ios15Opset::GetOperatorConstructors(MIL::MILContext &)::$_18>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios15::ios15Opset::GetOperatorConstructors(MIL::MILContext &)::$_19,std::allocator<MIL::Opsets::Common::ios15::ios15Opset::GetOperatorConstructors(MIL::MILContext &)::$_19>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829ED958;
  a2[1] = v2;
  return result;
}

void sub_2184E9EE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios15::ios15Opset::GetOperatorConstructors(MIL::MILContext &)::$_19,std::allocator<MIL::Opsets::Common::ios15::ios15Opset::GetOperatorConstructors(MIL::MILContext &)::$_19>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios15::ios15Opset::GetOperatorConstructors(MIL::MILContext &)::$_20,std::allocator<MIL::Opsets::Common::ios15::ios15Opset::GetOperatorConstructors(MIL::MILContext &)::$_20>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829ED9D8;
  a2[1] = v2;
  return result;
}

void std::__function::__func<MIL::Opsets::Common::ios15::ios15Opset::GetOperatorConstructors(MIL::MILContext &)::$_20,std::allocator<MIL::Opsets::Common::ios15::ios15Opset::GetOperatorConstructors(MIL::MILContext &)::$_20>,std::unique_ptr<MIL::IROperator> ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  std::string::basic_string[abi:ne200100]<0>(__p, "const");
  MIL::Operators::Common::ios15::Const::Make(v1, __p);
}

void sub_2184EA040(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios15::ios15Opset::GetOperatorConstructors(MIL::MILContext &)::$_20,std::allocator<MIL::Opsets::Common::ios15::ios15Opset::GetOperatorConstructors(MIL::MILContext &)::$_20>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios15::ios15Opset::GetOperatorConstructors(MIL::MILContext &)::$_21,std::allocator<MIL::Opsets::Common::ios15::ios15Opset::GetOperatorConstructors(MIL::MILContext &)::$_21>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829EDA58;
  a2[1] = v2;
  return result;
}

void sub_2184EA1A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios15::ios15Opset::GetOperatorConstructors(MIL::MILContext &)::$_21,std::allocator<MIL::Opsets::Common::ios15::ios15Opset::GetOperatorConstructors(MIL::MILContext &)::$_21>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios15::ios15Opset::GetOperatorConstructors(MIL::MILContext &)::$_22,std::allocator<MIL::Opsets::Common::ios15::ios15Opset::GetOperatorConstructors(MIL::MILContext &)::$_22>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829EDAD8;
  a2[1] = v2;
  return result;
}

void sub_2184EA300(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios15::ios15Opset::GetOperatorConstructors(MIL::MILContext &)::$_22,std::allocator<MIL::Opsets::Common::ios15::ios15Opset::GetOperatorConstructors(MIL::MILContext &)::$_22>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios15::ios15Opset::GetOperatorConstructors(MIL::MILContext &)::$_23,std::allocator<MIL::Opsets::Common::ios15::ios15Opset::GetOperatorConstructors(MIL::MILContext &)::$_23>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829EDB58;
  a2[1] = v2;
  return result;
}