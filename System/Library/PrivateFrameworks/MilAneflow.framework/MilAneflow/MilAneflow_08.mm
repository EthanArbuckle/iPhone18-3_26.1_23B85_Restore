void sub_2599D47CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, std::__shared_weak_count *a35, void *a36, uint64_t a37, uint64_t a38, void *a39, std::__shared_weak_count *a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, void *a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, void *a54, uint64_t a55, uint64_t a56, void *a57, uint64_t a58, uint64_t a59, void *a60, uint64_t a61, uint64_t a62, void *a63)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a40)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a40);
  }

  if (a35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a35);
  }

  if (v71)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v71);
  }

  if (a47 < 0)
  {
    operator delete(a42);
  }

  if (a48)
  {
    operator delete(a48);
  }

  if (a51)
  {
    operator delete(a51);
  }

  if (a54)
  {
    operator delete(a54);
  }

  if (a57)
  {
    operator delete(a57);
  }

  if (a60)
  {
    operator delete(a60);
  }

  if (a63)
  {
    operator delete(a63);
  }

  if (a71 < 0)
  {
    operator delete(a66);
  }

  if (*(v72 - 225) < 0)
  {
    operator delete(*(v72 - 248));
  }

  MEMORY[0x259CA8F00](v72 - 200);
  MEMORY[0x259CA8F00](v72 - 128);
  _Unwind_Resume(a1);
}

void *std::shared_ptr<MIL::IRNamedValueType>::operator=[abi:ne200100]<MIL::IRNamedValueType,std::default_delete<MIL::IRNamedValueType>,0>(void *a1, uint64_t *a2)
{
  std::shared_ptr<MIL::IRNamedValueType>::shared_ptr[abi:ne200100]<MIL::IRNamedValueType,std::default_delete<MIL::IRNamedValueType>,0>(&v6, a2);
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

uint64_t *std::shared_ptr<MIL::IRNamedValueType>::shared_ptr[abi:ne200100]<MIL::IRNamedValueType,std::default_delete<MIL::IRNamedValueType>,0>(uint64_t *result, uint64_t *a2)
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

uint64_t std::__tree<std::__value_type<std::string,MIL::IRValueType const*>,std::__map_value_compare<std::string,std::__value_type<std::string,MIL::IRValueType const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MIL::IRValueType const*>>>::__count_unique<std::string>(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(a2 + 23);
    if (v3 >= 0)
    {
      v4 = *(a2 + 23);
    }

    else
    {
      v4 = a2[1];
    }

    if (v3 >= 0)
    {
      v5 = a2;
    }

    else
    {
      v5 = *a2;
    }

    v6 = 1;
    do
    {
      v7 = *(v2 + 55);
      if (v7 >= 0)
      {
        v8 = *(v2 + 55);
      }

      else
      {
        v8 = v2[5];
      }

      if (v7 >= 0)
      {
        v9 = (v2 + 4);
      }

      else
      {
        v9 = v2[4];
      }

      if (v8 >= v4)
      {
        v10 = v4;
      }

      else
      {
        v10 = v8;
      }

      v11 = memcmp(v5, v9, v10);
      v12 = v4 < v8;
      if (v11)
      {
        v12 = v11 < 0;
      }

      if (!v12)
      {
        v13 = memcmp(v9, v5, v10);
        v14 = v8 < v4;
        if (v13)
        {
          v14 = v13 < 0;
        }

        if (!v14)
        {
          return v6;
        }

        ++v2;
      }

      v2 = *v2;
    }

    while (v2);
  }

  return 0;
}

void ANEMachineIR::Validators::ParsePeReduceParamValues(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, MIL::ValidationResult *a4@<X8>)
{
  v31 = 0;
  v32 = 0;
  v33 = 0;
  if (ANEMachineIR::Utils::TryGetStaticTensorShape(a2, &v31))
  {
    std::string::basic_string[abi:ne200100]<0>(v24, "reduction");
    std::string::basic_string[abi:ne200100]<0>(&v23, "mean");
    ParameterValue = MIL::IROperation::TryGetParameterValue();
    if (ParameterValue && (*(*ParameterValue + 40))(ParameterValue) && (v8 = MEMORY[0x259CA93D0]()) != 0)
    {
      if (*(v8 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v26, *v8, *(v8 + 8));
      }

      else
      {
        v9 = *v8;
        v26.__r_.__value_.__r.__words[2] = *(v8 + 16);
        *&v26.__r_.__value_.__l.__data_ = v9;
      }
    }

    else
    {
      v26 = v23;
      memset(&v23, 0, sizeof(v23));
    }

    if (*(a3 + 24) == 1)
    {
      if (*(a3 + 23) < 0)
      {
        operator delete(*a3);
      }

      *a3 = v26;
      *(&v26.__r_.__value_.__s + 23) = 0;
      v26.__r_.__value_.__s.__data_[0] = 0;
    }

    else
    {
      *a3 = v26;
      memset(&v26, 0, sizeof(v26));
      *(a3 + 24) = 1;
    }

    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__r_.__value_.__l.__data_);
    }

    if (v25 < 0)
    {
      operator delete(v24[0]);
    }

    std::string::basic_string[abi:ne200100]<0>(&v26, "reduction_scale");
    v11 = MIL::IROperation::TryGetParameterValue();
    v12 = 1.0;
    if (v11)
    {
      if ((*(*v11 + 40))(v11))
      {
        v13 = MEMORY[0x259CA9400]();
        if (v13)
        {
          v12 = *v13;
        }
      }
    }

    *(a3 + 64) = v12;
    *(a3 + 68) = 1;
    if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v26.__r_.__value_.__l.__data_);
    }

    std::string::basic_string[abi:ne200100]<0>(&v26, "reduction_epsilon");
    v14 = MIL::IROperation::TryGetParameterValue();
    v15 = 0;
    if (v14)
    {
      if ((*(*v14 + 40))(v14))
      {
        v16 = MEMORY[0x259CA9400]();
        if (v16)
        {
          v15 = *v16;
        }
      }
    }

    *(a3 + 72) = v15;
    *(a3 + 76) = 1;
    if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v26.__r_.__value_.__l.__data_);
    }

    v17 = (v32 - v31) >> 3;
    switch(v17)
    {
      case 3:
        std::string::basic_string[abi:ne200100]<0>(v24, "reduction_axes");
        LOBYTE(v18) = 1;
        v21 = 0;
        v22 = 0;
        v20 = 0;
        std::vector<signed char>::__init_with_size[abi:ne200100]<signed char const*,signed char const*>(&v20, &v18, &v18 + 1, 1);
        MIL::ANEMachineIR::GetScalarOrVectorOrDefault<signed char>(&v20, &v26);
        std::optional<std::vector<MIL::Fp16>>::operator=[abi:ne200100]<std::vector<MIL::Fp16>,void>(a3 + 32, &v26);
        break;
      case 4:
        std::string::basic_string[abi:ne200100]<0>(v24, "reduction_axes");
        v18 = 513;
        v21 = 0;
        v22 = 0;
        v20 = 0;
        std::vector<signed char>::__init_with_size[abi:ne200100]<signed char const*,signed char const*>(&v20, &v18, &v19, 2);
        MIL::ANEMachineIR::GetScalarOrVectorOrDefault<signed char>(&v20, &v26);
        std::optional<std::vector<MIL::Fp16>>::operator=[abi:ne200100]<std::vector<MIL::Fp16>,void>(a3 + 32, &v26);
        break;
      case 5:
        std::string::basic_string[abi:ne200100]<0>(v24, "reduction_axes");
        v18 = 513;
        v19 = 3;
        v21 = 0;
        v22 = 0;
        v20 = 0;
        std::vector<signed char>::__init_with_size[abi:ne200100]<signed char const*,signed char const*>(&v20, &v18, &v20, 3);
        MIL::ANEMachineIR::GetScalarOrVectorOrDefault<signed char>(&v20, &v26);
        std::optional<std::vector<MIL::Fp16>>::operator=[abi:ne200100]<std::vector<MIL::Fp16>,void>(a3 + 32, &v26);
        break;
      default:
        std::string::basic_string[abi:ne200100]<0>(v24, "reduction_axes");
        v20 = 0;
        v21 = 0;
        v22 = 0;
        MIL::ANEMachineIR::GetScalarOrVectorOrDefault<signed char>(&v20, &v26);
        std::optional<std::vector<MIL::Fp16>>::operator=[abi:ne200100]<std::vector<MIL::Fp16>,void>(a3 + 32, &v26);
        break;
    }

    if (v26.__r_.__value_.__r.__words[0])
    {
      v26.__r_.__value_.__l.__size_ = v26.__r_.__value_.__r.__words[0];
      operator delete(v26.__r_.__value_.__l.__data_);
    }

    if (v20)
    {
      v21 = v20;
      operator delete(v20);
    }

    if (v25 < 0)
    {
      operator delete(v24[0]);
    }

    MIL::ValidationResult::ValidationResult(a4);
  }

  else
  {
    v10 = a1[1];
    v29 = *a1;
    v30 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "inputs must have static shape.");
    MEMORY[0x259CA8EE0](a4, &v29, 309, __p);
    if (v28 < 0)
    {
      operator delete(__p[0]);
    }

    if (v30)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v30);
    }
  }

  if (v31)
  {
    v32 = v31;
    operator delete(v31);
  }
}

void sub_2599D5170(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a10)
  {
    operator delete(a10);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  v39 = *(v37 + 16);
  if (v39)
  {
    *(v37 + 24) = v39;
    operator delete(v39);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::GetScalarOrVectorOrDefault<signed char>(uint64_t *a1@<X2>, void *a2@<X8>)
{
  ParameterValue = MIL::IROperation::TryGetParameterValue();
  if (ParameterValue)
  {
    if ((*(*ParameterValue + 40))(ParameterValue) && (v5 = MEMORY[0x259CA93E0]()) != 0)
    {
      LOBYTE(Data) = *v5;
      a2[1] = 0;
      a2[2] = 0;
      *a2 = 0;
      std::vector<signed char>::__init_with_size[abi:ne200100]<signed char const*,signed char const*>(a2, &Data, &Data + 1, 1);
    }

    else
    {
      v6 = MIL::IROperation::GetParameterValue();
      v7 = MIL::IRValue::AsTensor(v6);
      v8 = (*(*v7 + 32))(v7);
      ANEMachineIR::Utils::GetStaticTensorShape(v8, v9, &Data);
      if (v27 == Data)
      {
        std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
      }

      v10 = *Data;
      v27 = Data;
      operator delete(Data);
      Data = MIL::IRTensorValue::GetDataView<signed char>();
      v27 = v11;
      a2[1] = 0;
      a2[2] = 0;
      *a2 = 0;
      std::vector<unsigned char>::reserve(a2, v10);
      if (v10)
      {
        for (i = 0; i != v10; ++i)
        {
          v13 = MIL::Util::Span<signed char const,18446744073709551615ul>::operator[](&Data, i);
          v15 = a2[1];
          v14 = a2[2];
          if (v15 >= v14)
          {
            v17 = *a2;
            v18 = &v15[-*a2];
            v19 = (v18 + 1);
            if ((v18 + 1) < 0)
            {
              std::vector<MIL::Fp16>::__throw_length_error[abi:ne200100]();
            }

            v20 = v14 - v17;
            if (2 * v20 > v19)
            {
              v19 = 2 * v20;
            }

            if (v20 >= 0x3FFFFFFFFFFFFFFFLL)
            {
              v21 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v21 = v19;
            }

            if (v21)
            {
              operator new();
            }

            v22 = &v15[-*a2];
            *v18 = *v13;
            v16 = v18 + 1;
            memcpy(0, v17, v22);
            *a2 = 0;
            a2[1] = v18 + 1;
            a2[2] = 0;
            if (v17)
            {
              operator delete(v17);
            }
          }

          else
          {
            *v15 = *v13;
            v16 = v15 + 1;
          }

          a2[1] = v16;
        }
      }
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    v23 = *a1;
    v24 = a1[1];
    v25 = v24 - *a1;

    std::vector<signed char>::__init_with_size[abi:ne200100]<signed char *,signed char *>(a2, v23, v24, v25);
  }
}

void sub_2599D54D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v13 = *v11;
  if (*v11)
  {
    *(v11 + 8) = v13;
    operator delete(v13);
  }

  _Unwind_Resume(exception_object);
}

void ANEMachineIR::Validators::ValidatePeReduce(uint64_t *a1@<X0>, ANEMachineIR::Utils *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, MIL::ValidationResult *a5@<X8>)
{
  v10 = (*(*a2 + 96))(a2);
  if (v10[1] - *v10 <= 0x10uLL)
  {
    v11 = a1[1];
    v126 = *a1;
    v127 = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "Input rank must be >= 3");
    MEMORY[0x259CA8EE0](a5, &v126, 319, __p);
    if (v125 < 0)
    {
      operator delete(__p[0]);
    }

    v12 = v127;
    if (!v127)
    {
      return;
    }

    goto LABEL_114;
  }

  if (*(a4 + 56) != 1)
  {
    goto LABEL_95;
  }

  v13 = (*(*a2 + 96))(a2);
  v14 = v13[1] - *v13;
  ANEMachineIR::Utils::GetStaticTensorShape(a2, v15, &v122);
  v16 = *(a4 + 32);
  v17 = *(a4 + 40);
  v18 = *(a4 + 32);
  v19 = v17 - v18;
  if (v17 == v18)
  {
    goto LABEL_69;
  }

  v20 = 0;
  if (v19 <= 1)
  {
    v21 = 1;
  }

  else
  {
    v21 = v17 - v18;
  }

  v22 = 1;
  v23 = 1;
LABEL_14:
  v24 = v20;
  do
  {
    v20 = v24 + 1;
    if (v19 > v24 + 1)
    {
      v25 = v18[v24];
      v26 = v22;
      while (v25 != v18[v26])
      {
        if (v19 <= ++v26)
        {
          goto LABEL_19;
        }
      }

      v23 = 0;
      ++v22;
      goto LABEL_14;
    }

LABEL_19:
    ++v22;
    v24 = v20;
  }

  while (v20 != v21);
  if ((v23 & 1) == 0)
  {
    v37 = a1[1];
    *&v135 = *a1;
    *(&v135 + 1) = v37;
    if (v37)
    {
      atomic_fetch_add_explicit((v37 + 8), 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(&v139, "PE reduce: duplicated axes not allowed.");
    MEMORY[0x259CA8EE0](a5, &v135, 319, &v139);
    goto LABEL_87;
  }

  LOBYTE(v19) = 0;
  v27 = 0;
  v28 = v123 - v122;
  do
  {
    v29 = *v18;
    if (v14 == 32)
    {
      if (v29 == 3)
      {
        if (v28 < 0x19)
        {
          goto LABEL_241;
        }

        v30 = *(v122 + 3);
      }

      else if (v29 == 1)
      {
        if (v28 < 9)
        {
          goto LABEL_241;
        }

        v30 = *(v122 + 1);
      }

      else
      {
        if (*v18)
        {
          goto LABEL_40;
        }

        if (v123 == v122)
        {
          goto LABEL_241;
        }

        v30 = *v122;
      }

      if (v30 == 1)
      {
LABEL_40:
        LOBYTE(v31) = 0;
        goto LABEL_52;
      }

      LOBYTE(v31) = 0;
      ++v27;
    }

    else
    {
      if (v14 != 40)
      {
        goto LABEL_40;
      }

      LOBYTE(v31) = 1;
      if (*v18 > 1u)
      {
        if (v29 == 2)
        {
          if (v28 < 0x11)
          {
            goto LABEL_241;
          }

          v31 = *(v122 + 2);
        }

        else
        {
          if (v29 != 4)
          {
            goto LABEL_52;
          }

          if (v28 < 0x21)
          {
            goto LABEL_241;
          }

          v31 = *(v122 + 4);
        }
      }

      else if (*v18)
      {
        if (v28 < 9)
        {
          goto LABEL_241;
        }

        v31 = *(v122 + 1);
      }

      else
      {
        if (v123 == v122)
        {
          goto LABEL_241;
        }

        v31 = *v122;
      }

      if (v31 != 1)
      {
        ++v27;
        LOBYTE(v31) = 1;
      }
    }

LABEL_52:
    v33 = v14 == 24 && v29 == 1;
    if (v14 == 32 && v29 == 2)
    {
      v33 = 1;
    }

    LOBYTE(v19) = v33 | v31 & (v29 == 3) | v19;
    ++v18;
  }

  while (v18 != v17);
  if (v27 >= 3)
  {
    v35 = a1[1];
    *&v135 = *a1;
    *(&v135 + 1) = v35;
    if (v35)
    {
      atomic_fetch_add_explicit((v35 + 8), 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(&v139, "PE reduce: for N/D/H/C dims, reduce up to 2 dims is allowed.");
    MEMORY[0x259CA8EE0](a5, &v135, 319, &v139);
    goto LABEL_87;
  }

LABEL_69:
  if (v14 == 24 && (v19 & 1) == 0)
  {
    if ((v123 - v122) >= 9)
    {
      v36 = *(v122 + 1);
      goto LABEL_82;
    }

LABEL_241:
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v14 != 32) | v19 & 1)
  {
    if (!((v14 != 40) | v19 & 1))
    {
      if ((v123 - v122) <= 0x18)
      {
        goto LABEL_241;
      }

      v36 = *(v122 + 3);
      goto LABEL_82;
    }

    goto LABEL_83;
  }

  if ((v123 - v122) < 0x11)
  {
    goto LABEL_241;
  }

  v36 = *(v122 + 2);
LABEL_82:
  if (v36 == 1)
  {
LABEL_83:
    MIL::ValidationResult::ValidationResult(a5);
    goto LABEL_91;
  }

  v38 = a1[1];
  *&v135 = *a1;
  *(&v135 + 1) = v38;
  if (v38)
  {
    atomic_fetch_add_explicit((v38 + 8), 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(&v139, "PE reduce: for W dim, if its input dim size is not 1, it should be reduced (W should appear in reduction_axis).");
  MEMORY[0x259CA8EE0](a5, &v135, 319, &v139);
LABEL_87:
  if (v141 < 0)
  {
    operator delete(v139);
  }

  if (*(&v135 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v135 + 1));
  }

LABEL_91:
  if (v122)
  {
    v123 = v122;
    operator delete(v122);
  }

  if (!MIL::ValidationResult::IsGood(a5))
  {
    return;
  }

  MEMORY[0x259CA8F00](a5);
LABEL_95:
  if (*(a4 + 24) == 1)
  {
    v39 = *(a4 + 23);
    if (v39 < 0)
    {
      if (*(a4 + 8) != 4)
      {
        goto LABEL_102;
      }

      v40 = *a4;
    }

    else
    {
      v40 = a4;
      if (v39 != 4)
      {
LABEL_102:
        v41 = a1[1];
        v120 = *a1;
        v121 = v41;
        if (v41)
        {
          atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        std::string::basic_string[abi:ne200100]<0>(v118, "Only mean reduction is supported at the moment.");
        MEMORY[0x259CA8EE0](a5, &v120, 319, v118);
        if (v119 < 0)
        {
          operator delete(v118[0]);
        }

        v12 = v121;
        if (!v121)
        {
          return;
        }

LABEL_114:
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
        return;
      }
    }

    if (*v40 != 1851876717)
    {
      goto LABEL_102;
    }
  }

  if (*(a4 + 104) != 1)
  {
    v111 = 0;
    v112 = 0;
    v113 = 0;
    if (ANEMachineIR::Utils::TryGetStaticTensorShape(a2, &v111))
    {
      v104 = 0;
      v105 = 0;
      v106 = 0;
      if (ANEMachineIR::Utils::TryGetStaticTensorShape(a3, &v104))
      {
        __src = 0;
        v129 = 0;
        v130 = 0;
        v44 = v111;
        v43 = v112;
        v45 = v112 - v111;
        v46 = (v112 - v111) >> 3;
        v48 = *(a4 + 32);
        v47 = *(a4 + 40);
        std::vector<unsigned long long>::reserve(&__src, v46);
        std::vector<BOOL>::vector(&v139, v46);
        if (v43 != v44)
        {
          v49 = 0;
          v50 = v139;
          if (v46 <= 1)
          {
            v51 = 1;
          }

          else
          {
            v51 = v46;
          }

          do
          {
            if (v140 <= v49)
            {
              std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
            }

            *&v50[(v49 >> 3) & 0x1FFFFFFFFFFFFFF8] &= ~(1 << v49);
            ++v49;
          }

          while (v51 != v49);
        }

        if (v47 == v48)
        {
          if (v46 >= 3)
          {
            if (v140 <= 1)
            {
              std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
            }

            v59 = v139;
            v60 = *v139;
            *v139 |= 2uLL;
            if (v45 != 24)
            {
              if (v140 <= 2)
              {
                std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
              }

              *v59 = v60 | 6;
              if (v45 == 40)
              {
                if (v140 <= 3)
                {
                  std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                }

                *v59 = v60 | 0xE;
              }
            }
          }
        }

        else
        {
          v52 = v47 - v48;
          v53 = *(a4 + 32);
          v54 = *(a4 + 40) - v53;
          v55 = v139;
          if ((v47 - v48) <= 1)
          {
            v52 = 1;
          }

          do
          {
            if (!v54)
            {
              std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
            }

            v56 = *v53;
            if (v140 <= v56)
            {
              std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
            }

            *&v55[(v56 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v56;
            ++v53;
            --v54;
            --v52;
          }

          while (v52);
        }

        v129 = __src;
        std::vector<unsigned long long>::reserve(&__src, v46);
        if (v43 != v44)
        {
          v61 = 0;
          if (v46 <= 1)
          {
            v46 = 1;
          }

          while (1)
          {
            if (v140 <= v61)
            {
              std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
            }

            if ((*&v139[(v61 >> 3) & 0x1FFFFFFFFFFFFFF8] >> v61))
            {
              v62 = v129;
              if (v129 >= v130)
              {
                v65 = __src;
                v66 = v129 - __src;
                v67 = (v129 - __src) >> 3;
                v68 = v67 + 1;
                if ((v67 + 1) >> 61)
                {
                  std::vector<MIL::Fp16>::__throw_length_error[abi:ne200100]();
                }

                v69 = v130 - __src;
                if ((v130 - __src) >> 2 > v68)
                {
                  v68 = v69 >> 2;
                }

                if (v69 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v70 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v70 = v68;
                }

                if (v70)
                {
                  std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(&__src, v70);
                }

                v75 = (8 * v67);
                v76 = 0;
                *v75 = 1;
                v63 = (v75 + 1);
LABEL_178:
                memcpy(v76, v65, v66);
                v78 = __src;
                __src = v76;
                v129 = v63;
                v130 = 0;
                if (v78)
                {
                  operator delete(v78);
                }

                goto LABEL_180;
              }

              *v129 = 1;
              v63 = v62 + 8;
            }

            else
            {
              if (v61 >= (v112 - v111) >> 3)
              {
                std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
              }

              v64 = v129;
              if (v129 >= v130)
              {
                v65 = __src;
                v66 = v129 - __src;
                v71 = (v129 - __src) >> 3;
                v72 = v71 + 1;
                if ((v71 + 1) >> 61)
                {
                  std::vector<MIL::Fp16>::__throw_length_error[abi:ne200100]();
                }

                v73 = v130 - __src;
                if ((v130 - __src) >> 2 > v72)
                {
                  v72 = v73 >> 2;
                }

                if (v73 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v74 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v74 = v72;
                }

                if (v74)
                {
                  std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(&__src, v74);
                }

                v77 = (8 * v71);
                v76 = &v77[-((v129 - __src) >> 3)];
                *v77 = *(v111 + v61);
                v63 = (v77 + 1);
                goto LABEL_178;
              }

              *v129 = *(v111 + v61);
              v63 = v64 + 8;
            }

LABEL_180:
            v129 = v63;
            if (v46 == ++v61)
            {
              goto LABEL_183;
            }
          }
        }

        v63 = v129;
LABEL_183:
        v79 = __src;
        v80 = v63 - __src;
        if (v63 - __src == v112 - v111)
        {
          MIL::ValidationResult::ValidationResult(a5);
        }

        else
        {
          v81 = a1[1];
          v137 = *a1;
          v138 = v81;
          if (v81)
          {
            atomic_fetch_add_explicit(&v81->__shared_owners_, 1uLL, memory_order_relaxed);
            v80 = v129 - v79;
          }

          std::to_string(&v132, v80 >> 3);
          v82 = std::string::insert(&v132, 0, "Output rank ");
          v83 = *&v82->__r_.__value_.__l.__data_;
          v133.__r_.__value_.__r.__words[2] = v82->__r_.__value_.__r.__words[2];
          *&v133.__r_.__value_.__l.__data_ = v83;
          v82->__r_.__value_.__l.__size_ = 0;
          v82->__r_.__value_.__r.__words[2] = 0;
          v82->__r_.__value_.__r.__words[0] = 0;
          v84 = std::string::append(&v133, " does not match rank of input tensor of shape ");
          v85 = *&v84->__r_.__value_.__l.__data_;
          v134.__r_.__value_.__r.__words[2] = v84->__r_.__value_.__r.__words[2];
          *&v134.__r_.__value_.__l.__data_ = v85;
          v84->__r_.__value_.__l.__size_ = 0;
          v84->__r_.__value_.__r.__words[2] = 0;
          v84->__r_.__value_.__r.__words[0] = 0;
          std::to_string(&v131, (v112 - v111) >> 3);
          if ((v131.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v86 = &v131;
          }

          else
          {
            v86 = v131.__r_.__value_.__r.__words[0];
          }

          if ((v131.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v131.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v131.__r_.__value_.__l.__size_;
          }

          v88 = std::string::append(&v134, v86, size);
          v89 = *&v88->__r_.__value_.__l.__data_;
          v136 = v88->__r_.__value_.__r.__words[2];
          v135 = v89;
          v88->__r_.__value_.__l.__size_ = 0;
          v88->__r_.__value_.__r.__words[2] = 0;
          v88->__r_.__value_.__r.__words[0] = 0;
          MEMORY[0x259CA8EE0](a5, &v137, 313, &v135);
          if (SHIBYTE(v136) < 0)
          {
            operator delete(v135);
          }

          if (SHIBYTE(v131.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v131.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v134.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v134.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v133.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v133.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v132.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v132.__r_.__value_.__l.__data_);
          }

          if (v138)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v138);
          }
        }

        if (v139)
        {
          operator delete(v139);
        }

        if (MIL::ValidationResult::IsGood(a5))
        {
          MEMORY[0x259CA8F00](a5);
          if (v129 - __src == v105 - v104 && !memcmp(__src, v104, v129 - __src))
          {
            MIL::ValidationResult::ValidationResult(a5);
          }

          else
          {
            ANEMachineIR::Utils::ShapeString(&v104);
            ANEMachineIR::Utils::ShapeString(&__src);
            v90 = a1[1];
            v137 = *a1;
            v138 = v90;
            if (v90)
            {
              atomic_fetch_add_explicit(&v90->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            std::operator+<char>();
            v91 = std::string::append(&v131, " does not match inferred shape ");
            v92 = *&v91->__r_.__value_.__l.__data_;
            v132.__r_.__value_.__r.__words[2] = v91->__r_.__value_.__r.__words[2];
            *&v132.__r_.__value_.__l.__data_ = v92;
            v91->__r_.__value_.__l.__size_ = 0;
            v91->__r_.__value_.__r.__words[2] = 0;
            v91->__r_.__value_.__r.__words[0] = 0;
            if (v136 >= 0)
            {
              v93 = &v135;
            }

            else
            {
              v93 = v135;
            }

            if (v136 >= 0)
            {
              v94 = HIBYTE(v136);
            }

            else
            {
              v94 = *(&v135 + 1);
            }

            v95 = std::string::append(&v132, v93, v94);
            v96 = *&v95->__r_.__value_.__l.__data_;
            v133.__r_.__value_.__r.__words[2] = v95->__r_.__value_.__r.__words[2];
            *&v133.__r_.__value_.__l.__data_ = v96;
            v95->__r_.__value_.__l.__size_ = 0;
            v95->__r_.__value_.__r.__words[2] = 0;
            v95->__r_.__value_.__r.__words[0] = 0;
            v97 = std::string::append(&v133, ".");
            v98 = *&v97->__r_.__value_.__l.__data_;
            v134.__r_.__value_.__r.__words[2] = v97->__r_.__value_.__r.__words[2];
            *&v134.__r_.__value_.__l.__data_ = v98;
            v97->__r_.__value_.__l.__size_ = 0;
            v97->__r_.__value_.__r.__words[2] = 0;
            v97->__r_.__value_.__r.__words[0] = 0;
            MEMORY[0x259CA8EE0](a5, &v137, 313, &v134);
            if (SHIBYTE(v134.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v134.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v133.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v133.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v132.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v132.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v131.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v131.__r_.__value_.__l.__data_);
            }

            if (v138)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v138);
            }

            if (SHIBYTE(v136) < 0)
            {
              operator delete(v135);
            }

            if (v141 < 0)
            {
              operator delete(v139);
            }
          }
        }

        if (__src)
        {
          v129 = __src;
          operator delete(__src);
        }

        if (MIL::ValidationResult::IsGood(a5))
        {
          v99 = MEMORY[0x259CA8F00](a5);
          MIL::ValidationResult::ValidationResult(v99);
        }
      }

      else
      {
        v58 = a1[1];
        v102 = *a1;
        v103 = v58;
        if (v58)
        {
          atomic_fetch_add_explicit(&v58->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        std::string::basic_string[abi:ne200100]<0>(v100, "outputs must have static shape.");
        MEMORY[0x259CA8EE0](a5, &v102, 313, v100);
        if (v101 < 0)
        {
          operator delete(v100[0]);
        }

        if (v103)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v103);
        }
      }

      if (v104)
      {
        v105 = v104;
        operator delete(v104);
      }
    }

    else
    {
      v57 = a1[1];
      v109 = *a1;
      v110 = v57;
      if (v57)
      {
        atomic_fetch_add_explicit(&v57->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      std::string::basic_string[abi:ne200100]<0>(v107, "inputs must have static shape.");
      MEMORY[0x259CA8EE0](a5, &v109, 309, v107);
      if (v108 < 0)
      {
        operator delete(v107[0]);
      }

      if (v110)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v110);
      }
    }

    if (v111)
    {
      v112 = v111;
      operator delete(v111);
    }

    return;
  }

  v42 = a1[1];
  v116 = *a1;
  v117 = v42;
  if (v42)
  {
    atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(v114, "reduction_post_processing is not supported at the moment.");
  MEMORY[0x259CA8EE0](a5, &v116, 319, v114);
  if (v115 < 0)
  {
    operator delete(v114[0]);
  }

  v12 = v117;
  if (v117)
  {
    goto LABEL_114;
  }
}

void sub_2599D61E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *__p)
{
  v45 = *(v43 - 112);
  if (v45)
  {
    operator delete(v45);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  if (a22)
  {
    operator delete(a22);
  }

  _Unwind_Resume(a1);
}

void ANEMachineIR::Validators::ValidatePeReduce(MIL::IRObject *a1@<X0>, MIL::ValidationResult *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "x");
  ParameterType = MIL::IROperation::GetParameterType();
  v5 = MIL::IRValueType::AsTensorType(ParameterType);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  v6 = (*(*a1 + 176))(a1);
  if (*(v6 + 8) == *v6)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  Type = MIL::IRNamedValueType::GetType(**v6);
  v8 = MIL::IRValueType::AsTensorType(Type);
  LOBYTE(__p[0]) = 0;
  v13 = 0;
  LOBYTE(v14) = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  LOBYTE(v21) = 0;
  v23 = 0;
  LocationPtr = MIL::IRObject::GetLocationPtr(a1);
  ANEMachineIR::Validators::ParsePeReduceParamValues(LocationPtr, v5, __p, a2);
  if (MIL::ValidationResult::IsGood(a2))
  {
    MEMORY[0x259CA8F00](a2);
    v10 = MIL::IRObject::GetLocationPtr(a1);
    (*(*a1 + 56))(a1);
    ANEMachineIR::Validators::ValidatePeReduce(v10, v5, v8, __p, a2);
  }

  if (v23 == 1 && v22 < 0)
  {
    operator delete(v21);
  }

  if (v16 == 1 && v14)
  {
    v15 = v14;
    operator delete(v14);
  }

  if (v13 == 1 && v12 < 0)
  {
    operator delete(__p[0]);
  }
}

void ANEMachineIR::Validators::ValidateNeReduce(MIL::IRObject *a1@<X0>, uint64_t a2@<X8>)
{
  LocationPtr = MIL::IRObject::GetLocationPtr(a1);
  v4 = LocationPtr[1];
  v7 = *LocationPtr;
  v8 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "ne_reduce is not implemented.");
  MEMORY[0x259CA8EE0](a2, &v7, 209, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }
}

void sub_2599D6758(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
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

void *std::vector<BOOL>::vector(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<BOOL>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void std::vector<BOOL>::__vallocate[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      v2 = ((a2 - 1) >> 6) + 1;
    }

    else
    {
      v2 = 0;
    }

    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(a1, v2);
  }

  std::vector<MIL::Fp16>::__throw_length_error[abi:ne200100]();
}

void std::__fill_n_BOOL[abi:ne200100]<false,std::vector<BOOL>>(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  v5 = *a1;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ &= ~((0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4));
    v2 = a2 - v6;
    *a1 = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    bzero(v5, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *a1 = v8;
    *v8 &= ~(0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F));
  }
}

uint64_t std::vector<signed char>::__init_with_size[abi:ne200100]<signed char const*,signed char const*>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2599D697C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void MilTranslator::OpTranslator::TranslateConst(MilTranslator::OpTranslator *this@<X0>, const MIL::IROperation *a2@<X1>, uint64_t a3@<X8>)
{
  if (!(*(*a2 + 144))(a2))
  {
    Attributes = MIL::IRObject::GetAttributes(a2);
    std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>::unordered_map(&v51, Attributes);
    std::string::basic_string[abi:ne200100]<0>(&v50, "val");
    v10 = std::__hash_table<std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>>>::find<std::string>(&v51, &v50.__r_.__value_.__l.__data_);
    if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v50.__r_.__value_.__l.__data_);
    }

    if (v52 == 1 && v10)
    {
      v11 = (*(*v10[5] + 40))(v10[5]);
      if (v11)
      {
        v12 = (*(*v11 + 32))(v11);
        v13 = (*(*v12 + 88))(v12);
        if (v13 <= 0xE && ((1 << v13) & 0x4210) != 0)
        {
          std::string::basic_string[abi:ne200100]<0>(&__p, "const");
          MilTranslator::OpTranslator::AddOperation(this);
          if (v44 < 0)
          {
            operator delete(__p);
          }

          (*(*a2 + 200))(&v50, a2);
          if (v50.__r_.__value_.__l.__size_ == v50.__r_.__value_.__r.__words[0])
          {
            std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
          }

          if (*(v50.__r_.__value_.__r.__words[0] + 23) < 0)
          {
            std::string::__init_copy_ctor_external(&v41, *v50.__r_.__value_.__l.__data_, *(v50.__r_.__value_.__r.__words[0] + 8));
          }

          else
          {
            v15 = *v50.__r_.__value_.__l.__data_;
            v41.__r_.__value_.__r.__words[2] = *(v50.__r_.__value_.__r.__words[0] + 16);
            *&v41.__r_.__value_.__l.__data_ = v15;
          }

          MIL::IROperation::GetOutputType(a2);
          MIL::Builder::OperationBuilder::AddOutput();
          if (v42)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v42);
          }

          if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v41.__r_.__value_.__l.__data_);
          }

          v48.__r_.__value_.__r.__words[0] = &v50;
          std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v48);
          if (*(v10 + 39) < 0)
          {
            std::string::__init_copy_ctor_external(&v39, v10[2], v10[3]);
          }

          else
          {
            v39 = *(v10 + 2);
          }

          v32 = v10[6];
          v37 = v10[5];
          v38 = v32;
          if (v32)
          {
            atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          MIL::Builder::OperationBuilder::SetAttribute();
          if (v40)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v40);
          }

          if (v38)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v38);
          }

          if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v39.__r_.__value_.__l.__data_);
          }

          *a3 = 0;
          std::string::basic_string[abi:ne200100]<0>((a3 + 8), &unk_259A4D977);
          if (v49.__r_.__value_.__l.__size_)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v49.__r_.__value_.__l.__size_);
          }

          goto LABEL_58;
        }

        *a3 = 4;
        v33 = a3 + 8;
        Location = MIL::IRObject::GetLocation(a2);
        (*(*Location + 24))(&v50);
        v35 = std::string::insert(&v50, 0, "DTypes not compatible with live tensors are not implemented in ANEFlow const. Violation at ");
        v36 = *&v35->__r_.__value_.__l.__data_;
        *(v33 + 16) = *(&v35->__r_.__value_.__l + 2);
        *v33 = v36;
        v35->__r_.__value_.__l.__size_ = 0;
        v35->__r_.__value_.__r.__words[2] = 0;
        v35->__r_.__value_.__r.__words[0] = 0;
        if ((SHIBYTE(v50.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_58:
          std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>>>::~__hash_table(&v51);
          return;
        }

        v31 = v50.__r_.__value_.__r.__words[0];
LABEL_38:
        operator delete(v31);
        goto LABEL_58;
      }

      *a3 = 4;
      v16 = a3 + 8;
      std::string::basic_string[abi:ne200100]<0>(&v48, "val");
      v24 = std::string::insert(&v48, 0, "Only tensors are handled for const attribute ");
      v25 = *&v24->__r_.__value_.__l.__data_;
      v49.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
      *&v49.__r_.__value_.__l.__data_ = v25;
      v24->__r_.__value_.__l.__size_ = 0;
      v24->__r_.__value_.__r.__words[2] = 0;
      v24->__r_.__value_.__r.__words[0] = 0;
      v26 = std::string::append(&v49, ". Violated at ");
      v27 = *&v26->__r_.__value_.__l.__data_;
      v50.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
      *&v50.__r_.__value_.__l.__data_ = v27;
      v26->__r_.__value_.__l.__size_ = 0;
      v26->__r_.__value_.__r.__words[2] = 0;
      v26->__r_.__value_.__r.__words[0] = 0;
      v28 = MIL::IRObject::GetLocation(a2);
      (*(*v28 + 24))(&v45);
      if ((v47 & 0x80u) == 0)
      {
        v22 = &v45;
      }

      else
      {
        v22 = v45;
      }

      if ((v47 & 0x80u) == 0)
      {
        v23 = v47;
      }

      else
      {
        v23 = v46;
      }
    }

    else
    {
      *a3 = 4;
      v16 = a3 + 8;
      std::string::basic_string[abi:ne200100]<0>(&v48, "val");
      v17 = std::string::insert(&v48, 0, "Const expected to have exactly one bound attribute named ");
      v18 = *&v17->__r_.__value_.__l.__data_;
      v49.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
      *&v49.__r_.__value_.__l.__data_ = v18;
      v17->__r_.__value_.__l.__size_ = 0;
      v17->__r_.__value_.__r.__words[2] = 0;
      v17->__r_.__value_.__r.__words[0] = 0;
      v19 = std::string::append(&v49, ". Violated at ");
      v20 = *&v19->__r_.__value_.__l.__data_;
      v50.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
      *&v50.__r_.__value_.__l.__data_ = v20;
      v19->__r_.__value_.__l.__size_ = 0;
      v19->__r_.__value_.__r.__words[2] = 0;
      v19->__r_.__value_.__r.__words[0] = 0;
      v21 = MIL::IRObject::GetLocation(a2);
      (*(*v21 + 24))(&v45);
      if ((v47 & 0x80u) == 0)
      {
        v22 = &v45;
      }

      else
      {
        v22 = v45;
      }

      if ((v47 & 0x80u) == 0)
      {
        v23 = v47;
      }

      else
      {
        v23 = v46;
      }
    }

    v29 = std::string::append(&v50, v22, v23);
    v30 = *&v29->__r_.__value_.__l.__data_;
    *(v16 + 16) = *(&v29->__r_.__value_.__l + 2);
    *v16 = v30;
    v29->__r_.__value_.__l.__size_ = 0;
    v29->__r_.__value_.__r.__words[2] = 0;
    v29->__r_.__value_.__r.__words[0] = 0;
    if (v47 < 0)
    {
      operator delete(v45);
    }

    if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v50.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v49.__r_.__value_.__l.__data_);
    }

    if ((SHIBYTE(v48.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_58;
    }

    v31 = v48.__r_.__value_.__r.__words[0];
    goto LABEL_38;
  }

  *a3 = 4;
  v6 = MIL::IRObject::GetLocation(a2);
  (*(*v6 + 24))(&v51);
  v7 = std::string::insert(&v51, 0, "Const not expected to have bound parameters. Violated at ");
  v8 = *&v7->__r_.__value_.__l.__data_;
  *(a3 + 24) = *(&v7->__r_.__value_.__l + 2);
  *(a3 + 8) = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v51.__r_.__value_.__l.__data_);
  }
}

void sub_2599D6F48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  if (*(v45 - 89) < 0)
  {
    operator delete(*(v45 - 112));
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>>>::~__hash_table(v45 - 88);
  _Unwind_Resume(a1);
}

void sub_2599D7078()
{
  if (*(v0 - 65) < 0)
  {
    operator delete(*(v0 - 88));
  }

  JUMPOUT(0x2599D7070);
}

uint64_t std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::shared_ptr<MIL::IRValue const>> const&>(a1, i + 2);
  }

  return a1;
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::shared_ptr<MIL::IRValue const>> const&>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__construct_node_hash<std::pair<std::string const,std::shared_ptr<MIL::IRValue const>> const&>();
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

void sub_2599D7350(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

std::string *std::pair<std::string const,std::shared_ptr<MIL::IRValue const>>::pair[abi:ne200100](std::string *this, __int128 *a2)
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

_BYTE *MIL::ANEMachineIR::Interpreter::ReshapeCpu::Run@<X0>(MIL::IROperation *a1@<X1>, void *a2@<X2>, uint64_t a3@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(&__src, "x");
  v55 = a2;
  InterpretedTensorValue = MIL::ANEMachineIR::Interpreter::TryGetInterpretedTensorValue(a2, a1, &__src);
  v7 = InterpretedTensorValue;
  if ((SHIBYTE(v60) & 0x80000000) == 0)
  {
    if (InterpretedTensorValue)
    {
      goto LABEL_3;
    }

LABEL_24:
    v27 = "Value is not a tensor.";
    goto LABEL_26;
  }

  operator delete(__src);
  if (!v7)
  {
    goto LABEL_24;
  }

LABEL_3:
  OutputType = MIL::IROperation::GetOutputType(a1);
  v9 = (*(*OutputType + 24))(OutputType);
  if (!v9)
  {
    v27 = "Output type is not a tensor.";
    goto LABEL_26;
  }

  v11 = v9;
  NumberOfElementsFromStaticTensorShape = ANEMachineIR::Utils::GetNumberOfElementsFromStaticTensorShape(v9, v10);
  if ((*(*v11 + 88))(v11) != 4)
  {
    if ((*(*v11 + 88))(v11) == 14)
    {
      Data = MIL::IRTensorValue::GetDataView<unsigned char>();
      v57 = v29;
      v59 = 0;
      v60 = 0;
      __src = 0;
      std::vector<unsigned char>::reserve(&__src, NumberOfElementsFromStaticTensorShape);
      if (NumberOfElementsFromStaticTensorShape)
      {
        for (i = 0; i != NumberOfElementsFromStaticTensorShape; ++i)
        {
          v31 = MIL::Util::Span<unsigned char const,18446744073709551615ul>::At(&Data, i);
          v32 = v59;
          if (v59 >= v60)
          {
            v34 = __src;
            v35 = (v59 - __src);
            v36 = v59 - __src + 1;
            if (v36 < 0)
            {
              std::vector<MIL::Fp16>::__throw_length_error[abi:ne200100]();
            }

            v37 = v60 - __src;
            if (2 * (v60 - __src) > v36)
            {
              v36 = 2 * v37;
            }

            if (v37 >= 0x3FFFFFFFFFFFFFFFLL)
            {
              v38 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v38 = v36;
            }

            if (v38)
            {
              operator new();
            }

            v39 = v59 - __src;
            *v35 = *v31;
            v33 = v35 + 1;
            memcpy(0, v34, v39);
            __src = 0;
            v59 = v35 + 1;
            v60 = 0;
            if (v34)
            {
              operator delete(v34);
            }
          }

          else
          {
            *v59 = *v31;
            v33 = v32 + 1;
          }

          v59 = v33;
        }
      }

      (*(*a1 + 200))(&Data, a1);
      v40 = Data;
      if (v57 == Data)
      {
        std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
      }

      MIL::IRTensorValueType::MakeUInt8Value();
      MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(v55, v40, &p_Data);
      goto LABEL_63;
    }

    if ((*(*v11 + 88))(v11) == 9)
    {
      Data = MIL::IRTensorValue::GetDataView<signed char>();
      v57 = v41;
      v59 = 0;
      v60 = 0;
      __src = 0;
      std::vector<unsigned char>::reserve(&__src, NumberOfElementsFromStaticTensorShape);
      if (NumberOfElementsFromStaticTensorShape)
      {
        for (j = 0; j != NumberOfElementsFromStaticTensorShape; ++j)
        {
          v43 = MIL::Util::Span<signed char const,18446744073709551615ul>::At(&Data, j);
          v44 = v59;
          if (v59 >= v60)
          {
            v46 = __src;
            v47 = (v59 - __src);
            v48 = v59 - __src + 1;
            if (v48 < 0)
            {
              std::vector<MIL::Fp16>::__throw_length_error[abi:ne200100]();
            }

            v49 = v60 - __src;
            if (2 * (v60 - __src) > v48)
            {
              v48 = 2 * v49;
            }

            if (v49 >= 0x3FFFFFFFFFFFFFFFLL)
            {
              v50 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v50 = v48;
            }

            if (v50)
            {
              operator new();
            }

            v51 = v59 - __src;
            *v47 = *v43;
            v45 = v47 + 1;
            memcpy(0, v46, v51);
            __src = 0;
            v59 = v47 + 1;
            v60 = 0;
            if (v46)
            {
              operator delete(v46);
            }
          }

          else
          {
            *v59 = *v43;
            v45 = v44 + 1;
          }

          v59 = v45;
        }
      }

      (*(*a1 + 200))(&Data, a1);
      v52 = Data;
      if (v57 == Data)
      {
        std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
      }

      MIL::IRTensorValueType::MakeInt8Value();
      MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(v55, v52, &p_Data);
      goto LABEL_63;
    }

    v27 = "Unsupported dtype.";
LABEL_26:
    v28 = 3;
    goto LABEL_68;
  }

  Data = MIL::IRTensorValue::GetDataView<MIL::Fp16>();
  v57 = v13;
  v59 = 0;
  v60 = 0;
  __src = 0;
  std::vector<MIL::Fp16>::reserve(&__src, NumberOfElementsFromStaticTensorShape);
  if (NumberOfElementsFromStaticTensorShape)
  {
    for (k = 0; k != NumberOfElementsFromStaticTensorShape; ++k)
    {
      v15 = MIL::Util::Span<MIL::Fp16 const,18446744073709551615ul>::At(&Data, k);
      v16 = v59;
      if (v59 >= v60)
      {
        v18 = __src;
        v19 = v59 - __src;
        v20 = (v59 - __src) >> 1;
        if (v20 <= -2)
        {
          std::vector<MIL::Fp16>::__throw_length_error[abi:ne200100]();
        }

        if (v60 - __src <= v20 + 1)
        {
          v21 = v20 + 1;
        }

        else
        {
          v21 = v60 - __src;
        }

        if (v60 - __src >= 0x7FFFFFFFFFFFFFFELL)
        {
          v22 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v22 = v21;
        }

        if (v22)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<MIL::Fp16>>(&__src, v22);
        }

        v23 = (2 * v20);
        v24 = &v23[-((v59 - __src) >> 1)];
        *v23 = *v15;
        v17 = v23 + 1;
        memcpy(v24, v18, v19);
        v25 = __src;
        __src = v24;
        v59 = v17;
        v60 = 0;
        if (v25)
        {
          operator delete(v25);
        }
      }

      else
      {
        *v59 = *v15;
        v17 = v16 + 2;
      }

      v59 = v17;
    }
  }

  (*(*a1 + 200))(&Data, a1);
  v26 = Data;
  if (v57 == Data)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  MIL::IRTensorValueType::MakeFloat16Value();
  MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(v55, v26, &p_Data);
LABEL_63:
  v53 = p_Data;
  p_Data = 0;
  if (v53)
  {
    (*(*v53 + 1))(v53);
  }

  p_Data = &Data;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&p_Data);
  if (__src)
  {
    v59 = __src;
    operator delete(__src);
  }

  v28 = 0;
  v27 = &unk_259A4D977;
LABEL_68:
  *a3 = v28;
  return std::string::basic_string[abi:ne200100]<0>((a3 + 8), v27);
}

void sub_2599D7A60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char *a19)
{
  v20 = a19;
  a19 = 0;
  if (v20)
  {
    MIL::ANEMachineIR::Interpreter::TransposeCpu::Run(v20);
  }

  a19 = &a10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a19);
  if (__p)
  {
    a14 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

unint64_t MIL::Util::Span<unsigned char const,18446744073709551615ul>::At(void *a1, unint64_t a2)
{
  if (a1[1] <= a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::range_error::range_error[abi:ne200100](exception, "index out of bounds");
    __cxa_throw(exception, off_2798E3508, MEMORY[0x277D825E0]);
  }

  return *a1 + a2;
}

unint64_t MIL::Util::Span<signed char const,18446744073709551615ul>::At(void *a1, unint64_t a2)
{
  if (a1[1] <= a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::range_error::range_error[abi:ne200100](exception, "index out of bounds");
    __cxa_throw(exception, off_2798E3508, MEMORY[0x277D825E0]);
  }

  return *a1 + a2;
}

void MIL::ANEMachineIR::Interpreter::PeAvgPoolCpu::Run(MIL::IROperation *a1@<X1>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v138 = *MEMORY[0x277D85DE8];
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

  if (*v6 != 0x705F6776615F6570 || *(v6 + 3) != 0x6C6F6F705F677661)
  {
LABEL_10:
    *a3 = 1;
    v9 = a3 + 8;
    std::string::basic_string[abi:ne200100]<0>(&v126, "pe_avg_pool");
    v10 = std::string::insert(&v126, 0, "Expected '");
    v11 = *&v10->__r_.__value_.__l.__data_;
    v137.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
    *&v137.__r_.__value_.__l.__data_ = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    v12 = std::string::append(&v137, "' op. Got ");
    v13 = *&v12->__r_.__value_.__l.__data_;
    v114.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
    *&v114.__r_.__value_.__l.__data_ = v13;
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

    v18 = std::string::append(&v114, v16, v17);
    v19 = *&v18->__r_.__value_.__l.__data_;
    *(v9 + 16) = *(&v18->__r_.__value_.__l + 2);
    *v9 = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v114.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v114.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v137.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v137.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v126.__r_.__value_.__r.__words[2]) < 0)
    {
      v20 = v126.__r_.__value_.__r.__words[0];
LABEL_22:
      operator delete(v20);
      goto LABEL_23;
    }

    goto LABEL_23;
  }

  std::string::basic_string[abi:ne200100]<0>(&v114, "x");
  InterpretedTensorValue = MIL::ANEMachineIR::Interpreter::TryGetInterpretedTensorValue(a2, a1, &v114);
  v23 = InterpretedTensorValue;
  if ((SHIBYTE(v114.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (InterpretedTensorValue)
    {
      goto LABEL_26;
    }

LABEL_62:
    *a3 = 2;
    std::string::basic_string[abi:ne200100]<0>(&v114, "x");
    v61 = std::string::insert(&v114, 0, "No value for ");
    v62 = *&v61->__r_.__value_.__l.__data_;
    *(a3 + 24) = *(&v61->__r_.__value_.__l + 2);
    *(a3 + 8) = v62;
    v61->__r_.__value_.__l.__size_ = 0;
    v61->__r_.__value_.__r.__words[2] = 0;
    v61->__r_.__value_.__r.__words[0] = 0;
    if ((SHIBYTE(v114.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_23;
    }

    v20 = v114.__r_.__value_.__r.__words[0];
    goto LABEL_22;
  }

  operator delete(v114.__r_.__value_.__l.__data_);
  if (!v23)
  {
    goto LABEL_62;
  }

LABEL_26:
  std::string::basic_string[abi:ne200100]<0>(&v114, "kernel_sizes");
  ParameterValue = MIL::IROperation::GetParameterValue();
  MIL::IRValue::AsTensor(ParameterValue);
  Data = MIL::IRTensorValue::GetDataView<int>();
  v125 = v25;
  if (SHIBYTE(v114.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v114.__r_.__value_.__l.__data_);
    v25 = v125;
  }

  std::vector<int>::vector[abi:ne200100](&v126, v25);
  if (v126.__r_.__value_.__l.__size_ != v126.__r_.__value_.__r.__words[0])
  {
    v26 = 0;
    do
    {
      v27 = MIL::Util::Span<int const,18446744073709551615ul>::At(&Data, v26);
      v28 = v126.__r_.__value_.__r.__words[0];
      *(v126.__r_.__value_.__r.__words[0] + 4 * v26++) = *v27;
    }

    while (v26 < (v126.__r_.__value_.__l.__size_ - v28) >> 2);
  }

  std::string::basic_string[abi:ne200100]<0>(&v114, "strides");
  v29 = MIL::IROperation::GetParameterValue();
  MIL::IRValue::AsTensor(v29);
  v122 = MIL::IRTensorValue::GetDataView<int>();
  v123 = v30;
  if (SHIBYTE(v114.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v114.__r_.__value_.__l.__data_);
    v30 = v123;
  }

  std::vector<int>::vector[abi:ne200100](&v120, v30);
  if (v121 != v120)
  {
    v31 = 0;
    do
    {
      v32 = MIL::Util::Span<int const,18446744073709551615ul>::At(&v122, v31);
      v33 = v120;
      *(v120 + v31++) = *v32;
    }

    while (v31 < (v121 - v33) >> 2);
  }

  v34 = std::string::basic_string[abi:ne200100]<0>(&v114, "post_scale");
  v110 = MIL::Fp16::FromFloat(v34, 1.0);
  v35 = MIL::IROperation::TryGetParameterValue();
  if (v35)
  {
    if ((*(*v35 + 40))(v35))
    {
      v36 = MEMORY[0x259CA93C0]();
      if (v36)
      {
        v110 = *v36;
      }
    }
  }

  if (SHIBYTE(v114.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v114.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v114, "custom_pads");
  v37 = MIL::IROperation::TryGetParameterValue();
  if (SHIBYTE(v114.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v114.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v114, "include_pads");
  v38 = MIL::IROperation::TryGetParameterValue();
  if (v38 && (*(*v38 + 40))(v38) && (v39 = MEMORY[0x259CA93F0]()) != 0)
  {
    v107 = *v39;
  }

  else
  {
    v107 = 0;
  }

  if (SHIBYTE(v114.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v114.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v114, "pre_relu");
  v40 = MIL::IROperation::TryGetParameterValue();
  if (v40 && (*(*v40 + 40))(v40) && (v41 = MEMORY[0x259CA93F0]()) != 0)
  {
    v105 = *v41;
  }

  else
  {
    v105 = 0;
  }

  if (SHIBYTE(v114.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v114.__r_.__value_.__l.__data_);
  }

  v42 = (*(*v23 + 32))(v23);
  v43 = (*(*v42 + 88))(v42);
  OutputType = MIL::IROperation::GetOutputType(a1);
  v45 = MIL::IRValueType::AsTensorType(OutputType);
  v109 = (*(*v45 + 88))(v45);
  v46 = MIL::IROperation::GetOutputType(a1);
  v47 = MIL::IRValueType::AsTensorType(v46);
  v106 = (*(*v47 + 16))(v47);
  v48 = (*(*v23 + 32))(v23);
  ANEMachineIR::Utils::GetStaticTensorShape(v48, v49, &v118);
  v108 = a2;
  v50 = MIL::IROperation::GetOutputType(a1);
  v51 = MIL::IRValueType::AsTensorType(v50);
  ANEMachineIR::Utils::GetStaticTensorShape(v51, v52, v117);
  v53 = v43;
  if (v37)
  {
    v55 = v118;
    v54 = v119;
    MIL::IRValue::AsTensor(v37);
    v56 = MIL::IRTensorValue::GetDataView<int>();
    v57 = (v54 - v55) >> 3;
    v58 = v57 - 2;
    v114.__r_.__value_.__r.__words[0] = v56;
    v114.__r_.__value_.__l.__size_ = v59;
    if (v57 == 5)
    {
      v37 = *MIL::Util::Span<int const,18446744073709551615ul>::At(&v114, 0);
      v60 = *MIL::Util::Span<int const,18446744073709551615ul>::At(&v114, 1uLL);
    }

    else
    {
      if (v58 <= 1)
      {
        v37 = 0;
        v60 = 0;
        v65 = 0;
        v66 = 0;
        v67 = 2 * v58;
        goto LABEL_69;
      }

      v37 = 0;
      v60 = 0;
    }

    v67 = 2 * v58;
    v66 = *MIL::Util::Span<int const,18446744073709551615ul>::At(&v114, v67 - 4);
    v65 = *MIL::Util::Span<int const,18446744073709551615ul>::At(&v114, v67 - 3);
LABEL_69:
    v64 = *MIL::Util::Span<int const,18446744073709551615ul>::At(&v114, v67 - 2);
    v63 = *MIL::Util::Span<int const,18446744073709551615ul>::At(&v114, v67 - 1);
    goto LABEL_70;
  }

  v63 = 0;
  v64 = 0;
  v65 = 0;
  v66 = 0;
  v60 = 0;
LABEL_70:
  v116[0] = v37;
  v116[1] = v60;
  v116[2] = v66;
  v116[3] = v65;
  v116[4] = v64;
  v116[5] = v63;
  if (v37 || v60 || v66 || v65 || v64 || v63)
  {
    *a3 = 3;
    std::string::basic_string[abi:ne200100]<0>((a3 + 8), "Unimplemented pad: rdar://84906152");
    goto LABEL_133;
  }

  *&v114.__r_.__value_.__r.__words[1] = 0uLL;
  v115 = 0;
  MIL::ANEMachineIR::Interpreter::GetCpuNeActivationFunction(a1, &v114, &v137);
  if (LODWORD(v114.__r_.__value_.__l.__data_))
  {
    *a3 = v114.__r_.__value_.__l.__data_;
    *(a3 + 8) = *&v114.__r_.__value_.__r.__words[1];
    *(a3 + 24) = v115;
    *&v114.__r_.__value_.__r.__words[1] = 0uLL;
    v115 = 0;
    goto LABEL_131;
  }

  switch(v53)
  {
    case 14:
      switch(v109)
      {
        case 14:
          v97 = MIL::IRTensorValue::GetDataView<unsigned char>();
          std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v132, &v137);
          std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v132);
          (*(*a1 + 200))(&v111, a1);
          v98 = v111;
          if (v112 == v111)
          {
            std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
          }

          v99 = MIL::IROperation::GetOutputType(a1);
          MIL::IRValueType::AsTensorType(v99);
          MIL::IRTensorValueType::MakeUInt8Value();
          MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(v108, v98, &v127);
          v100 = v127;
          v127 = 0;
          if (v100)
          {
            (*(*v100 + 1))(v100);
          }

          goto LABEL_129;
        case 9:
          v89 = MIL::IRTensorValue::GetDataView<unsigned char>();
          std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v131, &v137);
          std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v131);
          (*(*a1 + 200))(&v111, a1);
          v90 = v111;
          if (v112 == v111)
          {
            std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
          }

          v91 = MIL::IROperation::GetOutputType(a1);
          MIL::IRValueType::AsTensorType(v91);
          MIL::IRTensorValueType::MakeInt8Value();
          MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(v108, v90, &v127);
          v92 = v127;
          v127 = 0;
          if (v92)
          {
            (*(*v92 + 1))(v92);
          }

          goto LABEL_129;
        case 4:
          v76 = MIL::IRTensorValue::GetDataView<unsigned char>();
          std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v133, &v137);
          std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v133);
          (*(*a1 + 200))(&v111, a1);
          v77 = v111;
          if (v112 == v111)
          {
            std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
          }

          v78 = MIL::IROperation::GetOutputType(a1);
          MIL::IRValueType::AsTensorType(v78);
          MIL::IRTensorValueType::MakeFloat16Value();
          MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(v108, v77, &v127);
          v79 = v127;
          v127 = 0;
          if (v79)
          {
            (*(*v79 + 1))(v79);
          }

          goto LABEL_129;
      }

LABEL_104:
      v80 = "Unimplemented output dtype";
      goto LABEL_105;
    case 9:
      switch(v109)
      {
        case 14:
          v85 = MIL::IRTensorValue::GetDataView<signed char>();
          std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v129, &v137);
          std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v129);
          (*(*a1 + 200))(&v111, a1);
          v86 = v111;
          if (v112 == v111)
          {
            std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
          }

          v87 = MIL::IROperation::GetOutputType(a1);
          MIL::IRValueType::AsTensorType(v87);
          MIL::IRTensorValueType::MakeUInt8Value();
          MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(v108, v86, &v127);
          v88 = v127;
          v127 = 0;
          if (v88)
          {
            (*(*v88 + 1))(v88);
          }

          goto LABEL_129;
        case 9:
          v81 = MIL::IRTensorValue::GetDataView<signed char>();
          std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v128, &v137);
          std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v128);
          (*(*a1 + 200))(&v111, a1);
          v82 = v111;
          if (v112 == v111)
          {
            std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
          }

          v83 = MIL::IROperation::GetOutputType(a1);
          MIL::IRValueType::AsTensorType(v83);
          MIL::IRTensorValueType::MakeInt8Value();
          MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(v108, v82, &v127);
          v84 = v127;
          v127 = 0;
          if (v84)
          {
            (*(*v84 + 1))(v84);
          }

          goto LABEL_129;
        case 4:
          v72 = MIL::IRTensorValue::GetDataView<signed char>();
          std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v130, &v137);
          std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v130);
          (*(*a1 + 200))(&v111, a1);
          v73 = v111;
          if (v112 == v111)
          {
            std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
          }

          v74 = MIL::IROperation::GetOutputType(a1);
          MIL::IRValueType::AsTensorType(v74);
          MIL::IRTensorValueType::MakeFloat16Value();
          MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(v108, v73, &v127);
          v75 = v127;
          v127 = 0;
          if (v75)
          {
            (*(*v75 + 1))(v75);
          }

          goto LABEL_129;
      }

      goto LABEL_104;
    case 4:
      switch(v109)
      {
        case 14:
          v101 = MIL::IRTensorValue::GetDataView<MIL::Fp16>();
          std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v135, &v137);
          std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v135);
          (*(*a1 + 200))(&v111, a1);
          v102 = v111;
          if (v112 == v111)
          {
            std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
          }

          v103 = MIL::IROperation::GetOutputType(a1);
          MIL::IRValueType::AsTensorType(v103);
          MIL::IRTensorValueType::MakeUInt8Value();
          MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(v108, v102, &v127);
          v104 = v127;
          v127 = 0;
          if (v104)
          {
            (*(*v104 + 1))(v104);
          }

          goto LABEL_129;
        case 9:
          v93 = MIL::IRTensorValue::GetDataView<MIL::Fp16>();
          std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v134, &v137);
          std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v134);
          (*(*a1 + 200))(&v111, a1);
          v94 = v111;
          if (v112 == v111)
          {
            std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
          }

          v95 = MIL::IROperation::GetOutputType(a1);
          MIL::IRValueType::AsTensorType(v95);
          MIL::IRTensorValueType::MakeInt8Value();
          MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(v108, v94, &v127);
          v96 = v127;
          v127 = 0;
          if (v96)
          {
            (*(*v96 + 1))(v96);
          }

          goto LABEL_129;
        case 4:
          v68 = MIL::IRTensorValue::GetDataView<MIL::Fp16>();
          std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v136, &v137);
          std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v136);
          (*(*a1 + 200))(&v111, a1);
          v69 = v111;
          if (v112 == v111)
          {
            std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
          }

          v70 = MIL::IROperation::GetOutputType(a1);
          MIL::IRValueType::AsTensorType(v70);
          MIL::IRTensorValueType::MakeFloat16Value();
          MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(v108, v69, &v127);
          v71 = v127;
          v127 = 0;
          if (v71)
          {
            (*(*v71 + 1))(v71);
          }

LABEL_129:
          v127 = &v111;
          std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v127);
          *a3 = 0;
          std::string::basic_string[abi:ne200100]<0>((a3 + 8), &unk_259A4D977);
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

          goto LABEL_131;
      }

      goto LABEL_104;
  }

  v80 = "Unimplemented input dtype";
LABEL_105:
  *a3 = 3;
  std::string::basic_string[abi:ne200100]<0>((a3 + 8), v80);
LABEL_131:
  std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](&v137);
  if (SHIBYTE(v115) < 0)
  {
    operator delete(v114.__r_.__value_.__l.__size_);
  }

LABEL_133:
  if (v117[0])
  {
    v117[1] = v117[0];
    operator delete(v117[0]);
  }

  if (v118)
  {
    v119 = v118;
    operator delete(v118);
  }

  if (v120)
  {
    v121 = v120;
    operator delete(v120);
  }

  v20 = v126.__r_.__value_.__r.__words[0];
  if (v126.__r_.__value_.__r.__words[0])
  {
    v126.__r_.__value_.__l.__size_ = v126.__r_.__value_.__r.__words[0];
    goto LABEL_22;
  }

LABEL_23:
  v21 = *MEMORY[0x277D85DE8];
}

void sub_2599D8F64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, void *a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *a46)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v46 - 128);
  if (a29 < 0)
  {
    operator delete(a24);
  }

  if (a33)
  {
    operator delete(a33);
  }

  if (a36)
  {
    operator delete(a36);
  }

  if (a39)
  {
    operator delete(a39);
  }

  if (a46)
  {
    operator delete(a46);
  }

  _Unwind_Resume(a1);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValueAvgPool<MIL::Fp16,MIL::Fp16>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, __int16 a8@<W7>, void *a9@<X8>, char a10, char a11, uint64_t a12)
{
  v125 = *MEMORY[0x277D85DE8];
  v119 = a8;
  a9[1] = 0;
  a9[2] = 0;
  *a9 = 0;
  std::vector<MIL::Fp16>::resize(a9, a2);
  v17 = *a3;
  v18 = a3[1];
  v19 = v18 - *a3;
  if (v19 != a4[1] - *a4)
  {
    v88 = "x_rank == o_shape.size()";
    v89 = 64;
    goto LABEL_81;
  }

  v20 = v19 >> 3;
  v21 = (v19 >> 3) - 2;
  v22 = *a5;
  if (v21 != (*(a5 + 8) - *a5) >> 2)
  {
    v88 = "kernel_sizes.size() == num_spatial_dims";
    v89 = 65;
    goto LABEL_81;
  }

  v23 = *a6;
  if (v21 != (*(a6 + 8) - *a6) >> 2)
  {
    v88 = "strides.size() == num_spatial_dims";
    v89 = 66;
LABEL_81:
    __assert_rtn("ComputeValueAvgPool", "PePoolCpu.cpp", v89, v88);
  }

  if (v21 == 3)
  {
    if (*v22 == 1)
    {
      if (*v23 == 1)
      {
        v24 = 4 * v20 - 12;
        v25 = (v23 + v24);
        v94 = v23[v20 - 4];
        v26 = (v22 + v24);
        v27 = v22[v20 - 4];
        goto LABEL_11;
      }

      v90 = "sz == 1";
      v91 = 77;
    }

    else
    {
      v90 = "kd == 1";
      v91 = 76;
    }

    __assert_rtn("ComputeValueAvgPool", "PePoolCpu.cpp", v91, v90);
  }

  v28 = 4 * v20;
  if (v21 <= 1)
  {
    v30 = v28 - 12;
    v26 = (v22 + v30);
    v25 = (v23 + v30);
    v27 = 1;
    v94 = 1;
  }

  else
  {
    v27 = v22[v20 - 4];
    v29 = v28 - 12;
    v26 = (v22 + v29);
    v94 = v23[v20 - 4];
    v25 = (v23 + v29);
  }

LABEL_11:
  v96 = *v25;
  v31 = *v26;
  v116 = 0;
  v117 = 0;
  v118 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v116, v17, v18, v20);
  __p = 0;
  v114 = 0;
  v115 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&__p, *a4, a4[1], (a4[1] - *a4) >> 3);
  if (v20 == 3)
  {
    __src = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v116, v116 + 8, __src.i8, v123, 2);
    __src = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&__p, __p + 8, __src.i8, v123, 2);
  }

  else if (v20 == 4)
  {
    __src.i64[0] = 1;
    std::vector<unsigned long long>::insert(&v116, v116 + 8, &__src);
    __src.i64[0] = 1;
    std::vector<unsigned long long>::insert(&__p, __p + 8, &__src);
  }

  v32 = *__p;
  v33 = *(__p + 1);
  v95 = *(__p + 2);
  v97 = *(__p + 3);
  v100 = *(__p + 4);
  v102 = *(v116 + 2);
  v106 = *(v116 + 3);
  v121[0] = &unk_286AB2120;
  v121[3] = v121;
  if (a11)
  {
    __src.i64[0] = &unk_286AB21A0;
    p_src = &__src;
    std::__function::__value_func<MIL::Fp16 ()(MIL::Fp16)>::swap[abi:ne200100](&__src, v121);
    std::__function::__value_func<MIL::Fp16 ()(MIL::Fp16)>::~__value_func[abi:ne200100](&__src);
  }

  MIL::Fp16::GetFloat(&v119);
  LODWORD(v111) = v34;
  std::vector<float>::vector[abi:ne200100](&__src, v100);
  if (v32)
  {
    v108 = 0;
    v103 = v31;
    v104 = v27;
    v92 = v32;
    v93 = v33;
    do
    {
      if (!v33)
      {
        goto LABEL_70;
      }

      v35 = 0;
      do
      {
        if (!v95)
        {
          goto LABEL_69;
        }

        for (i = 0; i != v95; ++i)
        {
          if (!v97)
          {
            continue;
          }

          v101 = 0;
          v36 = i * v94;
          v105 = 0;
          do
          {
            if (!v100)
            {
              goto LABEL_67;
            }

            for (j = 0; j != v100; ++j)
            {
              v112 = 0.0;
              v111 = xmmword_259A4D02C;
              if (!v27)
              {
                v39 = 0;
                v65 = 5.0;
                goto LABEL_57;
              }

              v38 = 0;
              v39 = 0;
              do
              {
                v40 = v38 + v36;
                if ((a10 & 1) == 0 && (v40 < *(a7 + 8) || v40 >= v102 - *(a7 + 12)))
                {
                  goto LABEL_53;
                }

                v110 = 0.0;
                *v109 = xmmword_259A4D02C;
                if (v31)
                {
                  v41 = v31;
                  v42 = a7;
                  v43 = v109;
                  v44 = v105;
                  v45 = v41;
                  do
                  {
                    if ((a10 & 1) != 0 || v44 >= *(v42 + 16) && v44 < v106 - *(v42 + 20))
                    {
                      LOWORD(__e) = std::function<MIL::Fp16 ()(MIL::Fp16)>::operator()(v121, *(a1 + 2 * Index));
                      MIL::Fp16::GetFloat(&__e);
                      v48 = v47 * *(__src.i64[0] + 4 * j);
                      v49 = 0.0;
                      if (v48 != 0.0)
                      {
                        __e = 0;
                        v50 = frexp(v48, &__e);
                        v51 = ldexp(v50, 11);
                        v49 = ldexp(round(v51), __e - 11);
                      }

                      *v43 = v49;
                      ++v39;
                    }

                    ++v44;
                    ++v43;
                    --v45;
                  }

                  while (v45);
                  v52 = *v109 + *&v109[1];
                  v53 = 0.0;
                  a7 = v42;
                  v31 = v103;
                  v27 = v104;
                  v36 = i * v94;
                  if ((*v109 + *&v109[1]) == 0.0)
                  {
                    goto LABEL_46;
                  }
                }

                else
                {
                  v52 = 5.0;
                }

                __e = 0;
                v54 = frexp(v52, &__e);
                v55 = ldexp(v54, 11);
                v53 = ldexp(round(v55), __e - 11);
LABEL_46:
                v56 = 0.0;
                v57 = 0.0;
                if ((v53 + *&v109[2]) != 0.0)
                {
                  __e = 0;
                  v58 = frexp((v53 + *&v109[2]), &__e);
                  v59 = ldexp(v58, 11);
                  v57 = ldexp(round(v59), __e - 11);
                }

                if ((*&v109[3] + v110) != 0.0)
                {
                  __e = 0;
                  v60 = frexp((*&v109[3] + v110), &__e);
                  v61 = ldexp(v60, 11);
                  v56 = ldexp(round(v61), __e - 11);
                }

                v62 = 0.0;
                if ((v57 + v56) != 0.0)
                {
                  __e = 0;
                  v63 = frexp((v57 + v56), &__e);
                  v64 = ldexp(v63, 11);
                  v62 = ldexp(round(v64), __e - 11);
                }

                *(&v111 + v38) = v62;
LABEL_53:
                ++v38;
              }

              while (v38 != v27);
              v65 = *&v111 + *(&v111 + 1);
              v66 = 0.0;
              if ((*&v111 + *(&v111 + 1)) != 0.0)
              {
LABEL_57:
                v109[0] = 0;
                v67 = frexp(v65, v109);
                v68 = ldexp(v67, 11);
                v66 = ldexp(round(v68), v109[0] - 11);
              }

              v69 = 0.0;
              v70 = 0.0;
              if ((v66 + *(&v111 + 2)) != 0.0)
              {
                v109[0] = 0;
                v71 = frexp((v66 + *(&v111 + 2)), v109);
                v72 = ldexp(v71, 11);
                v70 = ldexp(round(v72), v109[0] - 11);
              }

              if ((*(&v111 + 3) + v112) != 0.0)
              {
                v109[0] = 0;
                v73 = frexp((*(&v111 + 3) + v112), v109);
                v74 = ldexp(v73, 11);
                v69 = ldexp(round(v74), v109[0] - 11);
              }

              v75 = v70 + v69;
              v76 = 0.0;
              if (v75 != 0.0)
              {
                v109[0] = 0;
                v77 = frexp(v75, v109);
                v78 = ldexp(v77, 11);
                v76 = ldexp(round(v78), v109[0] - 11);
              }

              LOWORD(v109[0]) = MIL::ANEMachineIR::Interpreter::RecipTableRaw[v39];
              MIL::Fp16::GetFloat(v109);
              v80 = v76 * v79;
              v81 = 0.0;
              if (v80 != 0.0)
              {
                v109[0] = 0;
                v82 = frexp(v80, v109);
                v83 = ldexp(v82, 11);
                v81 = ldexp(round(v83), v109[0] - 11);
              }

              v84 = std::function<float ()(float)>::operator()(a12, v81);
              v86 = MIL::Fp16::FromFloat(v84, v85);
            }

LABEL_67:
            v105 += v96;
            ++v101;
          }

          while (v101 != v97);
        }

LABEL_69:
        ++v35;
        v33 = v93;
      }

      while (v35 != v93);
LABEL_70:
      ++v108;
    }

    while (v108 != v92);
  }

  if (__src.i64[0])
  {
    __src.i64[1] = __src.i64[0];
    operator delete(__src.i64[0]);
  }

  std::__function::__value_func<MIL::Fp16 ()(MIL::Fp16)>::~__value_func[abi:ne200100](v121);
  if (__p)
  {
    v114 = __p;
    operator delete(__p);
  }

  if (v116)
  {
    v117 = v116;
    operator delete(v116);
  }

  v87 = *MEMORY[0x277D85DE8];
}

void sub_2599D9B40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *__p, uint64_t a39)
{
  if (__p)
  {
    operator delete(__p);
  }

  v41 = *(v39 - 208);
  if (v41)
  {
    *(v39 - 200) = v41;
    operator delete(v41);
  }

  v42 = *a16;
  if (*a16)
  {
    *(a16 + 8) = v42;
    operator delete(v42);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValueAvgPool<unsigned char,MIL::Fp16>(uint64_t a1@<X0>, size_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, __int16 a8@<W7>, uint64_t a9@<X8>, char a10, char a11, uint64_t a12)
{
  v124 = *MEMORY[0x277D85DE8];
  v118 = a8;
  *(a9 + 8) = 0;
  *(a9 + 16) = 0;
  *a9 = 0;
  if (a2)
  {
    std::vector<unsigned char>::__append(a9, a2);
  }

  v17 = *a3;
  v18 = a3[1];
  v19 = v18 - *a3;
  if (v19 != a4[1] - *a4)
  {
    v87 = "x_rank == o_shape.size()";
    v88 = 64;
    goto LABEL_90;
  }

  v20 = v19 >> 3;
  v21 = (v19 >> 3) - 2;
  v22 = *a5;
  if (v21 != (*(a5 + 8) - *a5) >> 2)
  {
    v87 = "kernel_sizes.size() == num_spatial_dims";
    v88 = 65;
    goto LABEL_90;
  }

  v23 = *a6;
  if (v21 != (*(a6 + 8) - *a6) >> 2)
  {
    v87 = "strides.size() == num_spatial_dims";
    v88 = 66;
LABEL_90:
    __assert_rtn("ComputeValueAvgPool", "PePoolCpu.cpp", v88, v87);
  }

  if (v21 == 3)
  {
    if (*v22 == 1)
    {
      if (*v23 == 1)
      {
        v24 = 4 * v20 - 12;
        v25 = (v23 + v24);
        v93 = v23[v20 - 4];
        v26 = (v22 + v24);
        v27 = v22[v20 - 4];
        goto LABEL_13;
      }

      v89 = "sz == 1";
      v90 = 77;
    }

    else
    {
      v89 = "kd == 1";
      v90 = 76;
    }

    __assert_rtn("ComputeValueAvgPool", "PePoolCpu.cpp", v90, v89);
  }

  v28 = 4 * v20;
  if (v21 <= 1)
  {
    v30 = v28 - 12;
    v26 = (v22 + v30);
    v25 = (v23 + v30);
    v27 = 1;
    v93 = 1;
  }

  else
  {
    v27 = v22[v20 - 4];
    v29 = v28 - 12;
    v26 = (v22 + v29);
    v93 = v23[v20 - 4];
    v25 = (v23 + v29);
  }

LABEL_13:
  v95 = *v25;
  v31 = *v26;
  v115 = 0;
  v116 = 0;
  v117 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v115, v17, v18, v20);
  __p = 0;
  v113 = 0;
  v114 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&__p, *a4, a4[1], (a4[1] - *a4) >> 3);
  if (v20 == 3)
  {
    __src = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v115, v115 + 8, __src.i8, v122, 2);
    __src = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&__p, __p + 8, __src.i8, v122, 2);
  }

  else if (v20 == 4)
  {
    __src.i64[0] = 1;
    std::vector<unsigned long long>::insert(&v115, v115 + 8, &__src);
    __src.i64[0] = 1;
    std::vector<unsigned long long>::insert(&__p, __p + 8, &__src);
  }

  v32 = *__p;
  v33 = *(__p + 1);
  v94 = *(__p + 2);
  v96 = *(__p + 3);
  v99 = *(__p + 4);
  v101 = *(v115 + 2);
  v105 = *(v115 + 3);
  v120[0] = &unk_286AB2220;
  v120[3] = v120;
  if (a11)
  {
    __src.i64[0] = &unk_286AB22A0;
    p_src = &__src;
    std::__function::__value_func<MIL::Fp16 ()(MIL::Fp16)>::swap[abi:ne200100](&__src, v120);
    std::__function::__value_func<MIL::Fp16 ()(MIL::Fp16)>::~__value_func[abi:ne200100](&__src);
  }

  MIL::Fp16::GetFloat(&v118);
  LODWORD(v110) = v34;
  std::vector<float>::vector[abi:ne200100](&__src, v99);
  if (v32)
  {
    v107 = 0;
    v102 = v31;
    v103 = v27;
    v91 = v32;
    v92 = v33;
    do
    {
      if (!v33)
      {
        goto LABEL_79;
      }

      v35 = 0;
      do
      {
        if (!v94)
        {
          goto LABEL_78;
        }

        for (i = 0; i != v94; ++i)
        {
          if (!v96)
          {
            continue;
          }

          v100 = 0;
          v36 = i * v93;
          v104 = 0;
          do
          {
            if (!v99)
            {
              goto LABEL_76;
            }

            for (j = 0; j != v99; ++j)
            {
              v111 = 0.0;
              v110 = xmmword_259A4D02C;
              if (!v27)
              {
                v39 = 0;
                v64 = 5.0;
                goto LABEL_59;
              }

              v38 = 0;
              v39 = 0;
              do
              {
                v40 = v38 + v36;
                if ((a10 & 1) == 0 && (v40 < *(a7 + 8) || v40 >= v101 - *(a7 + 12)))
                {
                  goto LABEL_55;
                }

                v109 = 0.0;
                *v108 = xmmword_259A4D02C;
                if (v31)
                {
                  v41 = v31;
                  v42 = a7;
                  v43 = v108;
                  v44 = v104;
                  do
                  {
                    if ((a10 & 1) != 0 || v44 >= *(v42 + 16) && v44 < v105 - *(v42 + 20))
                    {
                      LOWORD(__e) = std::function<MIL::Fp16 ()(MIL::Fp16)>::operator()(v120, *(a1 + 2 * Index));
                      MIL::Fp16::GetFloat(&__e);
                      v47 = v46 * *(__src.i64[0] + 4 * j);
                      v48 = 0.0;
                      if (v47 != 0.0)
                      {
                        __e = 0;
                        v49 = frexp(v47, &__e);
                        v50 = ldexp(v49, 11);
                        v48 = ldexp(round(v50), __e - 11);
                      }

                      *v43 = v48;
                      ++v39;
                    }

                    ++v44;
                    ++v43;
                    --v41;
                  }

                  while (v41);
                  v51 = *v108 + *&v108[1];
                  v52 = 0.0;
                  a7 = v42;
                  v31 = v102;
                  v27 = v103;
                  v36 = i * v93;
                  if ((*v108 + *&v108[1]) == 0.0)
                  {
                    goto LABEL_48;
                  }
                }

                else
                {
                  v51 = 5.0;
                }

                __e = 0;
                v53 = frexp(v51, &__e);
                v54 = ldexp(v53, 11);
                v52 = ldexp(round(v54), __e - 11);
LABEL_48:
                v55 = 0.0;
                v56 = 0.0;
                if ((v52 + *&v108[2]) != 0.0)
                {
                  __e = 0;
                  v57 = frexp((v52 + *&v108[2]), &__e);
                  v58 = ldexp(v57, 11);
                  v56 = ldexp(round(v58), __e - 11);
                }

                if ((*&v108[3] + v109) != 0.0)
                {
                  __e = 0;
                  v59 = frexp((*&v108[3] + v109), &__e);
                  v60 = ldexp(v59, 11);
                  v55 = ldexp(round(v60), __e - 11);
                }

                v61 = 0.0;
                if ((v56 + v55) != 0.0)
                {
                  __e = 0;
                  v62 = frexp((v56 + v55), &__e);
                  v63 = ldexp(v62, 11);
                  v61 = ldexp(round(v63), __e - 11);
                }

                *(&v110 + v38) = v61;
LABEL_55:
                ++v38;
              }

              while (v38 != v27);
              v64 = *&v110 + *(&v110 + 1);
              v65 = 0.0;
              if ((*&v110 + *(&v110 + 1)) != 0.0)
              {
LABEL_59:
                v108[0] = 0;
                v66 = frexp(v64, v108);
                v67 = ldexp(v66, 11);
                v65 = ldexp(round(v67), v108[0] - 11);
              }

              v68 = 0.0;
              v69 = 0.0;
              if ((v65 + *(&v110 + 2)) != 0.0)
              {
                v108[0] = 0;
                v70 = frexp((v65 + *(&v110 + 2)), v108);
                v71 = ldexp(v70, 11);
                v69 = ldexp(round(v71), v108[0] - 11);
              }

              if ((*(&v110 + 3) + v111) != 0.0)
              {
                v108[0] = 0;
                v72 = frexp((*(&v110 + 3) + v111), v108);
                v73 = ldexp(v72, 11);
                v68 = ldexp(round(v73), v108[0] - 11);
              }

              v74 = v69 + v68;
              v75 = 0.0;
              if (v74 != 0.0)
              {
                v108[0] = 0;
                v76 = frexp(v74, v108);
                v77 = ldexp(v76, 11);
                v75 = ldexp(round(v77), v108[0] - 11);
              }

              LOWORD(v108[0]) = MIL::ANEMachineIR::Interpreter::RecipTableRaw[v39];
              MIL::Fp16::GetFloat(v108);
              v79 = v75 * v78;
              v80 = 0.0;
              if (v79 != 0.0)
              {
                v108[0] = 0;
                v81 = frexp(v79, v108);
                v82 = ldexp(v81, 11);
                v80 = ldexp(round(v82), v108[0] - 11);
              }

              std::function<float ()(float)>::operator()(a12, v80);
              if (v83 == INFINITY)
              {
                LOBYTE(v84) = -1;
              }

              else if (v83 == -INFINITY)
              {
                LOBYTE(v84) = 0;
              }

              else
              {
                v85 = llroundf(v83);
                if (v85 >= 255)
                {
                  v85 = 255;
                }

                v84 = v85 & ~(v85 >> 31);
              }
            }

LABEL_76:
            v104 += v95;
            ++v100;
          }

          while (v100 != v96);
        }

LABEL_78:
        ++v35;
        v33 = v92;
      }

      while (v35 != v92);
LABEL_79:
      ++v107;
    }

    while (v107 != v91);
  }

  if (__src.i64[0])
  {
    __src.i64[1] = __src.i64[0];
    operator delete(__src.i64[0]);
  }

  std::__function::__value_func<MIL::Fp16 ()(MIL::Fp16)>::~__value_func[abi:ne200100](v120);
  if (__p)
  {
    v113 = __p;
    operator delete(__p);
  }

  if (v115)
  {
    v116 = v115;
    operator delete(v115);
  }

  v86 = *MEMORY[0x277D85DE8];
}

void sub_2599DA480(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *__p, uint64_t a39)
{
  if (__p)
  {
    operator delete(__p);
  }

  v41 = *(v39 - 208);
  if (v41)
  {
    *(v39 - 200) = v41;
    operator delete(v41);
  }

  v42 = *a16;
  if (*a16)
  {
    *(a16 + 8) = v42;
    operator delete(v42);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValueAvgPool<signed char,MIL::Fp16>(uint64_t a1@<X0>, size_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, __int16 a8@<W7>, uint64_t a9@<X8>, char a10, char a11, uint64_t a12)
{
  v124 = *MEMORY[0x277D85DE8];
  v118 = a8;
  *(a9 + 8) = 0;
  *(a9 + 16) = 0;
  *a9 = 0;
  if (a2)
  {
    std::vector<unsigned char>::__append(a9, a2);
  }

  v17 = *a3;
  v18 = a3[1];
  v19 = v18 - *a3;
  if (v19 != a4[1] - *a4)
  {
    v87 = "x_rank == o_shape.size()";
    v88 = 64;
    goto LABEL_92;
  }

  v20 = v19 >> 3;
  v21 = (v19 >> 3) - 2;
  v22 = *a5;
  if (v21 != (*(a5 + 8) - *a5) >> 2)
  {
    v87 = "kernel_sizes.size() == num_spatial_dims";
    v88 = 65;
    goto LABEL_92;
  }

  v23 = *a6;
  if (v21 != (*(a6 + 8) - *a6) >> 2)
  {
    v87 = "strides.size() == num_spatial_dims";
    v88 = 66;
LABEL_92:
    __assert_rtn("ComputeValueAvgPool", "PePoolCpu.cpp", v88, v87);
  }

  if (v21 == 3)
  {
    if (*v22 == 1)
    {
      if (*v23 == 1)
      {
        v24 = 4 * v20 - 12;
        v25 = (v23 + v24);
        v93 = v23[v20 - 4];
        v26 = (v22 + v24);
        v27 = v22[v20 - 4];
        goto LABEL_13;
      }

      v89 = "sz == 1";
      v90 = 77;
    }

    else
    {
      v89 = "kd == 1";
      v90 = 76;
    }

    __assert_rtn("ComputeValueAvgPool", "PePoolCpu.cpp", v90, v89);
  }

  v28 = 4 * v20;
  if (v21 <= 1)
  {
    v30 = v28 - 12;
    v26 = (v22 + v30);
    v25 = (v23 + v30);
    v27 = 1;
    v93 = 1;
  }

  else
  {
    v27 = v22[v20 - 4];
    v29 = v28 - 12;
    v26 = (v22 + v29);
    v93 = v23[v20 - 4];
    v25 = (v23 + v29);
  }

LABEL_13:
  v95 = *v25;
  v31 = *v26;
  v115 = 0;
  v116 = 0;
  v117 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v115, v17, v18, v20);
  __p = 0;
  v113 = 0;
  v114 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&__p, *a4, a4[1], (a4[1] - *a4) >> 3);
  if (v20 == 3)
  {
    __src = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v115, v115 + 8, __src.i8, v122, 2);
    __src = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&__p, __p + 8, __src.i8, v122, 2);
  }

  else if (v20 == 4)
  {
    __src.i64[0] = 1;
    std::vector<unsigned long long>::insert(&v115, v115 + 8, &__src);
    __src.i64[0] = 1;
    std::vector<unsigned long long>::insert(&__p, __p + 8, &__src);
  }

  v32 = *__p;
  v33 = *(__p + 1);
  v94 = *(__p + 2);
  v96 = *(__p + 3);
  v99 = *(__p + 4);
  v101 = *(v115 + 2);
  v105 = *(v115 + 3);
  v120[0] = &unk_286AB2320;
  v120[3] = v120;
  if (a11)
  {
    __src.i64[0] = &unk_286AB23A0;
    p_src = &__src;
    std::__function::__value_func<MIL::Fp16 ()(MIL::Fp16)>::swap[abi:ne200100](&__src, v120);
    std::__function::__value_func<MIL::Fp16 ()(MIL::Fp16)>::~__value_func[abi:ne200100](&__src);
  }

  MIL::Fp16::GetFloat(&v118);
  LODWORD(v110) = v34;
  std::vector<float>::vector[abi:ne200100](&__src, v99);
  if (v32)
  {
    v107 = 0;
    v102 = v31;
    v103 = v27;
    v91 = v32;
    v92 = v33;
    do
    {
      if (!v33)
      {
        goto LABEL_81;
      }

      v35 = 0;
      do
      {
        if (!v94)
        {
          goto LABEL_80;
        }

        for (i = 0; i != v94; ++i)
        {
          if (!v96)
          {
            continue;
          }

          v100 = 0;
          v36 = i * v93;
          v104 = 0;
          do
          {
            if (!v99)
            {
              goto LABEL_78;
            }

            for (j = 0; j != v99; ++j)
            {
              v111 = 0.0;
              v110 = xmmword_259A4D02C;
              if (!v27)
              {
                v39 = 0;
                v64 = 5.0;
                goto LABEL_59;
              }

              v38 = 0;
              v39 = 0;
              do
              {
                v40 = v38 + v36;
                if ((a10 & 1) == 0 && (v40 < *(a7 + 8) || v40 >= v101 - *(a7 + 12)))
                {
                  goto LABEL_55;
                }

                v109 = 0.0;
                *v108 = xmmword_259A4D02C;
                if (v31)
                {
                  v41 = v31;
                  v42 = a7;
                  v43 = v108;
                  v44 = v104;
                  do
                  {
                    if ((a10 & 1) != 0 || v44 >= *(v42 + 16) && v44 < v105 - *(v42 + 20))
                    {
                      LOWORD(__e) = std::function<MIL::Fp16 ()(MIL::Fp16)>::operator()(v120, *(a1 + 2 * Index));
                      MIL::Fp16::GetFloat(&__e);
                      v47 = v46 * *(__src.i64[0] + 4 * j);
                      v48 = 0.0;
                      if (v47 != 0.0)
                      {
                        __e = 0;
                        v49 = frexp(v47, &__e);
                        v50 = ldexp(v49, 11);
                        v48 = ldexp(round(v50), __e - 11);
                      }

                      *v43 = v48;
                      ++v39;
                    }

                    ++v44;
                    ++v43;
                    --v41;
                  }

                  while (v41);
                  v51 = *v108 + *&v108[1];
                  v52 = 0.0;
                  a7 = v42;
                  v31 = v102;
                  v27 = v103;
                  v36 = i * v93;
                  if ((*v108 + *&v108[1]) == 0.0)
                  {
                    goto LABEL_48;
                  }
                }

                else
                {
                  v51 = 5.0;
                }

                __e = 0;
                v53 = frexp(v51, &__e);
                v54 = ldexp(v53, 11);
                v52 = ldexp(round(v54), __e - 11);
LABEL_48:
                v55 = 0.0;
                v56 = 0.0;
                if ((v52 + *&v108[2]) != 0.0)
                {
                  __e = 0;
                  v57 = frexp((v52 + *&v108[2]), &__e);
                  v58 = ldexp(v57, 11);
                  v56 = ldexp(round(v58), __e - 11);
                }

                if ((*&v108[3] + v109) != 0.0)
                {
                  __e = 0;
                  v59 = frexp((*&v108[3] + v109), &__e);
                  v60 = ldexp(v59, 11);
                  v55 = ldexp(round(v60), __e - 11);
                }

                v61 = 0.0;
                if ((v56 + v55) != 0.0)
                {
                  __e = 0;
                  v62 = frexp((v56 + v55), &__e);
                  v63 = ldexp(v62, 11);
                  v61 = ldexp(round(v63), __e - 11);
                }

                *(&v110 + v38) = v61;
LABEL_55:
                ++v38;
              }

              while (v38 != v27);
              v64 = *&v110 + *(&v110 + 1);
              v65 = 0.0;
              if ((*&v110 + *(&v110 + 1)) != 0.0)
              {
LABEL_59:
                v108[0] = 0;
                v66 = frexp(v64, v108);
                v67 = ldexp(v66, 11);
                v65 = ldexp(round(v67), v108[0] - 11);
              }

              v68 = 0.0;
              v69 = 0.0;
              if ((v65 + *(&v110 + 2)) != 0.0)
              {
                v108[0] = 0;
                v70 = frexp((v65 + *(&v110 + 2)), v108);
                v71 = ldexp(v70, 11);
                v69 = ldexp(round(v71), v108[0] - 11);
              }

              if ((*(&v110 + 3) + v111) != 0.0)
              {
                v108[0] = 0;
                v72 = frexp((*(&v110 + 3) + v111), v108);
                v73 = ldexp(v72, 11);
                v68 = ldexp(round(v73), v108[0] - 11);
              }

              v74 = v69 + v68;
              v75 = 0.0;
              if (v74 != 0.0)
              {
                v108[0] = 0;
                v76 = frexp(v74, v108);
                v77 = ldexp(v76, 11);
                v75 = ldexp(round(v77), v108[0] - 11);
              }

              LOWORD(v108[0]) = MIL::ANEMachineIR::Interpreter::RecipTableRaw[v39];
              MIL::Fp16::GetFloat(v108);
              v79 = v75 * v78;
              v80 = 0.0;
              if (v79 != 0.0)
              {
                v108[0] = 0;
                v81 = frexp(v79, v108);
                v82 = ldexp(v81, 11);
                v80 = ldexp(round(v82), v108[0] - 11);
              }

              std::function<float ()(float)>::operator()(a12, v80);
              if (v83 == INFINITY)
              {
                v84 = 127;
              }

              else if (v83 == -INFINITY)
              {
                v84 = 0x80;
              }

              else
              {
                v85 = llroundf(v83);
                if (v85 >= 127)
                {
                  v85 = 127;
                }

                if (v85 <= -128)
                {
                  v84 = 0x80;
                }

                else
                {
                  v84 = v85;
                }
              }
            }

LABEL_78:
            v104 += v95;
            ++v100;
          }

          while (v100 != v96);
        }

LABEL_80:
        ++v35;
        v33 = v92;
      }

      while (v35 != v92);
LABEL_81:
      ++v107;
    }

    while (v107 != v91);
  }

  if (__src.i64[0])
  {
    __src.i64[1] = __src.i64[0];
    operator delete(__src.i64[0]);
  }

  std::__function::__value_func<MIL::Fp16 ()(MIL::Fp16)>::~__value_func[abi:ne200100](v120);
  if (__p)
  {
    v113 = __p;
    operator delete(__p);
  }

  if (v115)
  {
    v116 = v115;
    operator delete(v115);
  }

  v86 = *MEMORY[0x277D85DE8];
}

void sub_2599DADC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *__p, uint64_t a39)
{
  if (__p)
  {
    operator delete(__p);
  }

  v41 = *(v39 - 208);
  if (v41)
  {
    *(v39 - 200) = v41;
    operator delete(v41);
  }

  v42 = *a16;
  if (*a16)
  {
    *(a16 + 8) = v42;
    operator delete(v42);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValueAvgPool<MIL::Fp16,unsigned char>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, __int16 a8@<W7>, void *a9@<X8>, char a10, uint64_t a11)
{
  v124 = *MEMORY[0x277D85DE8];
  v119 = a8;
  a9[1] = 0;
  a9[2] = 0;
  *a9 = 0;
  std::vector<MIL::Fp16>::resize(a9, a2);
  v16 = *a3;
  v17 = a3[1];
  v18 = v17 - *a3;
  if (v18 != a4[1] - *a4)
  {
    v87 = "x_rank == o_shape.size()";
    v88 = 64;
    goto LABEL_79;
  }

  v19 = v18 >> 3;
  v20 = (v18 >> 3) - 2;
  v21 = *a5;
  if (v20 != (*(a5 + 8) - *a5) >> 2)
  {
    v87 = "kernel_sizes.size() == num_spatial_dims";
    v88 = 65;
    goto LABEL_79;
  }

  v22 = *a6;
  if (v20 != (*(a6 + 8) - *a6) >> 2)
  {
    v87 = "strides.size() == num_spatial_dims";
    v88 = 66;
LABEL_79:
    __assert_rtn("ComputeValueAvgPool", "PePoolCpu.cpp", v88, v87);
  }

  if (v20 == 3)
  {
    if (*v21 == 1)
    {
      if (*v22 == 1)
      {
        v23 = 4 * v19 - 12;
        v24 = (v22 + v23);
        v93 = v22[v19 - 4];
        v25 = (v21 + v23);
        v26 = v21[v19 - 4];
        goto LABEL_11;
      }

      v89 = "sz == 1";
      v90 = 77;
    }

    else
    {
      v89 = "kd == 1";
      v90 = 76;
    }

    __assert_rtn("ComputeValueAvgPool", "PePoolCpu.cpp", v90, v89);
  }

  if (v20 <= 1)
  {
    v28 = 4 * v19 - 12;
    v25 = (v21 + v28);
    v24 = (v22 + v28);
    v26 = 1;
    v93 = 1;
  }

  else
  {
    v26 = v21[v19 - 4];
    v27 = 4 * v19 - 12;
    v25 = (v21 + v27);
    v93 = v22[v19 - 4];
    v24 = (v22 + v27);
  }

LABEL_11:
  v95 = *v24;
  v29 = *v25;
  v116 = 0;
  v117 = 0;
  v118 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v116, v16, v17, v19);
  v113 = 0;
  v114 = 0;
  v115 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v113, *a4, a4[1], (a4[1] - *a4) >> 3);
  if (v19 == 3)
  {
    __src = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v116, v116 + 8, __src.i8, v122, 2);
    __src = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v113, v113 + 8, __src.i8, v122, 2);
  }

  else if (v19 == 4)
  {
    __src.i64[0] = 1;
    std::vector<unsigned long long>::insert(&v116, v116 + 8, &__src);
    __src.i64[0] = 1;
    std::vector<unsigned long long>::insert(&v113, v113 + 8, &__src);
  }

  v30 = *v113;
  v31 = *(v113 + 1);
  v94 = *(v113 + 2);
  v96 = *(v113 + 3);
  v32 = *(v113 + 4);
  v101 = *(v116 + 2);
  v105 = *(v116 + 3);
  __src.i64[0] = &unk_286AB2420;
  p_src = &__src;
  MIL::Fp16::GetFloat(&v119);
  LODWORD(v110) = v33;
  std::vector<float>::vector[abi:ne200100](v112, v32);
  if (v30)
  {
    v107 = 0;
    v102 = v29;
    v103 = v26;
    v91 = v30;
    v92 = v31;
    v97 = v32;
    do
    {
      if (!v31)
      {
        goto LABEL_68;
      }

      v34 = 0;
      do
      {
        if (!v94)
        {
          goto LABEL_67;
        }

        for (i = 0; i != v94; ++i)
        {
          if (!v96)
          {
            continue;
          }

          v100 = 0;
          v35 = i * v93;
          v104 = 0;
          do
          {
            if (!v32)
            {
              goto LABEL_65;
            }

            for (j = 0; j != v32; ++j)
            {
              v111 = 0.0;
              v110 = xmmword_259A4D02C;
              if (!v26)
              {
                v38 = 0;
                v64 = 5.0;
                goto LABEL_55;
              }

              v37 = 0;
              v38 = 0;
              do
              {
                v39 = v37 + v35;
                if ((a10 & 1) == 0 && (v39 < *(a7 + 8) || v39 >= v101 - *(a7 + 12)))
                {
                  goto LABEL_51;
                }

                v109 = 0.0;
                *v108 = xmmword_259A4D02C;
                if (v29)
                {
                  v40 = v29;
                  v41 = a7;
                  v42 = v108;
                  v43 = v104;
                  v44 = v40;
                  do
                  {
                    if ((a10 & 1) != 0 || v43 >= *(v41 + 16) && v43 < v105 - *(v41 + 20))
                    {
                      v46 = std::function<unsigned char ()(unsigned char)>::operator()(&__src, *(a1 + Index));
                      v47 = *(v112[0] + j) * v46;
                      v48 = 0.0;
                      if (v47 != 0.0)
                      {
                        __e = 0;
                        v49 = frexp(v47, &__e);
                        v50 = ldexp(v49, 11);
                        v48 = ldexp(round(v50), __e - 11);
                      }

                      *v42 = v48;
                      ++v38;
                    }

                    ++v43;
                    ++v42;
                    --v44;
                  }

                  while (v44);
                  v51 = *v108 + *&v108[1];
                  v52 = 0.0;
                  a7 = v41;
                  v29 = v102;
                  v26 = v103;
                  v35 = i * v93;
                  if ((*v108 + *&v108[1]) == 0.0)
                  {
                    goto LABEL_44;
                  }
                }

                else
                {
                  v51 = 5.0;
                }

                __e = 0;
                v53 = frexp(v51, &__e);
                v54 = ldexp(v53, 11);
                v52 = ldexp(round(v54), __e - 11);
LABEL_44:
                v55 = 0.0;
                v56 = 0.0;
                if ((v52 + *&v108[2]) != 0.0)
                {
                  __e = 0;
                  v57 = frexp((v52 + *&v108[2]), &__e);
                  v58 = ldexp(v57, 11);
                  v56 = ldexp(round(v58), __e - 11);
                }

                if ((*&v108[3] + v109) != 0.0)
                {
                  __e = 0;
                  v59 = frexp((*&v108[3] + v109), &__e);
                  v60 = ldexp(v59, 11);
                  v55 = ldexp(round(v60), __e - 11);
                }

                v61 = 0.0;
                if ((v56 + v55) != 0.0)
                {
                  __e = 0;
                  v62 = frexp((v56 + v55), &__e);
                  v63 = ldexp(v62, 11);
                  v61 = ldexp(round(v63), __e - 11);
                }

                *(&v110 + v37) = v61;
LABEL_51:
                ++v37;
              }

              while (v37 != v26);
              v64 = *&v110 + *(&v110 + 1);
              v65 = 0.0;
              v32 = v97;
              if ((*&v110 + *(&v110 + 1)) != 0.0)
              {
LABEL_55:
                v108[0] = 0;
                v66 = frexp(v64, v108);
                v67 = ldexp(v66, 11);
                v65 = ldexp(round(v67), v108[0] - 11);
              }

              v68 = 0.0;
              v69 = 0.0;
              if ((v65 + *(&v110 + 2)) != 0.0)
              {
                v108[0] = 0;
                v70 = frexp((v65 + *(&v110 + 2)), v108);
                v71 = ldexp(v70, 11);
                v69 = ldexp(round(v71), v108[0] - 11);
              }

              if ((*(&v110 + 3) + v111) != 0.0)
              {
                v108[0] = 0;
                v72 = frexp((*(&v110 + 3) + v111), v108);
                v73 = ldexp(v72, 11);
                v68 = ldexp(round(v73), v108[0] - 11);
              }

              v74 = v69 + v68;
              v75 = 0.0;
              if (v74 != 0.0)
              {
                v108[0] = 0;
                v76 = frexp(v74, v108);
                v77 = ldexp(v76, 11);
                v75 = ldexp(round(v77), v108[0] - 11);
              }

              LOWORD(v108[0]) = MIL::ANEMachineIR::Interpreter::RecipTableRaw[v38];
              MIL::Fp16::GetFloat(v108);
              v79 = v75 * v78;
              v80 = 0.0;
              if (v79 != 0.0)
              {
                v108[0] = 0;
                v81 = frexp(v79, v108);
                v82 = ldexp(v81, 11);
                v80 = ldexp(round(v82), v108[0] - 11);
              }

              v83 = std::function<float ()(float)>::operator()(a11, v80);
              v85 = MIL::Fp16::FromFloat(v83, v84);
            }

LABEL_65:
            v104 += v95;
            ++v100;
          }

          while (v100 != v96);
        }

LABEL_67:
        ++v34;
        v31 = v92;
      }

      while (v34 != v92);
LABEL_68:
      ++v107;
    }

    while (v107 != v91);
  }

  if (v112[0])
  {
    v112[1] = v112[0];
    operator delete(v112[0]);
  }

  std::__function::__value_func<unsigned char ()(unsigned char)>::~__value_func[abi:ne200100](&__src);
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

  v86 = *MEMORY[0x277D85DE8];
}

void sub_2599DB674(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v19 = *(v17 - 200);
  if (v19)
  {
    *(v17 - 192) = v19;
    operator delete(v19);
  }

  v20 = *(v17 - 176);
  if (v20)
  {
    *(v17 - 168) = v20;
    operator delete(v20);
  }

  v21 = *a17;
  if (*a17)
  {
    *(a17 + 8) = v21;
    operator delete(v21);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValueAvgPool<unsigned char,unsigned char>(uint64_t a1@<X0>, size_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, __int16 a8@<W7>, uint64_t a9@<X8>, char a10, uint64_t a11)
{
  v124 = *MEMORY[0x277D85DE8];
  v119 = a8;
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
    v87 = "x_rank == o_shape.size()";
    v88 = 64;
    goto LABEL_88;
  }

  v19 = v18 >> 3;
  v20 = (v18 >> 3) - 2;
  v21 = *a5;
  if (v20 != (*(a5 + 8) - *a5) >> 2)
  {
    v87 = "kernel_sizes.size() == num_spatial_dims";
    v88 = 65;
    goto LABEL_88;
  }

  v22 = *a6;
  if (v20 != (*(a6 + 8) - *a6) >> 2)
  {
    v87 = "strides.size() == num_spatial_dims";
    v88 = 66;
LABEL_88:
    __assert_rtn("ComputeValueAvgPool", "PePoolCpu.cpp", v88, v87);
  }

  if (v20 == 3)
  {
    if (*v21 == 1)
    {
      if (*v22 == 1)
      {
        v23 = 4 * v19 - 12;
        v24 = (v22 + v23);
        v93 = v22[v19 - 4];
        v25 = (v21 + v23);
        v26 = v21[v19 - 4];
        goto LABEL_13;
      }

      v89 = "sz == 1";
      v90 = 77;
    }

    else
    {
      v89 = "kd == 1";
      v90 = 76;
    }

    __assert_rtn("ComputeValueAvgPool", "PePoolCpu.cpp", v90, v89);
  }

  v27 = 4 * v19;
  if (v20 <= 1)
  {
    v29 = v27 - 12;
    v25 = (v21 + v29);
    v24 = (v22 + v29);
    v26 = 1;
    v93 = 1;
  }

  else
  {
    v26 = v21[v19 - 4];
    v28 = v27 - 12;
    v25 = (v21 + v28);
    v93 = v22[v19 - 4];
    v24 = (v22 + v28);
  }

LABEL_13:
  v95 = *v24;
  v30 = *v25;
  v116 = 0;
  v117 = 0;
  v118 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v116, v16, v17, v19);
  v113 = 0;
  v114 = 0;
  v115 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v113, *a4, a4[1], (a4[1] - *a4) >> 3);
  if (v19 == 3)
  {
    __src = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v116, v116 + 8, __src.i8, v122, 2);
    __src = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v113, v113 + 8, __src.i8, v122, 2);
  }

  else if (v19 == 4)
  {
    __src.i64[0] = 1;
    std::vector<unsigned long long>::insert(&v116, v116 + 8, &__src);
    __src.i64[0] = 1;
    std::vector<unsigned long long>::insert(&v113, v113 + 8, &__src);
  }

  v31 = *v113;
  v32 = *(v113 + 1);
  v94 = *(v113 + 2);
  v96 = *(v113 + 3);
  v33 = *(v113 + 4);
  v101 = *(v116 + 2);
  v105 = *(v116 + 3);
  __src.i64[0] = &unk_286AB24A0;
  p_src = &__src;
  MIL::Fp16::GetFloat(&v119);
  LODWORD(v110) = v34;
  std::vector<float>::vector[abi:ne200100](v112, v33);
  if (v31)
  {
    v107 = 0;
    v102 = v30;
    v103 = v26;
    v91 = v31;
    v92 = v32;
    v97 = v33;
    do
    {
      if (!v32)
      {
        goto LABEL_77;
      }

      v35 = 0;
      do
      {
        if (!v94)
        {
          goto LABEL_76;
        }

        for (i = 0; i != v94; ++i)
        {
          if (!v96)
          {
            continue;
          }

          v100 = 0;
          v36 = i * v93;
          v104 = 0;
          do
          {
            if (!v33)
            {
              goto LABEL_74;
            }

            for (j = 0; j != v33; ++j)
            {
              v111 = 0.0;
              v110 = xmmword_259A4D02C;
              if (!v26)
              {
                v39 = 0;
                v64 = 5.0;
                goto LABEL_57;
              }

              v38 = 0;
              v39 = 0;
              do
              {
                v40 = v38 + v36;
                if ((a10 & 1) == 0 && (v40 < *(a7 + 8) || v40 >= v101 - *(a7 + 12)))
                {
                  goto LABEL_53;
                }

                v109 = 0.0;
                *v108 = xmmword_259A4D02C;
                if (v30)
                {
                  v41 = v30;
                  v42 = a7;
                  v43 = v108;
                  v44 = v104;
                  do
                  {
                    if ((a10 & 1) != 0 || v44 >= *(v42 + 16) && v44 < v105 - *(v42 + 20))
                    {
                      v46 = std::function<unsigned char ()(unsigned char)>::operator()(&__src, *(a1 + Index));
                      v47 = *(v112[0] + j) * v46;
                      v48 = 0.0;
                      if (v47 != 0.0)
                      {
                        __e = 0;
                        v49 = frexp(v47, &__e);
                        v50 = ldexp(v49, 11);
                        v48 = ldexp(round(v50), __e - 11);
                      }

                      *v43 = v48;
                      ++v39;
                    }

                    ++v44;
                    ++v43;
                    --v41;
                  }

                  while (v41);
                  v51 = *v108 + *&v108[1];
                  v52 = 0.0;
                  a7 = v42;
                  v30 = v102;
                  v26 = v103;
                  v36 = i * v93;
                  if ((*v108 + *&v108[1]) == 0.0)
                  {
                    goto LABEL_46;
                  }
                }

                else
                {
                  v51 = 5.0;
                }

                __e = 0;
                v53 = frexp(v51, &__e);
                v54 = ldexp(v53, 11);
                v52 = ldexp(round(v54), __e - 11);
LABEL_46:
                v55 = 0.0;
                v56 = 0.0;
                if ((v52 + *&v108[2]) != 0.0)
                {
                  __e = 0;
                  v57 = frexp((v52 + *&v108[2]), &__e);
                  v58 = ldexp(v57, 11);
                  v56 = ldexp(round(v58), __e - 11);
                }

                if ((*&v108[3] + v109) != 0.0)
                {
                  __e = 0;
                  v59 = frexp((*&v108[3] + v109), &__e);
                  v60 = ldexp(v59, 11);
                  v55 = ldexp(round(v60), __e - 11);
                }

                v61 = 0.0;
                if ((v56 + v55) != 0.0)
                {
                  __e = 0;
                  v62 = frexp((v56 + v55), &__e);
                  v63 = ldexp(v62, 11);
                  v61 = ldexp(round(v63), __e - 11);
                }

                *(&v110 + v38) = v61;
LABEL_53:
                ++v38;
              }

              while (v38 != v26);
              v64 = *&v110 + *(&v110 + 1);
              v65 = 0.0;
              v33 = v97;
              if ((*&v110 + *(&v110 + 1)) != 0.0)
              {
LABEL_57:
                v108[0] = 0;
                v66 = frexp(v64, v108);
                v67 = ldexp(v66, 11);
                v65 = ldexp(round(v67), v108[0] - 11);
              }

              v68 = 0.0;
              v69 = 0.0;
              if ((v65 + *(&v110 + 2)) != 0.0)
              {
                v108[0] = 0;
                v70 = frexp((v65 + *(&v110 + 2)), v108);
                v71 = ldexp(v70, 11);
                v69 = ldexp(round(v71), v108[0] - 11);
              }

              if ((*(&v110 + 3) + v111) != 0.0)
              {
                v108[0] = 0;
                v72 = frexp((*(&v110 + 3) + v111), v108);
                v73 = ldexp(v72, 11);
                v68 = ldexp(round(v73), v108[0] - 11);
              }

              v74 = v69 + v68;
              v75 = 0.0;
              if (v74 != 0.0)
              {
                v108[0] = 0;
                v76 = frexp(v74, v108);
                v77 = ldexp(v76, 11);
                v75 = ldexp(round(v77), v108[0] - 11);
              }

              LOWORD(v108[0]) = MIL::ANEMachineIR::Interpreter::RecipTableRaw[v39];
              MIL::Fp16::GetFloat(v108);
              v79 = v75 * v78;
              v80 = 0.0;
              if (v79 != 0.0)
              {
                v108[0] = 0;
                v81 = frexp(v79, v108);
                v82 = ldexp(v81, 11);
                v80 = ldexp(round(v82), v108[0] - 11);
              }

              std::function<float ()(float)>::operator()(a11, v80);
              if (v83 == INFINITY)
              {
                LOBYTE(v84) = -1;
              }

              else if (v83 == -INFINITY)
              {
                LOBYTE(v84) = 0;
              }

              else
              {
                v85 = llroundf(v83);
                if (v85 >= 255)
                {
                  v85 = 255;
                }

                v84 = v85 & ~(v85 >> 31);
              }
            }

LABEL_74:
            v104 += v95;
            ++v100;
          }

          while (v100 != v96);
        }

LABEL_76:
        ++v35;
        v32 = v92;
      }

      while (v35 != v92);
LABEL_77:
      ++v107;
    }

    while (v107 != v91);
  }

  if (v112[0])
  {
    v112[1] = v112[0];
    operator delete(v112[0]);
  }

  std::__function::__value_func<unsigned char ()(unsigned char)>::~__value_func[abi:ne200100](&__src);
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

  v86 = *MEMORY[0x277D85DE8];
}

void sub_2599DBF64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v19 = *(v17 - 200);
  if (v19)
  {
    *(v17 - 192) = v19;
    operator delete(v19);
  }

  v20 = *(v17 - 176);
  if (v20)
  {
    *(v17 - 168) = v20;
    operator delete(v20);
  }

  v21 = *a17;
  if (*a17)
  {
    *(a17 + 8) = v21;
    operator delete(v21);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValueAvgPool<signed char,unsigned char>(uint64_t a1@<X0>, size_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, __int16 a8@<W7>, uint64_t a9@<X8>, char a10, uint64_t a11)
{
  v124 = *MEMORY[0x277D85DE8];
  v119 = a8;
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
    v87 = "x_rank == o_shape.size()";
    v88 = 64;
    goto LABEL_90;
  }

  v19 = v18 >> 3;
  v20 = (v18 >> 3) - 2;
  v21 = *a5;
  if (v20 != (*(a5 + 8) - *a5) >> 2)
  {
    v87 = "kernel_sizes.size() == num_spatial_dims";
    v88 = 65;
    goto LABEL_90;
  }

  v22 = *a6;
  if (v20 != (*(a6 + 8) - *a6) >> 2)
  {
    v87 = "strides.size() == num_spatial_dims";
    v88 = 66;
LABEL_90:
    __assert_rtn("ComputeValueAvgPool", "PePoolCpu.cpp", v88, v87);
  }

  if (v20 == 3)
  {
    if (*v21 == 1)
    {
      if (*v22 == 1)
      {
        v23 = 4 * v19 - 12;
        v24 = (v22 + v23);
        v93 = v22[v19 - 4];
        v25 = (v21 + v23);
        v26 = v21[v19 - 4];
        goto LABEL_13;
      }

      v89 = "sz == 1";
      v90 = 77;
    }

    else
    {
      v89 = "kd == 1";
      v90 = 76;
    }

    __assert_rtn("ComputeValueAvgPool", "PePoolCpu.cpp", v90, v89);
  }

  v27 = 4 * v19;
  if (v20 <= 1)
  {
    v29 = v27 - 12;
    v25 = (v21 + v29);
    v24 = (v22 + v29);
    v26 = 1;
    v93 = 1;
  }

  else
  {
    v26 = v21[v19 - 4];
    v28 = v27 - 12;
    v25 = (v21 + v28);
    v93 = v22[v19 - 4];
    v24 = (v22 + v28);
  }

LABEL_13:
  v95 = *v24;
  v30 = *v25;
  v116 = 0;
  v117 = 0;
  v118 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v116, v16, v17, v19);
  v113 = 0;
  v114 = 0;
  v115 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v113, *a4, a4[1], (a4[1] - *a4) >> 3);
  if (v19 == 3)
  {
    __src = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v116, v116 + 8, __src.i8, v122, 2);
    __src = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v113, v113 + 8, __src.i8, v122, 2);
  }

  else if (v19 == 4)
  {
    __src.i64[0] = 1;
    std::vector<unsigned long long>::insert(&v116, v116 + 8, &__src);
    __src.i64[0] = 1;
    std::vector<unsigned long long>::insert(&v113, v113 + 8, &__src);
  }

  v31 = *v113;
  v32 = *(v113 + 1);
  v94 = *(v113 + 2);
  v96 = *(v113 + 3);
  v33 = *(v113 + 4);
  v101 = *(v116 + 2);
  v105 = *(v116 + 3);
  __src.i64[0] = &unk_286AB2520;
  p_src = &__src;
  MIL::Fp16::GetFloat(&v119);
  LODWORD(v110) = v34;
  std::vector<float>::vector[abi:ne200100](v112, v33);
  if (v31)
  {
    v107 = 0;
    v102 = v30;
    v103 = v26;
    v91 = v31;
    v92 = v32;
    v97 = v33;
    do
    {
      if (!v32)
      {
        goto LABEL_79;
      }

      v35 = 0;
      do
      {
        if (!v94)
        {
          goto LABEL_78;
        }

        for (i = 0; i != v94; ++i)
        {
          if (!v96)
          {
            continue;
          }

          v100 = 0;
          v36 = i * v93;
          v104 = 0;
          do
          {
            if (!v33)
            {
              goto LABEL_76;
            }

            for (j = 0; j != v33; ++j)
            {
              v111 = 0.0;
              v110 = xmmword_259A4D02C;
              if (!v26)
              {
                v39 = 0;
                v64 = 5.0;
                goto LABEL_57;
              }

              v38 = 0;
              v39 = 0;
              do
              {
                v40 = v38 + v36;
                if ((a10 & 1) == 0 && (v40 < *(a7 + 8) || v40 >= v101 - *(a7 + 12)))
                {
                  goto LABEL_53;
                }

                v109 = 0.0;
                *v108 = xmmword_259A4D02C;
                if (v30)
                {
                  v41 = v30;
                  v42 = a7;
                  v43 = v108;
                  v44 = v104;
                  do
                  {
                    if ((a10 & 1) != 0 || v44 >= *(v42 + 16) && v44 < v105 - *(v42 + 20))
                    {
                      v46 = std::function<unsigned char ()(unsigned char)>::operator()(&__src, *(a1 + Index));
                      v47 = *(v112[0] + j) * v46;
                      v48 = 0.0;
                      if (v47 != 0.0)
                      {
                        __e = 0;
                        v49 = frexp(v47, &__e);
                        v50 = ldexp(v49, 11);
                        v48 = ldexp(round(v50), __e - 11);
                      }

                      *v43 = v48;
                      ++v39;
                    }

                    ++v44;
                    ++v43;
                    --v41;
                  }

                  while (v41);
                  v51 = *v108 + *&v108[1];
                  v52 = 0.0;
                  a7 = v42;
                  v30 = v102;
                  v26 = v103;
                  v36 = i * v93;
                  if ((*v108 + *&v108[1]) == 0.0)
                  {
                    goto LABEL_46;
                  }
                }

                else
                {
                  v51 = 5.0;
                }

                __e = 0;
                v53 = frexp(v51, &__e);
                v54 = ldexp(v53, 11);
                v52 = ldexp(round(v54), __e - 11);
LABEL_46:
                v55 = 0.0;
                v56 = 0.0;
                if ((v52 + *&v108[2]) != 0.0)
                {
                  __e = 0;
                  v57 = frexp((v52 + *&v108[2]), &__e);
                  v58 = ldexp(v57, 11);
                  v56 = ldexp(round(v58), __e - 11);
                }

                if ((*&v108[3] + v109) != 0.0)
                {
                  __e = 0;
                  v59 = frexp((*&v108[3] + v109), &__e);
                  v60 = ldexp(v59, 11);
                  v55 = ldexp(round(v60), __e - 11);
                }

                v61 = 0.0;
                if ((v56 + v55) != 0.0)
                {
                  __e = 0;
                  v62 = frexp((v56 + v55), &__e);
                  v63 = ldexp(v62, 11);
                  v61 = ldexp(round(v63), __e - 11);
                }

                *(&v110 + v38) = v61;
LABEL_53:
                ++v38;
              }

              while (v38 != v26);
              v64 = *&v110 + *(&v110 + 1);
              v65 = 0.0;
              v33 = v97;
              if ((*&v110 + *(&v110 + 1)) != 0.0)
              {
LABEL_57:
                v108[0] = 0;
                v66 = frexp(v64, v108);
                v67 = ldexp(v66, 11);
                v65 = ldexp(round(v67), v108[0] - 11);
              }

              v68 = 0.0;
              v69 = 0.0;
              if ((v65 + *(&v110 + 2)) != 0.0)
              {
                v108[0] = 0;
                v70 = frexp((v65 + *(&v110 + 2)), v108);
                v71 = ldexp(v70, 11);
                v69 = ldexp(round(v71), v108[0] - 11);
              }

              if ((*(&v110 + 3) + v111) != 0.0)
              {
                v108[0] = 0;
                v72 = frexp((*(&v110 + 3) + v111), v108);
                v73 = ldexp(v72, 11);
                v68 = ldexp(round(v73), v108[0] - 11);
              }

              v74 = v69 + v68;
              v75 = 0.0;
              if (v74 != 0.0)
              {
                v108[0] = 0;
                v76 = frexp(v74, v108);
                v77 = ldexp(v76, 11);
                v75 = ldexp(round(v77), v108[0] - 11);
              }

              LOWORD(v108[0]) = MIL::ANEMachineIR::Interpreter::RecipTableRaw[v39];
              MIL::Fp16::GetFloat(v108);
              v79 = v75 * v78;
              v80 = 0.0;
              if (v79 != 0.0)
              {
                v108[0] = 0;
                v81 = frexp(v79, v108);
                v82 = ldexp(v81, 11);
                v80 = ldexp(round(v82), v108[0] - 11);
              }

              std::function<float ()(float)>::operator()(a11, v80);
              if (v83 == INFINITY)
              {
                v84 = 127;
              }

              else if (v83 == -INFINITY)
              {
                v84 = 0x80;
              }

              else
              {
                v85 = llroundf(v83);
                if (v85 >= 127)
                {
                  v85 = 127;
                }

                if (v85 <= -128)
                {
                  v84 = 0x80;
                }

                else
                {
                  v84 = v85;
                }
              }
            }

LABEL_76:
            v104 += v95;
            ++v100;
          }

          while (v100 != v96);
        }

LABEL_78:
        ++v35;
        v32 = v92;
      }

      while (v35 != v92);
LABEL_79:
      ++v107;
    }

    while (v107 != v91);
  }

  if (v112[0])
  {
    v112[1] = v112[0];
    operator delete(v112[0]);
  }

  std::__function::__value_func<unsigned char ()(unsigned char)>::~__value_func[abi:ne200100](&__src);
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

  v86 = *MEMORY[0x277D85DE8];
}

void sub_2599DC858(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v19 = *(v17 - 200);
  if (v19)
  {
    *(v17 - 192) = v19;
    operator delete(v19);
  }

  v20 = *(v17 - 176);
  if (v20)
  {
    *(v17 - 168) = v20;
    operator delete(v20);
  }

  v21 = *a17;
  if (*a17)
  {
    *(a17 + 8) = v21;
    operator delete(v21);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValueAvgPool<MIL::Fp16,signed char>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, __int16 a8@<W7>, void *a9@<X8>, char a10, char a11, uint64_t a12)
{
  v124 = *MEMORY[0x277D85DE8];
  v118 = a8;
  a9[1] = 0;
  a9[2] = 0;
  *a9 = 0;
  std::vector<MIL::Fp16>::resize(a9, a2);
  v17 = *a3;
  v18 = a3[1];
  v19 = v18 - *a3;
  if (v19 != a4[1] - *a4)
  {
    v87 = "x_rank == o_shape.size()";
    v88 = 64;
    goto LABEL_81;
  }

  v20 = v19 >> 3;
  v21 = (v19 >> 3) - 2;
  v22 = *a5;
  if (v21 != (*(a5 + 8) - *a5) >> 2)
  {
    v87 = "kernel_sizes.size() == num_spatial_dims";
    v88 = 65;
    goto LABEL_81;
  }

  v23 = *a6;
  if (v21 != (*(a6 + 8) - *a6) >> 2)
  {
    v87 = "strides.size() == num_spatial_dims";
    v88 = 66;
LABEL_81:
    __assert_rtn("ComputeValueAvgPool", "PePoolCpu.cpp", v88, v87);
  }

  if (v21 == 3)
  {
    if (*v22 == 1)
    {
      if (*v23 == 1)
      {
        v24 = 4 * v20 - 12;
        v25 = (v23 + v24);
        v93 = v23[v20 - 4];
        v26 = (v22 + v24);
        v27 = v22[v20 - 4];
        goto LABEL_11;
      }

      v89 = "sz == 1";
      v90 = 77;
    }

    else
    {
      v89 = "kd == 1";
      v90 = 76;
    }

    __assert_rtn("ComputeValueAvgPool", "PePoolCpu.cpp", v90, v89);
  }

  if (v21 <= 1)
  {
    v29 = 4 * v20 - 12;
    v26 = (v22 + v29);
    v25 = (v23 + v29);
    v27 = 1;
    v93 = 1;
  }

  else
  {
    v27 = v22[v20 - 4];
    v28 = 4 * v20 - 12;
    v26 = (v22 + v28);
    v93 = v23[v20 - 4];
    v25 = (v23 + v28);
  }

LABEL_11:
  v95 = *v25;
  v30 = *v26;
  v115 = 0;
  v116 = 0;
  v117 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v115, v17, v18, v20);
  __p = 0;
  v113 = 0;
  v114 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&__p, *a4, a4[1], (a4[1] - *a4) >> 3);
  if (v20 == 3)
  {
    __src = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v115, v115 + 8, __src.i8, v122, 2);
    __src = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&__p, __p + 8, __src.i8, v122, 2);
  }

  else if (v20 == 4)
  {
    __src.i64[0] = 1;
    std::vector<unsigned long long>::insert(&v115, v115 + 8, &__src);
    __src.i64[0] = 1;
    std::vector<unsigned long long>::insert(&__p, __p + 8, &__src);
  }

  v31 = *__p;
  v32 = *(__p + 1);
  v94 = *(__p + 2);
  v96 = *(__p + 3);
  v99 = *(__p + 4);
  v101 = *(v115 + 2);
  v105 = *(v115 + 3);
  v120[0] = &unk_286AB25A0;
  v120[3] = v120;
  if (a11)
  {
    __src.i64[0] = &unk_286AB2620;
    p_src = &__src;
    std::__function::__value_func<signed char ()(signed char)>::swap[abi:ne200100](&__src, v120);
    std::__function::__value_func<signed char ()(signed char)>::~__value_func[abi:ne200100](&__src);
  }

  MIL::Fp16::GetFloat(&v118);
  LODWORD(v110) = v33;
  std::vector<float>::vector[abi:ne200100](&__src, v99);
  if (v31)
  {
    v107 = 0;
    v102 = v30;
    v103 = v27;
    v91 = v31;
    v92 = v32;
    do
    {
      if (!v32)
      {
        goto LABEL_70;
      }

      v34 = 0;
      do
      {
        if (!v94)
        {
          goto LABEL_69;
        }

        for (i = 0; i != v94; ++i)
        {
          if (!v96)
          {
            continue;
          }

          v100 = 0;
          v35 = i * v93;
          v104 = 0;
          do
          {
            if (!v99)
            {
              goto LABEL_67;
            }

            for (j = 0; j != v99; ++j)
            {
              v111 = 0.0;
              v110 = xmmword_259A4D02C;
              if (!v27)
              {
                v38 = 0;
                v64 = 5.0;
                goto LABEL_57;
              }

              v37 = 0;
              v38 = 0;
              do
              {
                v39 = v37 + v35;
                if ((a10 & 1) == 0 && (v39 < *(a7 + 8) || v39 >= v101 - *(a7 + 12)))
                {
                  goto LABEL_53;
                }

                v109 = 0.0;
                *v108 = xmmword_259A4D02C;
                if (v30)
                {
                  v40 = v30;
                  v41 = a7;
                  v42 = v108;
                  v43 = v104;
                  v44 = v40;
                  do
                  {
                    if ((a10 & 1) != 0 || v43 >= *(v41 + 16) && v43 < v105 - *(v41 + 20))
                    {
                      v46 = std::function<signed char ()(signed char)>::operator()(v120, *(a1 + Index));
                      v47 = *(__src.i64[0] + 4 * j) * v46;
                      v48 = 0.0;
                      if (v47 != 0.0)
                      {
                        __e = 0;
                        v49 = frexp(v47, &__e);
                        v50 = ldexp(v49, 11);
                        v48 = ldexp(round(v50), __e - 11);
                      }

                      *v42 = v48;
                      ++v38;
                    }

                    ++v43;
                    ++v42;
                    --v44;
                  }

                  while (v44);
                  v51 = *v108 + *&v108[1];
                  v52 = 0.0;
                  a7 = v41;
                  v30 = v102;
                  v27 = v103;
                  v35 = i * v93;
                  if ((*v108 + *&v108[1]) == 0.0)
                  {
                    goto LABEL_46;
                  }
                }

                else
                {
                  v51 = 5.0;
                }

                __e = 0;
                v53 = frexp(v51, &__e);
                v54 = ldexp(v53, 11);
                v52 = ldexp(round(v54), __e - 11);
LABEL_46:
                v55 = 0.0;
                v56 = 0.0;
                if ((v52 + *&v108[2]) != 0.0)
                {
                  __e = 0;
                  v57 = frexp((v52 + *&v108[2]), &__e);
                  v58 = ldexp(v57, 11);
                  v56 = ldexp(round(v58), __e - 11);
                }

                if ((*&v108[3] + v109) != 0.0)
                {
                  __e = 0;
                  v59 = frexp((*&v108[3] + v109), &__e);
                  v60 = ldexp(v59, 11);
                  v55 = ldexp(round(v60), __e - 11);
                }

                v61 = 0.0;
                if ((v56 + v55) != 0.0)
                {
                  __e = 0;
                  v62 = frexp((v56 + v55), &__e);
                  v63 = ldexp(v62, 11);
                  v61 = ldexp(round(v63), __e - 11);
                }

                *(&v110 + v37) = v61;
LABEL_53:
                ++v37;
              }

              while (v37 != v27);
              v64 = *&v110 + *(&v110 + 1);
              v65 = 0.0;
              if ((*&v110 + *(&v110 + 1)) != 0.0)
              {
LABEL_57:
                v108[0] = 0;
                v66 = frexp(v64, v108);
                v67 = ldexp(v66, 11);
                v65 = ldexp(round(v67), v108[0] - 11);
              }

              v68 = 0.0;
              v69 = 0.0;
              if ((v65 + *(&v110 + 2)) != 0.0)
              {
                v108[0] = 0;
                v70 = frexp((v65 + *(&v110 + 2)), v108);
                v71 = ldexp(v70, 11);
                v69 = ldexp(round(v71), v108[0] - 11);
              }

              if ((*(&v110 + 3) + v111) != 0.0)
              {
                v108[0] = 0;
                v72 = frexp((*(&v110 + 3) + v111), v108);
                v73 = ldexp(v72, 11);
                v68 = ldexp(round(v73), v108[0] - 11);
              }

              v74 = v69 + v68;
              v75 = 0.0;
              if (v74 != 0.0)
              {
                v108[0] = 0;
                v76 = frexp(v74, v108);
                v77 = ldexp(v76, 11);
                v75 = ldexp(round(v77), v108[0] - 11);
              }

              LOWORD(v108[0]) = MIL::ANEMachineIR::Interpreter::RecipTableRaw[v38];
              MIL::Fp16::GetFloat(v108);
              v79 = v75 * v78;
              v80 = 0.0;
              if (v79 != 0.0)
              {
                v108[0] = 0;
                v81 = frexp(v79, v108);
                v82 = ldexp(v81, 11);
                v80 = ldexp(round(v82), v108[0] - 11);
              }

              v83 = std::function<float ()(float)>::operator()(a12, v80);
              v85 = MIL::Fp16::FromFloat(v83, v84);
            }

LABEL_67:
            v104 += v95;
            ++v100;
          }

          while (v100 != v96);
        }

LABEL_69:
        ++v34;
        v32 = v92;
      }

      while (v34 != v92);
LABEL_70:
      ++v107;
    }

    while (v107 != v91);
  }

  if (__src.i64[0])
  {
    __src.i64[1] = __src.i64[0];
    operator delete(__src.i64[0]);
  }

  std::__function::__value_func<signed char ()(signed char)>::~__value_func[abi:ne200100](v120);
  if (__p)
  {
    v113 = __p;
    operator delete(__p);
  }

  if (v115)
  {
    v116 = v115;
    operator delete(v115);
  }

  v86 = *MEMORY[0x277D85DE8];
}

void sub_2599DD150(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *__p, uint64_t a39)
{
  if (__p)
  {
    operator delete(__p);
  }

  v41 = *(v39 - 208);
  if (v41)
  {
    *(v39 - 200) = v41;
    operator delete(v41);
  }

  v42 = *a16;
  if (*a16)
  {
    *(a16 + 8) = v42;
    operator delete(v42);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValueAvgPool<unsigned char,signed char>(uint64_t a1@<X0>, size_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, __int16 a8@<W7>, uint64_t a9@<X8>, char a10, char a11, uint64_t a12)
{
  v124 = *MEMORY[0x277D85DE8];
  v118 = a8;
  *(a9 + 8) = 0;
  *(a9 + 16) = 0;
  *a9 = 0;
  if (a2)
  {
    std::vector<unsigned char>::__append(a9, a2);
  }

  v17 = *a3;
  v18 = a3[1];
  v19 = v18 - *a3;
  if (v19 != a4[1] - *a4)
  {
    v87 = "x_rank == o_shape.size()";
    v88 = 64;
    goto LABEL_90;
  }

  v20 = v19 >> 3;
  v21 = (v19 >> 3) - 2;
  v22 = *a5;
  if (v21 != (*(a5 + 8) - *a5) >> 2)
  {
    v87 = "kernel_sizes.size() == num_spatial_dims";
    v88 = 65;
    goto LABEL_90;
  }

  v23 = *a6;
  if (v21 != (*(a6 + 8) - *a6) >> 2)
  {
    v87 = "strides.size() == num_spatial_dims";
    v88 = 66;
LABEL_90:
    __assert_rtn("ComputeValueAvgPool", "PePoolCpu.cpp", v88, v87);
  }

  if (v21 == 3)
  {
    if (*v22 == 1)
    {
      if (*v23 == 1)
      {
        v24 = 4 * v20 - 12;
        v25 = (v23 + v24);
        v93 = v23[v20 - 4];
        v26 = (v22 + v24);
        v27 = v22[v20 - 4];
        goto LABEL_13;
      }

      v89 = "sz == 1";
      v90 = 77;
    }

    else
    {
      v89 = "kd == 1";
      v90 = 76;
    }

    __assert_rtn("ComputeValueAvgPool", "PePoolCpu.cpp", v90, v89);
  }

  v28 = 4 * v20;
  if (v21 <= 1)
  {
    v30 = v28 - 12;
    v26 = (v22 + v30);
    v25 = (v23 + v30);
    v27 = 1;
    v93 = 1;
  }

  else
  {
    v27 = v22[v20 - 4];
    v29 = v28 - 12;
    v26 = (v22 + v29);
    v93 = v23[v20 - 4];
    v25 = (v23 + v29);
  }

LABEL_13:
  v95 = *v25;
  v31 = *v26;
  v115 = 0;
  v116 = 0;
  v117 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v115, v17, v18, v20);
  __p = 0;
  v113 = 0;
  v114 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&__p, *a4, a4[1], (a4[1] - *a4) >> 3);
  if (v20 == 3)
  {
    __src = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v115, v115 + 8, __src.i8, v122, 2);
    __src = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&__p, __p + 8, __src.i8, v122, 2);
  }

  else if (v20 == 4)
  {
    __src.i64[0] = 1;
    std::vector<unsigned long long>::insert(&v115, v115 + 8, &__src);
    __src.i64[0] = 1;
    std::vector<unsigned long long>::insert(&__p, __p + 8, &__src);
  }

  v32 = *__p;
  v33 = *(__p + 1);
  v94 = *(__p + 2);
  v96 = *(__p + 3);
  v99 = *(__p + 4);
  v101 = *(v115 + 2);
  v105 = *(v115 + 3);
  v120[0] = &unk_286AB26A0;
  v120[3] = v120;
  if (a11)
  {
    __src.i64[0] = &unk_286AB2720;
    p_src = &__src;
    std::__function::__value_func<signed char ()(signed char)>::swap[abi:ne200100](&__src, v120);
    std::__function::__value_func<signed char ()(signed char)>::~__value_func[abi:ne200100](&__src);
  }

  MIL::Fp16::GetFloat(&v118);
  LODWORD(v110) = v34;
  std::vector<float>::vector[abi:ne200100](&__src, v99);
  if (v32)
  {
    v107 = 0;
    v102 = v31;
    v103 = v27;
    v91 = v32;
    v92 = v33;
    do
    {
      if (!v33)
      {
        goto LABEL_79;
      }

      v35 = 0;
      do
      {
        if (!v94)
        {
          goto LABEL_78;
        }

        for (i = 0; i != v94; ++i)
        {
          if (!v96)
          {
            continue;
          }

          v100 = 0;
          v36 = i * v93;
          v104 = 0;
          do
          {
            if (!v99)
            {
              goto LABEL_76;
            }

            for (j = 0; j != v99; ++j)
            {
              v111 = 0.0;
              v110 = xmmword_259A4D02C;
              if (!v27)
              {
                v39 = 0;
                v64 = 5.0;
                goto LABEL_59;
              }

              v38 = 0;
              v39 = 0;
              do
              {
                v40 = v38 + v36;
                if ((a10 & 1) == 0 && (v40 < *(a7 + 8) || v40 >= v101 - *(a7 + 12)))
                {
                  goto LABEL_55;
                }

                v109 = 0.0;
                *v108 = xmmword_259A4D02C;
                if (v31)
                {
                  v41 = v31;
                  v42 = a7;
                  v43 = v108;
                  v44 = v104;
                  do
                  {
                    if ((a10 & 1) != 0 || v44 >= *(v42 + 16) && v44 < v105 - *(v42 + 20))
                    {
                      v46 = std::function<signed char ()(signed char)>::operator()(v120, *(a1 + Index));
                      v47 = *(__src.i64[0] + 4 * j) * v46;
                      v48 = 0.0;
                      if (v47 != 0.0)
                      {
                        __e = 0;
                        v49 = frexp(v47, &__e);
                        v50 = ldexp(v49, 11);
                        v48 = ldexp(round(v50), __e - 11);
                      }

                      *v43 = v48;
                      ++v39;
                    }

                    ++v44;
                    ++v43;
                    --v41;
                  }

                  while (v41);
                  v51 = *v108 + *&v108[1];
                  v52 = 0.0;
                  a7 = v42;
                  v31 = v102;
                  v27 = v103;
                  v36 = i * v93;
                  if ((*v108 + *&v108[1]) == 0.0)
                  {
                    goto LABEL_48;
                  }
                }

                else
                {
                  v51 = 5.0;
                }

                __e = 0;
                v53 = frexp(v51, &__e);
                v54 = ldexp(v53, 11);
                v52 = ldexp(round(v54), __e - 11);
LABEL_48:
                v55 = 0.0;
                v56 = 0.0;
                if ((v52 + *&v108[2]) != 0.0)
                {
                  __e = 0;
                  v57 = frexp((v52 + *&v108[2]), &__e);
                  v58 = ldexp(v57, 11);
                  v56 = ldexp(round(v58), __e - 11);
                }

                if ((*&v108[3] + v109) != 0.0)
                {
                  __e = 0;
                  v59 = frexp((*&v108[3] + v109), &__e);
                  v60 = ldexp(v59, 11);
                  v55 = ldexp(round(v60), __e - 11);
                }

                v61 = 0.0;
                if ((v56 + v55) != 0.0)
                {
                  __e = 0;
                  v62 = frexp((v56 + v55), &__e);
                  v63 = ldexp(v62, 11);
                  v61 = ldexp(round(v63), __e - 11);
                }

                *(&v110 + v38) = v61;
LABEL_55:
                ++v38;
              }

              while (v38 != v27);
              v64 = *&v110 + *(&v110 + 1);
              v65 = 0.0;
              if ((*&v110 + *(&v110 + 1)) != 0.0)
              {
LABEL_59:
                v108[0] = 0;
                v66 = frexp(v64, v108);
                v67 = ldexp(v66, 11);
                v65 = ldexp(round(v67), v108[0] - 11);
              }

              v68 = 0.0;
              v69 = 0.0;
              if ((v65 + *(&v110 + 2)) != 0.0)
              {
                v108[0] = 0;
                v70 = frexp((v65 + *(&v110 + 2)), v108);
                v71 = ldexp(v70, 11);
                v69 = ldexp(round(v71), v108[0] - 11);
              }

              if ((*(&v110 + 3) + v111) != 0.0)
              {
                v108[0] = 0;
                v72 = frexp((*(&v110 + 3) + v111), v108);
                v73 = ldexp(v72, 11);
                v68 = ldexp(round(v73), v108[0] - 11);
              }

              v74 = v69 + v68;
              v75 = 0.0;
              if (v74 != 0.0)
              {
                v108[0] = 0;
                v76 = frexp(v74, v108);
                v77 = ldexp(v76, 11);
                v75 = ldexp(round(v77), v108[0] - 11);
              }

              LOWORD(v108[0]) = MIL::ANEMachineIR::Interpreter::RecipTableRaw[v39];
              MIL::Fp16::GetFloat(v108);
              v79 = v75 * v78;
              v80 = 0.0;
              if (v79 != 0.0)
              {
                v108[0] = 0;
                v81 = frexp(v79, v108);
                v82 = ldexp(v81, 11);
                v80 = ldexp(round(v82), v108[0] - 11);
              }

              std::function<float ()(float)>::operator()(a12, v80);
              if (v83 == INFINITY)
              {
                LOBYTE(v84) = -1;
              }

              else if (v83 == -INFINITY)
              {
                LOBYTE(v84) = 0;
              }

              else
              {
                v85 = llroundf(v83);
                if (v85 >= 255)
                {
                  v85 = 255;
                }

                v84 = v85 & ~(v85 >> 31);
              }
            }

LABEL_76:
            v104 += v95;
            ++v100;
          }

          while (v100 != v96);
        }

LABEL_78:
        ++v35;
        v33 = v92;
      }

      while (v35 != v92);
LABEL_79:
      ++v107;
    }

    while (v107 != v91);
  }

  if (__src.i64[0])
  {
    __src.i64[1] = __src.i64[0];
    operator delete(__src.i64[0]);
  }

  std::__function::__value_func<signed char ()(signed char)>::~__value_func[abi:ne200100](v120);
  if (__p)
  {
    v113 = __p;
    operator delete(__p);
  }

  if (v115)
  {
    v116 = v115;
    operator delete(v115);
  }

  v86 = *MEMORY[0x277D85DE8];
}

void sub_2599DDA88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *__p, uint64_t a39)
{
  if (__p)
  {
    operator delete(__p);
  }

  v41 = *(v39 - 208);
  if (v41)
  {
    *(v39 - 200) = v41;
    operator delete(v41);
  }

  v42 = *a16;
  if (*a16)
  {
    *(a16 + 8) = v42;
    operator delete(v42);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValueAvgPool<signed char,signed char>(uint64_t a1@<X0>, size_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, __int16 a8@<W7>, uint64_t a9@<X8>, char a10, char a11, uint64_t a12)
{
  v124 = *MEMORY[0x277D85DE8];
  v118 = a8;
  *(a9 + 8) = 0;
  *(a9 + 16) = 0;
  *a9 = 0;
  if (a2)
  {
    std::vector<unsigned char>::__append(a9, a2);
  }

  v17 = *a3;
  v18 = a3[1];
  v19 = v18 - *a3;
  if (v19 != a4[1] - *a4)
  {
    v87 = "x_rank == o_shape.size()";
    v88 = 64;
    goto LABEL_92;
  }

  v20 = v19 >> 3;
  v21 = (v19 >> 3) - 2;
  v22 = *a5;
  if (v21 != (*(a5 + 8) - *a5) >> 2)
  {
    v87 = "kernel_sizes.size() == num_spatial_dims";
    v88 = 65;
    goto LABEL_92;
  }

  v23 = *a6;
  if (v21 != (*(a6 + 8) - *a6) >> 2)
  {
    v87 = "strides.size() == num_spatial_dims";
    v88 = 66;
LABEL_92:
    __assert_rtn("ComputeValueAvgPool", "PePoolCpu.cpp", v88, v87);
  }

  if (v21 == 3)
  {
    if (*v22 == 1)
    {
      if (*v23 == 1)
      {
        v24 = 4 * v20 - 12;
        v25 = (v23 + v24);
        v93 = v23[v20 - 4];
        v26 = (v22 + v24);
        v27 = v22[v20 - 4];
        goto LABEL_13;
      }

      v89 = "sz == 1";
      v90 = 77;
    }

    else
    {
      v89 = "kd == 1";
      v90 = 76;
    }

    __assert_rtn("ComputeValueAvgPool", "PePoolCpu.cpp", v90, v89);
  }

  v28 = 4 * v20;
  if (v21 <= 1)
  {
    v30 = v28 - 12;
    v26 = (v22 + v30);
    v25 = (v23 + v30);
    v27 = 1;
    v93 = 1;
  }

  else
  {
    v27 = v22[v20 - 4];
    v29 = v28 - 12;
    v26 = (v22 + v29);
    v93 = v23[v20 - 4];
    v25 = (v23 + v29);
  }

LABEL_13:
  v95 = *v25;
  v31 = *v26;
  v115 = 0;
  v116 = 0;
  v117 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v115, v17, v18, v20);
  __p = 0;
  v113 = 0;
  v114 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&__p, *a4, a4[1], (a4[1] - *a4) >> 3);
  if (v20 == 3)
  {
    __src = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v115, v115 + 8, __src.i8, v122, 2);
    __src = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&__p, __p + 8, __src.i8, v122, 2);
  }

  else if (v20 == 4)
  {
    __src.i64[0] = 1;
    std::vector<unsigned long long>::insert(&v115, v115 + 8, &__src);
    __src.i64[0] = 1;
    std::vector<unsigned long long>::insert(&__p, __p + 8, &__src);
  }

  v32 = *__p;
  v33 = *(__p + 1);
  v94 = *(__p + 2);
  v96 = *(__p + 3);
  v99 = *(__p + 4);
  v101 = *(v115 + 2);
  v105 = *(v115 + 3);
  v120[0] = &unk_286AB27A0;
  v120[3] = v120;
  if (a11)
  {
    __src.i64[0] = &unk_286AB2820;
    p_src = &__src;
    std::__function::__value_func<signed char ()(signed char)>::swap[abi:ne200100](&__src, v120);
    std::__function::__value_func<signed char ()(signed char)>::~__value_func[abi:ne200100](&__src);
  }

  MIL::Fp16::GetFloat(&v118);
  LODWORD(v110) = v34;
  std::vector<float>::vector[abi:ne200100](&__src, v99);
  if (v32)
  {
    v107 = 0;
    v102 = v31;
    v103 = v27;
    v91 = v32;
    v92 = v33;
    do
    {
      if (!v33)
      {
        goto LABEL_81;
      }

      v35 = 0;
      do
      {
        if (!v94)
        {
          goto LABEL_80;
        }

        for (i = 0; i != v94; ++i)
        {
          if (!v96)
          {
            continue;
          }

          v100 = 0;
          v36 = i * v93;
          v104 = 0;
          do
          {
            if (!v99)
            {
              goto LABEL_78;
            }

            for (j = 0; j != v99; ++j)
            {
              v111 = 0.0;
              v110 = xmmword_259A4D02C;
              if (!v27)
              {
                v39 = 0;
                v64 = 5.0;
                goto LABEL_59;
              }

              v38 = 0;
              v39 = 0;
              do
              {
                v40 = v38 + v36;
                if ((a10 & 1) == 0 && (v40 < *(a7 + 8) || v40 >= v101 - *(a7 + 12)))
                {
                  goto LABEL_55;
                }

                v109 = 0.0;
                *v108 = xmmword_259A4D02C;
                if (v31)
                {
                  v41 = v31;
                  v42 = a7;
                  v43 = v108;
                  v44 = v104;
                  do
                  {
                    if ((a10 & 1) != 0 || v44 >= *(v42 + 16) && v44 < v105 - *(v42 + 20))
                    {
                      v46 = std::function<signed char ()(signed char)>::operator()(v120, *(a1 + Index));
                      v47 = *(__src.i64[0] + 4 * j) * v46;
                      v48 = 0.0;
                      if (v47 != 0.0)
                      {
                        __e = 0;
                        v49 = frexp(v47, &__e);
                        v50 = ldexp(v49, 11);
                        v48 = ldexp(round(v50), __e - 11);
                      }

                      *v43 = v48;
                      ++v39;
                    }

                    ++v44;
                    ++v43;
                    --v41;
                  }

                  while (v41);
                  v51 = *v108 + *&v108[1];
                  v52 = 0.0;
                  a7 = v42;
                  v31 = v102;
                  v27 = v103;
                  v36 = i * v93;
                  if ((*v108 + *&v108[1]) == 0.0)
                  {
                    goto LABEL_48;
                  }
                }

                else
                {
                  v51 = 5.0;
                }

                __e = 0;
                v53 = frexp(v51, &__e);
                v54 = ldexp(v53, 11);
                v52 = ldexp(round(v54), __e - 11);
LABEL_48:
                v55 = 0.0;
                v56 = 0.0;
                if ((v52 + *&v108[2]) != 0.0)
                {
                  __e = 0;
                  v57 = frexp((v52 + *&v108[2]), &__e);
                  v58 = ldexp(v57, 11);
                  v56 = ldexp(round(v58), __e - 11);
                }

                if ((*&v108[3] + v109) != 0.0)
                {
                  __e = 0;
                  v59 = frexp((*&v108[3] + v109), &__e);
                  v60 = ldexp(v59, 11);
                  v55 = ldexp(round(v60), __e - 11);
                }

                v61 = 0.0;
                if ((v56 + v55) != 0.0)
                {
                  __e = 0;
                  v62 = frexp((v56 + v55), &__e);
                  v63 = ldexp(v62, 11);
                  v61 = ldexp(round(v63), __e - 11);
                }

                *(&v110 + v38) = v61;
LABEL_55:
                ++v38;
              }

              while (v38 != v27);
              v64 = *&v110 + *(&v110 + 1);
              v65 = 0.0;
              if ((*&v110 + *(&v110 + 1)) != 0.0)
              {
LABEL_59:
                v108[0] = 0;
                v66 = frexp(v64, v108);
                v67 = ldexp(v66, 11);
                v65 = ldexp(round(v67), v108[0] - 11);
              }

              v68 = 0.0;
              v69 = 0.0;
              if ((v65 + *(&v110 + 2)) != 0.0)
              {
                v108[0] = 0;
                v70 = frexp((v65 + *(&v110 + 2)), v108);
                v71 = ldexp(v70, 11);
                v69 = ldexp(round(v71), v108[0] - 11);
              }

              if ((*(&v110 + 3) + v111) != 0.0)
              {
                v108[0] = 0;
                v72 = frexp((*(&v110 + 3) + v111), v108);
                v73 = ldexp(v72, 11);
                v68 = ldexp(round(v73), v108[0] - 11);
              }

              v74 = v69 + v68;
              v75 = 0.0;
              if (v74 != 0.0)
              {
                v108[0] = 0;
                v76 = frexp(v74, v108);
                v77 = ldexp(v76, 11);
                v75 = ldexp(round(v77), v108[0] - 11);
              }

              LOWORD(v108[0]) = MIL::ANEMachineIR::Interpreter::RecipTableRaw[v39];
              MIL::Fp16::GetFloat(v108);
              v79 = v75 * v78;
              v80 = 0.0;
              if (v79 != 0.0)
              {
                v108[0] = 0;
                v81 = frexp(v79, v108);
                v82 = ldexp(v81, 11);
                v80 = ldexp(round(v82), v108[0] - 11);
              }

              std::function<float ()(float)>::operator()(a12, v80);
              if (v83 == INFINITY)
              {
                v84 = 127;
              }

              else if (v83 == -INFINITY)
              {
                v84 = 0x80;
              }

              else
              {
                v85 = llroundf(v83);
                if (v85 >= 127)
                {
                  v85 = 127;
                }

                if (v85 <= -128)
                {
                  v84 = 0x80;
                }

                else
                {
                  v84 = v85;
                }
              }
            }

LABEL_78:
            v104 += v95;
            ++v100;
          }

          while (v100 != v96);
        }

LABEL_80:
        ++v35;
        v33 = v92;
      }

      while (v35 != v92);
LABEL_81:
      ++v107;
    }

    while (v107 != v91);
  }

  if (__src.i64[0])
  {
    __src.i64[1] = __src.i64[0];
    operator delete(__src.i64[0]);
  }

  std::__function::__value_func<signed char ()(signed char)>::~__value_func[abi:ne200100](v120);
  if (__p)
  {
    v113 = __p;
    operator delete(__p);
  }

  if (v115)
  {
    v116 = v115;
    operator delete(v115);
  }

  v86 = *MEMORY[0x277D85DE8];
}

void sub_2599DE3C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *__p, uint64_t a39)
{
  if (__p)
  {
    operator delete(__p);
  }

  v41 = *(v39 - 208);
  if (v41)
  {
    *(v39 - 200) = v41;
    operator delete(v41);
  }

  v42 = *a16;
  if (*a16)
  {
    *(a16 + 8) = v42;
    operator delete(v42);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::PeMaxPoolCpu::Run(MIL::IROperation *a1@<X1>, void *a2@<X2>, _DWORD *a3@<X8>)
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
      std::string::basic_string[abi:ne200100]<0>(&v20, "pe_max_pool");
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

  if (*v6 != 0x705F78616D5F6570 || *(v6 + 3) != 0x6C6F6F705F78616DLL)
  {
    goto LABEL_10;
  }
}

void sub_2599DE644(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
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

void sub_2599DF4E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, int a25, __int16 a26, char a27, char a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52, uint64_t a53, uint64_t a54, uint64_t a55, char a56, uint64_t a57, uint64_t a58, uint64_t a59, char a60)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a17)
  {
    operator delete(a17);
  }

  if (a20)
  {
    operator delete(a20);
  }

  std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v60 - 120);
  if (a32 < 0)
  {
    operator delete(a24);
  }

  if (a33)
  {
    operator delete(a33);
  }

  if (a38)
  {
    operator delete(a38);
  }

  _Unwind_Resume(a1);
}

void MIL::ANEMachineIR::Interpreter::PeMinPoolCpu::Run(MIL::IROperation *a1@<X1>, void *a2@<X2>, _DWORD *a3@<X8>)
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
      std::string::basic_string[abi:ne200100]<0>(&v20, "pe_min_pool");
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

  if (*v6 != 0x705F6E696D5F6570 || *(v6 + 3) != 0x6C6F6F705F6E696DLL)
  {
    goto LABEL_10;
  }
}

void sub_2599DF9E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
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

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValueMinMaxPool<MIL::Fp16,MIL::Fp16>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, __int16 a7@<W6>, uint64_t a8@<X7>, void *a9@<X8>, char a10)
{
  v85 = *MEMORY[0x277D85DE8];
  v81 = a7;
  a9[1] = 0;
  a9[2] = 0;
  *a9 = 0;
  std::vector<MIL::Fp16>::resize(a9, a2);
  v14 = *a3;
  v15 = a3[1];
  v16 = v15 - *a3;
  if (v16 != a4[1] - *a4)
  {
    v56 = "x_rank == o_shape.size()";
    v57 = 189;
    goto LABEL_60;
  }

  v17 = v16 >> 3;
  v18 = (v16 >> 3) - 2;
  v19 = *a5;
  if (v18 != (*(a5 + 8) - *a5) >> 2)
  {
    v56 = "kernel_sizes.size() == num_spatial_dims";
    v57 = 190;
    goto LABEL_60;
  }

  v20 = *a6;
  if (v18 != (*(a6 + 8) - *a6) >> 2)
  {
    v56 = "strides.size() == num_spatial_dims";
    v57 = 191;
LABEL_60:
    __assert_rtn("ComputeValueMinMaxPool", "PePoolCpu.cpp", v57, v56);
  }

  if (v18 == 3)
  {
    if (*v19 == 1)
    {
      if (*v20 == 1)
      {
        v21 = 4 * v17 - 12;
        v22 = (v20 + v21);
        v62 = v20[v17 - 4];
        v23 = (v19 + v21);
        v73 = v19[v17 - 4];
        goto LABEL_11;
      }

      v58 = "sz == 1";
      v59 = 202;
    }

    else
    {
      v58 = "kd == 1";
      v59 = 201;
    }

    __assert_rtn("ComputeValueMinMaxPool", "PePoolCpu.cpp", v59, v58);
  }

  v24 = 4 * v17;
  if (v18 <= 1)
  {
    v26 = v24 - 12;
    v23 = (v19 + v26);
    v22 = (v20 + v26);
    v73 = 1;
    v62 = 1;
  }

  else
  {
    v73 = v19[v17 - 4];
    v25 = v24 - 12;
    v23 = (v19 + v25);
    v62 = v20[v17 - 4];
    v22 = (v20 + v25);
  }

LABEL_11:
  v64 = *v22;
  v27 = *v23;
  v78 = 0;
  v79 = 0;
  v80 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v78, v14, v15, v17);
  __p = 0;
  v76 = 0;
  v77 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&__p, *a4, a4[1], (a4[1] - *a4) >> 3);
  if (v17 == 3)
  {
    __src = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v78, v78 + 8, __src.i8, v84, 2);
    __src = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&__p, __p + 8, __src.i8, v84, 2);
  }

  else if (v17 == 4)
  {
    __src.i64[0] = 1;
    std::vector<unsigned long long>::insert(&v78, v78 + 8, &__src);
    __src.i64[0] = 1;
    std::vector<unsigned long long>::insert(&__p, __p + 8, &__src);
  }

  v28 = *__p;
  v29 = *(__p + 1);
  v63 = *(__p + 2);
  v65 = *(__p + 3);
  v30 = *(__p + 4);
  MIL::Fp16::GetFloat(&v81);
  __e = v31;
  std::vector<float>::vector[abi:ne200100](&__src, v30);
  if (v28)
  {
    v32 = v30;
    v33 = 0;
    v72 = v27;
    v60 = v28;
    v61 = v29;
    v66 = v32;
    do
    {
      if (v29)
      {
        v34 = 0;
        do
        {
          if (v63)
          {
            for (i = 0; i != v63; ++i)
            {
              if (v65)
              {
                v70 = 0;
                v71 = 0;
                do
                {
                  if (v32)
                  {
                    v35 = 0;
                    do
                    {
                      if (v73)
                      {
                        v36 = 0;
                        for (j = 0; j != v73; ++j)
                        {
                          if (v27)
                          {
                            v38 = 0;
                            v39 = v71;
                            do
                            {
                              if (v38 | j)
                              {
                                if (a10)
                                {
                                  LOWORD(__e) = v36;
                                  MIL::Fp16::GetFloat(&__e);
                                  v42 = v41;
                                  LOWORD(__e) = v40;
                                  MIL::Fp16::GetFloat(&__e);
                                  if (v42 < v43)
                                  {
                                    v40 = v40;
                                  }

                                  else
                                  {
                                    v40 = v36;
                                  }
                                }

                                else
                                {
                                  LOWORD(__e) = v36;
                                  MIL::Fp16::GetFloat(&__e);
                                  v45 = v44;
                                  LOWORD(__e) = v40;
                                  MIL::Fp16::GetFloat(&__e);
                                  if (v45 > v46)
                                  {
                                    v40 = v40;
                                  }

                                  else
                                  {
                                    v40 = v36;
                                  }
                                }
                              }

                              ++v38;
                              ++v39;
                              LODWORD(v36) = v40;
                              --v27;
                            }

                            while (v27);
                          }

                          else
                          {
                            v40 = v36;
                          }

                          v36 = v40;
                          v27 = v72;
                        }
                      }

                      else
                      {
                        LOWORD(v40) = 0;
                      }

                      LOWORD(__e) = v40;
                      MIL::Fp16::GetFloat(&__e);
                      v48 = v47 * *(__src.i64[0] + 4 * v35);
                      v49 = 0.0;
                      if (v48 != 0.0)
                      {
                        __e = 0;
                        v50 = frexp(v48, &__e);
                        v51 = ldexp(v50, 11);
                        v49 = ldexp(round(v51), __e - 11);
                      }

                      v52 = std::function<float ()(float)>::operator()(a8, v49);
                      v54 = MIL::Fp16::FromFloat(v52, v53);
                      v32 = v66;
                    }

                    while (v35 != v66);
                  }

                  ++v70;
                  v71 += v64;
                }

                while (v70 != v65);
              }
            }
          }

          ++v34;
          v29 = v61;
        }

        while (v34 != v61);
      }

      ++v33;
    }

    while (v33 != v60);
  }

  if (__src.i64[0])
  {
    __src.i64[1] = __src.i64[0];
    operator delete(__src.i64[0]);
  }

  if (__p)
  {
    v76 = __p;
    operator delete(__p);
  }

  if (v78)
  {
    v79 = v78;
    operator delete(v78);
  }

  v55 = *MEMORY[0x277D85DE8];
}

void sub_2599DFFD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, void *a29, uint64_t a30)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a29)
  {
    operator delete(a29);
  }

  v32 = *v30;
  if (*v30)
  {
    *(v30 + 8) = v32;
    operator delete(v32);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValueMinMaxPool<unsigned char,MIL::Fp16>(uint64_t a1@<X0>, size_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, __int16 a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10)
{
  v86 = *MEMORY[0x277D85DE8];
  v82 = a7;
  *(a9 + 8) = 0;
  *(a9 + 16) = 0;
  *a9 = 0;
  if (a2)
  {
    std::vector<unsigned char>::__append(a9, a2);
  }

  v69 = a9;
  v15 = *a3;
  v16 = a3[1];
  v17 = v16 - *a3;
  if (v17 != a4[1] - *a4)
  {
    v57 = "x_rank == o_shape.size()";
    v58 = 189;
    goto LABEL_69;
  }

  v18 = v17 >> 3;
  v19 = (v17 >> 3) - 2;
  v20 = *a5;
  if (v19 != (*(a5 + 8) - *a5) >> 2)
  {
    v57 = "kernel_sizes.size() == num_spatial_dims";
    v58 = 190;
    goto LABEL_69;
  }

  v21 = *a6;
  if (v19 != (*(a6 + 8) - *a6) >> 2)
  {
    v57 = "strides.size() == num_spatial_dims";
    v58 = 191;
LABEL_69:
    __assert_rtn("ComputeValueMinMaxPool", "PePoolCpu.cpp", v58, v57);
  }

  if (v19 == 3)
  {
    if (*v20 == 1)
    {
      if (*v21 == 1)
      {
        v22 = 4 * v18 - 12;
        v23 = (v21 + v22);
        v63 = v21[v18 - 4];
        v24 = (v20 + v22);
        v74 = v20[v18 - 4];
        goto LABEL_13;
      }

      v59 = "sz == 1";
      v60 = 202;
    }

    else
    {
      v59 = "kd == 1";
      v60 = 201;
    }

    __assert_rtn("ComputeValueMinMaxPool", "PePoolCpu.cpp", v60, v59);
  }

  v25 = 4 * v18;
  if (v19 <= 1)
  {
    v27 = v25 - 12;
    v24 = (v20 + v27);
    v23 = (v21 + v27);
    v74 = 1;
    v63 = 1;
  }

  else
  {
    v74 = v20[v18 - 4];
    v26 = v25 - 12;
    v24 = (v20 + v26);
    v63 = v21[v18 - 4];
    v23 = (v21 + v26);
  }

LABEL_13:
  v65 = *v23;
  v28 = *v24;
  v79 = 0;
  v80 = 0;
  v81 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v79, v15, v16, v18);
  __p = 0;
  v77 = 0;
  v78 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&__p, *a4, a4[1], (a4[1] - *a4) >> 3);
  if (v18 == 3)
  {
    __src = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v79, v79 + 8, __src.i8, v85, 2);
    __src = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&__p, __p + 8, __src.i8, v85, 2);
  }

  else if (v18 == 4)
  {
    __src.i64[0] = 1;
    std::vector<unsigned long long>::insert(&v79, v79 + 8, &__src);
    __src.i64[0] = 1;
    std::vector<unsigned long long>::insert(&__p, __p + 8, &__src);
  }

  v29 = *__p;
  v30 = *(__p + 1);
  v64 = *(__p + 2);
  v66 = *(__p + 3);
  v31 = *(__p + 4);
  MIL::Fp16::GetFloat(&v82);
  __e = v32;
  std::vector<float>::vector[abi:ne200100](&__src, v31);
  if (v29)
  {
    v33 = v31;
    v34 = 0;
    v73 = v28;
    v61 = v29;
    v62 = v30;
    v67 = v33;
    do
    {
      if (v30)
      {
        v35 = 0;
        do
        {
          if (v64)
          {
            for (i = 0; i != v64; ++i)
            {
              if (v66)
              {
                v71 = 0;
                v72 = 0;
                do
                {
                  if (v33)
                  {
                    v36 = 0;
                    do
                    {
                      if (v74)
                      {
                        v37 = 0;
                        v38 = 0;
                        do
                        {
                          if (v28)
                          {
                            v39 = 0;
                            v40 = v72;
                            do
                            {
                              if (v39 | v37)
                              {
                                if (a10)
                                {
                                  LOWORD(__e) = v38;
                                  MIL::Fp16::GetFloat(&__e);
                                  v43 = v42;
                                  LOWORD(__e) = v41;
                                  MIL::Fp16::GetFloat(&__e);
                                  if (v43 < v44)
                                  {
                                    v41 = v41;
                                  }

                                  else
                                  {
                                    v41 = v38;
                                  }
                                }

                                else
                                {
                                  LOWORD(__e) = v38;
                                  MIL::Fp16::GetFloat(&__e);
                                  v46 = v45;
                                  LOWORD(__e) = v41;
                                  MIL::Fp16::GetFloat(&__e);
                                  if (v46 > v47)
                                  {
                                    v41 = v41;
                                  }

                                  else
                                  {
                                    v41 = v38;
                                  }
                                }
                              }

                              ++v39;
                              ++v40;
                              LODWORD(v38) = v41;
                              --v28;
                            }

                            while (v28);
                          }

                          else
                          {
                            v41 = v38;
                          }

                          ++v37;
                          v38 = v41;
                          v28 = v73;
                        }

                        while (v37 != v74);
                      }

                      else
                      {
                        LOWORD(v41) = 0;
                      }

                      LOWORD(__e) = v41;
                      MIL::Fp16::GetFloat(&__e);
                      v49 = v48 * *(__src.i64[0] + 4 * v36);
                      v50 = 0.0;
                      if (v49 != 0.0)
                      {
                        __e = 0;
                        v51 = frexp(v49, &__e);
                        v52 = ldexp(v51, 11);
                        v50 = ldexp(round(v52), __e - 11);
                      }

                      std::function<float ()(float)>::operator()(a8, v50);
                      if (v53 == INFINITY)
                      {
                        LOBYTE(v54) = -1;
                      }

                      else if (v53 == -INFINITY)
                      {
                        LOBYTE(v54) = 0;
                      }

                      else
                      {
                        v55 = llroundf(v53);
                        if (v55 >= 255)
                        {
                          v55 = 255;
                        }

                        v54 = v55 & ~(v55 >> 31);
                      }

                      v33 = v67;
                    }

                    while (v36 != v67);
                  }

                  ++v71;
                  v72 += v65;
                }

                while (v71 != v66);
              }
            }
          }

          ++v35;
          v30 = v62;
        }

        while (v35 != v62);
      }

      ++v34;
    }

    while (v34 != v61);
  }

  if (__src.i64[0])
  {
    __src.i64[1] = __src.i64[0];
    operator delete(__src.i64[0]);
  }

  if (__p)
  {
    v77 = __p;
    operator delete(__p);
  }

  if (v79)
  {
    v80 = v79;
    operator delete(v79);
  }

  v56 = *MEMORY[0x277D85DE8];
}

void sub_2599E060C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, void *a29, uint64_t a30)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a29)
  {
    operator delete(a29);
  }

  v32 = *v30;
  if (*v30)
  {
    *(v30 + 8) = v32;
    operator delete(v32);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValueMinMaxPool<signed char,MIL::Fp16>(uint64_t a1@<X0>, size_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, __int16 a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10)
{
  v86 = *MEMORY[0x277D85DE8];
  v82 = a7;
  *(a9 + 8) = 0;
  *(a9 + 16) = 0;
  *a9 = 0;
  if (a2)
  {
    std::vector<unsigned char>::__append(a9, a2);
  }

  v69 = a9;
  v15 = *a3;
  v16 = a3[1];
  v17 = v16 - *a3;
  if (v17 != a4[1] - *a4)
  {
    v57 = "x_rank == o_shape.size()";
    v58 = 189;
    goto LABEL_71;
  }

  v18 = v17 >> 3;
  v19 = (v17 >> 3) - 2;
  v20 = *a5;
  if (v19 != (*(a5 + 8) - *a5) >> 2)
  {
    v57 = "kernel_sizes.size() == num_spatial_dims";
    v58 = 190;
    goto LABEL_71;
  }

  v21 = *a6;
  if (v19 != (*(a6 + 8) - *a6) >> 2)
  {
    v57 = "strides.size() == num_spatial_dims";
    v58 = 191;
LABEL_71:
    __assert_rtn("ComputeValueMinMaxPool", "PePoolCpu.cpp", v58, v57);
  }

  if (v19 == 3)
  {
    if (*v20 == 1)
    {
      if (*v21 == 1)
      {
        v22 = 4 * v18 - 12;
        v23 = (v21 + v22);
        v63 = v21[v18 - 4];
        v24 = (v20 + v22);
        v74 = v20[v18 - 4];
        goto LABEL_13;
      }

      v59 = "sz == 1";
      v60 = 202;
    }

    else
    {
      v59 = "kd == 1";
      v60 = 201;
    }

    __assert_rtn("ComputeValueMinMaxPool", "PePoolCpu.cpp", v60, v59);
  }

  v25 = 4 * v18;
  if (v19 <= 1)
  {
    v27 = v25 - 12;
    v24 = (v20 + v27);
    v23 = (v21 + v27);
    v74 = 1;
    v63 = 1;
  }

  else
  {
    v74 = v20[v18 - 4];
    v26 = v25 - 12;
    v24 = (v20 + v26);
    v63 = v21[v18 - 4];
    v23 = (v21 + v26);
  }

LABEL_13:
  v65 = *v23;
  v28 = *v24;
  v79 = 0;
  v80 = 0;
  v81 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v79, v15, v16, v18);
  __p = 0;
  v77 = 0;
  v78 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&__p, *a4, a4[1], (a4[1] - *a4) >> 3);
  if (v18 == 3)
  {
    __src = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v79, v79 + 8, __src.i8, v85, 2);
    __src = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&__p, __p + 8, __src.i8, v85, 2);
  }

  else if (v18 == 4)
  {
    __src.i64[0] = 1;
    std::vector<unsigned long long>::insert(&v79, v79 + 8, &__src);
    __src.i64[0] = 1;
    std::vector<unsigned long long>::insert(&__p, __p + 8, &__src);
  }

  v29 = *__p;
  v30 = *(__p + 1);
  v64 = *(__p + 2);
  v66 = *(__p + 3);
  v31 = *(__p + 4);
  MIL::Fp16::GetFloat(&v82);
  __e = v32;
  std::vector<float>::vector[abi:ne200100](&__src, v31);
  if (v29)
  {
    v33 = v31;
    v34 = 0;
    v73 = v28;
    v61 = v29;
    v62 = v30;
    v67 = v33;
    do
    {
      if (v30)
      {
        v35 = 0;
        do
        {
          if (v64)
          {
            for (i = 0; i != v64; ++i)
            {
              if (v66)
              {
                v71 = 0;
                v72 = 0;
                do
                {
                  if (v33)
                  {
                    v36 = 0;
                    do
                    {
                      if (v74)
                      {
                        v37 = 0;
                        v38 = 0;
                        do
                        {
                          if (v28)
                          {
                            v39 = 0;
                            v40 = v72;
                            do
                            {
                              if (v39 | v37)
                              {
                                if (a10)
                                {
                                  LOWORD(__e) = v38;
                                  MIL::Fp16::GetFloat(&__e);
                                  v43 = v42;
                                  LOWORD(__e) = v41;
                                  MIL::Fp16::GetFloat(&__e);
                                  if (v43 < v44)
                                  {
                                    v41 = v41;
                                  }

                                  else
                                  {
                                    v41 = v38;
                                  }
                                }

                                else
                                {
                                  LOWORD(__e) = v38;
                                  MIL::Fp16::GetFloat(&__e);
                                  v46 = v45;
                                  LOWORD(__e) = v41;
                                  MIL::Fp16::GetFloat(&__e);
                                  if (v46 > v47)
                                  {
                                    v41 = v41;
                                  }

                                  else
                                  {
                                    v41 = v38;
                                  }
                                }
                              }

                              ++v39;
                              ++v40;
                              LODWORD(v38) = v41;
                              --v28;
                            }

                            while (v28);
                          }

                          else
                          {
                            v41 = v38;
                          }

                          ++v37;
                          v38 = v41;
                          v28 = v73;
                        }

                        while (v37 != v74);
                      }

                      else
                      {
                        LOWORD(v41) = 0;
                      }

                      LOWORD(__e) = v41;
                      MIL::Fp16::GetFloat(&__e);
                      v49 = v48 * *(__src.i64[0] + 4 * v36);
                      v50 = 0.0;
                      if (v49 != 0.0)
                      {
                        __e = 0;
                        v51 = frexp(v49, &__e);
                        v52 = ldexp(v51, 11);
                        v50 = ldexp(round(v52), __e - 11);
                      }

                      std::function<float ()(float)>::operator()(a8, v50);
                      if (v53 == INFINITY)
                      {
                        v54 = 127;
                      }

                      else if (v53 == -INFINITY)
                      {
                        v54 = 0x80;
                      }

                      else
                      {
                        v55 = llroundf(v53);
                        if (v55 >= 127)
                        {
                          v55 = 127;
                        }

                        if (v55 <= -128)
                        {
                          v54 = 0x80;
                        }

                        else
                        {
                          v54 = v55;
                        }
                      }

                      v33 = v67;
                    }

                    while (v36 != v67);
                  }

                  ++v71;
                  v72 += v65;
                }

                while (v71 != v66);
              }
            }
          }

          ++v35;
          v30 = v62;
        }

        while (v35 != v62);
      }

      ++v34;
    }

    while (v34 != v61);
  }

  if (__src.i64[0])
  {
    __src.i64[1] = __src.i64[0];
    operator delete(__src.i64[0]);
  }

  if (__p)
  {
    v77 = __p;
    operator delete(__p);
  }

  if (v79)
  {
    v80 = v79;
    operator delete(v79);
  }

  v56 = *MEMORY[0x277D85DE8];
}

void sub_2599E0C54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, void *a29, uint64_t a30)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a29)
  {
    operator delete(a29);
  }

  v32 = *v30;
  if (*v30)
  {
    *(v30 + 8) = v32;
    operator delete(v32);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValueMinMaxPool<MIL::Fp16,unsigned char>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, __int16 a7@<W6>, uint64_t a8@<X7>, void *a9@<X8>, char a10)
{
  v77 = *MEMORY[0x277D85DE8];
  v73 = a7;
  a9[1] = 0;
  a9[2] = 0;
  *a9 = 0;
  std::vector<MIL::Fp16>::resize(a9, a2);
  v14 = *a3;
  v15 = a3[1];
  v16 = v15 - *a3;
  if (v16 != a4[1] - *a4)
  {
    v48 = "x_rank == o_shape.size()";
    v49 = 189;
    goto LABEL_55;
  }

  v17 = v16 >> 3;
  v18 = (v16 >> 3) - 2;
  v19 = *a5;
  if (v18 != (*(a5 + 8) - *a5) >> 2)
  {
    v48 = "kernel_sizes.size() == num_spatial_dims";
    v49 = 190;
    goto LABEL_55;
  }

  v20 = *a6;
  if (v18 != (*(a6 + 8) - *a6) >> 2)
  {
    v48 = "strides.size() == num_spatial_dims";
    v49 = 191;
LABEL_55:
    __assert_rtn("ComputeValueMinMaxPool", "PePoolCpu.cpp", v49, v48);
  }

  if (v18 == 3)
  {
    if (*v19 == 1)
    {
      if (*v20 == 1)
      {
        v21 = 4 * v17 - 12;
        v22 = (v20 + v21);
        v54 = v20[v17 - 4];
        v23 = (v19 + v21);
        v65 = v19[v17 - 4];
        goto LABEL_11;
      }

      v50 = "sz == 1";
      v51 = 202;
    }

    else
    {
      v50 = "kd == 1";
      v51 = 201;
    }

    __assert_rtn("ComputeValueMinMaxPool", "PePoolCpu.cpp", v51, v50);
  }

  if (v18 <= 1)
  {
    v25 = 4 * v17 - 12;
    v23 = (v19 + v25);
    v22 = (v20 + v25);
    v65 = 1;
    v54 = 1;
  }

  else
  {
    v65 = v19[v17 - 4];
    v24 = 4 * v17 - 12;
    v23 = (v19 + v24);
    v54 = v20[v17 - 4];
    v22 = (v20 + v24);
  }

LABEL_11:
  v56 = *v22;
  v26 = *v23;
  v70 = 0;
  v71 = 0;
  v72 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v70, v14, v15, v17);
  __p = 0;
  v68 = 0;
  v69 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&__p, *a4, a4[1], (a4[1] - *a4) >> 3);
  if (v17 == 3)
  {
    __src = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v70, v70 + 8, __src.i8, v76, 2);
    __src = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&__p, __p + 8, __src.i8, v76, 2);
  }

  else if (v17 == 4)
  {
    __src.i64[0] = 1;
    std::vector<unsigned long long>::insert(&v70, v70 + 8, &__src);
    __src.i64[0] = 1;
    std::vector<unsigned long long>::insert(&__p, __p + 8, &__src);
  }

  v27 = *__p;
  v28 = *(__p + 1);
  v55 = *(__p + 2);
  v57 = *(__p + 3);
  v29 = *(__p + 4);
  MIL::Fp16::GetFloat(&v73);
  __e = v30;
  std::vector<float>::vector[abi:ne200100](&__src, v29);
  if (v27)
  {
    v31 = 0;
    v64 = v26;
    v52 = v27;
    v53 = v28;
    v58 = v29;
    do
    {
      if (v28)
      {
        v32 = 0;
        do
        {
          if (v55)
          {
            for (i = 0; i != v55; ++i)
            {
              if (v57)
              {
                v63 = 0;
                for (j = 0; j != v57; ++j)
                {
                  if (v29)
                  {
                    v33 = 0;
                    do
                    {
                      v34 = a10 - 1;
                      if (v65)
                      {
                        v35 = 0;
                        v34 = a10 - 1;
                        do
                        {
                          if (v26)
                          {
                            v36 = 0;
                            v37 = v63;
                            do
                            {
                              v39 = *(a1 + Index);
                              if (v36 | v35)
                              {
                                if (a10)
                                {
                                  if (v34 <= v39)
                                  {
                                    v34 = *(a1 + Index);
                                  }
                                }

                                else if (v34 >= v39)
                                {
                                  v34 = *(a1 + Index);
                                }
                              }

                              else
                              {
                                v34 = *(a1 + Index);
                              }

                              ++v36;
                              ++v37;
                              --v26;
                            }

                            while (v26);
                          }

                          ++v35;
                          v26 = v64;
                        }

                        while (v35 != v65);
                      }

                      v40 = *(__src.i64[0] + 4 * v33) * v34;
                      v41 = 0.0;
                      if (v40 != 0.0)
                      {
                        __e = 0;
                        v42 = frexp(v40, &__e);
                        v43 = ldexp(v42, 11);
                        v41 = ldexp(round(v43), __e - 11);
                      }

                      v44 = std::function<float ()(float)>::operator()(a8, v41);
                      v29 = v58;
                      v46 = MIL::Fp16::FromFloat(v44, v45);
                    }

                    while (v33 != v58);
                  }

                  v63 += v56;
                }
              }
            }
          }

          ++v32;
          v28 = v53;
        }

        while (v32 != v53);
      }

      ++v31;
    }

    while (v31 != v52);
  }

  if (__src.i64[0])
  {
    __src.i64[1] = __src.i64[0];
    operator delete(__src.i64[0]);
  }

  if (__p)
  {
    v68 = __p;
    operator delete(__p);
  }

  if (v70)
  {
    v71 = v70;
    operator delete(v70);
  }

  v47 = *MEMORY[0x277D85DE8];
}

void sub_2599E11FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, void *a29, uint64_t a30)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a29)
  {
    operator delete(a29);
  }

  v31 = *a18;
  if (*a18)
  {
    *(a18 + 8) = v31;
    operator delete(v31);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValueMinMaxPool<unsigned char,unsigned char>(uint64_t a1@<X0>, size_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, __int16 a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10)
{
  v78 = *MEMORY[0x277D85DE8];
  v74 = a7;
  *(a9 + 8) = 0;
  *(a9 + 16) = 0;
  *a9 = 0;
  if (a2)
  {
    std::vector<unsigned char>::__append(a9, a2);
  }

  v14 = *a3;
  v15 = a3[1];
  v16 = v15 - *a3;
  if (v16 != a4[1] - *a4)
  {
    v49 = "x_rank == o_shape.size()";
    v50 = 189;
    goto LABEL_64;
  }

  v17 = v16 >> 3;
  v18 = (v16 >> 3) - 2;
  v19 = *a5;
  if (v18 != (*(a5 + 8) - *a5) >> 2)
  {
    v49 = "kernel_sizes.size() == num_spatial_dims";
    v50 = 190;
    goto LABEL_64;
  }

  v20 = *a6;
  if (v18 != (*(a6 + 8) - *a6) >> 2)
  {
    v49 = "strides.size() == num_spatial_dims";
    v50 = 191;
LABEL_64:
    __assert_rtn("ComputeValueMinMaxPool", "PePoolCpu.cpp", v50, v49);
  }

  if (v18 == 3)
  {
    if (*v19 == 1)
    {
      if (*v20 == 1)
      {
        v21 = 4 * v17 - 12;
        v22 = (v20 + v21);
        v55 = v20[v17 - 4];
        v23 = (v19 + v21);
        v66 = v19[v17 - 4];
        goto LABEL_13;
      }

      v51 = "sz == 1";
      v52 = 202;
    }

    else
    {
      v51 = "kd == 1";
      v52 = 201;
    }

    __assert_rtn("ComputeValueMinMaxPool", "PePoolCpu.cpp", v52, v51);
  }

  v24 = 4 * v17;
  if (v18 <= 1)
  {
    v26 = v24 - 12;
    v23 = (v19 + v26);
    v22 = (v20 + v26);
    v66 = 1;
    v55 = 1;
  }

  else
  {
    v66 = v19[v17 - 4];
    v25 = v24 - 12;
    v23 = (v19 + v25);
    v55 = v20[v17 - 4];
    v22 = (v20 + v25);
  }

LABEL_13:
  v57 = *v22;
  v27 = *v23;
  v71 = 0;
  v72 = 0;
  v73 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v71, v14, v15, v17);
  __p = 0;
  v69 = 0;
  v70 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&__p, *a4, a4[1], (a4[1] - *a4) >> 3);
  if (v17 == 3)
  {
    __src = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v71, v71 + 8, __src.i8, v77, 2);
    __src = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&__p, __p + 8, __src.i8, v77, 2);
  }

  else if (v17 == 4)
  {
    __src.i64[0] = 1;
    std::vector<unsigned long long>::insert(&v71, v71 + 8, &__src);
    __src.i64[0] = 1;
    std::vector<unsigned long long>::insert(&__p, __p + 8, &__src);
  }

  v28 = *__p;
  v29 = *(__p + 1);
  v56 = *(__p + 2);
  v58 = *(__p + 3);
  v30 = *(__p + 4);
  MIL::Fp16::GetFloat(&v74);
  __e = v31;
  std::vector<float>::vector[abi:ne200100](&__src, v30);
  if (v28)
  {
    v32 = 0;
    v65 = v27;
    v53 = v28;
    v54 = v29;
    v59 = v30;
    do
    {
      if (v29)
      {
        v33 = 0;
        do
        {
          if (v56)
          {
            for (i = 0; i != v56; ++i)
            {
              if (v58)
              {
                v64 = 0;
                for (j = 0; j != v58; ++j)
                {
                  if (v30)
                  {
                    v34 = 0;
                    do
                    {
                      v35 = a10 - 1;
                      if (v66)
                      {
                        v36 = 0;
                        v35 = a10 - 1;
                        do
                        {
                          if (v27)
                          {
                            v37 = 0;
                            v38 = v64;
                            do
                            {
                              v40 = *(a1 + Index);
                              if (v37 | v36)
                              {
                                if (a10)
                                {
                                  if (v35 <= v40)
                                  {
                                    v35 = *(a1 + Index);
                                  }
                                }

                                else if (v35 >= v40)
                                {
                                  v35 = *(a1 + Index);
                                }
                              }

                              else
                              {
                                v35 = *(a1 + Index);
                              }

                              ++v37;
                              ++v38;
                              --v27;
                            }

                            while (v27);
                          }

                          ++v36;
                          v27 = v65;
                        }

                        while (v36 != v66);
                      }

                      v41 = *(__src.i64[0] + 4 * v34) * v35;
                      v42 = 0.0;
                      if (v41 != 0.0)
                      {
                        __e = 0;
                        v43 = frexp(v41, &__e);
                        v44 = ldexp(v43, 11);
                        v42 = ldexp(round(v44), __e - 11);
                      }

                      std::function<float ()(float)>::operator()(a8, v42);
                      v30 = v59;
                      if (v45 == INFINITY)
                      {
                        LOBYTE(v46) = -1;
                      }

                      else if (v45 == -INFINITY)
                      {
                        LOBYTE(v46) = 0;
                      }

                      else
                      {
                        v47 = llroundf(v45);
                        if (v47 >= 255)
                        {
                          v47 = 255;
                        }

                        v46 = v47 & ~(v47 >> 31);
                      }
                    }

                    while (v34 != v59);
                  }

                  v64 += v57;
                }
              }
            }
          }

          ++v33;
          v29 = v54;
        }

        while (v33 != v54);
      }

      ++v32;
    }

    while (v32 != v53);
  }

  if (__src.i64[0])
  {
    __src.i64[1] = __src.i64[0];
    operator delete(__src.i64[0]);
  }

  if (__p)
  {
    v69 = __p;
    operator delete(__p);
  }

  if (v71)
  {
    v72 = v71;
    operator delete(v71);
  }

  v48 = *MEMORY[0x277D85DE8];
}

void sub_2599E17CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, void *a29, uint64_t a30)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a29)
  {
    operator delete(a29);
  }

  v31 = *a18;
  if (*a18)
  {
    *(a18 + 8) = v31;
    operator delete(v31);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValueMinMaxPool<signed char,unsigned char>(uint64_t a1@<X0>, size_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, __int16 a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10)
{
  v78 = *MEMORY[0x277D85DE8];
  v74 = a7;
  *(a9 + 8) = 0;
  *(a9 + 16) = 0;
  *a9 = 0;
  if (a2)
  {
    std::vector<unsigned char>::__append(a9, a2);
  }

  v14 = *a3;
  v15 = a3[1];
  v16 = v15 - *a3;
  if (v16 != a4[1] - *a4)
  {
    v49 = "x_rank == o_shape.size()";
    v50 = 189;
    goto LABEL_66;
  }

  v17 = v16 >> 3;
  v18 = (v16 >> 3) - 2;
  v19 = *a5;
  if (v18 != (*(a5 + 8) - *a5) >> 2)
  {
    v49 = "kernel_sizes.size() == num_spatial_dims";
    v50 = 190;
    goto LABEL_66;
  }

  v20 = *a6;
  if (v18 != (*(a6 + 8) - *a6) >> 2)
  {
    v49 = "strides.size() == num_spatial_dims";
    v50 = 191;
LABEL_66:
    __assert_rtn("ComputeValueMinMaxPool", "PePoolCpu.cpp", v50, v49);
  }

  if (v18 == 3)
  {
    if (*v19 == 1)
    {
      if (*v20 == 1)
      {
        v21 = 4 * v17 - 12;
        v22 = (v20 + v21);
        v55 = v20[v17 - 4];
        v23 = (v19 + v21);
        v66 = v19[v17 - 4];
        goto LABEL_13;
      }

      v51 = "sz == 1";
      v52 = 202;
    }

    else
    {
      v51 = "kd == 1";
      v52 = 201;
    }

    __assert_rtn("ComputeValueMinMaxPool", "PePoolCpu.cpp", v52, v51);
  }

  v24 = 4 * v17;
  if (v18 <= 1)
  {
    v26 = v24 - 12;
    v23 = (v19 + v26);
    v22 = (v20 + v26);
    v66 = 1;
    v55 = 1;
  }

  else
  {
    v66 = v19[v17 - 4];
    v25 = v24 - 12;
    v23 = (v19 + v25);
    v55 = v20[v17 - 4];
    v22 = (v20 + v25);
  }

LABEL_13:
  v57 = *v22;
  v27 = *v23;
  v71 = 0;
  v72 = 0;
  v73 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v71, v14, v15, v17);
  __p = 0;
  v69 = 0;
  v70 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&__p, *a4, a4[1], (a4[1] - *a4) >> 3);
  if (v17 == 3)
  {
    __src = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v71, v71 + 8, __src.i8, v77, 2);
    __src = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&__p, __p + 8, __src.i8, v77, 2);
  }

  else if (v17 == 4)
  {
    __src.i64[0] = 1;
    std::vector<unsigned long long>::insert(&v71, v71 + 8, &__src);
    __src.i64[0] = 1;
    std::vector<unsigned long long>::insert(&__p, __p + 8, &__src);
  }

  v28 = *__p;
  v29 = *(__p + 1);
  v56 = *(__p + 2);
  v58 = *(__p + 3);
  v30 = *(__p + 4);
  MIL::Fp16::GetFloat(&v74);
  __e = v31;
  std::vector<float>::vector[abi:ne200100](&__src, v30);
  if (v28)
  {
    v32 = 0;
    v65 = v27;
    v53 = v28;
    v54 = v29;
    v59 = v30;
    do
    {
      if (v29)
      {
        v33 = 0;
        do
        {
          if (v56)
          {
            for (i = 0; i != v56; ++i)
            {
              if (v58)
              {
                v64 = 0;
                for (j = 0; j != v58; ++j)
                {
                  if (v30)
                  {
                    v34 = 0;
                    do
                    {
                      v35 = a10 - 1;
                      if (v66)
                      {
                        v36 = 0;
                        v35 = a10 - 1;
                        do
                        {
                          if (v27)
                          {
                            v37 = 0;
                            v38 = v64;
                            do
                            {
                              v40 = *(a1 + Index);
                              if (v37 | v36)
                              {
                                if (a10)
                                {
                                  if (v35 <= v40)
                                  {
                                    v35 = *(a1 + Index);
                                  }
                                }

                                else if (v35 >= v40)
                                {
                                  v35 = *(a1 + Index);
                                }
                              }

                              else
                              {
                                v35 = *(a1 + Index);
                              }

                              ++v37;
                              ++v38;
                              --v27;
                            }

                            while (v27);
                          }

                          ++v36;
                          v27 = v65;
                        }

                        while (v36 != v66);
                      }

                      v41 = *(__src.i64[0] + 4 * v34) * v35;
                      v42 = 0.0;
                      if (v41 != 0.0)
                      {
                        __e = 0;
                        v43 = frexp(v41, &__e);
                        v44 = ldexp(v43, 11);
                        v42 = ldexp(round(v44), __e - 11);
                      }

                      std::function<float ()(float)>::operator()(a8, v42);
                      v30 = v59;
                      if (v45 == INFINITY)
                      {
                        v46 = 127;
                      }

                      else if (v45 == -INFINITY)
                      {
                        v46 = 0x80;
                      }

                      else
                      {
                        v47 = llroundf(v45);
                        if (v47 >= 127)
                        {
                          v47 = 127;
                        }

                        if (v47 <= -128)
                        {
                          v46 = 0x80;
                        }

                        else
                        {
                          v46 = v47;
                        }
                      }
                    }

                    while (v34 != v59);
                  }

                  v64 += v57;
                }
              }
            }
          }

          ++v33;
          v29 = v54;
        }

        while (v33 != v54);
      }

      ++v32;
    }

    while (v32 != v53);
  }

  if (__src.i64[0])
  {
    __src.i64[1] = __src.i64[0];
    operator delete(__src.i64[0]);
  }

  if (__p)
  {
    v69 = __p;
    operator delete(__p);
  }

  if (v71)
  {
    v72 = v71;
    operator delete(v71);
  }

  v48 = *MEMORY[0x277D85DE8];
}

void sub_2599E1DA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, void *a29, uint64_t a30)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a29)
  {
    operator delete(a29);
  }

  v31 = *a18;
  if (*a18)
  {
    *(a18 + 8) = v31;
    operator delete(v31);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValueMinMaxPool<MIL::Fp16,signed char>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, __int16 a7@<W6>, uint64_t a8@<X7>, void *a9@<X8>, char a10)
{
  v80 = *MEMORY[0x277D85DE8];
  v76 = a7;
  a9[1] = 0;
  a9[2] = 0;
  *a9 = 0;
  std::vector<MIL::Fp16>::resize(a9, a2);
  v14 = *a3;
  v15 = a3[1];
  v16 = v15 - *a3;
  if (v16 != a4[1] - *a4)
  {
    v50 = "x_rank == o_shape.size()";
    v51 = 189;
    goto LABEL_58;
  }

  v17 = v16 >> 3;
  v18 = (v16 >> 3) - 2;
  v19 = *a5;
  if (v18 != (*(a5 + 8) - *a5) >> 2)
  {
    v50 = "kernel_sizes.size() == num_spatial_dims";
    v51 = 190;
    goto LABEL_58;
  }

  v20 = *a6;
  if (v18 != (*(a6 + 8) - *a6) >> 2)
  {
    v50 = "strides.size() == num_spatial_dims";
    v51 = 191;
LABEL_58:
    __assert_rtn("ComputeValueMinMaxPool", "PePoolCpu.cpp", v51, v50);
  }

  if (v18 == 3)
  {
    if (*v19 == 1)
    {
      if (*v20 == 1)
      {
        v21 = 4 * v17 - 12;
        v22 = (v20 + v21);
        v56 = v20[v17 - 4];
        v23 = (v19 + v21);
        v68 = v19[v17 - 4];
        goto LABEL_11;
      }

      v52 = "sz == 1";
      v53 = 202;
    }

    else
    {
      v52 = "kd == 1";
      v53 = 201;
    }

    __assert_rtn("ComputeValueMinMaxPool", "PePoolCpu.cpp", v53, v52);
  }

  if (v18 <= 1)
  {
    v25 = 4 * v17 - 12;
    v23 = (v19 + v25);
    v22 = (v20 + v25);
    v68 = 1;
    v56 = 1;
  }

  else
  {
    v68 = v19[v17 - 4];
    v24 = 4 * v17 - 12;
    v23 = (v19 + v24);
    v56 = v20[v17 - 4];
    v22 = (v20 + v24);
  }

LABEL_11:
  v58 = *v22;
  v26 = *v23;
  v73 = 0;
  v74 = 0;
  v75 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v73, v14, v15, v17);
  __p = 0;
  v71 = 0;
  v72 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&__p, *a4, a4[1], (a4[1] - *a4) >> 3);
  if (v17 == 3)
  {
    __src = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v73, v73 + 8, __src.i8, v79, 2);
    __src = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&__p, __p + 8, __src.i8, v79, 2);
  }

  else if (v17 == 4)
  {
    __src.i64[0] = 1;
    std::vector<unsigned long long>::insert(&v73, v73 + 8, &__src);
    __src.i64[0] = 1;
    std::vector<unsigned long long>::insert(&__p, __p + 8, &__src);
  }

  v27 = *__p;
  v28 = *(__p + 1);
  v57 = *(__p + 2);
  v59 = *(__p + 3);
  v29 = *(__p + 4);
  MIL::Fp16::GetFloat(&v76);
  __e = v30;
  std::vector<float>::vector[abi:ne200100](&__src, v29);
  if (v27)
  {
    v31 = 0;
    if (a10)
    {
      v32 = 0x80;
    }

    else
    {
      v32 = 127;
    }

    v65 = v32;
    v67 = v26;
    v54 = v27;
    v55 = v28;
    v60 = v29;
    do
    {
      if (v28)
      {
        v33 = 0;
        do
        {
          if (v57)
          {
            for (i = 0; i != v57; ++i)
            {
              if (v59)
              {
                v66 = 0;
                for (j = 0; j != v59; ++j)
                {
                  if (v29)
                  {
                    v34 = 0;
                    do
                    {
                      v35 = v65;
                      if (v68)
                      {
                        v36 = 0;
                        v35 = v65;
                        do
                        {
                          if (v26)
                          {
                            v37 = 0;
                            v38 = v66;
                            do
                            {
                              v40 = *(a1 + Index);
                              if (v37 | v36)
                              {
                                v41 = *(a1 + Index);
                                if (a10)
                                {
                                  if (v35 <= v40)
                                  {
                                    v35 = *(a1 + Index);
                                  }
                                }

                                else if (v35 > v40)
                                {
                                  v35 = *(a1 + Index);
                                }
                              }

                              else
                              {
                                v35 = *(a1 + Index);
                              }

                              ++v37;
                              ++v38;
                              --v26;
                            }

                            while (v26);
                          }

                          ++v36;
                          v26 = v67;
                        }

                        while (v36 != v68);
                      }

                      v42 = *(__src.i64[0] + 4 * v34) * v35;
                      v43 = 0.0;
                      if (v42 != 0.0)
                      {
                        __e = 0;
                        v44 = frexp(v42, &__e);
                        v45 = ldexp(v44, 11);
                        v43 = ldexp(round(v45), __e - 11);
                      }

                      v46 = std::function<float ()(float)>::operator()(a8, v43);
                      v29 = v60;
                      v48 = MIL::Fp16::FromFloat(v46, v47);
                    }

                    while (v34 != v60);
                  }

                  v66 += v58;
                }
              }
            }
          }

          ++v33;
          v28 = v55;
        }

        while (v33 != v55);
      }

      ++v31;
    }

    while (v31 != v54);
  }

  if (__src.i64[0])
  {
    __src.i64[1] = __src.i64[0];
    operator delete(__src.i64[0]);
  }

  if (__p)
  {
    v71 = __p;
    operator delete(__p);
  }

  if (v73)
  {
    v74 = v73;
    operator delete(v73);
  }

  v49 = *MEMORY[0x277D85DE8];
}

void sub_2599E2340(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, void *a29, uint64_t a30)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a29)
  {
    operator delete(a29);
  }

  v31 = *a18;
  if (*a18)
  {
    *(a18 + 8) = v31;
    operator delete(v31);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValueMinMaxPool<unsigned char,signed char>(uint64_t a1@<X0>, size_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, __int16 a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10)
{
  v81 = *MEMORY[0x277D85DE8];
  v77 = a7;
  *(a9 + 8) = 0;
  *(a9 + 16) = 0;
  *a9 = 0;
  if (a2)
  {
    std::vector<unsigned char>::__append(a9, a2);
  }

  v14 = *a3;
  v15 = a3[1];
  v16 = v15 - *a3;
  if (v16 != a4[1] - *a4)
  {
    v51 = "x_rank == o_shape.size()";
    v52 = 189;
    goto LABEL_67;
  }

  v17 = v16 >> 3;
  v18 = (v16 >> 3) - 2;
  v19 = *a5;
  if (v18 != (*(a5 + 8) - *a5) >> 2)
  {
    v51 = "kernel_sizes.size() == num_spatial_dims";
    v52 = 190;
    goto LABEL_67;
  }

  v20 = *a6;
  if (v18 != (*(a6 + 8) - *a6) >> 2)
  {
    v51 = "strides.size() == num_spatial_dims";
    v52 = 191;
LABEL_67:
    __assert_rtn("ComputeValueMinMaxPool", "PePoolCpu.cpp", v52, v51);
  }

  if (v18 == 3)
  {
    if (*v19 == 1)
    {
      if (*v20 == 1)
      {
        v21 = 4 * v17 - 12;
        v22 = (v20 + v21);
        v57 = v20[v17 - 4];
        v23 = (v19 + v21);
        v69 = v19[v17 - 4];
        goto LABEL_13;
      }

      v53 = "sz == 1";
      v54 = 202;
    }

    else
    {
      v53 = "kd == 1";
      v54 = 201;
    }

    __assert_rtn("ComputeValueMinMaxPool", "PePoolCpu.cpp", v54, v53);
  }

  v24 = 4 * v17;
  if (v18 <= 1)
  {
    v26 = v24 - 12;
    v23 = (v19 + v26);
    v22 = (v20 + v26);
    v69 = 1;
    v57 = 1;
  }

  else
  {
    v69 = v19[v17 - 4];
    v25 = v24 - 12;
    v23 = (v19 + v25);
    v57 = v20[v17 - 4];
    v22 = (v20 + v25);
  }

LABEL_13:
  v59 = *v22;
  v27 = *v23;
  v74 = 0;
  v75 = 0;
  v76 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v74, v14, v15, v17);
  __p = 0;
  v72 = 0;
  v73 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&__p, *a4, a4[1], (a4[1] - *a4) >> 3);
  if (v17 == 3)
  {
    __src = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v74, v74 + 8, __src.i8, v80, 2);
    __src = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&__p, __p + 8, __src.i8, v80, 2);
  }

  else if (v17 == 4)
  {
    __src.i64[0] = 1;
    std::vector<unsigned long long>::insert(&v74, v74 + 8, &__src);
    __src.i64[0] = 1;
    std::vector<unsigned long long>::insert(&__p, __p + 8, &__src);
  }

  v28 = *__p;
  v29 = *(__p + 1);
  v58 = *(__p + 2);
  v60 = *(__p + 3);
  v30 = *(__p + 4);
  MIL::Fp16::GetFloat(&v77);
  __e = v31;
  std::vector<float>::vector[abi:ne200100](&__src, v30);
  if (v28)
  {
    v32 = 0;
    if (a10)
    {
      v33 = 0x80;
    }

    else
    {
      v33 = 127;
    }

    v66 = v33;
    v68 = v27;
    v55 = v28;
    v56 = v29;
    v61 = v30;
    do
    {
      if (v29)
      {
        v34 = 0;
        do
        {
          if (v58)
          {
            for (i = 0; i != v58; ++i)
            {
              if (v60)
              {
                v67 = 0;
                for (j = 0; j != v60; ++j)
                {
                  if (v30)
                  {
                    v35 = 0;
                    do
                    {
                      v36 = v66;
                      if (v69)
                      {
                        v37 = 0;
                        v36 = v66;
                        do
                        {
                          if (v27)
                          {
                            v38 = 0;
                            v39 = v67;
                            do
                            {
                              v41 = *(a1 + Index);
                              if (v38 | v37)
                              {
                                v42 = *(a1 + Index);
                                if (a10)
                                {
                                  if (v36 <= v41)
                                  {
                                    v36 = *(a1 + Index);
                                  }
                                }

                                else if (v36 > v41)
                                {
                                  v36 = *(a1 + Index);
                                }
                              }

                              else
                              {
                                v36 = *(a1 + Index);
                              }

                              ++v38;
                              ++v39;
                              --v27;
                            }

                            while (v27);
                          }

                          ++v37;
                          v27 = v68;
                        }

                        while (v37 != v69);
                      }

                      v43 = *(__src.i64[0] + 4 * v35) * v36;
                      v44 = 0.0;
                      if (v43 != 0.0)
                      {
                        __e = 0;
                        v45 = frexp(v43, &__e);
                        v46 = ldexp(v45, 11);
                        v44 = ldexp(round(v46), __e - 11);
                      }

                      std::function<float ()(float)>::operator()(a8, v44);
                      v30 = v61;
                      if (v47 == INFINITY)
                      {
                        LOBYTE(v48) = -1;
                      }

                      else if (v47 == -INFINITY)
                      {
                        LOBYTE(v48) = 0;
                      }

                      else
                      {
                        v49 = llroundf(v47);
                        if (v49 >= 255)
                        {
                          v49 = 255;
                        }

                        v48 = v49 & ~(v49 >> 31);
                      }
                    }

                    while (v35 != v61);
                  }

                  v67 += v59;
                }
              }
            }
          }

          ++v34;
          v29 = v56;
        }

        while (v34 != v56);
      }

      ++v32;
    }

    while (v32 != v55);
  }

  if (__src.i64[0])
  {
    __src.i64[1] = __src.i64[0];
    operator delete(__src.i64[0]);
  }

  if (__p)
  {
    v72 = __p;
    operator delete(__p);
  }

  if (v74)
  {
    v75 = v74;
    operator delete(v74);
  }

  v50 = *MEMORY[0x277D85DE8];
}

void sub_2599E291C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, void *a29, uint64_t a30)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a29)
  {
    operator delete(a29);
  }

  v31 = *a18;
  if (*a18)
  {
    *(a18 + 8) = v31;
    operator delete(v31);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValueMinMaxPool<signed char,signed char>(uint64_t a1@<X0>, size_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, __int16 a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10)
{
  v81 = *MEMORY[0x277D85DE8];
  v77 = a7;
  *(a9 + 8) = 0;
  *(a9 + 16) = 0;
  *a9 = 0;
  if (a2)
  {
    std::vector<unsigned char>::__append(a9, a2);
  }

  v14 = *a3;
  v15 = a3[1];
  v16 = v15 - *a3;
  if (v16 != a4[1] - *a4)
  {
    v51 = "x_rank == o_shape.size()";
    v52 = 189;
    goto LABEL_69;
  }

  v17 = v16 >> 3;
  v18 = (v16 >> 3) - 2;
  v19 = *a5;
  if (v18 != (*(a5 + 8) - *a5) >> 2)
  {
    v51 = "kernel_sizes.size() == num_spatial_dims";
    v52 = 190;
    goto LABEL_69;
  }

  v20 = *a6;
  if (v18 != (*(a6 + 8) - *a6) >> 2)
  {
    v51 = "strides.size() == num_spatial_dims";
    v52 = 191;
LABEL_69:
    __assert_rtn("ComputeValueMinMaxPool", "PePoolCpu.cpp", v52, v51);
  }

  if (v18 == 3)
  {
    if (*v19 == 1)
    {
      if (*v20 == 1)
      {
        v21 = 4 * v17 - 12;
        v22 = (v20 + v21);
        v57 = v20[v17 - 4];
        v23 = (v19 + v21);
        v69 = v19[v17 - 4];
        goto LABEL_13;
      }

      v53 = "sz == 1";
      v54 = 202;
    }

    else
    {
      v53 = "kd == 1";
      v54 = 201;
    }

    __assert_rtn("ComputeValueMinMaxPool", "PePoolCpu.cpp", v54, v53);
  }

  v24 = 4 * v17;
  if (v18 <= 1)
  {
    v26 = v24 - 12;
    v23 = (v19 + v26);
    v22 = (v20 + v26);
    v69 = 1;
    v57 = 1;
  }

  else
  {
    v69 = v19[v17 - 4];
    v25 = v24 - 12;
    v23 = (v19 + v25);
    v57 = v20[v17 - 4];
    v22 = (v20 + v25);
  }

LABEL_13:
  v59 = *v22;
  v27 = *v23;
  v74 = 0;
  v75 = 0;
  v76 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v74, v14, v15, v17);
  __p = 0;
  v72 = 0;
  v73 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&__p, *a4, a4[1], (a4[1] - *a4) >> 3);
  if (v17 == 3)
  {
    __src = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v74, v74 + 8, __src.i8, v80, 2);
    __src = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&__p, __p + 8, __src.i8, v80, 2);
  }

  else if (v17 == 4)
  {
    __src.i64[0] = 1;
    std::vector<unsigned long long>::insert(&v74, v74 + 8, &__src);
    __src.i64[0] = 1;
    std::vector<unsigned long long>::insert(&__p, __p + 8, &__src);
  }

  v28 = *__p;
  v29 = *(__p + 1);
  v58 = *(__p + 2);
  v60 = *(__p + 3);
  v30 = *(__p + 4);
  MIL::Fp16::GetFloat(&v77);
  __e = v31;
  std::vector<float>::vector[abi:ne200100](&__src, v30);
  if (v28)
  {
    v32 = 0;
    if (a10)
    {
      v33 = 0x80;
    }

    else
    {
      v33 = 127;
    }

    v66 = v33;
    v68 = v27;
    v55 = v28;
    v56 = v29;
    v61 = v30;
    do
    {
      if (v29)
      {
        v34 = 0;
        do
        {
          if (v58)
          {
            for (i = 0; i != v58; ++i)
            {
              if (v60)
              {
                v67 = 0;
                for (j = 0; j != v60; ++j)
                {
                  if (v30)
                  {
                    v35 = 0;
                    do
                    {
                      v36 = v66;
                      if (v69)
                      {
                        v37 = 0;
                        v36 = v66;
                        do
                        {
                          if (v27)
                          {
                            v38 = 0;
                            v39 = v67;
                            do
                            {
                              v41 = *(a1 + Index);
                              if (v38 | v37)
                              {
                                v42 = *(a1 + Index);
                                if (a10)
                                {
                                  if (v36 <= v41)
                                  {
                                    v36 = *(a1 + Index);
                                  }
                                }

                                else if (v36 > v41)
                                {
                                  v36 = *(a1 + Index);
                                }
                              }

                              else
                              {
                                v36 = *(a1 + Index);
                              }

                              ++v38;
                              ++v39;
                              --v27;
                            }

                            while (v27);
                          }

                          ++v37;
                          v27 = v68;
                        }

                        while (v37 != v69);
                      }

                      v43 = *(__src.i64[0] + 4 * v35) * v36;
                      v44 = 0.0;
                      if (v43 != 0.0)
                      {
                        __e = 0;
                        v45 = frexp(v43, &__e);
                        v46 = ldexp(v45, 11);
                        v44 = ldexp(round(v46), __e - 11);
                      }

                      std::function<float ()(float)>::operator()(a8, v44);
                      v30 = v61;
                      if (v47 == INFINITY)
                      {
                        v48 = 127;
                      }

                      else if (v47 == -INFINITY)
                      {
                        v48 = 0x80;
                      }

                      else
                      {
                        v49 = llroundf(v47);
                        if (v49 >= 127)
                        {
                          v49 = 127;
                        }

                        if (v49 <= -128)
                        {
                          v48 = 0x80;
                        }

                        else
                        {
                          v48 = v49;
                        }
                      }
                    }

                    while (v35 != v61);
                  }

                  v67 += v59;
                }
              }
            }
          }

          ++v34;
          v29 = v56;
        }

        while (v34 != v56);
      }

      ++v32;
    }

    while (v32 != v55);
  }

  if (__src.i64[0])
  {
    __src.i64[1] = __src.i64[0];
    operator delete(__src.i64[0]);
  }

  if (__p)
  {
    v72 = __p;
    operator delete(__p);
  }

  if (v74)
  {
    v75 = v74;
    operator delete(v74);
  }

  v50 = *MEMORY[0x277D85DE8];
}

void sub_2599E2F00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, void *a29, uint64_t a30)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a29)
  {
    operator delete(a29);
  }

  v31 = *a18;
  if (*a18)
  {
    *(a18 + 8) = v31;
    operator delete(v31);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<float>::vector[abi:ne200100](void *result, unint64_t a2)
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

void sub_2599E30C0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValueAvgPool<MIL::Fp16,MIL::Fp16>(MIL::Fp16 const*,unsigned long long,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,std::vector<int> const&,std::vector<int> const&,std::array<std::pair<int,int>,3ul> const&,MIL::Fp16,BOOL,BOOL,std::function<float ()(float)>)::{lambda(MIL::Fp16)#1},std::allocator<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValueAvgPool<MIL::Fp16,MIL::Fp16>(MIL::Fp16 const*,unsigned long long,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,std::vector<int> const&,std::vector<int> const&,std::array<std::pair<int,int>,3ul> const&,MIL::Fp16,BOOL,BOOL,std::function<float ()(float)>)::{lambda(MIL::Fp16)#1}>,MIL::Fp16 ()(MIL::Fp16)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}