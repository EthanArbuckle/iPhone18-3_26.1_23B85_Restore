void sub_2181D26F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, std::__shared_weak_count *a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  MIL::ValidationResult::~ValidationResult(&a19);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  if (v53)
  {
    __cxa_free_exception(v52);
  }

  if (a47)
  {
    a48 = a47;
    operator delete(a47);
  }

  MIL::ValidationResult::~ValidationResult((v54 - 168));
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceTopk(MIL::IRConstantDimension **a1, uint64_t *a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(__p, "x");
  SingleValueType = MIL::ValueTypeInferenceUtils::GetSingleValueType(a3, __p);
  v7 = MIL::IRValueType::AsTensorType(SingleValueType);
  if (v25 < 0)
  {
    operator delete(__p[0]);
  }

  v8 = (*(*v7 + 96))(v7);
  (*(*v7 + 88))(v7);
  std::string::basic_string[abi:ne200100]<0>(__p, "k");
  SingleValue = MIL::ValueTypeInferenceUtils::GetSingleValue(a3, __p);
  v10 = MIL::IRValue::GetScalar<int>(SingleValue);
  if (v25 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "axis");
  v11 = MIL::ValueTypeInferenceUtils::GetSingleValue(a3, __p);
  v12 = MIL::IRValue::GetScalar<int>(v11);
  if (v25 < 0)
  {
    operator delete(__p[0]);
  }

  v13 = MIL::IRTensorValueType::Rank(v7);
  v14 = *a2;
  v15 = a2[1];
  v23[0] = v14;
  v23[1] = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  if (MIL::ValidationResult::IsGood(__p))
  {
    v19 = 0;
    v20 = 0uLL;
    memset(v18, 0, sizeof(v18));
    std::vector<std::string const*>::reserve(&v19, (*(v8 + 8) - *v8) >> 3);
    v16 = MIL::IRConstantDimension::Make(*a1, v10);
    MIL::ValueTypeInferenceUtils::GetTopkOutShape(a1, v8, v12, v16, v13, &v27);
    if (v19)
    {
      *&v20 = v19;
      operator delete(v19);
    }

    v19 = v27;
    v20 = v28;
    std::vector<MIL::IRValueType const*>::__assign_with_size[abi:ne200100]<MIL::IRValueType const**,MIL::IRValueType const**>(v18, v27, v28, (v28 - v27) >> 3);
    MIL::IRTensorValueType::MakeWithShape();
  }

  exception = __cxa_allocate_exception(0x48uLL);
  MIL::MILResult::MILResult(v21, __p);
  v21[0].__r_.__value_.__r.__words[0] = &unk_2829E9B70;
  v22 = v26;
  MIL::ValidationError::ValidationError(exception, v21);
}

void sub_2181D2BA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  MIL::ValidationResult::~ValidationResult(&a15);
  MIL::ValidationResult::~ValidationResult(&a24);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::CustomValueInference::ValueInferenceShape(MIL::IRConstantDimension **a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(__p, "x");
  v5 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, __p);
  if (v5)
  {
    v6 = MIL::IRValue::AsTensor(*v5[5]);
    v7 = (*(*v6 + 32))(v6);
    v8 = (*(*v7 + 96))(v7);
    v11 = 0;
    v12 = 0;
    v13 = 0;
    std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&v11, *v8, v8[1], (v8[1] - *v8) >> 3);
    if (SHIBYTE(v10) < 0)
    {
      operator delete(__p[0]);
    }

    v14.__begin_ = ((v12 - v11) >> 3);
    __p[1] = 0;
    v10 = 0;
    __p[0] = 0;
    std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(__p, &v14, &v14.__end_, 1uLL);
    MIL::IRTensorValueType::Make(*a1, 11, __p);
  }

  std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
}

void sub_2181D2FD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a11)
  {
    operator delete(a11);
  }

  if (a17)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

char *std::vector<MIL::IRDimension const*>::__insert_with_size[abi:ne200100]<std::reverse_iterator<std::__wrap_iter<MIL::IRDimension const**>>,std::reverse_iterator<std::__wrap_iter<MIL::IRDimension const**>>>(void *a1, char *__src, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a7 < 1)
  {
    return __src;
  }

  v9 = a4;
  v12 = a1[1];
  v11 = a1[2];
  if (a7 <= (v11 - v12) >> 3)
  {
    v18 = (v12 - __src) >> 3;
    if (v18 >= a7)
    {
      v22 = &__src[8 * a7];
      v23 = &v12[-a7];
      v24 = a1[1];
      while (v23 < v12)
      {
        v25 = *v23++;
        *v24++ = v25;
      }

      a1[1] = v24;
      if (v12 != v22)
      {
        memmove(&__src[8 * a7], __src, v12 - v22);
      }

      if (8 * a7)
      {
        v26 = v9 - 8 * a7;
        v27 = __src;
        do
        {
          v28 = *(v9 - 8);
          v9 -= 8;
          *v27++ = v28;
        }

        while (v9 != v26);
      }
    }

    else
    {
      v19 = a4 - (v12 - __src);
      v20 = a1[1];
      if (v19 == a6)
      {
        v21 = a1[1];
      }

      else
      {
        v39 = a4 - (v12 - __src);
        v21 = a1[1];
        do
        {
          v40 = *(v39 - 8);
          v39 -= 8;
          *v21 = v40;
          v21 += 8;
          ++v20;
        }

        while (v39 != a6);
      }

      a1[1] = v20;
      if (v18 >= 1)
      {
        v41 = &__src[8 * a7];
        v42 = &v20[-a7];
        v43 = v20;
        while (v42 < v12)
        {
          v44 = *v42++;
          *v43++ = v44;
        }

        a1[1] = v43;
        if (v21 != v41)
        {
          memmove(&__src[8 * a7], __src, v20 - v41);
        }

        if (v12 != __src)
        {
          v45 = __src;
          do
          {
            v46 = *(v9 - 8);
            v9 -= 8;
            *v45++ = v46;
          }

          while (v9 != v19);
        }
      }
    }

    return __src;
  }

  v13 = *a1;
  v14 = a7 + ((v12 - *a1) >> 3);
  if (v14 >> 61)
  {
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  v15 = __src - v13;
  v16 = v11 - v13;
  if (v16 >> 2 > v14)
  {
    v14 = v16 >> 2;
  }

  if (v16 >= 0x7FFFFFFFFFFFFFF8)
  {
    v17 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v17 = v14;
  }

  if (v17)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::string const*>>(a1, v17);
  }

  v29 = 8 * (v15 >> 3);
  v30 = 8 * a7;
  v31 = (a4 - 8);
  v32 = v29;
  do
  {
    v33 = *v31--;
    *v32++ = v33;
    v30 -= 8;
  }

  while (v30);
  memcpy((v29 + 8 * a7), __src, a1[1] - __src);
  v34 = *a1;
  v35 = v29 + 8 * a7 + a1[1] - __src;
  a1[1] = __src;
  v36 = (__src - v34);
  v37 = (v29 - (__src - v34));
  memcpy(v37, v34, v36);
  v38 = *a1;
  *a1 = v37;
  a1[1] = v35;
  a1[2] = 0;
  if (v38)
  {
    operator delete(v38);
  }

  return v29;
}

void MIL::Operators::Common::ios15::Argsort::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2181D3D30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, uint64_t a44, void *a45)
{
  v48 = *(v46 - 80);
  *(v46 - 80) = 0;
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a45, 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v46 - 256), 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::BandPart::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2181D4D54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, void *a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59)
{
  v62 = *(v60 - 96);
  *(v60 - 96) = 0;
  if (v62)
  {
    (*(*v62 + 8))(v62);
  }

  v63 = *v59;
  *v59 = 0;
  if (v63)
  {
    (*(*v63 + 8))(v63);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v60 - 152), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a59, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::Cumsum::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2181D5E8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  v61 = *(v59 - 88);
  *(v59 - 88) = 0;
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

void MIL::Operators::Common::ios15::Fill::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2181D6E14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, void **a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59)
{
  v62 = *(v60 - 88);
  *(v60 - 88) = 0;
  if (v62)
  {
    (*(*v62 + 8))(v62);
  }

  v63 = *v59;
  *v59 = 0;
  if (v63)
  {
    (*(*v63 + 8))(v63);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a54, 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a59, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::Flatten2D::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2181D7E54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void **a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, void *a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60)
{
  v63 = *(v61 - 88);
  *(v61 - 88) = 0;
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a46, 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a60, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::Identity::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2181D8BA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, void *a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, uint64_t a57, void *a58, uint64_t a59)
{
  v62 = *(v60 - 88);
  *(v60 - 88) = 0;
  if (v62)
  {
    (*(*v62 + 8))(v62);
  }

  v63 = *v59;
  *v59 = 0;
  if (v63)
  {
    (*(*v63 + 8))(v63);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v60 - 96), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v60 - 240), 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::NonMaximumSuppression::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2181DA90C(_Unwind_Exception *a1)
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x2E8], 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x350], 0);
  _Unwind_Resume(a1);
}

void sub_2181DB17C()
{
  v1 = *(v0 - 96);
  if (v1)
  {
    *(v0 - 88) = v1;
    operator delete(v1);
  }

  JUMPOUT(0x2181DB160);
}

void MIL::Operators::Common::ios15::NonZero::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2181DBE84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, uint64_t a58, void *a59)
{
  v62 = *(v60 - 96);
  *(v60 - 96) = 0;
  if (v62)
  {
    (*(*v62 + 8))(v62);
  }

  v63 = *v59;
  *v59 = 0;
  if (v63)
  {
    (*(*v63 + 8))(v63);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a59, 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v60 - 256), 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::OneHot::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2181DCF70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, void **a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v66 = *(v64 - 88);
  *(v64 - 88) = 0;
  if (v66)
  {
    (*(*v66 + 8))(v66);
  }

  v67 = *v63;
  *v63 = 0;
  if (v67)
  {
    (*(*v67 + 8))(v67);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a52, 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a63, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::Pad::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2181DE48C(_Unwind_Exception *a1)
{
  v4 = *(v2 - 72);
  *(v2 - 72) = 0;
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 104), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x210], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::Range1D::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2181DF5C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, void **a62)
{
  v65 = *(v63 - 80);
  *(v63 - 80) = 0;
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a62, 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v63 - 208), 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::Shape::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2181E04AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56)
{
  v59 = *(v57 - 88);
  *(v57 - 88) = 0;
  if (v59)
  {
    (*(*v59 + 8))(v59);
  }

  v60 = *v56;
  *v56 = 0;
  if (v60)
  {
    (*(*v60 + 8))(v60);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a47, 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a56, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::Tile::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2181E1740(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, void *a63)
{
  v74 = *(v72 - 88);
  *(v72 - 88) = 0;
  if (v74)
  {
    (*(*v74 + 8))(v74);
  }

  v75 = *v71;
  *v71 = 0;
  if (v75)
  {
    (*(*v75 + 8))(v75);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v72 - 96), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a71, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::Topk::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2181E2A5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, void *a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57)
{
  v60 = *(v58 - 88);
  *(v58 - 88) = 0;
  if (v60)
  {
    (*(*v60 + 8))(v60);
  }

  v61 = *v57;
  *v57 = 0;
  if (v61)
  {
    (*(*v61 + 8))(v61);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v58 - 144), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a57, 0);
  _Unwind_Resume(a1);
}

void sub_2181E2F8C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

_BYTE *std::pair<std::string const,std::shared_ptr<MIL::IRParameter>>::pair[abi:ne200100]<char const(&)[22],std::unique_ptr<MIL::IRParameter>,0>(_BYTE *a1, char *a2, uint64_t *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::shared_ptr<MIL::IRParameter>::shared_ptr[abi:ne200100]<MIL::IRParameter,std::default_delete<MIL::IRParameter>,0>(v5 + 3, a3);
  return a1;
}

void sub_2181E3074(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios15::CustomValidators::ValidateBatchToSpace(MIL::Operators::Common::ios15::CustomValidators *this@<X0>, MIL::ValidationResult *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(v80, "x");
  ParameterType = MIL::IROperation::GetParameterType(this);
  v6 = MIL::IRValueType::AsTensorType(ParameterType);
  if (v81 < 0)
  {
    operator delete(v80[0]);
  }

  OutputType = MIL::IROperation::GetOutputType(this, 0);
  v8 = MIL::IRValueType::AsTensorType(OutputType);
  v9 = MIL::IRTensorValueType::Rank(v6);
  if (v9 != MIL::IRTensorValueType::Rank(v8))
  {
    LocationPtr = MIL::IRObject::GetLocationPtr(this);
    v22 = LocationPtr[1];
    v78 = *LocationPtr;
    v79 = v22;
    if (v22)
    {
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v76, "Input and output tensor shape must have the same rank");
    MIL::ValidationResult::ValidationResult(a2, &v78, 315, v76);
    if (v77 < 0)
    {
      operator delete(v76[0]);
    }

    v23 = v79;
    if (!v79)
    {
      return;
    }

LABEL_45:
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
    return;
  }

  std::string::basic_string[abi:ne200100]<0>(v80, "block_shape");
  ParameterValue = MIL::IROperation::GetParameterValue(this);
  v11 = MIL::IRValue::AsTensor(ParameterValue);
  if (v81 < 0)
  {
    operator delete(v80[0]);
  }

  v12 = (*(*v11 + 32))(v11);
  v13 = (*(*v12 + 96))(v12);
  v14 = MIL::IRDimension::AsConstant(**v13);
  v15 = MIL::IRTensorValueType::Rank(v6);
  if (v15 != (*(*v14 + 48))(v14) + 2)
  {
    v24 = MIL::IRObject::GetLocationPtr(this);
    v25 = v24[1];
    v74 = *v24;
    v75 = v25;
    if (v25)
    {
      atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "Input and output shape must have exactly two more dimensions than the block shape");
    MIL::ValidationResult::ValidationResult(a2, &v74, 315, __p);
    if (v73 < 0)
    {
      operator delete(__p[0]);
    }

    v23 = v75;
    if (!v75)
    {
      return;
    }

    goto LABEL_45;
  }

  Data = MIL::IRTensorValue::GetDataView<int>(v11);
  if (v17)
  {
    v18 = 4 * v17;
    v19 = 1;
    do
    {
      v20 = *Data++;
      v19 *= v20;
      v18 -= 4;
    }

    while (v18);
  }

  else
  {
    v19 = 1;
  }

  v26 = (*(*v6 + 96))(v6);
  v27 = (*(***v26 + 16))(**v26);
  v28 = (*(*v8 + 96))(v8);
  v29 = (*(***v28 + 16))(**v28);
  if (v27)
  {
    v30 = v29 == 0;
  }

  else
  {
    v30 = 1;
  }

  if (!v30)
  {
    v31 = v29;
    v32 = (*(*v27 + 48))(v27);
    if (v19 * (*(*v31 + 48))(v31) != v32)
    {
      v50 = MIL::IRObject::GetLocationPtr(this);
      v51 = v50[1];
      v70 = *v50;
      v71 = v51;
      if (v51)
      {
        atomic_fetch_add_explicit(&v51->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      std::string::basic_string[abi:ne200100]<0>(v68, "Input batch size must be equal to the output batch size times the total block size");
      MIL::ValidationResult::ValidationResult(a2, &v70, 315, v68);
      if (v69 < 0)
      {
        operator delete(v68[0]);
      }

      v23 = v71;
      if (!v71)
      {
        return;
      }

      goto LABEL_45;
    }
  }

  std::string::basic_string[abi:ne200100]<0>(v80, "crops");
  v33 = MIL::IROperation::GetParameterValue(this);
  v34 = MIL::IRValue::AsTensor(v33);
  if (v81 < 0)
  {
    operator delete(v80[0]);
  }

  v35 = (*(*v34 + 32))(v34);
  v36 = (*(*v35 + 96))(v35);
  v37 = MIL::IRDimension::AsConstant(**v36);
  v38 = MIL::IRDimension::AsConstant((*v36)[1]);
  if ((*(*v38 + 48))(v38) != 2)
  {
    v48 = MIL::IRObject::GetLocationPtr(this);
    v49 = v48[1];
    v66 = *v48;
    v67 = v49;
    if (v49)
    {
      atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v64, "'crops' must be an M x 2 tensor");
    MIL::ValidationResult::ValidationResult(a2, &v66, 315, v64);
    if (v65 < 0)
    {
      operator delete(v64[0]);
    }

    v23 = v67;
    if (!v67)
    {
      return;
    }

    goto LABEL_45;
  }

  v39 = (*(*v37 + 48))(v37);
  if (v39 != (*(*v14 + 48))(v14))
  {
    v52 = MIL::IRObject::GetLocationPtr(this);
    v53 = v52[1];
    v62 = *v52;
    v63 = v53;
    if (v53)
    {
      atomic_fetch_add_explicit(&v53->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v60, "'crops' must be an M x 2 tensor");
    MIL::ValidationResult::ValidationResult(a2, &v62, 315, v60);
    if (v61 < 0)
    {
      operator delete(v60[0]);
    }

    v23 = v63;
    if (!v63)
    {
      return;
    }

    goto LABEL_45;
  }

  v40 = MIL::IRTensorValue::GetDataView<int>(v34);
  if (v41 >= 2)
  {
    v43 = v40 + 1;
    v42 = *v40;
    v44 = 4 * v41 - 4;
    v45 = v40 + 1;
    do
    {
      v47 = *v45++;
      v46 = v47;
      if (v47 < v42)
      {
        v42 = v46;
        v40 = v43;
      }

      v43 = v45;
      v44 -= 4;
    }

    while (v44);
  }

  if ((*v40 & 0x80000000) == 0)
  {
    MIL::ValidationResult::ValidationResult(a2);
    return;
  }

  v54 = MIL::IRObject::GetLocationPtr(this);
  v55 = v54[1];
  v58 = *v54;
  v59 = v55;
  if (v55)
  {
    atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(v56, "'crops' values must all be >= 0");
  MIL::ValidationResult::ValidationResult(a2, &v58, 315, v56);
  if (v57 < 0)
  {
    operator delete(v56[0]);
  }

  v23 = v59;
  if (v59)
  {
    goto LABEL_45;
  }
}

void sub_2181E3718(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
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

void MIL::Operators::Common::ios15::CustomValidators::ValidateExpandDims(MIL::Operators::Common::ios15::CustomValidators *this@<X0>, MIL::ValidationResult *a2@<X8>)
{
  OutputType = MIL::IROperation::GetOutputType(this, 0);
  v6 = MIL::IRValueType::AsTensorType(OutputType);
  if (((*(*v6 + 104))(v6) & 1) == 0)
  {

    MIL::ValidationResult::ValidationResult(a2);
    return;
  }

  v7 = MIL::IRTensorValueType::Rank(v6);
  std::string::basic_string[abi:ne200100]<0>(&v28, "axes");
  ParameterValue = MIL::IROperation::GetParameterValue(this);
  v9 = MIL::IRValue::AsTensor(ParameterValue);
  if (v29 < 0)
  {
    operator delete(v28);
  }

  v10 = MIL::IRValue::AsTensor(v9);
  Data = MIL::IRTensorValue::GetDataView<int>(v10);
  if (v12)
  {
    v13 = Data;
    v14 = 4 * v12;
    while (MIL::Validation::IsAxisValidForRank(*v13, v7))
    {
      ++v13;
      v14 -= 4;
      if (!v14)
      {
        goto LABEL_8;
      }
    }

    LocationPtr = MIL::IRObject::GetLocationPtr(this);
    v19 = LocationPtr[1];
    v26 = *LocationPtr;
    v27 = v19;
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v24, "Each 'axis' in 'axes' must be within range (-output_rank - 1, output_rank) (exclusive)");
    MIL::ValidationResult::ValidationResult(a2, &v26, 315, v24);
    if (v25 < 0)
    {
      operator delete(v24[0]);
    }

    v17 = v27;
    if (!v27)
    {
      return;
    }

LABEL_18:
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    return;
  }

LABEL_8:
  if (MIL::Validation::HasUniqueElementsInAxes(v9, v7))
  {
    MIL::ValidationResult::ValidationResult(a2);
    return;
  }

  v15 = MIL::IRObject::GetLocationPtr(this);
  v16 = v15[1];
  v22 = *v15;
  v23 = v16;
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "Each 'axis' in 'axes' must correspond to a unique & different dimension");
  MIL::ValidationResult::ValidationResult(a2, &v22, 315, __p);
  if (v21 < 0)
  {
    operator delete(__p[0]);
  }

  v17 = v23;
  if (v23)
  {
    goto LABEL_18;
  }
}

void sub_2181E3A24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, std::__shared_weak_count *a25)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a25);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios15::CustomValidators::ValidateReshape(MIL::Operators::Common::ios15::CustomValidators *this@<X0>, MIL::ValidationResult *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, "shape");
  ParameterType = MIL::IROperation::TryGetParameterType(this, &__p, 0);
  v6 = MIL::IRValueType::AsTensorType(ParameterType);
  if (SHIBYTE(v46[0].__locale_) < 0)
  {
    operator delete(__p);
  }

  if ((*(*v6 + 104))(v6))
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "shape");
    ParameterValue = MIL::IROperation::TryGetParameterValue(this, &__p, 0);
    v8 = ParameterValue;
    if (SHIBYTE(v46[0].__locale_) < 0)
    {
      operator delete(__p);
      if (!v8)
      {
LABEL_38:
        MIL::ValidationResult::ValidationResult(a2);
        return;
      }
    }

    else if (!ParameterValue)
    {
      goto LABEL_38;
    }

    v12 = (*(*v6 + 16))(v6);
    if (v12 < 6)
    {
      v15 = v12;
      v16 = MIL::IRValue::AsTensor(v8);
      Data = MIL::IRTensorValue::GetDataView<int>(v16);
      v54 = v17;
      std::string::basic_string[abi:ne200100]<0>(&__p, "x");
      v18 = MIL::IROperation::GetParameterType(this);
      v19 = MIL::IRValueType::AsTensorType(v18);
      if (SHIBYTE(v46[0].__locale_) < 0)
      {
        operator delete(__p);
      }

      if (v54)
      {
        v20 = 4 * v54;
        v21 = Data;
        while (*v21 != -1)
        {
          ++v21;
          v20 -= 4;
          if (!v20)
          {
            goto LABEL_32;
          }
        }
      }

      else
      {
        v21 = Data;
      }

      if (v21 == (Data + 4 * v54) || MIL::IRTensorValueType::Rank(v19) != v15 || ((*(*v19 + 104))(v19) & 1) != 0)
      {
LABEL_32:
        if (!(*(*v19 + 104))(v19) || !MIL::Validation::IsZeroOutOfRangeForReshape(&Data, v19))
        {
          goto LABEL_38;
        }

        v22 = Data;
        v23 = 4 * v54;
        while (v23)
        {
          v24 = *(Data + v23 - 4);
          v23 -= 4;
          if (!v24)
          {
            v25 = Data + v23 + 4;
            goto LABEL_41;
          }
        }

        v25 = Data;
LABEL_41:
        std::ostringstream::basic_ostringstream[abi:ne200100](&__p);
        v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Can only reshape to a shape containing 0 when shape[i]==0 && i<rank(X).  Index of 0: ", 85);
        std::to_string(&v43, (v25 - v22) >> 2);
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
          size = HIBYTE(v43.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v43.__r_.__value_.__l.__size_;
        }

        v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, v27, size);
        v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, ", rank of X: ", 13);
        v31 = MIL::IRTensorValueType::Rank(v19);
        std::to_string(&v42, v31);
        if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v32 = &v42;
        }

        else
        {
          v32 = v42.__r_.__value_.__r.__words[0];
        }

        if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v33 = HIBYTE(v42.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v33 = v42.__r_.__value_.__l.__size_;
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, v32, v33);
        if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v42.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v43.__r_.__value_.__l.__data_);
        }

        LocationPtr = MIL::IRObject::GetLocationPtr(this);
        v35 = LocationPtr[1];
        v40 = *LocationPtr;
        v41 = v35;
        if (v35)
        {
          atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        std::stringbuf::str();
        MIL::ValidationResult::ValidationResult(a2, &v40, 315, &v38);
        if (v39 < 0)
        {
          operator delete(v38);
        }

        if (v41)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v41);
        }

        __p = *MEMORY[0x277D82828];
        *(&__p + *(__p - 3)) = *(MEMORY[0x277D82828] + 24);
        v45 = MEMORY[0x277D82878] + 16;
        if (v47 < 0)
        {
          operator delete(v46[7].__locale_);
        }

        v45 = MEMORY[0x277D82868] + 16;
        std::locale::~locale(v46);
        std::ostream::~ostream();
        MEMORY[0x21CEAFDA0](&v48);
      }

      else
      {
        v36 = MIL::IRObject::GetLocationPtr(this);
        v37 = v36[1];
        v51 = *v36;
        v52 = v37;
        if (v37)
        {
          atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        std::string::basic_string[abi:ne200100]<0>(v49, "Unable to reshape tensors of non-fixed rank");
        MIL::ValidationResult::ValidationResult(a2, &v51, 315, v49);
        if (v50 < 0)
        {
          operator delete(v49[0]);
        }

        v11 = v52;
        if (v52)
        {
          goto LABEL_20;
        }
      }
    }

    else
    {
      v13 = MIL::IRObject::GetLocationPtr(this);
      v14 = v13[1];
      v57 = *v13;
      v58 = v14;
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      std::string::basic_string[abi:ne200100]<0>(v55, "Rank of the shape parameter must be between 0 and 5 (inclusive) in reshape");
      MIL::ValidationResult::ValidationResult(a2, &v57, 315, v55);
      if (v56 < 0)
      {
        operator delete(v55[0]);
      }

      v11 = v58;
      if (v58)
      {
LABEL_20:
        std::__shared_weak_count::__release_shared[abi:ne200100](v11);
      }
    }
  }

  else
  {
    v9 = MIL::IRObject::GetLocationPtr(this);
    v10 = v9[1];
    v61 = *v9;
    v62 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v59, "The target shape cannot have non-fixed rank in reshape");
    MIL::ValidationResult::ValidationResult(a2, &v61, 315, v59);
    if (v60 < 0)
    {
      operator delete(v59[0]);
    }

    v11 = v62;
    if (v62)
    {
      goto LABEL_20;
    }
  }
}

void sub_2181E401C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (*(v35 - 177) < 0)
  {
    operator delete(*(v35 - 200));
  }

  v37 = *(v35 - 168);
  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios15::CustomValidators::ValidateSlidingWindows(MIL::Operators::Common::ios15::CustomValidators *this@<X0>, MIL::ValidationResult *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "x");
  ParameterType = MIL::IROperation::GetParameterType(this);
  v6 = MIL::IRValueType::AsTensorType(ParameterType);
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  if (((*(*v6 + 104))(v6) & 1) == 0)
  {
    goto LABEL_7;
  }

  v7 = MIL::IRTensorValueType::Rank(v6);
  std::string::basic_string[abi:ne200100]<0>(__p, "axis");
  ParameterValue = MIL::IROperation::GetParameterValue(this);
  v9 = MIL::IRValue::GetScalar<int>(ParameterValue);
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  if (!MIL::Validation::IsAxisValidForRank(v9, v7))
  {
    LocationPtr = MIL::IRObject::GetLocationPtr(this);
    v11 = LocationPtr[1];
    v14 = *LocationPtr;
    v15 = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v12, "Axis must be within range (-input_rank - 1, input_rank) (exclusive)");
    MIL::ValidationResult::ValidationResult(a2, &v14, 315, v12);
    if (v13 < 0)
    {
      operator delete(v12[0]);
    }

    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }
  }

  else
  {
LABEL_7:
    MIL::ValidationResult::ValidationResult(a2);
  }
}

void sub_2181E4288(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::__shared_weak_count *a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
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

void MIL::Operators::Common::ios15::CustomValidators::ValidateSpaceToBatch(MIL::Operators::Common::ios15::CustomValidators *this@<X0>, MIL::ValidationResult *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(v80, "x");
  ParameterType = MIL::IROperation::GetParameterType(this);
  v6 = MIL::IRValueType::AsTensorType(ParameterType);
  if (v81 < 0)
  {
    operator delete(v80[0]);
  }

  OutputType = MIL::IROperation::GetOutputType(this, 0);
  v8 = MIL::IRValueType::AsTensorType(OutputType);
  v9 = MIL::IRTensorValueType::Rank(v6);
  if (v9 != MIL::IRTensorValueType::Rank(v8))
  {
    LocationPtr = MIL::IRObject::GetLocationPtr(this);
    v22 = LocationPtr[1];
    v78 = *LocationPtr;
    v79 = v22;
    if (v22)
    {
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v76, "Input and output tensor shape must have the same rank");
    MIL::ValidationResult::ValidationResult(a2, &v78, 315, v76);
    if (v77 < 0)
    {
      operator delete(v76[0]);
    }

    v23 = v79;
    if (!v79)
    {
      return;
    }

LABEL_45:
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
    return;
  }

  std::string::basic_string[abi:ne200100]<0>(v80, "block_shape");
  ParameterValue = MIL::IROperation::GetParameterValue(this);
  v11 = MIL::IRValue::AsTensor(ParameterValue);
  if (v81 < 0)
  {
    operator delete(v80[0]);
  }

  v12 = (*(*v11 + 32))(v11);
  v13 = (*(*v12 + 96))(v12);
  v14 = MIL::IRDimension::AsConstant(**v13);
  v15 = MIL::IRTensorValueType::Rank(v6);
  if (v15 != (*(*v14 + 48))(v14) + 2)
  {
    v24 = MIL::IRObject::GetLocationPtr(this);
    v25 = v24[1];
    v74 = *v24;
    v75 = v25;
    if (v25)
    {
      atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "Input and output shape must have exactly two more dimensions than the block shape");
    MIL::ValidationResult::ValidationResult(a2, &v74, 315, __p);
    if (v73 < 0)
    {
      operator delete(__p[0]);
    }

    v23 = v75;
    if (!v75)
    {
      return;
    }

    goto LABEL_45;
  }

  Data = MIL::IRTensorValue::GetDataView<int>(v11);
  if (v17)
  {
    v18 = 4 * v17;
    v19 = 1;
    do
    {
      v20 = *Data++;
      v19 *= v20;
      v18 -= 4;
    }

    while (v18);
  }

  else
  {
    v19 = 1;
  }

  v26 = (*(*v6 + 96))(v6);
  v27 = (*(***v26 + 16))(**v26);
  v28 = (*(*v8 + 96))(v8);
  v29 = (*(***v28 + 16))(**v28);
  if (v27)
  {
    v30 = v29 == 0;
  }

  else
  {
    v30 = 1;
  }

  if (!v30)
  {
    v31 = v29;
    v32 = v19 * (*(*v27 + 48))(v27);
    if (v32 != (*(*v31 + 48))(v31))
    {
      v50 = MIL::IRObject::GetLocationPtr(this);
      v51 = v50[1];
      v70 = *v50;
      v71 = v51;
      if (v51)
      {
        atomic_fetch_add_explicit(&v51->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      std::string::basic_string[abi:ne200100]<0>(v68, "Input batch size must be equal to the output batch size times the total block size");
      MIL::ValidationResult::ValidationResult(a2, &v70, 315, v68);
      if (v69 < 0)
      {
        operator delete(v68[0]);
      }

      v23 = v71;
      if (!v71)
      {
        return;
      }

      goto LABEL_45;
    }
  }

  std::string::basic_string[abi:ne200100]<0>(v80, "paddings");
  v33 = MIL::IROperation::GetParameterValue(this);
  v34 = MIL::IRValue::AsTensor(v33);
  if (v81 < 0)
  {
    operator delete(v80[0]);
  }

  v35 = (*(*v34 + 32))(v34);
  v36 = (*(*v35 + 96))(v35);
  v37 = MIL::IRDimension::AsConstant(**v36);
  v38 = MIL::IRDimension::AsConstant((*v36)[1]);
  if ((*(*v38 + 48))(v38) != 2)
  {
    v48 = MIL::IRObject::GetLocationPtr(this);
    v49 = v48[1];
    v66 = *v48;
    v67 = v49;
    if (v49)
    {
      atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v64, "'paddings' must be an M x 2 tensor");
    MIL::ValidationResult::ValidationResult(a2, &v66, 315, v64);
    if (v65 < 0)
    {
      operator delete(v64[0]);
    }

    v23 = v67;
    if (!v67)
    {
      return;
    }

    goto LABEL_45;
  }

  v39 = (*(*v37 + 48))(v37);
  if (v39 != (*(*v14 + 48))(v14))
  {
    v52 = MIL::IRObject::GetLocationPtr(this);
    v53 = v52[1];
    v62 = *v52;
    v63 = v53;
    if (v53)
    {
      atomic_fetch_add_explicit(&v53->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v60, "'paddings' must be an M x 2 tensor");
    MIL::ValidationResult::ValidationResult(a2, &v62, 315, v60);
    if (v61 < 0)
    {
      operator delete(v60[0]);
    }

    v23 = v63;
    if (!v63)
    {
      return;
    }

    goto LABEL_45;
  }

  v40 = MIL::IRTensorValue::GetDataView<int>(v34);
  if (v41 >= 2)
  {
    v43 = v40 + 1;
    v42 = *v40;
    v44 = 4 * v41 - 4;
    v45 = v40 + 1;
    do
    {
      v47 = *v45++;
      v46 = v47;
      if (v47 < v42)
      {
        v42 = v46;
        v40 = v43;
      }

      v43 = v45;
      v44 -= 4;
    }

    while (v44);
  }

  if ((*v40 & 0x80000000) == 0)
  {
    MIL::ValidationResult::ValidationResult(a2);
    return;
  }

  v54 = MIL::IRObject::GetLocationPtr(this);
  v55 = v54[1];
  v58 = *v54;
  v59 = v55;
  if (v55)
  {
    atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(v56, "'paddings' values must all be >= 0");
  MIL::ValidationResult::ValidationResult(a2, &v58, 315, v56);
  if (v57 < 0)
  {
    operator delete(v56[0]);
  }

  v23 = v59;
  if (v59)
  {
    goto LABEL_45;
  }
}

void sub_2181E4958(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
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

void MIL::Operators::Common::ios15::CustomValidators::ValidateSqueeze(MIL::Operators::Common::ios15::CustomValidators *this@<X0>, MIL::ValidationResult *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(v30, "axes");
  IsParameterSet = MIL::IROperation::IsParameterSet(this, v30);
  v6 = IsParameterSet;
  if (v31 < 0)
  {
    operator delete(v30[0]);
    if (!v6)
    {
      goto LABEL_15;
    }
  }

  else if (!IsParameterSet)
  {
    goto LABEL_15;
  }

  std::string::basic_string[abi:ne200100]<0>(v30, "x");
  ParameterType = MIL::IROperation::GetParameterType(this);
  v8 = MIL::IRValueType::AsTensorType(ParameterType);
  if (v31 < 0)
  {
    operator delete(v30[0]);
  }

  if (((*(*v8 + 104))(v8) & 1) == 0)
  {
    goto LABEL_15;
  }

  v9 = MIL::IRTensorValueType::Rank(v8);
  std::string::basic_string[abi:ne200100]<0>(v30, "axes");
  ParameterValue = MIL::IROperation::GetParameterValue(this);
  v11 = MIL::IRValue::AsTensor(ParameterValue);
  if (v31 < 0)
  {
    operator delete(v30[0]);
  }

  v12 = MIL::IRValue::AsTensor(v11);
  Data = MIL::IRTensorValue::GetDataView<int>(v12);
  if (v14)
  {
    v15 = Data;
    v16 = 4 * v14;
    while (MIL::Validation::IsAxisValidForRank(*v15, v9))
    {
      ++v15;
      v16 -= 4;
      if (!v16)
      {
        goto LABEL_14;
      }
    }

    LocationPtr = MIL::IRObject::GetLocationPtr(this);
    v21 = LocationPtr[1];
    v28 = *LocationPtr;
    v29 = v21;
    if (v21)
    {
      atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v26, "Each 'axis' in 'axes' must be within range (-input_rank - 1, input_rank) (exclusive)");
    MIL::ValidationResult::ValidationResult(a2, &v28, 315, v26);
    if (v27 < 0)
    {
      operator delete(v26[0]);
    }

    v19 = v29;
    if (v29)
    {
      goto LABEL_28;
    }

    return;
  }

LABEL_14:
  if (MIL::Validation::HasUniqueElementsInAxes(v11, v9))
  {
LABEL_15:
    MIL::ValidationResult::ValidationResult(a2);
    return;
  }

  v17 = MIL::IRObject::GetLocationPtr(this);
  v18 = v17[1];
  v24 = *v17;
  v25 = v18;
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "Each 'axis' in 'axes' must correspond to a unique & different dimension");
  MIL::ValidationResult::ValidationResult(a2, &v24, 315, __p);
  if (v23 < 0)
  {
    operator delete(__p[0]);
  }

  v19 = v25;
  if (v25)
  {
LABEL_28:
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }
}

void sub_2181E4CA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, std::__shared_weak_count *a25)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a25);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios15::CustomValidators::ValidateTranspose(MIL::Operators::Common::ios15::CustomValidators *this@<X0>, MIL::ValidationResult *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(&v36, "x");
  ParameterType = MIL::IROperation::GetParameterType(this);
  v6 = MIL::IRValueType::AsTensorType(ParameterType);
  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }

  if (((*(*v6 + 104))(v6) & 1) == 0)
  {
    goto LABEL_13;
  }

  v7 = MIL::IRTensorValueType::Rank(v6);
  std::string::basic_string[abi:ne200100]<0>(&v36, "perm");
  ParameterValue = MIL::IROperation::GetParameterValue(this);
  v9 = MIL::IRValue::AsTensor(ParameterValue);
  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }

  v10 = (*(*v9 + 32))(v9);
  v11 = (*(*v10 + 24))(v10);
  if (MIL::IRTensorValueType::Rank(v11) == 1)
  {
    v12 = (*(*v11 + 96))(v11);
    v13 = MIL::IRDimension::AsConstant(**v12);
    if ((*(*v13 + 48))(v13) == v7)
    {
      v14 = MIL::IRValue::AsTensor(v9);
      Data = MIL::IRTensorValue::GetDataView<int>(v14);
      if (v16)
      {
        v17 = Data;
        v18 = 4 * v16;
        while (MIL::Validation::IsAxisValidForRank(*v17, v7))
        {
          ++v17;
          v18 -= 4;
          if (!v18)
          {
            goto LABEL_12;
          }
        }

        (*(*this + 56))(this);
        std::operator+<char>();
        LocationPtr = MIL::IRObject::GetLocationPtr(this);
        v24 = LocationPtr[1];
        v30 = *LocationPtr;
        v31 = v24;
        if (v24)
        {
          atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v29, v36.__r_.__value_.__l.__data_, v36.__r_.__value_.__l.__size_);
        }

        else
        {
          v29 = v36;
        }

        MIL::ValidationResult::ValidationResult(a2, &v30, 315, &v29);
        if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v29.__r_.__value_.__l.__data_);
        }

        v25 = v31;
        if (!v31)
        {
          goto LABEL_34;
        }

LABEL_33:
        std::__shared_weak_count::__release_shared[abi:ne200100](v25);
LABEL_34:
        if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v36.__r_.__value_.__l.__data_);
        }

        return;
      }

LABEL_12:
      if (!MIL::Validation::HasUniqueElementsInAxes(v9, v7))
      {
        (*(*this + 56))(this);
        std::operator+<char>();
        v21 = MIL::IRObject::GetLocationPtr(this);
        v22 = v21[1];
        v27 = *v21;
        v28 = v22;
        if (v22)
        {
          atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v26, v36.__r_.__value_.__l.__data_, v36.__r_.__value_.__l.__size_);
        }

        else
        {
          v26 = v36;
        }

        MIL::ValidationResult::ValidationResult(a2, &v27, 315, &v26);
        if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v26.__r_.__value_.__l.__data_);
        }

        v25 = v28;
        if (!v28)
        {
          goto LABEL_34;
        }

        goto LABEL_33;
      }

LABEL_13:
      MIL::ValidationResult::ValidationResult(a2);
      return;
    }
  }

  v19 = MIL::IRObject::GetLocationPtr(this);
  v20 = v19[1];
  v34 = *v19;
  v35 = v20;
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "Perm must have shape [rank of x].");
  MIL::ValidationResult::ValidationResult(a2, &v34, 315, __p);
  if (v33 < 0)
  {
    operator delete(__p[0]);
  }

  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  }
}

void sub_2181E50F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a26);
  }

  if (*(v32 - 65) < 0)
  {
    operator delete(*(v32 - 88));
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios15::CustomValidators::ValidateReverse(MIL::Operators::Common::ios15::CustomValidators *this@<X0>, MIL::ValidationResult *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(v31, "x");
  ParameterType = MIL::IROperation::GetParameterType(this);
  v6 = MIL::IRValueType::AsTensorType(ParameterType);
  if (v32 < 0)
  {
    operator delete(v31[0]);
  }

  if (((*(*v6 + 104))(v6) & 1) == 0)
  {
    LocationPtr = MIL::IRObject::GetLocationPtr(this);
    v11 = LocationPtr[1];
    v29 = *LocationPtr;
    v30 = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "Non-fixed rank not supported");
    MIL::ValidationResult::ValidationResult(a2, &v29, 315, __p);
    if (v28 < 0)
    {
      operator delete(__p[0]);
    }

    v12 = v30;
    if (!v30)
    {
      return;
    }

LABEL_12:
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    return;
  }

  v7 = MIL::IRTensorValueType::Rank(v6);
  std::string::basic_string[abi:ne200100]<0>(v31, "axes");
  IsParameterSet = MIL::IROperation::IsParameterSet(this, v31);
  v9 = IsParameterSet;
  if (v32 < 0)
  {
    operator delete(v31[0]);
    if (!v9)
    {
      goto LABEL_24;
    }
  }

  else if (!IsParameterSet)
  {
    goto LABEL_24;
  }

  std::string::basic_string[abi:ne200100]<0>(v31, "axes");
  ParameterValue = MIL::IROperation::GetParameterValue(this);
  v14 = MIL::IRValue::AsTensor(ParameterValue);
  Data = MIL::IRTensorValue::GetDataView<int>(v14);
  v17 = v15;
  if (v32 < 0)
  {
    operator delete(v31[0]);
    if (v17)
    {
      goto LABEL_18;
    }

LABEL_24:
    MIL::ValidationResult::ValidationResult(a2);
    return;
  }

  if (!v15)
  {
    goto LABEL_24;
  }

LABEL_18:
  v18 = 4 * v17;
  while (1)
  {
    v19 = *Data;
    if (v19 < -v7 || v7 <= v19)
    {
      break;
    }

    ++Data;
    v18 -= 4;
    if (!v18)
    {
      goto LABEL_24;
    }
  }

  v21 = MIL::IRObject::GetLocationPtr(this);
  v22 = v21[1];
  v25 = *v21;
  v26 = v22;
  if (v22)
  {
    atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(v23, "Axes must be within range [-rank, rank)");
  MIL::ValidationResult::ValidationResult(a2, &v25, 315, v23);
  if (v24 < 0)
  {
    operator delete(v23[0]);
  }

  v12 = v26;
  if (v26)
  {
    goto LABEL_12;
  }
}

void sub_2181E53BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25)
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

void MIL::Operators::Common::ios15::CustomValidators::ValidateConcat(MIL::Operators::Common::ios15::CustomValidators *this@<X0>, MIL::ValidationResult *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(&v64, "values");
  ParameterType = MIL::IROperation::GetParameterType(this);
  v6 = MIL::IRValueType::AsTensorType(ParameterType);
  if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v64.__r_.__value_.__l.__data_);
  }

  if (((*(*v6 + 104))(v6) & 1) == 0)
  {
    goto LABEL_26;
  }

  v7 = MIL::IRTensorValueType::Rank(v6);
  std::string::basic_string[abi:ne200100]<0>(&v64, "axis");
  ParameterValue = MIL::IROperation::GetParameterValue(this);
  v9 = MIL::IRValue::GetScalar<int>(ParameterValue);
  if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v64.__r_.__value_.__l.__data_);
  }

  if (MIL::IRTensorValueType::IsScalar(v6) && v9)
  {
    std::to_string(&v62, v9);
    v10 = std::string::insert(&v62, 0, "Axis (");
    v11 = *&v10->__r_.__value_.__l.__data_;
    v63.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
    *&v63.__r_.__value_.__l.__data_ = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    v12 = std::string::append(&v63, ") must be 0 when inputs are scalars for ");
    v13 = *&v12->__r_.__value_.__l.__data_;
    v64.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
    *&v64.__r_.__value_.__l.__data_ = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    v14 = (*(*this + 56))(this);
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

    v18 = std::string::append(&v64, v16, v17);
    v19 = v18->__r_.__value_.__r.__words[0];
    size = v18->__r_.__value_.__l.__size_;
    LODWORD(v57.__r_.__value_.__l.__data_) = v18->__r_.__value_.__r.__words[2];
    *(v57.__r_.__value_.__r.__words + 3) = *(&v18->__r_.__value_.__r.__words[2] + 3);
    v21 = SHIBYTE(v18->__r_.__value_.__r.__words[2]);
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v64.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v63.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v62.__r_.__value_.__l.__data_);
    }

    LocationPtr = MIL::IRObject::GetLocationPtr(this);
    v23 = LocationPtr[1];
    v60 = *LocationPtr;
    v61 = v23;
    if (v23)
    {
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v21 < 0)
    {
      std::string::__init_copy_ctor_external(&v59, v19, size);
    }

    else
    {
      v59.__r_.__value_.__r.__words[0] = v19;
      v59.__r_.__value_.__l.__size_ = size;
      LODWORD(v59.__r_.__value_.__r.__words[2]) = v57.__r_.__value_.__l.__data_;
      *(&v59.__r_.__value_.__r.__words[2] + 3) = *(v57.__r_.__value_.__r.__words + 3);
      *(&v59.__r_.__value_.__s + 23) = v21;
    }

    MIL::ValidationResult::ValidationResult(a2, &v60, 315, &v59);
    if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v59.__r_.__value_.__l.__data_);
    }

    v24 = v61;
    if (!v61)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  if (MIL::IRTensorValueType::IsScalar(v6) || MIL::Validation::IsAxisValidForRank(v9, v7))
  {
LABEL_26:
    MIL::ValidationResult::ValidationResult(a2);
    return;
  }

  std::to_string(&v54, v9);
  v25 = std::string::insert(&v54, 0, "Axis (");
  v26 = *&v25->__r_.__value_.__l.__data_;
  v55.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
  *&v55.__r_.__value_.__l.__data_ = v26;
  v25->__r_.__value_.__l.__size_ = 0;
  v25->__r_.__value_.__r.__words[2] = 0;
  v25->__r_.__value_.__r.__words[0] = 0;
  v27 = std::string::append(&v55, ") must be within range [-");
  v28 = *&v27->__r_.__value_.__l.__data_;
  v56.__r_.__value_.__r.__words[2] = v27->__r_.__value_.__r.__words[2];
  *&v56.__r_.__value_.__l.__data_ = v28;
  v27->__r_.__value_.__l.__size_ = 0;
  v27->__r_.__value_.__r.__words[2] = 0;
  v27->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v53, v7);
  if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v29 = &v53;
  }

  else
  {
    v29 = v53.__r_.__value_.__r.__words[0];
  }

  if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v30 = HIBYTE(v53.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v30 = v53.__r_.__value_.__l.__size_;
  }

  v31 = std::string::append(&v56, v29, v30);
  v32 = *&v31->__r_.__value_.__l.__data_;
  v57.__r_.__value_.__r.__words[2] = v31->__r_.__value_.__r.__words[2];
  *&v57.__r_.__value_.__l.__data_ = v32;
  v31->__r_.__value_.__l.__size_ = 0;
  v31->__r_.__value_.__r.__words[2] = 0;
  v31->__r_.__value_.__r.__words[0] = 0;
  v33 = std::string::append(&v57, ", ");
  v34 = *&v33->__r_.__value_.__l.__data_;
  v62.__r_.__value_.__r.__words[2] = v33->__r_.__value_.__r.__words[2];
  *&v62.__r_.__value_.__l.__data_ = v34;
  v33->__r_.__value_.__l.__size_ = 0;
  v33->__r_.__value_.__r.__words[2] = 0;
  v33->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v52, v7);
  if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v35 = &v52;
  }

  else
  {
    v35 = v52.__r_.__value_.__r.__words[0];
  }

  if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v36 = HIBYTE(v52.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v36 = v52.__r_.__value_.__l.__size_;
  }

  v37 = std::string::append(&v62, v35, v36);
  v38 = *&v37->__r_.__value_.__l.__data_;
  v63.__r_.__value_.__r.__words[2] = v37->__r_.__value_.__r.__words[2];
  *&v63.__r_.__value_.__l.__data_ = v38;
  v37->__r_.__value_.__l.__size_ = 0;
  v37->__r_.__value_.__r.__words[2] = 0;
  v37->__r_.__value_.__r.__words[0] = 0;
  v39 = std::string::append(&v63, ") for ");
  v40 = *&v39->__r_.__value_.__l.__data_;
  v64.__r_.__value_.__r.__words[2] = v39->__r_.__value_.__r.__words[2];
  *&v64.__r_.__value_.__l.__data_ = v40;
  v39->__r_.__value_.__l.__size_ = 0;
  v39->__r_.__value_.__r.__words[2] = 0;
  v39->__r_.__value_.__r.__words[0] = 0;
  v41 = (*(*this + 56))(this);
  v42 = *(v41 + 23);
  if (v42 >= 0)
  {
    v43 = v41;
  }

  else
  {
    v43 = *v41;
  }

  if (v42 >= 0)
  {
    v44 = *(v41 + 23);
  }

  else
  {
    v44 = *(v41 + 8);
  }

  v45 = std::string::append(&v64, v43, v44);
  v19 = v45->__r_.__value_.__r.__words[0];
  v46 = v45->__r_.__value_.__l.__size_;
  v58[0] = v45->__r_.__value_.__r.__words[2];
  *(v58 + 3) = *(&v45->__r_.__value_.__r.__words[2] + 3);
  v21 = SHIBYTE(v45->__r_.__value_.__r.__words[2]);
  v45->__r_.__value_.__l.__size_ = 0;
  v45->__r_.__value_.__r.__words[2] = 0;
  v45->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v64.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v63.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v52.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v62.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v57.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v53.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v56.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v55.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v54.__r_.__value_.__l.__data_);
  }

  v47 = MIL::IRObject::GetLocationPtr(this);
  v48 = v47[1];
  v50 = *v47;
  v51 = v48;
  if (v48)
  {
    atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v21 < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v19, v46);
  }

  else
  {
    __p.__r_.__value_.__r.__words[0] = v19;
    __p.__r_.__value_.__l.__size_ = v46;
    LODWORD(__p.__r_.__value_.__r.__words[2]) = v58[0];
    *(&__p.__r_.__value_.__r.__words[2] + 3) = *(v58 + 3);
    *(&__p.__r_.__value_.__s + 23) = v21;
  }

  MIL::ValidationResult::ValidationResult(a2, &v50, 315, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v24 = v51;
  if (!v51)
  {
    goto LABEL_32;
  }

LABEL_31:
  std::__shared_weak_count::__release_shared[abi:ne200100](v24);
LABEL_32:
  if (v21 < 0)
  {
    operator delete(v19);
  }
}

void sub_2181E5998(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::__shared_weak_count *a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  if (v55 < 0)
  {
    operator delete(v54);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios15::CustomValidators::ValidateSplit(MIL::Operators::Common::ios15::CustomValidators *this@<X0>, MIL::ValidationResult *a2@<X8>)
{
  LocationPtr = MIL::IRObject::GetLocationPtr(this);
  v6 = LocationPtr[1];
  v18[0] = *LocationPtr;
  v18[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(v16, "num_splits");
  ParameterValue = MIL::IROperation::TryGetParameterValue(this, v16, 0);
  std::string::basic_string[abi:ne200100]<0>(&v14, "x");
  ParameterType = MIL::IROperation::GetParameterType(this);
  v9 = MIL::IRValueType::AsTensorType(ParameterType);
  std::string::basic_string[abi:ne200100]<0>(&__p, "axis");
  v10 = MIL::IROperation::GetParameterValue(this);
  v11 = MIL::IRValue::GetScalar<int>(v10);
  if (v13 < 0)
  {
    operator delete(__p);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  if (v17 < 0)
  {
    operator delete(v16[0]);
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void sub_2181E5C54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios15::anonymous namespace::ValidateSplitHelper(uint64_t *a1@<X0>, const void *a2@<X1>, MIL::IRTensorValueType *a3@<X2>, MIL::Validation *a4@<X3>, MIL::ValidationResult *a5@<X8>)
{
  if (a2 && MIL::IRValue::GetScalar<int>(a2) <= 1)
  {
    v9 = a1[1];
    v44 = *a1;
    v45 = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v42, "Invalid num_splits (must be at least 2)");
    MIL::ValidationResult::ValidationResult(a5, &v44, 315, v42);
    if (v43 < 0)
    {
      operator delete(v42[0]);
    }

    if (v45)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v45);
    }
  }

  else if (((*(*a3 + 104))(a3) & 1) != 0 && (v10 = MIL::IRTensorValueType::Rank(a3), !MIL::Validation::IsAxisValidForRank(a4, v10)))
  {
    std::to_string(&v35, a4);
    v11 = std::string::insert(&v35, 0, "Axis (");
    v12 = *&v11->__r_.__value_.__l.__data_;
    v36.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
    *&v36.__r_.__value_.__l.__data_ = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    v13 = std::string::append(&v36, ") must be within range [-");
    v14 = *&v13->__r_.__value_.__l.__data_;
    v37.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
    *&v37.__r_.__value_.__l.__data_ = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v34, v10);
    if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v15 = &v34;
    }

    else
    {
      v15 = v34.__r_.__value_.__r.__words[0];
    }

    if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v34.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v34.__r_.__value_.__l.__size_;
    }

    v17 = std::string::append(&v37, v15, size);
    v18 = *&v17->__r_.__value_.__l.__data_;
    v38.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
    *&v38.__r_.__value_.__l.__data_ = v18;
    v17->__r_.__value_.__l.__size_ = 0;
    v17->__r_.__value_.__r.__words[2] = 0;
    v17->__r_.__value_.__r.__words[0] = 0;
    v19 = std::string::append(&v38, ", ");
    v20 = *&v19->__r_.__value_.__l.__data_;
    v39.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
    *&v39.__r_.__value_.__l.__data_ = v20;
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v33, v10);
    if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v21 = &v33;
    }

    else
    {
      v21 = v33.__r_.__value_.__r.__words[0];
    }

    if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v22 = HIBYTE(v33.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v22 = v33.__r_.__value_.__l.__size_;
    }

    v23 = std::string::append(&v39, v21, v22);
    v24 = *&v23->__r_.__value_.__l.__data_;
    v40.__r_.__value_.__r.__words[2] = v23->__r_.__value_.__r.__words[2];
    *&v40.__r_.__value_.__l.__data_ = v24;
    v23->__r_.__value_.__l.__size_ = 0;
    v23->__r_.__value_.__r.__words[2] = 0;
    v23->__r_.__value_.__r.__words[0] = 0;
    v25 = std::string::append(&v40, ") for split");
    v26 = v25->__r_.__value_.__r.__words[0];
    v27 = v25->__r_.__value_.__l.__size_;
    v41[0] = v25->__r_.__value_.__r.__words[2];
    *(v41 + 3) = *(&v25->__r_.__value_.__r.__words[2] + 3);
    v28 = SHIBYTE(v25->__r_.__value_.__r.__words[2]);
    v25->__r_.__value_.__l.__size_ = 0;
    v25->__r_.__value_.__r.__words[2] = 0;
    v25->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v40.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v33.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v39.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v38.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v34.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v37.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v36.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v35.__r_.__value_.__l.__data_);
    }

    v29 = a1[1];
    v31 = *a1;
    v32 = v29;
    if (v29)
    {
      atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v28 < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v26, v27);
    }

    else
    {
      __p.__r_.__value_.__r.__words[0] = v26;
      __p.__r_.__value_.__l.__size_ = v27;
      LODWORD(__p.__r_.__value_.__r.__words[2]) = v41[0];
      *(&__p.__r_.__value_.__r.__words[2] + 3) = *(v41 + 3);
      *(&__p.__r_.__value_.__s + 23) = v28;
    }

    MIL::ValidationResult::ValidationResult(a5, &v31, 315, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v32)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v32);
    }

    if (v28 < 0)
    {
      operator delete(v26);
    }
  }

  else
  {

    MIL::ValidationResult::ValidationResult(a5);
  }
}

void sub_2181E6040(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::__shared_weak_count *a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  if (v55 < 0)
  {
    operator delete(v54);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios15::CustomValidators::ValidateStack(MIL::Operators::Common::ios15::CustomValidators *this@<X0>, MIL::ValidationResult *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(&v56, "values");
  ParameterType = MIL::IROperation::GetParameterType(this);
  v6 = MIL::IRValueType::AsTensorType(ParameterType);
  if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v56.__r_.__value_.__l.__data_);
  }

  if (((*(*v6 + 104))(v6) & 1) == 0)
  {
    goto LABEL_9;
  }

  std::string::basic_string[abi:ne200100]<0>(&v56, "values");
  v7 = MIL::Validation::VariadicTensorsDTypesMatch(this, &v56);
  v8 = v7;
  if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v56.__r_.__value_.__l.__data_);
    if (v8)
    {
      goto LABEL_6;
    }

LABEL_12:
    LocationPtr = MIL::IRObject::GetLocationPtr(this);
    v13 = LocationPtr[1];
    v54 = *LocationPtr;
    v55 = v13;
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v52, "Inputs must have the same datatype");
    MIL::ValidationResult::ValidationResult(a2, &v54, 319, v52);
    if (v53 < 0)
    {
      operator delete(v52[0]);
    }

    if (v55)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v55);
    }

    return;
  }

  if (!v7)
  {
    goto LABEL_12;
  }

LABEL_6:
  v9 = MIL::IRTensorValueType::Rank(v6);
  std::string::basic_string[abi:ne200100]<0>(&v56, "axis");
  ParameterValue = MIL::IROperation::GetParameterValue(this);
  v11 = MIL::IRValue::GetScalar<int>(ParameterValue);
  if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v56.__r_.__value_.__l.__data_);
  }

  if (MIL::Validation::IsAxisValidForRank(v11, v9 + 1))
  {
LABEL_9:
    MIL::ValidationResult::ValidationResult(a2);
    return;
  }

  std::to_string(&v45, v11);
  v14 = std::string::insert(&v45, 0, "Axis (");
  v15 = *&v14->__r_.__value_.__l.__data_;
  v46.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
  *&v46.__r_.__value_.__l.__data_ = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  v16 = std::string::append(&v46, ") must be within range [-");
  v17 = *&v16->__r_.__value_.__l.__data_;
  v47.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
  *&v47.__r_.__value_.__l.__data_ = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v44, v9);
  if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v18 = &v44;
  }

  else
  {
    v18 = v44.__r_.__value_.__r.__words[0];
  }

  if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v44.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v44.__r_.__value_.__l.__size_;
  }

  v20 = std::string::append(&v47, v18, size);
  v21 = *&v20->__r_.__value_.__l.__data_;
  v48.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
  *&v48.__r_.__value_.__l.__data_ = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  v22 = std::string::append(&v48, ", ");
  v23 = *&v22->__r_.__value_.__l.__data_;
  v49.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
  *&v49.__r_.__value_.__l.__data_ = v23;
  v22->__r_.__value_.__l.__size_ = 0;
  v22->__r_.__value_.__r.__words[2] = 0;
  v22->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v43, v9);
  if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v24 = &v43;
  }

  else
  {
    v24 = v43.__r_.__value_.__r.__words[0];
  }

  if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v25 = HIBYTE(v43.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v25 = v43.__r_.__value_.__l.__size_;
  }

  v26 = std::string::append(&v49, v24, v25);
  v27 = *&v26->__r_.__value_.__l.__data_;
  v50.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
  *&v50.__r_.__value_.__l.__data_ = v27;
  v26->__r_.__value_.__l.__size_ = 0;
  v26->__r_.__value_.__r.__words[2] = 0;
  v26->__r_.__value_.__r.__words[0] = 0;
  v28 = std::string::append(&v50, "] for ");
  v29 = *&v28->__r_.__value_.__l.__data_;
  v56.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
  *&v56.__r_.__value_.__l.__data_ = v29;
  v28->__r_.__value_.__l.__size_ = 0;
  v28->__r_.__value_.__r.__words[2] = 0;
  v28->__r_.__value_.__r.__words[0] = 0;
  v30 = (*(*this + 56))(this);
  v31 = *(v30 + 23);
  if (v31 >= 0)
  {
    v32 = v30;
  }

  else
  {
    v32 = *v30;
  }

  if (v31 >= 0)
  {
    v33 = *(v30 + 23);
  }

  else
  {
    v33 = *(v30 + 8);
  }

  v34 = std::string::append(&v56, v32, v33);
  v35 = v34->__r_.__value_.__r.__words[0];
  v36 = v34->__r_.__value_.__l.__size_;
  v51[0] = v34->__r_.__value_.__r.__words[2];
  *(v51 + 3) = *(&v34->__r_.__value_.__r.__words[2] + 3);
  v37 = SHIBYTE(v34->__r_.__value_.__r.__words[2]);
  v34->__r_.__value_.__l.__size_ = 0;
  v34->__r_.__value_.__r.__words[2] = 0;
  v34->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v56.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v49.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v48.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  v38 = MIL::IRObject::GetLocationPtr(this);
  v39 = v38[1];
  v41 = *v38;
  v42 = v39;
  if (v39)
  {
    atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v37 < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v35, v36);
  }

  else
  {
    __p.__r_.__value_.__r.__words[0] = v35;
    __p.__r_.__value_.__l.__size_ = v36;
    LODWORD(__p.__r_.__value_.__r.__words[2]) = v51[0];
    *(&__p.__r_.__value_.__r.__words[2] + 3) = *(v51 + 3);
    *(&__p.__r_.__value_.__s + 23) = v37;
  }

  MIL::ValidationResult::ValidationResult(a2, &v41, 315, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v42)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v42);
  }

  if (v37 < 0)
  {
    operator delete(v35);
  }
}

void sub_2181E65D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::__shared_weak_count *a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54, uint64_t a55, void *a56, uint64_t a57, int a58, __int16 a59, char a60, char a61)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  if (v62 < 0)
  {
    operator delete(v61);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceBatchToSpace(MIL::IRConstantDimension **a1, uint64_t a2, void *a3)
{
  v50[1] = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(__p, "x");
  SingleValueType = MIL::ValueTypeInferenceUtils::GetSingleValueType(a3, __p);
  v6 = MIL::IRValueType::AsTensorType(SingleValueType);
  if (SHIBYTE(v49) < 0)
  {
    operator delete(__p[0]);
  }

  (*(*v6 + 88))(v6);
  v7 = (*(*v6 + 96))(v6);
  std::string::basic_string[abi:ne200100]<0>(__p, "block_shape");
  SingleValue = MIL::ValueTypeInferenceUtils::GetSingleValue(a3, __p);
  v9 = MIL::IRValue::AsTensor(SingleValue);
  Data = MIL::IRTensorValue::GetDataView<int>(v9);
  v12 = v11;
  if (SHIBYTE(v49) < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "crops");
  v13 = MIL::ValueTypeInferenceUtils::GetSingleValue(a3, __p);
  v14 = MIL::IRValue::AsTensor(v13);
  if (SHIBYTE(v49) < 0)
  {
    operator delete(__p[0]);
  }

  v15 = (*(*v14 + 32))(v14);
  v16 = (*(*v15 + 96))(v15);
  __p[0] = 0;
  __p[1] = 0;
  v49 = 0;
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(__p, *v16, v16[1], (v16[1] - *v16) >> 3);
  v17 = MIL::IRDimension::AsConstant(*__p[0]);
  if ((*(*v17 + 48))(v17) == v12)
  {
    v18 = MIL::IRDimension::AsConstant(*(__p[0] + 1));
    if ((*(*v18 + 48))(v18) == 2)
    {
      v19 = MIL::IRTensorValue::GetDataView<int>(v14);
      v21 = v19;
      v22 = v19;
      if (v20 >= 2)
      {
        v24 = v19 + 1;
        v23 = *v19;
        v25 = 4 * v20 - 4;
        v22 = v19;
        v26 = v19 + 1;
        do
        {
          v28 = *v26++;
          v27 = v28;
          if (v28 < v23)
          {
            v23 = v27;
            v22 = v24;
          }

          v24 = v26;
          v25 -= 4;
        }

        while (v25);
      }

      if ((*v22 & 0x80000000) == 0)
      {
        if (v12)
        {
          v29 = 4 * v12;
          v30 = 1;
          v31 = Data;
          do
          {
            v32 = *v31++;
            v30 *= v32;
            v29 -= 4;
          }

          while (v29);
        }

        else
        {
          v30 = 1;
        }

        __dst = 0;
        v47 = 0;
        v45 = 0;
        if (v7[1] != *v7)
        {
          v33 = (*(***v7 + 16))(**v7);
          if (v33)
          {
            v34 = (*(*v33 + 48))(v33);
            if (v34 % v30)
            {
              exception = __cxa_allocate_exception(0x10uLL);
              std::logic_error::logic_error(exception, "Total block size is not divisible by the batch dimension.");
              exception->__vftable = (MEMORY[0x277D828F8] + 16);
              __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
            }

            v50[0] = MIL::IRConstantDimension::Make(*a1, (v34 / v30));
            std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](&v45, v50);
          }

          else
          {
            v50[0] = MIL::IRUnknownDimension::Make(*a1, 0);
            std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](&v45, v50);
          }

          if ((v7[1] - *v7) > 8)
          {
            std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](&v45, *v7 + 1);
            if (v12)
            {
              v35 = v21 + 1;
              v36 = 2;
              v37 = v12;
              do
              {
                if (v36 >= (v7[1] - *v7) >> 3)
                {
                  std::vector<MIL::IRDimension const*>::__throw_out_of_range[abi:ne200100]();
                }

                v38 = (*(**&(*v7)[8 * v36] + 16))(*&(*v7)[8 * v36]);
                if (v38)
                {
                  v39 = *a1;
                  v40 = (*(*v38 + 48))(v38);
                  v50[0] = MIL::IRConstantDimension::Make(v39, (*Data * v40 - (*(v35 - 1) + *v35)));
                  std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](&v45, v50);
                }

                else
                {
                  if (v36 >= (v7[1] - *v7) >> 3)
                  {
                    std::vector<MIL::IRDimension const*>::__throw_out_of_range[abi:ne200100]();
                  }

                  v41 = MIL::IRDimension::AsUnknown(*&(*v7)[8 * v36]);
                  if ((*(*v41 + 32))(v41))
                  {
                    v50[0] = MIL::IRUnknownDimension::Make(*a1, 1);
                    std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](&v45, v50);
                    MIL::IRTensorValueType::MakeWithShape();
                  }

                  v50[0] = MIL::IRUnknownDimension::Make(*a1, 0);
                  std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](&v45, v50);
                }

                ++v36;
                v35 += 2;
                ++Data;
                --v37;
              }

              while (v37);
            }

            std::vector<MIL::IRDimension const*>::__insert_with_size[abi:ne200100]<std::__wrap_iter<MIL::IRDimension const* const*>,std::__wrap_iter<MIL::IRDimension const* const*>>(&v45, __dst, &(*v7)[8 * v12 + 16], v7[1], (v7[1] - &(*v7)[8 * v12 + 16]) >> 3);
            MIL::IRTensorValueType::MakeWithShape();
          }

          std::vector<MIL::IRDimension const*>::__throw_out_of_range[abi:ne200100]();
        }

        std::vector<MIL::IRDimension const*>::__throw_out_of_range[abi:ne200100]();
      }

      v43 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v43, "'crops' values must all be >= 0");
      v43->__vftable = (MEMORY[0x277D828F8] + 16);
      __cxa_throw(v43, off_278235F80, MEMORY[0x277D82610]);
    }
  }

  v42 = __cxa_allocate_exception(0x10uLL);
  std::logic_error::logic_error(v42, "'crops' must be an M x 2 tensor");
  v42->__vftable = (MEMORY[0x277D828F8] + 16);
  __cxa_throw(v42, off_278235F80, MEMORY[0x277D82610]);
}

void sub_2181E6DC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  __cxa_free_exception(v17);
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceConcat(MIL::IRConstantDimension **a1, uint64_t a2, void *a3)
{
  v42 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&__p, "values");
  v5 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, &__p);
  if (!v5)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v36 = 0;
  v37 = 0;
  v38 = 0;
  std::vector<std::shared_ptr<MIL::IRTypedArgument>>::__init_with_size[abi:ne200100]<std::shared_ptr<MIL::IRTypedArgument>*,std::shared_ptr<MIL::IRTypedArgument>*>(&v36, v5[5], v5[6], (v5[6] - v5[5]) >> 4);
  if (v41 < 0)
  {
    operator delete(__p);
  }

  ValueType = MIL::IRTypedArgument::GetValueType(*v36);
  v7 = MIL::IRValueType::AsTensorType(ValueType);
  (*(*v7 + 88))(v7);
  v8 = (*(*v7 + 96))(v7);
  v33 = 0;
  v34 = 0;
  v35 = 0;
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&v33, *v8, v8[1], (v8[1] - *v8) >> 3);
  std::string::basic_string[abi:ne200100]<0>(&__p, "axis");
  SingleValue = MIL::ValueTypeInferenceUtils::GetSingleValue(a3, &__p);
  v10 = MIL::IRValue::GetScalar<int>(SingleValue);
  if (v41 < 0)
  {
    operator delete(__p);
  }

  v11 = (*(*v7 + 96))(v7);
  v30 = 0;
  v31 = 0;
  v32 = 0;
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&v30, *v11, v11[1], (v11[1] - *v11) >> 3);
  if (v31 == v30)
  {
    if (!v10)
    {
      __p = MIL::IRConstantDimension::Make(*a1, ((v37 - v36) >> 4));
      std::vector<MIL::IRDimension const*>::__assign_with_size[abi:ne200100]<MIL::IRDimension const* const*,MIL::IRDimension const* const*>(&v33, &__p, v40, 1uLL);
      MIL::IRTensorValueType::MakeWithShape();
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Scalar concatenation is only allowed when axis is 0.");
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
  }

  if (!MIL::Validation::IsAxisValidForRank(v10, (v34 - v33) >> 3))
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](&__p);
    v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Axis must be within range (-input_ndim - 1, input_ndim) (exclusive). Invalid axis: ", 83);
    v25 = MEMORY[0x21CEAFB20](v24, v10);
    v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, " for input_ndim: ", 17);
    MEMORY[0x21CEAFB40](v26, (v34 - v33) >> 3);
    v27 = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str();
    std::logic_error::logic_error(v27, &v29);
    v27->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(v27, off_278235F80, MEMORY[0x277D82610]);
  }

  if ((v10 & 0x80000000) != 0)
  {
    LODWORD(v10) = v10 + ((v34 - v33) >> 3);
  }

  v12 = v36;
  v13 = v37;
  if (v36 == v37)
  {
    v14 = 0;
LABEL_27:
    v23 = MIL::IRConstantDimension::Make(*a1, v14);
    *(v33 + v10) = v23;
    MIL::IRTensorValueType::MakeWithShape();
  }

  v14 = 0;
  while (1)
  {
    v15 = *v12;
    v16 = v12[1];
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v17 = MIL::IRTypedArgument::GetValueType(v15);
    v18 = MIL::IRValueType::AsTensorType(v17);
    v19 = (*(*v18 + 96))(v18);
    if (&v30 != v19)
    {
      std::vector<MIL::IRValueType const*>::__assign_with_size[abi:ne200100]<MIL::IRValueType const**,MIL::IRValueType const**>(&v30, *v19, v19[1], (v19[1] - *v19) >> 3);
    }

    v20 = (*(**(v30 + v10) + 16))(*(v30 + v10));
    v21 = v20;
    if (!v20)
    {
      v22 = MIL::IRUnknownDimension::Make(*a1, 0);
      *(v33 + v10) = v22;
      MIL::IRTensorValueType::MakeWithShape();
    }

    v14 = (v14 + (*(*v20 + 48))(v20));
    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }

    if (!v21)
    {
      break;
    }

    v12 += 2;
    if (v12 == v13)
    {
      goto LABEL_27;
    }
  }

  if (v30)
  {
    v31 = v30;
    operator delete(v30);
  }

  if (v33)
  {
    v34 = v33;
    operator delete(v33);
  }

  __p = &v36;
  std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](&__p);
}

void sub_2181E73BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, char *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v31 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a25);
      if (a16)
      {
        operator delete(a16);
      }

      if (a19)
      {
        operator delete(a19);
      }

      a25 = &a22;
      std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](&a25);
      _Unwind_Resume(a1);
    }
  }

  else if (!v31)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v30);
  goto LABEL_6;
}

void sub_2181E7538(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios15::anonymous namespace::ValueTypeInferenceDepthToSpaceImpl(MIL::IRConstantDimension **a1, void *a2, uint64_t a3)
{
  v28 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&__p, "x");
  SingleValueType = MIL::ValueTypeInferenceUtils::GetSingleValueType(a2, &__p);
  v7 = MIL::IRValueType::AsTensorType(SingleValueType);
  if ((v27[15] & 0x80000000) != 0)
  {
    operator delete(__p);
  }

  (*(*v7 + 88))(v7);
  v8 = (*(*v7 + 96))(v7);
  SingleValue = MIL::ValueTypeInferenceUtils::GetSingleValue(a2, a3);
  v10 = MIL::IRValue::GetScalar<int>(SingleValue);
  if (*(v8 + 8) != *v8)
  {
    v11 = v10;
    __p = **v8;
    memset(v25, 0, sizeof(v25));
    std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const* const*,MIL::IRDimension const* const*>(v25, &__p, v27, 1uLL);
    if (*(v8 + 8) - *v8 > 8uLL)
    {
      v12 = (*(**(*v8 + 8) + 16))(*(*v8 + 8));
      if (v12)
      {
        v13 = (*(*v12 + 48))(v12);
        v14 = (v11 * v11);
        if (v13 % v14)
        {
          std::ostringstream::basic_ostringstream[abi:ne200100](&__p);
          v19 = *(a3 + 23);
          if (v19 >= 0)
          {
            v20 = a3;
          }

          else
          {
            v20 = *a3;
          }

          if (v19 >= 0)
          {
            v21 = *(a3 + 23);
          }

          else
          {
            v21 = *(a3 + 8);
          }

          v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, v20, v21);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, " is not divisible by the channel dimension.", 43);
          exception = __cxa_allocate_exception(0x10uLL);
          std::stringbuf::str();
          std::logic_error::logic_error(exception, &v24);
          exception->__vftable = (MEMORY[0x277D828F8] + 16);
          __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
        }

        __p = MIL::IRConstantDimension::Make(*a1, (v13 / v14));
        std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](v25, &__p);
      }

      else
      {
        __p = MIL::IRUnknownDimension::Make(*a1, 0);
        std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](v25, &__p);
      }

      v15 = v11;
      v16 = 2;
      while (v16 < (*(v8 + 8) - *v8) >> 3)
      {
        v17 = (*(**(*v8 + 8 * v16) + 16))(*(*v8 + 8 * v16));
        if (v17)
        {
          v18 = (*(*v17 + 48))(v17);
          __p = MIL::IRConstantDimension::Make(*a1, (v18 * v15));
        }

        else
        {
          __p = MIL::IRUnknownDimension::Make(*a1, 0);
        }

        std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](v25, &__p);
        if (++v16 == 4)
        {
          MIL::IRTensorValueType::MakeWithShape();
        }
      }

      std::vector<MIL::IRDimension const*>::__throw_out_of_range[abi:ne200100]();
    }

    std::vector<MIL::IRDimension const*>::__throw_out_of_range[abi:ne200100]();
  }

  std::vector<MIL::IRDimension const*>::__throw_out_of_range[abi:ne200100]();
}

void sub_2181E78FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v24 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a18);
      if (a15)
      {
        operator delete(a15);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v24)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v23);
  goto LABEL_6;
}

void MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceExpandDims(MIL::IRUnknownDimension **a1, uint64_t a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(__p, "x");
  SingleValueType = MIL::ValueTypeInferenceUtils::GetSingleValueType(a3, __p);
  v6 = MIL::IRValueType::AsTensorType(SingleValueType);
  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p[0]);
  }

  (*(*v6 + 88))(v6);
  __p[0] = 0;
  __p[1] = 0;
  v18 = 0;
  v7 = (*(*v6 + 96))(v6);
  if (MIL::ValueTypeInferenceUtils::ShapeHasVariadicUnknownDims(v7))
  {
    __src = MIL::IRUnknownDimension::Make(*a1, 1);
    std::vector<MIL::IRDimension const*>::__assign_with_size[abi:ne200100]<MIL::IRDimension const* const*,MIL::IRDimension const* const*>(__p, &__src, v21, 1uLL);
    MIL::IRTensorValueType::MakeWithShape();
  }

  std::string::basic_string[abi:ne200100]<0>(&__src, "axes");
  SingleValue = MIL::ValueTypeInferenceUtils::GetSingleValue(a3, &__src);
  v9 = MIL::IRValue::AsTensor(SingleValue);
  Data = MIL::IRTensorValue::GetDataView<int>(v9);
  v12 = v11;
  if (v22 < 0)
  {
    operator delete(__src);
  }

  MIL::ValueTypeInferenceUtils::ConvertAxesToNonNeg(Data, v12, v12 + ((*(v7 + 8) - *v7) >> 3), &__src);
  std::__sort<std::__less<unsigned long,unsigned long> &,unsigned long *>();
  if (__p != v7)
  {
    std::vector<MIL::IRValueType const*>::__assign_with_size[abi:ne200100]<MIL::IRValueType const**,MIL::IRValueType const**>(__p, *v7, *(v7 + 8), (*(v7 + 8) - *v7) >> 3);
  }

  v13 = __src;
  v14 = *v21;
  while (v13 != v14)
  {
    v15 = *v13;
    v16 = __p[0];
    v19 = MIL::IRConstantDimension::Make(*a1, 1);
    std::vector<MIL::IRDimension const*>::insert(__p, &v16[8 * v15], &v19);
    ++v13;
  }

  MIL::IRTensorValueType::MakeWithShape();
}

void sub_2181E7C28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2181E7D10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceReshape(MIL::IRConstantDimension **a1, void *a2, void *a3)
{
  v3 = a2[1];
  v4[0] = *a2;
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::ValueTypeInferenceUtils::ValueTypeInferenceReshapeCommon(a1, v4, a3);
}

void sub_2181E7D7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceSliceByIndex(MIL::IRUnknownDimension **a1, uint64_t a2, void *a3)
{
  v88 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(__p, "x");
  SingleValueType = MIL::ValueTypeInferenceUtils::GetSingleValueType(a3, __p);
  v6 = MIL::IRValueType::AsTensorType(SingleValueType);
  if (SHIBYTE(v78) < 0)
  {
    operator delete(__p[0]);
  }

  (*(*v6 + 88))(v6);
  v7 = (*(*v6 + 96))(v6);
  __p[0] = 0;
  __p[1] = 0;
  v78 = 0;
  v8 = (v7[1] - *v7) >> 3;
  LOBYTE(__src) = 0;
  std::vector<BOOL>::vector(v76, v8);
  std::string::basic_string[abi:ne200100]<0>(&__src, "squeeze_mask");
  v9 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, &__src);
  v10 = v9;
  if (v87 < 0)
  {
    operator delete(__src);
    if (!v10)
    {
      goto LABEL_10;
    }
  }

  else if (!v9)
  {
LABEL_10:
    __src = v76[0];
    *v86 = 0;
    v16 = std::__count_BOOL[abi:ne200100]<false,std::vector<BOOL>,false>(&__src, v76[1]);
    v17 = (v7[1] - *v7) >> 3;
    LOBYTE(v83[0]) = 0;
    std::vector<BOOL>::vector(&__src, v17);
    std::string::basic_string[abi:ne200100]<0>(v83, "begin_mask");
    v18 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, v83);
    v19 = v18;
    if (SHIBYTE(v84) < 0)
    {
      operator delete(v83[0]);
      if (!v19)
      {
        goto LABEL_17;
      }
    }

    else if (!v18)
    {
LABEL_17:
      v25 = (v7[1] - *v7) >> 3;
      LOBYTE(v81[0]) = 0;
      std::vector<BOOL>::vector(v83, v25);
      std::string::basic_string[abi:ne200100]<0>(v81, "end_mask");
      v26 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, v81);
      v27 = v26;
      if (SHIBYTE(v82) < 0)
      {
        operator delete(v81[0]);
        if (!v27)
        {
          goto LABEL_26;
        }
      }

      else if (!v26)
      {
LABEL_26:
        v33 = (v7[1] - *v7) >> 3;
        LODWORD(v79[0]) = 1;
        std::vector<int>::vector[abi:ne200100](v81, v33);
        std::string::basic_string[abi:ne200100]<0>(v79, "stride");
        v34 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, v79);
        v35 = v34;
        if (SHIBYTE(v80) < 0)
        {
          operator delete(v79[0]);
          if (!v35)
          {
LABEL_39:
            std::string::basic_string[abi:ne200100]<0>(v79, "begin");
            SingleValue = MIL::ValueTypeInferenceUtils::TryGetSingleValue(a3, v79);
            if (SHIBYTE(v80) < 0)
            {
              operator delete(v79[0]);
            }

            std::string::basic_string[abi:ne200100]<0>(v79, "end");
            v41 = MIL::ValueTypeInferenceUtils::TryGetSingleValue(a3, v79);
            if (SHIBYTE(v80) < 0)
            {
              operator delete(v79[0]);
            }

            v42 = *v7;
            if (v7[1] == *v7)
            {
LABEL_93:
              MIL::IRTensorValueType::MakeWithShape();
            }

            v43 = 0;
            v75 = a1;
            while (1)
            {
              v44 = (*(**(v42 + 8 * v43) + 24))(*(v42 + 8 * v43));
              if (v44 && (*(*v44 + 32))(v44))
              {
                v79[0] = MIL::IRUnknownDimension::Make(*a1, 1);
                std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](__p, v79);
                MIL::IRTensorValueType::MakeWithShape();
              }

              v45 = v43 >> 6;
              v46 = 1 << v43;
              if ((*(v76[0] + (v43 >> 6)) & (1 << v43)) != 0)
              {
                goto LABEL_48;
              }

              v47 = *(v81[0] + v43);
              if (!v47)
              {
                exception = __cxa_allocate_exception(0x10uLL);
                std::logic_error::logic_error(exception, "stride cannot be 0.");
                exception->__vftable = (MEMORY[0x277D828F8] + 16);
                __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
              }

              if ((*(__src + v45) & v46) != 0)
              {
                if (v47 <= 0)
                {
                  v53 = (*(**(*v7 + 8 * v43) + 16))(*(*v7 + 8 * v43));
                  if (!v53)
                  {
                    goto LABEL_74;
                  }

                  v54 = (*(*v53 + 48))(v53);
                  v49 = (v54 - 1) & 0xFFFFFF00;
                  v48 = (v54 - 1);
                }

                else
                {
                  v48 = 0;
                  v49 = 0;
                }

                v55 = v49 | v48;
              }

              else
              {
                {
LABEL_74:
                  v79[0] = MIL::IRUnknownDimension::Make(*a1, 0);
                  std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](__p, v79);
                  goto LABEL_48;
                }

                v49 = v52 & 0xFFFFFF00;
              }

              if ((*(v83[0] + v45) & v46) != 0)
              {
                if (*(v81[0] + v43) < 1)
                {
                  v61 = -256;
                  LOBYTE(v57) = -1;
                  goto LABEL_80;
                }

                v56 = (*(**(*v7 + 8 * v43) + 16))(*(*v7 + 8 * v43));
                if (v56)
                {
                  v57 = (*(*v56 + 48))(v56);
LABEL_79:
                  v61 = v57 & 0xFFFFFF00;
LABEL_80:
                  v66 = MIL::IRDimension::AsConstant(*(*v7 + 8 * v43));
                  v67 = (*(*v66 + 48))(v66);
                  v68 = v57 | v61;
                  v69 = *(v81[0] + v43);
                  if (v69 < 1)
                  {
                    if (v55 >= v67)
                    {
                      v55 = ~(v55 % v69) + v67;
                    }

                    a1 = v75;
                    if (v68 < 0)
                    {
                      v68 = -1;
                    }

                    v71 = v68 - v55 + 1;
                  }

                  else
                  {
                    v70 = v55 + -v55 / v69 * v69;
                    if (v49 >= 0)
                    {
                      v70 = v55;
                    }

                    if (v67 < v68)
                    {
                      v68 = v67;
                    }

                    v71 = v68 + ~v70;
                    a1 = v75;
                  }

                  v72 = v71 / v69;
                  if (v72 < 0)
                  {
                    v74 = __cxa_allocate_exception(0x10uLL);
                    std::runtime_error::runtime_error(v74, "zero shape error");
                    __cxa_throw(v74, MEMORY[0x277D82760], MEMORY[0x277D82600]);
                  }

                  v79[0] = MIL::IRConstantDimension::Make(*a1, (v72 + 1));
                  std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](__p, v79);
                  goto LABEL_48;
                }
              }

              else if (v41)
              {
                v58 = (*(*v41 + 32))(v41);
                v59 = MIL::IRValueType::AsTensorType(v58);
                if ((*(*v59 + 88))(v59) == 11)
                {
                }

                else
                {
                  v64 = (*(*v41 + 32))(v41);
                  v65 = MIL::IRValueType::AsTensorType(v64);
                }

                v57 = v60;
                if ((v60 & 0x100000000) != 0)
                {
                  goto LABEL_79;
                }
              }

              a1 = v75;
              v79[0] = MIL::IRUnknownDimension::Make(*v75, 0);
              std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](__p, v79);
LABEL_48:
              ++v43;
              v42 = *v7;
              if (v43 >= (v7[1] - *v7) >> 3)
              {
                goto LABEL_93;
              }
            }
          }
        }

        else if (!v34)
        {
          goto LABEL_39;
        }

        std::string::basic_string[abi:ne200100]<0>(v79, "stride");
        v36 = MIL::ValueTypeInferenceUtils::TryGetSingleValue(a3, v79);
        v37 = v36;
        if (SHIBYTE(v80) < 0)
        {
          operator delete(v79[0]);
          if (v37)
          {
            goto LABEL_36;
          }
        }

        else if (v36)
        {
LABEL_36:
          v38 = MIL::IRValue::AsTensor(v37);
          MIL::Validation::GetIntTensorValueCasted(v38, v39, v79);
          if (v81[0])
          {
            v81[1] = v81[0];
            operator delete(v81[0]);
          }

          *v81 = *v79;
          v82 = v80;
          goto LABEL_39;
        }

        MIL::IRUnknownDimension::Make(*a1, 0);
        std::vector<MIL::IRDimension const*>::vector[abi:ne200100](v79, v16);
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

        *__p = *v79;
        v78 = v80;
        MIL::IRTensorValueType::MakeWithShape();
      }

      std::string::basic_string[abi:ne200100]<0>(v81, "end_mask");
      v28 = MIL::ValueTypeInferenceUtils::TryGetSingleValue(a3, v81);
      v29 = v28;
      if (SHIBYTE(v82) < 0)
      {
        operator delete(v81[0]);
        if (v29)
        {
          goto LABEL_25;
        }
      }

      else if (v28)
      {
LABEL_25:
        v30 = MIL::IRValue::AsTensor(v29);
        Data = MIL::IRTensorValue::GetDataView<BOOL>(v30);
        std::vector<BOOL>::__assign_with_size[abi:ne200100]<BOOL const*,BOOL const*>(v83, Data, &Data[v32], v32);
        goto LABEL_26;
      }

      v79[0] = MIL::IRUnknownDimension::Make(*a1, 0);
      std::vector<MIL::IRDimension const*>::vector[abi:ne200100](v81, v16);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      *__p = *v81;
      v78 = v82;
      MIL::IRTensorValueType::MakeWithShape();
    }

    std::string::basic_string[abi:ne200100]<0>(v83, "begin_mask");
    v20 = MIL::ValueTypeInferenceUtils::TryGetSingleValue(a3, v83);
    v21 = v20;
    if (SHIBYTE(v84) < 0)
    {
      operator delete(v83[0]);
      if (v21)
      {
        goto LABEL_16;
      }
    }

    else if (v20)
    {
LABEL_16:
      v22 = MIL::IRValue::AsTensor(v21);
      v23 = MIL::IRTensorValue::GetDataView<BOOL>(v22);
      std::vector<BOOL>::__assign_with_size[abi:ne200100]<BOOL const*,BOOL const*>(&__src, v23, &v23[v24], v24);
      goto LABEL_17;
    }

    v81[0] = MIL::IRUnknownDimension::Make(*a1, 0);
    std::vector<MIL::IRDimension const*>::vector[abi:ne200100](v83, v16);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    *__p = *v83;
    v78 = v84;
    MIL::IRTensorValueType::MakeWithShape();
  }

  std::string::basic_string[abi:ne200100]<0>(&__src, "squeeze_mask");
  v11 = MIL::ValueTypeInferenceUtils::TryGetSingleValue(a3, &__src);
  v12 = v11;
  if (v87 < 0)
  {
    operator delete(__src);
    if (v12)
    {
      goto LABEL_9;
    }
  }

  else if (v11)
  {
LABEL_9:
    v13 = MIL::IRValue::AsTensor(v12);
    v14 = MIL::IRTensorValue::GetDataView<BOOL>(v13);
    std::vector<BOOL>::__assign_with_size[abi:ne200100]<BOOL const*,BOOL const*>(v76, v14, &v14[v15], v15);
    goto LABEL_10;
  }

  __src = MIL::IRUnknownDimension::Make(*a1, 1);
  std::vector<MIL::IRDimension const*>::__assign_with_size[abi:ne200100]<MIL::IRDimension const* const*,MIL::IRDimension const* const*>(__p, &__src, v86, 1uLL);
  MIL::IRTensorValueType::MakeWithShape();
}

void sub_2181E89E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a36)
  {
    operator delete(a36);
  }

  v43 = *(v41 - 120);
  if (v43)
  {
    operator delete(v43);
  }

  if (a12)
  {
    operator delete(a12);
  }

  if (a15)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceSliceBySize(MIL::IRUnknownDimension **a1, void *a2, void *a3)
{
  v98 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&__p, "x");
  SingleValueType = MIL::ValueTypeInferenceUtils::GetSingleValueType(a3, &__p);
  v7 = MIL::IRValueType::AsTensorType(SingleValueType);
  if (SHIBYTE(v97) < 0)
  {
    operator delete(__p);
  }

  (*(*v7 + 88))(v7);
  v8 = (*(*v7 + 96))(v7);
  v93 = 0uLL;
  v94 = 0;
  std::string::basic_string[abi:ne200100]<0>(&__p, "begin");
  SingleValue = MIL::ValueTypeInferenceUtils::TryGetSingleValue(a3, &__p);
  if (SHIBYTE(v97) < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "begin");
  v10 = MIL::ValueTypeInferenceUtils::GetSingleValueType(a3, &__p);
  if (SHIBYTE(v97) < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "size");
  v11 = MIL::ValueTypeInferenceUtils::TryGetSingleValue(a3, &__p);
  v12 = v11;
  if (SHIBYTE(v97) < 0)
  {
    operator delete(__p);
    if (v12)
    {
LABEL_9:
      v91 = 0;
      v92 = 0;
      v89 = 0;
      v90 = 0;
      v87 = 0;
      v88 = 0;
      v85 = 0;
      v86 = 0;
      v83 = 0;
      v84 = 0;
      Data = 0;
      v82 = 0;
      v13 = (*(*v10 + 24))(v10);
      v14 = (*(*v13 + 88))(v13);
      v15 = v14;
      if ((v14 - 12) <= 0xFFFFFFFC)
      {
        exception = __cxa_allocate_exception(0x48uLL);
        v76 = a2[1];
        *&v80 = *a2;
        *(&v80 + 1) = v76;
        if (v76)
        {
          atomic_fetch_add_explicit((v76 + 8), 1uLL, memory_order_relaxed);
        }

        std::string::basic_string[abi:ne200100]<0>(v79, "Incompatible dtype for begin, size");
        MIL::ValidationError::ValidationError(exception, &v80, v79, 315);
      }

      if (v14 == 11)
      {
        v16 = MIL::IRValue::AsTensor(v12);
        Data = MIL::IRTensorValue::GetDataView<int>(v16);
        v82 = v17;
        if (SingleValue)
        {
          v18 = MIL::IRValue::AsTensor(SingleValue);
          v83 = MIL::IRTensorValue::GetDataView<int>(v18);
          v84 = v19;
          v20 = v82;
          goto LABEL_21;
        }
      }

      else
      {
        if (v14 == 10)
        {
          v23 = MIL::IRValue::AsTensor(v12);
          v85 = MIL::IRTensorValue::GetDataView<short>(v23);
          v86 = v24;
          if (!SingleValue || (v25 = MIL::IRValue::AsTensor(SingleValue), v87 = MIL::IRTensorValue::GetDataView<short>(v25), v88 = v26, v26 == v86))
          {
            v27 = 1;
LABEL_23:
            std::vector<std::string const*>::reserve(&v93, (v8[1] - *v8) >> 3);
            v31 = *v8;
            if (v8[1] == *v8)
            {
LABEL_65:
              MIL::IRTensorValueType::MakeWithShape();
            }

            v32 = 0;
            while (1)
            {
              v33 = (*(**(v31 + 8 * v32) + 16))(*(v31 + 8 * v32));
              v34 = (*(**(*v8 + 8 * v32) + 24))(*(*v8 + 8 * v32));
              if (v34 && (*(*v34 + 32))(v34))
              {
                *&__p = MIL::IRUnknownDimension::Make(*a1, 1);
                std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](&v93, &__p);
                MIL::IRTensorValueType::MakeWithShape();
              }

              if (v33 && SingleValue != 0)
              {
                break;
              }

              if (v15 == 11)
              {
                v36 = *MIL::Util::Span<int const,18446744073709551615ul>::At(&Data, v32);
                if ((v36 & 0x80000000) != 0)
                {
                  goto LABEL_51;
                }
              }

              else if (v27)
              {
                v36 = *MIL::Util::Span<short const,18446744073709551615ul>::At(&v85, v32);
                if ((v36 & 0x80000000) != 0)
                {
                  goto LABEL_51;
                }
              }

              else
              {
                v36 = *MIL::Util::Span<signed char const,18446744073709551615ul>::At(&v89, v32);
                if ((v36 & 0x80000000) != 0)
                {
LABEL_51:
                  if (v36 != -1)
                  {
                    v65 = __cxa_allocate_exception(0x10uLL);
                    std::logic_error::logic_error(v65, "size[i] cannot be negative value except -1.");
                    v65->__vftable = (MEMORY[0x277D828F8] + 16);
                    __cxa_throw(v65, off_278235F80, MEMORY[0x277D82610]);
                  }

                  *&__p = MIL::IRUnknownDimension::Make(*a1, 0);
                  std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](&v93, &__p);
                  goto LABEL_64;
                }
              }

              v37 = v36;
              if (v33 && (*(*v33 + 48))(v33) < v36)
              {
                v64 = __cxa_allocate_exception(0x10uLL);
                std::logic_error::logic_error(v64, "size[i] is required to be <= input dimension when begin is unknown.");
                v64->__vftable = (MEMORY[0x277D828F8] + 16);
                __cxa_throw(v64, off_278235F80, MEMORY[0x277D82610]);
              }

              *&__p = MIL::IRConstantDimension::Make(*a1, v37);
              std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](&v93, &__p);
LABEL_64:
              ++v32;
              v31 = *v8;
              if (v32 >= (v8[1] - *v8) >> 3)
              {
                goto LABEL_65;
              }
            }

            v38 = (*(*v33 + 48))(v33);
            if (v15 == 11)
            {
              v39 = MIL::Util::Span<int const,18446744073709551615ul>::At(&v83, v32);
              if (!MIL::Validation::IsAxisValidForRank(*v39, v38))
              {
                std::ostringstream::basic_ostringstream[abi:ne200100](&__p);
                v59 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Begin axis must be within range (-input_ndim - 1, input_ndim) (exclusive). Invalid axis: ", 89);
                v60 = MIL::Util::Span<int const,18446744073709551615ul>::At(&v83, v32);
                v61 = MEMORY[0x21CEAFB20](v59, *v60);
                v62 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v61, " for input_ndim: ", 17);
                MEMORY[0x21CEAFB80](v62, v38);
                v63 = __cxa_allocate_exception(0x10uLL);
                std::stringbuf::str();
                std::logic_error::logic_error(v63, &v95);
                v63->__vftable = (MEMORY[0x277D828F8] + 16);
                __cxa_throw(v63, off_278235F80, MEMORY[0x277D82610]);
              }

              v40 = *MIL::Util::Span<int const,18446744073709551615ul>::At(&v83, v32);
              v41 = *MIL::Util::Span<int const,18446744073709551615ul>::At(&v83, v32);
              v42 = *MIL::Util::Span<int const,18446744073709551615ul>::At(&Data, v32);
              v43 = MIL::Util::Span<int const,18446744073709551615ul>::At(&Data, v32);
              v44 = v41 + (v38 & (v40 >> 31));
              v45 = *v43;
              if ((v42 & 0x80000000) == 0)
              {
                if (v45 + v44 > v38)
                {
                  goto LABEL_76;
                }

                v46 = *MIL::Util::Span<int const,18446744073709551615ul>::At(&Data, v32);
                goto LABEL_63;
              }

              if (v45 != -1)
              {
                goto LABEL_78;
              }
            }

            else if (v27)
            {
              v47 = MIL::Util::Span<short const,18446744073709551615ul>::At(&v87, v32);
              if (!MIL::Validation::IsAxisValidForRank(*v47, v38))
              {
                std::ostringstream::basic_ostringstream[abi:ne200100](&__p);
                v70 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Begin axis must be within range (-input_ndim - 1, input_ndim) (exclusive). Invalid axis: ", 89);
                v71 = MIL::Util::Span<short const,18446744073709551615ul>::At(&v87, v32);
                v72 = MEMORY[0x21CEAFB50](v70, *v71);
                v73 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v72, " for input_ndim: ", 17);
                MEMORY[0x21CEAFB80](v73, v38);
                v74 = __cxa_allocate_exception(0x10uLL);
                std::stringbuf::str();
                std::logic_error::logic_error(v74, &v95);
                v74->__vftable = (MEMORY[0x277D828F8] + 16);
                __cxa_throw(v74, off_278235F80, MEMORY[0x277D82610]);
              }

              v48 = *MIL::Util::Span<short const,18446744073709551615ul>::At(&v87, v32);
              v49 = *MIL::Util::Span<short const,18446744073709551615ul>::At(&v87, v32);
              v50 = *MIL::Util::Span<short const,18446744073709551615ul>::At(&v85, v32);
              v51 = MIL::Util::Span<short const,18446744073709551615ul>::At(&v85, v32);
              v44 = (v38 & (v48 >> 31)) + v49;
              v52 = *v51;
              if ((v50 & 0x80000000) == 0)
              {
                if (v44 + v52 > v38)
                {
                  goto LABEL_76;
                }

                v46 = *MIL::Util::Span<short const,18446744073709551615ul>::At(&v85, v32);
                goto LABEL_63;
              }

              if (v52 != -1)
              {
                goto LABEL_78;
              }
            }

            else
            {
              v53 = MIL::Util::Span<signed char const,18446744073709551615ul>::At(&v91, v32);
              if (!MIL::Validation::IsAxisValidForRank(*v53, v38))
              {
                std::ostringstream::basic_ostringstream[abi:ne200100](&__p);
                v66 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Begin axis must be within range (-input_ndim - 1, input_ndim) (exclusive). Invalid axis: ", 89);
                v95.__r_.__value_.__s.__data_[0] = *MIL::Util::Span<signed char const,18446744073709551615ul>::At(&v91, v32);
                v67 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v66, &v95, 1);
                v68 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v67, " for input_ndim: ", 17);
                MEMORY[0x21CEAFB80](v68, v38);
                v69 = __cxa_allocate_exception(0x10uLL);
                std::stringbuf::str();
                std::logic_error::logic_error(v69, &v95);
                v69->__vftable = (MEMORY[0x277D828F8] + 16);
                __cxa_throw(v69, off_278235F80, MEMORY[0x277D82610]);
              }

              v54 = *MIL::Util::Span<signed char const,18446744073709551615ul>::At(&v91, v32);
              v55 = *MIL::Util::Span<signed char const,18446744073709551615ul>::At(&v91, v32);
              v56 = *MIL::Util::Span<signed char const,18446744073709551615ul>::At(&v89, v32);
              v57 = MIL::Util::Span<signed char const,18446744073709551615ul>::At(&v89, v32);
              v44 = (v38 & (v54 >> 31)) + v55;
              v58 = *v57;
              if ((v56 & 0x80000000) == 0)
              {
                if (v44 + v58 > v38)
                {
LABEL_76:
                  v77 = __cxa_allocate_exception(0x10uLL);
                  std::logic_error::logic_error(v77, "begin[i] + size[i] is required to be <= input dimension.");
                  goto LABEL_79;
                }

                v46 = *MIL::Util::Span<signed char const,18446744073709551615ul>::At(&v89, v32);
                goto LABEL_63;
              }

              if (v58 != -1)
              {
LABEL_78:
                v77 = __cxa_allocate_exception(0x10uLL);
                std::logic_error::logic_error(v77, "size[i] cannot be negative value except -1.");
LABEL_79:
                v77->__vftable = (MEMORY[0x277D828F8] + 16);
                __cxa_throw(v77, off_278235F80, MEMORY[0x277D82610]);
              }
            }

            v46 = v38 - v44;
LABEL_63:
            *&__p = MIL::IRConstantDimension::Make(*a1, v46);
            std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](&v93, &__p);
            goto LABEL_64;
          }

          goto LABEL_77;
        }

        v28 = MIL::IRValue::AsTensor(v12);
        v89 = MIL::IRTensorValue::GetDataView<signed char>(v28);
        v90 = v29;
        if (SingleValue)
        {
          v30 = MIL::IRValue::AsTensor(SingleValue);
          v91 = MIL::IRTensorValue::GetDataView<signed char>(v30);
          v92 = v19;
          v20 = v90;
LABEL_21:
          if (v19 == v20)
          {
            goto LABEL_22;
          }

LABEL_77:
          v78 = __cxa_allocate_exception(0x10uLL);
          std::logic_error::logic_error(v78, "Length of begin is not equal to the length of size.");
          v78->__vftable = (MEMORY[0x277D828F8] + 16);
          __cxa_throw(v78, off_278235F80, MEMORY[0x277D82610]);
        }
      }

LABEL_22:
      v27 = 0;
      goto LABEL_23;
    }
  }

  else if (v11)
  {
    goto LABEL_9;
  }

  v22 = *v8;
  v21 = v8[1];
  v95.__r_.__value_.__r.__words[0] = MIL::IRUnknownDimension::Make(*a1, 0);
  std::vector<MIL::IRDimension const*>::vector[abi:ne200100](&__p, (v21 - v22) >> 3);
  v93 = __p;
  v94 = v97;
  MIL::IRTensorValueType::MakeWithShape();
}

void sub_2181E97BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  if (a40 < 0)
  {
    operator delete(__p);
    if ((v47 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a41);
      if (a32)
      {
        operator delete(a32);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v47)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v46);
  goto LABEL_6;
}

uint64_t MIL::Util::Span<short const,18446744073709551615ul>::At(void *a1, unint64_t a2)
{
  if (a1[1] <= a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::range_error::range_error[abi:ne200100](exception, "index out of bounds");
    __cxa_throw(exception, off_278235F68, MEMORY[0x277D825E0]);
  }

  return *a1 + 2 * a2;
}

unint64_t MIL::Util::Span<signed char const,18446744073709551615ul>::At(void *a1, unint64_t a2)
{
  if (a1[1] <= a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::range_error::range_error[abi:ne200100](exception, "index out of bounds");
    __cxa_throw(exception, off_278235F68, MEMORY[0x277D825E0]);
  }

  return *a1 + a2;
}

void MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceSlidingWindows(MIL::IRUnknownDimension **a1, uint64_t a2, void *a3)
{
  v31[1] = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(__p, "x");
  SingleValueType = MIL::ValueTypeInferenceUtils::GetSingleValueType(a3, __p);
  v6 = MIL::IRValueType::AsTensorType(SingleValueType);
  if (SHIBYTE(v30) < 0)
  {
    operator delete(__p[0]);
  }

  (*(*v6 + 88))(v6);
  v7 = (*(*v6 + 96))(v6);
  std::string::basic_string[abi:ne200100]<0>(__p, "axis");
  SingleValue = MIL::ValueTypeInferenceUtils::GetSingleValue(a3, __p);
  v9 = MIL::IRValue::AsTensor(SingleValue);
  v10 = MIL::IRValue::GetScalar<int>(v9);
  if (SHIBYTE(v30) < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "size");
  v11 = MIL::ValueTypeInferenceUtils::GetSingleValue(a3, __p);
  v12 = MIL::IRValue::AsTensor(v11);
  v13 = MIL::IRValue::GetScalar<int>(v12);
  if (SHIBYTE(v30) < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "stride");
  v14 = MIL::ValueTypeInferenceUtils::GetSingleValue(a3, __p);
  v15 = MIL::IRValue::AsTensor(v14);
  v16 = MIL::IRValue::GetScalar<int>(v15);
  if (SHIBYTE(v30) < 0)
  {
    operator delete(__p[0]);
  }

  v17 = *v7;
  v18 = v7[1];
  v19 = v18 - *v7;
  __p[0] = 0;
  __p[1] = 0;
  v30 = 0;
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(__p, v17, v18, v19 >> 3);
  v20 = v10 + ((v19 >> 3) & (v10 >> 31));
  v21 = *(*v7 + 8 * v20);
  v22 = (*(*v21 + 16))(v21);
  v23 = v22;
  if (v22)
  {
    if (v13 > (*(*v22 + 48))(v22))
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(exception, "size cannot exceed the input dimension.");
      exception->__vftable = (MEMORY[0x277D828F8] + 16);
      __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
    }

    v24 = *a1;
    v25 = (*(*v23 + 48))(v23);
    v26 = MIL::IRConstantDimension::Make(v24, ((v25 - v13) / v16 + 1));
  }

  else
  {
    v26 = MIL::IRUnknownDimension::Make(*a1, 0);
  }

  *(__p[0] + v20) = v26;
  v27 = __p[0];
  v31[0] = MIL::IRConstantDimension::Make(*a1, v13);
  std::vector<MIL::IRDimension const*>::insert(__p, &v27[8 * v20 + 8], v31);
  MIL::IRTensorValueType::MakeWithShape();
}

void sub_2181E9D8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  __cxa_free_exception(v15);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceSpaceToBatch(MIL::IRConstantDimension **a1, uint64_t a2, void *a3)
{
  v36 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&__p, "x");
  SingleValueType = MIL::ValueTypeInferenceUtils::GetSingleValueType(a3, &__p);
  v6 = MIL::IRValueType::AsTensorType(SingleValueType);
  if (SHIBYTE(v33) < 0)
  {
    operator delete(__p);
  }

  (*(*v6 + 88))(v6);
  v7 = (*(*v6 + 96))(v6);
  std::string::basic_string[abi:ne200100]<0>(&__p, "block_shape");
  SingleValue = MIL::ValueTypeInferenceUtils::GetSingleValue(a3, &__p);
  v9 = MIL::IRValue::AsTensor(SingleValue);
  Data = MIL::IRTensorValue::GetDataView<int>(v9);
  v12 = v11;
  if (SHIBYTE(v33) < 0)
  {
    operator delete(__p);
  }

  v13 = *v7;
  v14 = v7[1];
  if (v12 > ((v14 - *v7) >> 3) - 2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "size of the block_shape cannot exceed the size of input spatial dimensions.");
    __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
  }

  if (v12)
  {
    v15 = 4 * v12;
    v16 = 1;
    v17 = Data;
    do
    {
      v18 = *v17++;
      v16 *= v18;
      v15 -= 4;
    }

    while (v15);
  }

  else
  {
    v16 = 1;
  }

  if (v14 == v13)
  {
    std::vector<MIL::IRDimension const*>::__throw_out_of_range[abi:ne200100]();
  }

  v19 = MIL::IRDimension::AsConstant(*v13);
  v20 = (*(*v19 + 48))(v19);
  v34[0] = MIL::IRConstantDimension::Make(*a1, (v20 * v16));
  if ((v7[1] - *v7) <= 8)
  {
    std::vector<MIL::IRDimension const*>::__throw_out_of_range[abi:ne200100]();
  }

  v34[1] = *(*v7 + 1);
  __dst = 0;
  v33 = 0;
  __p = 0;
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const* const*,MIL::IRDimension const* const*>(&__p, v34, v35, 2uLL);
  std::string::basic_string[abi:ne200100]<0>(v34, "paddings");
  v21 = MIL::ValueTypeInferenceUtils::GetSingleValue(a3, v34);
  v22 = MIL::IRValue::AsTensor(v21);
  v23 = MIL::IRTensorValue::GetDataView<int>(v22);
  if ((v35[7] & 0x80000000) != 0)
  {
    operator delete(v34[0]);
    if (!v12)
    {
      goto LABEL_25;
    }
  }

  else if (!v12)
  {
    goto LABEL_25;
  }

  v24 = (v23 + 4);
  v25 = 2;
  v26 = v12;
  do
  {
    if (v25 >= (v7[1] - *v7) >> 3)
    {
      std::vector<MIL::IRDimension const*>::__throw_out_of_range[abi:ne200100]();
    }

    v27 = (*(**&(*v7)[8 * v25] + 16))(*&(*v7)[8 * v25]);
    if (v27)
    {
      v28 = (*(*v27 + 48))(v27);
      v34[0] = MIL::IRConstantDimension::Make(*a1, ((*(v24 - 1) + *v24 + v28) / *Data));
      std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](&__p, v34);
    }

    else
    {
      if (v25 >= (v7[1] - *v7) >> 3)
      {
        std::vector<MIL::IRDimension const*>::__throw_out_of_range[abi:ne200100]();
      }

      v29 = MIL::IRDimension::AsUnknown(*&(*v7)[8 * v25]);
      if ((*(*v29 + 32))(v29))
      {
        v34[0] = MIL::IRUnknownDimension::Make(*a1, 1);
        std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](&__p, v34);
        MIL::IRTensorValueType::MakeWithShape();
      }

      v34[0] = MIL::IRUnknownDimension::Make(*a1, 0);
      std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](&__p, v34);
    }

    ++v25;
    v24 += 2;
    ++Data;
    --v26;
  }

  while (v26);
LABEL_25:
  std::vector<MIL::IRDimension const*>::__insert_with_size[abi:ne200100]<std::__wrap_iter<MIL::IRDimension const* const*>,std::__wrap_iter<MIL::IRDimension const* const*>>(&__p, __dst, &(*v7)[8 * v12 + 16], v7[1], (v7[1] - &(*v7)[8 * v12 + 16]) >> 3);
  MIL::IRTensorValueType::MakeWithShape();
}

void sub_2181EA258(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceSpaceToDepth(MIL::IRConstantDimension **a1, uint64_t a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&__p, "x");
  SingleValueType = MIL::ValueTypeInferenceUtils::GetSingleValueType(a3, &__p);
  v6 = MIL::IRValueType::AsTensorType(SingleValueType);
  if (v23 < 0)
  {
    operator delete(__p);
  }

  (*(*v6 + 88))(v6);
  v7 = (*(*v6 + 96))(v6);
  std::string::basic_string[abi:ne200100]<0>(&__p, "block_size");
  SingleValue = MIL::ValueTypeInferenceUtils::GetSingleValue(a3, &__p);
  v9 = MIL::IRValue::AsTensor(SingleValue);
  v10 = MIL::IRValue::GetScalar<int>(v9);
  if (v23 < 0)
  {
    operator delete(__p);
  }

  if (*(v7 + 8) != *v7)
  {
    __p = **v7;
    memset(v20, 0, sizeof(v20));
    std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const* const*,MIL::IRDimension const* const*>(v20, &__p, &v22, 1uLL);
    if (*(v7 + 8) - *v7 > 8uLL)
    {
      v11 = (*(**(*v7 + 8) + 16))(*(*v7 + 8));
      if (v11)
      {
        v12 = (*(*v11 + 48))(v11);
        __p = MIL::IRConstantDimension::Make(*a1, (v12 * (v10 * v10)));
      }

      else
      {
        __p = MIL::IRUnknownDimension::Make(*a1, 0);
      }

      std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](v20, &__p);
      if (*(v7 + 8) - *v7 > 0x10uLL)
      {
        v13 = (*(**(*v7 + 16) + 16))(*(*v7 + 16));
        if (v13)
        {
          v14 = (*(*v13 + 48))(v13);
          if (v14 % v10)
          {
            std::ostringstream::basic_ostringstream[abi:ne200100](&__p);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "block_size is not divisible by the first space dimension.", 57);
            exception = __cxa_allocate_exception(0x10uLL);
            std::stringbuf::str();
            std::logic_error::logic_error(exception, &v19);
            exception->__vftable = (MEMORY[0x277D828F8] + 16);
            __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
          }

          __p = MIL::IRConstantDimension::Make(*a1, (v14 / v10));
          std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](v20, &__p);
        }

        else
        {
          __p = MIL::IRUnknownDimension::Make(*a1, 0);
          std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](v20, &__p);
        }

        if (*(v7 + 8) - *v7 > 0x18uLL)
        {
          v15 = (*(**(*v7 + 24) + 16))(*(*v7 + 24));
          if (v15)
          {
            v16 = (*(*v15 + 48))(v15);
            if (v16 % v10)
            {
              std::ostringstream::basic_ostringstream[abi:ne200100](&__p);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "block_size is not divisible by the second space dimension.", 58);
              v18 = __cxa_allocate_exception(0x10uLL);
              std::stringbuf::str();
              std::logic_error::logic_error(v18, &v19);
              v18->__vftable = (MEMORY[0x277D828F8] + 16);
              __cxa_throw(v18, off_278235F80, MEMORY[0x277D82610]);
            }

            __p = MIL::IRConstantDimension::Make(*a1, (v16 / v10));
            std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](v20, &__p);
          }

          else
          {
            __p = MIL::IRUnknownDimension::Make(*a1, 0);
            std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](v20, &__p);
          }

          MIL::IRTensorValueType::MakeWithShape();
        }

        std::vector<MIL::IRDimension const*>::__throw_out_of_range[abi:ne200100]();
      }

      std::vector<MIL::IRDimension const*>::__throw_out_of_range[abi:ne200100]();
    }

    std::vector<MIL::IRDimension const*>::__throw_out_of_range[abi:ne200100]();
  }

  std::vector<MIL::IRDimension const*>::__throw_out_of_range[abi:ne200100]();
}

void sub_2181EA7B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v24 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a18);
      if (a15)
      {
        operator delete(a15);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v24)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v23);
  goto LABEL_6;
}

void MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceSplit(MIL::IRUnknownDimension **a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(v71, "x");
  SingleValueType = MIL::ValueTypeInferenceUtils::GetSingleValueType(a3, v71);
  v9 = MIL::IRValueType::AsTensorType(SingleValueType);
  if (v72 < 0)
  {
    operator delete(v71[0]);
  }

  (*(*v9 + 88))(v9);
  v10 = (*(*v9 + 96))(v9);
  std::string::basic_string[abi:ne200100]<0>(v71, "axis");
  SingleValue = MIL::ValueTypeInferenceUtils::GetSingleValue(a3, v71);
  v12 = MIL::IRValue::AsTensor(SingleValue);
  v13 = MIL::IRValue::GetScalar<int>(v12);
  if (v72 < 0)
  {
    operator delete(v71[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v71, "num_splits");
  v14 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, v71);
  if (v72 < 0)
  {
    operator delete(v71[0]);
  }

  MIL::ValidationResult::ValidationResult(v71);
  if (v14)
  {
    v15 = a2[1];
    v66[0] = *a2;
    v66[1] = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v64, "num_splits");
    v16 = MIL::ValueTypeInferenceUtils::TryGetSingleValue(a3, v64);
    MIL::MILResult::operator=(v71, &v67);
    v73 = v70;
    MIL::ValidationResult::~ValidationResult(&v67);
    if (v65 < 0)
    {
      operator delete(v64[0]);
    }
  }

  else
  {
    v15 = a2[1];
    v63[0] = *a2;
    v63[1] = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    MIL::MILResult::operator=(v71, &v67);
    v73 = v70;
    MIL::ValidationResult::~ValidationResult(&v67);
  }

  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  if (!MIL::ValidationResult::IsGood(v71))
  {
    exception = __cxa_allocate_exception(0x48uLL);
    MIL::MILResult::MILResult(v61, v71);
    v61[0].__r_.__value_.__r.__words[0] = &unk_2829E9B70;
    v62 = v73;
    MIL::ValidationError::ValidationError(exception, v61);
  }

  if ((v13 & 0x80000000) != 0)
  {
    LODWORD(v13) = v13 + ((v10[1] - *v10) >> 3);
  }

  std::string::basic_string[abi:ne200100]<0>(&v67, "split_sizes");
  v17 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, &v67);
  if (SHIBYTE(v69) < 0)
  {
    operator delete(v67);
  }

  if (!(v14 | v17))
  {
    v44 = __cxa_allocate_exception(0x48uLL);
    v45 = a2[1];
    *&v60 = *a2;
    *(&v60 + 1) = v45;
    if (v45)
    {
      atomic_fetch_add_explicit((v45 + 8), 1uLL, memory_order_relaxed);
    }

    MIL::ValidationError::ValidationError(v44, &v60, v59, 315);
  }

  if (!v17)
  {
    std::string::basic_string[abi:ne200100]<0>(&v67, "num_splits");
    v27 = MIL::ValueTypeInferenceUtils::GetSingleValue(a3, &v67);
    v28 = MIL::IRValue::AsTensor(v27);
    v29 = MIL::IRValue::GetScalar<int>(v28);
    if (SHIBYTE(v69) < 0)
    {
      operator delete(v67);
    }

    v67 = 0;
    v68 = 0;
    v69 = 0;
    std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&v67, *v10, v10[1], (v10[1] - *v10) >> 3);
    v30 = *(*v10 + 8 * v13);
    v31 = (*(*v30 + 16))(v30);
    v32 = v31;
    if (v31)
    {
      if ((*(*v31 + 48))(v31) % v29)
      {
        v50 = __cxa_allocate_exception(0x48uLL);
        v51 = a2[1];
        *&v54 = *a2;
        *(&v54 + 1) = v51;
        if (v51)
        {
          atomic_fetch_add_explicit((v51 + 8), 1uLL, memory_order_relaxed);
        }

        std::string::basic_string[abi:ne200100]<0>(v53, "Axis dimension is not divisible by parameter num_splits.");
        MIL::ValidationError::ValidationError(v50, &v54, v53, 315);
      }

      v33 = *a1;
      v34 = (*(*v32 + 48))(v32);
      v35 = MIL::IRConstantDimension::Make(v33, (v34 / v29));
    }

    else
    {
      v35 = MIL::IRUnknownDimension::Make(*a1, 0);
    }

    *(v67 + v13) = v35;
    MIL::IRTensorValueType::MakeWithShape();
  }

  std::string::basic_string[abi:ne200100]<0>(&v67, "split_sizes");
  v18 = MIL::ValueTypeInferenceUtils::GetSingleValue(a3, &v67);
  v19 = MIL::IRValue::AsTensor(v18);
  Data = MIL::IRTensorValue::GetDataView<int>(v19);
  v22 = v21;
  if (SHIBYTE(v69) < 0)
  {
    operator delete(v67);
  }

  v52 = a2;
  if (v22)
  {
    LODWORD(v23) = 0;
    v24 = 4 * v22;
    v25 = Data;
    do
    {
      v26 = *v25++;
      v23 = v26 + v23;
      v24 -= 4;
    }

    while (v24);
  }

  else
  {
    v23 = 0;
  }

  v36 = *(*v10 + 8 * v13);
  v37 = (*(*v36 + 16))(v36);
  if (v37 && (*(*v37 + 48))(v37) != v23)
  {
    v46 = __cxa_allocate_exception(0x48uLL);
    v47 = v52[1];
    *&v58 = *v52;
    *(&v58 + 1) = v47;
    if (v47)
    {
      atomic_fetch_add_explicit((v47 + 8), 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v57, "The sum of split_sizes does not match the input dimension.");
    MIL::ValidationError::ValidationError(v46, &v58, v57, 315);
  }

  if (v14)
  {
    std::string::basic_string[abi:ne200100]<0>(&v67, "num_splits");
    v38 = MIL::ValueTypeInferenceUtils::GetSingleValue(a3, &v67);
    v39 = MIL::IRValue::AsTensor(v38);
    v40 = MIL::IRValue::GetScalar<int>(v39);
    if (SHIBYTE(v69) < 0)
    {
      operator delete(v67);
    }

    if (v22 != v40)
    {
      v48 = __cxa_allocate_exception(0x48uLL);
      v49 = v52[1];
      *&v56 = *v52;
      *(&v56 + 1) = v49;
      if (v49)
      {
        atomic_fetch_add_explicit((v49 + 8), 1uLL, memory_order_relaxed);
      }

      std::string::basic_string[abi:ne200100]<0>(v55, "Parameter num_splits is not equal to length of split_sizes param when both are specified.");
      MIL::ValidationError::ValidationError(v48, &v56, v55, 315);
    }
  }

  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  std::vector<std::string const*>::reserve(a4, v22);
  if (v22)
  {
    v41 = *Data;
    v67 = 0;
    v68 = 0;
    v69 = 0;
    std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&v67, *v10, v10[1], (v10[1] - *v10) >> 3);
    v42 = MIL::IRConstantDimension::Make(*a1, v41);
    *(v67 + v13) = v42;
    MIL::IRTensorValueType::MakeWithShape();
  }

  MIL::ValidationResult::~ValidationResult(v71);
}

void sub_2181EB0C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, std::__shared_weak_count *a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, uint64_t a43, char a44)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a19);
  }

  if (v45)
  {
    __cxa_free_exception(v44);
  }

  v48 = *(v46 - 200);
  if (v48)
  {
    *(v46 - 192) = v48;
    operator delete(v48);
  }

  MIL::ValidationResult::~ValidationResult((v46 - 144));
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceSqueeze(MIL::IRUnknownDimension **a1, uint64_t a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(__p, "x");
  SingleValueType = MIL::ValueTypeInferenceUtils::GetSingleValueType(a3, __p);
  v6 = MIL::IRValueType::AsTensorType(SingleValueType);
  if (SBYTE7(v24) < 0)
  {
    operator delete(__p[0]);
  }

  (*(*v6 + 88))(v6);
  memset(v20, 0, sizeof(v20));
  v7 = (*(*v6 + 96))(v6);
  if (MIL::ValueTypeInferenceUtils::ShapeHasVariadicUnknownDims(v7))
  {
    __p[0] = MIL::IRUnknownDimension::Make(*a1, 1);
    std::vector<MIL::IRDimension const*>::__assign_with_size[abi:ne200100]<MIL::IRDimension const* const*,MIL::IRDimension const* const*>(v20, __p, &__p[1], 1uLL);
    MIL::IRTensorValueType::MakeWithShape();
  }

  *__p = 0u;
  v24 = 0u;
  v25 = 1065353216;
  std::string::basic_string[abi:ne200100]<0>(v21, "axes");
  v8 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, v21);
  v9 = v8;
  if (v22 < 0)
  {
    operator delete(v21[0]);
    if (!v9)
    {
      goto LABEL_13;
    }
  }

  else if (!v8)
  {
    goto LABEL_13;
  }

  std::string::basic_string[abi:ne200100]<0>(v21, "axes");
  SingleValue = MIL::ValueTypeInferenceUtils::GetSingleValue(a3, v21);
  v11 = MIL::IRValue::AsTensor(SingleValue);
  Data = MIL::IRTensorValue::GetDataView<int>(v11);
  v14 = v13;
  if (v22 < 0)
  {
    operator delete(v21[0]);
  }

  MIL::ValueTypeInferenceUtils::ConvertAxesToNonNeg(Data, v14, (v7[1] - *v7) >> 3, &v18);
  std::unordered_set<unsigned long>::unordered_set<std::__wrap_iter<unsigned long *>>(v21, v18, v19);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(__p, v21);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v21);
  if (v18)
  {
    v19 = v18;
    operator delete(v18);
  }

LABEL_13:
  v21[0] = 0;
  v15 = *v7;
  if (v7[1] != *v7)
  {
    v16 = 0;
    do
    {
      v17 = (*(**(v15 + 8 * v16) + 16))(*(v15 + 8 * v16));
      if (!v17 || (*(*v17 + 48))(v17) != 1 || *(&v24 + 1) && !std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::find<unsigned long long>(__p, v21))
      {
        std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](v20, (*v7 + 8 * v21[0]));
      }

      v16 = v21[0] + 1;
      v21[0] = v16;
      v15 = *v7;
    }

    while (v16 < (v7[1] - *v7) >> 3);
  }

  MIL::IRTensorValueType::MakeWithShape();
}

void sub_2181EB5EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(&a24);
  if (a13)
  {
    operator delete(a13);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceStack(MIL::IRConstantDimension **a1, uint64_t a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(__p, "values");
  v5 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, __p);
  if (v5)
  {
    if (SHIBYTE(v24) < 0)
    {
      operator delete(__p[0]);
    }

    ValueType = MIL::IRTypedArgument::GetValueType(*v5[5]);
    v7 = MIL::IRValueType::AsTensorType(ValueType);
    (*(*v7 + 88))(v7);
    v8 = v5[6];
    v9 = v5[5];
    v10 = (*(*v7 + 96))(v7);
    std::string::basic_string[abi:ne200100]<0>(__p, "axis");
    SingleValue = MIL::ValueTypeInferenceUtils::GetSingleValue(a3, __p);
    v12 = MIL::IRValue::GetScalar<int>(SingleValue);
    if (SHIBYTE(v24) < 0)
    {
      operator delete(__p[0]);
    }

    if (MIL::Validation::IsAxisValidForRank(v12, ((v10[1] - *v10) >> 3) + 1))
    {
      v13 = *v10;
      v14 = v10[1];
      v15 = v14 - *v10;
      __p[0] = 0;
      __p[1] = 0;
      v24 = 0;
      std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(__p, v13, v14, v15 >> 3);
      v16 = __p[0];
      v17 = MIL::IRConstantDimension::Make(*a1, ((v8 - v9) >> 4));
      if (v12 < 0)
      {
        v18 = v12 + (v15 >> 3) + 1;
      }

      else
      {
        v18 = v12;
      }

      v25.__r_.__value_.__r.__words[0] = v17;
      std::vector<MIL::IRDimension const*>::insert(__p, &v16[8 * v18], &v25);
      MIL::IRTensorValueType::MakeWithShape();
    }

    std::ostringstream::basic_ostringstream[abi:ne200100](__p);
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Axis must be within range (-input_ndim-2, input_ndim+1) (exclusive) to stack. Invalid axis: ", 92);
    v20 = MEMORY[0x21CEAFB20](v19, v12);
    v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, " for input_ndim: ", 17);
    MEMORY[0x21CEAFB40](v21, (v10[1] - *v10) >> 3);
    exception = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str();
    std::logic_error::logic_error(exception, &v25);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
  }

  std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
}

void sub_2181EB954(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v17 - 89) < 0)
  {
    operator delete(*(v17 - 112));
    if ((v16 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&__p);
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

void MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceTranspose(MIL::IRUnknownDimension **a1, uint64_t a2, void *a3)
{
  v21[2] = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(__p, "x");
  SingleValueType = MIL::ValueTypeInferenceUtils::GetSingleValueType(a3, __p);
  v6 = MIL::IRValueType::AsTensorType(SingleValueType);
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  (*(*v6 + 88))(v6);
  memset(v19, 0, sizeof(v19));
  v7 = (*(*v6 + 96))(v6);
  std::string::basic_string[abi:ne200100]<0>(__p, "perm");
  SingleValue = MIL::ValueTypeInferenceUtils::GetSingleValue(a3, __p);
  v9 = MIL::IRValue::AsTensor(SingleValue);
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  Data = MIL::IRTensorValue::GetDataView<int>(v9);
  v12 = v11;
  std::unordered_set<int>::unordered_set<int const*>(__p, Data, &Data[v11]);
  if (MIL::ValueTypeInferenceUtils::ShapeHasVariadicUnknownDims(v7))
  {
    __src = MIL::IRUnknownDimension::Make(*a1, 1);
    std::vector<MIL::IRDimension const*>::__assign_with_size[abi:ne200100]<MIL::IRDimension const* const*,MIL::IRDimension const* const*>(v19, &__src, v21, 1uLL);
    MIL::IRTensorValueType::MakeWithShape();
  }

  if (*v18 == (v7[1] - *v7) >> 3)
  {
    MIL::ValueTypeInferenceUtils::ConvertAxesToNonNeg(Data, v12, *v18, &__src);
    v13 = __src;
    v14 = v21[0];
    while (v13 != v14)
    {
      std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](v19, (*v7 + 8 * *v13++));
    }

    MIL::IRTensorValueType::MakeWithShape();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::logic_error::logic_error(exception, "Each 'axis' in 'perm' must correspond to a unique and different dimension.");
  exception->__vftable = (MEMORY[0x277D828F8] + 16);
  __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
}

void sub_2181EBC98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23)
{
  __cxa_free_exception(v23);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(&a10);
  if (__p)
  {
    a19 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t MIL::Operators::Common::ios15::anonymous namespace::inferIndexHelper<int>(MIL::IRValue *a1, void *a2, unint64_t a3)
{
  v5 = MIL::IRValue::AsTensor(a1);
  v11[0] = MIL::IRTensorValue::GetDataView<int>(v5);
  v11[1] = v6;
  if ((*(**(*a2 + 8 * a3) + 24))(*(*a2 + 8 * a3)))
  {
    return 0;
  }

  v8 = MIL::IRDimension::AsConstant(*(*a2 + 8 * a3));
  v9 = (*(*v8 + 48))(v8);
  if ((*MIL::Util::Span<int const,18446744073709551615ul>::At(v11, a3) & 0x80000000) != 0)
  {
    v10 = *MIL::Util::Span<int const,18446744073709551615ul>::At(v11, a3) + v9;
  }

  else
  {
    v10 = *MIL::Util::Span<int const,18446744073709551615ul>::At(v11, a3);
  }

  return v10 | 0x100000000;
}

uint64_t MIL::Operators::Common::ios15::anonymous namespace::inferIndexHelper<short>(MIL::IRValue *a1, void *a2, unint64_t a3)
{
  v5 = MIL::IRValue::AsTensor(a1);
  v11[0] = MIL::IRTensorValue::GetDataView<short>(v5);
  v11[1] = v6;
  if ((*(**(*a2 + 8 * a3) + 24))(*(*a2 + 8 * a3)))
  {
    return 0;
  }

  v8 = MIL::IRDimension::AsConstant(*(*a2 + 8 * a3));
  v9 = (*(*v8 + 48))(v8);
  v10 = *MIL::Util::Span<short const,18446744073709551615ul>::At(v11, a3);
  return ((v9 & (v10 >> 31)) + *MIL::Util::Span<short const,18446744073709551615ul>::At(v11, a3)) | 0x100000000;
}

uint64_t MIL::Operators::Common::ios15::anonymous namespace::inferIndexHelper<signed char>(MIL::IRValue *a1, void *a2, unint64_t a3)
{
  v5 = MIL::IRValue::AsTensor(a1);
  v11[0] = MIL::IRTensorValue::GetDataView<signed char>(v5);
  v11[1] = v6;
  if ((*(**(*a2 + 8 * a3) + 24))(*(*a2 + 8 * a3)))
  {
    return 0;
  }

  v8 = MIL::IRDimension::AsConstant(*(*a2 + 8 * a3));
  v9 = (*(*v8 + 48))(v8);
  v10 = *MIL::Util::Span<signed char const,18446744073709551615ul>::At(v11, a3);
  return ((v9 & (v10 >> 31)) + *MIL::Util::Span<signed char const,18446744073709551615ul>::At(v11, a3)) | 0x100000000;
}

void *std::vector<MIL::IRDimension const*>::__assign_with_size[abi:ne200100]<MIL::IRDimension const* const*,MIL::IRDimension const* const*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<MIL::IRDimension const*>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
  {
    v18 = a3 - __src;
    if (v18)
    {
      result = memmove(*result, __src, v18);
    }

    v17 = &v8[v18];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    v14 = v11;
    if (v13 != a3)
    {
      v14 = v11;
      v15 = v11;
      do
      {
        v16 = *v13;
        v13 += 8;
        *v15 = v16;
        v15 += 8;
        v14 += 8;
      }

      while (v13 != a3);
    }

    v17 = v14;
  }

  v6[1] = v17;
  return result;
}

void *std::vector<BOOL>::__assign_with_size[abi:ne200100]<BOOL const*,BOOL const*>(void *result, _BYTE *a2, _BYTE *a3, unint64_t a4)
{
  result[1] = 0;
  if (a4)
  {
    v5 = result;
    if (a4 > result[2] << 6)
    {
      v6 = *result;
      if (*v5)
      {
        operator delete(v6);
        *v5 = 0;
        v5[1] = 0;
        v5[2] = 0;
      }

      std::vector<BOOL>::__vallocate[abi:ne200100](v5, a4);
    }

    return std::vector<BOOL>::__construct_at_end<BOOL const*,BOOL const*>(result, a2, a3, a4);
  }

  return result;
}

void *std::vector<BOOL>::__construct_at_end<BOOL const*,BOOL const*>(void *result, _BYTE *a2, _BYTE *a3, uint64_t a4)
{
  v4 = result[1];
  v5 = v4 + a4;
  result[1] = v4 + a4;
  if (!v4 || ((v5 - 1) ^ (v4 - 1)) >= 0x40)
  {
    if (v5 >= 0x41)
    {
      v6 = (v5 - 1) >> 6;
    }

    else
    {
      v6 = 0;
    }

    *(*result + 8 * v6) = 0;
  }

  if (a2 != a3)
  {
    v7 = v4 & 0x3F;
    v8 = (*result + 8 * (v4 >> 6));
    do
    {
      v9 = 1 << v7;
      if (*a2 == 1)
      {
        v10 = *v8 | v9;
      }

      else
      {
        v10 = *v8 & ~v9;
      }

      *v8 = v10;
      ++a2;
      v8 += v7 == 63;
      if (v7 == 63)
      {
        v7 = 0;
      }

      else
      {
        ++v7;
      }
    }

    while (a2 != a3);
  }

  return result;
}

uint64_t std::__count_BOOL[abi:ne200100]<false,std::vector<BOOL>,false>(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    if ((64 - v2) >= a2)
    {
      v3 = a2;
    }

    else
    {
      v3 = (64 - v2);
    }

    v4 = vcnt_s8(((0xFFFFFFFFFFFFFFFFLL >> (64 - v2 - v3)) & (-1 << v2) & ~**a1));
    v4.i16[0] = vaddlv_u8(v4);
    v5 = v4.u32[0];
    a2 -= v3;
    *a1 += 8;
  }

  else
  {
    v5 = 0;
  }

  if (a2 >= 0x40)
  {
    v6 = *a1;
    do
    {
      v7 = *v6++;
      v8 = vcnt_s8(~v7);
      v8.i16[0] = vaddlv_u8(v8);
      v5 += v8.u32[0];
      a2 -= 64;
    }

    while (a2 > 0x3F);
    *a1 = v6;
  }

  if (a2)
  {
    v9 = vcnt_s8(((0xFFFFFFFFFFFFFFFFLL >> -a2) & ~**a1));
    v9.i16[0] = vaddlv_u8(v9);
    v5 += v9.u32[0];
  }

  return v5;
}

void sub_2181EC3B8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::unordered_set<int>::unordered_set<int const*>(uint64_t a1, int *a2, int *a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__emplace_unique_key_args<int,int const&>(a1, v5++);
    }

    while (v5 != a3);
  }

  return a1;
}

uint64_t *std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__emplace_unique_key_args<int,int const&>(void *a1, int *a2)
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
    if (*&v3 <= v2)
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

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void MIL::Operators::Common::ios15::BatchToSpace::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2181EDACC(_Unwind_Exception *a1)
{
  v3 = STACK[0x2A0];
  STACK[0x2A0] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *v1;
  *v1 = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x278], 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x2C8], 0);
  _Unwind_Resume(a1);
}

void sub_2181EDF70()
{
  std::__function::__value_func<std::shared_ptr<MIL::IRValue const> ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](v0 - 224);
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](v0 - 192);
  if (STACK[0x228])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x228]);
  }

  if (STACK[0x238])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x238]);
  }

  JUMPOUT(0x2181EDFA4);
}

void sub_2181EDFB4()
{
  v1 = *(v0 - 64);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  v2 = STACK[0x270];
  STACK[0x270] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x2181EDFFCLL);
}

void sub_2181EE01C()
{
  v1 = *(v0 - 120);
  *(v0 - 120) = 0;
  if (v1)
  {
    MIL::Operators::Common::ios15::BaseActivation::Make();
  }

  if (STACK[0x288])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x288]);
  }

  v2 = STACK[0x2A0];
  if (STACK[0x2A0])
  {
    STACK[0x2A8] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x2181EDF44);
}

void sub_2181EE074()
{
  v1 = *(v0 - 160);
  *(v0 - 160) = 0;
  if (v1)
  {
    MIL::Operators::Common::ios15::BaseActivation::Make();
  }

  if (STACK[0x2C0])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x2C0]);
  }

  v2 = *(v0 - 120);
  if (v2)
  {
    *(v0 - 112) = v2;
    operator delete(v2);
  }

  v3 = STACK[0x2A0];
  if (STACK[0x2A0])
  {
    STACK[0x2A8] = v3;
    operator delete(v3);
  }

  JUMPOUT(0x2181EDF44);
}

void MIL::Operators::Common::ios15::Concat::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2181EEC04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52)
{
  v55 = *(v53 - 88);
  *(v53 - 88) = 0;
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v53 - 120), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a52, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::DepthToSpace::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2181EFD38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, void **a62)
{
  v65 = *(v63 - 104);
  *(v63 - 104) = 0;
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a62, 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v63 - 256), 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::ExpandDims::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2181F0E14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, void *a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57)
{
  v60 = *(v58 - 88);
  *(v58 - 88) = 0;
  if (v60)
  {
    (*(*v60 + 8))(v60);
  }

  v61 = *v57;
  *v57 = 0;
  if (v61)
  {
    (*(*v61 + 8))(v61);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v58 - 96), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a57, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::PixelShuffle::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2181F1FBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, void **a62)
{
  v65 = *(v63 - 104);
  *(v63 - 104) = 0;
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a62, 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v63 - 256), 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::Reshape::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2181F3068(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, void *a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57)
{
  v60 = *(v58 - 88);
  *(v58 - 88) = 0;
  if (v60)
  {
    (*(*v60 + 8))(v60);
  }

  v61 = *v57;
  *v57 = 0;
  if (v61)
  {
    (*(*v61 + 8))(v61);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v58 - 96), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a57, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::Reverse::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2181F438C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, void **a58, uint64_t a59, uint64_t a60, void *a61, uint64_t a62, uint64_t a63)
{
  v72 = *(v70 - 88);
  *(v70 - 88) = 0;
  if (v72)
  {
    (*(*v72 + 8))(v72);
  }

  v73 = *v69;
  *v69 = 0;
  if (v73)
  {
    (*(*v73 + 8))(v73);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a58, 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a69, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::ReverseSequence::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2181F5844(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, void **a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v73 = *(v71 - 88);
  *(v71 - 88) = 0;
  if (v73)
  {
    (*(*v73 + 8))(v73);
  }

  v74 = *v70;
  *v70 = 0;
  if (v74)
  {
    (*(*v74 + 8))(v74);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a58, 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a70, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::SliceByIndex::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2181F74EC(_Unwind_Exception *a1)
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 152), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x338], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::SliceBySize::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2181F8C10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v75 = *(v73 - 96);
  *(v73 - 96) = 0;
  if (v75)
  {
    (*(*v75 + 8))(v75);
  }

  v76 = *v72;
  *v72 = 0;
  if (v76)
  {
    (*(*v76 + 8))(v76);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v73 - 152), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a72, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::SlidingWindows::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2181F9E3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  v61 = *(v59 - 88);
  *(v59 - 88) = 0;
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

void MIL::Operators::Common::ios15::SpaceToBatch::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2181FB6E8(_Unwind_Exception *a1)
{
  v3 = STACK[0x2A0];
  STACK[0x2A0] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *v1;
  *v1 = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x278], 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x2C8], 0);
  _Unwind_Resume(a1);
}

void sub_2181FBB8C()
{
  std::__function::__value_func<std::shared_ptr<MIL::IRValue const> ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](v0 - 224);
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](v0 - 192);
  if (STACK[0x228])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x228]);
  }

  if (STACK[0x238])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x238]);
  }

  JUMPOUT(0x2181FBBC0);
}

void sub_2181FBBD0()
{
  v1 = *(v0 - 64);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  v2 = STACK[0x270];
  STACK[0x270] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x2181FBC18);
}

void sub_2181FBC38()
{
  v1 = *(v0 - 120);
  *(v0 - 120) = 0;
  if (v1)
  {
    MIL::Operators::Common::ios15::BaseActivation::Make();
  }

  if (STACK[0x288])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x288]);
  }

  v2 = STACK[0x2A0];
  if (STACK[0x2A0])
  {
    STACK[0x2A8] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x2181FBB60);
}

void sub_2181FBC90()
{
  v1 = *(v0 - 160);
  *(v0 - 160) = 0;
  if (v1)
  {
    MIL::Operators::Common::ios15::BaseActivation::Make();
  }

  if (STACK[0x2C0])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x2C0]);
  }

  v2 = *(v0 - 120);
  if (v2)
  {
    *(v0 - 112) = v2;
    operator delete(v2);
  }

  v3 = STACK[0x2A0];
  if (STACK[0x2A0])
  {
    STACK[0x2A8] = v3;
    operator delete(v3);
  }

  JUMPOUT(0x2181FBB60);
}

void MIL::Operators::Common::ios15::SpaceToDepth::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2181FCAAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, void **a62)
{
  v65 = *(v63 - 104);
  *(v63 - 104) = 0;
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a62, 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v63 - 256), 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::Split::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2181FD804(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, __int16 a50, char a51, char a52)
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

void MIL::Operators::Common::ios15::Squeeze::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2181FE888(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, void *a54, uint64_t a55, uint64_t a56, void *a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  v65 = *(v63 - 96);
  *(v63 - 96) = 0;
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v63 - 152), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a62, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::Stack::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2181FF774(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, void *a54, uint64_t a55, uint64_t a56, void *a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
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

void MIL::Operators::Common::ios15::Transpose::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_218200898(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, void *a54, uint64_t a55, uint64_t a56, void *a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  v65 = *(v63 - 96);
  *(v63 - 96) = 0;
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v63 - 152), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a62, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::BaseActivation::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_218201948(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  v50 = *(v48 - 120);
  *(v48 - 120) = 0;
  if (v50)
  {
    (*(*v50 + 8))(v50);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v48 - 88), 0);
  v51 = *v47;
  *v47 = 0;
  if (v51)
  {
    (*(*v51 + 8))(v51);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v48 - 96), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a47, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::BaseActivationWithAlpha::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_218202B78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57)
{
  v60 = *(v58 - 120);
  *(v58 - 120) = 0;
  if (v60)
  {
    (*(*v60 + 8))(v60);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v58 - 88), 0);
  v61 = *v57;
  *v57 = 0;
  if (v61)
  {
    (*(*v61 + 8))(v61);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v58 - 96), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a57, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::BaseActivationWithAlphaBeta::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_21820402C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v70 = *(v68 - 120);
  *(v68 - 120) = 0;
  if (v70)
  {
    (*(*v70 + 8))(v70);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v68 - 88), 0);
  v71 = *v67;
  *v67 = 0;
  if (v71)
  {
    (*(*v71 + 8))(v71);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v68 - 96), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a67, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::ClampedReLU::Make(uint64_t a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios16::BaseActivationWithAlphaBeta::Make();
}

void sub_218204688(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::LinearActivation::Make(uint64_t a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios16::BaseActivationWithAlphaBeta::Make();
}

void sub_21820473C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::ScaledTanh::Make(uint64_t a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios16::BaseActivationWithAlphaBeta::Make();
}

void sub_2182047F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::SigmoidHard::Make(uint64_t a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios16::BaseActivationWithAlphaBeta::Make();
}

void sub_2182048A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::ELU::Make(uint64_t a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios16::BaseActivationWithAlpha::Make();
}

void sub_218204958(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::LeakyReLU::Make(uint64_t a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios16::BaseActivationWithAlpha::Make();
}

void sub_218204A0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::ThresholdedReLU::Make(uint64_t a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios16::BaseActivationWithAlpha::Make();
}

void sub_218204AC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::ERF::Make(uint64_t a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios16::BaseActivation::Make();
}

void sub_218204B74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::GeLU::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_218205990(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55)
{
  v58 = *(v56 - 104);
  *(v56 - 104) = 0;
  if (v58)
  {
    (*(*v58 + 8))(v58);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v56 - 72), 0);
  v59 = *v55;
  *v55 = 0;
  if (v59)
  {
    (*(*v59 + 8))(v59);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v56 - 80), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a55, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::ReLU::Make(uint64_t a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios16::BaseActivation::Make();
}

void sub_218205F94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::ReLU6::Make(uint64_t a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios16::BaseActivation::Make();
}

void sub_218206048(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::Sigmoid::Make(uint64_t a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios16::BaseActivation::Make();
}

void sub_2182060FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::SiLU::Make(uint64_t a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios16::BaseActivation::Make();
}

void sub_2182061B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::Softplus::Make(uint64_t a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios16::BaseActivation::Make();
}

void sub_218206264(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::Softsign::Make(uint64_t a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios16::BaseActivation::Make();
}

void sub_218206318(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::PReLU::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_218207300(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, void **a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v68 = *(v66 - 120);
  *(v66 - 120) = 0;
  if (v68)
  {
    (*(*v68 + 8))(v68);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v66 - 96), 0);
  v69 = *v65;
  *v65 = 0;
  if (v69)
  {
    (*(*v69 + 8))(v69);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a60, 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a65, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::Softmax::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2182086EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59)
{
  v62 = *(v60 - 88);
  *(v60 - 88) = 0;
  if (v62)
  {
    (*(*v62 + 8))(v62);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v60 - 72), 0);
  v63 = *v59;
  *v59 = 0;
  if (v63)
  {
    (*(*v63 + 8))(v63);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v60 - 104), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a59, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::SoftplusParametric::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_218209F74(_Unwind_Exception *a1)
{
  v4 = *(v2 - 120);
  *(v2 - 120) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 96), 0);
  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x218], 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x250], 0);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_pointer<MIL::Validation::OpAttributeConstraintTarget  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t std::__shared_ptr_pointer<MIL::Validation::OpAttributeConstraintTarget  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<MIL::Validation::OpAttributeConstraintTarget  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void MIL::Operators::Common::ios16::CustomValidators::ValidateConstexprAffineDequantize(MIL::Operators::Common::ios16::CustomValidators *this@<X0>, MIL::ValidationResult *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(&v79, "quantized_data");
  MIL::IRObject::TryGetAttributeSharedPtr(this, &v79.__r_.__value_.__l.__data_, &lpsrc);
  if (lpsrc)
  {
    if (v5)
    {
      v6 = v65;
      if (v65)
      {
        atomic_fetch_add_explicit(&v65->__shared_owners_, 1uLL, memory_order_relaxed);
      }
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  if (v65)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v65);
  }

  if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v79.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v79, "zero_point");
  MIL::IRObject::TryGetAttributeSharedPtr(this, &v79.__r_.__value_.__l.__data_, &lpsrc);
  if (lpsrc)
  {
    if (v7)
    {
      v8 = v65;
      if (v65)
      {
        atomic_fetch_add_explicit(&v65->__shared_owners_, 1uLL, memory_order_relaxed);
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  if (v65)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v65);
  }

  if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v79.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v79, "scale");
  MIL::IRObject::TryGetAttributeSharedPtr(this, &v79.__r_.__value_.__l.__data_, &lpsrc);
  if (lpsrc)
  {
    if (v9)
    {
      v10 = v65;
      if (v65)
      {
        atomic_fetch_add_explicit(&v65->__shared_owners_, 1uLL, memory_order_relaxed);
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  if (v65)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v65);
  }

  if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v79.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v79, "axis");
  Attribute = MIL::IRObject::GetAttribute(this, &v79.__r_.__value_.__l.__data_);
  v12 = MIL::IRValue::AsTensor(Attribute);
  v13 = *MIL::IRTensorValue::GetDataView<int>(v12);
  if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v79.__r_.__value_.__l.__data_);
  }

  v14 = (*(*v5 + 32))(v5);
  v15 = MIL::IRTensorValueType::Rank(v14);
  if (v13 >= 0)
  {
    v16 = 0;
  }

  else
  {
    v16 = v15;
  }

  if (v13 < -v15 || v15 <= v13)
  {
    LocationPtr = MIL::IRObject::GetLocationPtr(this);
    v43 = LocationPtr[1];
    v77 = *LocationPtr;
    v78 = v43;
    if (v43)
    {
      atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::to_string(&v79, v13);
    v44 = std::string::insert(&v79, 0, "Attribute axis should be in the range -quantizedData.rank <= axis < quantizedData.rank. Provided axis = ");
    v45 = *&v44->__r_.__value_.__l.__data_;
    v76 = v44->__r_.__value_.__r.__words[2];
    v75 = v45;
    v44->__r_.__value_.__l.__size_ = 0;
    v44->__r_.__value_.__r.__words[2] = 0;
    v44->__r_.__value_.__r.__words[0] = 0;
    MIL::ValidationResult::ValidationResult(a2, &v77, 322, &v75);
    if (SHIBYTE(v76) < 0)
    {
      operator delete(v75);
    }

    if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v79.__r_.__value_.__l.__data_);
    }

    v46 = v78;
    if (!v78)
    {
      goto LABEL_81;
    }

LABEL_59:
    std::__shared_weak_count::__release_shared[abi:ne200100](v46);
    goto LABEL_81;
  }

  v17 = (*(*v7 + 32))(v7);
  v18 = (*(*v5 + 32))(v5);
  v19 = (*(*v18 + 96))(v18);
  v20 = v16 + v13;
  v21 = MIL::IRDimension::AsConstant(*(*v19 + 8 * v20));
  v22 = (*(*v21 + 48))(v21);
  if (MIL::IRTensorValueType::Rank(v17) == 1 && (*(*v17 + 16))(v17) != v22)
  {
    v50 = MIL::IRObject::GetLocationPtr(this);
    v51 = v50[1];
    v73 = *v50;
    v74 = v51;
    if (v51)
    {
      atomic_fetch_add_explicit(&v51->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v71, "Attribute zeroPoint, if vector, needs to have same number of elements as quantizedData[axis]");
    MIL::ValidationResult::ValidationResult(a2, &v73, 322, v71);
    if (v72 < 0)
    {
      operator delete(v71[0]);
    }

    v46 = v74;
    if (!v74)
    {
      goto LABEL_81;
    }

    goto LABEL_59;
  }

  v23 = (*(*v9 + 32))(v9);
  v24 = (*(*v5 + 32))(v5);
  v25 = (*(*v24 + 96))(v24);
  v26 = MIL::IRDimension::AsConstant(*(*v25 + 8 * v20));
  v27 = (*(*v26 + 48))(v26);
  if (MIL::IRTensorValueType::Rank(v23) != 1 || (*(*v23 + 16))(v23) == v27)
  {
    v28 = (*(*this + 176))(this);
    if (*(v28 + 8) == *v28)
    {
      std::vector<MIL::IRDimension const*>::__throw_out_of_range[abi:ne200100]();
    }

    Type = MIL::IRNamedValueType::GetType(**v28);
    v30 = MIL::IRValueType::AsTensorType(Type);
    v31 = (*(*v30 + 96))(v30);
    memset(&v79, 0, sizeof(v79));
    std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&v79, *v31, v31[1], (v31[1] - *v31) >> 3);
    v32 = (*(*v5 + 32))(v5);
    v33 = (*(*v32 + 96))(v32);
    lpsrc = 0;
    v65 = 0;
    v66 = 0;
    std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&lpsrc, *v33, v33[1], (v33[1] - *v33) >> 3);
    v34 = v79.__r_.__value_.__r.__words[0];
    if (v79.__r_.__value_.__l.__size_ - v79.__r_.__value_.__r.__words[0] == v65 - lpsrc)
    {
      if (v79.__r_.__value_.__l.__size_ == v79.__r_.__value_.__r.__words[0])
      {
LABEL_50:
        v39 = MIL::IRValueType::AsTensorType(Type);
        v40 = (*(*v39 + 88))(v39);
        v41 = (*(*v9 + 32))(v9);
        if (v40 == (*(*v41 + 88))(v41))
        {
          MIL::ValidationResult::ValidationResult(a2);
LABEL_66:
          if (lpsrc)
          {
            v65 = lpsrc;
            operator delete(lpsrc);
          }

          if (v79.__r_.__value_.__r.__words[0])
          {
            v79.__r_.__value_.__l.__size_ = v79.__r_.__value_.__r.__words[0];
            operator delete(v79.__r_.__value_.__l.__data_);
          }

          goto LABEL_81;
        }

        v54 = MIL::IRObject::GetLocationPtr(this);
        v55 = v54[1];
        v58 = *v54;
        v59 = v55;
        if (v55)
        {
          atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        std::string::basic_string[abi:ne200100]<0>(v56, "Attribute scale and output should have same dtype");
        MIL::ValidationResult::ValidationResult(a2, &v58, 306, v56);
        if (v57 < 0)
        {
          operator delete(v56[0]);
        }

        v49 = v59;
        if (!v59)
        {
          goto LABEL_66;
        }

LABEL_65:
        std::__shared_weak_count::__release_shared[abi:ne200100](v49);
        goto LABEL_66;
      }

      v35 = 0;
      while ((*(**(v34 + 8 * v35) + 16))(*(v34 + 8 * v35)))
      {
        if (!(*(**(lpsrc + v35) + 16))(*(lpsrc + v35)))
        {
          break;
        }

        v36 = MIL::IRDimension::AsConstant(*(v79.__r_.__value_.__r.__words[0] + 8 * v35));
        v37 = (*(*v36 + 48))(v36);
        v38 = MIL::IRDimension::AsConstant(*(lpsrc + v35));
        if (v37 != (*(*v38 + 48))(v38))
        {
          break;
        }

        ++v35;
        v34 = v79.__r_.__value_.__r.__words[0];
        if (v35 >= (v79.__r_.__value_.__l.__size_ - v79.__r_.__value_.__r.__words[0]) >> 3)
        {
          goto LABEL_50;
        }
      }
    }

    v47 = MIL::IRObject::GetLocationPtr(this);
    v48 = v47[1];
    v62 = *v47;
    v63 = v48;
    if (v48)
    {
      atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "Attribute quantizedData and output should have same shape");
    MIL::ValidationResult::ValidationResult(a2, &v62, 322, __p);
    if (v61 < 0)
    {
      operator delete(__p[0]);
    }

    v49 = v63;
    if (!v63)
    {
      goto LABEL_66;
    }

    goto LABEL_65;
  }

  v52 = MIL::IRObject::GetLocationPtr(this);
  v53 = v52[1];
  v69 = *v52;
  v70 = v53;
  if (v53)
  {
    atomic_fetch_add_explicit(&v53->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(v67, "Attribute scale, if vector, needs to have same number of elements as quantizedData[axis]");
  MIL::ValidationResult::ValidationResult(a2, &v69, 322, v67);
  if (v68 < 0)
  {
    operator delete(v67[0]);
  }

  v46 = v70;
  if (v70)
  {
    goto LABEL_59;
  }

LABEL_81:
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void sub_21820B064(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, uint64_t a44)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  if (a26)
  {
    operator delete(a26);
  }

  v49 = *(v47 - 112);
  if (v49)
  {
    *(v47 - 104) = v49;
    operator delete(v49);
  }

  if (v46)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v46);
  }

  if (v45)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v45);
  }

  if (v44)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v44);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios16::ConstexprAffineDequantize::Make()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 0;
  v1 = 0;
  operator new();
}

void sub_21820BBC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void **a33, uint64_t a34, __int16 a35, char a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43)
{
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::~unique_ptr[abi:ne200100](&a32);
  v45 = *v43;
  *v43 = 0;
  if (v45)
  {
    (*(*v45 + 8))(v45);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a33, 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::~unique_ptr[abi:ne200100](&a34);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::ConstexprCast::Make()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 0;
  v1 = 0;
  operator new();
}

void sub_21820C484(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void **a32, uint64_t a33, __int16 a34, char a35, char a36)
{
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::~unique_ptr[abi:ne200100](&a30);
  v38 = *v36;
  *v36 = 0;
  if (v38)
  {
    (*(*v38 + 8))(v38);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a32, 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::~unique_ptr[abi:ne200100](&a33);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::CustomValidators::ValidateConstexprLutToDense(MIL::Operators::Common::ios16::CustomValidators *this@<X0>, MIL::ValidationResult *a2@<X8>)
{
  v58 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(__p, "indices");
  MIL::IRObject::TryGetAttributeSharedPtr(this, __p, v56);
  if (*v56)
  {
    if (v5)
    {
      v6 = *&v56[8];
      if (*&v56[8])
      {
        atomic_fetch_add_explicit((*&v56[8] + 8), 1uLL, memory_order_relaxed);
      }
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  if (*&v56[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&v56[8]);
  }

  if (v54 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "lut");
  MIL::IRObject::TryGetAttributeSharedPtr(this, __p, v56);
  if (!*v56)
  {
    v7 = 0;
    goto LABEL_16;
  }

  if (!v7)
  {
LABEL_16:
    v8 = 0;
    goto LABEL_17;
  }

  v8 = *&v56[8];
  if (*&v56[8])
  {
    atomic_fetch_add_explicit((*&v56[8] + 8), 1uLL, memory_order_relaxed);
  }

LABEL_17:
  if (*&v56[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&v56[8]);
  }

  if (v54 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "shape");
  Attribute = MIL::IRObject::GetAttribute(this, __p);
  v10 = MIL::IRValue::AsTensor(Attribute);
  Data = MIL::IRTensorValue::GetDataView<unsigned int>(v10);
  v13 = v12;
  if (v54 < 0)
  {
    operator delete(__p[0]);
  }

  v14 = (*(*v7 + 32))(v7);
  v55 = (*(*v14 + 16))(v14);
  *v56 = xmmword_218590770;
  *&v56[16] = unk_218590780;
  v57 = 256;
  std::unordered_set<unsigned long>::unordered_set(__p, v56, 5);
  if (std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::find<unsigned long long>(__p, &v55))
  {
    v15 = (*(*this + 176))(this);
    if (*(v15 + 8) == *v15)
    {
      std::vector<MIL::IRDimension const*>::__throw_out_of_range[abi:ne200100]();
    }

    Type = MIL::IRNamedValueType::GetType(**v15);
    v17 = MIL::IRValueType::AsTensorType(Type);
    v18 = (*(*v17 + 88))(v17);
    v19 = (*(*v7 + 32))(v7);
    if (v18 == (*(*v19 + 88))(v19))
    {
      v20 = MIL::IRValueType::AsTensorType(Type);
      v21 = (*(*v20 + 96))(v20);
      memset(v56, 0, 24);
      std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(v56, *v21, v21[1], (v21[1] - *v21) >> 3);
      if (MIL::Operators::Common::Shared::MatchesExpectedShape(v56, Data, v13))
      {
        v22 = log2(v55);
        v23 = (*(*v5 + 32))(v5);
        v24 = (*(*v23 + 16))(v23);
        if (v24 == vcvtpd_u64_f64(vcvtd_n_f64_u64((*(*Type + 16))(Type), 3uLL) * v22))
        {
          MIL::ValidationResult::ValidationResult(a2);
          goto LABEL_49;
        }

        LocationPtr = MIL::IRObject::GetLocationPtr(this);
        v36 = LocationPtr[1];
        v39 = *LocationPtr;
        v40 = v36;
        if (v36)
        {
          atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        std::string::basic_string[abi:ne200100]<0>(v37, "Attribute indices and shape should satisfy indicesSize == std::ceil(nBits * (prod(shape) / 8.0))");
        MIL::ValidationResult::ValidationResult(a2, &v39, 322, v37);
        if (v38 < 0)
        {
          operator delete(v37[0]);
        }

        v34 = v40;
        if (!v40)
        {
          goto LABEL_49;
        }
      }

      else
      {
        v32 = MIL::IRObject::GetLocationPtr(this);
        v33 = v32[1];
        v43 = *v32;
        v44 = v33;
        if (v33)
        {
          atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        std::string::basic_string[abi:ne200100]<0>(v41, "Attribute shape and output's shape should match");
        MIL::ValidationResult::ValidationResult(a2, &v43, 322, v41);
        if (v42 < 0)
        {
          operator delete(v41[0]);
        }

        v34 = v44;
        if (!v44)
        {
          goto LABEL_49;
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v34);
LABEL_49:
      if (*v56)
      {
        *&v56[8] = *v56;
        operator delete(*v56);
      }

      goto LABEL_51;
    }

    v30 = MIL::IRObject::GetLocationPtr(this);
    v31 = v30[1];
    v47 = *v30;
    v48 = v31;
    if (v31)
    {
      atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v45, "Attribute lut and output should have same dtype");
    MIL::ValidationResult::ValidationResult(a2, &v47, 306, v45);
    if (v46 < 0)
    {
      operator delete(v45[0]);
    }

    v29 = v48;
    if (v48)
    {
LABEL_42:
      std::__shared_weak_count::__release_shared[abi:ne200100](v29);
    }
  }

  else
  {
    v25 = MIL::IRObject::GetLocationPtr(this);
    v26 = v25[1];
    v51 = *v25;
    v52 = v26;
    if (v26)
    {
      atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::to_string(v56, v55);
    v27 = std::string::insert(v56, 0, "Attribute lut should have number of elements equal to one of {2, 4, 16, 64, 256}, but provided ");
    v28 = *&v27->__r_.__value_.__l.__data_;
    v50 = v27->__r_.__value_.__r.__words[2];
    *v49 = v28;
    v27->__r_.__value_.__l.__size_ = 0;
    v27->__r_.__value_.__r.__words[2] = 0;
    v27->__r_.__value_.__r.__words[0] = 0;
    MIL::ValidationResult::ValidationResult(a2, &v51, 322, v49);
    if (SHIBYTE(v50) < 0)
    {
      operator delete(v49[0]);
    }

    if ((v56[23] & 0x80000000) != 0)
    {
      operator delete(*v56);
    }

    v29 = v52;
    if (v52)
    {
      goto LABEL_42;
    }
  }

LABEL_51:
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(__p);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void sub_21820CCC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  v52 = *(v50 - 160);
  if (v52)
  {
    *(v50 - 152) = v52;
    operator delete(v52);
  }

  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(&a43);
  if (v49)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v49);
  }

  if (v48)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v48);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::ConstexprLutToDense::Make()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 0;
  v1 = 0;
  operator new();
}

void sub_21820D78C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void **a39, uint64_t a40, __int16 a41, char a42, char a43)
{
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::~unique_ptr[abi:ne200100](&a37);
  v45 = *v43;
  *v43 = 0;
  if (v45)
  {
    (*(*v45 + 8))(v45);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a39, 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::~unique_ptr[abi:ne200100](&a40);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::CustomValidators::ValidateConstexprSparseToDense(MIL::Operators::Common::ios16::CustomValidators *this@<X0>, MIL::ValidationResult *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(&v56, "nonzero_data");
  MIL::IRObject::TryGetAttributeSharedPtr(this, &v56, &v59);
  if (v59)
  {
    if (v5)
    {
      v6 = v60;
      if (v60)
      {
        atomic_fetch_add_explicit(&v60->__shared_owners_, 1uLL, memory_order_relaxed);
      }
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  if (v60)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v60);
  }

  if (SHIBYTE(v58) < 0)
  {
    operator delete(v56);
  }

  std::string::basic_string[abi:ne200100]<0>(&v56, "mask");
  MIL::IRObject::TryGetAttributeSharedPtr(this, &v56, &v59);
  if (!v59)
  {
    v7 = 0;
    goto LABEL_16;
  }

  if (!v7)
  {
LABEL_16:
    v8 = 0;
    goto LABEL_17;
  }

  v8 = v60;
  if (v60)
  {
    atomic_fetch_add_explicit(&v60->__shared_owners_, 1uLL, memory_order_relaxed);
  }

LABEL_17:
  if (v60)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v60);
  }

  if (SHIBYTE(v58) < 0)
  {
    operator delete(v56);
  }

  std::string::basic_string[abi:ne200100]<0>(&v56, "shape");
  Attribute = MIL::IRObject::GetAttribute(this, &v56);
  v10 = MIL::IRValue::AsTensor(Attribute);
  Data = MIL::IRTensorValue::GetDataView<unsigned int>(v10);
  v13 = v12;
  if (SHIBYTE(v58) < 0)
  {
    operator delete(v56);
  }

  v14 = (*(*this + 176))(this);
  if (*(v14 + 8) == *v14)
  {
    std::vector<MIL::IRDimension const*>::__throw_out_of_range[abi:ne200100]();
  }

  Type = MIL::IRNamedValueType::GetType(**v14);
  v16 = MIL::IRValueType::AsTensorType(Type);
  v17 = (*(*v16 + 88))(v16);
  v18 = (*(*v5 + 32))(v5);
  if (v17 == (*(*v18 + 88))(v18))
  {
    v19 = MIL::IRValueType::AsTensorType(Type);
    v20 = (*(*v19 + 96))(v19);
    v56 = 0;
    v57 = 0;
    v58 = 0;
    std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&v56, *v20, v20[1], (v20[1] - *v20) >> 3);
    if (MIL::Operators::Common::Shared::MatchesExpectedShape(&v56, Data, v13))
    {
      v21 = (*(*Type + 16))(Type);
      v22 = (*(*v7 + 32))(v7);
      if ((*(*v22 + 16))(v22) == vcvtpd_u64_f64(vcvtd_n_f64_u64(v21, 3uLL)))
      {
        v23 = MIL::IRTensorValue::GetDataView<unsigned char>(v7);
        if (v24)
        {
          v25 = 0;
          v26 = 0;
          v27 = &v23[v24];
          do
          {
            if (v25 + 8 <= v21)
            {
              v28 = 8;
            }

            else
            {
              v28 = v21 - v25;
            }

            if (v28)
            {
              v29 = 0;
              do
              {
                v26 += (*v23 >> v29++) & 1;
              }

              while (v28 > v29);
            }

            v25 += v28;
            ++v23;
          }

          while (v23 != v27);
        }

        else
        {
          v26 = 0;
        }

        v37 = (*(*v5 + 32))(v5);
        if (v26 == (*(*v37 + 16))(v37))
        {
          MIL::ValidationResult::ValidationResult(a2);
          goto LABEL_64;
        }

        LocationPtr = MIL::IRObject::GetLocationPtr(this);
        v39 = LocationPtr[1];
        v42 = *LocationPtr;
        v43 = v39;
        if (v39)
        {
          atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        std::string::basic_string[abi:ne200100]<0>(v40, "Number of set bits in attribute 'mask' must match the number of elements in attribute 'nonZeroData'");
        MIL::ValidationResult::ValidationResult(a2, &v42, 322, v40);
        if (v41 < 0)
        {
          operator delete(v40[0]);
        }

        v34 = v43;
        if (!v43)
        {
          goto LABEL_64;
        }
      }

      else
      {
        v35 = MIL::IRObject::GetLocationPtr(this);
        v36 = v35[1];
        v46 = *v35;
        v47 = v36;
        if (v36)
        {
          atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        std::string::basic_string[abi:ne200100]<0>(v44, "Attribute mask and shape should satisfy maskSize == std::ceil( prod(shape) / 8.0)");
        MIL::ValidationResult::ValidationResult(a2, &v46, 322, v44);
        if (v45 < 0)
        {
          operator delete(v44[0]);
        }

        v34 = v47;
        if (!v47)
        {
          goto LABEL_64;
        }
      }
    }

    else
    {
      v32 = MIL::IRObject::GetLocationPtr(this);
      v33 = v32[1];
      v50 = *v32;
      v51 = v33;
      if (v33)
      {
        atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      std::string::basic_string[abi:ne200100]<0>(v48, "Attribute shape and output's shape should match");
      MIL::ValidationResult::ValidationResult(a2, &v50, 322, v48);
      if (v49 < 0)
      {
        operator delete(v48[0]);
      }

      v34 = v51;
      if (!v51)
      {
        goto LABEL_64;
      }
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
LABEL_64:
    if (v56)
    {
      v57 = v56;
      operator delete(v56);
    }

    goto LABEL_66;
  }

  v30 = MIL::IRObject::GetLocationPtr(this);
  v31 = v30[1];
  v54 = *v30;
  v55 = v31;
  if (v31)
  {
    atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "Attribute nonZeroData and output should have same dtype");
  MIL::ValidationResult::ValidationResult(a2, &v54, 306, __p);
  if (v53 < 0)
  {
    operator delete(__p[0]);
  }

  if (v55)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v55);
  }

LABEL_66:
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void sub_21820E064(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::__shared_weak_count *a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, uint64_t a40)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  v44 = *(v42 - 128);
  if (v44)
  {
    *(v42 - 120) = v44;
    operator delete(v44);
  }

  if (v41)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v41);
  }

  if (v40)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v40);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios16::ConstexprSparseToDense::Make()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 0;
  v1 = 0;
  operator new();
}

void sub_21820EAF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void **a39, uint64_t a40, __int16 a41, char a42, char a43)
{
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::~unique_ptr[abi:ne200100](&a37);
  v45 = *v43;
  *v43 = 0;
  if (v45)
  {
    (*(*v45 + 8))(v45);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a39, 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::~unique_ptr[abi:ne200100](&a40);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<MIL::Operators::Common::ios16::ConstexprAffineDequantize::Make(MIL::MILContext &,std::string)::$_0,std::allocator<MIL::Operators::Common::ios16::ConstexprAffineDequantize::Make(MIL::MILContext &,std::string)::$_0>,std::shared_ptr<MIL::IRValue const> ()(MIL::IROperation const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829EB7B8;
  a2[1] = v2;
  return result;
}

void std::__function::__func<MIL::Operators::Common::ios16::ConstexprAffineDequantize::Make(MIL::MILContext &,std::string)::$_0,std::allocator<MIL::Operators::Common::ios16::ConstexprAffineDequantize::Make(MIL::MILContext &,std::string)::$_0>,std::shared_ptr<MIL::IRValue const> ()(MIL::IROperation const&)>::operator()(uint64_t a1, MIL::IRObject *a2)
{
  std::string::basic_string[abi:ne200100]<0>(v13, "quantized_data");
  MIL::Operators::Common::Shared::ValidateExistenceAndGetAttributeSharedPtr(a2, v13, &v15);
  if (SHIBYTE(v14) < 0)
  {
    operator delete(v13[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v13, "zero_point");
  MIL::Operators::Common::Shared::ValidateExistenceAndGetAttributeSharedPtr(a2, v13, &v12);
  if (SHIBYTE(v14) < 0)
  {
    operator delete(v13[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v13, "scale");
  MIL::Operators::Common::Shared::ValidateExistenceAndGetAttributeSharedPtr(a2, v13, &v11);
  if (SHIBYTE(v14) < 0)
  {
    operator delete(v13[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v13, "axis");
  MIL::Operators::Common::Shared::ValidateExistenceAndGetAttributeSharedPtr(a2, v13, &v9);
  if (SHIBYTE(v14) < 0)
  {
    operator delete(v13[0]);
  }

  v3 = (*(*v15 + 32))(v15);
  MIL::IRTensorValueType::Rank(v3);
  v7 = v9;
  v8 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::Shared::ValidateAndGetAxis(&v7);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  v4 = (*(*v15 + 32))(v15);
  v5 = (*(*v4 + 96))(v4);
  v13[0] = 0;
  v13[1] = 0;
  v14 = 0;
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(v13, *v5, v5[1], (v5[1] - *v5) >> 3);
  v6 = (*(*v11 + 32))(v11);
  (*(*v6 + 88))(v6);
  MIL::IRTensorValueType::MakeWithShape();
}

void sub_21820F208(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Operators::Common::ios16::ConstexprAffineDequantize::Make(MIL::MILContext &,std::string)::$_0,std::allocator<MIL::Operators::Common::ios16::ConstexprAffineDequantize::Make(MIL::MILContext &,std::string)::$_0>,std::shared_ptr<MIL::IRValue const> ()(MIL::IROperation const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_21820F48C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::make_unique[abi:ne200100]<MIL::Builder::OperationBuilder::OperationBuilderImpl,std::shared_ptr<MIL::IROperation> &,std::shared_ptr<MIL::MILContext>,std::string,MIL::Builder::BlockBuilder *&,0>((v12 | 8), (v13 | 8));
  MEMORY[0x21CEAFEA0](v11, v10);
  _Unwind_Resume(a1);
}

MIL::Operators::Common::ios16::ConstExprs::AffineDequantize **std::unique_ptr<MIL::Operators::Common::ios16::ConstExprs::AffineDequantize>::~unique_ptr[abi:ne200100](MIL::Operators::Common::ios16::ConstExprs::AffineDequantize **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    MIL::Operators::Common::ios16::ConstExprs::AffineDequantize::~AffineDequantize(v2);
    MEMORY[0x21CEAFEA0]();
  }

  return a1;
}

void std::__function::__func<MIL::Operators::Common::ios16::ConstexprAffineDequantize::Make(MIL::MILContext &,std::string)::$_1,std::allocator<MIL::Operators::Common::ios16::ConstexprAffineDequantize::Make(MIL::MILContext &,std::string)::$_1>,std::vector<MIL::IRValueType const*> ()(std::shared_ptr<MIL::MILContext> const&,std::shared_ptr<MIL::Location const>,std::unordered_map<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>> const&,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>> const&,std::vector<std::vector<MIL::IRValueType const*>> const&)>::operator()(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, void *a5)
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = *a3;
  v6 = a3[1];
  *a3 = 0;
  a3[1] = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, "quantized_data");
  v8 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a5, __p);
  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p[0]);
  }

  if (v8)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "scale");
    v9 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a5, __p);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(__p[0]);
    }

    if (v9)
    {
      v10 = MIL::IRValue::AsTensor(v8[5]);
      v11 = (*(*v10 + 32))(v10);
      v12 = (*(*v11 + 96))(v11);
      __p[0] = 0;
      __p[1] = 0;
      v18 = 0;
      std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(__p, *v12, v12[1], (v12[1] - *v12) >> 3);
      v13 = MIL::IRValue::AsTensor(v9[5]);
      v14 = (*(*v13 + 32))(v13);
      (*(*v14 + 88))(v14);
      MIL::IRTensorValueType::MakeWithShape();
    }

    exception = __cxa_allocate_exception(0x48uLL);
    *&v19 = v7;
    *(&v19 + 1) = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "Attribute scale is undefined for constexpr_affine_dequantize");
    MIL::ValidationError::ValidationError(exception, &v19, __p, 315);
  }

  v15 = __cxa_allocate_exception(0x48uLL);
  *&v19 = v7;
  *(&v19 + 1) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "Attribute quantized_data is undefined for constexpr_affine_dequantize");
  MIL::ValidationError::ValidationError(v15, &v19, __p, 315);
}

void sub_21820F854(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::__shared_weak_count *a16)
{
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

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Operators::Common::ios16::ConstexprAffineDequantize::Make(MIL::MILContext &,std::string)::$_1,std::allocator<MIL::Operators::Common::ios16::ConstexprAffineDequantize::Make(MIL::MILContext &,std::string)::$_1>,std::vector<MIL::IRValueType const*> ()(std::shared_ptr<MIL::MILContext> const&,std::shared_ptr<MIL::Location const>,std::unordered_map<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>> const&,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>> const&,std::vector<std::vector<MIL::IRValueType const*>> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Operators::Common::ios16::ConstexprCast::Make(MIL::MILContext &,std::string)::$_0,std::allocator<MIL::Operators::Common::ios16::ConstexprCast::Make(MIL::MILContext &,std::string)::$_0>,std::shared_ptr<MIL::IRValue const> ()(MIL::IROperation const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829EB8B8;
  a2[1] = v2;
  return result;
}

void std::__function::__func<MIL::Operators::Common::ios16::ConstexprCast::Make(MIL::MILContext &,std::string)::$_0,std::allocator<MIL::Operators::Common::ios16::ConstexprCast::Make(MIL::MILContext &,std::string)::$_0>,std::shared_ptr<MIL::IRValue const> ()(MIL::IROperation const&)>::operator()(uint64_t a1, MIL::IRObject *a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "source_val");
  MIL::Operators::Common::Shared::ValidateExistenceAndGetAttributeSharedPtr(a2, __p, &v14);
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "output_dtype");
  MIL::Operators::Common::Shared::ValidateExistenceAndGetAttributeSharedPtr(a2, __p, &v11);
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p[0]);
  }

  v3 = (*(*v14 + 32))(v14);
  v4 = (*(*v3 + 96))(v3);
  __p[0] = 0;
  __p[1] = 0;
  v13 = 0;
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(__p, *v4, v4[1], (v4[1] - *v4) >> 3);
  v5 = MIL::IRValue::TryGetScalar<std::string>(v11);
  if (v5)
  {
    MIL::StringToIRDataType(v5, 0);
    MIL::IRTensorValueType::MakeWithShape();
  }

  exception = __cxa_allocate_exception(0x48uLL);
  LocationPtr = MIL::IRObject::GetLocationPtr(a2);
  v8 = LocationPtr[1];
  *&v10 = *LocationPtr;
  *(&v10 + 1) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(&v9, "Attribute output_dtype is not a scalar string");
  MIL::ValidationError::ValidationError(exception, &v10, &v9, 306);
}

void sub_21820FCF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, std::__shared_weak_count *a18, uint64_t a19, std::__shared_weak_count *a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
    if ((v26 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else if (!v26)
  {
LABEL_8:
    if (a21)
    {
      operator delete(a21);
    }

    if (a20)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a20);
    }

    v30 = *(v28 - 40);
    if (v30)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v30);
    }

    _Unwind_Resume(exception_object);
  }

  __cxa_free_exception(v27);
  goto LABEL_8;
}

uint64_t std::__function::__func<MIL::Operators::Common::ios16::ConstexprCast::Make(MIL::MILContext &,std::string)::$_0,std::allocator<MIL::Operators::Common::ios16::ConstexprCast::Make(MIL::MILContext &,std::string)::$_0>,std::shared_ptr<MIL::IRValue const> ()(MIL::IROperation const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

MIL::Operators::Common::ios16::ConstExprs::Cast **std::unique_ptr<MIL::Operators::Common::ios16::ConstExprs::Cast>::~unique_ptr[abi:ne200100](MIL::Operators::Common::ios16::ConstExprs::Cast **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    MIL::Operators::Common::ios16::ConstExprs::Cast::~Cast(v2);
    MEMORY[0x21CEAFEA0]();
  }

  return a1;
}

void std::__function::__func<MIL::Operators::Common::ios16::ConstexprCast::Make(MIL::MILContext &,std::string)::$_1,std::allocator<MIL::Operators::Common::ios16::ConstexprCast::Make(MIL::MILContext &,std::string)::$_1>,std::vector<MIL::IRValueType const*> ()(std::shared_ptr<MIL::MILContext> const&,std::shared_ptr<MIL::Location const>,std::unordered_map<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>> const&,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>> const&,std::vector<std::vector<MIL::IRValueType const*>> const&)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v18 = *MEMORY[0x277D85DE8];
  v7 = *a3;
  v6 = *(a3 + 8);
  *a3 = 0;
  *(a3 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>(&__p, "source_val");
  v8 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a5, &__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v8)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "output_dtype");
    v9 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a5, &__p.__r_.__value_.__l.__data_);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v9)
    {
      v10 = MIL::IRValue::AsTensor(v9[5]);
      MIL::IRValue::GetScalar<std::string>(v10, &__p);
      MIL::StringToIRDataType(&__p.__r_.__value_.__l.__data_, 0);
      v11 = MIL::IRValue::AsTensor(v8[5]);
      v12 = (*(*v11 + 32))(v11);
      v13 = (*(*v12 + 96))(v12);
      memset(v16, 0, sizeof(v16));
      std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(v16, *v13, v13[1], (v13[1] - *v13) >> 3);
      MIL::IRTensorValueType::MakeWithShape();
    }

    exception = __cxa_allocate_exception(0x48uLL);
    v16[0] = v7;
    v16[1] = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "Attribute output_dtype is undefined for constexpr_cast");
    MIL::ValidationError::ValidationError(exception, v16, &__p, 315);
  }

  v14 = __cxa_allocate_exception(0x48uLL);
  v16[0] = v7;
  v16[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "Attribute source_val is undefined for constexpr_cast");
  MIL::ValidationError::ValidationError(v14, v16, &__p, 315);
}

void sub_218210224(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, std::__shared_weak_count *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (v19)
  {
    __cxa_free_exception(v18);
  }

  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Operators::Common::ios16::ConstexprCast::Make(MIL::MILContext &,std::string)::$_1,std::allocator<MIL::Operators::Common::ios16::ConstexprCast::Make(MIL::MILContext &,std::string)::$_1>,std::vector<MIL::IRValueType const*> ()(std::shared_ptr<MIL::MILContext> const&,std::shared_ptr<MIL::Location const>,std::unordered_map<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>> const&,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>> const&,std::vector<std::vector<MIL::IRValueType const*>> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::unordered_set<unsigned long>::unordered_set(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 8 * a3;
    do
    {
      std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::__emplace_unique_key_args<unsigned long,unsigned long const&>(a1, a2++);
      v5 -= 8;
    }

    while (v5);
  }

  return a1;
}

uint64_t std::__function::__func<MIL::Operators::Common::ios16::ConstexprLutToDense::Make(MIL::MILContext &,std::string)::$_0,std::allocator<MIL::Operators::Common::ios16::ConstexprLutToDense::Make(MIL::MILContext &,std::string)::$_0>,std::shared_ptr<MIL::IRValue const> ()(MIL::IROperation const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829EB9B8;
  a2[1] = v2;
  return result;
}

void std::__function::__func<MIL::Operators::Common::ios16::ConstexprLutToDense::Make(MIL::MILContext &,std::string)::$_0,std::allocator<MIL::Operators::Common::ios16::ConstexprLutToDense::Make(MIL::MILContext &,std::string)::$_0>,std::shared_ptr<MIL::IRValue const> ()(MIL::IROperation const&)>::operator()(uint64_t a1, MIL::IRObject *a2)
{
  std::string::basic_string[abi:ne200100]<0>(&v11, "indices");
  MIL::Operators::Common::Shared::ValidateExistenceAndGetAttributeSharedPtr(a2, &v11, &v13);
  if (v12 < 0)
  {
    operator delete(v11);
  }

  std::string::basic_string[abi:ne200100]<0>(&v11, "lut");
  MIL::Operators::Common::Shared::ValidateExistenceAndGetAttributeSharedPtr(a2, &v11, &v10);
  if (v12 < 0)
  {
    operator delete(v11);
  }

  std::string::basic_string[abi:ne200100]<0>(&v11, "shape");
  MIL::Operators::Common::Shared::ValidateExistenceAndGetAttributeSharedPtr(a2, &v11, &v8);
  if (v12 < 0)
  {
    operator delete(v11);
  }

  v6 = v8;
  v7 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::Shared::ValidateAndGetShape(&v6, &v11);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  v4 = (*(*v10 + 32))(v10);
  v5 = (*(*v4 + 88))(v4);
  MIL::IRTensorValueType::Make(*(a1 + 8), v5, &v11);
}

void sub_2182106D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Operators::Common::ios16::ConstexprLutToDense::Make(MIL::MILContext &,std::string)::$_0,std::allocator<MIL::Operators::Common::ios16::ConstexprLutToDense::Make(MIL::MILContext &,std::string)::$_0>,std::shared_ptr<MIL::IRValue const> ()(MIL::IROperation const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_2182108E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  MEMORY[0x21CEAFEA0](v13, v12);
  _Unwind_Resume(a1);
}

MIL::Operators::Common::ios16::ConstExprs::LutToDense **std::unique_ptr<MIL::Operators::Common::ios16::ConstExprs::LutToDense>::~unique_ptr[abi:ne200100](MIL::Operators::Common::ios16::ConstExprs::LutToDense **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    MIL::Operators::Common::ios16::ConstExprs::LutToDense::~LutToDense(v2);
    MEMORY[0x21CEAFEA0]();
  }

  return a1;
}

void std::__function::__func<MIL::Operators::Common::ios16::ConstexprLutToDense::Make(MIL::MILContext &,std::string)::$_1,std::allocator<MIL::Operators::Common::ios16::ConstexprLutToDense::Make(MIL::MILContext &,std::string)::$_1>,std::vector<MIL::IRValueType const*> ()(std::shared_ptr<MIL::MILContext> const&,std::shared_ptr<MIL::Location const>,std::unordered_map<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>> const&,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>> const&,std::vector<std::vector<MIL::IRValueType const*>> const&)>::operator()(uint64_t a1, MIL::IRConstantDimension **a2, uint64_t *a3, uint64_t a4, void *a5)
{
  v23 = *MEMORY[0x277D85DE8];
  v8 = *a3;
  v7 = a3[1];
  *a3 = 0;
  a3[1] = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, "lut");
  v9 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a5, __p);
  if (SHIBYTE(v21) < 0)
  {
    operator delete(__p[0]);
  }

  if (v9)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "shape");
    v10 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a5, __p);
    if (SHIBYTE(v21) < 0)
    {
      operator delete(__p[0]);
    }

    if (v10)
    {
      v11 = MIL::IRValue::AsTensor(v10[5]);
      Data = MIL::IRTensorValue::GetDataView<unsigned int>(v11);
      v14 = v13;
      __p[0] = 0;
      __p[1] = 0;
      v21 = 0;
      std::vector<std::string const*>::reserve(__p, v13);
      if (v14)
      {
        v15 = 4 * v14;
        do
        {
          *&v22 = MIL::IRConstantDimension::Make(*a2, *Data);
          std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](__p, &v22);
          ++Data;
          v15 -= 4;
        }

        while (v15);
      }

      v16 = MIL::IRValue::AsTensor(v9[5]);
      v17 = (*(*v16 + 32))(v16);
      (*(*v17 + 88))(v17);
      MIL::IRTensorValueType::MakeWithShape();
    }

    exception = __cxa_allocate_exception(0x48uLL);
    *&v22 = v8;
    *(&v22 + 1) = v7;
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "Attribute shape is undefined for constexpr_lut_to_dense");
    MIL::ValidationError::ValidationError(exception, &v22, __p, 315);
  }

  v18 = __cxa_allocate_exception(0x48uLL);
  *&v22 = v8;
  *(&v22 + 1) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "Attribute lut is undefined for constexpr_lut_to_dense");
  MIL::ValidationError::ValidationError(v18, &v22, __p, 315);
}

void sub_218210C98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::__shared_weak_count *a16)
{
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

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Operators::Common::ios16::ConstexprLutToDense::Make(MIL::MILContext &,std::string)::$_1,std::allocator<MIL::Operators::Common::ios16::ConstexprLutToDense::Make(MIL::MILContext &,std::string)::$_1>,std::vector<MIL::IRValueType const*> ()(std::shared_ptr<MIL::MILContext> const&,std::shared_ptr<MIL::Location const>,std::unordered_map<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>> const&,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>> const&,std::vector<std::vector<MIL::IRValueType const*>> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Operators::Common::ios16::ConstexprSparseToDense::Make(MIL::MILContext &,std::string)::$_0,std::allocator<MIL::Operators::Common::ios16::ConstexprSparseToDense::Make(MIL::MILContext &,std::string)::$_0>,std::shared_ptr<MIL::IRValue const> ()(MIL::IROperation const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829EBAB8;
  a2[1] = v2;
  return result;
}

void std::__function::__func<MIL::Operators::Common::ios16::ConstexprSparseToDense::Make(MIL::MILContext &,std::string)::$_0,std::allocator<MIL::Operators::Common::ios16::ConstexprSparseToDense::Make(MIL::MILContext &,std::string)::$_0>,std::shared_ptr<MIL::IRValue const> ()(MIL::IROperation const&)>::operator()(uint64_t a1, MIL::IRObject *a2)
{
  std::string::basic_string[abi:ne200100]<0>(&v11, "nonzero_data");
  MIL::Operators::Common::Shared::ValidateExistenceAndGetAttributeSharedPtr(a2, &v11, &v13);
  if (v12 < 0)
  {
    operator delete(v11);
  }

  std::string::basic_string[abi:ne200100]<0>(&v11, "mask");
  MIL::Operators::Common::Shared::ValidateExistenceAndGetAttributeSharedPtr(a2, &v11, &v10);
  if (v12 < 0)
  {
    operator delete(v11);
  }

  std::string::basic_string[abi:ne200100]<0>(&v11, "shape");
  MIL::Operators::Common::Shared::ValidateExistenceAndGetAttributeSharedPtr(a2, &v11, &v8);
  if (v12 < 0)
  {
    operator delete(v11);
  }

  v6 = v8;
  v7 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::Shared::ValidateAndGetShape(&v6, &v11);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  v4 = (*(*v13 + 32))(v13);
  v5 = (*(*v4 + 88))(v4);
  MIL::IRTensorValueType::Make(*(a1 + 8), v5, &v11);
}

void sub_2182110D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Operators::Common::ios16::ConstexprSparseToDense::Make(MIL::MILContext &,std::string)::$_0,std::allocator<MIL::Operators::Common::ios16::ConstexprSparseToDense::Make(MIL::MILContext &,std::string)::$_0>,std::shared_ptr<MIL::IRValue const> ()(MIL::IROperation const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_2182112E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  MEMORY[0x21CEAFEA0](v13, v12);
  _Unwind_Resume(a1);
}

MIL::Operators::Common::ios16::ConstExprs::SparseToDense **std::unique_ptr<MIL::Operators::Common::ios16::ConstExprs::SparseToDense>::~unique_ptr[abi:ne200100](MIL::Operators::Common::ios16::ConstExprs::SparseToDense **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    MIL::Operators::Common::ios16::ConstExprs::SparseToDense::~SparseToDense(v2);
    MEMORY[0x21CEAFEA0]();
  }

  return a1;
}

void std::__function::__func<MIL::Operators::Common::ios16::ConstexprSparseToDense::Make(MIL::MILContext &,std::string)::$_1,std::allocator<MIL::Operators::Common::ios16::ConstexprSparseToDense::Make(MIL::MILContext &,std::string)::$_1>,std::vector<MIL::IRValueType const*> ()(std::shared_ptr<MIL::MILContext> const&,std::shared_ptr<MIL::Location const>,std::unordered_map<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>> const&,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>> const&,std::vector<std::vector<MIL::IRValueType const*>> const&)>::operator()(uint64_t a1, MIL::IRConstantDimension **a2, uint64_t *a3, uint64_t a4, void *a5)
{
  v23 = *MEMORY[0x277D85DE8];
  v8 = *a3;
  v7 = a3[1];
  *a3 = 0;
  a3[1] = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, "nonzero_data");
  v9 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a5, __p);
  if (SHIBYTE(v21) < 0)
  {
    operator delete(__p[0]);
  }

  if (v9)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "shape");
    v10 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a5, __p);
    if (SHIBYTE(v21) < 0)
    {
      operator delete(__p[0]);
    }

    if (v10)
    {
      v11 = MIL::IRValue::AsTensor(v10[5]);
      Data = MIL::IRTensorValue::GetDataView<unsigned int>(v11);
      v14 = v13;
      __p[0] = 0;
      __p[1] = 0;
      v21 = 0;
      std::vector<std::string const*>::reserve(__p, v13);
      if (v14)
      {
        v15 = 4 * v14;
        do
        {
          *&v22 = MIL::IRConstantDimension::Make(*a2, *Data);
          std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](__p, &v22);
          ++Data;
          v15 -= 4;
        }

        while (v15);
      }

      v16 = MIL::IRValue::AsTensor(v9[5]);
      v17 = (*(*v16 + 32))(v16);
      (*(*v17 + 88))(v17);
      MIL::IRTensorValueType::MakeWithShape();
    }

    exception = __cxa_allocate_exception(0x48uLL);
    *&v22 = v8;
    *(&v22 + 1) = v7;
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "Attribute shape is undefined for constexpr_sparse_to_dense");
    MIL::ValidationError::ValidationError(exception, &v22, __p, 315);
  }

  v18 = __cxa_allocate_exception(0x48uLL);
  *&v22 = v8;
  *(&v22 + 1) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "Attribute nonzero_data is undefined for constexpr_sparse_to_dense");
  MIL::ValidationError::ValidationError(v18, &v22, __p, 315);
}

void sub_218211694(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::__shared_weak_count *a16)
{
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

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Operators::Common::ios16::ConstexprSparseToDense::Make(MIL::MILContext &,std::string)::$_1,std::allocator<MIL::Operators::Common::ios16::ConstexprSparseToDense::Make(MIL::MILContext &,std::string)::$_1>,std::vector<MIL::IRValueType const*> ()(std::shared_ptr<MIL::MILContext> const&,std::shared_ptr<MIL::Location const>,std::unordered_map<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>> const&,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>> const&,std::vector<std::vector<MIL::IRValueType const*>> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t MIL::Operators::Common::ios16::ConstExprs::AffineDequantize::Impl::Impl(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *a1 = a2;
  *(a1 + 8) = *a3;
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a1 + 24) = *a4;
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a1 + 40) = *a5;
  *a5 = 0;
  *(a5 + 8) = 0;
  *(a1 + 56) = a6;
  MIL::Operators::Common::ios16::ConstExprs::AffineDequantize::Impl::ValidateArgsAndTypeConstraints(a1);
  return a1;
}

void sub_2182117D0(_Unwind_Exception *a1)
{
  v3 = v1[6];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  MIL::Operators::Common::ios16::ConstExprs::AffineDequantize::Impl::Impl(v1 + 4, v1 + 2);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::ConstExprs::AffineDequantize::Impl::ValidateArgsAndTypeConstraints(MIL::Operators::Common::ios16::ConstExprs::AffineDequantize::Impl *this)
{
  std::string::basic_string[abi:ne200100]<0>(&v42, "Constexpr-AffineDequantize");
  v2 = (*(**(this + 1) + 32))(*(this + 1));
  std::string::basic_string[abi:ne200100]<0>(&__p, "quantizedData");
  if (MIL::IRTensorValueType::Rank(v2) <= 0)
  {
    std::operator+<char>();
    v15 = std::string::append(&v46, ", parameter ");
    v16 = *&v15->__r_.__value_.__l.__data_;
    v47.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
    *&v47.__r_.__value_.__l.__data_ = v16;
    v15->__r_.__value_.__l.__size_ = 0;
    v15->__r_.__value_.__r.__words[2] = 0;
    v15->__r_.__value_.__r.__words[0] = 0;
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

    v19 = std::string::append(&v47, p_p, size);
    v20 = *&v19->__r_.__value_.__l.__data_;
    v48.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
    *&v48.__r_.__value_.__l.__data_ = v20;
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    v21 = std::string::append(&v48, " should have minimum rank equals to 1 but its provided rank is ");
    v22 = *&v21->__r_.__value_.__l.__data_;
    v49.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
    *&v49.__r_.__value_.__l.__data_ = v22;
    v21->__r_.__value_.__l.__size_ = 0;
    v21->__r_.__value_.__r.__words[2] = 0;
    v21->__r_.__value_.__r.__words[0] = 0;
    v23 = MIL::IRTensorValueType::Rank(v2);
    std::to_string(&v45, v23);
    if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v24 = &v45;
    }

    else
    {
      v24 = v45.__r_.__value_.__r.__words[0];
    }

    if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v25 = HIBYTE(v45.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v25 = v45.__r_.__value_.__l.__size_;
    }

    v26 = std::string::append(&v49, v24, v25);
    v27 = *&v26->__r_.__value_.__l.__data_;
    v50.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
    *&v50.__r_.__value_.__l.__data_ = v27;
    v26->__r_.__value_.__l.__size_ = 0;
    v26->__r_.__value_.__r.__words[2] = 0;
    v26->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v45.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v49.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v48.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v47.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v46.__r_.__value_.__l.__data_);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, &v50);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v3 = (*(**(this + 3) + 32))(*(this + 3));
  std::string::basic_string[abi:ne200100]<0>(&v50, "scale");
  MIL::Operators::Common::Shared::ConstExprs::AssertIsScalarOrVector(v3, &v50);
  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
  }

  v4 = (*(**(this + 5) + 32))(*(this + 5));
  std::string::basic_string[abi:ne200100]<0>(&v50, "zeroPoint");
  MIL::Operators::Common::Shared::ConstExprs::AssertIsScalarOrVector(v4, &v50);
  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
  }

  v5 = (*(**(this + 1) + 32))(*(this + 1));
  v6 = MIL::IRTensorValueType::Rank(v5);
  if (*(this + 7) >= v6)
  {
    std::operator+<char>();
    v29 = std::string::append(&v46, ", parameter axis should be in the range 0 <= axis < quantizedData.rank(=");
    v30 = *&v29->__r_.__value_.__l.__data_;
    v47.__r_.__value_.__r.__words[2] = v29->__r_.__value_.__r.__words[2];
    *&v47.__r_.__value_.__l.__data_ = v30;
    v29->__r_.__value_.__l.__size_ = 0;
    v29->__r_.__value_.__r.__words[2] = 0;
    v29->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v45, v6);
    if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v31 = &v45;
    }

    else
    {
      v31 = v45.__r_.__value_.__r.__words[0];
    }

    if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v32 = HIBYTE(v45.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v32 = v45.__r_.__value_.__l.__size_;
    }

    v33 = std::string::append(&v47, v31, v32);
    v34 = *&v33->__r_.__value_.__l.__data_;
    v48.__r_.__value_.__r.__words[2] = v33->__r_.__value_.__r.__words[2];
    *&v48.__r_.__value_.__l.__data_ = v34;
    v33->__r_.__value_.__l.__size_ = 0;
    v33->__r_.__value_.__r.__words[2] = 0;
    v33->__r_.__value_.__r.__words[0] = 0;
    v35 = std::string::append(&v48, ") but provided axis is ");
    v36 = *&v35->__r_.__value_.__l.__data_;
    v49.__r_.__value_.__r.__words[2] = v35->__r_.__value_.__r.__words[2];
    *&v49.__r_.__value_.__l.__data_ = v36;
    v35->__r_.__value_.__l.__size_ = 0;
    v35->__r_.__value_.__r.__words[2] = 0;
    v35->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&__p, *(this + 7));
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v37 = &__p;
    }

    else
    {
      v37 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v38 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v38 = __p.__r_.__value_.__l.__size_;
    }

    v39 = std::string::append(&v49, v37, v38);
    v40 = *&v39->__r_.__value_.__l.__data_;
    v50.__r_.__value_.__r.__words[2] = v39->__r_.__value_.__r.__words[2];
    *&v50.__r_.__value_.__l.__data_ = v40;
    v39->__r_.__value_.__l.__size_ = 0;
    v39->__r_.__value_.__r.__words[2] = 0;
    v39->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v49.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v48.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v45.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v47.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v46.__r_.__value_.__l.__data_);
    }

    v41 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v41, &v50);
    __cxa_throw(v41, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v7 = (*(**(this + 1) + 32))(*(this + 1));
  v8 = (*(*v7 + 96))(v7);
  v9 = MIL::IRDimension::AsConstant(*(*v8 + 8 * *(this + 7)));
  v10 = (*(*v9 + 48))(v9);
  v11 = (*(**(this + 3) + 32))(*(this + 3));
  std::string::basic_string[abi:ne200100]<0>(&v50, "scale");
  std::string::basic_string[abi:ne200100]<0>(&v49, "axisDim");
  MIL::Operators::Common::Shared::ConstExprs::AssertVectorSizeSameAsDimension(v11, v10, &v50, &v49);
  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v49.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
  }

  v12 = (*(**(this + 5) + 32))(*(this + 5));
  std::string::basic_string[abi:ne200100]<0>(&v50, "zeroPoint");
  std::string::basic_string[abi:ne200100]<0>(&v49, "axisDim");
  MIL::Operators::Common::Shared::ConstExprs::AssertVectorSizeSameAsDimension(v12, v10, &v50, &v49);
  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v49.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
  }

  v13 = (*(**(this + 1) + 32))(*(this + 1));
  MIL::Operators::Common::Shared::ConstExprs::AssertExpectedOutputShape(v13, *this);
  v14 = (*(**(this + 3) + 32))(*(this + 3));
  MIL::Operators::Common::Shared::ConstExprs::AssertExpectedOutputDType(v14, *this);
  if (v43 < 0)
  {
    operator delete(v42);
  }
}

void sub_218211E88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  if (*(v45 - 41) < 0)
  {
    operator delete(*(v45 - 64));
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios16::ConstExprs::AffineDequantize::Impl::ComputeOutput(MIL::Operators::Common::ios16::ConstExprs::AffineDequantize::Impl *this)
{
  v2 = (*(**this + 96))(*this);
  v258 = 0;
  v259 = 0;
  v257 = 0;
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&v257, *v2, v2[1], (v2[1] - *v2) >> 3);
  v3 = v257;
  if (v258 == v257)
  {
    v6 = 1;
    v5 = 1;
  }

  else
  {
    v4 = ((v258 - v257) >> 3) - 1;
    v5 = 1;
    v6 = 1;
    do
    {
      if (v4 == *(this + 7))
      {
        v6 = v5;
      }

      v7 = MIL::IRDimension::AsConstant(*(v257 + v4));
      v5 *= (*(*v7 + 48))(v7);
      --v4;
    }

    while (v4 != -1);
    v3 = v257;
  }

  v8 = MIL::IRDimension::AsConstant(v3[*(this + 7)]);
  v9 = (*(*v8 + 48))(v8);
  v10 = (*(**this + 88))();
  v11 = v10;
  if (v10 != 4)
  {
    if (v10 == 5)
    {
      v12 = *(this + 1);
      v13 = *(this + 2);
      if (v13)
      {
        atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
      }

      v15 = *(this + 3);
      v14 = *(this + 4);
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v17 = *(this + 5);
      v16 = *(this + 6);
      if (v16)
      {
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v18 = (*(*v12 + 32))(v12);
      v19 = (*(*v18 + 88))(v18);
      v20 = v19;
      if (v19 == 9)
      {
        Data = MIL::IRTensorValue::GetDataView<signed char>(v12);
        if (v14)
        {
          atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v16)
        {
          atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v93 = (*(*v15 + 32))(v15);
        v94 = (*(*v93 + 88))(v93);
        v95 = v94;
        if (v94 != 5)
        {
          if (v94 == 4)
          {
            MIL::IRTensorValue::GetDataView<MIL::Fp16>(v15);
            if (v16)
            {
              atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            exception = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(exception, "Constexpr-AffineDequantize: output and scale type must be same.");
            __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
          }

          v230 = __cxa_allocate_exception(0x10uLL);
          MIL::IRDataTypeToString(v95, &v260);
          v231 = std::string::insert(&v260, 0, "Constexpr-AffineDequantize: Unsupported dType (");
          v232 = *&v231->__r_.__value_.__l.__data_;
          v261.__r_.__value_.__r.__words[2] = v231->__r_.__value_.__r.__words[2];
          *&v261.__r_.__value_.__l.__data_ = v232;
          v231->__r_.__value_.__l.__size_ = 0;
          v231->__r_.__value_.__r.__words[2] = 0;
          v231->__r_.__value_.__r.__words[0] = 0;
          v233 = std::string::append(&v261, ") for scale.");
          v234 = *&v233->__r_.__value_.__l.__data_;
          v262.__r_.__value_.__r.__words[2] = v233->__r_.__value_.__r.__words[2];
          *&v262.__r_.__value_.__l.__data_ = v234;
          v233->__r_.__value_.__l.__size_ = 0;
          v233->__r_.__value_.__r.__words[2] = 0;
          v233->__r_.__value_.__r.__words[0] = 0;
          std::runtime_error::runtime_error(v230, &v262);
          __cxa_throw(v230, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }

        v96 = MIL::IRTensorValue::GetDataView<float>(v15);
        v98 = v97;
        if (v16)
        {
          atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v99 = (*(*v17 + 32))(v17);
        v100 = (*(*v99 + 88))(v99);
        v101 = v100;
        switch(v100)
        {
          case 5:
            v175 = MIL::IRTensorValue::GetDataView<float>(v17);
            v262.__r_.__value_.__r.__words[0] = v96;
            v262.__r_.__value_.__l.__size_ = v98;
            v261.__r_.__value_.__r.__words[0] = v175;
            v261.__r_.__value_.__l.__size_ = v176;
            std::vector<float>::vector[abi:ne200100](&__p, v5);
            if (v256 != __p)
            {
              v177 = 0;
              v178 = v9 * v6;
              do
              {
                if (v261.__r_.__value_.__l.__size_ == 1)
                {
                  v179 = 0;
                }

                else
                {
                  v179 = v177 % v178 / v6;
                }

                v180 = *MIL::Util::Span<float const,18446744073709551615ul>::At(&v261, v179);
                if (v262.__r_.__value_.__l.__size_ == 1)
                {
                  v181 = 0;
                }

                else
                {
                  v181 = v177 % v178 / v6;
                }

                v182 = MIL::Util::Span<float const,18446744073709551615ul>::At(&v262, v181);
                v183 = MIL::Operators::Common::Shared::ConstExprs::DequantizeExpression(v182, *(Data + v177), v180, *v182);
                v184 = __p;
                *(__p + v177++) = v183;
              }

              while (v177 < (v256 - v184) >> 2);
            }

            break;
          case 9:
            v133 = MIL::IRTensorValue::GetDataView<signed char>(v17);
            v262.__r_.__value_.__r.__words[0] = v96;
            v262.__r_.__value_.__l.__size_ = v98;
            v261.__r_.__value_.__r.__words[0] = v133;
            v261.__r_.__value_.__l.__size_ = v134;
            std::vector<float>::vector[abi:ne200100](&__p, v5);
            if (v256 != __p)
            {
              v135 = 0;
              v136 = v9 * v6;
              do
              {
                if (v261.__r_.__value_.__l.__size_ == 1)
                {
                  v137 = 0;
                }

                else
                {
                  v137 = v135 % v136 / v6;
                }

                v138 = *MIL::Util::Span<signed char const,18446744073709551615ul>::At(&v261, v137);
                if (v262.__r_.__value_.__l.__size_ == 1)
                {
                  v139 = 0;
                }

                else
                {
                  v139 = v135 % v136 / v6;
                }

                v140 = MIL::Util::Span<float const,18446744073709551615ul>::At(&v262, v139);
                v141 = MIL::Operators::Common::Shared::ConstExprs::DequantizeExpression(v140, *(Data + v135), v138, *v140);
                v142 = __p;
                *(__p + v135++) = v141;
              }

              while (v135 < (v256 - v142) >> 2);
            }

            break;
          case 14:
            v102 = MIL::IRTensorValue::GetDataView<unsigned char>(v17);
            v262.__r_.__value_.__r.__words[0] = v96;
            v262.__r_.__value_.__l.__size_ = v98;
            v261.__r_.__value_.__r.__words[0] = v102;
            v261.__r_.__value_.__l.__size_ = v103;
            std::vector<float>::vector[abi:ne200100](&__p, v5);
            if (v256 != __p)
            {
              v104 = 0;
              v105 = v9 * v6;
              do
              {
                if (v261.__r_.__value_.__l.__size_ == 1)
                {
                  v106 = 0;
                }

                else
                {
                  v106 = v104 % v105 / v6;
                }

                v107 = *MIL::Util::Span<unsigned char const,18446744073709551615ul>::At(&v261, v106);
                if (v262.__r_.__value_.__l.__size_ == 1)
                {
                  v108 = 0;
                }

                else
                {
                  v108 = v104 % v105 / v6;
                }

                v109 = MIL::Util::Span<float const,18446744073709551615ul>::At(&v262, v108);
                v110 = MIL::Operators::Common::Shared::ConstExprs::DequantizeExpression(v109, *(Data + v104), v107, *v109);
                v111 = __p;
                *(__p + v104++) = v110;
              }

              while (v104 < (v256 - v111) >> 2);
            }

            break;
          default:
            v250 = __cxa_allocate_exception(0x10uLL);
            MIL::IRDataTypeToString(v101, &v260);
            v251 = std::string::insert(&v260, 0, "Constexpr-AffineDequantize: Unsupported dType (");
            v252 = *&v251->__r_.__value_.__l.__data_;
            v261.__r_.__value_.__r.__words[2] = v251->__r_.__value_.__r.__words[2];
            *&v261.__r_.__value_.__l.__data_ = v252;
            v251->__r_.__value_.__l.__size_ = 0;
            v251->__r_.__value_.__r.__words[2] = 0;
            v251->__r_.__value_.__r.__words[0] = 0;
            v253 = std::string::append(&v261, ") for zeroPoint.");
            v254 = *&v253->__r_.__value_.__l.__data_;
            v262.__r_.__value_.__r.__words[2] = v253->__r_.__value_.__r.__words[2];
            *&v262.__r_.__value_.__l.__data_ = v254;
            v253->__r_.__value_.__l.__size_ = 0;
            v253->__r_.__value_.__r.__words[2] = 0;
            v253->__r_.__value_.__r.__words[0] = 0;
            std::runtime_error::runtime_error(v250, &v262);
            __cxa_throw(v250, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }
      }

      else
      {
        if (v19 != 14)
        {
          v205 = __cxa_allocate_exception(0x10uLL);
          MIL::IRDataTypeToString(v20, &v260);
          v206 = std::string::insert(&v260, 0, "Constexpr-AffineDequantize: Unsupported dType (");
          v207 = *&v206->__r_.__value_.__l.__data_;
          v261.__r_.__value_.__r.__words[2] = v206->__r_.__value_.__r.__words[2];
          *&v261.__r_.__value_.__l.__data_ = v207;
          v206->__r_.__value_.__l.__size_ = 0;
          v206->__r_.__value_.__r.__words[2] = 0;
          v206->__r_.__value_.__r.__words[0] = 0;
          v208 = std::string::append(&v261, ") for quantizedData.");
          v209 = *&v208->__r_.__value_.__l.__data_;
          v262.__r_.__value_.__r.__words[2] = v208->__r_.__value_.__r.__words[2];
          *&v262.__r_.__value_.__l.__data_ = v209;
          v208->__r_.__value_.__l.__size_ = 0;
          v208->__r_.__value_.__r.__words[2] = 0;
          v208->__r_.__value_.__r.__words[0] = 0;
          std::runtime_error::runtime_error(v205, &v262);
          __cxa_throw(v205, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }

        v21 = MIL::IRTensorValue::GetDataView<unsigned char>(v12);
        if (v14)
        {
          atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v16)
        {
          atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v22 = (*(*v15 + 32))(v15);
        v23 = (*(*v22 + 88))(v22);
        v24 = v23;
        if (v23 != 5)
        {
          if (v23 == 4)
          {
            MIL::IRTensorValue::GetDataView<MIL::Fp16>(v15);
            if (v16)
            {
              atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v201 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v201, "Constexpr-AffineDequantize: output and scale type must be same.");
            __cxa_throw(v201, MEMORY[0x277D82760], MEMORY[0x277D82600]);
          }

          v215 = __cxa_allocate_exception(0x10uLL);
          MIL::IRDataTypeToString(v24, &v260);
          v216 = std::string::insert(&v260, 0, "Constexpr-AffineDequantize: Unsupported dType (");
          v217 = *&v216->__r_.__value_.__l.__data_;
          v261.__r_.__value_.__r.__words[2] = v216->__r_.__value_.__r.__words[2];
          *&v261.__r_.__value_.__l.__data_ = v217;
          v216->__r_.__value_.__l.__size_ = 0;
          v216->__r_.__value_.__r.__words[2] = 0;
          v216->__r_.__value_.__r.__words[0] = 0;
          v218 = std::string::append(&v261, ") for scale.");
          v219 = *&v218->__r_.__value_.__l.__data_;
          v262.__r_.__value_.__r.__words[2] = v218->__r_.__value_.__r.__words[2];
          *&v262.__r_.__value_.__l.__data_ = v219;
          v218->__r_.__value_.__l.__size_ = 0;
          v218->__r_.__value_.__r.__words[2] = 0;
          v218->__r_.__value_.__r.__words[0] = 0;
          std::runtime_error::runtime_error(v215, &v262);
          __cxa_throw(v215, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }

        v25 = MIL::IRTensorValue::GetDataView<float>(v15);
        v27 = v26;
        if (v16)
        {
          atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v28 = (*(*v17 + 32))(v17);
        v29 = (*(*v28 + 88))(v28);
        v30 = v29;
        switch(v29)
        {
          case 5:
            v185 = MIL::IRTensorValue::GetDataView<float>(v17);
            v262.__r_.__value_.__r.__words[0] = v25;
            v262.__r_.__value_.__l.__size_ = v27;
            v261.__r_.__value_.__r.__words[0] = v185;
            v261.__r_.__value_.__l.__size_ = v186;
            std::vector<float>::vector[abi:ne200100](&__p, v5);
            if (v256 != __p)
            {
              v187 = 0;
              v188 = v9 * v6;
              do
              {
                if (v261.__r_.__value_.__l.__size_ == 1)
                {
                  v189 = 0;
                }

                else
                {
                  v189 = v187 % v188 / v6;
                }

                v190 = *MIL::Util::Span<float const,18446744073709551615ul>::At(&v261, v189);
                if (v262.__r_.__value_.__l.__size_ == 1)
                {
                  v191 = 0;
                }

                else
                {
                  v191 = v187 % v188 / v6;
                }

                v192 = MIL::Util::Span<float const,18446744073709551615ul>::At(&v262, v191);
                LOBYTE(v193) = *(v21 + v187);
                v194 = MIL::Operators::Common::Shared::ConstExprs::DequantizeExpression(v192, v193, v190, *v192);
                v195 = __p;
                *(__p + v187++) = v194;
              }

              while (v187 < (v256 - v195) >> 2);
            }

            break;
          case 9:
            v143 = MIL::IRTensorValue::GetDataView<signed char>(v17);
            v262.__r_.__value_.__r.__words[0] = v25;
            v262.__r_.__value_.__l.__size_ = v27;
            v261.__r_.__value_.__r.__words[0] = v143;
            v261.__r_.__value_.__l.__size_ = v144;
            std::vector<float>::vector[abi:ne200100](&__p, v5);
            if (v256 != __p)
            {
              v145 = 0;
              v146 = v9 * v6;
              do
              {
                if (v261.__r_.__value_.__l.__size_ == 1)
                {
                  v147 = 0;
                }

                else
                {
                  v147 = v145 % v146 / v6;
                }

                v148 = *MIL::Util::Span<signed char const,18446744073709551615ul>::At(&v261, v147);
                if (v262.__r_.__value_.__l.__size_ == 1)
                {
                  v149 = 0;
                }

                else
                {
                  v149 = v145 % v146 / v6;
                }

                v150 = MIL::Util::Span<float const,18446744073709551615ul>::At(&v262, v149);
                LOBYTE(v151) = *(v21 + v145);
                v152 = MIL::Operators::Common::Shared::ConstExprs::DequantizeExpression(v150, v151, v148, *v150);
                v153 = __p;
                *(__p + v145++) = v152;
              }

              while (v145 < (v256 - v153) >> 2);
            }

            break;
          case 14:
            v31 = MIL::IRTensorValue::GetDataView<unsigned char>(v17);
            v262.__r_.__value_.__r.__words[0] = v25;
            v262.__r_.__value_.__l.__size_ = v27;
            v261.__r_.__value_.__r.__words[0] = v31;
            v261.__r_.__value_.__l.__size_ = v32;
            std::vector<float>::vector[abi:ne200100](&__p, v5);
            if (v256 != __p)
            {
              v33 = 0;
              v34 = v9 * v6;
              do
              {
                if (v261.__r_.__value_.__l.__size_ == 1)
                {
                  v35 = 0;
                }

                else
                {
                  v35 = v33 % v34 / v6;
                }

                v36 = *MIL::Util::Span<unsigned char const,18446744073709551615ul>::At(&v261, v35);
                if (v262.__r_.__value_.__l.__size_ == 1)
                {
                  v37 = 0;
                }

                else
                {
                  v37 = v33 % v34 / v6;
                }

                v38 = MIL::Util::Span<float const,18446744073709551615ul>::At(&v262, v37);
                LOBYTE(v39) = *(v21 + v33);
                v40 = MIL::Operators::Common::Shared::ConstExprs::DequantizeExpression(v38, v39, v36, *v38);
                v41 = __p;
                *(__p + v33++) = v40;
              }

              while (v33 < (v256 - v41) >> 2);
            }

            break;
          default:
            v235 = __cxa_allocate_exception(0x10uLL);
            MIL::IRDataTypeToString(v30, &v260);
            v236 = std::string::insert(&v260, 0, "Constexpr-AffineDequantize: Unsupported dType (");
            v237 = *&v236->__r_.__value_.__l.__data_;
            v261.__r_.__value_.__r.__words[2] = v236->__r_.__value_.__r.__words[2];
            *&v261.__r_.__value_.__l.__data_ = v237;
            v236->__r_.__value_.__l.__size_ = 0;
            v236->__r_.__value_.__r.__words[2] = 0;
            v236->__r_.__value_.__r.__words[0] = 0;
            v238 = std::string::append(&v261, ") for zeroPoint.");
            v239 = *&v238->__r_.__value_.__l.__data_;
            v262.__r_.__value_.__r.__words[2] = v238->__r_.__value_.__r.__words[2];
            *&v262.__r_.__value_.__l.__data_ = v239;
            v238->__r_.__value_.__l.__size_ = 0;
            v238->__r_.__value_.__r.__words[2] = 0;
            v238->__r_.__value_.__r.__words[0] = 0;
            std::runtime_error::runtime_error(v235, &v262);
            __cxa_throw(v235, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }
      }

      if (v16)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v16);
        std::__shared_weak_count::__release_shared[abi:ne200100](v16);
      }

      if (v14)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      }

      MIL::IRTensorValueType::MakeFloat32Value();
    }

    v196 = __cxa_allocate_exception(0x10uLL);
    MIL::IRDataTypeToString(v11, &v260);
    v197 = std::string::insert(&v260, 0, "Constexpr-AffineDequantize: Unsupported ");
    v198 = *&v197->__r_.__value_.__l.__data_;
    v261.__r_.__value_.__r.__words[2] = v197->__r_.__value_.__r.__words[2];
    *&v261.__r_.__value_.__l.__data_ = v198;
    v197->__r_.__value_.__l.__size_ = 0;
    v197->__r_.__value_.__r.__words[2] = 0;
    v197->__r_.__value_.__r.__words[0] = 0;
    v199 = std::string::append(&v261, " output type");
    v200 = *&v199->__r_.__value_.__l.__data_;
    v262.__r_.__value_.__r.__words[2] = v199->__r_.__value_.__r.__words[2];
    *&v262.__r_.__value_.__l.__data_ = v200;
    v199->__r_.__value_.__l.__size_ = 0;
    v199->__r_.__value_.__r.__words[2] = 0;
    v199->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(v196, &v262);
    __cxa_throw(v196, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v42 = *(this + 1);
  v43 = *(this + 2);
  if (v43)
  {
    atomic_fetch_add_explicit((v43 + 8), 1uLL, memory_order_relaxed);
  }

  v45 = *(this + 3);
  v44 = *(this + 4);
  if (v44)
  {
    atomic_fetch_add_explicit(&v44->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v47 = *(this + 5);
  v46 = *(this + 6);
  if (v46)
  {
    atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v48 = (*(*v42 + 32))(v42);
  v49 = (*(*v48 + 88))(v48);
  v50 = v49;
  if (v49 == 9)
  {
    v72 = MIL::IRTensorValue::GetDataView<signed char>(v42);
    if (v44)
    {
      atomic_fetch_add_explicit(&v44->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v46)
    {
      atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v73 = (*(*v45 + 32))(v45);
    v74 = (*(*v73 + 88))(v73);
    v75 = v74;
    if (v74 != 4)
    {
      if (v74 == 5)
      {
        MIL::IRTensorValue::GetDataView<float>(v45);
        if (v46)
        {
          atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v203 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v203, "Constexpr-AffineDequantize: output and scale type must be same.");
        __cxa_throw(v203, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v225 = __cxa_allocate_exception(0x10uLL);
      MIL::IRDataTypeToString(v75, &v260);
      v226 = std::string::insert(&v260, 0, "Constexpr-AffineDequantize: Unsupported dType (");
      v227 = *&v226->__r_.__value_.__l.__data_;
      v261.__r_.__value_.__r.__words[2] = v226->__r_.__value_.__r.__words[2];
      *&v261.__r_.__value_.__l.__data_ = v227;
      v226->__r_.__value_.__l.__size_ = 0;
      v226->__r_.__value_.__r.__words[2] = 0;
      v226->__r_.__value_.__r.__words[0] = 0;
      v228 = std::string::append(&v261, ") for scale.");
      v229 = *&v228->__r_.__value_.__l.__data_;
      v262.__r_.__value_.__r.__words[2] = v228->__r_.__value_.__r.__words[2];
      *&v262.__r_.__value_.__l.__data_ = v229;
      v228->__r_.__value_.__l.__size_ = 0;
      v228->__r_.__value_.__r.__words[2] = 0;
      v228->__r_.__value_.__r.__words[0] = 0;
      std::runtime_error::runtime_error(v225, &v262);
      __cxa_throw(v225, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    v76 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(v45);
    v78 = v77;
    if (v46)
    {
      atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v79 = (*(*v47 + 32))(v47);
    v80 = (*(*v79 + 88))(v79);
    v81 = v80;
    switch(v80)
    {
      case 5:
        v154 = MIL::IRTensorValue::GetDataView<float>(v47);
        v262.__r_.__value_.__r.__words[0] = v76;
        v262.__r_.__value_.__l.__size_ = v78;
        v261.__r_.__value_.__r.__words[0] = v154;
        v261.__r_.__value_.__l.__size_ = v155;
        std::vector<MIL::Fp16>::vector[abi:ne200100](&__p, v5);
        if (v256 != __p)
        {
          v156 = 0;
          v157 = v9 * v6;
          do
          {
            if (v261.__r_.__value_.__l.__size_ == 1)
            {
              v158 = 0;
            }

            else
            {
              v158 = v156 % v157 / v6;
            }

            v159 = *MIL::Util::Span<float const,18446744073709551615ul>::At(&v261, v158);
            if (v262.__r_.__value_.__l.__size_ == 1)
            {
              v160 = 0;
            }

            else
            {
              v160 = v156 % v157 / v6;
            }

            v161 = MIL::Util::Span<MIL::Fp16 const,18446744073709551615ul>::At(&v262, v160);
            v162 = MIL::Operators::Common::Shared::ConstExprs::DequantizeExpression(*v161, *(v72 + v156), v159);
            v163 = __p;
            *(__p + v156++) = v162;
          }

          while (v156 < (v256 - v163) >> 1);
        }

        break;
      case 9:
        v112 = MIL::IRTensorValue::GetDataView<signed char>(v47);
        v262.__r_.__value_.__r.__words[0] = v76;
        v262.__r_.__value_.__l.__size_ = v78;
        v261.__r_.__value_.__r.__words[0] = v112;
        v261.__r_.__value_.__l.__size_ = v113;
        std::vector<MIL::Fp16>::vector[abi:ne200100](&__p, v5);
        if (v256 != __p)
        {
          v114 = 0;
          v115 = v9 * v6;
          do
          {
            if (v261.__r_.__value_.__l.__size_ == 1)
            {
              v116 = 0;
            }

            else
            {
              v116 = v114 % v115 / v6;
            }

            v117 = *MIL::Util::Span<signed char const,18446744073709551615ul>::At(&v261, v116);
            if (v262.__r_.__value_.__l.__size_ == 1)
            {
              v118 = 0;
            }

            else
            {
              v118 = v114 % v115 / v6;
            }

            v119 = MIL::Util::Span<MIL::Fp16 const,18446744073709551615ul>::At(&v262, v118);
            v120 = MIL::Operators::Common::Shared::ConstExprs::DequantizeExpression(*v119, *(v72 + v114), v117);
            v121 = __p;
            *(__p + v114++) = v120;
          }

          while (v114 < (v256 - v121) >> 1);
        }

        break;
      case 14:
        v82 = MIL::IRTensorValue::GetDataView<unsigned char>(v47);
        v262.__r_.__value_.__r.__words[0] = v76;
        v262.__r_.__value_.__l.__size_ = v78;
        v261.__r_.__value_.__r.__words[0] = v82;
        v261.__r_.__value_.__l.__size_ = v83;
        std::vector<MIL::Fp16>::vector[abi:ne200100](&__p, v5);
        if (v256 != __p)
        {
          v84 = 0;
          v85 = v9 * v6;
          do
          {
            if (v261.__r_.__value_.__l.__size_ == 1)
            {
              v86 = 0;
            }

            else
            {
              v86 = v84 % v85 / v6;
            }

            v87 = *MIL::Util::Span<unsigned char const,18446744073709551615ul>::At(&v261, v86);
            if (v262.__r_.__value_.__l.__size_ == 1)
            {
              v88 = 0;
            }

            else
            {
              v88 = v84 % v85 / v6;
            }

            v89 = MIL::Util::Span<MIL::Fp16 const,18446744073709551615ul>::At(&v262, v88);
            v90 = MIL::Operators::Common::Shared::ConstExprs::DequantizeExpression(*v89, *(v72 + v84), v87);
            v91 = __p;
            *(__p + v84++) = v90;
          }

          while (v84 < (v256 - v91) >> 1);
        }

        break;
      default:
        v245 = __cxa_allocate_exception(0x10uLL);
        MIL::IRDataTypeToString(v81, &v260);
        v246 = std::string::insert(&v260, 0, "Constexpr-AffineDequantize: Unsupported dType (");
        v247 = *&v246->__r_.__value_.__l.__data_;
        v261.__r_.__value_.__r.__words[2] = v246->__r_.__value_.__r.__words[2];
        *&v261.__r_.__value_.__l.__data_ = v247;
        v246->__r_.__value_.__l.__size_ = 0;
        v246->__r_.__value_.__r.__words[2] = 0;
        v246->__r_.__value_.__r.__words[0] = 0;
        v248 = std::string::append(&v261, ") for zeroPoint.");
        v249 = *&v248->__r_.__value_.__l.__data_;
        v262.__r_.__value_.__r.__words[2] = v248->__r_.__value_.__r.__words[2];
        *&v262.__r_.__value_.__l.__data_ = v249;
        v248->__r_.__value_.__l.__size_ = 0;
        v248->__r_.__value_.__r.__words[2] = 0;
        v248->__r_.__value_.__r.__words[0] = 0;
        std::runtime_error::runtime_error(v245, &v262);
        __cxa_throw(v245, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  else
  {
    if (v49 != 14)
    {
      v210 = __cxa_allocate_exception(0x10uLL);
      MIL::IRDataTypeToString(v50, &v260);
      v211 = std::string::insert(&v260, 0, "Constexpr-AffineDequantize: Unsupported dType (");
      v212 = *&v211->__r_.__value_.__l.__data_;
      v261.__r_.__value_.__r.__words[2] = v211->__r_.__value_.__r.__words[2];
      *&v261.__r_.__value_.__l.__data_ = v212;
      v211->__r_.__value_.__l.__size_ = 0;
      v211->__r_.__value_.__r.__words[2] = 0;
      v211->__r_.__value_.__r.__words[0] = 0;
      v213 = std::string::append(&v261, ") for quantizedData.");
      v214 = *&v213->__r_.__value_.__l.__data_;
      v262.__r_.__value_.__r.__words[2] = v213->__r_.__value_.__r.__words[2];
      *&v262.__r_.__value_.__l.__data_ = v214;
      v213->__r_.__value_.__l.__size_ = 0;
      v213->__r_.__value_.__r.__words[2] = 0;
      v213->__r_.__value_.__r.__words[0] = 0;
      std::runtime_error::runtime_error(v210, &v262);
      __cxa_throw(v210, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    v51 = MIL::IRTensorValue::GetDataView<unsigned char>(v42);
    if (v44)
    {
      atomic_fetch_add_explicit(&v44->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v46)
    {
      atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v52 = (*(*v45 + 32))(v45);
    v53 = (*(*v52 + 88))(v52);
    v54 = v53;
    if (v53 != 4)
    {
      if (v53 == 5)
      {
        MIL::IRTensorValue::GetDataView<float>(v45);
        if (v46)
        {
          atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v202 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v202, "Constexpr-AffineDequantize: output and scale type must be same.");
        __cxa_throw(v202, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v220 = __cxa_allocate_exception(0x10uLL);
      MIL::IRDataTypeToString(v54, &v260);
      v221 = std::string::insert(&v260, 0, "Constexpr-AffineDequantize: Unsupported dType (");
      v222 = *&v221->__r_.__value_.__l.__data_;
      v261.__r_.__value_.__r.__words[2] = v221->__r_.__value_.__r.__words[2];
      *&v261.__r_.__value_.__l.__data_ = v222;
      v221->__r_.__value_.__l.__size_ = 0;
      v221->__r_.__value_.__r.__words[2] = 0;
      v221->__r_.__value_.__r.__words[0] = 0;
      v223 = std::string::append(&v261, ") for scale.");
      v224 = *&v223->__r_.__value_.__l.__data_;
      v262.__r_.__value_.__r.__words[2] = v223->__r_.__value_.__r.__words[2];
      *&v262.__r_.__value_.__l.__data_ = v224;
      v223->__r_.__value_.__l.__size_ = 0;
      v223->__r_.__value_.__r.__words[2] = 0;
      v223->__r_.__value_.__r.__words[0] = 0;
      std::runtime_error::runtime_error(v220, &v262);
      __cxa_throw(v220, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    v55 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(v45);
    v57 = v56;
    if (v46)
    {
      atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v58 = (*(*v47 + 32))(v47);
    v59 = (*(*v58 + 88))(v58);
    v60 = v59;
    switch(v59)
    {
      case 5:
        v164 = MIL::IRTensorValue::GetDataView<float>(v47);
        v262.__r_.__value_.__r.__words[0] = v55;
        v262.__r_.__value_.__l.__size_ = v57;
        v261.__r_.__value_.__r.__words[0] = v164;
        v261.__r_.__value_.__l.__size_ = v165;
        std::vector<MIL::Fp16>::vector[abi:ne200100](&__p, v5);
        if (v256 != __p)
        {
          v166 = 0;
          v167 = v9 * v6;
          do
          {
            if (v261.__r_.__value_.__l.__size_ == 1)
            {
              v168 = 0;
            }

            else
            {
              v168 = v166 % v167 / v6;
            }

            v169 = *MIL::Util::Span<float const,18446744073709551615ul>::At(&v261, v168);
            if (v262.__r_.__value_.__l.__size_ == 1)
            {
              v170 = 0;
            }

            else
            {
              v170 = v166 % v167 / v6;
            }

            v171 = MIL::Util::Span<MIL::Fp16 const,18446744073709551615ul>::At(&v262, v170);
            LOBYTE(v172) = *(v51 + v166);
            v173 = MIL::Operators::Common::Shared::ConstExprs::DequantizeExpression(*v171, v172, v169);
            v174 = __p;
            *(__p + v166++) = v173;
          }

          while (v166 < (v256 - v174) >> 1);
        }

        break;
      case 9:
        v122 = MIL::IRTensorValue::GetDataView<signed char>(v47);
        v262.__r_.__value_.__r.__words[0] = v55;
        v262.__r_.__value_.__l.__size_ = v57;
        v261.__r_.__value_.__r.__words[0] = v122;
        v261.__r_.__value_.__l.__size_ = v123;
        std::vector<MIL::Fp16>::vector[abi:ne200100](&__p, v5);
        if (v256 != __p)
        {
          v124 = 0;
          v125 = v9 * v6;
          do
          {
            if (v261.__r_.__value_.__l.__size_ == 1)
            {
              v126 = 0;
            }

            else
            {
              v126 = v124 % v125 / v6;
            }

            v127 = *MIL::Util::Span<signed char const,18446744073709551615ul>::At(&v261, v126);
            if (v262.__r_.__value_.__l.__size_ == 1)
            {
              v128 = 0;
            }

            else
            {
              v128 = v124 % v125 / v6;
            }

            v129 = MIL::Util::Span<MIL::Fp16 const,18446744073709551615ul>::At(&v262, v128);
            LOBYTE(v130) = *(v51 + v124);
            v131 = MIL::Operators::Common::Shared::ConstExprs::DequantizeExpression(*v129, v130, v127);
            v132 = __p;
            *(__p + v124++) = v131;
          }

          while (v124 < (v256 - v132) >> 1);
        }

        break;
      case 14:
        v61 = MIL::IRTensorValue::GetDataView<unsigned char>(v47);
        v262.__r_.__value_.__r.__words[0] = v55;
        v262.__r_.__value_.__l.__size_ = v57;
        v261.__r_.__value_.__r.__words[0] = v61;
        v261.__r_.__value_.__l.__size_ = v62;
        std::vector<MIL::Fp16>::vector[abi:ne200100](&__p, v5);
        if (v256 != __p)
        {
          v63 = 0;
          v64 = v9 * v6;
          do
          {
            if (v261.__r_.__value_.__l.__size_ == 1)
            {
              v65 = 0;
            }

            else
            {
              v65 = v63 % v64 / v6;
            }

            v66 = *MIL::Util::Span<unsigned char const,18446744073709551615ul>::At(&v261, v65);
            if (v262.__r_.__value_.__l.__size_ == 1)
            {
              v67 = 0;
            }

            else
            {
              v67 = v63 % v64 / v6;
            }

            v68 = MIL::Util::Span<MIL::Fp16 const,18446744073709551615ul>::At(&v262, v67);
            LOBYTE(v69) = *(v51 + v63);
            v70 = MIL::Operators::Common::Shared::ConstExprs::DequantizeExpression(*v68, v69, v66);
            v71 = __p;
            *(__p + v63++) = v70;
          }

          while (v63 < (v256 - v71) >> 1);
        }

        break;
      default:
        v240 = __cxa_allocate_exception(0x10uLL);
        MIL::IRDataTypeToString(v60, &v260);
        v241 = std::string::insert(&v260, 0, "Constexpr-AffineDequantize: Unsupported dType (");
        v242 = *&v241->__r_.__value_.__l.__data_;
        v261.__r_.__value_.__r.__words[2] = v241->__r_.__value_.__r.__words[2];
        *&v261.__r_.__value_.__l.__data_ = v242;
        v241->__r_.__value_.__l.__size_ = 0;
        v241->__r_.__value_.__r.__words[2] = 0;
        v241->__r_.__value_.__r.__words[0] = 0;
        v243 = std::string::append(&v261, ") for zeroPoint.");
        v244 = *&v243->__r_.__value_.__l.__data_;
        v262.__r_.__value_.__r.__words[2] = v243->__r_.__value_.__r.__words[2];
        *&v262.__r_.__value_.__l.__data_ = v244;
        v243->__r_.__value_.__l.__size_ = 0;
        v243->__r_.__value_.__r.__words[2] = 0;
        v243->__r_.__value_.__r.__words[0] = 0;
        std::runtime_error::runtime_error(v240, &v262);
        __cxa_throw(v240, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  if (v46)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v46);
    std::__shared_weak_count::__release_shared[abi:ne200100](v46);
  }

  if (v44)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v44);
  }

  MIL::IRTensorValueType::MakeFloat16Value();
}