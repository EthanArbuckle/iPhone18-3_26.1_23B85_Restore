void ANEMachineIR::Validators::ParseNeMatmulParamValues(ANEMachineIR::Validators *this@<X0>, const MIL::IROperation *a2@<X1>, MIL::ValidationResult *a3@<X8>)
{
  v44 = 0;
  LOBYTE(v45[0]) = 0;
  v46 = 0;
  LOBYTE(v47) = 0;
  v48 = 0;
  *v43 = 0;
  v43[4] = 0;
  ANEMachineIR::Validators::ParseNeBatchMatmulParamValues(this, v43, a3);
  if (!MIL::ValidationResult::IsGood(a3))
  {
    goto LABEL_52;
  }

  MEMORY[0x259CA8F00](a3);
  *a2 = *v43;
  *(a2 + 2) = *&v43[2];
  *(a2 + 6) = v44;
  std::__optional_storage_base<std::vector<MIL::Fp16>,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<std::vector<MIL::Fp16>,false> const&>(a2 + 8, v45);
  *(a2 + 10) = v47;
  *(a2 + 44) = v48;
  std::string::basic_string[abi:ne200100]<0>(&v40, "bias");
  ParameterValue = MIL::IROperation::TryGetParameterValue();
  v8 = ParameterValue;
  if (SHIBYTE(v42) < 0)
  {
    operator delete(v40);
    if (!v8)
    {
      goto LABEL_29;
    }
  }

  else if (!ParameterValue)
  {
LABEL_29:
    LOWORD(__p) = MIL::Fp16::FromFloat(ParameterValue, 0.0);
    v36.__r_.__value_.__s.__data_[0] = 0;
    std::string::basic_string[abi:ne200100]<0>(&v40, "bias");
    MIL::ANEMachineIR::ExpectCorrectlyTypedOptional<MIL::Fp16>(this, &v36, &__p, a3);
    if (SHIBYTE(v42) < 0)
    {
      operator delete(v40);
    }

    if (MIL::ValidationResult::IsGood(a3))
    {
      MEMORY[0x259CA8F00](a3);
      v23 = __p;
      if ((*(a2 + 50) & 1) == 0)
      {
        *(a2 + 50) = 1;
      }

      *(a2 + 24) = v23;
      if (*(a2 + 80) == 1)
      {
        v24 = *(a2 + 7);
        if (v24)
        {
          *(a2 + 8) = v24;
          operator delete(v24);
        }

        *(a2 + 80) = 0;
      }

LABEL_51:
      MIL::ValidationResult::ValidationResult(a3);
      goto LABEL_52;
    }

    goto LABEL_52;
  }

  ParameterValue = (*(*v8 + 40))(v8);
  if (!ParameterValue)
  {
    goto LABEL_29;
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "bias");
  ParameterType = MIL::IROperation::GetParameterType();
  v10 = MIL::IRValueType::AsTensorType(ParameterType);
  v11 = (*(*v10 + 96))(v10);
  v40 = 0;
  v41 = 0;
  v42 = 0;
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&v40, *v11, v11[1], (v11[1] - *v11) >> 3);
  if (SHIBYTE(v39) < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(&v36, "y");
  v12 = MIL::IROperation::GetParameterType();
  v13 = MIL::IRValueType::AsTensorType(v12);
  v14 = (*(*v13 + 96))(v13);
  __p = 0;
  v38 = 0;
  v39 = 0;
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&__p, *v14, v14[1], (v14[1] - *v14) >> 3);
  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }

  if (v41 - v40 == 8)
  {
    if ((v38 - __p) <= 8)
    {
      std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
    }

    if (*v40 == *(__p + 1))
    {
      std::string::basic_string[abi:ne200100]<0>(&v36, "bias");
      v25 = MIL::IROperation::GetParameterValue();
      MIL::IRValue::AsTensor(v25);
      v26 = MIL::IRTensorValue::GetDataView<MIL::Fp16>();
      v28 = v27;
      v31.__r_.__value_.__r.__words[0] = v26;
      v31.__r_.__value_.__l.__size_ = v27;
      if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v36.__r_.__value_.__l.__data_);
      }

      memset(&v36, 0, sizeof(v36));
      std::optional<std::vector<MIL::Fp16>>::operator=[abi:ne200100]<std::vector<MIL::Fp16>,void>(a2 + 56, &v36);
      if (v36.__r_.__value_.__r.__words[0])
      {
        v36.__r_.__value_.__l.__size_ = v36.__r_.__value_.__r.__words[0];
        operator delete(v36.__r_.__value_.__l.__data_);
      }

      std::vector<MIL::Fp16>::reserve(a2 + 7, v28);
      if (v28)
      {
        v29 = 0;
        do
        {
          v30 = MIL::Util::Span<MIL::Fp16 const,18446744073709551615ul>::At(&v31, v29);
          std::vector<MIL::Fp16>::push_back[abi:ne200100](a2 + 7, v30);
          ++v29;
        }

        while (v29 < v31.__r_.__value_.__l.__size_);
      }

      if (*(a2 + 50) == 1)
      {
        *(a2 + 50) = 0;
      }

      if (__p)
      {
        v38 = __p;
        operator delete(__p);
      }

      if (v40)
      {
        v41 = v40;
        operator delete(v40);
      }

      goto LABEL_51;
    }
  }

  LocationPtr = MIL::IRObject::GetLocationPtr(this);
  v16 = LocationPtr[1];
  v34 = *LocationPtr;
  v35 = v16;
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if ((v38 - __p) <= 8)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v17 = MIL::IRDimension::AsConstant(*(__p + 1));
  v18 = (*(*v17 + 48))(v17);
  std::to_string(&v31, v18);
  v19 = std::string::insert(&v31, 0, "Bias tensor must be of shape (");
  v20 = *&v19->__r_.__value_.__l.__data_;
  v36.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
  *&v36.__r_.__value_.__l.__data_ = v20;
  v19->__r_.__value_.__l.__size_ = 0;
  v19->__r_.__value_.__r.__words[2] = 0;
  v19->__r_.__value_.__r.__words[0] = 0;
  v21 = std::string::append(&v36, ",)");
  v22 = *&v21->__r_.__value_.__l.__data_;
  v33 = v21->__r_.__value_.__r.__words[2];
  *v32 = v22;
  v21->__r_.__value_.__l.__size_ = 0;
  v21->__r_.__value_.__r.__words[2] = 0;
  v21->__r_.__value_.__r.__words[0] = 0;
  MEMORY[0x259CA8EE0](a3, &v34, 319, v32);
  if (SHIBYTE(v33) < 0)
  {
    operator delete(v32[0]);
  }

  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  }

  if (__p)
  {
    v38 = __p;
    operator delete(__p);
  }

  if (v40)
  {
    v41 = v40;
    operator delete(v40);
  }

LABEL_52:
  if (v46 == 1)
  {
    if (v45[0])
    {
      v45[1] = v45[0];
      operator delete(v45[0]);
    }
  }
}

void sub_259990C94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (__p)
  {
    operator delete(__p);
  }

  v39 = *(v37 - 120);
  if (v39)
  {
    *(v37 - 112) = v39;
    operator delete(v39);
  }

  if (*(v37 - 64) == 1)
  {
    v40 = *(v37 - 88);
    if (v40)
    {
      *(v37 - 80) = v40;
      operator delete(v40);
    }
  }

  _Unwind_Resume(exception_object);
}

void ANEMachineIR::Validators::ValidateNeBatchMatmul(uint64_t *a1@<X0>, uint64_t a2@<X1>, ANEMachineIR::Utils *a3@<X2>, ANEMachineIR::Utils *a4@<X3>, uint64_t a5@<X4>, ANEMachineIR::Utils *a6@<X5>, char *a7@<X6>, uint64_t a8@<X8>)
{
  if (a7[1])
  {
    v13 = *a7;
  }

  else
  {
    v13 = 0;
  }

  if (a7[3])
  {
    v14 = a7[2];
  }

  else
  {
    v14 = 0;
  }

  if (!MIL::ValidationResult::IsGood(a8))
  {
    return;
  }

  MEMORY[0x259CA8F00](a8);
  ANEMachineIR::Utils::GetStaticTensorShape(a3, v15, &v101);
  ANEMachineIR::Utils::GetStaticTensorShape(a4, v16, &v99);
  ANEMachineIR::Utils::GetStaticTensorShape(a6, v17, &v97);
  v18 = v102;
  v19 = v101;
  if (v102 == v101)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v100 - v99) <= 8)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v20 = *(v102 - 1);
  v21 = *(v100 - 2);
  if (v20 == v21 || v20 == v21 + 1)
  {
    memset(&v92, 0, sizeof(v92));
    v24 = *a1;
    v23 = a1[1];
    if (v23)
    {
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      v18 = v102;
    }

    v92.__r_.__value_.__l.__size_ = 0;
    memset(&v108, 0, sizeof(v108));
    std::vector<unsigned long long>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned long long const*>,std::__wrap_iter<unsigned long long const*>>(&v108, v19, (v18 - 2), (v18 - v19 - 16) >> 3);
    memset(&v107, 0, sizeof(v107));
    std::vector<unsigned long long>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned long long const*>,std::__wrap_iter<unsigned long long const*>>(&v107, v99, (v100 - 16), (v100 - 16 - v99) >> 3);
    v91.__r_.__value_.__r.__words[0] = v24;
    v91.__r_.__value_.__l.__size_ = v23;
    if (v23)
    {
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    ANEMachineIR::Utils::BroadcastShapes(&v91, &v108, &v107, &v92, &v103);
    if (v91.__r_.__value_.__l.__size_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v91.__r_.__value_.__l.__size_);
    }

    if ((MIL::ValidationResult::IsGood(&v103) & 1) == 0)
    {
      *(a8 + 8) = *&v103.__r_.__value_.__r.__words[1];
      *&v103.__r_.__value_.__r.__words[1] = 0uLL;
      *(a8 + 24) = v104;
      *(a8 + 40) = v105;
      v104 = 0uLL;
      v105 = 0;
      *a8 = MEMORY[0x277D24E58] + 16;
      *(a8 + 48) = v106;
LABEL_78:
      MEMORY[0x259CA8F00](&v103);
      if (v107.__r_.__value_.__r.__words[0])
      {
        v107.__r_.__value_.__l.__size_ = v107.__r_.__value_.__r.__words[0];
        operator delete(v107.__r_.__value_.__l.__data_);
      }

      if (v108.__r_.__value_.__r.__words[0])
      {
        v108.__r_.__value_.__l.__size_ = v108.__r_.__value_.__r.__words[0];
        operator delete(v108.__r_.__value_.__l.__data_);
      }

      if (v23)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v23);
      }

      if (MIL::ValidationResult::IsGood(a8))
      {
        MEMORY[0x259CA8F00](a8);
        v59 = v97;
        v60 = v98 - v97;
        if (v92.__r_.__value_.__l.__size_ - v92.__r_.__value_.__r.__words[0] == v98 - v97)
        {
          if (!memcmp(v92.__r_.__value_.__l.__data_, v97, v92.__r_.__value_.__l.__size_ - v92.__r_.__value_.__r.__words[0]))
          {
            MIL::ValidationResult::ValidationResult(a8);
          }

          else
          {
            ANEMachineIR::Utils::ShapeString(&v97);
            ANEMachineIR::Utils::ShapeString(&v92);
            v61 = a1[1];
            v83 = *a1;
            v84 = v61;
            if (v61)
            {
              atomic_fetch_add_explicit(&v61->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            std::operator+<char>();
            v62 = std::string::append(&v90, " does not match inferred shape ");
            v63 = *&v62->__r_.__value_.__l.__data_;
            v91.__r_.__value_.__r.__words[2] = v62->__r_.__value_.__r.__words[2];
            *&v91.__r_.__value_.__l.__data_ = v63;
            v62->__r_.__value_.__l.__size_ = 0;
            v62->__r_.__value_.__r.__words[2] = 0;
            v62->__r_.__value_.__r.__words[0] = 0;
            if ((v108.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v64 = &v108;
            }

            else
            {
              v64 = v108.__r_.__value_.__r.__words[0];
            }

            if ((v108.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = HIBYTE(v108.__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = v108.__r_.__value_.__l.__size_;
            }

            v66 = std::string::append(&v91, v64, size);
            v67 = *&v66->__r_.__value_.__l.__data_;
            v107.__r_.__value_.__r.__words[2] = v66->__r_.__value_.__r.__words[2];
            *&v107.__r_.__value_.__l.__data_ = v67;
            v66->__r_.__value_.__l.__size_ = 0;
            v66->__r_.__value_.__r.__words[2] = 0;
            v66->__r_.__value_.__r.__words[0] = 0;
            v68 = std::string::append(&v107, ".");
            v69 = *&v68->__r_.__value_.__l.__data_;
            v82 = v68->__r_.__value_.__r.__words[2];
            *v81 = v69;
            v68->__r_.__value_.__l.__size_ = 0;
            v68->__r_.__value_.__r.__words[2] = 0;
            v68->__r_.__value_.__r.__words[0] = 0;
            MEMORY[0x259CA8EE0](a8, &v83, 313, v81);
            if (SHIBYTE(v82) < 0)
            {
              operator delete(v81[0]);
            }

            if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v107.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v91.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v90.__r_.__value_.__l.__data_);
            }

            if (v84)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v84);
            }

            if (SHIBYTE(v108.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v108.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v103.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v103.__r_.__value_.__l.__data_);
            }
          }
        }

        else
        {
          v70 = a1[1];
          v87 = *a1;
          v88 = v70;
          if (v70)
          {
            atomic_fetch_add_explicit(&v70->__shared_owners_, 1uLL, memory_order_relaxed);
            v60 = v98 - v59;
          }

          std::to_string(&v91, v60 >> 3);
          v71 = std::string::insert(&v91, 0, "Output rank ");
          v72 = *&v71->__r_.__value_.__l.__data_;
          v107.__r_.__value_.__r.__words[2] = v71->__r_.__value_.__r.__words[2];
          *&v107.__r_.__value_.__l.__data_ = v72;
          v71->__r_.__value_.__l.__size_ = 0;
          v71->__r_.__value_.__r.__words[2] = 0;
          v71->__r_.__value_.__r.__words[0] = 0;
          v73 = std::string::append(&v107, " does not match rank of inferred shape ");
          v74 = *&v73->__r_.__value_.__l.__data_;
          v108.__r_.__value_.__r.__words[2] = v73->__r_.__value_.__r.__words[2];
          *&v108.__r_.__value_.__l.__data_ = v74;
          v73->__r_.__value_.__l.__size_ = 0;
          v73->__r_.__value_.__r.__words[2] = 0;
          v73->__r_.__value_.__r.__words[0] = 0;
          std::to_string(&v90, (v92.__r_.__value_.__l.__size_ - v92.__r_.__value_.__r.__words[0]) >> 3);
          if ((v90.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v75 = &v90;
          }

          else
          {
            v75 = v90.__r_.__value_.__r.__words[0];
          }

          if ((v90.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v76 = HIBYTE(v90.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v76 = v90.__r_.__value_.__l.__size_;
          }

          v77 = std::string::append(&v108, v75, v76);
          v78 = *&v77->__r_.__value_.__l.__data_;
          v103.__r_.__value_.__r.__words[2] = v77->__r_.__value_.__r.__words[2];
          *&v103.__r_.__value_.__l.__data_ = v78;
          v77->__r_.__value_.__l.__size_ = 0;
          v77->__r_.__value_.__r.__words[2] = 0;
          v77->__r_.__value_.__r.__words[0] = 0;
          v79 = std::string::append(&v103, ".");
          v80 = *&v79->__r_.__value_.__l.__data_;
          v86 = v79->__r_.__value_.__r.__words[2];
          *v85 = v80;
          v79->__r_.__value_.__l.__size_ = 0;
          v79->__r_.__value_.__r.__words[2] = 0;
          v79->__r_.__value_.__r.__words[0] = 0;
          MEMORY[0x259CA8EE0](a8, &v87, 313, v85);
          if (SHIBYTE(v86) < 0)
          {
            operator delete(v85[0]);
          }

          if (SHIBYTE(v103.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v103.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v90.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v108.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v108.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v107.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v91.__r_.__value_.__l.__data_);
          }

          if (v88)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v88);
          }
        }
      }

      if (v92.__r_.__value_.__r.__words[0])
      {
        v92.__r_.__value_.__l.__size_ = v92.__r_.__value_.__r.__words[0];
        operator delete(v92.__r_.__value_.__l.__data_);
      }

      goto LABEL_134;
    }

    v26 = v92.__r_.__value_.__r.__words[2];
    v25 = v92.__r_.__value_.__l.__size_;
    if (v92.__r_.__value_.__l.__size_ >= v92.__r_.__value_.__r.__words[2])
    {
      v43 = v92.__r_.__value_.__r.__words[0];
      v44 = v92.__r_.__value_.__l.__size_ - v92.__r_.__value_.__r.__words[0];
      v45 = (v92.__r_.__value_.__l.__size_ - v92.__r_.__value_.__r.__words[0]) >> 3;
      v46 = v45 + 1;
      if ((v45 + 1) >> 61)
      {
        goto LABEL_143;
      }

      if ((v92.__r_.__value_.__r.__words[2] - v92.__r_.__value_.__r.__words[0]) >> 2 > v46)
      {
        v46 = (v92.__r_.__value_.__r.__words[2] - v92.__r_.__value_.__r.__words[0]) >> 2;
      }

      if (v92.__r_.__value_.__r.__words[2] - v92.__r_.__value_.__r.__words[0] >= 0x7FFFFFFFFFFFFFF8)
      {
        v46 = 0x1FFFFFFFFFFFFFFFLL;
      }

      if (v46)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(&v92, v46);
      }

      v47 = (8 * v45);
      v26 = 0;
      v48 = &v47[-((v92.__r_.__value_.__l.__size_ - v92.__r_.__value_.__r.__words[0]) >> 3)];
      *v47 = *(v102 - 2);
      v27 = v47 + 1;
      memcpy(v48, v43, v44);
      v49 = v92.__r_.__value_.__r.__words[0];
      v92.__r_.__value_.__r.__words[0] = v48;
      *&v92.__r_.__value_.__r.__words[1] = v27;
      if (v49)
      {
        operator delete(v49);
        v26 = v92.__r_.__value_.__r.__words[2];
      }
    }

    else
    {
      *v92.__r_.__value_.__l.__size_ = *(v102 - 2);
      v27 = (v25 + 8);
    }

    v92.__r_.__value_.__l.__size_ = v27;
    if (v27 < v26)
    {
      *v27 = *(v100 - 1);
      v50 = (v27 + 1);
LABEL_77:
      v92.__r_.__value_.__l.__size_ = v50;
      MIL::ValidationResult::ValidationResult(a8);
      goto LABEL_78;
    }

    v51 = v92.__r_.__value_.__r.__words[0];
    v52 = v27 - v92.__r_.__value_.__r.__words[0];
    v53 = (v27 - v92.__r_.__value_.__r.__words[0]) >> 3;
    v54 = v53 + 1;
    if (!((v53 + 1) >> 61))
    {
      if ((v26 - v92.__r_.__value_.__r.__words[0]) >> 2 > v54)
      {
        v54 = (v26 - v92.__r_.__value_.__r.__words[0]) >> 2;
      }

      if (v26 - v92.__r_.__value_.__r.__words[0] >= 0x7FFFFFFFFFFFFFF8)
      {
        v54 = 0x1FFFFFFFFFFFFFFFLL;
      }

      if (v54)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(&v92, v54);
      }

      v55 = v53;
      v56 = (8 * v53);
      v57 = &v56[-v55];
      *v56 = *(v100 - 1);
      v50 = (v56 + 1);
      memcpy(v57, v51, v52);
      v58 = v92.__r_.__value_.__r.__words[0];
      v92.__r_.__value_.__r.__words[0] = v57;
      *&v92.__r_.__value_.__r.__words[1] = v50;
      if (v58)
      {
        operator delete(v58);
      }

      goto LABEL_77;
    }

LABEL_143:
    std::vector<MIL::Fp16>::__throw_length_error[abi:ne200100]();
  }

  v28 = a1[1];
  v95 = *a1;
  v96 = v28;
  if (v28)
  {
    atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::to_string(&v91, v20);
  v29 = std::string::insert(&v91, 0, "Matrix inner dimension mismatch, tensor y must have inner dimension ");
  v30 = *&v29->__r_.__value_.__l.__data_;
  v92.__r_.__value_.__r.__words[2] = v29->__r_.__value_.__r.__words[2];
  *&v92.__r_.__value_.__l.__data_ = v30;
  v29->__r_.__value_.__l.__size_ = 0;
  v29->__r_.__value_.__r.__words[2] = 0;
  v29->__r_.__value_.__r.__words[0] = 0;
  v31 = std::string::append(&v92, " or ");
  v32 = *&v31->__r_.__value_.__l.__data_;
  v107.__r_.__value_.__r.__words[2] = v31->__r_.__value_.__r.__words[2];
  *&v107.__r_.__value_.__l.__data_ = v32;
  v31->__r_.__value_.__l.__size_ = 0;
  v31->__r_.__value_.__r.__words[2] = 0;
  v31->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v90, v20 - 1);
  if ((v90.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v33 = &v90;
  }

  else
  {
    v33 = v90.__r_.__value_.__r.__words[0];
  }

  if ((v90.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v34 = HIBYTE(v90.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v34 = v90.__r_.__value_.__l.__size_;
  }

  v35 = std::string::append(&v107, v33, v34);
  v36 = *&v35->__r_.__value_.__l.__data_;
  v108.__r_.__value_.__r.__words[2] = v35->__r_.__value_.__r.__words[2];
  *&v108.__r_.__value_.__l.__data_ = v36;
  v35->__r_.__value_.__l.__size_ = 0;
  v35->__r_.__value_.__r.__words[2] = 0;
  v35->__r_.__value_.__r.__words[0] = 0;
  v37 = std::string::append(&v108, ", got ");
  v38 = *&v37->__r_.__value_.__l.__data_;
  v103.__r_.__value_.__r.__words[2] = v37->__r_.__value_.__r.__words[2];
  *&v103.__r_.__value_.__l.__data_ = v38;
  v37->__r_.__value_.__l.__size_ = 0;
  v37->__r_.__value_.__r.__words[2] = 0;
  v37->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v89, v21);
  if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v39 = &v89;
  }

  else
  {
    v39 = v89.__r_.__value_.__r.__words[0];
  }

  if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v40 = HIBYTE(v89.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v40 = v89.__r_.__value_.__l.__size_;
  }

  v41 = std::string::append(&v103, v39, v40);
  v42 = *&v41->__r_.__value_.__l.__data_;
  v94 = v41->__r_.__value_.__r.__words[2];
  *__p = v42;
  v41->__r_.__value_.__l.__size_ = 0;
  v41->__r_.__value_.__r.__words[2] = 0;
  v41->__r_.__value_.__r.__words[0] = 0;
  MEMORY[0x259CA8EE0](a8, &v95, 319, __p);
  if (SHIBYTE(v94) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v89.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v103.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v103.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v108.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v108.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v90.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v107.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v92.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v91.__r_.__value_.__l.__data_);
  }

  if (v96)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v96);
  }

LABEL_134:
  if (v97)
  {
    v98 = v97;
    operator delete(v97);
  }

  if (v99)
  {
    v100 = v99;
    operator delete(v99);
  }

  if (v101)
  {
    v102 = v101;
    operator delete(v101);
  }
}

void sub_2599916BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a43)
  {
    operator delete(a43);
  }

  v45 = *(v43 - 248);
  if (v45)
  {
    *(v43 - 240) = v45;
    operator delete(v45);
  }

  v46 = *(v43 - 224);
  if (v46)
  {
    *(v43 - 216) = v46;
    operator delete(v46);
  }

  _Unwind_Resume(a1);
}

void anonymous namespace::ValidateCommon(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, ANEMachineIR::Utils *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, int a8@<W7>, MIL::ValidationResult *a9@<X8>, uint64_t a10)
{
  v19 = a1[1];
  v58 = *a1;
  v59 = v19;
  if (v19)
  {
    atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(&v55, "x");
  ANEMachineIR::Validators::ValidateLiveTensorSize(&v58, a3, &v55, a2, a9);
  if (v57 < 0)
  {
    operator delete(v55);
  }

  if (v59)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v59);
  }

  if (MIL::ValidationResult::IsGood(a9))
  {
    MEMORY[0x259CA8F00](a9);
    v20 = a1[1];
    v53 = *a1;
    v54 = v20;
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(&v55, "y");
    ANEMachineIR::Validators::ValidateLiveTensorSize(&v53, a4, &v55, a2, a9);
    if (v57 < 0)
    {
      operator delete(v55);
    }

    if (v54)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v54);
    }

    if (MIL::ValidationResult::IsGood(a9))
    {
      MEMORY[0x259CA8F00](a9);
      v21 = a1[1];
      v51 = *a1;
      v52 = v21;
      if (v21)
      {
        atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      ANEMachineIR::Validators::ValidatePostRightShiftRange(a9);
      if (v52)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v52);
      }

      if (MIL::ValidationResult::IsGood(a9))
      {
        MEMORY[0x259CA8F00](a9);
        if (*(a10 + 24) != 1)
        {
          goto LABEL_36;
        }

        ANEMachineIR::Utils::GetStaticTensorShape(a4, v22, &v55);
        v23 = v55;
        if ((v56 - v55) <= 8)
        {
          std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
        }

        v24 = *(v55 + 1);
        v38 = (*(a10 + 8) - *a10) >> 1;
        if (v38 != v24)
        {
          v25 = a1[1];
          v49 = *a1;
          v50 = v25;
          if (v25)
          {
            atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
            if ((v56 - v23) <= 8)
            {
              std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
            }
          }

          std::to_string(&v45, *(v23 + 1));
          v26 = std::string::insert(&v45, 0, "Post scale tensor must be of shape (");
          v27 = *&v26->__r_.__value_.__l.__data_;
          v46.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
          *&v46.__r_.__value_.__l.__data_ = v27;
          v26->__r_.__value_.__l.__size_ = 0;
          v26->__r_.__value_.__r.__words[2] = 0;
          v26->__r_.__value_.__r.__words[0] = 0;
          v28 = std::string::append(&v46, ",)");
          v29 = *&v28->__r_.__value_.__l.__data_;
          v48 = v28->__r_.__value_.__r.__words[2];
          *__p = v29;
          v28->__r_.__value_.__l.__size_ = 0;
          v28->__r_.__value_.__r.__words[2] = 0;
          v28->__r_.__value_.__r.__words[0] = 0;
          MEMORY[0x259CA8EE0](a9, &v49, 319, __p);
          if (SHIBYTE(v48) < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v46.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v45.__r_.__value_.__l.__data_);
          }

          if (v50)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v50);
          }
        }

        if (v55)
        {
          v56 = v55;
          operator delete(v55);
        }

        if (v38 == v24)
        {
LABEL_36:
          v30 = (*(*a4 + 88))(a4) == 4;
          v31 = (*(*a3 + 88))(a3) == 4;
          v32 = ANEMachineIR::Validators::BinaryPointFormatOffsets(v30, v31);
          v33 = ANEMachineIR::Validators::NeuralEngineComputedBinaryPointAndShiftLegal(a7, a8, v32);
          v34 = *a1;
          if (v33)
          {
            v35 = a1[1];
            v39 = *a1;
            v40 = v35;
            if (v35)
            {
              atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            ANEMachineIR::Validators::ValidateLiveTensorSize(&v39, a6, a5, a2, a9);
            if (v40)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v40);
            }

            if (MIL::ValidationResult::IsGood(a9))
            {
              v36 = MEMORY[0x259CA8F00](a9);
              MIL::ValidationResult::ValidationResult(v36);
            }
          }

          else
          {
            v37 = a1[1];
            v43 = *a1;
            v44 = v37;
            if (v37)
            {
              atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            std::string::basic_string[abi:ne200100]<0>(v41, "Computed binary point plus post-right shift bounded by accumulator dest size. See op definition.");
            MEMORY[0x259CA8EE0](a9, &v43, 309, v41);
            if (v42 < 0)
            {
              operator delete(v41[0]);
            }

            if (v44)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v44);
            }
          }
        }
      }
    }
  }
}

void sub_259991DC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, std::__shared_weak_count *a42)
{
  if (a39 < 0)
  {
    operator delete(__p);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a42)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a42);
  }

  v44 = *(v42 - 128);
  if (v44)
  {
    *(v42 - 120) = v44;
    operator delete(v44);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ANEMachineIR::Validators::ValidateNeMatmul@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, ANEMachineIR::Utils *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X6>, MIL::ValidationResult *a8@<X8>)
{
  if (a7[1])
  {
    v9 = *a7;
  }

  else
  {
    v9 = 0;
  }

  if (a7[3])
  {
    v10 = a7[2];
  }

  else
  {
    v10 = 0;
  }

  result = MIL::ValidationResult::IsGood(a8);
  if (result)
  {
    v12 = MEMORY[0x259CA8F00](a8);

    return MIL::ValidationResult::ValidationResult(v12);
  }

  return result;
}

void ANEMachineIR::Validators::ValidateNeBatchMatmul(MIL::IRObject *a1@<X0>, MIL::ValidationResult *a2@<X8>)
{
  v21 = 0;
  LOBYTE(v22) = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v19 = 0;
  v20 = 0;
  ANEMachineIR::Validators::ParseNeBatchMatmulParamValues(a1, &v19, a2);
  if (MIL::ValidationResult::IsGood(a2))
  {
    MEMORY[0x259CA8F00](a2);
    LocationPtr = MIL::IRObject::GetLocationPtr(a1);
    v5 = (*(*a1 + 56))(a1);
    std::string::basic_string[abi:ne200100]<0>(&v17, "x");
    ParameterType = MIL::IROperation::GetParameterType();
    v7 = MIL::IRValueType::AsTensorType(ParameterType);
    std::string::basic_string[abi:ne200100]<0>(&__p, "y");
    v8 = MIL::IROperation::GetParameterType();
    v9 = MIL::IRValueType::AsTensorType(v8);
    (*(*a1 + 200))(v14, a1);
    v10 = v14[0];
    if (v14[1] == v14[0])
    {
      std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
    }

    v11 = (*(*a1 + 176))(a1);
    if (*(v11 + 8) == *v11)
    {
      std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
    }

    Type = MIL::IRNamedValueType::GetType(**v11);
    v13 = MIL::IRValueType::AsTensorType(Type);
    ANEMachineIR::Validators::ValidateNeBatchMatmul(LocationPtr, v5, v7, v9, v10, v13, &v19, a2);
    v27 = v14;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v27);
    if (v16 < 0)
    {
      operator delete(__p);
    }

    if (v18 < 0)
    {
      operator delete(v17);
    }
  }

  if (v24 == 1)
  {
    if (v22)
    {
      v23 = v22;
      operator delete(v22);
    }
  }
}

void sub_25999219C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, char a28)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a28 == 1)
  {
    if (a25)
    {
      operator delete(a25);
    }
  }

  _Unwind_Resume(exception_object);
}

void ANEMachineIR::Validators::ValidateNeMatmul(ANEMachineIR::Validators *a1@<X0>, MIL::ValidationResult *a2@<X8>)
{
  v21 = 0;
  LOBYTE(v22) = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v19 = 0;
  v20 = 0;
  v27 = 0;
  v28 = 0;
  LOBYTE(v29) = 0;
  v31 = 0;
  ANEMachineIR::Validators::ParseNeMatmulParamValues(a1, &v19, a2);
  if (MIL::ValidationResult::IsGood(a2))
  {
    MEMORY[0x259CA8F00](a2);
    LocationPtr = MIL::IRObject::GetLocationPtr(a1);
    v5 = (*(*a1 + 56))(a1);
    std::string::basic_string[abi:ne200100]<0>(&v17, "x");
    ParameterType = MIL::IROperation::GetParameterType();
    v7 = MIL::IRValueType::AsTensorType(ParameterType);
    std::string::basic_string[abi:ne200100]<0>(&__p, "y");
    v8 = MIL::IROperation::GetParameterType();
    v9 = MIL::IRValueType::AsTensorType(v8);
    (*(*a1 + 200))(v14, a1);
    v10 = v14[0];
    if (v14[1] == v14[0])
    {
      std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
    }

    v11 = (*(*a1 + 176))(a1);
    if (*(v11 + 8) == *v11)
    {
      std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
    }

    Type = MIL::IRNamedValueType::GetType(**v11);
    v13 = MIL::IRValueType::AsTensorType(Type);
    ANEMachineIR::Validators::ValidateNeMatmul(LocationPtr, v5, v7, v9, v10, v13, &v19, a2);
    v32 = v14;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v32);
    if (v16 < 0)
    {
      operator delete(__p);
    }

    if (v18 < 0)
    {
      operator delete(v17);
    }
  }

  if (v31 == 1 && v29)
  {
    v30 = v29;
    operator delete(v29);
  }

  if (v24 == 1)
  {
    if (v22)
    {
      v23 = v22;
      operator delete(v22);
    }
  }
}

void sub_259992450(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  ANEMachineIR::Validators::NeMatmulParamValues::~NeMatmulParamValues(&a25);
  _Unwind_Resume(a1);
}

void std::__optional_storage_base<std::vector<MIL::Fp16>,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<std::vector<MIL::Fp16>,false> const&>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == *(a2 + 24))
  {
    if (a1 != a2 && *(a1 + 24))
    {
      v3 = *(a2 + 8);
      v4 = &v3[-*a2] >> 1;
      v5 = *a2;

      std::vector<MIL::Fp16>::__assign_with_size[abi:ne200100]<MIL::Fp16*,MIL::Fp16*>(a1, v5, v3, v4);
    }
  }

  else if (*(a1 + 24))
  {
    v6 = *a1;
    if (*a1)
    {
      *(a1 + 8) = v6;
      operator delete(v6);
    }

    *(a1 + 24) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    std::vector<MIL::Fp16>::__init_with_size[abi:ne200100]<MIL::Fp16*,MIL::Fp16*>(a1, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 1);
    *(a1 + 24) = 1;
  }
}

void *std::vector<MIL::Fp16>::__assign_with_size[abi:ne200100]<MIL::Fp16*,MIL::Fp16*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 1)
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

    if ((a4 & 0x8000000000000000) == 0)
    {
      if (v7 <= a4)
      {
        v9 = a4;
      }

      else
      {
        v9 = v7;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFELL)
      {
        v10 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<MIL::Fp16>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<MIL::Fp16>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 1)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

uint64_t std::vector<unsigned long long>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned long long const*>,std::__wrap_iter<unsigned long long const*>>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned long long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2599926F4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void ANEMachineIR::Validators::NeMatmulParamValues::~NeMatmulParamValues(ANEMachineIR::Validators::NeMatmulParamValues *this)
{
  if (*(this + 80) == 1)
  {
    v2 = *(this + 7);
    if (v2)
    {
      *(this + 8) = v2;
      operator delete(v2);
    }
  }

  if (*(this + 32) == 1)
  {
    v3 = *(this + 1);
    if (v3)
    {
      *(this + 2) = v3;
      operator delete(v3);
    }
  }
}

uint64_t std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<MIL::IRDimension const*>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2599927CC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::vector<MIL::Fp16>::__move_assign(uint64_t a1, __n128 *a2)
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

void ANEMachineIR::H2021::NeConv::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_259995D58(_Unwind_Exception *a1)
{
  v4 = *(v2 - 208);
  *(v2 - 208) = 0;
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
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x670], 0);
  _Unwind_Resume(a1);
}

BOOL ANEMachineIR::Utils::IsBlockOutput(MIL::Builder::BlockBuilder **a1, unsigned __int8 *a2)
{
  MIL::Builder::BlockBuilder::GetOutputNames(&v11, *a1);
  v3 = v11;
  v4 = v12;
  if (v11 != v12)
  {
    v5 = a2[23];
    if (v5 >= 0)
    {
      v6 = a2[23];
    }

    else
    {
      v6 = *(a2 + 1);
    }

    if (v5 < 0)
    {
      a2 = *a2;
    }

    while (1)
    {
      v7 = *(v3 + 23);
      v8 = v7;
      if ((v7 & 0x80u) != 0)
      {
        v7 = *(v3 + 8);
      }

      if (v7 == v6)
      {
        v9 = v8 >= 0 ? v3 : *v3;
        if (!memcmp(v9, a2, v6))
        {
          break;
        }
      }

      v3 += 24;
      if (v3 == v4)
      {
        v3 = v4;
        break;
      }
    }
  }

  v13 = &v11;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v13);
  return v3 != v4;
}

void ANEMachineIR::Utils::TryCopyOpInput(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = a2[1];
  v10[0] = *a2;
  v10[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  ArgumentForParameter = ANEMachineIR::Utils::TryGetArgumentForParameter(v10);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (ArgumentForParameter)
  {
    v7 = *a3;
    if (*(a1 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *a1, *(a1 + 8));
    }

    else
    {
      __p = *a1;
    }

    MIL::Builder::OperationBuilder::AddInput();
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void sub_259996FCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ANEMachineIR::Utils::TryGetArgumentForParameter(void *a1)
{
  exception_ptr = __cxa_get_exception_ptr(a1);
  MEMORY[0x259CA9550](v3, exception_ptr);
  __cxa_begin_catch(a1);
  MEMORY[0x259CA9570](v3);
  __cxa_end_catch();
}

void MIL::ANEMachineIR::Interpreter::NeAddCpu::Run(MIL::IROperation *a1@<X1>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v119 = *MEMORY[0x277D85DE8];
  v6 = (*(*a1 + 56))(a1);
  v7 = *(v6 + 23);
  if (v7 < 0)
  {
    if (*(v6 + 8) != 6)
    {
      goto LABEL_10;
    }

    v6 = *v6;
  }

  else if (v7 != 6)
  {
    goto LABEL_10;
  }

  if (*v6 == 1633641838 && *(v6 + 4) == 25700)
  {
    v22 = std::string::basic_string[abi:ne200100]<0>(&v105, "x_scale");
    v23 = MIL::Fp16::FromFloat(v22, 1.0);
    ParameterValue = MIL::IROperation::TryGetParameterValue();
    if (ParameterValue)
    {
      if ((*(*ParameterValue + 40))(ParameterValue))
      {
        v25 = MEMORY[0x259CA93C0]();
        if (v25)
        {
          v23 = *v25;
        }
      }
    }

    if (SHIBYTE(v105.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v105.__r_.__value_.__l.__data_);
    }

    v26 = std::string::basic_string[abi:ne200100]<0>(&v105, "y_scale");
    v102 = MIL::Fp16::FromFloat(v26, 1.0);
    v27 = MIL::IROperation::TryGetParameterValue();
    if (v27)
    {
      if ((*(*v27 + 40))(v27))
      {
        v28 = MEMORY[0x259CA93C0]();
        if (v28)
        {
          v102 = *v28;
        }
      }
    }

    if (SHIBYTE(v105.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v105.__r_.__value_.__l.__data_);
    }

    v29 = std::string::basic_string[abi:ne200100]<0>(&v105, "bias");
    v101 = MIL::Fp16::FromFloat(v29, 0.0);
    v30 = MIL::IROperation::TryGetParameterValue();
    if (v30)
    {
      if ((*(*v30 + 40))(v30))
      {
        v31 = MEMORY[0x259CA93C0]();
        if (v31)
        {
          v101 = *v31;
        }
      }
    }

    if (SHIBYTE(v105.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v105.__r_.__value_.__l.__data_);
    }

    v32 = std::string::basic_string[abi:ne200100]<0>(&v105, "post_scale");
    v33 = MIL::Fp16::FromFloat(v32, 1.0);
    v34 = MIL::IROperation::TryGetParameterValue();
    if (v34)
    {
      if ((*(*v34 + 40))(v34))
      {
        v35 = MEMORY[0x259CA93C0]();
        if (v35)
        {
          v33 = *v35;
        }
      }
    }

    if (SHIBYTE(v105.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v105.__r_.__value_.__l.__data_);
    }

    std::string::basic_string[abi:ne200100]<0>(&v105, "acc_bias_shift");
    v36 = MIL::IROperation::TryGetParameterValue();
    if (v36 && (*(*v36 + 40))(v36) && (v37 = MEMORY[0x259CA93E0]()) != 0)
    {
      v100 = *v37;
    }

    else
    {
      v100 = 0;
    }

    if (SHIBYTE(v105.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v105.__r_.__value_.__l.__data_);
    }

    std::string::basic_string[abi:ne200100]<0>(&v105, "acc_left_shift");
    v38 = MIL::IROperation::TryGetParameterValue();
    if (v38 && (*(*v38 + 40))(v38) && (v39 = MEMORY[0x259CA93E0]()) != 0)
    {
      v40 = *v39;
    }

    else
    {
      v40 = 0;
    }

    if (SHIBYTE(v105.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v105.__r_.__value_.__l.__data_);
    }

    std::string::basic_string[abi:ne200100]<0>(&v105, "post_right_shift");
    v41 = MIL::IROperation::TryGetParameterValue();
    if (v41 && (*(*v41 + 40))(v41) && (v42 = MEMORY[0x259CA93E0]()) != 0)
    {
      v43 = *v42;
    }

    else
    {
      v43 = 0;
    }

    if (SHIBYTE(v105.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v105.__r_.__value_.__l.__data_);
    }

    std::string::basic_string[abi:ne200100]<0>(&v105, "x");
    InterpretedTensorValue = MIL::ANEMachineIR::Interpreter::TryGetInterpretedTensorValue(a2, a1, &v105);
    if (SHIBYTE(v105.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v105.__r_.__value_.__l.__data_);
    }

    std::string::basic_string[abi:ne200100]<0>(&v105, "y");
    v45 = MIL::ANEMachineIR::Interpreter::TryGetInterpretedTensorValue(a2, a1, &v105);
    if (SHIBYTE(v105.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v105.__r_.__value_.__l.__data_);
      if (InterpretedTensorValue)
      {
LABEL_73:
        if (!v45)
        {
          *a3 = 2;
          std::string::basic_string[abi:ne200100]<0>((a3 + 8), "No value for y");
          goto LABEL_23;
        }

        v99 = v23;
        *&v105.__r_.__value_.__r.__words[1] = 0uLL;
        v106 = 0;
        MIL::ANEMachineIR::Interpreter::GetCpuNeActivationFunction(a1, &v105, &v118);
        if (LODWORD(v105.__r_.__value_.__l.__data_))
        {
          *a3 = v105.__r_.__value_.__l.__data_;
          *(a3 + 8) = *&v105.__r_.__value_.__r.__words[1];
          *(a3 + 24) = v106;
          *&v105.__r_.__value_.__r.__words[1] = 0uLL;
          v106 = 0;
LABEL_131:
          std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](&v118);
          if ((SHIBYTE(v106) & 0x80000000) == 0)
          {
            goto LABEL_23;
          }

          size = v105.__r_.__value_.__l.__size_;
          goto LABEL_22;
        }

        v46 = (*(*InterpretedTensorValue + 32))(InterpretedTensorValue);
        v47 = (*(*v46 + 88))(v46);
        OutputType = MIL::IROperation::GetOutputType(a1);
        v49 = MIL::IRValueType::AsTensorType(OutputType);
        v50 = (*(*v49 + 88))(v49);
        v51 = (*(*InterpretedTensorValue + 32))(InterpretedTensorValue);
        v98 = (*(*v51 + 16))(v51);
        switch(v47)
        {
          case 4:
            switch(v50)
            {
              case 14:
                v88 = MIL::IRTensorValue::GetDataView<MIL::Fp16>();
                v89 = MIL::IRTensorValue::GetDataView<MIL::Fp16>();
                std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v116, &v118);
                std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v116);
                (*(*a1 + 200))(&v103, a1);
                v90 = v103;
                if (v104 == v103)
                {
                  std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                }

                v91 = MIL::IROperation::GetOutputType(a1);
                MIL::IRValueType::AsTensorType(v91);
                MIL::IRTensorValueType::MakeUInt8Value();
                MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v90, &v108);
                v92 = v108;
                v108 = 0;
                if (v92)
                {
                  (*(*v92 + 1))(v92);
                }

                goto LABEL_129;
              case 9:
                v78 = MIL::IRTensorValue::GetDataView<MIL::Fp16>();
                v79 = MIL::IRTensorValue::GetDataView<MIL::Fp16>();
                std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v115, &v118);
                std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v115);
                (*(*a1 + 200))(&v103, a1);
                v80 = v103;
                if (v104 == v103)
                {
                  std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                }

                v81 = MIL::IROperation::GetOutputType(a1);
                MIL::IRValueType::AsTensorType(v81);
                MIL::IRTensorValueType::MakeInt8Value();
                MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v80, &v108);
                v82 = v108;
                v108 = 0;
                if (v82)
                {
                  (*(*v82 + 1))(v82);
                }

                goto LABEL_129;
              case 4:
                v62 = MIL::IRTensorValue::GetDataView<MIL::Fp16>();
                v63 = MIL::IRTensorValue::GetDataView<MIL::Fp16>();
                std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v117, &v118);
                std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v117);
                (*(*a1 + 200))(&v103, a1);
                v64 = v103;
                if (v104 == v103)
                {
                  std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                }

                v65 = MIL::IROperation::GetOutputType(a1);
                MIL::IRValueType::AsTensorType(v65);
                MIL::IRTensorValueType::MakeFloat16Value();
                MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v64, &v108);
                v66 = v108;
                v108 = 0;
                if (v66)
                {
                  (*(*v66 + 1))(v66);
                }

                goto LABEL_129;
            }

            break;
          case 9:
            switch(v50)
            {
              case 14:
                Data = MIL::IRTensorValue::GetDataView<signed char>();
                v74 = MIL::IRTensorValue::GetDataView<signed char>();
                std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v110, &v118);
                std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v110);
                (*(*a1 + 200))(&v103, a1);
                v75 = v103;
                if (v104 == v103)
                {
                  std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                }

                v76 = MIL::IROperation::GetOutputType(a1);
                MIL::IRValueType::AsTensorType(v76);
                MIL::IRTensorValueType::MakeUInt8Value();
                MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v75, &v108);
                v77 = v108;
                v108 = 0;
                if (v77)
                {
                  (*(*v77 + 1))(v77);
                }

                goto LABEL_129;
              case 9:
                v68 = MIL::IRTensorValue::GetDataView<signed char>();
                v69 = MIL::IRTensorValue::GetDataView<signed char>();
                std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v109, &v118);
                std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v109);
                (*(*a1 + 200))(&v103, a1);
                v70 = v103;
                if (v104 == v103)
                {
                  std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                }

                v71 = MIL::IROperation::GetOutputType(a1);
                MIL::IRValueType::AsTensorType(v71);
                MIL::IRTensorValueType::MakeInt8Value();
                MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v70, &v108);
                v72 = v108;
                v108 = 0;
                if (v72)
                {
                  (*(*v72 + 1))(v72);
                }

                goto LABEL_129;
              case 4:
                v57 = MIL::IRTensorValue::GetDataView<signed char>();
                v58 = MIL::IRTensorValue::GetDataView<signed char>();
                std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v111, &v118);
                std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v111);
                (*(*a1 + 200))(&v103, a1);
                v59 = v103;
                if (v104 == v103)
                {
                  std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                }

                v60 = MIL::IROperation::GetOutputType(a1);
                MIL::IRValueType::AsTensorType(v60);
                MIL::IRTensorValueType::MakeFloat16Value();
                MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v59, &v108);
                v61 = v108;
                v108 = 0;
                if (v61)
                {
                  (*(*v61 + 1))(v61);
                }

                goto LABEL_129;
            }

            break;
          case 14:
            switch(v50)
            {
              case 14:
                v93 = MIL::IRTensorValue::GetDataView<unsigned char>();
                v94 = MIL::IRTensorValue::GetDataView<unsigned char>();
                std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v113, &v118);
                std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v113);
                (*(*a1 + 200))(&v103, a1);
                v95 = v103;
                if (v104 == v103)
                {
                  std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                }

                v96 = MIL::IROperation::GetOutputType(a1);
                MIL::IRValueType::AsTensorType(v96);
                MIL::IRTensorValueType::MakeUInt8Value();
                MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v95, &v108);
                v97 = v108;
                v108 = 0;
                if (v97)
                {
                  (*(*v97 + 1))(v97);
                }

                goto LABEL_129;
              case 9:
                v83 = MIL::IRTensorValue::GetDataView<unsigned char>();
                v84 = MIL::IRTensorValue::GetDataView<unsigned char>();
                std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v112, &v118);
                std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v112);
                (*(*a1 + 200))(&v103, a1);
                v85 = v103;
                if (v104 == v103)
                {
                  std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                }

                v86 = MIL::IROperation::GetOutputType(a1);
                MIL::IRValueType::AsTensorType(v86);
                MIL::IRTensorValueType::MakeInt8Value();
                MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v85, &v108);
                v87 = v108;
                v108 = 0;
                if (v87)
                {
                  (*(*v87 + 1))(v87);
                }

                goto LABEL_129;
              case 4:
                v52 = MIL::IRTensorValue::GetDataView<unsigned char>();
                v53 = MIL::IRTensorValue::GetDataView<unsigned char>();
                std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v114, &v118);
                std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v114);
                (*(*a1 + 200))(&v103, a1);
                v54 = v103;
                if (v104 == v103)
                {
                  std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                }

                v55 = MIL::IROperation::GetOutputType(a1);
                MIL::IRValueType::AsTensorType(v55);
                MIL::IRTensorValueType::MakeFloat16Value();
                MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v54, &v108);
                v56 = v108;
                v108 = 0;
                if (v56)
                {
                  (*(*v56 + 1))(v56);
                }

LABEL_129:
                v108 = &v103;
                std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v108);
                *a3 = 0;
                std::string::basic_string[abi:ne200100]<0>((a3 + 8), &unk_259A4D977);
                if (v107.__r_.__value_.__r.__words[0])
                {
                  v107.__r_.__value_.__l.__size_ = v107.__r_.__value_.__r.__words[0];
                  operator delete(v107.__r_.__value_.__l.__data_);
                }

                goto LABEL_131;
            }

            break;
          default:
            v67 = "Unimplemented input dtype";
LABEL_105:
            *a3 = 3;
            std::string::basic_string[abi:ne200100]<0>((a3 + 8), v67);
            goto LABEL_131;
        }

        v67 = "Unimplemented output dtype";
        goto LABEL_105;
      }
    }

    else if (InterpretedTensorValue)
    {
      goto LABEL_73;
    }

    *a3 = 2;
    std::string::basic_string[abi:ne200100]<0>((a3 + 8), "No value for x");
    goto LABEL_23;
  }

LABEL_10:
  *a3 = 1;
  v9 = a3 + 8;
  std::string::basic_string[abi:ne200100]<0>(&v107, "ne_add");
  v10 = std::string::insert(&v107, 0, "Expected ");
  v11 = *&v10->__r_.__value_.__l.__data_;
  v118.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
  *&v118.__r_.__value_.__l.__data_ = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  v12 = std::string::append(&v118, " op. Got ");
  v13 = *&v12->__r_.__value_.__l.__data_;
  v105.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v105.__r_.__value_.__l.__data_ = v13;
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

  v18 = std::string::append(&v105, v16, v17);
  v19 = *&v18->__r_.__value_.__l.__data_;
  *(v9 + 16) = *(&v18->__r_.__value_.__l + 2);
  *v9 = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v105.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v105.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v118.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v118.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
  {
    size = v107.__r_.__value_.__r.__words[0];
LABEL_22:
    operator delete(size);
  }

LABEL_23:
  v21 = *MEMORY[0x277D85DE8];
}

void sub_2599982A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, void *a21, void *a22, int a23, __int16 a24, char a25, char a26, int a27, __int16 a28, char a29, char a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v54 - 128);
  if (a30 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(a1);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValue<MIL::Fp16,MIL::Fp16>(__int16 *a1@<X0>, __int16 *a2@<X1>, unint64_t a3@<X2>, __int16 a4@<W3>, __int16 a5@<W4>, int a6@<W5>, int a7@<W6>, int a8@<W7>, const void **a9@<X8>, __int16 a10, int a11, __int16 a12, uint64_t a13)
{
  v16 = a3;
  v19 = a9;
  v73 = a4;
  v72 = a5;
  v71 = a10;
  v70 = a12;
  a9[1] = 0;
  a9[2] = 0;
  *a9 = 0;
  std::vector<MIL::Fp16>::reserve(a9, a3);
  v20 = ldexp(1.0, a6 + 20);
  MIL::Fp16::GetFloat(&v71);
  v22 = v21;
  v23 = ldexp(1.0, a6 + 20 + a7);
  v24 = v22 * v23;
  v25 = llroundf(v24);
  if (fabsf(v24) < 1.0)
  {
    v25 = 0;
  }

  v69 = v25;
  MIL::Fp16::GetFloat(&v70);
  v27 = v26;
  v28 = exp2(-(a6 + 20 + a8));
  if (v16)
  {
    v29 = v20;
    v30 = v28 * v27;
    while (1)
    {
      v31 = v19;
      v32 = *a1++;
      MIL::Fp16::GetFloat(&v73);
      v34 = v33;
      LOWORD(__e) = v32;
      MIL::Fp16::GetFloat(&__e);
      v36 = v35;
      v37 = ilogbf(v35);
      if (v37 <= -14)
      {
        v38 = -14;
      }

      else
      {
        v38 = v37;
      }

      v39 = ilogbf(v34);
      if (v39 <= -14)
      {
        v40 = -14;
      }

      else
      {
        v40 = v39;
      }

      v41 = v38 + a6 + v40;
      v42 = v69 + llroundf((v34 * v36) * v29);
      if (v42 >= 0xFFFFFFFF80000000)
      {
        v43 = v42;
      }

      else
      {
        v43 = -8388608;
      }

      v44 = 2 * (v42 < 0xFFFFFFFF80000000);
      v45 = v42 <= 0x7FFFFFFF;
      if (v42 <= 0x7FFFFFFF)
      {
        v46 = v43;
      }

      else
      {
        v46 = 2139095040;
      }

      if (!v45)
      {
        v44 = 1;
      }

      LODWORD(v47) = v41 >= -20 ? v46 : v69;
      v48 = v41 >= -20 ? v44 : 0;
      v49 = *a2;
      MIL::Fp16::GetFloat(&v72);
      if (v48 == 2)
      {
        break;
      }

      if (v48)
      {
        goto LABEL_37;
      }

      v51 = v50;
      LOWORD(__e) = v49;
      MIL::Fp16::GetFloat(&__e);
      v53 = v52;
      v54 = ilogbf(v52);
      if (v54 <= -14)
      {
        v55 = -14;
      }

      else
      {
        v55 = v54;
      }

      v56 = ilogbf(v51);
      if (v56 <= -14)
      {
        v57 = -14;
      }

      else
      {
        v57 = v56;
      }

      if (v55 + a6 + v57 >= -20)
      {
        v47 = llroundf((v51 * v53) * v29) + v47;
        if (v47 > 0x7FFFFFFF)
        {
LABEL_37:
          *&v59 = INFINITY;
LABEL_40:
          v58 = *&v59;
          v19 = v31;
          goto LABEL_41;
        }

        if (v47 < 0xFFFFFFFF80000000)
        {
          break;
        }
      }

      v19 = v31;
      if (!v47)
      {
        v62 = 0.0;
        goto LABEL_42;
      }

      v58 = v47;
LABEL_41:
      __e = 0;
      v60 = frexp(v58, &__e);
      v61 = ldexp(v60, 11);
      v62 = ldexp(round(v61), __e - 11);
LABEL_42:
      v63 = v62 * v30;
      v64 = 0.0;
      if (v63 != 0.0)
      {
        __e = 0;
        v65 = frexp(v63, &__e);
        v66 = ldexp(v65, 11);
        v64 = ldexp(round(v66), __e - 11);
      }

      v67 = std::function<float ()(float)>::operator()(a13, v64);
      LOWORD(__e) = MIL::Fp16::FromFloat(v67, v68);
      std::vector<MIL::Fp16>::push_back[abi:ne200100](v19, &__e);
      ++a2;
      if (!--v16)
      {
        return;
      }
    }

    *&v59 = -INFINITY;
    goto LABEL_40;
  }
}

void sub_2599988A4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValue<unsigned char,MIL::Fp16>(__int16 *a1@<X0>, __int16 *a2@<X1>, unint64_t a3@<X2>, __int16 a4@<W3>, __int16 a5@<W4>, int a6@<W5>, int a7@<W6>, int a8@<W7>, void *a9@<X8>, __int16 a10, int a11, __int16 a12, uint64_t a13)
{
  v16 = a3;
  v74 = a4;
  v73 = a5;
  v72 = a10;
  v71 = a12;
  a9[1] = 0;
  a9[2] = 0;
  *a9 = 0;
  std::vector<unsigned char>::reserve(a9, a3);
  v19 = ldexp(1.0, a6 + 20);
  MIL::Fp16::GetFloat(&v72);
  v21 = v20;
  v22 = ldexp(1.0, a6 + 20 + a7);
  v23 = v21 * v22;
  v24 = llroundf(v23);
  if (fabsf(v23) < 1.0)
  {
    v24 = 0;
  }

  v70 = v24;
  MIL::Fp16::GetFloat(&v71);
  v26 = v25;
  v27 = exp2(-(a6 + 20 + a8));
  if (v16)
  {
    v28 = v19;
    v29 = v27 * v26;
    while (1)
    {
      v30 = *a1++;
      MIL::Fp16::GetFloat(&v74);
      v32 = v31;
      LOWORD(__e) = v30;
      MIL::Fp16::GetFloat(&__e);
      v34 = v33;
      v35 = ilogbf(v33);
      if (v35 <= -14)
      {
        v36 = -14;
      }

      else
      {
        v36 = v35;
      }

      v37 = ilogbf(v32);
      if (v37 <= -14)
      {
        v38 = -14;
      }

      else
      {
        v38 = v37;
      }

      v39 = v36 + a6 + v38;
      v40 = v70 + llroundf((v32 * v34) * v28);
      if (v40 >= 0xFFFFFFFF80000000)
      {
        v41 = v40;
      }

      else
      {
        v41 = -8388608;
      }

      v42 = 2 * (v40 < 0xFFFFFFFF80000000);
      v43 = v40 <= 0x7FFFFFFF;
      if (v40 <= 0x7FFFFFFF)
      {
        v44 = v41;
      }

      else
      {
        v44 = 2139095040;
      }

      if (!v43)
      {
        v42 = 1;
      }

      LODWORD(v45) = v39 >= -20 ? v44 : v70;
      v46 = v39 >= -20 ? v42 : 0;
      v47 = *a2;
      MIL::Fp16::GetFloat(&v73);
      if (v46 == 2)
      {
        break;
      }

      if (v46)
      {
        goto LABEL_37;
      }

      v49 = v48;
      LOWORD(__e) = v47;
      MIL::Fp16::GetFloat(&__e);
      v51 = v50;
      v52 = ilogbf(v50);
      if (v52 <= -14)
      {
        v53 = -14;
      }

      else
      {
        v53 = v52;
      }

      v54 = ilogbf(v49);
      if (v54 <= -14)
      {
        v55 = -14;
      }

      else
      {
        v55 = v54;
      }

      if (v53 + a6 + v55 >= -20)
      {
        v45 = llroundf((v49 * v51) * v28) + v45;
        if (v45 > 0x7FFFFFFF)
        {
LABEL_37:
          *&v58 = INFINITY;
LABEL_40:
          v57 = *&v58;
          v56 = a9;
          goto LABEL_41;
        }

        if (v45 < 0xFFFFFFFF80000000)
        {
          break;
        }
      }

      v56 = a9;
      if (!v45)
      {
        v61 = 0.0;
        goto LABEL_42;
      }

      v57 = v45;
LABEL_41:
      __e = 0;
      v59 = frexp(v57, &__e);
      v60 = ldexp(v59, 11);
      v61 = ldexp(round(v60), __e - 11);
LABEL_42:
      v62 = v61 * v29;
      v63 = 0.0;
      if (v62 != 0.0)
      {
        __e = 0;
        v64 = frexp(v62, &__e);
        v65 = ldexp(v64, 11);
        v63 = ldexp(round(v65), __e - 11);
      }

      std::function<float ()(float)>::operator()(a13, v63);
      if (v66 == INFINITY)
      {
        LOBYTE(v67) = -1;
      }

      else if (v66 == -INFINITY)
      {
        LOBYTE(v67) = 0;
      }

      else
      {
        v68 = llroundf(v66);
        if (v68 >= 255)
        {
          v68 = 255;
        }

        v67 = v68 & ~(v68 >> 31);
      }

      LOBYTE(__e) = v67;
      std::vector<signed char>::push_back[abi:ne200100](v56, &__e);
      ++a2;
      if (!--v16)
      {
        return;
      }
    }

    *&v58 = -INFINITY;
    goto LABEL_40;
  }
}

void sub_259998C1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  v10 = *a9;
  if (*a9)
  {
    *(a9 + 8) = v10;
    operator delete(v10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValue<signed char,MIL::Fp16>(__int16 *a1@<X0>, __int16 *a2@<X1>, unint64_t a3@<X2>, __int16 a4@<W3>, __int16 a5@<W4>, int a6@<W5>, int a7@<W6>, int a8@<W7>, void *a9@<X8>, __int16 a10, int a11, __int16 a12, uint64_t a13)
{
  v16 = a3;
  v73 = a4;
  v72 = a5;
  v71 = a10;
  v70 = a12;
  a9[1] = 0;
  a9[2] = 0;
  *a9 = 0;
  std::vector<unsigned char>::reserve(a9, a3);
  v19 = ldexp(1.0, a6 + 20);
  MIL::Fp16::GetFloat(&v71);
  v21 = v20;
  v22 = ldexp(1.0, a6 + 20 + a7);
  v23 = v21 * v22;
  v24 = llroundf(v23);
  if (fabsf(v23) < 1.0)
  {
    v24 = 0;
  }

  v69 = v24;
  MIL::Fp16::GetFloat(&v70);
  v26 = v25;
  v27 = exp2(-(a6 + 20 + a8));
  if (v16)
  {
    v28 = v19;
    v29 = v27 * v26;
    while (1)
    {
      v30 = *a1++;
      MIL::Fp16::GetFloat(&v73);
      v32 = v31;
      LOWORD(__e) = v30;
      MIL::Fp16::GetFloat(&__e);
      v34 = v33;
      v35 = ilogbf(v33);
      if (v35 <= -14)
      {
        v36 = -14;
      }

      else
      {
        v36 = v35;
      }

      v37 = ilogbf(v32);
      if (v37 <= -14)
      {
        v38 = -14;
      }

      else
      {
        v38 = v37;
      }

      v39 = v36 + a6 + v38;
      v40 = v69 + llroundf((v32 * v34) * v28);
      if (v40 >= 0xFFFFFFFF80000000)
      {
        v41 = v40;
      }

      else
      {
        v41 = -8388608;
      }

      v42 = 2 * (v40 < 0xFFFFFFFF80000000);
      v43 = v40 <= 0x7FFFFFFF;
      if (v40 <= 0x7FFFFFFF)
      {
        v44 = v41;
      }

      else
      {
        v44 = 2139095040;
      }

      if (!v43)
      {
        v42 = 1;
      }

      LODWORD(v45) = v39 >= -20 ? v44 : v69;
      v46 = v39 >= -20 ? v42 : 0;
      v47 = *a2;
      MIL::Fp16::GetFloat(&v72);
      if (v46 == 2)
      {
        break;
      }

      if (v46)
      {
        goto LABEL_37;
      }

      v49 = v48;
      LOWORD(__e) = v47;
      MIL::Fp16::GetFloat(&__e);
      v51 = v50;
      v52 = ilogbf(v50);
      if (v52 <= -14)
      {
        v53 = -14;
      }

      else
      {
        v53 = v52;
      }

      v54 = ilogbf(v49);
      if (v54 <= -14)
      {
        v55 = -14;
      }

      else
      {
        v55 = v54;
      }

      if (v53 + a6 + v55 >= -20)
      {
        v45 = llroundf((v49 * v51) * v28) + v45;
        if (v45 > 0x7FFFFFFF)
        {
LABEL_37:
          *&v58 = INFINITY;
LABEL_40:
          v57 = *&v58;
          v56 = a9;
          goto LABEL_41;
        }

        if (v45 < 0xFFFFFFFF80000000)
        {
          break;
        }
      }

      v56 = a9;
      if (!v45)
      {
        v61 = 0.0;
        goto LABEL_42;
      }

      v57 = v45;
LABEL_41:
      __e = 0;
      v59 = frexp(v57, &__e);
      v60 = ldexp(v59, 11);
      v61 = ldexp(round(v60), __e - 11);
LABEL_42:
      v62 = v61 * v29;
      v63 = 0.0;
      if (v62 != 0.0)
      {
        __e = 0;
        v64 = frexp(v62, &__e);
        v65 = ldexp(v64, 11);
        v63 = ldexp(round(v65), __e - 11);
      }

      std::function<float ()(float)>::operator()(a13, v63);
      if (v66 == INFINITY)
      {
        LOBYTE(v67) = 127;
      }

      else if (v66 == -INFINITY)
      {
        LOBYTE(v67) = 0x80;
      }

      else
      {
        v67 = llroundf(v66);
        if (v67 >= 127)
        {
          v67 = 127;
        }

        if (v67 <= -128)
        {
          LOBYTE(v67) = 0x80;
        }
      }

      LOBYTE(__e) = v67;
      std::vector<signed char>::push_back[abi:ne200100](v56, &__e);
      ++a2;
      if (!--v16)
      {
        return;
      }
    }

    *&v58 = -INFINITY;
    goto LABEL_40;
  }
}

void sub_259998F98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  v10 = *a9;
  if (*a9)
  {
    *(a9 + 8) = v10;
    operator delete(v10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValue<MIL::Fp16,unsigned char>(unsigned __int8 *a1@<X0>, unsigned __int8 *a2@<X1>, unint64_t a3@<X2>, __int16 a4@<W3>, __int16 a5@<W4>, int a6@<W5>, int a7@<W6>, int a8@<W7>, const void **a9@<X8>, __int16 a10, int a11, __int16 a12, uint64_t a13)
{
  v16 = a3;
  v61 = a4;
  v60 = a5;
  v59 = a10;
  v58 = a12;
  a9[1] = 0;
  a9[2] = 0;
  *a9 = 0;
  std::vector<MIL::Fp16>::reserve(a9, a3);
  v20 = ldexp(1.0, a6 + 10);
  MIL::Fp16::GetFloat(&v59);
  v22 = v21;
  v23 = ldexp(1.0, a6 + 10 + a7);
  v24 = v22 * v23;
  v25 = llroundf(v24);
  if (fabsf(v24) < 1.0)
  {
    v25 = 0;
  }

  v57 = v25;
  MIL::Fp16::GetFloat(&v58);
  v27 = v26;
  v28 = exp2(-(a6 + 10 + a8));
  if (v16)
  {
    v29 = v20;
    v30 = -20 - a6;
    v31 = v28 * v27;
    while (1)
    {
      v33 = *a1++;
      v32 = v33;
      MIL::Fp16::GetFloat(&v61);
      v35 = v34;
      v36 = ilogbf(v34);
      v37 = v36 <= -14 ? -14 : v36;
      if (v37 >= v30)
      {
        v40 = v57 + llroundf((v35 * v32) * v29);
        if (v40 <= 0x7FFFFFFF)
        {
          LODWORD(v39) = v40 >= 0xFFFFFFFF80000000 ? v40 : -8388608;
          v38 = 2 * (v40 < 0xFFFFFFFF80000000);
        }

        else
        {
          v38 = 1;
          LODWORD(v39) = 2139095040;
        }
      }

      else
      {
        v38 = 0;
        LODWORD(v39) = v57;
      }

      v41 = *a2;
      MIL::Fp16::GetFloat(&v60);
      if (v38 == 2)
      {
        break;
      }

      if (v38)
      {
        goto LABEL_25;
      }

      v43 = v42;
      v44 = ilogbf(v42);
      if (v44 <= -14)
      {
        v45 = -14;
      }

      else
      {
        v45 = v44;
      }

      if (v45 >= v30)
      {
        v39 = llroundf((v43 * v41) * v29) + v39;
        if (v39 > 0x7FFFFFFF)
        {
LABEL_25:
          *&v47 = INFINITY;
LABEL_28:
          v46 = *&v47;
          goto LABEL_29;
        }

        if (v39 < 0xFFFFFFFF80000000)
        {
          break;
        }
      }

      if (!v39)
      {
        v50 = 0.0;
        goto LABEL_30;
      }

      v46 = v39;
LABEL_29:
      __e = 0;
      v48 = frexp(v46, &__e);
      v49 = ldexp(v48, 11);
      v50 = ldexp(round(v49), __e - 11);
LABEL_30:
      v51 = v50 * v31;
      v52 = 0.0;
      if (v51 != 0.0)
      {
        __e = 0;
        v53 = frexp(v51, &__e);
        v54 = ldexp(v53, 11);
        v52 = ldexp(round(v54), __e - 11);
      }

      v55 = std::function<float ()(float)>::operator()(a13, v52);
      LOWORD(__e) = MIL::Fp16::FromFloat(v55, v56);
      std::vector<MIL::Fp16>::push_back[abi:ne200100](a9, &__e);
      ++a2;
      if (!--v16)
      {
        return;
      }
    }

    *&v47 = -INFINITY;
    goto LABEL_28;
  }
}

void sub_259999288(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValue<unsigned char,unsigned char>(unsigned __int8 *a1@<X0>, unsigned __int8 *a2@<X1>, unint64_t a3@<X2>, __int16 a4@<W3>, __int16 a5@<W4>, int a6@<W5>, int a7@<W6>, int a8@<W7>, void *a9@<X8>, __int16 a10, int a11, __int16 a12, uint64_t a13)
{
  v16 = a3;
  v62 = a4;
  v61 = a5;
  v60 = a10;
  v59 = a12;
  a9[1] = 0;
  a9[2] = 0;
  *a9 = 0;
  std::vector<unsigned char>::reserve(a9, a3);
  v20 = ldexp(1.0, a6 + 10);
  MIL::Fp16::GetFloat(&v60);
  v22 = v21;
  v23 = ldexp(1.0, a6 + 10 + a7);
  v24 = v22 * v23;
  v25 = llroundf(v24);
  if (fabsf(v24) < 1.0)
  {
    v25 = 0;
  }

  v58 = v25;
  MIL::Fp16::GetFloat(&v59);
  v27 = v26;
  v28 = exp2(-(a6 + 10 + a8));
  if (v16)
  {
    v29 = v20;
    v30 = -20 - a6;
    v31 = v28 * v27;
    while (1)
    {
      v33 = *a1++;
      v32 = v33;
      MIL::Fp16::GetFloat(&v62);
      v35 = v34;
      v36 = ilogbf(v34);
      v37 = v36 <= -14 ? -14 : v36;
      if (v37 >= v30)
      {
        v40 = v58 + llroundf((v35 * v32) * v29);
        if (v40 <= 0x7FFFFFFF)
        {
          LODWORD(v39) = v40 >= 0xFFFFFFFF80000000 ? v40 : -8388608;
          v38 = 2 * (v40 < 0xFFFFFFFF80000000);
        }

        else
        {
          v38 = 1;
          LODWORD(v39) = 2139095040;
        }
      }

      else
      {
        v38 = 0;
        LODWORD(v39) = v58;
      }

      v41 = *a2;
      MIL::Fp16::GetFloat(&v61);
      if (v38 == 2)
      {
        break;
      }

      if (v38)
      {
        goto LABEL_25;
      }

      v43 = v42;
      v44 = ilogbf(v42);
      if (v44 <= -14)
      {
        v45 = -14;
      }

      else
      {
        v45 = v44;
      }

      if (v45 >= v30)
      {
        v39 = llroundf((v43 * v41) * v29) + v39;
        if (v39 > 0x7FFFFFFF)
        {
LABEL_25:
          *&v47 = INFINITY;
LABEL_28:
          v46 = *&v47;
          goto LABEL_29;
        }

        if (v39 < 0xFFFFFFFF80000000)
        {
          break;
        }
      }

      if (!v39)
      {
        v50 = 0.0;
        goto LABEL_30;
      }

      v46 = v39;
LABEL_29:
      __e = 0;
      v48 = frexp(v46, &__e);
      v49 = ldexp(v48, 11);
      v50 = ldexp(round(v49), __e - 11);
LABEL_30:
      v51 = v50 * v31;
      v52 = 0.0;
      if (v51 != 0.0)
      {
        __e = 0;
        v53 = frexp(v51, &__e);
        v54 = ldexp(v53, 11);
        v52 = ldexp(round(v54), __e - 11);
      }

      std::function<float ()(float)>::operator()(a13, v52);
      if (v55 == INFINITY)
      {
        LOBYTE(v56) = -1;
      }

      else if (v55 == -INFINITY)
      {
        LOBYTE(v56) = 0;
      }

      else
      {
        v57 = llroundf(v55);
        if (v57 >= 255)
        {
          v57 = 255;
        }

        v56 = v57 & ~(v57 >> 31);
      }

      LOBYTE(__e) = v56;
      std::vector<signed char>::push_back[abi:ne200100](a9, &__e);
      ++a2;
      if (!--v16)
      {
        return;
      }
    }

    *&v47 = -INFINITY;
    goto LABEL_28;
  }
}

void sub_2599995B4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValue<signed char,unsigned char>(unsigned __int8 *a1@<X0>, unsigned __int8 *a2@<X1>, unint64_t a3@<X2>, __int16 a4@<W3>, __int16 a5@<W4>, int a6@<W5>, int a7@<W6>, int a8@<W7>, void *a9@<X8>, __int16 a10, int a11, __int16 a12, uint64_t a13)
{
  v16 = a3;
  v61 = a4;
  v60 = a5;
  v59 = a10;
  v58 = a12;
  a9[1] = 0;
  a9[2] = 0;
  *a9 = 0;
  std::vector<unsigned char>::reserve(a9, a3);
  v20 = ldexp(1.0, a6 + 10);
  MIL::Fp16::GetFloat(&v59);
  v22 = v21;
  v23 = ldexp(1.0, a6 + 10 + a7);
  v24 = v22 * v23;
  v25 = llroundf(v24);
  if (fabsf(v24) < 1.0)
  {
    v25 = 0;
  }

  v57 = v25;
  MIL::Fp16::GetFloat(&v58);
  v27 = v26;
  v28 = exp2(-(a6 + 10 + a8));
  if (v16)
  {
    v29 = v20;
    v30 = -20 - a6;
    v31 = v28 * v27;
    while (1)
    {
      v33 = *a1++;
      v32 = v33;
      MIL::Fp16::GetFloat(&v61);
      v35 = v34;
      v36 = ilogbf(v34);
      v37 = v36 <= -14 ? -14 : v36;
      if (v37 >= v30)
      {
        v40 = v57 + llroundf((v35 * v32) * v29);
        if (v40 <= 0x7FFFFFFF)
        {
          LODWORD(v39) = v40 >= 0xFFFFFFFF80000000 ? v40 : -8388608;
          v38 = 2 * (v40 < 0xFFFFFFFF80000000);
        }

        else
        {
          v38 = 1;
          LODWORD(v39) = 2139095040;
        }
      }

      else
      {
        v38 = 0;
        LODWORD(v39) = v57;
      }

      v41 = *a2;
      MIL::Fp16::GetFloat(&v60);
      if (v38 == 2)
      {
        break;
      }

      if (v38)
      {
        goto LABEL_25;
      }

      v43 = v42;
      v44 = ilogbf(v42);
      if (v44 <= -14)
      {
        v45 = -14;
      }

      else
      {
        v45 = v44;
      }

      if (v45 >= v30)
      {
        v39 = llroundf((v43 * v41) * v29) + v39;
        if (v39 > 0x7FFFFFFF)
        {
LABEL_25:
          *&v47 = INFINITY;
LABEL_28:
          v46 = *&v47;
          goto LABEL_29;
        }

        if (v39 < 0xFFFFFFFF80000000)
        {
          break;
        }
      }

      if (!v39)
      {
        v50 = 0.0;
        goto LABEL_30;
      }

      v46 = v39;
LABEL_29:
      __e = 0;
      v48 = frexp(v46, &__e);
      v49 = ldexp(v48, 11);
      v50 = ldexp(round(v49), __e - 11);
LABEL_30:
      v51 = v50 * v31;
      v52 = 0.0;
      if (v51 != 0.0)
      {
        __e = 0;
        v53 = frexp(v51, &__e);
        v54 = ldexp(v53, 11);
        v52 = ldexp(round(v54), __e - 11);
      }

      std::function<float ()(float)>::operator()(a13, v52);
      if (v55 == INFINITY)
      {
        LOBYTE(v56) = 127;
      }

      else if (v55 == -INFINITY)
      {
        LOBYTE(v56) = 0x80;
      }

      else
      {
        v56 = llroundf(v55);
        if (v56 >= 127)
        {
          v56 = 127;
        }

        if (v56 <= -128)
        {
          LOBYTE(v56) = 0x80;
        }
      }

      LOBYTE(__e) = v56;
      std::vector<signed char>::push_back[abi:ne200100](a9, &__e);
      ++a2;
      if (!--v16)
      {
        return;
      }
    }

    *&v47 = -INFINITY;
    goto LABEL_28;
  }
}

void sub_2599998E8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValue<MIL::Fp16,signed char>(char *a1@<X0>, char *a2@<X1>, unint64_t a3@<X2>, __int16 a4@<W3>, __int16 a5@<W4>, int a6@<W5>, int a7@<W6>, int a8@<W7>, const void **a9@<X8>, __int16 a10, int a11, __int16 a12, uint64_t a13)
{
  v16 = a3;
  v61 = a4;
  v60 = a5;
  v59 = a10;
  v58 = a12;
  a9[1] = 0;
  a9[2] = 0;
  *a9 = 0;
  std::vector<MIL::Fp16>::reserve(a9, a3);
  v20 = ldexp(1.0, a6 + 10);
  MIL::Fp16::GetFloat(&v59);
  v22 = v21;
  v23 = ldexp(1.0, a6 + 10 + a7);
  v24 = v22 * v23;
  v25 = llroundf(v24);
  if (fabsf(v24) < 1.0)
  {
    v25 = 0;
  }

  v57 = v25;
  MIL::Fp16::GetFloat(&v58);
  v27 = v26;
  v28 = exp2(-(a6 + 10 + a8));
  if (v16)
  {
    v29 = v20;
    v30 = -20 - a6;
    v31 = v28 * v27;
    while (1)
    {
      v33 = *a1++;
      v32 = v33;
      MIL::Fp16::GetFloat(&v61);
      v35 = v34;
      v36 = ilogbf(v34);
      v37 = v36 <= -14 ? -14 : v36;
      if (v37 >= v30)
      {
        v40 = v57 + llroundf((v35 * v32) * v29);
        if (v40 <= 0x7FFFFFFF)
        {
          LODWORD(v39) = v40 >= 0xFFFFFFFF80000000 ? v40 : -8388608;
          v38 = 2 * (v40 < 0xFFFFFFFF80000000);
        }

        else
        {
          v38 = 1;
          LODWORD(v39) = 2139095040;
        }
      }

      else
      {
        v38 = 0;
        LODWORD(v39) = v57;
      }

      v41 = *a2;
      MIL::Fp16::GetFloat(&v60);
      if (v38 == 2)
      {
        break;
      }

      if (v38)
      {
        goto LABEL_25;
      }

      v43 = v42;
      v44 = ilogbf(v42);
      if (v44 <= -14)
      {
        v45 = -14;
      }

      else
      {
        v45 = v44;
      }

      if (v45 >= v30)
      {
        v39 = llroundf((v43 * v41) * v29) + v39;
        if (v39 > 0x7FFFFFFF)
        {
LABEL_25:
          *&v47 = INFINITY;
LABEL_28:
          v46 = *&v47;
          goto LABEL_29;
        }

        if (v39 < 0xFFFFFFFF80000000)
        {
          break;
        }
      }

      if (!v39)
      {
        v50 = 0.0;
        goto LABEL_30;
      }

      v46 = v39;
LABEL_29:
      __e = 0;
      v48 = frexp(v46, &__e);
      v49 = ldexp(v48, 11);
      v50 = ldexp(round(v49), __e - 11);
LABEL_30:
      v51 = v50 * v31;
      v52 = 0.0;
      if (v51 != 0.0)
      {
        __e = 0;
        v53 = frexp(v51, &__e);
        v54 = ldexp(v53, 11);
        v52 = ldexp(round(v54), __e - 11);
      }

      v55 = std::function<float ()(float)>::operator()(a13, v52);
      LOWORD(__e) = MIL::Fp16::FromFloat(v55, v56);
      std::vector<MIL::Fp16>::push_back[abi:ne200100](a9, &__e);
      ++a2;
      if (!--v16)
      {
        return;
      }
    }

    *&v47 = -INFINITY;
    goto LABEL_28;
  }
}

void sub_259999BDC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValue<unsigned char,signed char>(char *a1@<X0>, char *a2@<X1>, unint64_t a3@<X2>, __int16 a4@<W3>, __int16 a5@<W4>, int a6@<W5>, int a7@<W6>, int a8@<W7>, void *a9@<X8>, __int16 a10, int a11, __int16 a12, uint64_t a13)
{
  v16 = a3;
  v62 = a4;
  v61 = a5;
  v60 = a10;
  v59 = a12;
  a9[1] = 0;
  a9[2] = 0;
  *a9 = 0;
  std::vector<unsigned char>::reserve(a9, a3);
  v20 = ldexp(1.0, a6 + 10);
  MIL::Fp16::GetFloat(&v60);
  v22 = v21;
  v23 = ldexp(1.0, a6 + 10 + a7);
  v24 = v22 * v23;
  v25 = llroundf(v24);
  if (fabsf(v24) < 1.0)
  {
    v25 = 0;
  }

  v58 = v25;
  MIL::Fp16::GetFloat(&v59);
  v27 = v26;
  v28 = exp2(-(a6 + 10 + a8));
  if (v16)
  {
    v29 = v20;
    v30 = -20 - a6;
    v31 = v28 * v27;
    while (1)
    {
      v33 = *a1++;
      v32 = v33;
      MIL::Fp16::GetFloat(&v62);
      v35 = v34;
      v36 = ilogbf(v34);
      v37 = v36 <= -14 ? -14 : v36;
      if (v37 >= v30)
      {
        v40 = v58 + llroundf((v35 * v32) * v29);
        if (v40 <= 0x7FFFFFFF)
        {
          LODWORD(v39) = v40 >= 0xFFFFFFFF80000000 ? v40 : -8388608;
          v38 = 2 * (v40 < 0xFFFFFFFF80000000);
        }

        else
        {
          v38 = 1;
          LODWORD(v39) = 2139095040;
        }
      }

      else
      {
        v38 = 0;
        LODWORD(v39) = v58;
      }

      v41 = *a2;
      MIL::Fp16::GetFloat(&v61);
      if (v38 == 2)
      {
        break;
      }

      if (v38)
      {
        goto LABEL_25;
      }

      v43 = v42;
      v44 = ilogbf(v42);
      if (v44 <= -14)
      {
        v45 = -14;
      }

      else
      {
        v45 = v44;
      }

      if (v45 >= v30)
      {
        v39 = llroundf((v43 * v41) * v29) + v39;
        if (v39 > 0x7FFFFFFF)
        {
LABEL_25:
          *&v47 = INFINITY;
LABEL_28:
          v46 = *&v47;
          goto LABEL_29;
        }

        if (v39 < 0xFFFFFFFF80000000)
        {
          break;
        }
      }

      if (!v39)
      {
        v50 = 0.0;
        goto LABEL_30;
      }

      v46 = v39;
LABEL_29:
      __e = 0;
      v48 = frexp(v46, &__e);
      v49 = ldexp(v48, 11);
      v50 = ldexp(round(v49), __e - 11);
LABEL_30:
      v51 = v50 * v31;
      v52 = 0.0;
      if (v51 != 0.0)
      {
        __e = 0;
        v53 = frexp(v51, &__e);
        v54 = ldexp(v53, 11);
        v52 = ldexp(round(v54), __e - 11);
      }

      std::function<float ()(float)>::operator()(a13, v52);
      if (v55 == INFINITY)
      {
        LOBYTE(v56) = -1;
      }

      else if (v55 == -INFINITY)
      {
        LOBYTE(v56) = 0;
      }

      else
      {
        v57 = llroundf(v55);
        if (v57 >= 255)
        {
          v57 = 255;
        }

        v56 = v57 & ~(v57 >> 31);
      }

      LOBYTE(__e) = v56;
      std::vector<signed char>::push_back[abi:ne200100](a9, &__e);
      ++a2;
      if (!--v16)
      {
        return;
      }
    }

    *&v47 = -INFINITY;
    goto LABEL_28;
  }
}

void sub_259999F10(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValue<signed char,signed char>(char *a1@<X0>, char *a2@<X1>, unint64_t a3@<X2>, __int16 a4@<W3>, __int16 a5@<W4>, int a6@<W5>, int a7@<W6>, int a8@<W7>, void *a9@<X8>, __int16 a10, int a11, __int16 a12, uint64_t a13)
{
  v16 = a3;
  v61 = a4;
  v60 = a5;
  v59 = a10;
  v58 = a12;
  a9[1] = 0;
  a9[2] = 0;
  *a9 = 0;
  std::vector<unsigned char>::reserve(a9, a3);
  v20 = ldexp(1.0, a6 + 10);
  MIL::Fp16::GetFloat(&v59);
  v22 = v21;
  v23 = ldexp(1.0, a6 + 10 + a7);
  v24 = v22 * v23;
  v25 = llroundf(v24);
  if (fabsf(v24) < 1.0)
  {
    v25 = 0;
  }

  v57 = v25;
  MIL::Fp16::GetFloat(&v58);
  v27 = v26;
  v28 = exp2(-(a6 + 10 + a8));
  if (v16)
  {
    v29 = v20;
    v30 = -20 - a6;
    v31 = v28 * v27;
    while (1)
    {
      v33 = *a1++;
      v32 = v33;
      MIL::Fp16::GetFloat(&v61);
      v35 = v34;
      v36 = ilogbf(v34);
      v37 = v36 <= -14 ? -14 : v36;
      if (v37 >= v30)
      {
        v40 = v57 + llroundf((v35 * v32) * v29);
        if (v40 <= 0x7FFFFFFF)
        {
          LODWORD(v39) = v40 >= 0xFFFFFFFF80000000 ? v40 : -8388608;
          v38 = 2 * (v40 < 0xFFFFFFFF80000000);
        }

        else
        {
          v38 = 1;
          LODWORD(v39) = 2139095040;
        }
      }

      else
      {
        v38 = 0;
        LODWORD(v39) = v57;
      }

      v41 = *a2;
      MIL::Fp16::GetFloat(&v60);
      if (v38 == 2)
      {
        break;
      }

      if (v38)
      {
        goto LABEL_25;
      }

      v43 = v42;
      v44 = ilogbf(v42);
      if (v44 <= -14)
      {
        v45 = -14;
      }

      else
      {
        v45 = v44;
      }

      if (v45 >= v30)
      {
        v39 = llroundf((v43 * v41) * v29) + v39;
        if (v39 > 0x7FFFFFFF)
        {
LABEL_25:
          *&v47 = INFINITY;
LABEL_28:
          v46 = *&v47;
          goto LABEL_29;
        }

        if (v39 < 0xFFFFFFFF80000000)
        {
          break;
        }
      }

      if (!v39)
      {
        v50 = 0.0;
        goto LABEL_30;
      }

      v46 = v39;
LABEL_29:
      __e = 0;
      v48 = frexp(v46, &__e);
      v49 = ldexp(v48, 11);
      v50 = ldexp(round(v49), __e - 11);
LABEL_30:
      v51 = v50 * v31;
      v52 = 0.0;
      if (v51 != 0.0)
      {
        __e = 0;
        v53 = frexp(v51, &__e);
        v54 = ldexp(v53, 11);
        v52 = ldexp(round(v54), __e - 11);
      }

      std::function<float ()(float)>::operator()(a13, v52);
      if (v55 == INFINITY)
      {
        LOBYTE(v56) = 127;
      }

      else if (v55 == -INFINITY)
      {
        LOBYTE(v56) = 0x80;
      }

      else
      {
        v56 = llroundf(v55);
        if (v56 >= 127)
        {
          v56 = 127;
        }

        if (v56 <= -128)
        {
          LOBYTE(v56) = 0x80;
        }
      }

      LOBYTE(__e) = v56;
      std::vector<signed char>::push_back[abi:ne200100](a9, &__e);
      ++a2;
      if (!--v16)
      {
        return;
      }
    }

    *&v47 = -INFINITY;
    goto LABEL_28;
  }
}

void sub_25999A24C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::NeConvCpu::Run(MIL::IRObject *a1@<X1>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v118 = *MEMORY[0x277D85DE8];
  v6 = (*(*a1 + 56))(a1);
  v7 = *(v6 + 23);
  if (v7 < 0)
  {
    if (*(v6 + 8) != 7)
    {
      goto LABEL_10;
    }

    v6 = *v6;
  }

  else if (v7 != 7)
  {
    goto LABEL_10;
  }

  if (*v6 != 1667196270 || *(v6 + 3) != 1986948963)
  {
LABEL_10:
    *a3 = 1;
    v9 = a3 + 8;
    std::string::basic_string[abi:ne200100]<0>(&v87, "ne_conv");
    v10 = std::string::insert(&v87, 0, "Expected ");
    v11 = *&v10->__r_.__value_.__l.__data_;
    v93.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
    *&v93.__r_.__value_.__l.__data_ = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    v12 = std::string::append(&v93, " op. Got ");
    v13 = *&v12->__r_.__value_.__l.__data_;
    v100.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
    *&v100.__r_.__value_.__l.__data_ = v13;
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

    v18 = std::string::append(&v100, v16, v17);
    v19 = *&v18->__r_.__value_.__l.__data_;
    *(v9 + 16) = *(&v18->__r_.__value_.__l + 2);
    *v9 = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v100.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v93.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
    {
      v20 = v87.__r_.__value_.__r.__words[0];
LABEL_154:
      operator delete(v20);
      goto LABEL_155;
    }

    goto LABEL_155;
  }

  v105 = 0;
  v104 = 0u;
  v103 = 0u;
  v102 = 0u;
  v101 = 0u;
  v97 = 0;
  v98 = 0;
  v99 = 0;
  v94 = 0;
  v95 = 0;
  v96 = 0;
  ANEMachineIR::Validators::ParseConvParameterValues(a1, &v97, &v94, &v100, &v93);
  if ((MIL::ValidationResult::IsGood(&v93) & 1) == 0)
  {
    *a3 = 3;
    std::string::basic_string[abi:ne200100]<0>((a3 + 8), "Failed to parse conv parameters.");
    goto LABEL_144;
  }

  std::string::basic_string[abi:ne200100]<0>(&v87, "acc_bias_shift");
  ParameterValue = MIL::IROperation::TryGetParameterValue();
  if (ParameterValue && (*(*ParameterValue + 40))(ParameterValue) && (v22 = MEMORY[0x259CA93E0]()) != 0)
  {
    v23 = *v22;
  }

  else
  {
    v23 = 0;
  }

  if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v87.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v87, "acc_left_shift");
  v24 = MIL::IROperation::TryGetParameterValue();
  if (v24 && (*(*v24 + 40))(v24) && (v25 = MEMORY[0x259CA93E0]()) != 0)
  {
    v26 = *v25;
  }

  else
  {
    v26 = 0;
  }

  if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v87.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v87, "post_right_shift");
  v27 = MIL::IROperation::TryGetParameterValue();
  if (v27 && (*(*v27 + 40))(v27) && (v28 = MEMORY[0x259CA93E0]()) != 0)
  {
    v29 = *v28;
  }

  else
  {
    v29 = 0;
  }

  if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v87.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v87, "pre_relu");
  v30 = MIL::IROperation::TryGetParameterValue();
  v82 = v29;
  if (v30)
  {
    if ((*(*v30 + 40))(v30))
    {
      v31 = MEMORY[0x259CA93F0]();
      if (v31)
      {
        v32 = *v31;
      }
    }
  }

  if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v87.__r_.__value_.__l.__data_);
  }

  v33 = std::string::basic_string[abi:ne200100]<0>(&v87, "bias");
  LOWORD(v91[0]) = MIL::Fp16::FromFloat(v33, 0.0);
  v116 = 0;
  v117 = 0;
  v115 = 0;
  std::vector<MIL::Fp16>::__init_with_size[abi:ne200100]<MIL::Fp16 const*,MIL::Fp16 const*>(&v115, v91, v91 + 2, 1);
  MIL::ANEMachineIR::GetScalarOrVectorOrDefault<MIL::Fp16>(a1, &v115, v92);
  if (v115)
  {
    v116 = v115;
    operator delete(v115);
  }

  if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v87.__r_.__value_.__l.__data_);
  }

  v34 = std::string::basic_string[abi:ne200100]<0>(&v87, "post_scale");
  LOWORD(Data) = MIL::Fp16::FromFloat(v34, 1.0);
  v116 = 0;
  v117 = 0;
  v115 = 0;
  std::vector<MIL::Fp16>::__init_with_size[abi:ne200100]<MIL::Fp16 const*,MIL::Fp16 const*>(&v115, &Data, &Data + 2, 1);
  MIL::ANEMachineIR::GetScalarOrVectorOrDefault<MIL::Fp16>(a1, &v115, v91);
  if (v115)
  {
    v116 = v115;
    operator delete(v115);
  }

  if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v87.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v87, "x");
  InterpretedTensorValue = MIL::ANEMachineIR::Interpreter::TryGetInterpretedTensorValue(a2, a1, &v87);
  if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v87.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v87, "dense_kernel");
  v36 = MIL::ANEMachineIR::Interpreter::TryGetInterpretedTensorValue(a2, a1, &v87);
  if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v87.__r_.__value_.__l.__data_);
  }

  if (InterpretedTensorValue)
  {
    if (v36)
    {
      v79 = v26;
      v80 = v23;
      v37 = (*(*v36 + 32))(v36);
      v38 = (*(*v37 + 88))(v37);
      if (v38 == 4)
      {
        v39 = MIL::IRTensorValue::GetDataView<MIL::Fp16>();
        v81 = 0;
      }

      else
      {
        v41 = (*(*v36 + 32))(v36);
        ANEMachineIR::Utils::GetStaticTensorShape(v41, v42, &v87.__r_.__value_.__l.__data_);
        v43 = v87.__r_.__value_.__r.__words[0];
        v44 = 1;
        while (v43 != v87.__r_.__value_.__l.__size_)
        {
          v45 = *v43++;
          v44 *= v45;
        }

        v115 = 0;
        v116 = 0;
        v117 = 0;
        std::vector<MIL::Fp16>::reserve(&v115, v44);
        if (v38 == 9)
        {
          Data = MIL::IRTensorValue::GetDataView<signed char>();
          v90 = v50;
          if (v44)
          {
            for (i = 0; i != v44; ++i)
            {
              v52 = MIL::Util::Span<signed char const,18446744073709551615ul>::operator[](&Data, i);
              LOWORD(v86.__r_.__value_.__l.__data_) = MIL::Fp16::FromFloat(v52, *v52);
              std::vector<MIL::Fp16>::push_back[abi:ne200100](&v115, &v86);
            }
          }
        }

        else
        {
          if (v38 != 14)
          {
            exception = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(exception, "Unexpected dtype copying to fp16.");
            __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
          }

          Data = MIL::IRTensorValue::GetDataView<unsigned char>();
          v90 = v46;
          if (v44)
          {
            for (j = 0; j != v44; ++j)
            {
              v48 = MIL::Util::Span<unsigned char const,18446744073709551615ul>::operator[](&Data, j);
              LOBYTE(v49) = *v48;
              LOWORD(v86.__r_.__value_.__l.__data_) = MIL::Fp16::FromFloat(v48, v49);
              std::vector<MIL::Fp16>::push_back[abi:ne200100](&v115, &v86);
            }
          }
        }

        if (v87.__r_.__value_.__r.__words[0])
        {
          v87.__r_.__value_.__l.__size_ = v87.__r_.__value_.__r.__words[0];
          operator delete(v87.__r_.__value_.__l.__data_);
        }

        v39 = v115;
        v81 = v115;
      }

      v53 = (*(*v36 + 32))(v36);
      ANEMachineIR::Utils::GetStaticTensorShape(v53, v54, &Data);
      *&v87.__r_.__value_.__r.__words[1] = 0uLL;
      v88 = 0;
      MIL::ANEMachineIR::Interpreter::GetCpuNeActivationFunction(a1, &v87, &v115);
      if (LODWORD(v87.__r_.__value_.__l.__data_))
      {
        *a3 = v87.__r_.__value_.__l.__data_;
        *(a3 + 8) = *&v87.__r_.__value_.__r.__words[1];
        *(a3 + 24) = v88;
        *&v87.__r_.__value_.__r.__words[1] = 0uLL;
        v88 = 0;
LABEL_134:
        std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](&v115);
        if (SHIBYTE(v88) < 0)
        {
          operator delete(v87.__r_.__value_.__l.__size_);
        }

        if (Data)
        {
          v90 = Data;
          operator delete(Data);
        }

        if (v81)
        {
          operator delete(v81);
        }

        goto LABEL_140;
      }

      v55 = (*(*InterpretedTensorValue + 32))(InterpretedTensorValue);
      v56 = (*(*v55 + 88))(v55);
      OutputType = MIL::IROperation::GetOutputType(a1);
      v58 = MIL::IRValueType::AsTensorType(OutputType);
      v59 = (*(*v58 + 88))(v58);
      std::string::basic_string[abi:ne200100]<0>(&v84, "pad_mode");
      std::string::basic_string[abi:ne200100]<0>(&__p, "zero");
      v60 = MIL::IROperation::TryGetParameterValue();
      if (v60 && (v60 = (*(*v60 + 40))(v60)) != 0 && (v60 = MEMORY[0x259CA93D0]()) != 0)
      {
        if (*(v60 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v86, *v60, *(v60 + 8));
        }

        else
        {
          v61 = *v60;
          v86.__r_.__value_.__r.__words[2] = *(v60 + 16);
          *&v86.__r_.__value_.__l.__data_ = v61;
        }
      }

      else
      {
        v86 = __p;
        memset(&__p, 0, sizeof(__p));
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v85 < 0)
      {
        operator delete(v84);
      }

      if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
      {
        if (v86.__r_.__value_.__l.__size_ != 4)
        {
          goto LABEL_103;
        }

        v62 = v86.__r_.__value_.__r.__words[0];
      }

      else
      {
        if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) != 4)
        {
          goto LABEL_103;
        }

        v62 = &v86;
      }

      if (LODWORD(v62->__r_.__value_.__l.__data_) == 1869768058)
      {
        v78 = 0;
        goto LABEL_107;
      }

LABEL_103:
      v60 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v86, "replicate");
      if ((v60 & 1) == 0)
      {
        *a3 = 3;
        std::string::basic_string[abi:ne200100]<0>((a3 + 8), "Unexpected value for pad_mode.");
        goto LABEL_132;
      }

      v78 = 1;
LABEL_107:
      v63 = MIL::Fp16::FromFloat(v60, 1.0);
      switch(v56)
      {
        case 4:
          switch(v59)
          {
            case 14:
              v72 = MIL::IRTensorValue::GetDataView<MIL::Fp16>();
              std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v113, &v115);
              BYTE2(v76) = v82;
              BYTE1(v76) = v80;
              LOBYTE(v76) = v79;
              MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,MIL::Fp16>(v72, &v97, v39, v38, &Data, &v94, &v100, v78, v76, v92, v91, 0, v77, v63);
            case 9:
              v70 = MIL::IRTensorValue::GetDataView<MIL::Fp16>();
              std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v112, &v115);
              BYTE2(v76) = v82;
              BYTE1(v76) = v80;
              LOBYTE(v76) = v79;
              MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,MIL::Fp16>(v70, &v97, v39, v38, &Data, &v94, &v100, v78, v76, v92, v91, 0, v77, v63);
            case 4:
              v66 = MIL::IRTensorValue::GetDataView<MIL::Fp16>();
              std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v114, &v115);
              BYTE2(v76) = v82;
              BYTE1(v76) = v80;
              LOBYTE(v76) = v79;
              MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,MIL::Fp16>(v66, &v97, v39, v38, &Data, &v94, &v100, v78, v76, v92, v91, 0, v77, v63);
          }

          break;
        case 9:
          switch(v59)
          {
            case 14:
              v69 = MIL::IRTensorValue::GetDataView<signed char>();
              std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v107, &v115);
              BYTE2(v76) = v82;
              BYTE1(v76) = v80;
              LOBYTE(v76) = v79;
              MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,signed char>(v69, &v97, v39, v38, &Data, &v94, &v100, v78, v76, v92, v91, 0, v77, v63);
            case 9:
              v68 = MIL::IRTensorValue::GetDataView<signed char>();
              std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v106, &v115);
              BYTE2(v76) = v82;
              BYTE1(v76) = v80;
              LOBYTE(v76) = v79;
              MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,signed char>(v68, &v97, v39, v38, &Data, &v94, &v100, v78, v76, v92, v91, 0, v77, v63);
            case 4:
              v65 = MIL::IRTensorValue::GetDataView<signed char>();
              std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v108, &v115);
              BYTE2(v76) = v82;
              BYTE1(v76) = v80;
              LOBYTE(v76) = v79;
              MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,signed char>(v65, &v97, v39, v38, &Data, &v94, &v100, v78, v76, v92, v91, 0, v77, v63);
          }

          break;
        case 14:
          switch(v59)
          {
            case 14:
              v73 = MIL::IRTensorValue::GetDataView<unsigned char>();
              std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v110, &v115);
              BYTE2(v76) = v82;
              BYTE1(v76) = v80;
              LOBYTE(v76) = v79;
              MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,unsigned char>(v73, &v97, v39, v38, &Data, &v94, &v100, v78, v76, v92, v91, 0, v77, v63);
            case 9:
              v71 = MIL::IRTensorValue::GetDataView<unsigned char>();
              std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v109, &v115);
              BYTE2(v76) = v82;
              BYTE1(v76) = v80;
              LOBYTE(v76) = v79;
              MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,unsigned char>(v71, &v97, v39, v38, &Data, &v94, &v100, v78, v76, v92, v91, 0, v77, v63);
            case 4:
              v64 = MIL::IRTensorValue::GetDataView<unsigned char>();
              std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v111, &v115);
              BYTE2(v76) = v82;
              BYTE1(v76) = v80;
              LOBYTE(v76) = v79;
              MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,unsigned char>(v64, &v97, v39, v38, &Data, &v94, &v100, v78, v76, v92, v91, 0, v77, v63);
          }

          break;
        default:
          v67 = "Unimplemented input dtype";
LABEL_124:
          *a3 = 3;
          std::string::basic_string[abi:ne200100]<0>((a3 + 8), v67);
LABEL_132:
          if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v86.__r_.__value_.__l.__data_);
          }

          goto LABEL_134;
      }

      v67 = "Unimplemented output dtype";
      goto LABEL_124;
    }

    v40 = "No value for dense_kernel";
  }

  else
  {
    v40 = "No value for x";
  }

  *a3 = 2;
  std::string::basic_string[abi:ne200100]<0>((a3 + 8), v40);
LABEL_140:
  if (v91[0])
  {
    v91[1] = v91[0];
    operator delete(v91[0]);
  }

  if (v92[0])
  {
    v92[1] = v92[0];
    operator delete(v92[0]);
  }

LABEL_144:
  MEMORY[0x259CA8F00](&v93);
  if (v94)
  {
    v95 = v94;
    operator delete(v94);
  }

  if (v97)
  {
    v98 = v97;
    operator delete(v97);
  }

  if (v104)
  {
    *(&v104 + 1) = v104;
    operator delete(v104);
  }

  if (*(&v102 + 1))
  {
    *&v103 = *(&v102 + 1);
    operator delete(*(&v102 + 1));
  }

  v20 = v101;
  if (v101)
  {
    *(&v101 + 1) = v101;
    goto LABEL_154;
  }

LABEL_155:
  v74 = *MEMORY[0x277D85DE8];
}

void sub_25999B910(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, void *a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, uint64_t a61, void *a62, uint64_t a63)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v65 - 136);
  if (a41 < 0)
  {
    operator delete(a36);
  }

  if (a42)
  {
    operator delete(a42);
  }

  if (a18)
  {
    operator delete(a18);
  }

  if (a45)
  {
    operator delete(a45);
  }

  if (a48)
  {
    operator delete(a48);
  }

  MEMORY[0x259CA8F00](&a51);
  if (a59)
  {
    a60 = a59;
    operator delete(a59);
  }

  if (a62)
  {
    a63 = a62;
    operator delete(a62);
  }

  ANEMachineIR::Validators::NeConvParameterValues::~NeConvParameterValues(&a65);
  _Unwind_Resume(a1);
}

void MilTranslator::OpTranslator::TranslateLinear(MilTranslator::OpTranslator *this@<X0>, const MIL::IROperation *a2@<X1>, uint64_t a3@<X8>)
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
    std::string::__init_copy_ctor_external(&v84, *v7, *(v7 + 8));
  }

  else
  {
    v8 = *v7;
    v84.__r_.__value_.__r.__words[2] = *(v7 + 16);
    *&v84.__r_.__value_.__l.__data_ = v8;
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "x");
  ParameterType = MIL::IROperation::GetParameterType();
  v11 = MIL::IRValueType::AsTensorType(ParameterType);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  ANEMachineIR::Utils::GetStaticTensorShape(v11, v10, &v82);
  v12 = v83 - v82;
  if (v83 - v82 == 16)
  {
    MilTranslator::OpTranslator::GetChannelLastTensorNameMayInsertTranspose(this, &v84, v11, &v81);
    memset(&v80, 0, sizeof(v80));
    std::string::basic_string[abi:ne200100]<0>(&__p, "weight");
    MilTranslator::WeightTranslator::TargetProgramConstOpName(this + 144, a2, &__p, 1, 1uLL, &v80, a3);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (!*a3)
    {
      if (*(a3 + 31) < 0)
      {
        operator delete(*(a3 + 8));
      }

      std::string::basic_string[abi:ne200100]<0>(&__p, "weight");
      v13 = MIL::IROperation::GetParameterType();
      v15 = MIL::IRValueType::AsTensorType(v13);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      ANEMachineIR::Utils::GetStaticTensorShape(v15, v14, v79);
      v16 = (*(*a2 + 176))(a2);
      v18 = **v16;
      v17 = (*v16)[1];
      if (v17)
      {
        atomic_fetch_add_explicit(v17 + 1, 1uLL, memory_order_relaxed);
      }

      v53 = v17;
      Type = MIL::IRNamedValueType::GetType(v18);
      MIL::IRValueType::AsTensorType(Type);
      memset(&v78, 0, sizeof(v78));
      __p.__r_.__value_.__s.__data_[6] = 0;
      __p.__r_.__value_.__s.__data_[8] = 0;
      v70 = 0;
      v71 = 0;
      v72 = 0;
      v73 = 0;
      v74 = 0;
      LOBYTE(v75) = 0;
      v77 = 0;
      LODWORD(__p.__r_.__value_.__l.__data_) = 0;
      __p.__r_.__value_.__s.__data_[4] = 0;
      LocationPtr = MIL::IRObject::GetLocationPtr(a2);
      v21 = (*(*a2 + 56))(a2);
      (*(*a2 + 200))(&v67, a2);
      v22 = v67.__r_.__value_.__r.__words[0];
      if (v67.__r_.__value_.__l.__size_ == v67.__r_.__value_.__r.__words[0])
      {
        std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
      }

      v23 = (*(*a2 + 176))(a2);
      if (*(v23 + 8) == *v23)
      {
        std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
      }

      v24 = MIL::IRNamedValueType::GetType(**v23);
      v25 = MIL::IRValueType::AsTensorType(v24);
      v26 = **(this + 12);
      ANEMachineIR::Validators::ValidateNeMatmul(LocationPtr, v21, v11, v15, v22, v25, &__p, &v68);
      v54.__r_.__value_.__r.__words[0] = &v67;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v54);
      if (MIL::ValidationResult::IsGood(&v68))
      {
        std::string::basic_string[abi:ne200100]<0>(&v65, "ne_matmul");
        MilTranslator::OpTranslator::AddOperation(this);
        if (v66 < 0)
        {
          operator delete(v65);
        }

        std::string::basic_string[abi:ne200100]<0>(&v62, "x");
        if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v61, v81.__r_.__value_.__l.__data_, v81.__r_.__value_.__l.__size_);
        }

        else
        {
          v61 = v81;
        }

        MIL::Builder::OperationBuilder::AddInput();
        if (v64)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v64);
        }

        if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v61.__r_.__value_.__l.__data_);
        }

        if (v63 < 0)
        {
          operator delete(v62);
        }

        std::string::basic_string[abi:ne200100]<0>(&v58, "y");
        if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v57, v80.__r_.__value_.__l.__data_, v80.__r_.__value_.__l.__size_);
        }

        else
        {
          v57 = v80;
        }

        MIL::Builder::OperationBuilder::AddInput();
        if (v60)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v60);
        }

        if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v57.__r_.__value_.__l.__data_);
        }

        if (v59 < 0)
        {
          operator delete(v58);
        }

        Name = MIL::IRNamedValueType::GetName(v18);
        if (*(Name + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v55, *Name, *(Name + 8));
        }

        else
        {
          v52 = *Name;
          v55.__r_.__value_.__r.__words[2] = *(Name + 16);
          *&v55.__r_.__value_.__l.__data_ = v52;
        }

        MIL::Builder::OperationBuilder::AddOutput();
        if (v56)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v56);
        }

        if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v55.__r_.__value_.__l.__data_);
        }

        *a3 = 0;
        std::string::basic_string[abi:ne200100]<0>((a3 + 8), &unk_259A4D977);
        if (v67.__r_.__value_.__l.__size_)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v67.__r_.__value_.__l.__size_);
        }

        v50 = v53;
      }

      else
      {
        MIL::MILResult::GetMessage(&v68);
        std::operator+<char>();
        if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v41 = &v67;
        }

        else
        {
          v41 = v67.__r_.__value_.__r.__words[0];
        }

        if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v67.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v67.__r_.__value_.__l.__size_;
        }

        std::string::append(&v78, v41, size);
        if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v67.__r_.__value_.__l.__data_);
        }

        *a3 = 6;
        v43 = a3 + 8;
        (*(*a2 + 56))(a2);
        std::operator+<char>();
        v44 = std::string::append(&v54, "', violations: ");
        v45 = *&v44->__r_.__value_.__l.__data_;
        v67.__r_.__value_.__r.__words[2] = v44->__r_.__value_.__r.__words[2];
        *&v67.__r_.__value_.__l.__data_ = v45;
        v44->__r_.__value_.__l.__size_ = 0;
        v44->__r_.__value_.__r.__words[2] = 0;
        v44->__r_.__value_.__r.__words[0] = 0;
        if ((v78.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v46 = &v78;
        }

        else
        {
          v46 = v78.__r_.__value_.__r.__words[0];
        }

        if ((v78.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v47 = HIBYTE(v78.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v47 = v78.__r_.__value_.__l.__size_;
        }

        v48 = std::string::append(&v67, v46, v47);
        v49 = *&v48->__r_.__value_.__l.__data_;
        *(v43 + 16) = *(&v48->__r_.__value_.__l + 2);
        *v43 = v49;
        v48->__r_.__value_.__l.__size_ = 0;
        v48->__r_.__value_.__r.__words[2] = 0;
        v48->__r_.__value_.__r.__words[0] = 0;
        v50 = v53;
        if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v67.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v54.__r_.__value_.__l.__data_);
        }
      }

      MEMORY[0x259CA8F00](&v68);
      if (v77 == 1 && v75)
      {
        v76 = v75;
        operator delete(v75);
      }

      if (v70 == 1 && __p.__r_.__value_.__l.__size_)
      {
        __p.__r_.__value_.__r.__words[2] = __p.__r_.__value_.__l.__size_;
        operator delete(__p.__r_.__value_.__l.__size_);
      }

      if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v78.__r_.__value_.__l.__data_);
      }

      if (v50)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v50);
      }

      if (v79[0])
      {
        v79[1] = v79[0];
        operator delete(v79[0]);
      }
    }

    if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v80.__r_.__value_.__l.__data_);
    }

    if ((SHIBYTE(v81.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_102;
    }

    v40 = v81.__r_.__value_.__r.__words[0];
  }

  else
  {
    *a3 = 6;
    v27 = a3 + 8;
    std::to_string(&v80, v12 >> 3);
    v28 = std::string::insert(&v80, 0, "Unsupported input rank ");
    v29 = *&v28->__r_.__value_.__l.__data_;
    v81.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
    *&v81.__r_.__value_.__l.__data_ = v29;
    v28->__r_.__value_.__l.__size_ = 0;
    v28->__r_.__value_.__r.__words[2] = 0;
    v28->__r_.__value_.__r.__words[0] = 0;
    v30 = std::string::append(&v81, " for op '");
    v31 = *&v30->__r_.__value_.__l.__data_;
    v68.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
    *&v68.__r_.__value_.__l.__data_ = v31;
    v30->__r_.__value_.__l.__size_ = 0;
    v30->__r_.__value_.__r.__words[2] = 0;
    v30->__r_.__value_.__r.__words[0] = 0;
    v32 = (*(*a2 + 56))(a2);
    v33 = *(v32 + 23);
    if (v33 >= 0)
    {
      v34 = v32;
    }

    else
    {
      v34 = *v32;
    }

    if (v33 >= 0)
    {
      v35 = *(v32 + 23);
    }

    else
    {
      v35 = *(v32 + 8);
    }

    v36 = std::string::append(&v68, v34, v35);
    v37 = *&v36->__r_.__value_.__l.__data_;
    __p.__r_.__value_.__r.__words[2] = v36->__r_.__value_.__r.__words[2];
    *&__p.__r_.__value_.__l.__data_ = v37;
    v36->__r_.__value_.__l.__size_ = 0;
    v36->__r_.__value_.__r.__words[2] = 0;
    v36->__r_.__value_.__r.__words[0] = 0;
    v38 = std::string::append(&__p, "'");
    v39 = *&v38->__r_.__value_.__l.__data_;
    *(v27 + 16) = *(&v38->__r_.__value_.__l + 2);
    *v27 = v39;
    v38->__r_.__value_.__l.__size_ = 0;
    v38->__r_.__value_.__r.__words[2] = 0;
    v38->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v68.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v81.__r_.__value_.__l.__data_);
    }

    if ((SHIBYTE(v80.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_102;
    }

    v40 = v80.__r_.__value_.__r.__words[0];
  }

  operator delete(v40);
LABEL_102:
  if (v82)
  {
    v83 = v82;
    operator delete(v82);
  }

  if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v84.__r_.__value_.__l.__data_);
  }
}

void sub_25999C5D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, std::__shared_weak_count *a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *a56)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  if (a45)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a45);
  }

  MEMORY[0x259CA8F00](&a48);
  ANEMachineIR::Validators::NeMatmulParamValues::~NeMatmulParamValues(&a56);
  if (*(v56 - 225) < 0)
  {
    operator delete(*(v56 - 248));
  }

  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  v58 = *(v56 - 224);
  if (v58)
  {
    *(v56 - 216) = v58;
    operator delete(v58);
  }

  if (*(v56 - 177) < 0)
  {
    operator delete(*(v56 - 200));
  }

  if (*(v56 - 153) < 0)
  {
    operator delete(*(v56 - 176));
  }

  v59 = *(v56 - 152);
  if (v59)
  {
    *(v56 - 144) = v59;
    operator delete(v59);
  }

  if (*(v56 - 105) < 0)
  {
    operator delete(*(v56 - 128));
  }

  _Unwind_Resume(a1);
}

void sub_25999C81C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, int a55, __int16 a56, char a57, char a58)
{
  if (a58 < 0)
  {
    JUMPOUT(0x25999C810);
  }

  JUMPOUT(0x25999C814);
}

void sub_25999C830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, int a55, __int16 a56, char a57, char a58)
{
  if (a58 < 0)
  {
    JUMPOUT(0x25999C800);
  }

  JUMPOUT(0x25999C804);
}

void MIL::ANEMachineIR::Interpreter::PeReduceCpu::Run(MIL::IROperation *a1@<X1>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v6 = (*(*a1 + 56))(a1);
  v7 = *(v6 + 23);
  if (v7 < 0)
  {
    if (*(v6 + 8) != 9)
    {
      goto LABEL_10;
    }

    v6 = *v6;
  }

  else if (v7 != 9)
  {
    goto LABEL_10;
  }

  if (*v6 != 0x63756465725F6570 || *(v6 + 8) != 101)
  {
LABEL_10:
    *a3 = 1;
    v9 = a3 + 8;
    std::string::basic_string[abi:ne200100]<0>(&v99, "pe_reduce");
    v10 = std::string::insert(&v99, 0, "Expected ");
    v11 = *&v10->__r_.__value_.__l.__data_;
    v100.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
    *&v100.__r_.__value_.__l.__data_ = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    v12 = std::string::append(&v100, " op. Got ");
    v13 = *&v12->__r_.__value_.__l.__data_;
    v101.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
    *&v101.__r_.__value_.__l.__data_ = v13;
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

    v18 = std::string::append(&v101, v16, v17);
    v19 = *&v18->__r_.__value_.__l.__data_;
    *(v9 + 16) = *(&v18->__r_.__value_.__l + 2);
    *v9 = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v101.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v100.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
    {
      v20 = v99.__r_.__value_.__r.__words[0];
LABEL_22:
      operator delete(v20);
      return;
    }

    return;
  }

  std::string::basic_string[abi:ne200100]<0>(&v101, "x");
  InterpretedTensorValue = MIL::ANEMachineIR::Interpreter::TryGetInterpretedTensorValue(a2, a1, &v101);
  v22 = InterpretedTensorValue;
  if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v101.__r_.__value_.__l.__data_);
    if (v22)
    {
      goto LABEL_26;
    }

LABEL_60:
    *a3 = 2;
    std::string::basic_string[abi:ne200100]<0>((a3 + 8), "No value for x");
    return;
  }

  if (!InterpretedTensorValue)
  {
    goto LABEL_60;
  }

LABEL_26:
  v23 = (*(*v22 + 32))(v22);
  v24 = (*(*v23 + 88))(v23);
  OutputType = MIL::IROperation::GetOutputType(a1);
  v26 = MIL::IRValueType::AsTensorType(OutputType);
  v27 = (*(*v26 + 88))(v26);
  v28 = (*(*v22 + 32))(v22);
  ANEMachineIR::Utils::GetStaticTensorShape(v28, v29, &v101.__r_.__value_.__l.__data_);
  v30 = MIL::IROperation::GetOutputType(a1);
  v31 = MIL::IRValueType::AsTensorType(v30);
  ANEMachineIR::Utils::GetStaticTensorShape(v31, v32, &v100.__r_.__value_.__l.__data_);
  v33 = MIL::IROperation::GetOutputType(a1);
  v34 = MIL::IRValueType::AsTensorType(v33);
  v35 = (*(*v34 + 16))(v34);
  std::string::basic_string[abi:ne200100]<0>(&v99, "reduction_scale");
  ParameterValue = MIL::IROperation::TryGetParameterValue();
  v37 = 1.0;
  if (ParameterValue)
  {
    if ((*(*ParameterValue + 40))(ParameterValue))
    {
      v38 = MEMORY[0x259CA9400]();
      if (v38)
      {
        v37 = *v38;
      }
    }
  }

  if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v99.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v99, "reduction_epsilon");
  v39 = MIL::IROperation::TryGetParameterValue();
  v40 = 0.0;
  if (v39)
  {
    if ((*(*v39 + 40))(v39))
    {
      v41 = MEMORY[0x259CA9400]();
      if (v41)
      {
        v40 = *v41;
      }
    }
  }

  if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v99.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(v97, "reduction");
  std::string::basic_string[abi:ne200100]<0>(&__p, "mean");
  v42 = MIL::IROperation::TryGetParameterValue();
  if (v42 && (*(*v42 + 40))(v42) && (v43 = MEMORY[0x259CA93D0]()) != 0)
  {
    if (*(v43 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v99, *v43, *(v43 + 8));
    }

    else
    {
      v44 = *v43;
      v99.__r_.__value_.__r.__words[2] = *(v43 + 16);
      *&v99.__r_.__value_.__l.__data_ = v44;
    }
  }

  else
  {
    v99 = __p;
    memset(&__p, 0, sizeof(__p));
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v98 < 0)
  {
    operator delete(v97[0]);
  }

  if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
  {
    if (v99.__r_.__value_.__l.__size_ == 3)
    {
      v47 = v99.__r_.__value_.__r.__words[0];
      if (*v99.__r_.__value_.__l.__data_ != 26989 || *(v99.__r_.__value_.__r.__words[0] + 2) != 110)
      {
        if (*v99.__r_.__value_.__l.__data_ != 24941 || *(v99.__r_.__value_.__r.__words[0] + 2) != 120)
        {
          goto LABEL_70;
        }

LABEL_78:
        v54 = 2;
        goto LABEL_79;
      }

LABEL_77:
      v54 = 1;
      goto LABEL_79;
    }

LABEL_76:
    v54 = 0;
    goto LABEL_79;
  }

  if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) != 3)
  {
    goto LABEL_76;
  }

  if (LOWORD(v99.__r_.__value_.__l.__data_) == 26989 && v99.__r_.__value_.__s.__data_[2] == 110)
  {
    goto LABEL_77;
  }

  if (LOWORD(v99.__r_.__value_.__l.__data_) == 24941 && v99.__r_.__value_.__s.__data_[2] == 120)
  {
    goto LABEL_78;
  }

  v47 = &v99;
LABEL_70:
  v50 = bswap32(LOWORD(v47->__r_.__value_.__l.__data_) | (v47->__r_.__value_.__s.__data_[2] << 16));
  v51 = v50 >= 0x73756D00;
  v52 = v50 > 0x73756D00;
  v53 = !v51;
  if (v52 == v53)
  {
    v54 = 3;
  }

  else
  {
    v54 = 0;
  }

LABEL_79:
  std::string::basic_string[abi:ne200100]<0>(v97, "reduction_post_processing");
  v55 = MIL::IROperation::TryGetParameterValue();
  if (v98 < 0)
  {
    operator delete(v97[0]);
  }

  if (v55)
  {
    v56 = "post_processing not implemented.";
    v57 = 5;
LABEL_111:
    *a3 = v57;
    std::string::basic_string[abi:ne200100]<0>((a3 + 8), v56);
    goto LABEL_112;
  }

  if (v24 == 14)
  {
    switch(v27)
    {
      case 14:
        Data = MIL::IRTensorValue::GetDataView<unsigned char>();
        (*(*a1 + 200))(&v94, a1);
        v87 = v94;
        if (v95 == v94)
        {
          std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
        }

        v88 = MIL::IROperation::GetOutputType(a1);
        MIL::IRValueType::AsTensorType(v88);
        MIL::IRTensorValueType::MakeUInt8Value();
        MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v87, &v102);
        v89 = v102;
        v102 = 0;
        if (v89)
        {
          (*(*v89 + 1))(v89);
        }

        goto LABEL_141;
      case 9:
        v78 = MIL::IRTensorValue::GetDataView<unsigned char>();
        (*(*a1 + 200))(&v94, a1);
        v79 = v94;
        if (v95 == v94)
        {
          std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
        }

        v80 = MIL::IROperation::GetOutputType(a1);
        MIL::IRValueType::AsTensorType(v80);
        MIL::IRTensorValueType::MakeInt8Value();
        MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v79, &v102);
        v81 = v102;
        v102 = 0;
        if (v81)
        {
          (*(*v81 + 1))(v81);
        }

        goto LABEL_141;
      case 4:
        v66 = MIL::IRTensorValue::GetDataView<unsigned char>();
        (*(*a1 + 200))(&v94, a1);
        v67 = v94;
        if (v95 == v94)
        {
          std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
        }

        v68 = MIL::IROperation::GetOutputType(a1);
        MIL::IRValueType::AsTensorType(v68);
        MIL::IRTensorValueType::MakeFloat16Value();
        MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v67, &v102);
        v69 = v102;
        v102 = 0;
        if (v69)
        {
          (*(*v69 + 1))(v69);
        }

        goto LABEL_141;
    }

    goto LABEL_109;
  }

  if (v24 == 9)
  {
    switch(v27)
    {
      case 14:
        v74 = MIL::IRTensorValue::GetDataView<signed char>();
        (*(*a1 + 200))(&v94, a1);
        v75 = v94;
        if (v95 == v94)
        {
          std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
        }

        v76 = MIL::IROperation::GetOutputType(a1);
        MIL::IRValueType::AsTensorType(v76);
        MIL::IRTensorValueType::MakeUInt8Value();
        MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v75, &v102);
        v77 = v102;
        v102 = 0;
        if (v77)
        {
          (*(*v77 + 1))(v77);
        }

        goto LABEL_141;
      case 9:
        v70 = MIL::IRTensorValue::GetDataView<signed char>();
        (*(*a1 + 200))(&v94, a1);
        v71 = v94;
        if (v95 == v94)
        {
          std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
        }

        v72 = MIL::IROperation::GetOutputType(a1);
        MIL::IRValueType::AsTensorType(v72);
        MIL::IRTensorValueType::MakeInt8Value();
        MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v71, &v102);
        v73 = v102;
        v102 = 0;
        if (v73)
        {
          (*(*v73 + 1))(v73);
        }

        goto LABEL_141;
      case 4:
        v62 = MIL::IRTensorValue::GetDataView<signed char>();
        (*(*a1 + 200))(&v94, a1);
        v63 = v94;
        if (v95 == v94)
        {
          std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
        }

        v64 = MIL::IROperation::GetOutputType(a1);
        MIL::IRValueType::AsTensorType(v64);
        MIL::IRTensorValueType::MakeFloat16Value();
        MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v63, &v102);
        v65 = v102;
        v102 = 0;
        if (v65)
        {
          (*(*v65 + 1))(v65);
        }

        goto LABEL_141;
    }

    goto LABEL_109;
  }

  if (v24 != 4)
  {
    v56 = "Unimplemented input dtype";
LABEL_110:
    v57 = 3;
    goto LABEL_111;
  }

  if (v27 == 14)
  {
    v90 = MIL::IRTensorValue::GetDataView<MIL::Fp16>();
    (*(*a1 + 200))(&v94, a1);
    v91 = v94;
    if (v95 == v94)
    {
      std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
    }

    v92 = MIL::IROperation::GetOutputType(a1);
    MIL::IRValueType::AsTensorType(v92);
    MIL::IRTensorValueType::MakeUInt8Value();
    MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v91, &v102);
    v93 = v102;
    v102 = 0;
    if (v93)
    {
      (*(*v93 + 1))(v93);
    }

    goto LABEL_141;
  }

  if (v27 == 9)
  {
    v82 = MIL::IRTensorValue::GetDataView<MIL::Fp16>();
    (*(*a1 + 200))(&v94, a1);
    v83 = v94;
    if (v95 == v94)
    {
      std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
    }

    v84 = MIL::IROperation::GetOutputType(a1);
    MIL::IRValueType::AsTensorType(v84);
    MIL::IRTensorValueType::MakeInt8Value();
    MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v83, &v102);
    v85 = v102;
    v102 = 0;
    if (v85)
    {
      (*(*v85 + 1))(v85);
    }

    goto LABEL_141;
  }

  if (v27 != 4)
  {
LABEL_109:
    v56 = "Unimplemented output dtype";
    goto LABEL_110;
  }

  v58 = MIL::IRTensorValue::GetDataView<MIL::Fp16>();
  (*(*a1 + 200))(&v94, a1);
  v59 = v94;
  if (v95 == v94)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v60 = MIL::IROperation::GetOutputType(a1);
  MIL::IRValueType::AsTensorType(v60);
  MIL::IRTensorValueType::MakeFloat16Value();
  MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v59, &v102);
  v61 = v102;
  v102 = 0;
  if (v61)
  {
    (*(*v61 + 1))(v61);
  }

LABEL_141:
  v102 = &v94;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v102);
  *a3 = 0;
  std::string::basic_string[abi:ne200100]<0>((a3 + 8), &unk_259A4D977);
  if (v97[0])
  {
    v97[1] = v97[0];
    operator delete(v97[0]);
  }

LABEL_112:
  if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v99.__r_.__value_.__l.__data_);
  }

  if (v100.__r_.__value_.__r.__words[0])
  {
    v100.__r_.__value_.__l.__size_ = v100.__r_.__value_.__r.__words[0];
    operator delete(v100.__r_.__value_.__l.__data_);
  }

  v20 = v101.__r_.__value_.__r.__words[0];
  if (v101.__r_.__value_.__r.__words[0])
  {
    v101.__r_.__value_.__l.__size_ = v101.__r_.__value_.__r.__words[0];
    goto LABEL_22;
  }
}

void sub_25999D744(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a2 == 1)
  {
    v41 = __cxa_begin_catch(exception_object);
    *v37 = 4;
    v42 = (*(*v41 + 16))(v41);
    std::string::basic_string[abi:ne200100]<0>((v37 + 8), v42);
    __cxa_end_catch();
    JUMPOUT(0x25999D164);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  if (a32)
  {
    operator delete(a32);
  }

  v43 = *(v38 - 128);
  if (v43)
  {
    *(v38 - 120) = v43;
    operator delete(v43);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValuePeReduce<MIL::Fp16,MIL::Fp16>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, int a5@<W4>, void *a6@<X8>, float a7@<S0>, float a8@<S1>)
{
  *v79 = *MEMORY[0x277D85DE8];
  *a6 = 0;
  a6[1] = 0;
  a6[2] = 0;
  std::vector<MIL::Fp16>::resize(a6, a2);
  v13 = *a3;
  v14 = a3[1];
  v15 = v14 - *a3;
  if (v15 != a4[1] - *a4)
  {
    __assert_rtn("ComputeValuePeReduce", "PeReduceCpu.cpp", 77, "x_rank == o_shape.size()");
  }

  v16 = v15 >> 3;
  v75 = 0;
  v76 = 0;
  v77 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v75, v13, v14, v15 >> 3);
  __p = 0;
  v73 = 0;
  v74 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&__p, *a4, a4[1], (a4[1] - *a4) >> 3);
  if (v16 == 3)
  {
    *__e = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v75, v75 + 8, __e, v79, 2);
    *__e = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&__p, __p + 8, __e, v79, 2);
  }

  else if (v16 == 4)
  {
    *__e = 1;
    std::vector<unsigned long long>::insert(&v75, v75 + 8, __e);
    *__e = 1;
    std::vector<unsigned long long>::insert(&__p, __p + 8, __e);
  }

  v17 = *v75;
  v18 = *(v75 + 1);
  v19 = *(v75 + 2);
  Float = __p;
  v21 = *(__p + 1);
  v22 = *(__p + 2);
  v23 = *(__p + 3);
  v24 = *(__p + 4);
  if (*__p == *v75)
  {
    v17 = 1;
  }

  if (v21 == v18)
  {
    v18 = 1;
  }

  if (v22 == v19)
  {
    v19 = 1;
  }

  if (v23 == *(v75 + 3))
  {
    v25 = 1;
  }

  else
  {
    v25 = *(v75 + 3);
  }

  if (v24 == *(v75 + 4))
  {
    v26 = 1;
  }

  else
  {
    v26 = *(v75 + 4);
  }

  v55 = *__p;
  if (!*__p)
  {
    goto LABEL_50;
  }

  v27 = 0;
  v28 = (v18 * v17 * v19 * v25 * v26);
  v63 = v17;
  v52 = *(__p + 1);
  v53 = v18;
  v54 = *(__p + 2);
  v56 = v19;
  v57 = *(__p + 3);
  v49 = v17;
  v50 = *(__p + 4);
  v51 = v26;
  do
  {
    if (v24)
    {
      v64 = 0;
      v59 = v27 + v17;
      v60 = v27;
      v66 = v26;
      do
      {
        if (v21)
        {
          v67 = 0;
          v62 = v64 + v26;
          v69 = v18;
          do
          {
            if (v22)
            {
              v70 = 0;
              v71 = v19;
              v65 = v67 + v18;
              do
              {
                if (v23)
                {
                  v29 = 0;
                  v68 = v70 + v19;
                  do
                  {
                    v30 = 0.0;
                    if (v27 < v59)
                    {
                      v31 = v29 + v25;
                      v32 = v60;
                      do
                      {
                        v33 = v64;
                        if (v64 < v62)
                        {
                          do
                          {
                            v34 = v67;
                            if (v67 < v65)
                            {
                              do
                              {
                                v35 = v70;
                                if (v70 < v68)
                                {
                                  do
                                  {
                                    v36 = v25;
                                    v37 = v29;
                                    if (v29 < v31)
                                    {
                                      do
                                      {
                                        Float = MIL::Fp16::GetFloat(__e);
                                        v30 = v30 + v38;
                                        ++v37;
                                        --v25;
                                      }

                                      while (v25);
                                    }

                                    ++v35;
                                    v25 = v36;
                                  }

                                  while (v35 != v71);
                                }

                                ++v34;
                              }

                              while (v34 != v69);
                            }

                            ++v33;
                          }

                          while (v33 != v66);
                        }

                        ++v32;
                      }

                      while (v32 != v63);
                    }

                    if (a5)
                    {
                      exception = __cxa_allocate_exception(0x10uLL);
                      std::runtime_error::runtime_error(exception, "Function not implemented.");
                      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
                    }

                    v39 = (v30 / v28) * a7;
                    v40 = 0.0;
                    v41 = 0.0;
                    v27 = v60;
                    if (v39 != 0.0)
                    {
                      __e[0] = 0;
                      v42 = frexp(v39, __e);
                      v43 = ldexp(v42, 11);
                      v41 = ldexp(round(v43), __e[0] - 11);
                    }

                    if ((v41 + a8) != 0.0)
                    {
                      __e[0] = 0;
                      v44 = frexp((v41 + a8), __e);
                      v45 = ldexp(v44, 11);
                      v40 = ldexp(round(v45), __e[0] - 11);
                    }

                    v46 = MIL::Fp16::FromFloat(Float, v40);
                    *(*a6 + 2 * Float) = v46;
                    ++v29;
                    v19 = v56;
                    v23 = v57;
                  }

                  while (v29 != v57);
                }

                ++v70;
                ++v71;
                v18 = v53;
                v22 = v54;
              }

              while (v70 != v54);
            }

            ++v69;
            v26 = v51;
            v21 = v52;
            ++v67;
          }

          while (v67 != v52);
        }

        ++v66;
        v17 = v49;
        v24 = v50;
        ++v64;
      }

      while (v64 != v50);
    }

    ++v27;
    ++v63;
  }

  while (v27 != v55);
  Float = __p;
  if (__p)
  {
LABEL_50:
    v73 = Float;
    operator delete(Float);
  }

  if (v75)
  {
    v76 = v75;
    operator delete(v75);
  }

  v47 = *MEMORY[0x277D85DE8];
}

void sub_25999E448(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34)
{
  if (__p)
  {
    operator delete(__p);
  }

  v36 = *(v34 - 168);
  if (v36)
  {
    *(v34 - 160) = v36;
    operator delete(v36);
  }

  v37 = *a22;
  if (*a22)
  {
    *(a22 + 8) = v37;
    operator delete(v37);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValuePeReduce<unsigned char,MIL::Fp16>(uint64_t a1@<X0>, size_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, int a5@<W4>, uint64_t a6@<X8>, float a7@<S0>, float a8@<S1>)
{
  *v80 = *MEMORY[0x277D85DE8];
  *a6 = 0;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  if (a2)
  {
    std::vector<unsigned char>::__append(a6, a2);
  }

  v13 = *a3;
  v14 = a3[1];
  v15 = v14 - *a3;
  if (v15 != a4[1] - *a4)
  {
    __assert_rtn("ComputeValuePeReduce", "PeReduceCpu.cpp", 77, "x_rank == o_shape.size()");
  }

  v16 = v15 >> 3;
  v76 = 0;
  v77 = 0;
  v78 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v76, v13, v14, v15 >> 3);
  __p = 0;
  v74 = 0;
  v75 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&__p, *a4, a4[1], (a4[1] - *a4) >> 3);
  if (v16 == 3)
  {
    *__e = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v76, v76 + 8, __e, v80, 2);
    *__e = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&__p, __p + 8, __e, v80, 2);
  }

  else if (v16 == 4)
  {
    *__e = 1;
    std::vector<unsigned long long>::insert(&v76, v76 + 8, __e);
    *__e = 1;
    std::vector<unsigned long long>::insert(&__p, __p + 8, __e);
  }

  v17 = *v76;
  v18 = *(v76 + 1);
  v19 = *(v76 + 2);
  v20 = __p;
  v21 = *(__p + 1);
  v22 = *(__p + 2);
  v23 = *(__p + 3);
  v24 = *(__p + 4);
  if (*__p == *v76)
  {
    v17 = 1;
  }

  if (v21 == v18)
  {
    v18 = 1;
  }

  if (v22 == v19)
  {
    v19 = 1;
  }

  if (v23 == *(v76 + 3))
  {
    v25 = 1;
  }

  else
  {
    v25 = *(v76 + 3);
  }

  if (v24 == *(v76 + 4))
  {
    v26 = 1;
  }

  else
  {
    v26 = *(v76 + 4);
  }

  v56 = *__p;
  if (!*__p)
  {
LABEL_58:
    v74 = v20;
    operator delete(v20);
    goto LABEL_59;
  }

  v27 = 0;
  v28 = (v18 * v17 * v19 * v25 * v26);
  v64 = v17;
  v53 = *(__p + 1);
  v54 = v18;
  v55 = *(__p + 2);
  v57 = v19;
  v58 = *(__p + 3);
  v50 = v17;
  v51 = *(__p + 4);
  v52 = v26;
  do
  {
    if (v24)
    {
      v65 = 0;
      v60 = v27 + v17;
      v61 = v27;
      v67 = v26;
      while (!v21)
      {
LABEL_55:
        ++v67;
        v17 = v50;
        v24 = v51;
        if (++v65 == v51)
        {
          goto LABEL_56;
        }
      }

      v68 = 0;
      v63 = v65 + v26;
      v70 = v18;
      while (!v22)
      {
LABEL_54:
        ++v70;
        v26 = v52;
        v21 = v53;
        if (++v68 == v53)
        {
          goto LABEL_55;
        }
      }

      v71 = 0;
      v72 = v19;
      v66 = v68 + v18;
      while (!v23)
      {
LABEL_53:
        ++v71;
        ++v72;
        v18 = v54;
        v22 = v55;
        if (v71 == v55)
        {
          goto LABEL_54;
        }
      }

      v29 = 0;
      v69 = v71 + v19;
      while (1)
      {
        v30 = 0.0;
        if (v27 < v60)
        {
          v31 = v29 + v25;
          v32 = v61;
          do
          {
            v33 = v65;
            if (v65 < v63)
            {
              do
              {
                v34 = v68;
                if (v68 < v66)
                {
                  do
                  {
                    v35 = v71;
                    if (v71 < v69)
                    {
                      do
                      {
                        v36 = v25;
                        v37 = v29;
                        if (v29 < v31)
                        {
                          do
                          {
                            MIL::Fp16::GetFloat(__e);
                            v30 = v30 + v38;
                            ++v37;
                            --v25;
                          }

                          while (v25);
                        }

                        ++v35;
                        v25 = v36;
                      }

                      while (v35 != v72);
                    }

                    ++v34;
                  }

                  while (v34 != v70);
                }

                ++v33;
              }

              while (v33 != v67);
            }

            ++v32;
          }

          while (v32 != v64);
        }

        if (a5)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "Function not implemented.");
          __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }

        v39 = (v30 / v28) * a7;
        v40 = 0.0;
        v41 = 0.0;
        v27 = v61;
        if (v39 != 0.0)
        {
          __e[0] = 0;
          v42 = frexp(v39, __e);
          v43 = ldexp(v42, 11);
          v41 = ldexp(round(v43), __e[0] - 11);
        }

        if ((v41 + a8) == 0.0)
        {
          break;
        }

        __e[0] = 0;
        v46 = frexp((v41 + a8), __e);
        v47 = ldexp(v46, 11);
        v40 = ldexp(round(v47), __e[0] - 11);
        if (v40 == INFINITY)
        {
          LOBYTE(v45) = -1;
        }

        else
        {
          if (v40 != -INFINITY)
          {
            break;
          }

          LOBYTE(v45) = 0;
        }

LABEL_52:
        v19 = v57;
        v23 = v58;
        if (v29 == v58)
        {
          goto LABEL_53;
        }
      }

      v44 = llroundf(v40);
      if (v44 >= 255)
      {
        v44 = 255;
      }

      v45 = v44 & ~(v44 >> 31);
      goto LABEL_52;
    }

LABEL_56:
    ++v27;
    ++v64;
  }

  while (v27 != v56);
  v20 = __p;
  if (__p)
  {
    goto LABEL_58;
  }

LABEL_59:
  if (v76)
  {
    v77 = v76;
    operator delete(v76);
  }

  v48 = *MEMORY[0x277D85DE8];
}

void sub_25999EA24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34)
{
  if (__p)
  {
    operator delete(__p);
  }

  v36 = *(v34 - 168);
  if (v36)
  {
    *(v34 - 160) = v36;
    operator delete(v36);
  }

  v37 = *a22;
  if (*a22)
  {
    *(a22 + 8) = v37;
    operator delete(v37);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValuePeReduce<signed char,MIL::Fp16>(uint64_t a1@<X0>, size_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, int a5@<W4>, uint64_t a6@<X8>, float a7@<S0>, float a8@<S1>)
{
  *v80 = *MEMORY[0x277D85DE8];
  *a6 = 0;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  if (a2)
  {
    std::vector<unsigned char>::__append(a6, a2);
  }

  v13 = *a3;
  v14 = a3[1];
  v15 = v14 - *a3;
  if (v15 != a4[1] - *a4)
  {
    __assert_rtn("ComputeValuePeReduce", "PeReduceCpu.cpp", 77, "x_rank == o_shape.size()");
  }

  v16 = v15 >> 3;
  v76 = 0;
  v77 = 0;
  v78 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v76, v13, v14, v15 >> 3);
  __p = 0;
  v74 = 0;
  v75 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&__p, *a4, a4[1], (a4[1] - *a4) >> 3);
  if (v16 == 3)
  {
    *__e = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v76, v76 + 8, __e, v80, 2);
    *__e = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&__p, __p + 8, __e, v80, 2);
  }

  else if (v16 == 4)
  {
    *__e = 1;
    std::vector<unsigned long long>::insert(&v76, v76 + 8, __e);
    *__e = 1;
    std::vector<unsigned long long>::insert(&__p, __p + 8, __e);
  }

  v17 = *v76;
  v18 = *(v76 + 1);
  v19 = *(v76 + 2);
  v20 = __p;
  v21 = *(__p + 1);
  v22 = *(__p + 2);
  v23 = *(__p + 3);
  v24 = *(__p + 4);
  if (*__p == *v76)
  {
    v17 = 1;
  }

  if (v21 == v18)
  {
    v18 = 1;
  }

  if (v22 == v19)
  {
    v19 = 1;
  }

  if (v23 == *(v76 + 3))
  {
    v25 = 1;
  }

  else
  {
    v25 = *(v76 + 3);
  }

  if (v24 == *(v76 + 4))
  {
    v26 = 1;
  }

  else
  {
    v26 = *(v76 + 4);
  }

  v56 = *__p;
  if (!*__p)
  {
LABEL_60:
    v74 = v20;
    operator delete(v20);
    goto LABEL_61;
  }

  v27 = 0;
  v28 = (v18 * v17 * v19 * v25 * v26);
  v64 = v17;
  v53 = *(__p + 1);
  v54 = v18;
  v55 = *(__p + 2);
  v57 = v19;
  v58 = *(__p + 3);
  v50 = v17;
  v51 = *(__p + 4);
  v52 = v26;
  do
  {
    if (v24)
    {
      v65 = 0;
      v60 = v27 + v17;
      v61 = v27;
      v67 = v26;
      while (!v21)
      {
LABEL_57:
        ++v67;
        v17 = v50;
        v24 = v51;
        if (++v65 == v51)
        {
          goto LABEL_58;
        }
      }

      v68 = 0;
      v63 = v65 + v26;
      v70 = v18;
      while (!v22)
      {
LABEL_56:
        ++v70;
        v26 = v52;
        v21 = v53;
        if (++v68 == v53)
        {
          goto LABEL_57;
        }
      }

      v71 = 0;
      v72 = v19;
      v66 = v68 + v18;
      while (!v23)
      {
LABEL_55:
        ++v71;
        ++v72;
        v18 = v54;
        v22 = v55;
        if (v71 == v55)
        {
          goto LABEL_56;
        }
      }

      v29 = 0;
      v69 = v71 + v19;
      while (1)
      {
        v30 = 0.0;
        if (v27 < v60)
        {
          v31 = v29 + v25;
          v32 = v61;
          do
          {
            v33 = v65;
            if (v65 < v63)
            {
              do
              {
                v34 = v68;
                if (v68 < v66)
                {
                  do
                  {
                    v35 = v71;
                    if (v71 < v69)
                    {
                      do
                      {
                        v36 = v25;
                        v37 = v29;
                        if (v29 < v31)
                        {
                          do
                          {
                            MIL::Fp16::GetFloat(__e);
                            v30 = v30 + v38;
                            ++v37;
                            --v25;
                          }

                          while (v25);
                        }

                        ++v35;
                        v25 = v36;
                      }

                      while (v35 != v72);
                    }

                    ++v34;
                  }

                  while (v34 != v70);
                }

                ++v33;
              }

              while (v33 != v67);
            }

            ++v32;
          }

          while (v32 != v64);
        }

        if (a5)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "Function not implemented.");
          __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }

        v39 = (v30 / v28) * a7;
        v40 = 0.0;
        v41 = 0.0;
        v27 = v61;
        if (v39 != 0.0)
        {
          __e[0] = 0;
          v42 = frexp(v39, __e);
          v43 = ldexp(v42, 11);
          v41 = ldexp(round(v43), __e[0] - 11);
        }

        if ((v41 + a8) == 0.0)
        {
          break;
        }

        __e[0] = 0;
        v46 = frexp((v41 + a8), __e);
        v47 = ldexp(v46, 11);
        v40 = ldexp(round(v47), __e[0] - 11);
        if (v40 == INFINITY)
        {
          v45 = 127;
        }

        else
        {
          if (v40 != -INFINITY)
          {
            break;
          }

          v45 = 0x80;
        }

LABEL_54:
        v19 = v57;
        v23 = v58;
        if (v29 == v58)
        {
          goto LABEL_55;
        }
      }

      v44 = llroundf(v40);
      if (v44 >= 127)
      {
        v44 = 127;
      }

      if (v44 <= -128)
      {
        v45 = 0x80;
      }

      else
      {
        v45 = v44;
      }

      goto LABEL_54;
    }

LABEL_58:
    ++v27;
    ++v64;
  }

  while (v27 != v56);
  v20 = __p;
  if (__p)
  {
    goto LABEL_60;
  }

LABEL_61:
  if (v76)
  {
    v77 = v76;
    operator delete(v76);
  }

  v48 = *MEMORY[0x277D85DE8];
}

void sub_25999F008(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34)
{
  if (__p)
  {
    operator delete(__p);
  }

  v36 = *(v34 - 168);
  if (v36)
  {
    *(v34 - 160) = v36;
    operator delete(v36);
  }

  v37 = *a22;
  if (*a22)
  {
    *(a22 + 8) = v37;
    operator delete(v37);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValuePeReduce<MIL::Fp16,unsigned char>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, int a5@<W4>, void *a6@<X8>, float a7@<S0>, float a8@<S1>)
{
  *v78 = *MEMORY[0x277D85DE8];
  *a6 = 0;
  a6[1] = 0;
  a6[2] = 0;
  std::vector<MIL::Fp16>::resize(a6, a2);
  v13 = *a3;
  v14 = a3[1];
  v15 = v14 - *a3;
  if (v15 != a4[1] - *a4)
  {
    __assert_rtn("ComputeValuePeReduce", "PeReduceCpu.cpp", 77, "x_rank == o_shape.size()");
  }

  v16 = v15 >> 3;
  v74 = 0;
  v75 = 0;
  v76 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v74, v13, v14, v15 >> 3);
  __p = 0;
  v72 = 0;
  v73 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&__p, *a4, a4[1], (a4[1] - *a4) >> 3);
  if (v16 == 3)
  {
    *__e = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v74, v74 + 8, __e, v78, 2);
    *__e = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&__p, __p + 8, __e, v78, 2);
  }

  else if (v16 == 4)
  {
    *__e = 1;
    std::vector<unsigned long long>::insert(&v74, v74 + 8, __e);
    *__e = 1;
    std::vector<unsigned long long>::insert(&__p, __p + 8, __e);
  }

  v17 = *v74;
  v18 = *(v74 + 1);
  v19 = *(v74 + 2);
  Index = __p;
  v21 = *(__p + 1);
  v22 = *(__p + 2);
  v23 = *(__p + 3);
  v24 = *(__p + 4);
  if (*__p == *v74)
  {
    v17 = 1;
  }

  if (v21 == v18)
  {
    v18 = 1;
  }

  if (v22 == v19)
  {
    v19 = 1;
  }

  if (v23 == *(v74 + 3))
  {
    v25 = 1;
  }

  else
  {
    v25 = *(v74 + 3);
  }

  if (v24 == *(v74 + 4))
  {
    v26 = 1;
  }

  else
  {
    v26 = *(v74 + 4);
  }

  v55 = *__p;
  if (!*__p)
  {
    goto LABEL_50;
  }

  v27 = 0;
  v28 = (v18 * v17 * v19 * v25 * v26);
  v63 = v17;
  v52 = *(__p + 1);
  v53 = v18;
  v54 = *(__p + 2);
  v56 = v19;
  v57 = *(__p + 3);
  v49 = v17;
  v50 = *(__p + 4);
  v51 = v26;
  do
  {
    if (v24)
    {
      v64 = 0;
      v59 = v27 + v17;
      v60 = v27;
      v66 = v26;
      do
      {
        if (v21)
        {
          v67 = 0;
          v62 = v64 + v26;
          v68 = v18;
          do
          {
            if (v22)
            {
              v69 = 0;
              v70 = v19;
              v65 = v67 + v18;
              do
              {
                if (v23)
                {
                  v29 = 0;
                  do
                  {
                    v30 = 0.0;
                    if (v27 < v59)
                    {
                      v31 = v29 + v25;
                      v32 = v60;
                      do
                      {
                        v33 = v64;
                        if (v64 < v62)
                        {
                          do
                          {
                            v34 = v67;
                            if (v67 < v65)
                            {
                              do
                              {
                                v35 = v69;
                                if (v69 < v69 + v56)
                                {
                                  do
                                  {
                                    v36 = v25;
                                    v37 = v29;
                                    if (v29 < v31)
                                    {
                                      do
                                      {
                                        LOBYTE(v38) = *(a1 + Index);
                                        v30 = v30 + v38;
                                        ++v37;
                                        --v25;
                                      }

                                      while (v25);
                                    }

                                    ++v35;
                                    v25 = v36;
                                  }

                                  while (v35 != v70);
                                }

                                ++v34;
                              }

                              while (v34 != v68);
                            }

                            ++v33;
                          }

                          while (v33 != v66);
                        }

                        ++v32;
                      }

                      while (v32 != v63);
                    }

                    if (a5)
                    {
                      exception = __cxa_allocate_exception(0x10uLL);
                      std::runtime_error::runtime_error(exception, "Function not implemented.");
                      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
                    }

                    v39 = (v30 / v28) * a7;
                    v40 = 0.0;
                    v41 = 0.0;
                    v27 = v60;
                    if (v39 != 0.0)
                    {
                      __e[0] = 0;
                      v42 = frexp(v39, __e);
                      v43 = ldexp(v42, 11);
                      v41 = ldexp(round(v43), __e[0] - 11);
                    }

                    if ((v41 + a8) != 0.0)
                    {
                      __e[0] = 0;
                      v44 = frexp((v41 + a8), __e);
                      v45 = ldexp(v44, 11);
                      v40 = ldexp(round(v45), __e[0] - 11);
                    }

                    v46 = MIL::Fp16::FromFloat(Index, v40);
                    *(*a6 + 2 * Index) = v46;
                    ++v29;
                    v23 = v57;
                  }

                  while (v29 != v57);
                }

                ++v69;
                ++v70;
                v18 = v53;
                v22 = v54;
                v19 = v56;
              }

              while (v69 != v54);
            }

            ++v68;
            v26 = v51;
            v21 = v52;
            ++v67;
          }

          while (v67 != v52);
        }

        ++v66;
        v17 = v49;
        v24 = v50;
        ++v64;
      }

      while (v64 != v50);
    }

    ++v27;
    ++v63;
  }

  while (v27 != v55);
  Index = __p;
  if (__p)
  {
LABEL_50:
    v72 = Index;
    operator delete(Index);
  }

  if (v74)
  {
    v75 = v74;
    operator delete(v74);
  }

  v47 = *MEMORY[0x277D85DE8];
}

void sub_25999F5A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34)
{
  if (__p)
  {
    operator delete(__p);
  }

  v36 = *(v34 - 168);
  if (v36)
  {
    *(v34 - 160) = v36;
    operator delete(v36);
  }

  v37 = *a22;
  if (*a22)
  {
    *(a22 + 8) = v37;
    operator delete(v37);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValuePeReduce<unsigned char,unsigned char>(uint64_t a1@<X0>, size_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, int a5@<W4>, uint64_t a6@<X8>, float a7@<S0>, float a8@<S1>)
{
  *v79 = *MEMORY[0x277D85DE8];
  *a6 = 0;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  if (a2)
  {
    std::vector<unsigned char>::__append(a6, a2);
  }

  v13 = *a3;
  v14 = a3[1];
  v15 = v14 - *a3;
  if (v15 != a4[1] - *a4)
  {
    __assert_rtn("ComputeValuePeReduce", "PeReduceCpu.cpp", 77, "x_rank == o_shape.size()");
  }

  v16 = v15 >> 3;
  v75 = 0;
  v76 = 0;
  v77 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v75, v13, v14, v15 >> 3);
  __p = 0;
  v73 = 0;
  v74 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&__p, *a4, a4[1], (a4[1] - *a4) >> 3);
  if (v16 == 3)
  {
    *__e = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v75, v75 + 8, __e, v79, 2);
    *__e = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&__p, __p + 8, __e, v79, 2);
  }

  else if (v16 == 4)
  {
    *__e = 1;
    std::vector<unsigned long long>::insert(&v75, v75 + 8, __e);
    *__e = 1;
    std::vector<unsigned long long>::insert(&__p, __p + 8, __e);
  }

  v17 = *v75;
  v18 = *(v75 + 1);
  v19 = *(v75 + 2);
  v20 = __p;
  v21 = *(__p + 1);
  v22 = *(__p + 2);
  v23 = *(__p + 3);
  v24 = *(__p + 4);
  if (*__p == *v75)
  {
    v17 = 1;
  }

  if (v21 == v18)
  {
    v18 = 1;
  }

  if (v22 == v19)
  {
    v19 = 1;
  }

  if (v23 == *(v75 + 3))
  {
    v25 = 1;
  }

  else
  {
    v25 = *(v75 + 3);
  }

  if (v24 == *(v75 + 4))
  {
    v26 = 1;
  }

  else
  {
    v26 = *(v75 + 4);
  }

  v56 = *__p;
  if (!*__p)
  {
LABEL_58:
    v73 = v20;
    operator delete(v20);
    goto LABEL_59;
  }

  v27 = 0;
  v28 = (v18 * v17 * v19 * v25 * v26);
  v64 = v17;
  v53 = *(__p + 1);
  v54 = v18;
  v55 = *(__p + 2);
  v57 = v19;
  v58 = *(__p + 3);
  v50 = v17;
  v51 = *(__p + 4);
  v52 = v26;
  do
  {
    if (v24)
    {
      v65 = 0;
      v60 = v27 + v17;
      v61 = v27;
      v67 = v26;
      while (!v21)
      {
LABEL_55:
        ++v67;
        v17 = v50;
        v24 = v51;
        if (++v65 == v51)
        {
          goto LABEL_56;
        }
      }

      v68 = 0;
      v63 = v65 + v26;
      v69 = v18;
      while (!v22)
      {
LABEL_54:
        ++v69;
        v26 = v52;
        v21 = v53;
        if (++v68 == v53)
        {
          goto LABEL_55;
        }
      }

      v70 = 0;
      v71 = v19;
      v66 = v68 + v18;
      while (!v23)
      {
LABEL_53:
        ++v70;
        ++v71;
        v18 = v54;
        v22 = v55;
        v19 = v57;
        if (v70 == v55)
        {
          goto LABEL_54;
        }
      }

      v29 = 0;
      while (1)
      {
        v30 = 0.0;
        if (v27 < v60)
        {
          v31 = v29 + v25;
          v32 = v61;
          do
          {
            v33 = v65;
            if (v65 < v63)
            {
              do
              {
                v34 = v68;
                if (v68 < v66)
                {
                  do
                  {
                    v35 = v70;
                    if (v70 < v70 + v57)
                    {
                      do
                      {
                        v36 = v25;
                        v37 = v29;
                        if (v29 < v31)
                        {
                          do
                          {
                            v30 = v30 + v38;
                            ++v37;
                            --v25;
                          }

                          while (v25);
                        }

                        ++v35;
                        v25 = v36;
                      }

                      while (v35 != v71);
                    }

                    ++v34;
                  }

                  while (v34 != v69);
                }

                ++v33;
              }

              while (v33 != v67);
            }

            ++v32;
          }

          while (v32 != v64);
        }

        if (a5)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "Function not implemented.");
          __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }

        v39 = (v30 / v28) * a7;
        v40 = 0.0;
        v41 = 0.0;
        v27 = v61;
        if (v39 != 0.0)
        {
          __e[0] = 0;
          v42 = frexp(v39, __e);
          v43 = ldexp(v42, 11);
          v41 = ldexp(round(v43), __e[0] - 11);
        }

        if ((v41 + a8) == 0.0)
        {
          break;
        }

        __e[0] = 0;
        v46 = frexp((v41 + a8), __e);
        v47 = ldexp(v46, 11);
        v40 = ldexp(round(v47), __e[0] - 11);
        if (v40 == INFINITY)
        {
          LOBYTE(v45) = -1;
        }

        else
        {
          if (v40 != -INFINITY)
          {
            break;
          }

          LOBYTE(v45) = 0;
        }

LABEL_52:
        v23 = v58;
        if (v29 == v58)
        {
          goto LABEL_53;
        }
      }

      v44 = llroundf(v40);
      if (v44 >= 255)
      {
        v44 = 255;
      }

      v45 = v44 & ~(v44 >> 31);
      goto LABEL_52;
    }

LABEL_56:
    ++v27;
    ++v64;
  }

  while (v27 != v56);
  v20 = __p;
  if (__p)
  {
    goto LABEL_58;
  }

LABEL_59:
  if (v75)
  {
    v76 = v75;
    operator delete(v75);
  }

  v48 = *MEMORY[0x277D85DE8];
}

void sub_25999FB80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34)
{
  if (__p)
  {
    operator delete(__p);
  }

  v36 = *(v34 - 168);
  if (v36)
  {
    *(v34 - 160) = v36;
    operator delete(v36);
  }

  v37 = *a22;
  if (*a22)
  {
    *(a22 + 8) = v37;
    operator delete(v37);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValuePeReduce<signed char,unsigned char>(uint64_t a1@<X0>, size_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, int a5@<W4>, uint64_t a6@<X8>, float a7@<S0>, float a8@<S1>)
{
  *v79 = *MEMORY[0x277D85DE8];
  *a6 = 0;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  if (a2)
  {
    std::vector<unsigned char>::__append(a6, a2);
  }

  v13 = *a3;
  v14 = a3[1];
  v15 = v14 - *a3;
  if (v15 != a4[1] - *a4)
  {
    __assert_rtn("ComputeValuePeReduce", "PeReduceCpu.cpp", 77, "x_rank == o_shape.size()");
  }

  v16 = v15 >> 3;
  v75 = 0;
  v76 = 0;
  v77 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v75, v13, v14, v15 >> 3);
  __p = 0;
  v73 = 0;
  v74 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&__p, *a4, a4[1], (a4[1] - *a4) >> 3);
  if (v16 == 3)
  {
    *__e = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v75, v75 + 8, __e, v79, 2);
    *__e = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&__p, __p + 8, __e, v79, 2);
  }

  else if (v16 == 4)
  {
    *__e = 1;
    std::vector<unsigned long long>::insert(&v75, v75 + 8, __e);
    *__e = 1;
    std::vector<unsigned long long>::insert(&__p, __p + 8, __e);
  }

  v17 = *v75;
  v18 = *(v75 + 1);
  v19 = *(v75 + 2);
  v20 = __p;
  v21 = *(__p + 1);
  v22 = *(__p + 2);
  v23 = *(__p + 3);
  v24 = *(__p + 4);
  if (*__p == *v75)
  {
    v17 = 1;
  }

  if (v21 == v18)
  {
    v18 = 1;
  }

  if (v22 == v19)
  {
    v19 = 1;
  }

  if (v23 == *(v75 + 3))
  {
    v25 = 1;
  }

  else
  {
    v25 = *(v75 + 3);
  }

  if (v24 == *(v75 + 4))
  {
    v26 = 1;
  }

  else
  {
    v26 = *(v75 + 4);
  }

  v56 = *__p;
  if (!*__p)
  {
LABEL_60:
    v73 = v20;
    operator delete(v20);
    goto LABEL_61;
  }

  v27 = 0;
  v28 = (v18 * v17 * v19 * v25 * v26);
  v64 = v17;
  v53 = *(__p + 1);
  v54 = v18;
  v55 = *(__p + 2);
  v57 = v19;
  v58 = *(__p + 3);
  v50 = v17;
  v51 = *(__p + 4);
  v52 = v26;
  do
  {
    if (v24)
    {
      v65 = 0;
      v60 = v27 + v17;
      v61 = v27;
      v67 = v26;
      while (!v21)
      {
LABEL_57:
        ++v67;
        v17 = v50;
        v24 = v51;
        if (++v65 == v51)
        {
          goto LABEL_58;
        }
      }

      v68 = 0;
      v63 = v65 + v26;
      v69 = v18;
      while (!v22)
      {
LABEL_56:
        ++v69;
        v26 = v52;
        v21 = v53;
        if (++v68 == v53)
        {
          goto LABEL_57;
        }
      }

      v70 = 0;
      v71 = v19;
      v66 = v68 + v18;
      while (!v23)
      {
LABEL_55:
        ++v70;
        ++v71;
        v18 = v54;
        v22 = v55;
        v19 = v57;
        if (v70 == v55)
        {
          goto LABEL_56;
        }
      }

      v29 = 0;
      while (1)
      {
        v30 = 0.0;
        if (v27 < v60)
        {
          v31 = v29 + v25;
          v32 = v61;
          do
          {
            v33 = v65;
            if (v65 < v63)
            {
              do
              {
                v34 = v68;
                if (v68 < v66)
                {
                  do
                  {
                    v35 = v70;
                    if (v70 < v70 + v57)
                    {
                      do
                      {
                        v36 = v25;
                        v37 = v29;
                        if (v29 < v31)
                        {
                          do
                          {
                            v30 = v30 + v38;
                            ++v37;
                            --v25;
                          }

                          while (v25);
                        }

                        ++v35;
                        v25 = v36;
                      }

                      while (v35 != v71);
                    }

                    ++v34;
                  }

                  while (v34 != v69);
                }

                ++v33;
              }

              while (v33 != v67);
            }

            ++v32;
          }

          while (v32 != v64);
        }

        if (a5)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "Function not implemented.");
          __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }

        v39 = (v30 / v28) * a7;
        v40 = 0.0;
        v41 = 0.0;
        v27 = v61;
        if (v39 != 0.0)
        {
          __e[0] = 0;
          v42 = frexp(v39, __e);
          v43 = ldexp(v42, 11);
          v41 = ldexp(round(v43), __e[0] - 11);
        }

        if ((v41 + a8) == 0.0)
        {
          break;
        }

        __e[0] = 0;
        v46 = frexp((v41 + a8), __e);
        v47 = ldexp(v46, 11);
        v40 = ldexp(round(v47), __e[0] - 11);
        if (v40 == INFINITY)
        {
          v45 = 127;
        }

        else
        {
          if (v40 != -INFINITY)
          {
            break;
          }

          v45 = 0x80;
        }

LABEL_54:
        v23 = v58;
        if (v29 == v58)
        {
          goto LABEL_55;
        }
      }

      v44 = llroundf(v40);
      if (v44 >= 127)
      {
        v44 = 127;
      }

      if (v44 <= -128)
      {
        v45 = 0x80;
      }

      else
      {
        v45 = v44;
      }

      goto LABEL_54;
    }

LABEL_58:
    ++v27;
    ++v64;
  }

  while (v27 != v56);
  v20 = __p;
  if (__p)
  {
    goto LABEL_60;
  }

LABEL_61:
  if (v75)
  {
    v76 = v75;
    operator delete(v75);
  }

  v48 = *MEMORY[0x277D85DE8];
}

void sub_2599A0164(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34)
{
  if (__p)
  {
    operator delete(__p);
  }

  v36 = *(v34 - 168);
  if (v36)
  {
    *(v34 - 160) = v36;
    operator delete(v36);
  }

  v37 = *a22;
  if (*a22)
  {
    *(a22 + 8) = v37;
    operator delete(v37);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValuePeReduce<MIL::Fp16,signed char>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, int a5@<W4>, void *a6@<X8>, float a7@<S0>, float a8@<S1>)
{
  *v77 = *MEMORY[0x277D85DE8];
  *a6 = 0;
  a6[1] = 0;
  a6[2] = 0;
  std::vector<MIL::Fp16>::resize(a6, a2);
  v13 = *a3;
  v14 = a3[1];
  v15 = v14 - *a3;
  if (v15 != a4[1] - *a4)
  {
    __assert_rtn("ComputeValuePeReduce", "PeReduceCpu.cpp", 77, "x_rank == o_shape.size()");
  }

  v16 = v15 >> 3;
  v73 = 0;
  v74 = 0;
  v75 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v73, v13, v14, v15 >> 3);
  __p = 0;
  v71 = 0;
  v72 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&__p, *a4, a4[1], (a4[1] - *a4) >> 3);
  if (v16 == 3)
  {
    *__e = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v73, v73 + 8, __e, v77, 2);
    *__e = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&__p, __p + 8, __e, v77, 2);
  }

  else if (v16 == 4)
  {
    *__e = 1;
    std::vector<unsigned long long>::insert(&v73, v73 + 8, __e);
    *__e = 1;
    std::vector<unsigned long long>::insert(&__p, __p + 8, __e);
  }

  v17 = *v73;
  v18 = *(v73 + 1);
  v19 = *(v73 + 2);
  Index = __p;
  v21 = *(__p + 1);
  v22 = *(__p + 2);
  v23 = *(__p + 3);
  v24 = *(__p + 4);
  if (*__p == *v73)
  {
    v17 = 1;
  }

  if (v21 == v18)
  {
    v18 = 1;
  }

  if (v22 == v19)
  {
    v19 = 1;
  }

  if (v23 == *(v73 + 3))
  {
    v25 = 1;
  }

  else
  {
    v25 = *(v73 + 3);
  }

  if (v24 == *(v73 + 4))
  {
    v26 = 1;
  }

  else
  {
    v26 = *(v73 + 4);
  }

  v54 = *__p;
  if (!*__p)
  {
    goto LABEL_50;
  }

  v27 = 0;
  v28 = (v18 * v17 * v19 * v25 * v26);
  v62 = v17;
  v51 = *(__p + 1);
  v52 = v18;
  v53 = *(__p + 2);
  v55 = v19;
  v56 = *(__p + 3);
  v48 = v17;
  v49 = *(__p + 4);
  v50 = v26;
  do
  {
    if (v24)
    {
      v63 = 0;
      v58 = v27 + v17;
      v59 = v27;
      v65 = v26;
      do
      {
        if (v21)
        {
          v66 = 0;
          v61 = v63 + v26;
          v67 = v18;
          do
          {
            if (v22)
            {
              v68 = 0;
              v69 = v19;
              v64 = v66 + v18;
              do
              {
                if (v23)
                {
                  v29 = 0;
                  do
                  {
                    v30 = 0.0;
                    if (v27 < v58)
                    {
                      v31 = v29 + v25;
                      v32 = v59;
                      do
                      {
                        v33 = v63;
                        if (v63 < v61)
                        {
                          do
                          {
                            v34 = v66;
                            if (v66 < v64)
                            {
                              do
                              {
                                v35 = v68;
                                if (v68 < v68 + v55)
                                {
                                  do
                                  {
                                    v36 = v25;
                                    v37 = v29;
                                    if (v29 < v31)
                                    {
                                      do
                                      {
                                        v30 = v30 + *(a1 + Index);
                                        ++v37;
                                        --v25;
                                      }

                                      while (v25);
                                    }

                                    ++v35;
                                    v25 = v36;
                                  }

                                  while (v35 != v69);
                                }

                                ++v34;
                              }

                              while (v34 != v67);
                            }

                            ++v33;
                          }

                          while (v33 != v65);
                        }

                        ++v32;
                      }

                      while (v32 != v62);
                    }

                    if (a5)
                    {
                      exception = __cxa_allocate_exception(0x10uLL);
                      std::runtime_error::runtime_error(exception, "Function not implemented.");
                      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
                    }

                    v38 = (v30 / v28) * a7;
                    v39 = 0.0;
                    v40 = 0.0;
                    v27 = v59;
                    if (v38 != 0.0)
                    {
                      __e[0] = 0;
                      v41 = frexp(v38, __e);
                      v42 = ldexp(v41, 11);
                      v40 = ldexp(round(v42), __e[0] - 11);
                    }

                    if ((v40 + a8) != 0.0)
                    {
                      __e[0] = 0;
                      v43 = frexp((v40 + a8), __e);
                      v44 = ldexp(v43, 11);
                      v39 = ldexp(round(v44), __e[0] - 11);
                    }

                    v45 = MIL::Fp16::FromFloat(Index, v39);
                    *(*a6 + 2 * Index) = v45;
                    ++v29;
                    v23 = v56;
                  }

                  while (v29 != v56);
                }

                ++v68;
                ++v69;
                v18 = v52;
                v22 = v53;
                v19 = v55;
              }

              while (v68 != v53);
            }

            ++v67;
            v26 = v50;
            v21 = v51;
            ++v66;
          }

          while (v66 != v51);
        }

        ++v65;
        v17 = v48;
        v24 = v49;
        ++v63;
      }

      while (v63 != v49);
    }

    ++v27;
    ++v62;
  }

  while (v27 != v54);
  Index = __p;
  if (__p)
  {
LABEL_50:
    v71 = Index;
    operator delete(Index);
  }

  if (v73)
  {
    v74 = v73;
    operator delete(v73);
  }

  v46 = *MEMORY[0x277D85DE8];
}

void sub_2599A0700(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34)
{
  if (__p)
  {
    operator delete(__p);
  }

  v36 = *(v34 - 168);
  if (v36)
  {
    *(v34 - 160) = v36;
    operator delete(v36);
  }

  v37 = *a22;
  if (*a22)
  {
    *(a22 + 8) = v37;
    operator delete(v37);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValuePeReduce<unsigned char,signed char>(uint64_t a1@<X0>, size_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, int a5@<W4>, uint64_t a6@<X8>, float a7@<S0>, float a8@<S1>)
{
  *v78 = *MEMORY[0x277D85DE8];
  *a6 = 0;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  if (a2)
  {
    std::vector<unsigned char>::__append(a6, a2);
  }

  v13 = *a3;
  v14 = a3[1];
  v15 = v14 - *a3;
  if (v15 != a4[1] - *a4)
  {
    __assert_rtn("ComputeValuePeReduce", "PeReduceCpu.cpp", 77, "x_rank == o_shape.size()");
  }

  v16 = v15 >> 3;
  v74 = 0;
  v75 = 0;
  v76 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v74, v13, v14, v15 >> 3);
  __p = 0;
  v72 = 0;
  v73 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&__p, *a4, a4[1], (a4[1] - *a4) >> 3);
  if (v16 == 3)
  {
    *__e = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v74, v74 + 8, __e, v78, 2);
    *__e = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&__p, __p + 8, __e, v78, 2);
  }

  else if (v16 == 4)
  {
    *__e = 1;
    std::vector<unsigned long long>::insert(&v74, v74 + 8, __e);
    *__e = 1;
    std::vector<unsigned long long>::insert(&__p, __p + 8, __e);
  }

  v17 = *v74;
  v18 = *(v74 + 1);
  v19 = *(v74 + 2);
  v20 = __p;
  v21 = *(__p + 1);
  v22 = *(__p + 2);
  v23 = *(__p + 3);
  v24 = *(__p + 4);
  if (*__p == *v74)
  {
    v17 = 1;
  }

  if (v21 == v18)
  {
    v18 = 1;
  }

  if (v22 == v19)
  {
    v19 = 1;
  }

  if (v23 == *(v74 + 3))
  {
    v25 = 1;
  }

  else
  {
    v25 = *(v74 + 3);
  }

  if (v24 == *(v74 + 4))
  {
    v26 = 1;
  }

  else
  {
    v26 = *(v74 + 4);
  }

  v55 = *__p;
  if (!*__p)
  {
LABEL_58:
    v72 = v20;
    operator delete(v20);
    goto LABEL_59;
  }

  v27 = 0;
  v28 = (v18 * v17 * v19 * v25 * v26);
  v63 = v17;
  v52 = *(__p + 1);
  v53 = v18;
  v54 = *(__p + 2);
  v56 = v19;
  v57 = *(__p + 3);
  v49 = v17;
  v50 = *(__p + 4);
  v51 = v26;
  do
  {
    if (v24)
    {
      v64 = 0;
      v59 = v27 + v17;
      v60 = v27;
      v66 = v26;
      while (!v21)
      {
LABEL_55:
        ++v66;
        v17 = v49;
        v24 = v50;
        if (++v64 == v50)
        {
          goto LABEL_56;
        }
      }

      v67 = 0;
      v62 = v64 + v26;
      v68 = v18;
      while (!v22)
      {
LABEL_54:
        ++v68;
        v26 = v51;
        v21 = v52;
        if (++v67 == v52)
        {
          goto LABEL_55;
        }
      }

      v69 = 0;
      v70 = v19;
      v65 = v67 + v18;
      while (!v23)
      {
LABEL_53:
        ++v69;
        ++v70;
        v18 = v53;
        v22 = v54;
        v19 = v56;
        if (v69 == v54)
        {
          goto LABEL_54;
        }
      }

      v29 = 0;
      while (1)
      {
        v30 = 0.0;
        if (v27 < v59)
        {
          v31 = v29 + v25;
          v32 = v60;
          do
          {
            v33 = v64;
            if (v64 < v62)
            {
              do
              {
                v34 = v67;
                if (v67 < v65)
                {
                  do
                  {
                    v35 = v69;
                    if (v69 < v69 + v56)
                    {
                      do
                      {
                        v36 = v25;
                        v37 = v29;
                        if (v29 < v31)
                        {
                          do
                          {
                            --v25;
                          }

                          while (v25);
                        }

                        ++v35;
                        v25 = v36;
                      }

                      while (v35 != v70);
                    }

                    ++v34;
                  }

                  while (v34 != v68);
                }

                ++v33;
              }

              while (v33 != v66);
            }

            ++v32;
          }

          while (v32 != v63);
        }

        if (a5)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "Function not implemented.");
          __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }

        v38 = (v30 / v28) * a7;
        v39 = 0.0;
        v40 = 0.0;
        v27 = v60;
        if (v38 != 0.0)
        {
          __e[0] = 0;
          v41 = frexp(v38, __e);
          v42 = ldexp(v41, 11);
          v40 = ldexp(round(v42), __e[0] - 11);
        }

        if ((v40 + a8) == 0.0)
        {
          break;
        }

        __e[0] = 0;
        v45 = frexp((v40 + a8), __e);
        v46 = ldexp(v45, 11);
        v39 = ldexp(round(v46), __e[0] - 11);
        if (v39 == INFINITY)
        {
          LOBYTE(v44) = -1;
        }

        else
        {
          if (v39 != -INFINITY)
          {
            break;
          }

          LOBYTE(v44) = 0;
        }

LABEL_52:
        v23 = v57;
        if (v29 == v57)
        {
          goto LABEL_53;
        }
      }

      v43 = llroundf(v39);
      if (v43 >= 255)
      {
        v43 = 255;
      }

      v44 = v43 & ~(v43 >> 31);
      goto LABEL_52;
    }

LABEL_56:
    ++v27;
    ++v63;
  }

  while (v27 != v55);
  v20 = __p;
  if (__p)
  {
    goto LABEL_58;
  }

LABEL_59:
  if (v74)
  {
    v75 = v74;
    operator delete(v74);
  }

  v47 = *MEMORY[0x277D85DE8];
}

void sub_2599A0CDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34)
{
  if (__p)
  {
    operator delete(__p);
  }

  v36 = *(v34 - 168);
  if (v36)
  {
    *(v34 - 160) = v36;
    operator delete(v36);
  }

  v37 = *a22;
  if (*a22)
  {
    *(a22 + 8) = v37;
    operator delete(v37);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValuePeReduce<signed char,signed char>(uint64_t a1@<X0>, size_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, int a5@<W4>, uint64_t a6@<X8>, float a7@<S0>, float a8@<S1>)
{
  *v78 = *MEMORY[0x277D85DE8];
  *a6 = 0;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  if (a2)
  {
    std::vector<unsigned char>::__append(a6, a2);
  }

  v13 = *a3;
  v14 = a3[1];
  v15 = v14 - *a3;
  if (v15 != a4[1] - *a4)
  {
    __assert_rtn("ComputeValuePeReduce", "PeReduceCpu.cpp", 77, "x_rank == o_shape.size()");
  }

  v16 = v15 >> 3;
  v74 = 0;
  v75 = 0;
  v76 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v74, v13, v14, v15 >> 3);
  __p = 0;
  v72 = 0;
  v73 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&__p, *a4, a4[1], (a4[1] - *a4) >> 3);
  if (v16 == 3)
  {
    *__e = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v74, v74 + 8, __e, v78, 2);
    *__e = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&__p, __p + 8, __e, v78, 2);
  }

  else if (v16 == 4)
  {
    *__e = 1;
    std::vector<unsigned long long>::insert(&v74, v74 + 8, __e);
    *__e = 1;
    std::vector<unsigned long long>::insert(&__p, __p + 8, __e);
  }

  v17 = *v74;
  v18 = *(v74 + 1);
  v19 = *(v74 + 2);
  v20 = __p;
  v21 = *(__p + 1);
  v22 = *(__p + 2);
  v23 = *(__p + 3);
  v24 = *(__p + 4);
  if (*__p == *v74)
  {
    v17 = 1;
  }

  if (v21 == v18)
  {
    v18 = 1;
  }

  if (v22 == v19)
  {
    v19 = 1;
  }

  if (v23 == *(v74 + 3))
  {
    v25 = 1;
  }

  else
  {
    v25 = *(v74 + 3);
  }

  if (v24 == *(v74 + 4))
  {
    v26 = 1;
  }

  else
  {
    v26 = *(v74 + 4);
  }

  v55 = *__p;
  if (!*__p)
  {
LABEL_60:
    v72 = v20;
    operator delete(v20);
    goto LABEL_61;
  }

  v27 = 0;
  v28 = (v18 * v17 * v19 * v25 * v26);
  v63 = v17;
  v52 = *(__p + 1);
  v53 = v18;
  v54 = *(__p + 2);
  v56 = v19;
  v57 = *(__p + 3);
  v49 = v17;
  v50 = *(__p + 4);
  v51 = v26;
  do
  {
    if (v24)
    {
      v64 = 0;
      v59 = v27 + v17;
      v60 = v27;
      v66 = v26;
      while (!v21)
      {
LABEL_57:
        ++v66;
        v17 = v49;
        v24 = v50;
        if (++v64 == v50)
        {
          goto LABEL_58;
        }
      }

      v67 = 0;
      v62 = v64 + v26;
      v68 = v18;
      while (!v22)
      {
LABEL_56:
        ++v68;
        v26 = v51;
        v21 = v52;
        if (++v67 == v52)
        {
          goto LABEL_57;
        }
      }

      v69 = 0;
      v70 = v19;
      v65 = v67 + v18;
      while (!v23)
      {
LABEL_55:
        ++v69;
        ++v70;
        v18 = v53;
        v22 = v54;
        v19 = v56;
        if (v69 == v54)
        {
          goto LABEL_56;
        }
      }

      v29 = 0;
      while (1)
      {
        v30 = 0.0;
        if (v27 < v59)
        {
          v31 = v29 + v25;
          v32 = v60;
          do
          {
            v33 = v64;
            if (v64 < v62)
            {
              do
              {
                v34 = v67;
                if (v67 < v65)
                {
                  do
                  {
                    v35 = v69;
                    if (v69 < v69 + v56)
                    {
                      do
                      {
                        v36 = v25;
                        v37 = v29;
                        if (v29 < v31)
                        {
                          do
                          {
                            --v25;
                          }

                          while (v25);
                        }

                        ++v35;
                        v25 = v36;
                      }

                      while (v35 != v70);
                    }

                    ++v34;
                  }

                  while (v34 != v68);
                }

                ++v33;
              }

              while (v33 != v66);
            }

            ++v32;
          }

          while (v32 != v63);
        }

        if (a5)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "Function not implemented.");
          __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }

        v38 = (v30 / v28) * a7;
        v39 = 0.0;
        v40 = 0.0;
        v27 = v60;
        if (v38 != 0.0)
        {
          __e[0] = 0;
          v41 = frexp(v38, __e);
          v42 = ldexp(v41, 11);
          v40 = ldexp(round(v42), __e[0] - 11);
        }

        if ((v40 + a8) == 0.0)
        {
          break;
        }

        __e[0] = 0;
        v45 = frexp((v40 + a8), __e);
        v46 = ldexp(v45, 11);
        v39 = ldexp(round(v46), __e[0] - 11);
        if (v39 == INFINITY)
        {
          v44 = 127;
        }

        else
        {
          if (v39 != -INFINITY)
          {
            break;
          }

          v44 = 0x80;
        }

LABEL_54:
        v23 = v57;
        if (v29 == v57)
        {
          goto LABEL_55;
        }
      }

      v43 = llroundf(v39);
      if (v43 >= 127)
      {
        v43 = 127;
      }

      if (v43 <= -128)
      {
        v44 = 0x80;
      }

      else
      {
        v44 = v43;
      }

      goto LABEL_54;
    }

LABEL_58:
    ++v27;
    ++v63;
  }

  while (v27 != v55);
  v20 = __p;
  if (__p)
  {
    goto LABEL_60;
  }

LABEL_61:
  if (v74)
  {
    v75 = v74;
    operator delete(v74);
  }

  v47 = *MEMORY[0x277D85DE8];
}

void sub_2599A12C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34)
{
  if (__p)
  {
    operator delete(__p);
  }

  v36 = *(v34 - 168);
  if (v36)
  {
    *(v34 - 160) = v36;
    operator delete(v36);
  }

  v37 = *a22;
  if (*a22)
  {
    *(a22 + 8) = v37;
    operator delete(v37);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::DelegateByNameOp::MakeWithDefaultTable(MIL::ANEMachineIR::Interpreter::DelegateByNameOp *this)
{
  v1 = 0u;
  v2 = 0u;
  v3 = 1065353216;
  operator new();
}

void sub_2599A1C68(_Unwind_Exception *a1, uint64_t a2, uint64_t *a3, ...)
{
  va_start(va, a3);
  if (a3)
  {
    MIL::ANEMachineIR::Interpreter::DelegateByNameOp::MakeWithDefaultTable(a3);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

uint64_t MIL::ANEMachineIR::Interpreter::DelegateByNameOp::Run@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _DWORD *a4@<X8>)
{
  v8 = (*(*a2 + 56))(a2);
  v9 = std::__hash_table<std::__hash_value_type<std::string,std::function<TranslatorStatus ()(MIL::IROperation const&)>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::function<TranslatorStatus ()(MIL::IROperation const&)>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::function<TranslatorStatus ()(MIL::IROperation const&)>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::function<TranslatorStatus ()(MIL::IROperation const&)>>>>::find<std::string>((a1 + 8), v8);
  if (v9)
  {
    return (**v9[5])(v9[5], a2, a3);
  }

  *a4 = 1;
  (*(*a2 + 56))(a2);
  return std::operator+<char>();
}

void MIL::ANEMachineIR::Interpreter::DelegateByNameOp::~DelegateByNameOp(MIL::ANEMachineIR::Interpreter::DelegateByNameOp *this)
{
  *this = &unk_286AB1928;
  std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>>>::~__hash_table(this + 8);
}

{
  *this = &unk_286AB1928;
  std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>>>::~__hash_table(this + 8);

  JUMPOUT(0x259CA9760);
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>>>::__hash_table(uint64_t result, uint64_t *a2)
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

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>,0>(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v2)
  {
    (*(*v2 + 16))(v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

void sub_2599A2234(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void sub_2599A2388(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2599A2490(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2599A2598(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2599A26A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2599A27A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2599A28B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2599A29B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2599A2AC0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2599A2BC8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2599A2CD0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2599A2DD8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2599A2EE0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2599A2FE8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2599A30F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2599A31F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2599A3300(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

const void **MIL::ANEMachineIR::Interpreter::ComputedValueStore::TryGetValue(void *a1, const void **a2)
{
  result = std::__hash_table<std::__hash_value_type<std::string,std::function<TranslatorStatus ()(MIL::IROperation const&)>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::function<TranslatorStatus ()(MIL::IROperation const&)>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::function<TranslatorStatus ()(MIL::IROperation const&)>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::function<TranslatorStatus ()(MIL::IROperation const&)>>>>::find<std::string>(a1, a2);
  if (result)
  {
    return result[5];
  }

  return result;
}

const void **std::unordered_map<std::string,std::unique_ptr<MIL::IRTensorValue const>>::insert_or_assign[abi:ne200100]<std::unique_ptr<MIL::IRTensorValue const>>(void *a1, const void **a2, const void **a3)
{
  v4 = std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<MIL::IRTensorValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<MIL::IRTensorValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<MIL::IRTensorValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<MIL::IRTensorValue const>>>>::__emplace_unique_key_args<std::string,std::string const&,std::unique_ptr<MIL::IRTensorValue const>>(a1, a2);
  v5 = v4;
  if ((v6 & 1) == 0)
  {
    v7 = *a3;
    *a3 = 0;
    v8 = v4[5];
    v5[5] = v7;
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }
  }

  return v5;
}

uint64_t MIL::ANEMachineIR::Interpreter::TryGetInterpretedTensorValue(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = (*(*a2 + 120))(a2, a3, 0);
  if (!v4 || (v5 = std::__hash_table<std::__hash_value_type<std::string,std::function<TranslatorStatus ()(MIL::IROperation const&)>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::function<TranslatorStatus ()(MIL::IROperation const&)>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::function<TranslatorStatus ()(MIL::IROperation const&)>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::function<TranslatorStatus ()(MIL::IROperation const&)>>>>::find<std::string>(a1, v4)) == 0 || (result = v5[5]) == 0)
  {
    v7 = *(*MIL::IROperation::TryGetParameterValue() + 40);

    return v7();
  }

  return result;
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<MIL::IRTensorValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<MIL::IRTensorValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<MIL::IRTensorValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<MIL::IRTensorValue const>>>>::__emplace_unique_key_args<std::string,std::string const&,std::unique_ptr<MIL::IRTensorValue const>>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<MIL::IRTensorValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<MIL::IRTensorValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<MIL::IRTensorValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<MIL::IRTensorValue const>>>>::__construct_node_hash<std::string const&,std::unique_ptr<MIL::IRTensorValue const>>();
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

void sub_2599A3800(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<MIL::IRTensorValue const>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<MIL::IRTensorValue const>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<MIL::IRTensorValue const>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<MIL::IRTensorValue const>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unique_ptr<MIL::IRTensorValue const>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unique_ptr<MIL::IRTensorValue const>>,0>(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

void MilTranslator::WeightTranslator::~WeightTranslator(MilTranslator::WeightTranslator *this)
{
  v2 = *(this + 18);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  std::unique_ptr<MIL::Blob::StorageWriter>::~unique_ptr[abi:ne200100](this + 14);
  if (*(this + 103) < 0)
  {
    operator delete(*(this + 10));
  }

  std::__hash_table<std::__hash_value_type<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>,std::string>,std::__unordered_map_hasher<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>,std::__hash_value_type<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>,std::string>,MilTranslator::WeightTranslator::WeightInfoShapePairHasher,std::equal_to<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>>,true>,std::__unordered_map_equal<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>,std::__hash_value_type<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>,std::string>,std::equal_to<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>>,MilTranslator::WeightTranslator::WeightInfoShapePairHasher,true>,std::allocator<std::__hash_value_type<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>,std::string>>>::~__hash_table(this + 40);

  std::__hash_table<std::__hash_value_type<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>,MilTranslator::WeightTranslator::WeightFileInfo>,std::__unordered_map_hasher<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>,std::__hash_value_type<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>,MilTranslator::WeightTranslator::WeightFileInfo>,MilTranslator::WeightTranslator::WeightRewriteDescriptionPairHasher,std::equal_to<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>>,true>,std::__unordered_map_equal<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>,std::__hash_value_type<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>,MilTranslator::WeightTranslator::WeightFileInfo>,std::equal_to<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>>,MilTranslator::WeightTranslator::WeightRewriteDescriptionPairHasher,true>,std::allocator<std::__hash_value_type<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>,MilTranslator::WeightTranslator::WeightFileInfo>>>::~__hash_table(this);
}

uint64_t *std::unique_ptr<MIL::Blob::StorageWriter>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = MEMORY[0x259CA8F80]();
    MEMORY[0x259CA9760](v3, 0x20C4093837F09);
  }

  return a1;
}

uint64_t MilTranslator::WeightTranslator::WeightTranslator(uint64_t a1, __int128 *a2, int a3, uint64_t a4, uint64_t a5)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 1065353216;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 80), *a2, *(a2 + 1));
  }

  else
  {
    v10 = *a2;
    *(a1 + 96) = *(a2 + 2);
    *(a1 + 80) = v10;
  }

  *(a1 + 104) = 0;
  if (a3)
  {
    operator new();
  }

  *(a1 + 112) = 0;
  *(a1 + 120) = *a4;
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a1 + 136) = *a5;
  *a5 = 0;
  *(a5 + 8) = 0;
  if (*(a2 + 23) >= 0)
  {
    v11 = a2;
  }

  else
  {
    v11 = *a2;
  }

  v12 = fopen(v11, "a");
  fclose(v12);
  return a1;
}

void sub_2599A3B50(_Unwind_Exception *a1)
{
  std::__hash_table<std::__hash_value_type<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>,std::string>,std::__unordered_map_hasher<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>,std::__hash_value_type<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>,std::string>,MilTranslator::WeightTranslator::WeightInfoShapePairHasher,std::equal_to<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>>,true>,std::__unordered_map_equal<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>,std::__hash_value_type<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>,std::string>,std::equal_to<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>>,MilTranslator::WeightTranslator::WeightInfoShapePairHasher,true>,std::allocator<std::__hash_value_type<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>,std::string>>>::~__hash_table(v2);
  std::__hash_table<std::__hash_value_type<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>,MilTranslator::WeightTranslator::WeightFileInfo>,std::__unordered_map_hasher<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>,std::__hash_value_type<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>,MilTranslator::WeightTranslator::WeightFileInfo>,MilTranslator::WeightTranslator::WeightRewriteDescriptionPairHasher,std::equal_to<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>>,true>,std::__unordered_map_equal<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>,std::__hash_value_type<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>,MilTranslator::WeightTranslator::WeightFileInfo>,std::equal_to<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>>,MilTranslator::WeightTranslator::WeightRewriteDescriptionPairHasher,true>,std::allocator<std::__hash_value_type<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>,MilTranslator::WeightTranslator::WeightFileInfo>>>::~__hash_table(v1);
  _Unwind_Resume(a1);
}

void MilTranslator::WeightTranslator::TargetProgramConstOpName(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, std::string::size_type a5@<X4>, uint64_t a6@<X5>, _DWORD *a7@<X8>)
{
  v43[2] = *MEMORY[0x277D85DE8];
  v14 = (*(*a2 + 120))(a2, a3, 0);
  v15 = v14;
  __p = 0;
  v41 = 0uLL;
  if (v14)
  {
    v16 = 0;
    p_p = v14;
  }

  else
  {
    v37 = a1;
    v18 = a4;
    v19 = a5;
    (*(*a2 + 200))(v38, a2);
    v20 = v38[0];
    if (v38[1] == v38[0])
    {
      std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
    }

    if (*(v38[0] + 23) >= 0)
    {
      v21 = *(v38[0] + 23);
    }

    else
    {
      v21 = *(v38[0] + 8);
    }

    v22 = &v39;
    std::string::basic_string[abi:ne200100](&v39, v21 + 11);
    if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v22 = v39.__r_.__value_.__r.__words[0];
    }

    if (v21)
    {
      if (v20[23] >= 0)
      {
        v23 = v20;
      }

      else
      {
        v23 = *v20;
      }

      memmove(v22, v23, v21);
    }

    strcpy(v22 + v21, "__ival_for_");
    v24 = *(a3 + 23);
    if (v24 >= 0)
    {
      v25 = a3;
    }

    else
    {
      v25 = *a3;
    }

    if (v24 >= 0)
    {
      v26 = *(a3 + 23);
    }

    else
    {
      v26 = *(a3 + 8);
    }

    v27 = std::string::append(&v39, v25, v26);
    v28 = v27->__r_.__value_.__r.__words[0];
    v43[0] = v27->__r_.__value_.__l.__size_;
    *(v43 + 7) = *(&v27->__r_.__value_.__r.__words[1] + 7);
    v16 = HIBYTE(v27->__r_.__value_.__r.__words[2]);
    v27->__r_.__value_.__l.__size_ = 0;
    v27->__r_.__value_.__r.__words[2] = 0;
    v27->__r_.__value_.__r.__words[0] = 0;
    *(&v41 + 7) = *(v43 + 7);
    __p = v28;
    *&v41 = v43[0];
    HIBYTE(v41) = v16;
    a5 = v19;
    if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v39.__r_.__value_.__l.__data_);
    }

    v42 = v38;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v42);
    p_p = &__p;
    a4 = v18;
    a1 = v37;
  }

  ParameterValue = MIL::IROperation::TryGetParameterValue();
  if (ParameterValue && (v30 = (*(*ParameterValue + 40))(ParameterValue), (v31 = v30) != 0))
  {
    v32 = (*(*v30 + 32))(v30);
    v33 = (*(*v32 + 88))(v32);
    v34 = (*(*v31 + 32))(v31);
    ANEMachineIR::Utils::GetStaticTensorShape(v34, v35, &v39.__r_.__value_.__l.__data_);
    MilTranslator::WeightTranslator::TargetProgramConstOpName(a4, a1, p_p, v15 == 0, &v39, v33, a5, a7, a6);
    if (v39.__r_.__value_.__r.__words[0])
    {
      v39.__r_.__value_.__l.__size_ = v39.__r_.__value_.__r.__words[0];
      operator delete(v39.__r_.__value_.__l.__data_);
    }

    v16 = HIBYTE(v41);
  }

  else
  {
    *a7 = 11;
    std::operator+<char>();
  }

  if (v16 < 0)
  {
    operator delete(__p);
  }

  v36 = *MEMORY[0x277D85DE8];
}

void sub_2599A3F40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, char *a27)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  a27 = &a11;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a27);
  _Unwind_Resume(a1);
}

void MilTranslator::WeightTranslator::TargetProgramConstOpName(int __val@<W6>, uint64_t a2@<X0>, uint64_t a3@<X1>, char a4@<W2>, uint64_t *a5@<X3>, uint64_t a6@<X4>, std::string::size_type a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  BYTE8(v43) = 0;
  BYTE8(v44) = 0;
  memset(&v42, 0, sizeof(v42));
  MilTranslator::WeightTranslator::WeightRewriteDescriptionForEnum(__val, a5, a7, &v43, &v42, &v39);
  if (v39)
  {
    *a8 = v39;
    *(a8 + 8) = v40;
    *(a8 + 24) = v41;
    goto LABEL_55;
  }

  memset(&v37, 0, sizeof(v37));
  if ((a4 & 1) == 0)
  {
    if (*(a3 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v32, *a3, *(a3 + 8));
    }

    else
    {
      v32 = *a3;
    }

    *__p = v43;
    v34 = v44;
    v18 = std::__hash_table<std::__hash_value_type<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>,MilTranslator::WeightTranslator::WeightFileInfo>,std::__unordered_map_hasher<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>,std::__hash_value_type<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>,MilTranslator::WeightTranslator::WeightFileInfo>,MilTranslator::WeightTranslator::WeightRewriteDescriptionPairHasher,std::equal_to<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>>,true>,std::__unordered_map_equal<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>,std::__hash_value_type<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>,MilTranslator::WeightTranslator::WeightFileInfo>,std::equal_to<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>>,MilTranslator::WeightTranslator::WeightRewriteDescriptionPairHasher,true>,std::allocator<std::__hash_value_type<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>,MilTranslator::WeightTranslator::WeightFileInfo>>>::find<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>>(a2, &v32);
    v19 = v18;
    if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v32.__r_.__value_.__l.__data_);
      if (v19)
      {
        goto LABEL_16;
      }
    }

    else if (v18)
    {
LABEL_16:
      std::string::operator=(&v37, v19 + 3);
      data = v19[4].__r_.__value_.__l.__data_;
      goto LABEL_17;
    }

    if (*(a2 + 112))
    {
      MilTranslator::WeightTranslator::WriteWeight(a2, a5, a6, &v43, &v37, a8);
      if (*a8)
      {
        goto LABEL_51;
      }

      if (*(a8 + 31) < 0)
      {
        operator delete(*(a8 + 8));
      }
    }

    else
    {
      if (*(a2 + 103) < 0)
      {
        std::string::__init_copy_ctor_external(&v32, *(a2 + 80), *(a2 + 88));
      }

      else
      {
        v32 = *(a2 + 80);
      }

      v25 = *(a2 + 104);
      __p[0] = v25;
      if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v37.__r_.__value_.__l.__data_);
        v25 = __p[0];
      }

      v37 = v32;
      data = v25;
      v26 = 1;
      if (a6 == 4)
      {
        v26 = 2;
      }

      for (i = *a5; i != a5[1]; ++i)
      {
        v28 = *i;
        v26 *= v28;
      }

      *(a2 + 104) += v26;
    }

    if (*(a3 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v29, *a3, *(a3 + 8));
    }

    else
    {
      v29 = *a3;
    }

    v30 = v43;
    v31 = v44;
    std::pair<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription> const,MilTranslator::WeightTranslator::WeightFileInfo>::pair[abi:ne200100]<true,0>(&v32, &v29, &v37);
    std::__hash_table<std::__hash_value_type<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>,MilTranslator::WeightTranslator::WeightFileInfo>,std::__unordered_map_hasher<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>,std::__hash_value_type<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>,MilTranslator::WeightTranslator::WeightFileInfo>,MilTranslator::WeightTranslator::WeightRewriteDescriptionPairHasher,std::equal_to<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>>,true>,std::__unordered_map_equal<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>,std::__hash_value_type<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>,MilTranslator::WeightTranslator::WeightFileInfo>,std::equal_to<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>>,MilTranslator::WeightTranslator::WeightRewriteDescriptionPairHasher,true>,std::allocator<std::__hash_value_type<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>,MilTranslator::WeightTranslator::WeightFileInfo>>>::__emplace_unique_key_args<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>,std::pair<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription> const,MilTranslator::WeightTranslator::WeightFileInfo>>(a2, &v32);
    if (v36 < 0)
    {
      operator delete(v35);
    }

    if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v32.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v29.__r_.__value_.__l.__data_);
    }

LABEL_17:
    std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>::pair[abi:ne200100]<MilTranslator::WeightTranslator::WeightFileInfo&,std::vector<unsigned long long>&,0>(&v32, &v37, &v42);
    v20 = std::__hash_table<std::__hash_value_type<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>,std::string>,std::__unordered_map_hasher<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>,std::__hash_value_type<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>,std::string>,MilTranslator::WeightTranslator::WeightInfoShapePairHasher,std::equal_to<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>>,true>,std::__unordered_map_equal<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>,std::__hash_value_type<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>,std::string>,std::equal_to<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>>,MilTranslator::WeightTranslator::WeightInfoShapePairHasher,true>,std::allocator<std::__hash_value_type<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>,std::string>>>::find<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>>((a2 + 40), &v32);
    if (__p[1])
    {
      *&v34 = __p[1];
      operator delete(__p[1]);
    }

    if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v32.__r_.__value_.__l.__data_);
      if (!v20)
      {
LABEL_36:
        v24 = *(*(a2 + 120) + 24);
        if (!v24)
        {
          std::__throw_bad_function_call[abi:ne200100]();
        }

        (*(*v24 + 48))(&v32);
        if (*(a9 + 23) < 0)
        {
          operator delete(*a9);
        }

        *a9 = v32;
        MilTranslator::WeightTranslator::WriteConstOp(a2, &v42, a6, a9, &v37);
        if ((a4 & 1) == 0)
        {
          std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>::pair[abi:ne200100]<MilTranslator::WeightTranslator::WeightFileInfo&,std::vector<unsigned long long>&,0>(&v29, &v37, &v42);
          std::pair<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>> const,std::string>::pair[abi:ne200100]<true,0>(&v32, &v29, a9);
          std::__hash_table<std::__hash_value_type<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>,std::string>,std::__unordered_map_hasher<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>,std::__hash_value_type<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>,std::string>,MilTranslator::WeightTranslator::WeightInfoShapePairHasher,std::equal_to<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>>,true>,std::__unordered_map_equal<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>,std::__hash_value_type<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>,std::string>,std::equal_to<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>>,MilTranslator::WeightTranslator::WeightInfoShapePairHasher,true>,std::allocator<std::__hash_value_type<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>,std::string>>>::__emplace_unique_key_args<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>,std::pair<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>> const,std::string>>((a2 + 40), &v32);
          if (v36 < 0)
          {
            operator delete(v35);
          }

          if (__p[1])
          {
            *&v34 = __p[1];
            operator delete(__p[1]);
          }

          if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v32.__r_.__value_.__l.__data_);
          }

          if (*(&v30 + 1))
          {
            *&v31 = *(&v30 + 1);
            operator delete(*(&v30 + 1));
          }

          if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v29.__r_.__value_.__l.__data_);
          }
        }

        *a8 = 0;
        std::string::basic_string[abi:ne200100]<0>((a8 + 8), &unk_259A4D977);
        goto LABEL_51;
      }
    }

    else if (!v20)
    {
      goto LABEL_36;
    }

    std::string::operator=(a9, v20 + 3);
    *a8 = 0;
    std::string::basic_string[abi:ne200100]<0>((a8 + 8), &unk_259A4D977);
    goto LABEL_51;
  }

  if (!*(a2 + 112))
  {
    if (*(a2 + 103) < 0)
    {
      std::string::__init_copy_ctor_external(&v32, *(a2 + 80), *(a2 + 88));
      v16 = (a2 + 104);
      v17 = *(a2 + 104);
      __p[0] = v17;
      if ((SHIBYTE(v37.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_30;
      }

      v15 = __p;
      operator delete(v37.__r_.__value_.__l.__data_);
    }

    else
    {
      v32 = *(a2 + 80);
      v15 = (a2 + 104);
      v16 = (a2 + 104);
    }

    v17 = *v15;
LABEL_30:
    v37 = v32;
    data = v17;
    v21 = 1;
    if (a6 == 4)
    {
      v21 = 2;
    }

    for (j = *a5; j != a5[1]; ++j)
    {
      v23 = *j;
      v21 *= v23;
    }

    *v16 += v21;
    goto LABEL_36;
  }

  MilTranslator::WeightTranslator::WriteWeight(a2, a5, a6, &v43, &v37, a8);
  if (!*a8)
  {
    if (*(a8 + 31) < 0)
    {
      operator delete(*(a8 + 8));
    }

    goto LABEL_36;
  }

LABEL_51:
  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v41) < 0)
  {
    operator delete(v40);
  }

LABEL_55:
  if (v42.__r_.__value_.__r.__words[0])
  {
    v42.__r_.__value_.__l.__size_ = v42.__r_.__value_.__r.__words[0];
    operator delete(v42.__r_.__value_.__l.__data_);
  }
}

void sub_2599A44C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a40 < 0)
  {
    operator delete(__p);
  }

  if (*(v40 - 137) < 0)
  {
    operator delete(*(v40 - 160));
  }

  v42 = *(v40 - 136);
  if (v42)
  {
    *(v40 - 128) = v42;
    operator delete(v42);
  }

  _Unwind_Resume(exception_object);
}

void MilTranslator::WeightTranslator::WeightRewriteDescriptionForEnum(int __val@<W2>, uint64_t *a2@<X1>, std::string::size_type a3@<X3>, uint64_t a4@<X4>, std::string *a5@<X5>, uint64_t a6@<X8>)
{
  v34 = *MEMORY[0x277D85DE8];
  if (__val == 1)
  {
    v11 = a2[1] - *a2;
    if (v11 == 16)
    {
      *(a4 + 4) = 1029;
      *a4 = 50462976;
      memset(&__src, 0, sizeof(__src));
      std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&__src, *a2, a2[1], (a2[1] - *a2) >> 3);
      size = __src.__r_.__value_.__l.__size_;
      v12 = __src.__r_.__value_.__r.__words[0];
      if (__src.__r_.__value_.__r.__words[0] != __src.__r_.__value_.__l.__size_)
      {
        v14 = (__src.__r_.__value_.__l.__size_ - 8);
        if (__src.__r_.__value_.__l.__size_ - 8 > __src.__r_.__value_.__r.__words[0])
        {
          v15 = __src.__r_.__value_.__r.__words[0] + 8;
          do
          {
            v16 = *(v15 - 8);
            *(v15 - 8) = *v14;
            *v14-- = v16;
            v17 = v15 >= v14;
            v15 += 8;
          }

          while (!v17);
        }
      }

      if (&__src != a5)
      {
        std::vector<unsigned long long>::__assign_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(a5, v12, size, (size - v12) >> 3);
        v12 = __src.__r_.__value_.__r.__words[0];
      }

      *a6 = 0;
      *(a6 + 16) = 0;
      *(a6 + 24) = 0;
      *(a6 + 8) = 0;
      if (!v12)
      {
        goto LABEL_47;
      }

      __src.__r_.__value_.__l.__size_ = v12;
      v18 = v12;
      goto LABEL_33;
    }

    *a6 = 4;
    std::to_string(&__src, v11 >> 3);
    v19 = std::string::insert(&__src, 0, "Not implemented rank for weight translation: ");
LABEL_31:
    v21 = *&v19->__r_.__value_.__l.__data_;
    *(a6 + 24) = *(&v19->__r_.__value_.__l + 2);
    *(a6 + 8) = v21;
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    if ((SHIBYTE(__src.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_47:
      v29 = *MEMORY[0x277D85DE8];
      return;
    }

    v18 = __src.__r_.__value_.__r.__words[0];
LABEL_33:
    operator delete(v18);
    goto LABEL_47;
  }

  if (__val)
  {
    *a6 = 4;
    std::to_string(&__src, __val);
    v19 = std::string::insert(&__src, 0, "Weight rewrite not implemented for ");
    goto LABEL_31;
  }

  v8 = *a2;
  v9 = a2[1];
  if (a3 == 1)
  {
    goto LABEL_20;
  }

  if (v9 == v8)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (!(*v8 % a3))
  {
LABEL_20:
    v20 = v9 - v8;
    switch(v20)
    {
      case 3uLL:
        if (*v8 == a3)
        {
          *(a4 + 4) = 516;
          *a4 = 84082944;
        }

        else
        {
          *(a4 + 4) = 772;
          *a4 = 84017408;
          if (a3 != 1)
          {
            v24 = *(a4 + 24);
            *(a4 + 8) = 3;
            *(a4 + 16) = a3;
            if ((v24 & 1) == 0)
            {
              *(a4 + 24) = 1;
            }
          }
        }

        v25 = *a2;
        v26 = *(*a2 + 16);
        __src.__r_.__value_.__r.__words[0] = a3;
        __src.__r_.__value_.__l.__size_ = v26;
        __src.__r_.__value_.__r.__words[2] = v25[1];
        v31 = *v25 / a3;
        std::vector<unsigned long long>::__assign_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a5, &__src, &v32, 4uLL);
        goto LABEL_46;
      case 5uLL:
        if (*v8 == a3)
        {
          *(a4 + 4) = 2;
          *a4 = 84148993;
        }

        else
        {
          *(a4 + 4) = 258;
          *a4 = 84148992;
          if (a3 != 1)
          {
            v22 = *(a4 + 24);
            *(a4 + 8) = 1;
            *(a4 + 16) = a3;
            if ((v22 & 1) == 0)
            {
              *(a4 + 24) = 1;
            }
          }
        }

        __src.__r_.__value_.__r.__words[0] = a3;
        v23 = *a2;
        *&__src.__r_.__value_.__r.__words[1] = *(*a2 + 16);
        v31 = v23[4];
        v32 = v23[1];
        v33 = *v23 / a3;
        std::vector<unsigned long long>::__assign_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a5, &__src, &v34, 6uLL);
        goto LABEL_46;
      case 4uLL:
        if (*v8 == a3)
        {
          *(a4 + 4) = 259;
          *a4 = 84148736;
        }

        else
        {
          *(a4 + 4) = 515;
          *a4 = 84148480;
          if (a3 != 1)
          {
            v27 = *(a4 + 24);
            *(a4 + 8) = 2;
            *(a4 + 16) = a3;
            if ((v27 & 1) == 0)
            {
              *(a4 + 24) = 1;
            }
          }
        }

        __src.__r_.__value_.__r.__words[0] = a3;
        v28 = *a2;
        *&__src.__r_.__value_.__r.__words[1] = *(*a2 + 16);
        v31 = v28[1];
        v32 = *v28 / a3;
        std::vector<unsigned long long>::__assign_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a5, &__src, &v33, 5uLL);
LABEL_46:
        *a6 = 0;
        *(a6 + 16) = 0;
        *(a6 + 24) = 0;
        *(a6 + 8) = 0;
        goto LABEL_47;
    }

    *a6 = 11;
    std::to_string(&__src, v20);
    v19 = std::string::insert(&__src, 0, "Illegal rank for conv weight translation: ");
    goto LABEL_31;
  }

  *a6 = 4;
  v10 = *MEMORY[0x277D85DE8];

  std::string::basic_string[abi:ne200100]<0>((a6 + 8), "num_groups in groupwise conv must divide kernel dimension.");
}

void sub_2599A49D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MilTranslator::WeightTranslator::WriteWeight(uint64_t a1@<X0>, std::string::size_type **a2@<X1>, int a3@<W2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v8 = a2[1] - *a2;
  v9 = v8 >> 3;
  if (v8)
  {
    v10 = v9 >= 6;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    *a6 = 13;
    std::to_string(&v136, v9);
    v11 = std::string::insert(&v136, 0, "Unexpected rank ");
    v12 = *&v11->__r_.__value_.__l.__data_;
    *(a6 + 24) = *(&v11->__r_.__value_.__l + 2);
    *(a6 + 8) = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    if ((SHIBYTE(v136.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

    v13 = v136.__r_.__value_.__r.__words[0];
    goto LABEL_195;
  }

  __src = 0;
  v142 = 0;
  v143 = 0;
  std::vector<unsigned long long>::reserve(&__src, 6uLL);
  v18 = *a2;
  v19 = a2[1];
  if (v19 - *a2 != 48)
  {
    v134 = a1;
    v135 = a6;
    v20 = 0;
    v21 = v142;
    do
    {
      if (v21 >= v143)
      {
        v22 = __src;
        v23 = v21 - __src;
        v24 = (v21 - __src) >> 3;
        v25 = v24 + 1;
        if ((v24 + 1) >> 61)
        {
          std::vector<MIL::Fp16>::__throw_length_error[abi:ne200100]();
        }

        v26 = v143 - __src;
        if ((v143 - __src) >> 2 > v25)
        {
          v25 = v26 >> 2;
        }

        if (v26 >= 0x7FFFFFFFFFFFFFF8)
        {
          v27 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v27 = v25;
        }

        if (v27)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(&__src, v27);
        }

        v28 = v24;
        v29 = (8 * v24);
        v30 = &v29[-v28];
        *v29 = 1;
        v21 = (v29 + 1);
        memcpy(v30, v22, v23);
        v31 = __src;
        __src = v30;
        v142 = v21;
        v143 = 0;
        if (v31)
        {
          operator delete(v31);
        }
      }

      else
      {
        *v21 = 1;
        v21 += 8;
      }

      v142 = v21;
      ++v20;
      v18 = *a2;
      v19 = a2[1];
    }

    while (6 - (v19 - *a2) > v20);
    a6 = v135;
    a1 = v134;
  }

  v32 = 1;
  while (v18 != v19)
  {
    v136.__r_.__value_.__r.__words[0] = *v18;
    v33 = v136.__r_.__value_.__r.__words[0];
    std::vector<unsigned long long>::push_back[abi:ne200100](&__src, &v136);
    v32 *= v33;
    ++v18;
  }

  if (a3 == 4)
  {
    v138 = 0;
    v139 = 0;
    v140 = 0;
    std::vector<MIL::Fp16>::reserve(&v138, v32);
    LOWORD(v136.__r_.__value_.__l.__data_) = 0;
    std::vector<MIL::Fp16>::resize(&v138, v32, &v136);
    Data = MIL::IRTensorValue::GetDataView<MIL::Fp16>();
    v152 = v34;
    v35 = *(a4 + 24);
    memset(&v136, 0, sizeof(v136));
    if (v35 == 1)
    {
      std::vector<unsigned long long>::__assign_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v136, __src, v142, (v142 - __src) >> 3);
      v36 = *(a4 + 8);
      if (!*(a4 + 8))
      {
        goto LABEL_175;
      }

      v37 = v36 - 1;
      v38 = v136.__r_.__value_.__r.__words[0];
      if (v36 - 1 >= (v136.__r_.__value_.__l.__size_ - v136.__r_.__value_.__r.__words[0]) >> 3)
      {
        std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
      }

      if (*(v136.__r_.__value_.__r.__words[0] + 8 * v37) != 1)
      {
LABEL_175:
        *a6 = 13;
        std::to_string(&v150, v36);
        v131 = std::string::insert(&v150, 0, "Illegal weight dimension to split at index: ");
        v132 = *&v131->__r_.__value_.__l.__data_;
        *(a6 + 24) = *(&v131->__r_.__value_.__l + 2);
        *(a6 + 8) = v132;
        v131->__r_.__value_.__l.__size_ = 0;
        v131->__r_.__value_.__r.__words[2] = 0;
        v131->__r_.__value_.__r.__words[0] = 0;
        if ((SHIBYTE(v150.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_178;
        }

        v123 = v150.__r_.__value_.__r.__words[0];
        goto LABEL_177;
      }

      v39 = *(a4 + 16);
      *(v136.__r_.__value_.__r.__words[0] + 8 * v37) = v39;
      *(v38 + 8 * v36) /= v39;
      p_src = &v136;
    }

    else
    {
      p_src = &__src;
    }

    memset(&v150, 0, sizeof(v150));
    v147 = 1;
    std::vector<unsigned long long>::assign(&v150, 6uLL, &v147);
    v103 = p_src->__r_.__value_.__r.__words[0];
    v104 = *(p_src->__r_.__value_.__r.__words[0] + 40);
    v105 = v150.__r_.__value_.__r.__words[0];
    *(v150.__r_.__value_.__r.__words[0] + 32) = v104;
    v106 = v103[4] * v104;
    v105[3] = v106;
    v107 = v103[3] * v106;
    v105[2] = v107;
    v108 = v103[2] * v107;
    v105[1] = v108;
    *v105 = v103[1] * v108;
    v147 = 0;
    v148 = 0;
    v149 = 0;
    std::vector<unsigned long long>::reserve(&v147, 6uLL);
    __p = 0;
    v145 = 0;
    v146 = 0;
    std::vector<unsigned long long>::reserve(&__p, 6uLL);
    for (i = 0; i != 6; ++i)
    {
      v110 = *(a4 + i);
      std::vector<unsigned long long>::push_back[abi:ne200100](&v147, (p_src->__r_.__value_.__r.__words[0] + 8 * v110));
      std::vector<unsigned long long>::push_back[abi:ne200100](&__p, (v150.__r_.__value_.__r.__words[0] + 8 * v110));
    }

    v111 = v147;
    v112 = *v147;
    if (*v147)
    {
      v113 = 0;
      v114 = 0;
      do
      {
        if (v111[1])
        {
          v115 = a1;
          v116 = 0;
          do
          {
            if (v111[2])
            {
              v117 = 0;
              v118 = v113;
              do
              {
                if (v111[3])
                {
                  v119 = 0;
                  do
                  {
                    if (v111[4])
                    {
                      v120 = 0;
                      do
                      {
                        if (v111[5])
                        {
                          v121 = 0;
                          do
                          {
                            v122 = MIL::Util::Span<MIL::Fp16 const,18446744073709551615ul>::operator[](&Data, *__p * v114 + *(__p + 1) * v116 + *(__p + 2) * v117 + *(__p + 3) * v119 + *(__p + 4) * v120 + *(__p + 5) * v121);
                            *(v138 + v118) = *v122;
                            v113 = v118 + 1;
                            ++v121;
                            v111 = v147;
                            ++v118;
                          }

                          while (v121 < *(v147 + 5));
                          v118 = v113;
                        }

                        else
                        {
                          v113 = v118;
                        }

                        ++v120;
                      }

                      while (v120 < v111[4]);
                    }

                    else
                    {
                      v113 = v118;
                    }

                    ++v119;
                    v118 = v113;
                  }

                  while (v119 < v111[3]);
                }

                else
                {
                  v113 = v118;
                }

                ++v117;
                v118 = v113;
              }

              while (v117 < v111[2]);
            }

            ++v116;
          }

          while (v116 < v111[1]);
          v112 = *v111;
          a1 = v115;
        }

        ++v114;
      }

      while (v114 < v112);
    }

    *a6 = 0;
    std::string::basic_string[abi:ne200100]<0>((a6 + 8), &unk_259A4D977);
    if (__p)
    {
      v145 = __p;
      operator delete(__p);
    }

    if (v147)
    {
      v148 = v147;
      operator delete(v147);
    }

    v123 = v150.__r_.__value_.__r.__words[0];
    if (!v150.__r_.__value_.__r.__words[0])
    {
LABEL_178:
      if (v136.__r_.__value_.__r.__words[0])
      {
        v136.__r_.__value_.__l.__size_ = v136.__r_.__value_.__r.__words[0];
        operator delete(v136.__r_.__value_.__l.__data_);
      }

      v46 = v138;
      if (!*a6)
      {
        v133 = *(a1 + 112);
        v127 = MIL::Blob::StorageWriter::WriteData<MIL::Fp16>();
        if (*(a1 + 103) < 0)
        {
          goto LABEL_166;
        }

        goto LABEL_185;
      }

      goto LABEL_181;
    }

    v150.__r_.__value_.__l.__size_ = v150.__r_.__value_.__r.__words[0];
LABEL_177:
    operator delete(v123);
    goto LABEL_178;
  }

  if (a3 != 9)
  {
    if (a3 != 14)
    {
      *a6 = 13;
      v41 = a6 + 8;
      std::to_string(&v150, a3);
      v42 = std::string::insert(&v150, 0, "Dtype ");
      v43 = *&v42->__r_.__value_.__l.__data_;
      v136.__r_.__value_.__r.__words[2] = v42->__r_.__value_.__r.__words[2];
      *&v136.__r_.__value_.__l.__data_ = v43;
      v42->__r_.__value_.__l.__size_ = 0;
      v42->__r_.__value_.__r.__words[2] = 0;
      v42->__r_.__value_.__r.__words[0] = 0;
      v44 = std::string::append(&v136, "not implemented for weight rewrite");
      v45 = *&v44->__r_.__value_.__l.__data_;
      *(v41 + 16) = *(&v44->__r_.__value_.__l + 2);
      *v41 = v45;
      v44->__r_.__value_.__l.__size_ = 0;
      v44->__r_.__value_.__r.__words[2] = 0;
      v44->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v136.__r_.__value_.__l.__data_);
      }

      if ((SHIBYTE(v150.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_193;
      }

      v46 = v150.__r_.__value_.__r.__words[0];
      goto LABEL_183;
    }

    v138 = 0;
    v139 = 0;
    v140 = 0;
    std::vector<unsigned char>::reserve(&v138, v32);
    v136.__r_.__value_.__s.__data_[0] = 0;
    if (v32 <= v139 - v138)
    {
      if (v32 < v139 - v138)
      {
        v139 = v138 + v32;
      }
    }

    else
    {
      std::vector<unsigned char>::__append(&v138, v32 - (v139 - v138), &v136);
    }

    Data = MIL::IRTensorValue::GetDataView<unsigned char>();
    v152 = v54;
    v55 = *(a4 + 24);
    memset(&v136, 0, sizeof(v136));
    if (v55 == 1)
    {
      std::vector<unsigned long long>::__assign_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v136, __src, v142, (v142 - __src) >> 3);
      v56 = *(a4 + 8);
      if (!*(a4 + 8))
      {
        goto LABEL_167;
      }

      v57 = v56 - 1;
      v58 = v136.__r_.__value_.__r.__words[0];
      if (v56 - 1 >= (v136.__r_.__value_.__l.__size_ - v136.__r_.__value_.__r.__words[0]) >> 3)
      {
        std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
      }

      if (*(v136.__r_.__value_.__r.__words[0] + 8 * v57) != 1)
      {
LABEL_167:
        *a6 = 13;
        std::to_string(&v150, v56);
        v128 = std::string::insert(&v150, 0, "Illegal weight dimension to split at index: ");
        v129 = *&v128->__r_.__value_.__l.__data_;
        *(a6 + 24) = *(&v128->__r_.__value_.__l + 2);
        *(a6 + 8) = v129;
        v128->__r_.__value_.__l.__size_ = 0;
        v128->__r_.__value_.__r.__words[2] = 0;
        v128->__r_.__value_.__r.__words[0] = 0;
        if ((SHIBYTE(v150.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_170;
        }

        v102 = v150.__r_.__value_.__r.__words[0];
        goto LABEL_169;
      }

      v59 = *(a4 + 16);
      *(v136.__r_.__value_.__r.__words[0] + 8 * v57) = v59;
      *(v58 + 8 * v56) /= v59;
      v60 = &v136;
    }

    else
    {
      v60 = &__src;
    }

    memset(&v150, 0, sizeof(v150));
    v147 = 1;
    std::vector<unsigned long long>::assign(&v150, 6uLL, &v147);
    v82 = v60->__r_.__value_.__r.__words[0];
    v83 = *(v60->__r_.__value_.__r.__words[0] + 40);
    v84 = v150.__r_.__value_.__r.__words[0];
    *(v150.__r_.__value_.__r.__words[0] + 32) = v83;
    v85 = v82[4] * v83;
    v84[3] = v85;
    v86 = v82[3] * v85;
    v84[2] = v86;
    v87 = v82[2] * v86;
    v84[1] = v87;
    *v84 = v82[1] * v87;
    v147 = 0;
    v148 = 0;
    v149 = 0;
    std::vector<unsigned long long>::reserve(&v147, 6uLL);
    __p = 0;
    v145 = 0;
    v146 = 0;
    std::vector<unsigned long long>::reserve(&__p, 6uLL);
    for (j = 0; j != 6; ++j)
    {
      v89 = *(a4 + j);
      std::vector<unsigned long long>::push_back[abi:ne200100](&v147, (v60->__r_.__value_.__r.__words[0] + 8 * v89));
      std::vector<unsigned long long>::push_back[abi:ne200100](&__p, (v150.__r_.__value_.__r.__words[0] + 8 * v89));
    }

    v90 = v147;
    v91 = *v147;
    if (*v147)
    {
      v92 = 0;
      v93 = 0;
      do
      {
        if (v90[1])
        {
          v94 = a1;
          v95 = 0;
          do
          {
            if (v90[2])
            {
              v96 = 0;
              v97 = v92;
              do
              {
                if (v90[3])
                {
                  v98 = 0;
                  do
                  {
                    if (v90[4])
                    {
                      v99 = 0;
                      do
                      {
                        if (v90[5])
                        {
                          v100 = 0;
                          do
                          {
                            v101 = MIL::Util::Span<unsigned char const,18446744073709551615ul>::operator[](&Data, *__p * v93 + *(__p + 1) * v95 + *(__p + 2) * v96 + *(__p + 3) * v98 + *(__p + 4) * v99 + *(__p + 5) * v100);
                            *(v138 + v97) = *v101;
                            v92 = v97 + 1;
                            ++v100;
                            v90 = v147;
                            ++v97;
                          }

                          while (v100 < *(v147 + 5));
                          v97 = v92;
                        }

                        else
                        {
                          v92 = v97;
                        }

                        ++v99;
                      }

                      while (v99 < v90[4]);
                    }

                    else
                    {
                      v92 = v97;
                    }

                    ++v98;
                    v97 = v92;
                  }

                  while (v98 < v90[3]);
                }

                else
                {
                  v92 = v97;
                }

                ++v96;
                v97 = v92;
              }

              while (v96 < v90[2]);
            }

            ++v95;
          }

          while (v95 < v90[1]);
          v91 = *v90;
          a1 = v94;
        }

        ++v93;
      }

      while (v93 < v91);
    }

    *a6 = 0;
    std::string::basic_string[abi:ne200100]<0>((a6 + 8), &unk_259A4D977);
    if (__p)
    {
      v145 = __p;
      operator delete(__p);
    }

    if (v147)
    {
      v148 = v147;
      operator delete(v147);
    }

    v102 = v150.__r_.__value_.__r.__words[0];
    if (!v150.__r_.__value_.__r.__words[0])
    {
LABEL_170:
      if (v136.__r_.__value_.__r.__words[0])
      {
        v136.__r_.__value_.__l.__size_ = v136.__r_.__value_.__r.__words[0];
        operator delete(v136.__r_.__value_.__l.__data_);
      }

      v46 = v138;
      if (!*a6)
      {
        v130 = *(a1 + 112);
        v127 = MIL::Blob::StorageWriter::WriteData<unsigned char>();
        if (*(a1 + 103) < 0)
        {
          goto LABEL_166;
        }

        goto LABEL_185;
      }

      goto LABEL_181;
    }

    v150.__r_.__value_.__l.__size_ = v150.__r_.__value_.__r.__words[0];
LABEL_169:
    operator delete(v102);
    goto LABEL_170;
  }

  v138 = 0;
  v139 = 0;
  v140 = 0;
  std::vector<unsigned char>::reserve(&v138, v32);
  v136.__r_.__value_.__s.__data_[0] = 0;
  if (v32 <= v139 - v138)
  {
    if (v32 < v139 - v138)
    {
      v139 = v138 + v32;
    }
  }

  else
  {
    std::vector<unsigned char>::__append(&v138, v32 - (v139 - v138), &v136);
  }

  Data = MIL::IRTensorValue::GetDataView<signed char>();
  v152 = v47;
  v48 = *(a4 + 24);
  memset(&v136, 0, sizeof(v136));
  if (v48 == 1)
  {
    std::vector<unsigned long long>::__assign_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v136, __src, v142, (v142 - __src) >> 3);
    v49 = *(a4 + 8);
    if (!*(a4 + 8))
    {
      goto LABEL_159;
    }

    v50 = v49 - 1;
    v51 = v136.__r_.__value_.__r.__words[0];
    if (v49 - 1 >= (v136.__r_.__value_.__l.__size_ - v136.__r_.__value_.__r.__words[0]) >> 3)
    {
      std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
    }

    if (*(v136.__r_.__value_.__r.__words[0] + 8 * v50) != 1)
    {
LABEL_159:
      *a6 = 13;
      std::to_string(&v150, v49);
      v124 = std::string::insert(&v150, 0, "Illegal weight dimension to split at index: ");
      v125 = *&v124->__r_.__value_.__l.__data_;
      *(a6 + 24) = *(&v124->__r_.__value_.__l + 2);
      *(a6 + 8) = v125;
      v124->__r_.__value_.__l.__size_ = 0;
      v124->__r_.__value_.__r.__words[2] = 0;
      v124->__r_.__value_.__r.__words[0] = 0;
      if ((SHIBYTE(v150.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_162;
      }

      v81 = v150.__r_.__value_.__r.__words[0];
      goto LABEL_161;
    }

    v52 = *(a4 + 16);
    *(v136.__r_.__value_.__r.__words[0] + 8 * v50) = v52;
    *(v51 + 8 * v49) /= v52;
    v53 = &v136;
  }

  else
  {
    v53 = &__src;
  }

  memset(&v150, 0, sizeof(v150));
  v147 = 1;
  std::vector<unsigned long long>::assign(&v150, 6uLL, &v147);
  v61 = v53->__r_.__value_.__r.__words[0];
  v62 = *(v53->__r_.__value_.__r.__words[0] + 40);
  v63 = v150.__r_.__value_.__r.__words[0];
  *(v150.__r_.__value_.__r.__words[0] + 32) = v62;
  v64 = v61[4] * v62;
  v63[3] = v64;
  v65 = v61[3] * v64;
  v63[2] = v65;
  v66 = v61[2] * v65;
  v63[1] = v66;
  *v63 = v61[1] * v66;
  v147 = 0;
  v148 = 0;
  v149 = 0;
  std::vector<unsigned long long>::reserve(&v147, 6uLL);
  __p = 0;
  v145 = 0;
  v146 = 0;
  std::vector<unsigned long long>::reserve(&__p, 6uLL);
  for (k = 0; k != 6; ++k)
  {
    v68 = *(a4 + k);
    std::vector<unsigned long long>::push_back[abi:ne200100](&v147, (v53->__r_.__value_.__r.__words[0] + 8 * v68));
    std::vector<unsigned long long>::push_back[abi:ne200100](&__p, (v150.__r_.__value_.__r.__words[0] + 8 * v68));
  }

  v69 = v147;
  v70 = *v147;
  if (*v147)
  {
    v71 = 0;
    v72 = 0;
    do
    {
      if (v69[1])
      {
        v73 = a1;
        v74 = 0;
        do
        {
          if (v69[2])
          {
            v75 = 0;
            v76 = v71;
            do
            {
              if (v69[3])
              {
                v77 = 0;
                do
                {
                  if (v69[4])
                  {
                    v78 = 0;
                    do
                    {
                      if (v69[5])
                      {
                        v79 = 0;
                        do
                        {
                          v80 = MIL::Util::Span<signed char const,18446744073709551615ul>::operator[](&Data, *__p * v72 + *(__p + 1) * v74 + *(__p + 2) * v75 + *(__p + 3) * v77 + *(__p + 4) * v78 + *(__p + 5) * v79);
                          *(v138 + v76) = *v80;
                          v71 = v76 + 1;
                          ++v79;
                          v69 = v147;
                          ++v76;
                        }

                        while (v79 < *(v147 + 5));
                        v76 = v71;
                      }

                      else
                      {
                        v71 = v76;
                      }

                      ++v78;
                    }

                    while (v78 < v69[4]);
                  }

                  else
                  {
                    v71 = v76;
                  }

                  ++v77;
                  v76 = v71;
                }

                while (v77 < v69[3]);
              }

              else
              {
                v71 = v76;
              }

              ++v75;
              v76 = v71;
            }

            while (v75 < v69[2]);
          }

          ++v74;
        }

        while (v74 < v69[1]);
        v70 = *v69;
        a1 = v73;
      }

      ++v72;
    }

    while (v72 < v70);
  }

  *a6 = 0;
  std::string::basic_string[abi:ne200100]<0>((a6 + 8), &unk_259A4D977);
  if (__p)
  {
    v145 = __p;
    operator delete(__p);
  }

  if (v147)
  {
    v148 = v147;
    operator delete(v147);
  }

  v81 = v150.__r_.__value_.__r.__words[0];
  if (v150.__r_.__value_.__r.__words[0])
  {
    v150.__r_.__value_.__l.__size_ = v150.__r_.__value_.__r.__words[0];
LABEL_161:
    operator delete(v81);
  }

LABEL_162:
  if (v136.__r_.__value_.__r.__words[0])
  {
    v136.__r_.__value_.__l.__size_ = v136.__r_.__value_.__r.__words[0];
    operator delete(v136.__r_.__value_.__l.__data_);
  }

  v46 = v138;
  if (!*a6)
  {
    v126 = *(a1 + 112);
    v127 = MIL::Blob::StorageWriter::WriteData<unsigned char>();
    if (*(a1 + 103) < 0)
    {
LABEL_166:
      std::string::__init_copy_ctor_external(&v136, *(a1 + 80), *(a1 + 88));
LABEL_186:
      v137 = v127;
      if (*(a5 + 23) < 0)
      {
        operator delete(*a5);
        v127 = v137;
      }

      *a5 = v136;
      *(a5 + 24) = v127;
      if (*(a6 + 31) < 0)
      {
        operator delete(*(a6 + 8));
      }

      if (v138)
      {
        v139 = v138;
        operator delete(v138);
      }

      *a6 = 0;
      std::string::basic_string[abi:ne200100]<0>((a6 + 8), &unk_259A4D977);
      goto LABEL_193;
    }

LABEL_185:
    v136 = *(a1 + 80);
    goto LABEL_186;
  }

LABEL_181:
  if (v46)
  {
    v139 = v46;
LABEL_183:
    operator delete(v46);
  }

LABEL_193:
  v13 = __src;
  if (!__src)
  {
    return;
  }

  v142 = __src;
LABEL_195:
  operator delete(v13);
}