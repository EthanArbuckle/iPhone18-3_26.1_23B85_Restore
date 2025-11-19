void sub_218213858(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (*(v35 - 105) < 0)
  {
    operator delete(*(v35 - 128));
  }

  if (a31 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
    if ((v31 & 1) == 0)
    {
LABEL_10:
      if (v33)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v33);
        std::__shared_weak_count::__release_shared[abi:ne200100](v33);
      }

      if (v32)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v32);
      }

      if (v33)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v33);
      }

      if (v32)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v32);
      }

      if (a11)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](a11);
      }

      if (a17)
      {
        operator delete(a17);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v31)
  {
    goto LABEL_10;
  }

  __cxa_free_exception(v34);
  goto LABEL_10;
}

void MIL::Operators::Common::ios16::ConstExprs::AffineDequantize::~AffineDequantize(MIL::Operators::Common::ios16::ConstExprs::AffineDequantize *this)
{
  v2 = *(this + 1);
  *(this + 1) = 0;
  if (v2)
  {
    MIL::Operators::Common::ios16::ConstExprs::AffineDequantize::Impl::~Impl(v2);
    MEMORY[0x21CEAFEA0]();
  }

  MIL::AbstractConstExpr::~AbstractConstExpr(this);
}

{
  MIL::Operators::Common::ios16::ConstExprs::AffineDequantize::~AffineDequantize(this);

  JUMPOUT(0x21CEAFEA0);
}

void sub_218213E48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  MIL::Operators::Common::ios16::ConstExprs::AffineDequantize::Impl::Impl((v12 | 8), (v13 | 8));
  MEMORY[0x21CEAFEA0](v11, v10);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::ConstExprs::AffineDequantize::ComputeOutput(MIL::Operators::Common::ios16::ConstExprs::AffineDequantize *this, uint64_t a2)
{
  if (!a2)
  {
    v2 = *(this + 1);

    MIL::Operators::Common::ios16::ConstExprs::AffineDequantize::Impl::ComputeOutput(v2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "AffineDequantize has a single output.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

uint64_t MIL::Util::Span<MIL::Fp16 const,18446744073709551615ul>::At(void *a1, unint64_t a2)
{
  if (a1[1] <= a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::range_error::range_error[abi:ne200100](exception, "index out of bounds");
    __cxa_throw(exception, off_278235F68, MEMORY[0x277D825E0]);
  }

  return *a1 + 2 * a2;
}

uint64_t MIL::Util::Span<float const,18446744073709551615ul>::At(void *a1, unint64_t a2)
{
  if (a1[1] <= a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::range_error::range_error[abi:ne200100](exception, "index out of bounds");
    __cxa_throw(exception, off_278235F68, MEMORY[0x277D825E0]);
  }

  return *a1 + 4 * a2;
}

void MIL::Operators::Common::ios16::ConstExprs::AffineDequantize::Impl::~Impl(MIL::Operators::Common::ios16::ConstExprs::AffineDequantize::Impl *this)
{
  v2 = *(this + 6);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 4);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 2);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

uint64_t MIL::Operators::Common::ios16::ConstExprs::Cast::Impl::Impl(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  *(a1 + 8) = *a3;
  *a3 = 0;
  *(a3 + 8) = 0;
  MIL::Operators::Common::ios16::ConstExprs::Cast::Impl::ValidateArgsAndTypeConstraints(a1);
  return a1;
}

void sub_218214084(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios16::ConstExprs::Cast::Impl::ValidateArgsAndTypeConstraints(MIL::Operators::Common::ios16::ConstExprs::Cast::Impl *this)
{
  v4 = 14;
  strcpy(__p, "Constexpr-Cast");
  v2 = (*(**(this + 1) + 32))(*(this + 1));
  MIL::Operators::Common::Shared::ConstExprs::AssertExpectedOutputShape(v2, *this);
}

void sub_21821412C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios16::ConstExprs::Cast::Impl::ComputeOutput(MIL::Operators::Common::ios16::ConstExprs::Cast::Impl *this)
{
  v2 = (*(**(this + 1) + 32))(*(this + 1));
  v3 = (*(*v2 + 88))(v2);
  if (v3 == 4)
  {
    if ((*(**this + 88))() == 5)
    {
      v4 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(*(this + 1));
      v6 = v5;
      std::vector<float>::vector[abi:ne200100](&__p, v5);
      if (v6)
      {
        v7 = __p.__r_.__value_.__r.__words[0];
        v8 = 2 * v6;
        do
        {
          *v7++ = MIL::Fp16::GetFloat(v4);
          v4 = (v4 + 2);
          v8 -= 2;
        }

        while (v8);
      }

      MIL::IRTensorValueType::MakeFloat32Value();
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Invalid output dtype for Constexpr-Cast");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v9 = v3;
  v10 = __cxa_allocate_exception(0x10uLL);
  MIL::IRDataTypeToString(v9, &v16);
  v11 = std::string::insert(&v16, 0, "Constexpr-Cast: Source type ");
  v12 = *&v11->__r_.__value_.__l.__data_;
  v17.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
  *&v17.__r_.__value_.__l.__data_ = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  v13 = std::string::append(&v17, " is not supported");
  v14 = *&v13->__r_.__value_.__l.__data_;
  __p.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
  *&__p.__r_.__value_.__l.__data_ = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  std::runtime_error::runtime_error(v10, &__p);
  __cxa_throw(v10, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_2182143A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v29 & 1) == 0)
    {
LABEL_10:
      _Unwind_Resume(a1);
    }
  }

  else if (!v29)
  {
    goto LABEL_10;
  }

  __cxa_free_exception(v28);
  goto LABEL_10;
}

void MIL::Operators::Common::ios16::ConstExprs::Cast::~Cast(MIL::Operators::Common::ios16::ConstExprs::Cast *this)
{
  v4 = *(this + 1);
  v2 = (this + 8);
  v3 = v4;
  *v2 = 0;
  if (v4)
  {
    std::default_delete<MIL::Operators::Common::ios16::ConstExprs::Cast::Impl>::operator()[abi:ne200100](v2, v3);
  }

  MIL::AbstractConstExpr::~AbstractConstExpr(this);
}

{
  MIL::Operators::Common::ios16::ConstExprs::Cast::~Cast(this);

  JUMPOUT(0x21CEAFEA0);
}

void sub_218214574(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  MEMORY[0x21CEAFEA0](v11, 0x60C40AA6EF139);
  MIL::AbstractConstExpr::~AbstractConstExpr(v10);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::ConstExprs::Cast::ComputeOutput(MIL::Operators::Common::ios16::ConstExprs::Cast *this, uint64_t a2)
{
  if (!a2)
  {
    v2 = *(this + 1);

    MIL::Operators::Common::ios16::ConstExprs::Cast::Impl::ComputeOutput(v2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cast has a single output.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void std::default_delete<MIL::Operators::Common::ios16::ConstExprs::Cast::Impl>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 16);
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }

    JUMPOUT(0x21CEAFEA0);
  }
}

void MIL::Operators::Common::ios16::ConstExprs::LutToDense::Impl::ValidateArgsAndTypeConstraints(MIL::Operators::Common::ios16::ConstExprs::LutToDense::Impl *this)
{
  v55 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&v41, "Constexpr-LutToDense");
  v2 = (*(**(this + 1) + 32))(*(this + 1));
  std::string::basic_string[abi:ne200100]<0>(__p, "lookupTable");
  MIL::Operators::Common::Shared::ConstExprs::AssertIsVector(v2, __p);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  v3 = (*(**(this + 3) + 32))(*(this + 3));
  std::string::basic_string[abi:ne200100]<0>(__p, "indices");
  MIL::Operators::Common::Shared::ConstExprs::AssertIsVector(v3, __p);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  v4 = (*(**(this + 1) + 32))(*(this + 1));
  MIL::Operators::Common::Shared::ConstExprs::AssertExpectedOutputDType(v4, *this);
  v5 = *this;
  std::string::basic_string[abi:ne200100]<0>(__p, "output");
  MIL::Operators::Common::Shared::ConstExprs::AssertIsShapeConstant(v5, __p);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  v6 = (*(**(this + 1) + 32))(*(this + 1));
  __val.__r_.__value_.__r.__words[0] = (*(*v6 + 16))(v6);
  *v53 = xmmword_218591968;
  *&v53[16] = unk_218591978;
  v54 = 256;
  std::unordered_set<unsigned long>::unordered_set(__p, v53, 5);
  if (!std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::find<unsigned long long>(__p, &__val))
  {
    std::operator+<char>();
    v13 = std::string::append(&v51, ", number of palettes should be one of  {2, 4, 16, 64, 256} but provided number of palettes = ");
    v14 = *&v13->__r_.__value_.__l.__data_;
    v52.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
    *&v52.__r_.__value_.__l.__data_ = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v50, __val.__r_.__value_.__r.__words[0]);
    if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v15 = &v50;
    }

    else
    {
      v15 = v50.__r_.__value_.__r.__words[0];
    }

    if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v50.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v50.__r_.__value_.__l.__size_;
    }

    v17 = std::string::append(&v52, v15, size);
    v18 = *&v17->__r_.__value_.__l.__data_;
    *&v53[16] = *(&v17->__r_.__value_.__l + 2);
    *v53 = v18;
    v17->__r_.__value_.__l.__size_ = 0;
    v17->__r_.__value_.__r.__words[2] = 0;
    v17->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v50.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v52.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v51.__r_.__value_.__l.__data_);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, v53);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(__p);
  v7 = (*(**(this + 1) + 32))(*(this + 1));
  v8 = (*(*v7 + 16))(v7);
  v9 = log2(v8);
  v10 = (*(**(this + 3) + 32))(*(this + 3));
  v11 = (*(*v10 + 16))(v10);
  v12 = (*(**this + 16))();
  if (v11 != vcvtpd_u64_f64(vcvtd_n_f64_u64(v12, 3uLL) * v9))
  {
    std::operator+<char>();
    v20 = std::string::append(&v47, " with nBits (=");
    v21 = *&v20->__r_.__value_.__l.__data_;
    v48.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
    *&v48.__r_.__value_.__l.__data_ = v21;
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v46, v9);
    if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v22 = &v46;
    }

    else
    {
      v22 = v46.__r_.__value_.__r.__words[0];
    }

    if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v23 = HIBYTE(v46.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v23 = v46.__r_.__value_.__l.__size_;
    }

    v24 = std::string::append(&v48, v22, v23);
    v25 = *&v24->__r_.__value_.__l.__data_;
    __val.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
    *&__val.__r_.__value_.__l.__data_ = v25;
    v24->__r_.__value_.__l.__size_ = 0;
    v24->__r_.__value_.__r.__words[2] = 0;
    v24->__r_.__value_.__r.__words[0] = 0;
    v26 = std::string::append(&__val, "), mismatch in indices size and the shape of output IRTensorValueType. Size of indices (=");
    v27 = *&v26->__r_.__value_.__l.__data_;
    v50.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
    *&v50.__r_.__value_.__l.__data_ = v27;
    v26->__r_.__value_.__l.__size_ = 0;
    v26->__r_.__value_.__r.__words[2] = 0;
    v26->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v45, v11);
    if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v28 = &v45;
    }

    else
    {
      v28 = v45.__r_.__value_.__r.__words[0];
    }

    if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v29 = HIBYTE(v45.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v29 = v45.__r_.__value_.__l.__size_;
    }

    v30 = std::string::append(&v50, v28, v29);
    v31 = *&v30->__r_.__value_.__l.__data_;
    v51.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
    *&v51.__r_.__value_.__l.__data_ = v31;
    v30->__r_.__value_.__l.__size_ = 0;
    v30->__r_.__value_.__r.__words[2] = 0;
    v30->__r_.__value_.__r.__words[0] = 0;
    v32 = std::string::append(&v51, ") and the size of output IRTensorValueType (=");
    v33 = *&v32->__r_.__value_.__l.__data_;
    v52.__r_.__value_.__r.__words[2] = v32->__r_.__value_.__r.__words[2];
    *&v52.__r_.__value_.__l.__data_ = v33;
    v32->__r_.__value_.__l.__size_ = 0;
    v32->__r_.__value_.__r.__words[2] = 0;
    v32->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v44, v12);
    if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v34 = &v44;
    }

    else
    {
      v34 = v44.__r_.__value_.__r.__words[0];
    }

    if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v35 = HIBYTE(v44.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v35 = v44.__r_.__value_.__l.__size_;
    }

    v36 = std::string::append(&v52, v34, v35);
    v37 = *&v36->__r_.__value_.__l.__data_;
    *&v53[16] = *(&v36->__r_.__value_.__l + 2);
    *v53 = v37;
    v36->__r_.__value_.__l.__size_ = 0;
    v36->__r_.__value_.__r.__words[2] = 0;
    v36->__r_.__value_.__r.__words[0] = 0;
    v38 = std::string::append(v53, ") should follow the equation: indicesSize == ceil(nBits * outputSize / 8.0)");
    v39 = *&v38->__r_.__value_.__l.__data_;
    __p[0].__r_.__value_.__r.__words[2] = v38->__r_.__value_.__r.__words[2];
    *&__p[0].__r_.__value_.__l.__data_ = v39;
    v38->__r_.__value_.__l.__size_ = 0;
    v38->__r_.__value_.__r.__words[2] = 0;
    v38->__r_.__value_.__r.__words[0] = 0;
    if ((v53[23] & 0x80000000) != 0)
    {
      operator delete(*v53);
    }

    if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v44.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v52.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v51.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v45.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v50.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__val.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__val.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v46.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v48.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v47.__r_.__value_.__l.__data_);
    }

    v40 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v40, __p);
    __cxa_throw(v40, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (v42 < 0)
  {
    operator delete(v41);
  }
}

void sub_218214D20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54, uint64_t a55, void *a56, uint64_t a57, int a58, __int16 a59, char a60, char a61)
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

void MIL::Operators::Common::ios16::ConstExprs::LutToDense::Impl::ComputeOutput(MIL::Operators::Common::ios16::ConstExprs::LutToDense::Impl *this)
{
  v2 = (*(**this + 96))(*this);
  v49 = 0;
  v50 = 0;
  v48 = 0;
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&v48, *v2, v2[1], (v2[1] - *v2) >> 3);
  v3 = v48;
  if (v49 == v48)
  {
    v5 = 1;
  }

  else
  {
    v4 = 0;
    v5 = 1;
    do
    {
      v6 = MIL::IRDimension::AsConstant(v3[v4]);
      v5 *= (*(*v6 + 48))(v6);
      ++v4;
      v3 = v48;
    }

    while (v4 < (v49 - v48) >> 3);
  }

  v7 = (*(**(this + 1) + 32))(*(this + 1));
  v8 = (*(*v7 + 96))(v7);
  v9 = MIL::IRDimension::AsConstant(**v8);
  v10 = (*(*v9 + 48))(v9);
  v11 = log2(v10);
  v12 = (*(**(this + 1) + 32))(*(this + 1));
  v13 = (*(*v12 + 88))(v12);
  v14 = v11;
  if (v13 > 8)
  {
    if (v13 == 9)
    {
      Data = MIL::IRTensorValue::GetDataView<signed char>(*(this + 1));
      v39 = MIL::IRTensorValue::GetDataView<unsigned char>(*(this + 3));
      std::vector<signed char>::vector[abi:ne200100](&__p, v5);
      v40 = __p;
      if (v47 != __p)
      {
        v41 = 0;
        v42 = 0;
        do
        {
          if (v14)
          {
            v43 = 0;
            v44 = 0;
            do
            {
              v44 += ((*(v39 + ((v41 + v43) >> 3)) >> ((v41 + v43) & 7)) & 1) << v43;
              ++v43;
            }

            while (v14 != v43);
          }

          else
          {
            v44 = 0;
          }

          v40[v42++] = *(Data + v44);
          v40 = __p;
          v41 += v14;
        }

        while (v42 < v47 - __p);
      }

      MIL::IRTensorValueType::MakeInt8Value();
    }

    if (v13 == 14)
    {
      v23 = MIL::IRTensorValue::GetDataView<unsigned char>(*(this + 1));
      v24 = MIL::IRTensorValue::GetDataView<unsigned char>(*(this + 3));
      std::vector<unsigned char>::vector[abi:ne200100](&__p, v5);
      v25 = __p;
      if (v47 != __p)
      {
        v26 = 0;
        v27 = 0;
        do
        {
          if (v14)
          {
            v28 = 0;
            v29 = 0;
            do
            {
              v29 += ((*(v24 + ((v26 + v28) >> 3)) >> ((v26 + v28) & 7)) & 1) << v28;
              ++v28;
            }

            while (v14 != v28);
          }

          else
          {
            v29 = 0;
          }

          v25[v27++] = *(v23 + v29);
          v25 = __p;
          v26 += v14;
        }

        while (v27 < v47 - __p);
      }

      MIL::IRTensorValueType::MakeUInt8Value();
    }
  }

  else
  {
    if (v13 == 4)
    {
      v30 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(*(this + 1));
      v31 = MIL::IRTensorValue::GetDataView<unsigned char>(*(this + 3));
      std::vector<MIL::Fp16>::vector[abi:ne200100](&__p, v5);
      v32 = __p;
      if (v47 != __p)
      {
        v33 = 0;
        v34 = 0;
        v35 = (v47 - __p) >> 1;
        if (v35 <= 1)
        {
          v35 = 1;
        }

        do
        {
          if (v14)
          {
            v36 = 0;
            v37 = 0;
            do
            {
              v37 += ((*(v31 + ((v33 + v36) >> 3)) >> ((v33 + v36) & 7)) & 1) << v36;
              ++v36;
            }

            while (v14 != v36);
          }

          else
          {
            v37 = 0;
          }

          v32[v34++] = *(v30 + 2 * v37);
          v33 += v14;
        }

        while (v34 != v35);
      }

      MIL::IRTensorValueType::MakeFloat16Value();
    }

    if (v13 == 5)
    {
      v15 = MIL::IRTensorValue::GetDataView<float>(*(this + 1));
      v16 = MIL::IRTensorValue::GetDataView<unsigned char>(*(this + 3));
      std::vector<float>::vector[abi:ne200100](&__p, v5);
      v17 = __p;
      if (v47 != __p)
      {
        v18 = 0;
        v19 = 0;
        v20 = (v47 - __p) >> 2;
        if (v20 <= 1)
        {
          v20 = 1;
        }

        do
        {
          if (v14)
          {
            v21 = 0;
            v22 = 0;
            do
            {
              v22 += ((*(v16 + ((v18 + v21) >> 3)) >> ((v18 + v21) & 7)) & 1) << v21;
              ++v21;
            }

            while (v14 != v21);
          }

          else
          {
            v22 = 0;
          }

          v17[v19++] = *(v15 + 4 * v22);
          v18 += v14;
        }

        while (v19 != v20);
      }

      MIL::IRTensorValueType::MakeFloat32Value();
    }
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Invalid dtype for lookupTable");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_2182154A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  __cxa_free_exception(v15);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::ConstExprs::LutToDense::~LutToDense(MIL::Operators::Common::ios16::ConstExprs::LutToDense *this)
{
  v2 = *(this + 1);
  *(this + 1) = 0;
  if (v2)
  {
    MIL::Operators::Common::ios16::ConstExprs::LutToDense::Impl::~Impl(v2);
    MEMORY[0x21CEAFEA0]();
  }

  MIL::AbstractConstExpr::~AbstractConstExpr(this);
}

{
  MIL::Operators::Common::ios16::ConstExprs::LutToDense::~LutToDense(this);

  JUMPOUT(0x21CEAFEA0);
}

void sub_218215730(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
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

void MIL::Operators::Common::ios16::ConstExprs::LutToDense::ComputeOutput(MIL::Operators::Common::ios16::ConstExprs::LutToDense *this, uint64_t a2)
{
  if (!a2)
  {
    v2 = *(this + 1);

    MIL::Operators::Common::ios16::ConstExprs::LutToDense::Impl::ComputeOutput(v2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "LutToDense has a single output.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void MIL::Operators::Common::ios16::ConstExprs::LutToDense::Impl::~Impl(MIL::Operators::Common::ios16::ConstExprs::LutToDense::Impl *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

uint64_t MIL::Operators::Common::ios16::ConstExprs::LutToDense::Impl::Impl(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = a2;
  *(a1 + 8) = *a3;
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a1 + 24) = *a4;
  *a4 = 0;
  *(a4 + 8) = 0;
  MIL::Operators::Common::ios16::ConstExprs::LutToDense::Impl::ValidateArgsAndTypeConstraints(a1);
  return a1;
}

void sub_218215874(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 32);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(v1 + 16);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios16::ConstExprs::SparseToDense::Impl::ValidateArgsAndTypeConstraints(MIL::Operators::Common::ios16::ConstExprs::SparseToDense::Impl *this)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, "Constexpr-SparseToDense");
  v2 = (*(**(this + 3) + 32))(*(this + 3));
  v3 = (*(*v2 + 88))(v2);
  v4 = (*(**(this + 1) + 32))(*(this + 1));
  std::string::basic_string[abi:ne200100]<0>(&v37, "nonZeroData");
  MIL::Operators::Common::Shared::ConstExprs::AssertIsVector(v4, &v37);
  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  if (v3 == 14)
  {
    v5 = (*(**(this + 3) + 32))(*(this + 3));
    std::string::basic_string[abi:ne200100]<0>(&v37, "mask if packed");
    MIL::Operators::Common::Shared::ConstExprs::AssertIsVector(v5, &v37);
    if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v37.__r_.__value_.__l.__data_);
    }
  }

  v6 = (*(**(this + 1) + 32))(*(this + 1));
  MIL::Operators::Common::Shared::ConstExprs::AssertExpectedOutputDType(v6, *this);
  v7 = *this;
  std::string::basic_string[abi:ne200100]<0>(&v37, "output");
  MIL::Operators::Common::Shared::ConstExprs::AssertIsShapeConstant(v7, &v37);
  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  if (v3 == 14)
  {
    v8 = (*(**this + 16))();
    v9 = (*(**(this + 3) + 32))(*(this + 3));
    v10 = (*(*v9 + 16))(v9);
    if (v10 != vcvtpd_u64_f64(vcvtd_n_f64_u64(v8, 3uLL)))
    {
      std::operator+<char>();
      v11 = std::string::append(&v32, ", mismatch in mask size and the shape of output IRTensorValueType. Size of mask (=");
      v12 = *&v11->__r_.__value_.__l.__data_;
      v33.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
      *&v33.__r_.__value_.__l.__data_ = v12;
      v11->__r_.__value_.__l.__size_ = 0;
      v11->__r_.__value_.__r.__words[2] = 0;
      v11->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v31, v10);
      if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v13 = &v31;
      }

      else
      {
        v13 = v31.__r_.__value_.__r.__words[0];
      }

      if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v31.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v31.__r_.__value_.__l.__size_;
      }

      v15 = std::string::append(&v33, v13, size);
      v16 = *&v15->__r_.__value_.__l.__data_;
      v34.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
      *&v34.__r_.__value_.__l.__data_ = v16;
      v15->__r_.__value_.__l.__size_ = 0;
      v15->__r_.__value_.__r.__words[2] = 0;
      v15->__r_.__value_.__r.__words[0] = 0;
      v17 = std::string::append(&v34, ") and the size of IRTensorValueType (=");
      v18 = *&v17->__r_.__value_.__l.__data_;
      v35.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
      *&v35.__r_.__value_.__l.__data_ = v18;
      v17->__r_.__value_.__l.__size_ = 0;
      v17->__r_.__value_.__r.__words[2] = 0;
      v17->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v30, v8);
      if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v19 = &v30;
      }

      else
      {
        v19 = v30.__r_.__value_.__r.__words[0];
      }

      if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v20 = HIBYTE(v30.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v20 = v30.__r_.__value_.__l.__size_;
      }

      v21 = std::string::append(&v35, v19, v20);
      v22 = *&v21->__r_.__value_.__l.__data_;
      v36.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
      *&v36.__r_.__value_.__l.__data_ = v22;
      v21->__r_.__value_.__l.__size_ = 0;
      v21->__r_.__value_.__r.__words[2] = 0;
      v21->__r_.__value_.__r.__words[0] = 0;
      v23 = std::string::append(&v36, ") should follow the equation: maskSize == ceil(outputSize / 8)");
      v24 = *&v23->__r_.__value_.__l.__data_;
      v37.__r_.__value_.__r.__words[2] = v23->__r_.__value_.__r.__words[2];
      *&v37.__r_.__value_.__l.__data_ = v24;
      v23->__r_.__value_.__l.__size_ = 0;
      v23->__r_.__value_.__r.__words[2] = 0;
      v23->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v36.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v30.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v35.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v34.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v31.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v33.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, &v37);
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  else if (v3 == 21)
  {
    v26 = *this;
    v27 = (*(**(this + 3) + 32))(*(this + 3));
    std::string::basic_string[abi:ne200100]<0>(&v37, "output");
    std::string::basic_string[abi:ne200100]<0>(&v36, "mask");
    MIL::Operators::Common::Shared::ConstExprs::AssertConstantAndSameShape(v26, v27, &v37);
    if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v36.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v37.__r_.__value_.__l.__data_);
    }
  }

  if (v29 < 0)
  {
    operator delete(__p);
  }
}

void sub_218215D48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
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

void MIL::Operators::Common::ios16::ConstExprs::SparseToDense::Impl::ComputeOutput(MIL::Operators::Common::ios16::ConstExprs::SparseToDense::Impl *this)
{
  v2 = (*(**this + 96))(*this);
  v97 = 0;
  v98 = 0;
  v96 = 0;
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&v96, *v2, v2[1], (v2[1] - *v2) >> 3);
  v3 = v96;
  if (v97 == v96)
  {
    v5 = 1;
  }

  else
  {
    v4 = 0;
    v5 = 1;
    do
    {
      v6 = MIL::IRDimension::AsConstant(v3[v4]);
      v5 *= (*(*v6 + 48))(v6);
      ++v4;
      v3 = v96;
    }

    while (v4 < (v97 - v96) >> 3);
  }

  v7 = (*(**(this + 1) + 32))(*(this + 1));
  v8 = (*(*v7 + 88))(v7);
  if (v8 > 12)
  {
    switch(v8)
    {
      case 13:
        v62 = MIL::IRTensorValue::GetDataView<MIL::Int4>(*(this + 1));
        v64 = v63;
        v66 = *(this + 3);
        v65 = *(this + 4);
        if (v65)
        {
          atomic_fetch_add_explicit((v65 + 8), 1uLL, memory_order_relaxed);
        }

        v67 = (*(*v66 + 32))(v66);
        v68 = (*(*v67 + 88))(v67);
        if (v68 == 21)
        {
          v83 = MIL::IRTensorValue::GetDataView<MIL::UInt1>(v66);
          MIL::Operators::Common::Shared::ConstExprs::EvaluateBitMask<MIL::Int4>(v62, v64, v83, v84, &v92);
        }

        else
        {
          if (v68 != 14)
          {
            exception = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(exception, "Invalid dtype for mask");
            __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
          }

          Data = MIL::IRTensorValue::GetDataView<unsigned char>(v66);
          v100 = v62;
          v101 = v64;
          std::vector<MIL::Int4>::vector[abi:ne200100](&v92, v5);
          if (v93 != v92)
          {
            v70 = 0;
            v71 = 0;
            do
            {
              if ((*(Data + (v71 >> 3)) >> (v71 & 7)))
              {
                v72 = MIL::Util::Span<MIL::Int4 const,18446744073709551615ul>::ValueAt(&v100, v70++);
                *(v92 + v71) = v72;
              }

              else
              {
                MIL::Int4::Int4(&v99, 0);
                *(v92 + v71) = v99;
              }

              ++v71;
            }

            while (v71 < v93 - v92);
          }
        }

        MIL::PackSubByteVec(&v92, &__p);
        MIL::IRTensorValueType::MakeInt4Value();
      case 14:
        v41 = MIL::IRTensorValue::GetDataView<unsigned char>(*(this + 1));
        v43 = *(this + 3);
        v42 = *(this + 4);
        if (v42)
        {
          atomic_fetch_add_explicit((v42 + 8), 1uLL, memory_order_relaxed);
        }

        v44 = (*(*v43 + 32))(v43);
        v45 = (*(*v44 + 88))(v44);
        if (v45 == 21)
        {
          v75 = MIL::IRTensorValue::GetDataView<MIL::UInt1>(v43);
          MIL::Operators::Common::Shared::ConstExprs::EvaluateBitMask<unsigned char>(v41, v75, v76, &__p);
        }

        else
        {
          if (v45 != 14)
          {
            v89 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v89, "Invalid dtype for mask");
            __cxa_throw(v89, MEMORY[0x277D82760], MEMORY[0x277D82600]);
          }

          v46 = MIL::IRTensorValue::GetDataView<unsigned char>(v43);
          std::vector<unsigned char>::vector[abi:ne200100](&__p, v5);
          v47 = __p;
          if (v95 != __p)
          {
            v48 = 0;
            v49 = 0;
            do
            {
              if ((*(v46 + (v49 >> 3)) >> (v49 & 7)))
              {
                v50 = *(v41 + v48++);
              }

              else
              {
                v50 = 0;
              }

              v47[v49++] = v50;
              v47 = __p;
            }

            while (v49 < v95 - __p);
          }
        }

        MIL::IRTensorValueType::MakeUInt8Value();
      case 20:
        v19 = MIL::IRTensorValue::GetDataView<MIL::UInt4>(*(this + 1));
        v21 = v20;
        v23 = *(this + 3);
        v22 = *(this + 4);
        if (v22)
        {
          atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
        }

        v24 = (*(*v23 + 32))(v23);
        v25 = (*(*v24 + 88))(v24);
        if (v25 == 21)
        {
          v79 = MIL::IRTensorValue::GetDataView<MIL::UInt1>(v23);
          MIL::Operators::Common::Shared::ConstExprs::EvaluateBitMask<MIL::UInt4>(v19, v21, v79, v80, &v92);
        }

        else
        {
          if (v25 != 14)
          {
            v87 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v87, "Invalid dtype for mask");
            __cxa_throw(v87, MEMORY[0x277D82760], MEMORY[0x277D82600]);
          }

          v26 = MIL::IRTensorValue::GetDataView<unsigned char>(v23);
          v100 = v19;
          v101 = v21;
          std::vector<MIL::UInt4>::vector[abi:ne200100](&v92, v5);
          if (v93 != v92)
          {
            v27 = 0;
            v28 = 0;
            do
            {
              if ((*(v26 + (v28 >> 3)) >> (v28 & 7)))
              {
                v29 = MIL::Util::Span<MIL::UInt4 const,18446744073709551615ul>::ValueAt(&v100, v27++);
                *(v92 + v28) = v29;
              }

              else
              {
                MIL::UInt4::UInt4(&v99, 0);
                *(v92 + v28) = v99;
              }

              ++v28;
            }

            while (v28 < v93 - v92);
          }
        }

        MIL::PackSubByteVec(&v92, &__p);
        MIL::IRTensorValueType::MakeUInt4Value();
    }
  }

  else
  {
    switch(v8)
    {
      case 4:
        v51 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(*(this + 1));
        v53 = *(this + 3);
        v52 = *(this + 4);
        if (v52)
        {
          atomic_fetch_add_explicit((v52 + 8), 1uLL, memory_order_relaxed);
        }

        v54 = (*(*v53 + 32))(v53);
        v55 = (*(*v54 + 88))(v54);
        if (v55 == 21)
        {
          v81 = MIL::IRTensorValue::GetDataView<MIL::UInt1>(v53);
          MIL::Operators::Common::Shared::ConstExprs::EvaluateBitMask<MIL::Fp16>(v51, v81, v82, &__p);
        }

        else
        {
          if (v55 != 14)
          {
            v90 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v90, "Invalid dtype for mask");
            __cxa_throw(v90, MEMORY[0x277D82760], MEMORY[0x277D82600]);
          }

          v56 = MIL::IRTensorValue::GetDataView<unsigned char>(v53);
          std::vector<MIL::Fp16>::vector[abi:ne200100](&__p, v5);
          v57 = __p;
          if (v95 != __p)
          {
            v58 = 0;
            v59 = 0;
            v60 = (v95 - __p) >> 1;
            if (v60 <= 1)
            {
              v60 = 1;
            }

            do
            {
              if ((*(v56 + (v58 >> 3)) >> (v58 & 7)))
              {
                v61 = *(v51 + 2 * v59++);
              }

              else
              {
                v61 = 0;
              }

              v57[v58++] = v61;
            }

            while (v60 != v58);
          }
        }

        MIL::IRTensorValueType::MakeFloat16Value();
      case 5:
        v30 = MIL::IRTensorValue::GetDataView<float>(*(this + 1));
        v32 = *(this + 3);
        v31 = *(this + 4);
        if (v31)
        {
          atomic_fetch_add_explicit((v31 + 8), 1uLL, memory_order_relaxed);
        }

        v33 = (*(*v32 + 32))(v32);
        v34 = (*(*v33 + 88))(v33);
        if (v34 == 21)
        {
          v73 = MIL::IRTensorValue::GetDataView<MIL::UInt1>(v32);
          MIL::Operators::Common::Shared::ConstExprs::EvaluateBitMask<float>(v30, v73, v74, &__p);
        }

        else
        {
          if (v34 != 14)
          {
            v88 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v88, "Invalid dtype for mask");
            __cxa_throw(v88, MEMORY[0x277D82760], MEMORY[0x277D82600]);
          }

          v35 = MIL::IRTensorValue::GetDataView<unsigned char>(v32);
          std::vector<float>::vector[abi:ne200100](&__p, v5);
          v36 = __p;
          if (v95 != __p)
          {
            v37 = 0;
            v38 = 0;
            v39 = (v95 - __p) >> 2;
            if (v39 <= 1)
            {
              v39 = 1;
            }

            do
            {
              if ((*(v35 + (v38 >> 3)) >> (v38 & 7)))
              {
                v40 = *(v30 + 4 * v37++);
              }

              else
              {
                v40 = 0;
              }

              v36[v38++] = v40;
            }

            while (v39 != v38);
          }
        }

        MIL::IRTensorValueType::MakeFloat32Value();
      case 9:
        v9 = MIL::IRTensorValue::GetDataView<signed char>(*(this + 1));
        v11 = *(this + 3);
        v10 = *(this + 4);
        if (v10)
        {
          atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
        }

        v12 = (*(*v11 + 32))(v11);
        v13 = (*(*v12 + 88))(v12);
        if (v13 == 21)
        {
          v77 = MIL::IRTensorValue::GetDataView<MIL::UInt1>(v11);
          MIL::Operators::Common::Shared::ConstExprs::EvaluateBitMask<signed char>(v9, v77, v78, &__p);
        }

        else
        {
          if (v13 != 14)
          {
            v86 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v86, "Invalid dtype for mask");
            __cxa_throw(v86, MEMORY[0x277D82760], MEMORY[0x277D82600]);
          }

          v14 = MIL::IRTensorValue::GetDataView<unsigned char>(v11);
          std::vector<signed char>::vector[abi:ne200100](&__p, v5);
          v15 = __p;
          if (v95 != __p)
          {
            v16 = 0;
            v17 = 0;
            do
            {
              if ((*(v14 + (v17 >> 3)) >> (v17 & 7)))
              {
                v18 = *(v9 + v16++);
              }

              else
              {
                v18 = 0;
              }

              v15[v17++] = v18;
              v15 = __p;
            }

            while (v17 < v95 - __p);
          }
        }

        MIL::IRTensorValueType::MakeInt8Value();
    }
  }

  v85 = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(v85, "Invalid dtype for argument nonZeroData");
  __cxa_throw(v85, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_2182168E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  __cxa_free_exception(v16);
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::ConstExprs::SparseToDense::~SparseToDense(MIL::Operators::Common::ios16::ConstExprs::SparseToDense *this)
{
  v2 = *(this + 1);
  *(this + 1) = 0;
  if (v2)
  {
    MIL::Operators::Common::ios16::ConstExprs::LutToDense::Impl::~Impl(v2);
    MEMORY[0x21CEAFEA0]();
  }

  MIL::AbstractConstExpr::~AbstractConstExpr(this);
}

{
  MIL::Operators::Common::ios16::ConstExprs::SparseToDense::~SparseToDense(this);

  JUMPOUT(0x21CEAFEA0);
}

void sub_218216BA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
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

void sub_218216C68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MIL::Proto::ParseValue(a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios16::ConstExprs::SparseToDense::ComputeOutput(MIL::Operators::Common::ios16::ConstExprs::SparseToDense::Impl **this, uint64_t a2)
{
  if (!a2)
  {
    MIL::Operators::Common::ios16::ConstExprs::SparseToDense::Impl::ComputeOutput(this[1]);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "SparseToDense has a single output.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

uint64_t MIL::Operators::Common::Shared::ConstExprs::EvaluateBitMask<MIL::UInt4>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v11[0] = a1;
  v11[1] = a2;
  v10[0] = a3;
  v10[1] = a4;
  result = std::vector<MIL::UInt4>::vector[abi:ne200100](a5, a4);
  if (a5[1] != *a5)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = MIL::Util::Span<MIL::UInt1 const,18446744073709551615ul>::ValueAt(v10, v8);
      if (MIL::UInt1::GetInt(&v9))
      {
        result = MIL::Util::Span<MIL::UInt4 const,18446744073709551615ul>::ValueAt(v11, v7++);
        *(*a5 + v8) = result;
      }

      else
      {
        result = MIL::UInt4::UInt4(&v9, 0);
        *(*a5 + v8) = v9;
      }

      ++v8;
    }

    while (v8 < a5[1] - *a5);
  }

  return result;
}

void sub_218216E30(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::Operators::Common::Shared::ConstExprs::EvaluateBitMask<MIL::Int4>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v11[0] = a1;
  v11[1] = a2;
  v10[0] = a3;
  v10[1] = a4;
  result = std::vector<MIL::Int4>::vector[abi:ne200100](a5, a4);
  if (a5[1] != *a5)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = MIL::Util::Span<MIL::UInt1 const,18446744073709551615ul>::ValueAt(v10, v8);
      if (MIL::UInt1::GetInt(&v9))
      {
        result = MIL::Util::Span<MIL::Int4 const,18446744073709551615ul>::ValueAt(v11, v7++);
        *(*a5 + v8) = result;
      }

      else
      {
        result = MIL::Int4::Int4(&v9, 0);
        *(*a5 + v8) = v9;
      }

      ++v8;
    }

    while (v8 < a5[1] - *a5);
  }

  return result;
}

void sub_218216F10(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *MIL::Operators::Common::Shared::ConstExprs::EvaluateBitMask<unsigned char>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v11[0] = a2;
  v11[1] = a3;
  result = std::vector<unsigned char>::vector[abi:ne200100](a4, a3);
  if (a4[1] != *a4)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v10 = MIL::Util::Span<MIL::UInt1 const,18446744073709551615ul>::ValueAt(v11, v7);
      result = MIL::UInt1::GetInt(&v10);
      if (result)
      {
        v9 = *(a1 + v8++);
      }

      else
      {
        v9 = 0;
      }

      *(*a4 + v7++) = v9;
    }

    while (v7 < a4[1] - *a4);
  }

  return result;
}

void sub_218216FD4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *MIL::Operators::Common::Shared::ConstExprs::EvaluateBitMask<signed char>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v11[0] = a2;
  v11[1] = a3;
  result = std::vector<signed char>::vector[abi:ne200100](a4, a3);
  if (a4[1] != *a4)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v10 = MIL::Util::Span<MIL::UInt1 const,18446744073709551615ul>::ValueAt(v11, v7);
      result = MIL::UInt1::GetInt(&v10);
      if (result)
      {
        v9 = *(a1 + v8++);
      }

      else
      {
        v9 = 0;
      }

      *(*a4 + v7++) = v9;
    }

    while (v7 < a4[1] - *a4);
  }

  return result;
}

void sub_218217090(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *MIL::Operators::Common::Shared::ConstExprs::EvaluateBitMask<MIL::Fp16>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v12[0] = a2;
  v12[1] = a3;
  result = std::vector<MIL::Fp16>::vector[abi:ne200100](a4, a3);
  if (a4[1] != *a4)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v11 = MIL::Util::Span<MIL::UInt1 const,18446744073709551615ul>::ValueAt(v12, v8);
      result = MIL::UInt1::GetInt(&v11);
      if (result)
      {
        v9 = *(a1 + 2 * v7++);
        v10 = *a4;
        *(*a4 + 2 * v8) = v9;
      }

      else
      {
        v10 = *a4;
        *(*a4 + 2 * v8) = 0;
      }

      ++v8;
    }

    while (v8 < (a4[1] - v10) >> 1);
  }

  return result;
}

void sub_218217150(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *MIL::Operators::Common::Shared::ConstExprs::EvaluateBitMask<float>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v13[0] = a2;
  v13[1] = a3;
  result = std::vector<float>::vector[abi:ne200100](a4, a3);
  if (a4[1] != *a4)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v12 = MIL::Util::Span<MIL::UInt1 const,18446744073709551615ul>::ValueAt(v13, v7);
      result = MIL::UInt1::GetInt(&v12);
      if (result)
      {
        v9 = *(a1 + 4 * v8++);
      }

      else
      {
        v9 = 0;
      }

      v10 = *a4;
      v11 = a4[1];
      *(*a4 + 4 * v7++) = v9;
    }

    while (v7 < (v11 - v10) >> 2);
  }

  return result;
}

void sub_218217208(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::Operators::Common::ios16::ConstExprs::SparseToDense::Impl::Impl(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = a2;
  *(a1 + 8) = *a3;
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a1 + 24) = *a4;
  *a4 = 0;
  *(a4 + 8) = 0;
  MIL::Operators::Common::ios16::ConstExprs::SparseToDense::Impl::ValidateArgsAndTypeConstraints(a1);
  return a1;
}

void sub_218217268(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 32);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(v1 + 16);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios16::CustomValueTypeInference::ValueTypeInferenceConv(MIL::IRConstantDimension **a1, __int128 *a2, void *a3)
{
  v3 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceConv(a1, &v3, a3);
}

void sub_2182172E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios16::CustomValueTypeInference::ValueTypeInferenceConvTranspose(MIL::IRConstantDimension **a1, __int128 *a2, void *a3)
{
  v3 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceConvTranspose(a1, &v3, a3);
}

void sub_21821733C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios16::Conv::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2182195E4(_Unwind_Exception *a1)
{
  v4 = *(v2 - 184);
  *(v2 - 184) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x558], 0);
  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 216), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x478], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::ConvTranspose::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_21821C550(_Unwind_Exception *a1)
{
  v4 = *(v2 - 184);
  *(v2 - 184) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x568], 0);
  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 216), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x488], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::CustomValueTypeInference::ValueTypeInferenceElementwiseBinaryBoolOutput(MIL::IRUnknownDimension **a1, void *a2, void *a3)
{
  v3 = a2[1];
  v4[0] = *a2;
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceElementwiseBinaryBoolOutput(a1, v4, a3);
}

void sub_21821D190(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios16::CustomValueInference::ValueInferenceAdd(uint64_t a1, void *a2, void *a3)
{
  v3 = a2[1];
  v4[0] = *a2;
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios15::CustomValueInference::ValueInferenceAdd(a1, v4, a3);
}

void sub_21821D1F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios16::CustomValueInference::ValueInferenceEqual(uint64_t a1, void *a2, void *a3)
{
  v3 = a2[1];
  v4[0] = *a2;
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios15::CustomValueInference::ValueInferenceEqual(a1, v4, a3);
}

void sub_21821D260(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios16::CustomValueInference::ValueInferenceFloorDiv(uint64_t a1, void *a2, void *a3)
{
  v3 = a2[1];
  v4[0] = *a2;
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios15::CustomValueInference::ValueInferenceFloorDiv(a1, v4, a3);
}

void sub_21821D2C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios16::CustomValueInference::ValueInferenceGreater(uint64_t a1, void *a2, void *a3)
{
  v3 = a2[1];
  v4[0] = *a2;
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios15::CustomValueInference::ValueInferenceGreater(a1, v4, a3);
}

void sub_21821D330(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios16::CustomValueInference::ValueInferenceGreaterEqual(uint64_t a1, void *a2, void *a3)
{
  v3 = a2[1];
  v4[0] = *a2;
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios15::CustomValueInference::ValueInferenceGreaterEqual(a1, v4, a3);
}

void sub_21821D398(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios16::CustomValueInference::ValueInferenceLess(uint64_t a1, void *a2, void *a3)
{
  v3 = a2[1];
  v4[0] = *a2;
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios15::CustomValueInference::ValueInferenceLess(a1, v4, a3);
}

void sub_21821D400(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios16::CustomValueInference::ValueInferenceLessEqual(uint64_t a1, void *a2, void *a3)
{
  v3 = a2[1];
  v4[0] = *a2;
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios15::CustomValueInference::ValueInferenceLessEqual(a1, v4, a3);
}

void sub_21821D468(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios16::CustomValueInference::ValueInferenceLogicalAnd(uint64_t a1, void *a2, void *a3)
{
  v3 = a2[1];
  v4[0] = *a2;
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios15::CustomValueInference::ValueInferenceLogicalAnd(a1, v4, a3);
}

void sub_21821D4D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios16::CustomValueInference::ValueInferenceLogicalOr(uint64_t a1, void *a2, void *a3)
{
  v3 = a2[1];
  v4[0] = *a2;
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios15::CustomValueInference::ValueInferenceLogicalOr(a1, v4, a3);
}

void sub_21821D538(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios16::CustomValueInference::ValueInferenceLogicalXor(uint64_t a1, void *a2, void *a3)
{
  v3 = a2[1];
  v4[0] = *a2;
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios15::CustomValueInference::ValueInferenceLogicalXor(a1, v4, a3);
}

void sub_21821D5A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios16::CustomValueInference::ValueInferenceMaximum(uint64_t a1, void *a2, void *a3)
{
  v3 = a2[1];
  v4[0] = *a2;
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios15::CustomValueInference::ValueInferenceMaximum(a1, v4, a3);
}

void sub_21821D608(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios16::CustomValueInference::ValueInferenceMinimum(uint64_t a1, void *a2, void *a3)
{
  v3 = a2[1];
  v4[0] = *a2;
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios15::CustomValueInference::ValueInferenceMinimum(a1, v4, a3);
}

void sub_21821D670(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios16::CustomValueInference::ValueInferenceMod(uint64_t a1, void *a2, void *a3)
{
  v3 = a2[1];
  v4[0] = *a2;
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios15::CustomValueInference::ValueInferenceMod(a1, v4, a3);
}

void sub_21821D6D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios16::CustomValueInference::ValueInferenceMul(uint64_t a1, void *a2, void *a3)
{
  v3 = a2[1];
  v4[0] = *a2;
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios15::CustomValueInference::ValueInferenceMul(a1, v4, a3);
}

void sub_21821D740(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios16::CustomValueInference::ValueInferenceNotEqual(uint64_t a1, void *a2, void *a3)
{
  v3 = a2[1];
  v4[0] = *a2;
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios15::CustomValueInference::ValueInferenceNotEqual(a1, v4, a3);
}

void sub_21821D7A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios16::CustomValueInference::ValueInferencePow(uint64_t a1, void *a2, void *a3)
{
  v3 = a2[1];
  v4[0] = *a2;
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios15::CustomValueInference::ValueInferencePow(a1, v4, a3);
}

void sub_21821D810(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios16::CustomValueInference::ValueInferenceRealDiv(uint64_t a1, void *a2, void *a3)
{
  v3 = a2[1];
  v4[0] = *a2;
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios15::CustomValueInference::ValueInferenceRealDiv(a1, v4, a3);
}

void sub_21821D878(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios16::CustomValueInference::ValueInferenceSub(uint64_t a1, void *a2, void *a3)
{
  v3 = a2[1];
  v4[0] = *a2;
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios15::CustomValueInference::ValueInferenceSub(a1, v4, a3);
}

void sub_21821D8E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios16::ElementwiseBinary::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_21821E860(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v67 = a59;
  a59 = 0;
  if (v67)
  {
    (*(*v67 + 8))(v67);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a56, 0);
  v68 = *v64;
  *v64 = 0;
  if (v68)
  {
    (*(*v68 + 8))(v68);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v65 - 80), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a64, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::Add::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_21821FDDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v67 = a59;
  a59 = 0;
  if (v67)
  {
    (*(*v67 + 8))(v67);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a56, 0);
  v68 = *v64;
  *v64 = 0;
  if (v68)
  {
    (*(*v68 + 8))(v68);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v65 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a64, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::ElementwiseBinaryBoolOutput::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_21822110C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, void *a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59)
{
  v62 = *(v60 - 80);
  *(v60 - 80) = 0;
  if (v62)
  {
    (*(*v62 + 8))(v62);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a51, 0);
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

void MIL::Operators::Common::ios16::ElementwiseBinaryLogical::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2182221D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53)
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

void MIL::Operators::Common::ios16::LogicalAnd::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2182232A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53)
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

void MIL::Operators::Common::ios16::LogicalOr::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_21822438C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53)
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

void MIL::Operators::Common::ios16::LogicalXor::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_218225470(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53)
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

void MIL::Operators::Common::ios16::Equal::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2182266A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, void *a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59)
{
  v62 = *(v60 - 64);
  *(v60 - 64) = 0;
  if (v62)
  {
    (*(*v62 + 8))(v62);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a51, 0);
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

void MIL::Operators::Common::ios16::Greater::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_218227920(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, void *a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59)
{
  v62 = *(v60 - 64);
  *(v60 - 64) = 0;
  if (v62)
  {
    (*(*v62 + 8))(v62);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a51, 0);
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

void MIL::Operators::Common::ios16::GreaterEqual::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_218228B9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, void *a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59)
{
  v62 = *(v60 - 64);
  *(v60 - 64) = 0;
  if (v62)
  {
    (*(*v62 + 8))(v62);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a51, 0);
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

void MIL::Operators::Common::ios16::Less::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_218229E18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, void *a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59)
{
  v62 = *(v60 - 64);
  *(v60 - 64) = 0;
  if (v62)
  {
    (*(*v62 + 8))(v62);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a51, 0);
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

void MIL::Operators::Common::ios16::LessEqual::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_21822B094(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, void *a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59)
{
  v62 = *(v60 - 64);
  *(v60 - 64) = 0;
  if (v62)
  {
    (*(*v62 + 8))(v62);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a51, 0);
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

void MIL::Operators::Common::ios16::NotEqual::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_21822C310(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, void *a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59)
{
  v62 = *(v60 - 64);
  *(v60 - 64) = 0;
  if (v62)
  {
    (*(*v62 + 8))(v62);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a51, 0);
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

void MIL::Operators::Common::ios16::FloorDiv::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_21822D794(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v67 = a59;
  a59 = 0;
  if (v67)
  {
    (*(*v67 + 8))(v67);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a56, 0);
  v68 = *v64;
  *v64 = 0;
  if (v68)
  {
    (*(*v68 + 8))(v68);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v65 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a64, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::Maximum::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_21822ED20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v67 = a59;
  a59 = 0;
  if (v67)
  {
    (*(*v67 + 8))(v67);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a56, 0);
  v68 = *v64;
  *v64 = 0;
  if (v68)
  {
    (*(*v68 + 8))(v68);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v65 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a64, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::Minimum::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2182302AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v67 = a59;
  a59 = 0;
  if (v67)
  {
    (*(*v67 + 8))(v67);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a56, 0);
  v68 = *v64;
  *v64 = 0;
  if (v68)
  {
    (*(*v68 + 8))(v68);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v65 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a64, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::Mod::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_218231838(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v67 = a59;
  a59 = 0;
  if (v67)
  {
    (*(*v67 + 8))(v67);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a56, 0);
  v68 = *v64;
  *v64 = 0;
  if (v68)
  {
    (*(*v68 + 8))(v68);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v65 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a64, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::Mul::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_218232DC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v67 = a59;
  a59 = 0;
  if (v67)
  {
    (*(*v67 + 8))(v67);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a56, 0);
  v68 = *v64;
  *v64 = 0;
  if (v68)
  {
    (*(*v68 + 8))(v68);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v65 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a64, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::Pow::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_218234350(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v67 = a59;
  a59 = 0;
  if (v67)
  {
    (*(*v67 + 8))(v67);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a56, 0);
  v68 = *v64;
  *v64 = 0;
  if (v68)
  {
    (*(*v68 + 8))(v68);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v65 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a64, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::RealDiv::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2182358DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v67 = a59;
  a59 = 0;
  if (v67)
  {
    (*(*v67 + 8))(v67);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a56, 0);
  v68 = *v64;
  *v64 = 0;
  if (v68)
  {
    (*(*v68 + 8))(v68);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v65 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a64, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::Sub::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_218236E68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v67 = a59;
  a59 = 0;
  if (v67)
  {
    (*(*v67 + 8))(v67);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a56, 0);
  v68 = *v64;
  *v64 = 0;
  if (v68)
  {
    (*(*v68 + 8))(v68);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v65 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a64, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::CustomValueTypeInference::ValueTypeInferenceCast(uint64_t a1, void *a2, void *a3)
{
  v3 = a2[1];
  v4[0] = *a2;
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceCast(a1, v4, a3);
}

void sub_21823747C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios16::CustomValueInference::ValueInferenceAbs(uint64_t a1, void *a2, void *a3)
{
  v3 = a2[1];
  v4[0] = *a2;
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios15::CustomValueInference::ValueInferenceAbs(a1, v4, a3);
}

void sub_2182374E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios16::CustomValueInference::ValueInferenceAcos(uint64_t a1, void *a2, void *a3)
{
  v3 = a2[1];
  v4[0] = *a2;
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios15::CustomValueInference::ValueInferenceAcos(a1, v4, a3);
}

void sub_21823754C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios16::CustomValueInference::ValueInferenceAcosh(uint64_t a1, void *a2, void *a3)
{
  v3 = a2[1];
  v4[0] = *a2;
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios15::CustomValueInference::ValueInferenceAcosh(a1, v4, a3);
}

void sub_2182375B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios16::CustomValueInference::ValueInferenceAsin(uint64_t a1, void *a2, void *a3)
{
  v3 = a2[1];
  v4[0] = *a2;
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios15::CustomValueInference::ValueInferenceAsin(a1, v4, a3);
}

void sub_21823761C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios16::CustomValueInference::ValueInferenceAsinh(uint64_t a1, void *a2, void *a3)
{
  v3 = a2[1];
  v4[0] = *a2;
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios15::CustomValueInference::ValueInferenceAsinh(a1, v4, a3);
}

void sub_218237684(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios16::CustomValueInference::ValueInferenceAtan(uint64_t a1, void *a2, void *a3)
{
  v3 = a2[1];
  v4[0] = *a2;
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios15::CustomValueInference::ValueInferenceAtan(a1, v4, a3);
}

void sub_2182376EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios16::CustomValueInference::ValueInferenceAtanh(uint64_t a1, void *a2, void *a3)
{
  v3 = a2[1];
  v4[0] = *a2;
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios15::CustomValueInference::ValueInferenceAtanh(a1, v4, a3);
}

void sub_218237754(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios16::CustomValueInference::ValueInferenceCast(uint64_t a1, void *a2, void *a3)
{
  v3 = a2[1];
  v4[0] = *a2;
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios15::CustomValueInference::ValueInferenceCast(a1, v4, a3);
}

void sub_2182377BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios16::CustomValueInference::ValueInferenceCeil(uint64_t a1, void *a2, void *a3)
{
  v3 = a2[1];
  v4[0] = *a2;
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios15::CustomValueInference::ValueInferenceCeil(a1, v4, a3);
}

void sub_218237824(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios16::CustomValueInference::ValueInferenceClip(uint64_t a1, void *a2, void *a3)
{
  v3 = a2[1];
  v4[0] = *a2;
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios15::CustomValueInference::ValueInferenceClip(a1, v4, a3);
}

void sub_21823788C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios16::CustomValueInference::ValueInferenceCos(uint64_t a1, void *a2, void *a3)
{
  v3 = a2[1];
  v4[0] = *a2;
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios15::CustomValueInference::ValueInferenceCos(a1, v4, a3);
}

void sub_2182378F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios16::CustomValueInference::ValueInferenceCosh(uint64_t a1, void *a2, void *a3)
{
  v3 = a2[1];
  v4[0] = *a2;
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios15::CustomValueInference::ValueInferenceCosh(a1, v4, a3);
}

void sub_21823795C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios16::CustomValueInference::ValueInferenceExp(uint64_t a1, void *a2, void *a3)
{
  v3 = a2[1];
  v4[0] = *a2;
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios15::CustomValueInference::ValueInferenceExp(a1, v4, a3);
}

void sub_2182379C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios16::CustomValueInference::ValueInferenceExp2(uint64_t a1, void *a2, void *a3)
{
  v3 = a2[1];
  v4[0] = *a2;
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios15::CustomValueInference::ValueInferenceExp2(a1, v4, a3);
}

void sub_218237A2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios16::CustomValueInference::ValueInferenceFloor(uint64_t a1, void *a2, void *a3)
{
  v3 = a2[1];
  v4[0] = *a2;
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios15::CustomValueInference::ValueInferenceFloor(a1, v4, a3);
}

void sub_218237A94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios16::CustomValueInference::ValueInferenceInverse(uint64_t a1, uint64_t *a2, void *a3)
{
  v3 = a2[1];
  v4[0] = *a2;
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios15::CustomValueInference::ValueInferenceInverse(a1, v4, a3);
}

void sub_218237AFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios16::CustomValueInference::ValueInferenceLog(uint64_t a1, uint64_t *a2, void *a3)
{
  v3 = a2[1];
  v4[0] = *a2;
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios15::CustomValueInference::ValueInferenceLog(a1, v4, a3);
}

void sub_218237B64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios16::CustomValueInference::ValueInferenceLogicalNot(uint64_t a1, void *a2, void *a3)
{
  v3 = a2[1];
  v4[0] = *a2;
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios15::CustomValueInference::ValueInferenceLogicalNot(a1, v4, a3);
}

void sub_218237BCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios16::CustomValueInference::ValueInferenceRound(uint64_t a1, void *a2, void *a3)
{
  v3 = a2[1];
  v4[0] = *a2;
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios15::CustomValueInference::ValueInferenceRound(a1, v4, a3);
}

void sub_218237C34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios16::CustomValueInference::ValueInferenceRsqrt(uint64_t a1, uint64_t *a2, void *a3)
{
  v3 = a2[1];
  v4[0] = *a2;
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios15::CustomValueInference::ValueInferenceRsqrt(a1, v4, a3);
}

void sub_218237C9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios16::CustomValueInference::ValueInferenceSign(uint64_t a1, void *a2, void *a3)
{
  v3 = a2[1];
  v4[0] = *a2;
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios15::CustomValueInference::ValueInferenceSign(a1, v4, a3);
}

void sub_218237D04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios16::CustomValueInference::ValueInferenceSin(uint64_t a1, void *a2, void *a3)
{
  v3 = a2[1];
  v4[0] = *a2;
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios15::CustomValueInference::ValueInferenceSin(a1, v4, a3);
}

void sub_218237D6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios16::CustomValueInference::ValueInferenceSinh(uint64_t a1, void *a2, void *a3)
{
  v3 = a2[1];
  v4[0] = *a2;
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios15::CustomValueInference::ValueInferenceSinh(a1, v4, a3);
}

void sub_218237DD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios16::CustomValueInference::ValueInferenceSqrt(uint64_t a1, void *a2, void *a3)
{
  v3 = a2[1];
  v4[0] = *a2;
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios15::CustomValueInference::ValueInferenceSqrt(a1, v4, a3);
}

void sub_218237E3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios16::CustomValueInference::ValueInferenceSquare(uint64_t a1, void *a2, void *a3)
{
  v3 = a2[1];
  v4[0] = *a2;
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios15::CustomValueInference::ValueInferenceSquare(a1, v4, a3);
}

void sub_218237EA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios16::CustomValueInference::ValueInferenceTan(uint64_t a1, void *a2, void *a3)
{
  v3 = a2[1];
  v4[0] = *a2;
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios15::CustomValueInference::ValueInferenceTan(a1, v4, a3);
}

void sub_218237F0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios16::CustomValueInference::ValueInferenceTanh(uint64_t a1, void *a2, void *a3)
{
  v3 = a2[1];
  v4[0] = *a2;
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios15::CustomValueInference::ValueInferenceTanh(a1, v4, a3);
}

void sub_218237F74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios16::CustomValueInference::ValueInferenceThreshold(uint64_t a1, uint64_t *a2, void *a3)
{
  v3 = a2[1];
  v4[0] = *a2;
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios15::CustomValueInference::ValueInferenceThreshold(a1, v4, a3);
}

void sub_218237FDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios16::Cast::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_218238FF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, void *a54, uint64_t a55, uint64_t a56, void *a57, uint64_t a58, uint64_t a59, void *a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a57)
  {
    (*(*a57 + 8))(a57);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a60, 0);
  v68 = *v65;
  *v65 = 0;
  if (v68)
  {
    (*(*v68 + 8))(v68);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v66 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a65, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::ElementwiseUnary::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_21823A1AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
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

void MIL::Operators::Common::ios16::Acos::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_21823B254(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  v50 = *(v48 - 104);
  *(v48 - 104) = 0;
  if (v50)
  {
    (*(*v50 + 8))(v50);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v48 - 72), 0);
  v51 = *v47;
  *v47 = 0;
  if (v51)
  {
    (*(*v51 + 8))(v51);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v48 - 80), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a47, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::Acosh::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_21823C30C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  v50 = *(v48 - 104);
  *(v48 - 104) = 0;
  if (v50)
  {
    (*(*v50 + 8))(v50);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v48 - 72), 0);
  v51 = *v47;
  *v47 = 0;
  if (v51)
  {
    (*(*v51 + 8))(v51);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v48 - 80), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a47, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::Asin::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_21823D3C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  v50 = *(v48 - 104);
  *(v48 - 104) = 0;
  if (v50)
  {
    (*(*v50 + 8))(v50);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v48 - 72), 0);
  v51 = *v47;
  *v47 = 0;
  if (v51)
  {
    (*(*v51 + 8))(v51);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v48 - 80), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a47, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::Asinh::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_21823E47C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  v50 = *(v48 - 104);
  *(v48 - 104) = 0;
  if (v50)
  {
    (*(*v50 + 8))(v50);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v48 - 72), 0);
  v51 = *v47;
  *v47 = 0;
  if (v51)
  {
    (*(*v51 + 8))(v51);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v48 - 80), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a47, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::Atan::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_21823F534(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  v50 = *(v48 - 104);
  *(v48 - 104) = 0;
  if (v50)
  {
    (*(*v50 + 8))(v50);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v48 - 72), 0);
  v51 = *v47;
  *v47 = 0;
  if (v51)
  {
    (*(*v51 + 8))(v51);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v48 - 80), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a47, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::Atanh::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2182405EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  v50 = *(v48 - 104);
  *(v48 - 104) = 0;
  if (v50)
  {
    (*(*v50 + 8))(v50);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v48 - 72), 0);
  v51 = *v47;
  *v47 = 0;
  if (v51)
  {
    (*(*v51 + 8))(v51);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v48 - 80), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a47, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::Ceil::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2182416A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  v50 = *(v48 - 104);
  *(v48 - 104) = 0;
  if (v50)
  {
    (*(*v50 + 8))(v50);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v48 - 72), 0);
  v51 = *v47;
  *v47 = 0;
  if (v51)
  {
    (*(*v51 + 8))(v51);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v48 - 80), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a47, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::Clip::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_218242AAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v70 = *(v68 - 104);
  *(v68 - 104) = 0;
  if (v70)
  {
    (*(*v70 + 8))(v70);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v68 - 72), 0);
  v71 = *v67;
  *v67 = 0;
  if (v71)
  {
    (*(*v71 + 8))(v71);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v68 - 80), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a67, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::Cos::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_218243CB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  v50 = *(v48 - 104);
  *(v48 - 104) = 0;
  if (v50)
  {
    (*(*v50 + 8))(v50);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v48 - 72), 0);
  v51 = *v47;
  *v47 = 0;
  if (v51)
  {
    (*(*v51 + 8))(v51);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v48 - 80), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a47, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::Cosh::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_218244D70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  v50 = *(v48 - 104);
  *(v48 - 104) = 0;
  if (v50)
  {
    (*(*v50 + 8))(v50);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v48 - 72), 0);
  v51 = *v47;
  *v47 = 0;
  if (v51)
  {
    (*(*v51 + 8))(v51);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v48 - 80), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a47, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::ElementwiseUnaryWithEpsilon::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_218245FB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57)
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

void MIL::Operators::Common::ios16::Inverse::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2182472E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57)
{
  v60 = *(v58 - 104);
  *(v58 - 104) = 0;
  if (v60)
  {
    (*(*v60 + 8))(v60);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v58 - 72), 0);
  v61 = *v57;
  *v57 = 0;
  if (v61)
  {
    (*(*v61 + 8))(v61);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v58 - 80), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a57, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::Log::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_218248628(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57)
{
  v60 = *(v58 - 104);
  *(v58 - 104) = 0;
  if (v60)
  {
    (*(*v60 + 8))(v60);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v58 - 72), 0);
  v61 = *v57;
  *v57 = 0;
  if (v61)
  {
    (*(*v61 + 8))(v61);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v58 - 80), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a57, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::Rsqrt::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_21824996C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57)
{
  v60 = *(v58 - 104);
  *(v58 - 104) = 0;
  if (v60)
  {
    (*(*v60 + 8))(v60);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v58 - 72), 0);
  v61 = *v57;
  *v57 = 0;
  if (v61)
  {
    (*(*v61 + 8))(v61);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v58 - 80), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a57, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::ElementwiseUnaryWithInt::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_21824AB28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54)
{
  if (a46)
  {
    (*(*a46 + 8))(a46);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a49, 0);
  v57 = *v54;
  *v54 = 0;
  if (v57)
  {
    (*(*v57 + 8))(v57);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v55 - 80), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a54, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::Abs::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_21824BCB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54)
{
  if (a46)
  {
    (*(*a46 + 8))(a46);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a49, 0);
  v57 = *v54;
  *v54 = 0;
  if (v57)
  {
    (*(*v57 + 8))(v57);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v55 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a54, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::Exp2::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_21824CE48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54)
{
  if (a46)
  {
    (*(*a46 + 8))(a46);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a49, 0);
  v57 = *v54;
  *v54 = 0;
  if (v57)
  {
    (*(*v57 + 8))(v57);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v55 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a54, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::Sign::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_21824DFE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54)
{
  if (a46)
  {
    (*(*a46 + 8))(a46);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a49, 0);
  v57 = *v54;
  *v54 = 0;
  if (v57)
  {
    (*(*v57 + 8))(v57);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v55 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a54, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::Square::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_21824F178(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54)
{
  if (a46)
  {
    (*(*a46 + 8))(a46);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a49, 0);
  v57 = *v54;
  *v54 = 0;
  if (v57)
  {
    (*(*v57 + 8))(v57);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v55 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a54, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::Threshold::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2182504CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a56)
  {
    (*(*a56 + 8))(a56);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a59, 0);
  v67 = *v64;
  *v64 = 0;
  if (v67)
  {
    (*(*v67 + 8))(v67);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v65 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a64, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::Exp::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_218251668(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  v50 = *(v48 - 104);
  *(v48 - 104) = 0;
  if (v50)
  {
    (*(*v50 + 8))(v50);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v48 - 72), 0);
  v51 = *v47;
  *v47 = 0;
  if (v51)
  {
    (*(*v51 + 8))(v51);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v48 - 80), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a47, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::Floor::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_218252720(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  v50 = *(v48 - 104);
  *(v48 - 104) = 0;
  if (v50)
  {
    (*(*v50 + 8))(v50);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v48 - 72), 0);
  v51 = *v47;
  *v47 = 0;
  if (v51)
  {
    (*(*v51 + 8))(v51);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v48 - 80), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a47, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::Round::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2182537D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  v50 = *(v48 - 104);
  *(v48 - 104) = 0;
  if (v50)
  {
    (*(*v50 + 8))(v50);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v48 - 72), 0);
  v51 = *v47;
  *v47 = 0;
  if (v51)
  {
    (*(*v51 + 8))(v51);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v48 - 80), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a47, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::Sin::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_218254890(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  v50 = *(v48 - 104);
  *(v48 - 104) = 0;
  if (v50)
  {
    (*(*v50 + 8))(v50);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v48 - 72), 0);
  v51 = *v47;
  *v47 = 0;
  if (v51)
  {
    (*(*v51 + 8))(v51);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v48 - 80), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a47, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::Sinh::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_218255948(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  v50 = *(v48 - 104);
  *(v48 - 104) = 0;
  if (v50)
  {
    (*(*v50 + 8))(v50);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v48 - 72), 0);
  v51 = *v47;
  *v47 = 0;
  if (v51)
  {
    (*(*v51 + 8))(v51);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v48 - 80), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a47, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::Sqrt::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_218256A00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  v50 = *(v48 - 104);
  *(v48 - 104) = 0;
  if (v50)
  {
    (*(*v50 + 8))(v50);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v48 - 72), 0);
  v51 = *v47;
  *v47 = 0;
  if (v51)
  {
    (*(*v51 + 8))(v51);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v48 - 80), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a47, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::Tan::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_218257AB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  v50 = *(v48 - 104);
  *(v48 - 104) = 0;
  if (v50)
  {
    (*(*v50 + 8))(v50);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v48 - 72), 0);
  v51 = *v47;
  *v47 = 0;
  if (v51)
  {
    (*(*v51 + 8))(v51);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v48 - 80), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a47, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::Tanh::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_218258B70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  v50 = *(v48 - 104);
  *(v48 - 104) = 0;
  if (v50)
  {
    (*(*v50 + 8))(v50);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v48 - 72), 0);
  v51 = *v47;
  *v47 = 0;
  if (v51)
  {
    (*(*v51 + 8))(v51);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v48 - 80), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a47, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::LogicalNot::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2182598A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  v48 = *(v46 - 80);
  *(v46 - 80) = 0;
  if (v48)
  {
    (*(*v48 + 8))(v48);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v46 - 72), 0);
  v49 = *v45;
  *v45 = 0;
  if (v49)
  {
    (*(*v49 + 8))(v49);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v46 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a39, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::CustomValidators::ValidateGather(MIL::Operators::Common::ios16::CustomValidators *this@<X0>, MIL::ValidationResult *a2@<X8>)
{
  MIL::Operators::Common::Shared::ValidateBaseGatherWithAxis(this, v23);
  if (!MIL::ValidationResult::IsGood(v23))
  {
    exception = __cxa_allocate_exception(0x48uLL);
    MIL::MILResult::MILResult(v21, v23);
    v21[0].__r_.__value_.__r.__words[0] = &unk_2829E9B70;
    v22 = v24;
    MIL::ValidationError::ValidationError(exception, v21);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "batch_dims");
  IsParameterSet = MIL::IROperation::IsParameterSet(this, __p);
  v6 = IsParameterSet;
  if ((v20 & 0x80000000) == 0)
  {
    if (IsParameterSet)
    {
      goto LABEL_4;
    }

LABEL_13:
    MIL::ValidationResult::ValidationResult(a2);
    goto LABEL_14;
  }

  operator delete(__p[0]);
  if (!v6)
  {
    goto LABEL_13;
  }

LABEL_4:
  std::string::basic_string[abi:ne200100]<0>(__p, "batch_dims");
  ParameterValue = MIL::IROperation::GetParameterValue(this);
  v8 = MIL::IRValue::GetScalar<int>(ParameterValue);
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "indices");
  ParameterType = MIL::IROperation::GetParameterType(this);
  v10 = MIL::IRValueType::AsTensorType(ParameterType);
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  v11 = MIL::IRTensorValueType::Rank(v10);
  if (!(*(*v10 + 104))(v10) || v8 <= v11 && v8 >= -v11)
  {
    goto LABEL_13;
  }

  LocationPtr = MIL::IRObject::GetLocationPtr(this);
  v13 = LocationPtr[1];
  v17 = *LocationPtr;
  v18 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(v15, "'batch_dims' must be within range (-indices_rank - 1, indices_rank] (exclusive)");
  MIL::ValidationResult::ValidationResult(a2, &v17, 315, v15);
  if (v16 < 0)
  {
    operator delete(v15[0]);
  }

  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

LABEL_14:
  MIL::ValidationResult::~ValidationResult(v23);
}

void sub_218259E0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::__shared_weak_count *a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  MIL::ValidationResult::~ValidationResult((v23 - 104));
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::CustomValidators::ValidateGatherNd(MIL::Operators::Common::ios16::CustomValidators *this@<X0>, MIL::ValidationResult *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(v35, "batch_dims");
  IsParameterSet = MIL::IROperation::IsParameterSet(this, v35);
  v6 = IsParameterSet;
  if (v36 < 0)
  {
    operator delete(v35[0]);
    if (!v6)
    {
LABEL_34:
      MIL::ValidationResult::ValidationResult(a2);
      return;
    }
  }

  else if (!IsParameterSet)
  {
    goto LABEL_34;
  }

  std::string::basic_string[abi:ne200100]<0>(v35, "batch_dims");
  ParameterValue = MIL::IROperation::GetParameterValue(this);
  v8 = MIL::IRValue::GetScalar<int>(ParameterValue);
  v9 = v8;
  if (v36 < 0)
  {
    operator delete(v35[0]);
    if ((v9 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

LABEL_18:
    LocationPtr = MIL::IRObject::GetLocationPtr(this);
    v17 = LocationPtr[1];
    v33 = *LocationPtr;
    v34 = v17;
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    MIL::ValidationResult::ValidationResult(a2, &v33, 315, v31);
    if (v32 < 0)
    {
      operator delete(v31[0]);
    }

    v15 = v34;
    if (v34)
    {
      goto LABEL_33;
    }

    return;
  }

  if (v8 < 0)
  {
    goto LABEL_18;
  }

LABEL_7:
  std::string::basic_string[abi:ne200100]<0>(v35, "indices");
  ParameterType = MIL::IROperation::GetParameterType(this);
  v11 = MIL::IRValueType::AsTensorType(ParameterType);
  if (v36 < 0)
  {
    operator delete(v35[0]);
  }

  v12 = MIL::IRTensorValueType::Rank(v11);
  if ((*(*v11 + 104))(v11) && v9 >= v12)
  {
    v13 = MIL::IRObject::GetLocationPtr(this);
    v14 = v13[1];
    v29 = *v13;
    v30 = v14;
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "'batch_dims' must be smaller than indices_rank.");
    MIL::ValidationResult::ValidationResult(a2, &v29, 315, __p);
    if (v28 < 0)
    {
      operator delete(__p[0]);
    }

    v15 = v30;
    if (!v30)
    {
      return;
    }

LABEL_33:
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    return;
  }

  std::string::basic_string[abi:ne200100]<0>(v35, "x");
  v18 = MIL::IROperation::GetParameterType(this);
  v19 = MIL::IRValueType::AsTensorType(v18);
  if (v36 < 0)
  {
    operator delete(v35[0]);
  }

  v20 = MIL::IRTensorValueType::Rank(v19);
  if (!(*(*v19 + 104))(v19) || v9 <= v20)
  {
    goto LABEL_34;
  }

  v21 = MIL::IRObject::GetLocationPtr(this);
  v22 = v21[1];
  v25 = *v21;
  v26 = v22;
  if (v22)
  {
    atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(v23, "'batch_dims' must be no larger than input_rank.");
  MIL::ValidationResult::ValidationResult(a2, &v25, 315, v23);
  if (v24 < 0)
  {
    operator delete(v23[0]);
  }

  v15 = v26;
  if (v26)
  {
    goto LABEL_33;
  }
}

void sub_21825A180(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::__shared_weak_count *a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
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

void MIL::Operators::Common::ios16::BaseGather::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_21825AEE4(_Unwind_Exception *a1)
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 136), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 240), 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::BaseGatherWithAxis::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_21825C0C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v67 = *(v65 - 104);
  *(v65 - 104) = 0;
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v65 - 160), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a64, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::Gather::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_21825D428(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, void *a58, uint64_t a59, uint64_t a60, void *a61, uint64_t a62, uint64_t a63)
{
  v69 = *(v67 - 88);
  *(v67 - 88) = 0;
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

void MIL::Operators::Common::ios16::GatherAlongAxis::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_21825E6F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v67 = *(v65 - 88);
  *(v65 - 88) = 0;
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v65 - 144), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a64, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::GatherNd::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_21825F9C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v67 = *(v65 - 88);
  *(v65 - 88) = 0;
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v65 - 144), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a64, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::CustomValidators::ValidateUpsampleBilinear(MIL::Operators::Common::ios16::CustomValidators *this@<X0>, MIL::ValidationResult *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(v18, "half_pixel_centers");
  if (MIL::IROperation::IsParameterSet(this, v18))
  {
    std::string::basic_string[abi:ne200100]<0>(&v16, "half_pixel_centers");
    ParameterValue = MIL::IROperation::GetParameterValue(this);
    if (MIL::IRValue::GetScalar<BOOL>(ParameterValue))
    {
      std::string::basic_string[abi:ne200100]<0>(&__p, "align_corners");
      v6 = MIL::IROperation::GetParameterValue(this);
      v7 = MIL::IRValue::GetScalar<BOOL>(v6);
      if (v15 < 0)
      {
        operator delete(__p);
      }
    }

    else
    {
      v7 = 0;
    }

    if (v17 < 0)
    {
      operator delete(v16);
    }
  }

  else
  {
    v7 = 0;
  }

  if (v19 < 0)
  {
    operator delete(v18[0]);
    if (v7)
    {
      goto LABEL_11;
    }

LABEL_18:
    MIL::ValidationResult::ValidationResult(a2);
    return;
  }

  if (!v7)
  {
    goto LABEL_18;
  }

LABEL_11:
  LocationPtr = MIL::IRObject::GetLocationPtr(this);
  v9 = LocationPtr[1];
  v12 = *LocationPtr;
  v13 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(v10, "half_pixel_centers is not supported when align_corners is true.");
  MIL::ValidationResult::ValidationResult(a2, &v12, 315, v10);
  if (v11 < 0)
  {
    operator delete(v10[0]);
  }

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }
}

void sub_21825FFDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (*(v28 - 33) < 0)
  {
    operator delete(*(v28 - 56));
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios16::CustomValueTypeInference::ValueTypeInferenceCropResize(MIL::IRConstantDimension **a1, void *a2, void *a3)
{
  v3 = a2[1];
  v4[0] = *a2;
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceCropResize(a1, v4, a3);
}

void sub_2182600AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios16::CustomValueTypeInference::ValueTypeInferenceAffine(MIL::IRConstantDimension **a1, __int128 *a2, void *a3)
{
  v3 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceAffine(a1, &v3, a3);
}

void sub_218260108(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios16::Affine::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_218262394(_Unwind_Exception *a1)
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x3D8], 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x470], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::CropResize::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_218264E28(_Unwind_Exception *a1)
{
  v4 = *(v2 - 256);
  *(v2 - 256) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 216), 0);
  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 88), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x3C0], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::Resample::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2182684D8(_Unwind_Exception *a1)
{
  v4 = *(v2 - 96);
  *(v2 - 96) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 176), 0);
  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x598], 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x5D8], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::ResizeBilinear::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_21826A660(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v72 = *(v70 - 88);
  *(v70 - 88) = 0;
  if (v72)
  {
    (*(*v72 + 8))(v72);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v70 - 72), 0);
  v73 = *v69;
  *v69 = 0;
  if (v73)
  {
    (*(*v73 + 8))(v73);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v70 - 104), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a69, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::UpsampleBilinear::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_21826C628(_Unwind_Exception *a1)
{
  v4 = *(v2 - 96);
  *(v2 - 96) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x320], 0);
  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x2D8], 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x348], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::CustomValueTypeInference::ValueTypeInferenceLinear(uint64_t a1, void *a2, void *a3)
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

void sub_21826CE90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios16::CustomValueTypeInference::ValueTypeInferenceMatMul(MIL::IRConstantDimension **a1, void *a2, void *a3)
{
  v3 = a2[1];
  v4[0] = *a2;
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceMatMul(a1, v4, a3);
}

void sub_21826CEF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios16::CustomValueTypeInference::ValueTypeInferenceEinsum(MIL::IRConstantDimension **a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v4 = a2[1];
  v5 = *a2;
  v6 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceEinsum(a1, &v5, a3, a4);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void sub_21826CF60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios16::Einsum::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_21826DE5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59)
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

void MIL::Operators::Common::ios16::Linear::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_21826FB50(_Unwind_Exception *a1)
{
  v4 = STACK[0x2C8];
  STACK[0x2C8] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x2E0], 0);
  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 96), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x308], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::MatMul::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_218271740(_Unwind_Exception *a1)
{
  v4 = STACK[0x218];
  STACK[0x218] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x230], 0);
  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 96), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x258], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::CustomValidators::ValidateCall(MIL::Operators::Common::ios16::CustomValidators *this@<X0>, const MIL::IROperation *a2@<X1>, MIL::ValidationResult *a3@<X8>)
{
  v5 = (*(*this + 96))(this, a2);
  v6 = (*(*(v5 + 64) + 72))();
  if (!v6)
  {
LABEL_29:
    LocationPtr = MIL::IRObject::GetLocationPtr(this);
    v34 = LocationPtr[1];
    v122 = *LocationPtr;
    v123 = v34;
    if (v34)
    {
      atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v120, "The operation is not nested within a program.");
    MIL::ValidationResult::ValidationResult(a3, &v122, 400, v120);
    if (v121 < 0)
    {
      operator delete(v120[0]);
    }

    v35 = v123;
    if (!v123)
    {
      return;
    }

LABEL_40:
    std::__shared_weak_count::__release_shared[abi:ne200100](v35);
    return;
  }

  v7 = v6;
  v8 = *v6;
  if (!v9)
  {
    while (1)
    {
      v31 = (*(v8 + 72))(v7);
      if (!v31)
      {
        goto LABEL_29;
      }

      v7 = v31;
      v8 = *v31;
      v9 = v32;
      if (v10)
      {
        if (v32)
        {
          break;
        }
      }

      else
      {
        if (v9)
        {
          break;
        }
      }
    }
  }

  if (!v10)
  {
    v36 = MIL::IRObject::GetLocationPtr(this);
    v37 = v36[1];
    v118 = *v36;
    v119 = v37;
    if (v37)
    {
      atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v116, "The operation is not nested within a function.");
    MIL::ValidationResult::ValidationResult(a3, &v118, 400, v116);
    if (v117 < 0)
    {
      operator delete(v116[0]);
    }

    v35 = v119;
    if (!v119)
    {
      return;
    }

    goto LABEL_40;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "function");
  Attribute = MIL::IRObject::GetAttribute(this, __p);
  MIL::IRValue::GetScalar<std::string>(Attribute, &v115);
  if (SHIBYTE(v128[0].__locale_) < 0)
  {
    operator delete(__p[0]);
  }

  if (!(*(*v9 + 56))(v9, &v115))
  {
    v38 = MIL::IRObject::GetLocationPtr(this);
    v39 = v38[1];
    v113 = *v38;
    v114 = v39;
    if (v39)
    {
      atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v111, "The called function does not exist.");
    MIL::ValidationResult::ValidationResult(a3, &v113, 209, v111);
    if (v112 < 0)
    {
      operator delete(v111[0]);
    }

    if (v114)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v114);
    }

    goto LABEL_175;
  }

  Function = MIL::IRProgram::GetFunction(v9);
  v13 = (*(*Function + 128))(Function);
  v14 = (*(*this + 160))(this);
  v15 = v14;
  if (v13[2] != *(v14 + 16))
  {
    v40 = MIL::IRObject::GetLocationPtr(this);
    v41 = v40[1];
    v132.__r_.__value_.__r.__words[0] = *v40;
    v132.__r_.__value_.__l.__size_ = v41;
    if (v41)
    {
      atomic_fetch_add_explicit((v41 + 8), 1uLL, memory_order_relaxed);
    }

    std::operator+<char>();
    std::string::push_back(&v133, 46);
    *__p = *&v133.__r_.__value_.__l.__data_;
    v128[0] = v133.__r_.__value_.__r.__words[2];
    memset(&v133, 0, sizeof(v133));
    MIL::ValidationResult::ValidationResult(v109, &v132, 300, __p);
    if (SHIBYTE(v128[0].__locale_) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v133.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v133.__r_.__value_.__l.__data_);
    }

    if (v132.__r_.__value_.__l.__size_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v132.__r_.__value_.__l.__size_);
    }

    goto LABEL_123;
  }

  v18 = *v13;
  v16 = v13 + 1;
  v17 = v18;
  if (v18 == v16)
  {
LABEL_22:
    MIL::ValidationResult::ValidationResult(v109);
    goto LABEL_123;
  }

  v19 = v14 + 8;
  while (1)
  {
    v20 = std::__tree<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>>>::find<std::string>(v15, v17 + 4);
    if (v19 == v20)
    {
      std::ostringstream::basic_ostringstream[abi:ne200100](__p);
      v133.__r_.__value_.__s.__data_[0] = 34;
      v42 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, &v133, 1);
      v43 = *(v17 + 55);
      if (v43 >= 0)
      {
        v44 = (v17 + 4);
      }

      else
      {
        v44 = v17[4];
      }

      if (v43 >= 0)
      {
        v45 = *(v17 + 55);
      }

      else
      {
        v45 = v17[5];
      }

      v46 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, v44, v45);
      v47 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v46, " is a required argument to function ", 37);
      if ((v115.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v48 = &v115;
      }

      else
      {
        v48 = v115.__r_.__value_.__r.__words[0];
      }

      if ((v115.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v115.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v115.__r_.__value_.__l.__size_;
      }

      v50 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v47, v48, size);
      v133.__r_.__value_.__s.__data_[0] = 46;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, &v133, 1);
      v51 = MIL::IRObject::GetLocationPtr(this);
      v52 = v51[1];
      v132.__r_.__value_.__r.__words[0] = *v51;
      v132.__r_.__value_.__l.__size_ = v52;
      if (v52)
      {
        atomic_fetch_add_explicit((v52 + 8), 1uLL, memory_order_relaxed);
      }

      goto LABEL_69;
    }

    v21 = *(v20 + 56);
    if (*(v20 + 64) - v21 != 16)
    {
      std::ostringstream::basic_ostringstream[abi:ne200100](__p);
      v53 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Parameter ", 11);
      v54 = *(v17 + 55);
      if (v54 >= 0)
      {
        v55 = (v17 + 4);
      }

      else
      {
        v55 = v17[4];
      }

      if (v54 >= 0)
      {
        v56 = *(v17 + 55);
      }

      else
      {
        v56 = v17[5];
      }

      v57 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v53, v55, v56);
      v58 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v57, " to function ", 14);
      if ((v115.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v59 = &v115;
      }

      else
      {
        v59 = v115.__r_.__value_.__r.__words[0];
      }

      if ((v115.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v60 = HIBYTE(v115.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v60 = v115.__r_.__value_.__l.__size_;
      }

      v61 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v58, v59, v60);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v61, " may not be variadic.", 21);
      v62 = MIL::IRObject::GetLocationPtr(this);
      v63 = v62[1];
      v132.__r_.__value_.__r.__words[0] = *v62;
      v132.__r_.__value_.__l.__size_ = v63;
      if (v63)
      {
        atomic_fetch_add_explicit((v63 + 8), 1uLL, memory_order_relaxed);
      }

LABEL_69:
      std::stringbuf::str();
      MIL::ValidationResult::ValidationResult(v109, &v132, 300, &v133);
      goto LABEL_116;
    }

    v22 = *v21;
    if ((*(**v21 + 24))(*v21))
    {
      Value = MIL::IRArgument::GetValue(v22);
      v24 = (*(*Value + 32))(Value);
    }

    else
    {
      Name = MIL::IRArgument::GetName(v22);
      v24 = (*(*(this + 8) + 24))(this + 64, Name, 1);
    }

    v27 = v24;
    if ((MIL::IsEqualOrStrongerType(v17[7], v24, v25) & 1) == 0)
    {
      break;
    }

    v28 = v17[1];
    if (v28)
    {
      do
      {
        v29 = v28;
        v28 = *v28;
      }

      while (v28);
    }

    else
    {
      do
      {
        v29 = v17[2];
        v30 = *v29 == v17;
        v17 = v29;
      }

      while (!v30);
    }

    v17 = v29;
    if (v29 == v16)
    {
      goto LABEL_22;
    }
  }

  std::ostringstream::basic_ostringstream[abi:ne200100](__p);
  v64 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Parameter '", 11);
  v65 = *(v17 + 55);
  if (v65 >= 0)
  {
    v66 = (v17 + 4);
  }

  else
  {
    v66 = v17[4];
  }

  if (v65 >= 0)
  {
    v67 = *(v17 + 55);
  }

  else
  {
    v67 = v17[5];
  }

  v68 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v64, v66, v67);
  v69 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v68, "' has incompatible type for function '", 38);
  if ((v115.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v70 = &v115;
  }

  else
  {
    v70 = v115.__r_.__value_.__r.__words[0];
  }

  if ((v115.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v71 = HIBYTE(v115.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v71 = v115.__r_.__value_.__l.__size_;
  }

  v72 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v69, v70, v71);
  v73 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v72, "'. Expected ", 12);
  (*(*v17[7] + 56))(&v133);
  if ((v133.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v74 = &v133;
  }

  else
  {
    v74 = v133.__r_.__value_.__r.__words[0];
  }

  if ((v133.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v75 = HIBYTE(v133.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v75 = v133.__r_.__value_.__l.__size_;
  }

  v76 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v73, v74, v75);
  v77 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v76, "; got ", 6);
  (*(*v27 + 56))(&v132, v27);
  if ((v132.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v78 = &v132;
  }

  else
  {
    v78 = v132.__r_.__value_.__r.__words[0];
  }

  if ((v132.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v79 = HIBYTE(v132.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v79 = v132.__r_.__value_.__l.__size_;
  }

  v80 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v77, v78, v79);
  LOBYTE(v124) = 46;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v80, &v124, 1);
  if (SHIBYTE(v132.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v132.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v133.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v133.__r_.__value_.__l.__data_);
  }

  v81 = MIL::IRObject::GetLocationPtr(this);
  v82 = v81[1];
  v132.__r_.__value_.__r.__words[0] = *v81;
  v132.__r_.__value_.__l.__size_ = v82;
  if (v82)
  {
    atomic_fetch_add_explicit((v82 + 8), 1uLL, memory_order_relaxed);
  }

  std::stringbuf::str();
  MIL::ValidationResult::ValidationResult(v109, &v132, 304, &v133);
LABEL_116:
  if (SHIBYTE(v133.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v133.__r_.__value_.__l.__data_);
  }

  if (v132.__r_.__value_.__l.__size_)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v132.__r_.__value_.__l.__size_);
  }

  __p[0] = *MEMORY[0x277D82828];
  *(__p + *(__p[0] - 3)) = *(MEMORY[0x277D82828] + 24);
  __p[1] = (MEMORY[0x277D82878] + 16);
  if (v130 < 0)
  {
    operator delete(v129);
  }

  __p[1] = (MEMORY[0x277D82868] + 16);
  std::locale::~locale(v128);
  std::ostream::~ostream();
  MEMORY[0x21CEAFDA0](v131);
  if (((*(v109[0] + 16))(v109) & 1) == 0)
  {
    goto LABEL_174;
  }

LABEL_123:
  MIL::ValidationResult::~ValidationResult(v109);
  v83 = MIL::IRProgram::GetFunction(v9);
  (*(*v83 + 160))(&v133);
  v84 = (*(*this + 176))(this);
  v85 = v133.__r_.__value_.__r.__words[0];
  if ((v133.__r_.__value_.__l.__size_ - v133.__r_.__value_.__r.__words[0]) >> 3 == (v84[1] - *v84) >> 4)
  {
    if (v133.__r_.__value_.__l.__size_ == v133.__r_.__value_.__r.__words[0])
    {
LABEL_129:
      MIL::ValidationResult::ValidationResult(v109);
    }

    else
    {
      v86 = 0;
      v87 = 0;
      while (1)
      {
        v88 = *(v85 + 8 * v87);
        Type = MIL::IRNamedValueType::GetType(*(*v84 + v86));
        if ((MIL::IsEqualOrStrongerType(v88, Type, v90) & 1) == 0)
        {
          break;
        }

        ++v87;
        v85 = v133.__r_.__value_.__r.__words[0];
        v86 += 16;
        if (v87 >= (v133.__r_.__value_.__l.__size_ - v133.__r_.__value_.__r.__words[0]) >> 3)
        {
          goto LABEL_129;
        }
      }

      std::ostringstream::basic_ostringstream[abi:ne200100](__p);
      v93 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Output at index ", 16);
      v94 = MEMORY[0x21CEAFB40](v93, v87);
      v95 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v94, " has incompatible type for function '", 37);
      if ((v115.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v96 = &v115;
      }

      else
      {
        v96 = v115.__r_.__value_.__r.__words[0];
      }

      if ((v115.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v97 = HIBYTE(v115.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v97 = v115.__r_.__value_.__l.__size_;
      }

      v98 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v95, v96, v97);
      v99 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v98, "'. Expected ", 12);
      (*(*v88 + 56))(&v132, v88);
      if ((v132.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v100 = &v132;
      }

      else
      {
        v100 = v132.__r_.__value_.__r.__words[0];
      }

      if ((v132.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v101 = HIBYTE(v132.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v101 = v132.__r_.__value_.__l.__size_;
      }

      v102 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v99, v100, v101);
      v103 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v102, "; got ", 6);
      (*(*Type + 56))(&v124, Type);
      if ((v126 & 0x80u) == 0)
      {
        v104 = &v124;
      }

      else
      {
        v104 = v124;
      }

      if ((v126 & 0x80u) == 0)
      {
        v105 = v126;
      }

      else
      {
        v105 = v125;
      }

      v106 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v103, v104, v105);
      v134[0] = 46;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v106, v134, 1);
      if (v126 < 0)
      {
        operator delete(v124);
      }

      if (SHIBYTE(v132.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v132.__r_.__value_.__l.__data_);
      }

      v107 = MIL::IRObject::GetLocationPtr(this);
      v108 = *(v107 + 8);
      v124 = *v107;
      v125 = v108;
      if (v108)
      {
        atomic_fetch_add_explicit(&v108->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      std::stringbuf::str();
      MIL::ValidationResult::ValidationResult(v109, &v124, 313, &v132);
      if (SHIBYTE(v132.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v132.__r_.__value_.__l.__data_);
      }

      if (v125)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v125);
      }

      __p[0] = *MEMORY[0x277D82828];
      *(__p + *(__p[0] - 3)) = *(MEMORY[0x277D82828] + 24);
      __p[1] = (MEMORY[0x277D82878] + 16);
      if (v130 < 0)
      {
        operator delete(v129);
      }

      __p[1] = (MEMORY[0x277D82868] + 16);
      std::locale::~locale(v128);
      std::ostream::~ostream();
      MEMORY[0x21CEAFDA0](v131);
    }
  }

  else
  {
    v91 = MIL::IRObject::GetLocationPtr(this);
    v92 = *(v91 + 8);
    v124 = *v91;
    v125 = v92;
    if (v92)
    {
      atomic_fetch_add_explicit(&v92->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::operator+<char>();
    std::string::push_back(&v132, 46);
    *__p = *&v132.__r_.__value_.__l.__data_;
    v128[0] = v132.__r_.__value_.__r.__words[2];
    memset(&v132, 0, sizeof(v132));
    MIL::ValidationResult::ValidationResult(v109, &v124, 310, __p);
    if (SHIBYTE(v128[0].__locale_) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v132.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v132.__r_.__value_.__l.__data_);
    }

    if (v125)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v125);
    }
  }

  if (v133.__r_.__value_.__r.__words[0])
  {
    v133.__r_.__value_.__l.__size_ = v133.__r_.__value_.__r.__words[0];
    operator delete(v133.__r_.__value_.__l.__data_);
  }

  if ((*(v109[0] + 16))(v109))
  {
    MIL::ValidationResult::~ValidationResult(v109);
    MIL::ValidationResult::ValidationResult(a3);
  }

  else
  {
LABEL_174:
    MIL::MILResult::MILResult(a3, v109);
    *a3 = &unk_2829E9B70;
    *(a3 + 12) = v110;
    MIL::ValidationResult::~ValidationResult(v109);
  }

LABEL_175:
  if (SHIBYTE(v115.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v115.__r_.__value_.__l.__data_);
  }
}

void sub_218272CD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, void *a52, uint64_t a53, int a54, __int16 a55, char a56, char a57)
{
  if (*(v57 - 97) < 0)
  {
    operator delete(*(v57 - 120));
  }

  v59 = *(v57 - 136);
  if (v59)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v59);
  }

  std::ostringstream::~ostringstream(&a52);
  if (a29 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::Call::Make(uint64_t a1, uint64_t a2)
{
  v8[4] = *MEMORY[0x277D85DE8];
  *__p = *a2;
  v5 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v3[0] = 0;
  v3[1] = 0;
  v2[0] = 0;
  v2[1] = 0;
  v7 = 0;
  v8[0] = &unk_2829EA4C8;
  v8[1] = MIL::Operators::Common::ios16::CustomValidators::ValidateCall;
  v8[3] = v8;
  MIL::IROperator::Make(__p, 0, -1, 1, -1, v3, v2, v8, v6);
}

void sub_218273230(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, char a28)
{
  std::__function::__value_func<std::string ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a28);
  v30 = *v28;
  *v28 = 0;
  if (v30)
  {
    (*(*v30 + 8))(v30);
  }

  _Unwind_Resume(a1);
}

void std::__function::__func<MIL::Operators::Common::ios16::Call::Make(MIL::MILContext &,std::string)::$_0,std::allocator<MIL::Operators::Common::ios16::Call::Make(MIL::MILContext &,std::string)::$_0>,std::string ()(MIL::IROperation const&)>::operator()(uint64_t a1@<X1>, std::string *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "function");
  Attribute = MIL::IRObject::GetAttribute(a1, __p);
  MIL::IRValue::GetScalar<std::string>(Attribute, a2);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2182733FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Operators::Common::ios16::Call::Make(MIL::MILContext &,std::string)::$_0,std::allocator<MIL::Operators::Common::ios16::Call::Make(MIL::MILContext &,std::string)::$_0>,std::string ()(MIL::IROperation const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void MIL::Operators::Common::ios16::BatchNorm::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2182754C0(_Unwind_Exception *a1)
{
  v3 = *(v2 - 128);
  *(v2 - 128) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 104), 0);
  v4 = *v1;
  *v1 = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 80), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x448], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::InstanceNorm::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2182778EC(_Unwind_Exception *a1)
{
  v3 = *(v2 - 128);
  *(v2 - 128) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 104), 0);
  v4 = *v1;
  *v1 = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 80), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x328], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::L2Norm::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_218279338(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, void *a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v75 = *(v73 - 96);
  *(v73 - 96) = 0;
  if (v75)
  {
    (*(*v75 + 8))(v75);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a72, 0);
  v76 = *v72;
  *v72 = 0;
  if (v76)
  {
    (*(*v76 + 8))(v76);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v73 - 72), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x228], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::LayerNorm::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_21827AF58(_Unwind_Exception *a1)
{
  v4 = *(v2 - 96);
  *(v2 - 96) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 72), 0);
  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 112), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x278], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::LocalResponseNorm::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_21827CCA8(_Unwind_Exception *a1)
{
  v4 = *(v2 - 96);
  *(v2 - 96) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x2A8], 0);
  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 72), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x2D8], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::CustomValueTypeInference::ValueTypeInferenceBasePool(MIL::IRConstantDimension **a1, __int128 *a2, void *a3)
{
  v3 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceBasePool(a1, &v3, a3);
}

void sub_21827D4AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios16::BasePool::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_21827EF4C(_Unwind_Exception *a1)
{
  v3 = *(v2 - 136);
  *(v2 - 136) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 112), 0);
  v4 = *v1;
  *v1 = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 88), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x340], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::BaseAvgPool::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2182813AC(_Unwind_Exception *a1)
{
  v4 = *(v2 - 136);
  *(v2 - 136) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 112), 0);
  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 88), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x340], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::AvgPool::Make(uint64_t a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios16::BaseAvgPool::Make();
}

void sub_218281D94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::L2Pool::Make(uint64_t a1, void *a2)
{
  v2[4] = *MEMORY[0x277D85DE8];
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v2[0] = &unk_2829EA4C8;
  v2[1] = MIL::Operators::Common::ios16::CustomValidators::ValidateL2Pool;
  v2[3] = v2;
  MIL::Operators::Common::ios16::BasePool::Make();
}

void sub_218281E74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::MaxPool::Make(uint64_t a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios16::BasePool::Make();
}

void sub_218281F28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::CustomValueTypeInference::ValueTypeInferenceRandomBernoulli(MIL::IRConstantDimension **a1, uint64_t *a2, void *a3)
{
  v5 = a2[1];
  v7[0] = *a2;
  v7[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "prob");
}

void sub_218281FE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios16::CustomValueTypeInference::anonymous namespace::ValueTypeInferenceRandomOpHelper(MIL::IRConstantDimension **a1, uint64_t *a2, void *a3, uint64_t a4)
{
  v30 = *MEMORY[0x277D85DE8];
  SingleValueType = MIL::ValueTypeInferenceUtils::GetSingleValueType(a3, a4);
  v8 = MIL::IRValueType::AsTensorType(SingleValueType);
  (*(*v8 + 88))(v8);
  std::string::basic_string[abi:ne200100]<0>(__p, "shape");
  v9 = MIL::ValueTypeInferenceUtils::GetSingleValueType(a3, __p);
  v10 = MIL::IRValueType::AsTensorType(v9);
  v11 = (*(*v10 + 96))(v10);
  memset(v27, 0, sizeof(v27));
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(v27, *v11, v11[1], (v11[1] - *v11) >> 3);
  if (SHIBYTE(v26) < 0)
  {
    operator delete(__p[0]);
  }

  __p[0] = 0;
  __p[1] = 0;
  v26 = 0;
  if ((*(**v27[0] + 16))())
  {
    std::string::basic_string[abi:ne200100]<0>(v28, "shape");
    SingleValue = MIL::ValueTypeInferenceUtils::TryGetSingleValue(a3, v28);
    if (SHIBYTE(v29) < 0)
    {
      operator delete(v28[0]);
    }

    v13 = a2[1];
    v23 = *a2;
    v24 = v13;
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    MIL::ValueTypeInferenceUtils::GetRandomOpOutShape(SingleValue, a1, v27, &v23, v28);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    *__p = *v28;
    v26 = v29;
    v28[1] = 0;
    v29 = 0;
    v28[0] = 0;
    if (v24)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v24);
    }
  }

  else
  {
    v14 = MIL::IRUnknownDimension::Make(*a1, 1);
    v15 = __p[1];
    if (__p[1] >= v26)
    {
      v17 = (__p[1] - __p[0]) >> 3;
      if ((v17 + 1) >> 61)
      {
        std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
      }

      v18 = (v26 - __p[0]) >> 2;
      if (v18 <= v17 + 1)
      {
        v18 = v17 + 1;
      }

      if (v26 - __p[0] >= 0x7FFFFFFFFFFFFFF8)
      {
        v19 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v19 = v18;
      }

      if (v19)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::string const*>>(__p, v19);
      }

      v20 = (8 * v17);
      *v20 = v14;
      v16 = (8 * v17 + 8);
      v21 = v20 - (__p[1] - __p[0]);
      memcpy(v21, __p[0], __p[1] - __p[0]);
      v22 = __p[0];
      __p[0] = v21;
      __p[1] = v16;
      v26 = 0;
      if (v22)
      {
        operator delete(v22);
      }
    }

    else
    {
      *__p[1] = v14;
      v16 = v15 + 8;
    }

    __p[1] = v16;
  }

  MIL::IRTensorValueType::MakeWithShape();
}

void sub_218282300(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a17)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios16::CustomValueTypeInference::ValueTypeInferenceRandomCategorical(MIL::IRConstantDimension **a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(__p, "x");
  SingleValueType = MIL::ValueTypeInferenceUtils::GetSingleValueType(a3, __p);
  v7 = MIL::IRValueType::AsTensorType(SingleValueType);
  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p[0]);
  }

  (*(*v7 + 88))(v7);
  v8 = (*(*v7 + 96))(v7);
  __p[0] = 0;
  __p[1] = 0;
  v17 = 0;
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(__p, *v8, v8[1], (v8[1] - *v8) >> 3);
  std::string::basic_string[abi:ne200100]<0>(&v14, "size");
  SingleValue = MIL::ValueTypeInferenceUtils::GetSingleValue(a3, &v14);
  v10 = MIL::IRValue::AsTensor(SingleValue);
  v11 = MIL::IRValue::GetScalar<int>(v10);
  if (v15 < 0)
  {
    operator delete(v14);
  }

  v12 = a2[1];
  v13[0] = *a2;
  v13[1] = v12;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::ValueTypeInferenceUtils::GetRandomCategoricalOutShape(a1, v13, __p, v11, &v14);
  MIL::IRTensorValueType::MakeWithShape();
}

void sub_218282560(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios16::CustomValueTypeInference::ValueTypeInferenceRandomNormal(MIL::IRConstantDimension **a1, uint64_t *a2, void *a3)
{
  v5 = a2[1];
  v7[0] = *a2;
  v7[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "mean");
}

void sub_218282670(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios16::CustomValueTypeInference::ValueTypeInferenceRandomUniform(MIL::IRConstantDimension **a1, uint64_t *a2, void *a3)
{
  v5 = a2[1];
  v7[0] = *a2;
  v7[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "low");
}

void sub_218282734(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios16::RandomBernoulli::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_218283634(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void **a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v66 = *(v64 - 88);
  *(v64 - 88) = 0;
  if (v66)
  {
    (*(*v66 + 8))(v66);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v64 - 72), 0);
  v67 = *v63;
  *v63 = 0;
  if (v67)
  {
    (*(*v67 + 8))(v67);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a56, 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a63, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::RandomCategorical::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_21828493C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53)
{
  v56 = *(v54 - 104);
  *(v54 - 104) = 0;
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v54 - 80), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a53, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::RandomNormal::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_218285ED0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v67 = *(v65 - 88);
  *(v65 - 88) = 0;
  if (v67)
  {
    (*(*v67 + 8))(v67);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v65 - 72), 0);
  v68 = *v64;
  *v64 = 0;
  if (v68)
  {
    (*(*v68 + 8))(v68);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a64, 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x200], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::RandomUniform::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_218287558(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v67 = *(v65 - 88);
  *(v65 - 88) = 0;
  if (v67)
  {
    (*(*v67 + 8))(v67);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v65 - 72), 0);
  v68 = *v64;
  *v64 = 0;
  if (v68)
  {
    (*(*v68 + 8))(v68);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a64, 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x200], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::CustomValueTypeInference::ValueTypeInferenceRNN(MIL::IRConstantDimension **a1, uint64_t *a2, void *a3)
{
  v3 = a2[1];
  v4[0] = *a2;
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceRnn(a1, v4, a3);
}

void sub_218287B90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios16::CustomValueTypeInference::ValueTypeInferenceLSTM(MIL::IRConstantDimension **a1, uint64_t *a2, void *a3)
{
  v3 = a2[1];
  v4[0] = *a2;
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceLstm(a1, v4, a3);
}

void sub_218287BF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios16::CustomValueTypeInference::ValueTypeInferenceGRU(MIL::IRConstantDimension **a1, uint64_t *a2, void *a3)
{
  v3 = a2[1];
  v4[0] = *a2;
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceGru(a1, v4, a3);
}

void sub_218287C60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios16::GRU::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_21828AA34(_Unwind_Exception *a1)
{
  v4 = STACK[0x600];
  STACK[0x600] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 80), 0);
  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x698], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::LSTM::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2182907F8(_Unwind_Exception *a1)
{
  v4 = STACK[0xAB0];
  STACK[0xAB0] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 80), 0);
  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0xBC8], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::RNN::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_218294D98(_Unwind_Exception *a1)
{
  v4 = STACK[0x5A0];
  STACK[0x5A0] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 80), 0);
  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x628], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::CustomValueTypeInference::ValueTypeInferenceBaseReduction(MIL::IRConstantDimension **a1, void *a2, void *a3)
{
  v3 = a2[1];
  v4[0] = *a2;
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceBaseReduction(a1, v4, a3);
}

void sub_218295CB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios16::CustomValueTypeInference::ValueTypeInferenceBaseArgReduction(MIL::IRConstantDimension **a1, void *a2, void *a3)
{
  v3 = a2[1];
  v4[0] = *a2;
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceBaseArgReduction(a1, v4, a3);
}

void sub_218295D1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios16::BaseArgReduction::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_218296C2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, void *a54, uint64_t a55, uint64_t a56, void *a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v66 = *(v64 - 88);
  *(v64 - 88) = 0;
  if (v66)
  {
    (*(*v66 + 8))(v66);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a54, 0);
  v67 = *v63;
  *v63 = 0;
  if (v67)
  {
    (*(*v67 + 8))(v67);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a57, 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a63, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::ReduceArgmax::Make(uint64_t a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios16::BaseArgReduction::Make();
}

void sub_2182971A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::ReduceArgmin::Make(uint64_t a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios16::BaseArgReduction::Make();
}

void sub_218297254(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::BaseReduction::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_218298444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v71 = *(v69 - 160);
  *(v69 - 160) = 0;
  if (v71)
  {
    (*(*v71 + 8))(v71);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v69 - 120), 0);
  v72 = *v68;
  *v68 = 0;
  if (v72)
  {
    (*(*v72 + 8))(v72);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v69 - 136), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a68, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::ReduceL1Norm::Make(uint64_t a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios16::BaseReduction::Make();
}

void sub_218298AEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::ReduceL2Norm::Make(uint64_t a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios16::BaseReduction::Make();
}

void sub_218298BA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::ReduceLogSum::Make(uint64_t a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios16::BaseReduction::Make();
}

void sub_218298C54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::ReduceLogSumExp::Make(uint64_t a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios16::BaseReduction::Make();
}

void sub_218298D08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::ReduceMax::Make(uint64_t a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios16::BaseReduction::Make();
}

void sub_218298DBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::ReduceMean::Make(uint64_t a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios16::BaseReduction::Make();
}

void sub_218298E70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::ReduceMin::Make(uint64_t a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios16::BaseReduction::Make();
}

void sub_218298F24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::ReduceProd::Make(uint64_t a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios16::BaseReduction::Make();
}

void sub_218298FD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::ReduceSum::Make(uint64_t a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios16::BaseReduction::Make();
}

void sub_21829908C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::ReduceSumSquare::Make(uint64_t a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios16::BaseReduction::Make();
}

void sub_218299140(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::BaseScatter::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_21829A858(_Unwind_Exception *a1)
{
  v4 = *(v2 - 136);
  *(v2 - 136) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x288], 0);
  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 112), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x2B0], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::BaseScatterWithAxis::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_21829C88C(_Unwind_Exception *a1)
{
  v4 = *(v2 - 136);
  *(v2 - 136) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x298], 0);
  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 112), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x2C0], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::Scatter::Make(uint64_t a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios16::BaseScatterWithAxis::Make();
}

void sub_21829D184(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::ScatterAlongAxis::Make(uint64_t a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios16::BaseScatterWithAxis::Make();
}

void sub_21829D238(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::ScatterNd::Make(uint64_t a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios16::BaseScatter::Make();
}

void sub_21829D2EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::CustomValidators::ValidateTopk(MIL::Operators::Common::ios16::CustomValidators *this@<X0>, MIL::ValidationResult *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "x");
  ParameterType = MIL::IROperation::GetParameterType(this);
  v6 = MIL::IRValueType::AsTensorType(ParameterType);
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "axis");
  ParameterValue = MIL::IROperation::GetParameterValue(this);
  v8 = MIL::IRValue::GetScalar<int>(ParameterValue);
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "k");
  v9 = MIL::IROperation::GetParameterValue(this);
  v10 = *MIL::IRValue::TryGetScalar<int>(v9);
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  LocationPtr = MIL::IRObject::GetLocationPtr(this);
  v12 = LocationPtr[1];
  v13 = *LocationPtr;
  v14 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::Shared::ValidateTopkInputs(v6, v8, v10, &v13, a2);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }
}

void sub_21829D438(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios16::CustomValueTypeInference::ValueTypeInferenceFillLike(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(__p, "ref_tensor");
  SingleValueType = MIL::ValueTypeInferenceUtils::GetSingleValueType(a3, __p);
  v5 = MIL::IRValueType::AsTensorType(SingleValueType);
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "value");
  SingleValue = MIL::ValueTypeInferenceUtils::GetSingleValue(a3, __p);
  v7 = MIL::IRValue::AsTensor(SingleValue);
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }

  v8 = (*(*v7 + 32))(v7);
  (*(*v8 + 88))(v8);
  v9 = (*(*v5 + 96))(v5);
  __p[0] = 0;
  __p[1] = 0;
  v11 = 0;
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(__p, *v9, v9[1], (v9[1] - *v9) >> 3);
  MIL::IRTensorValueType::MakeWithShape();
}

void sub_21829D61C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios16::CustomValueTypeInference::ValueTypeInferenceTopk(MIL::IRConstantDimension **a1, __int128 *a2, void *a3)
{
  v3 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  MIL::Operators::Common::Shared::ValueTypeInferenceTopkCommon(a1, &v3, a3);
}

void sub_21829D69C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios16::Cumsum::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_21829E77C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, void *a60, uint64_t a61, uint64_t a62, void *a63)
{
  if (a60)
  {
    (*(*a60 + 8))(a60);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a63, 0);
  v71 = *v68;
  *v68 = 0;
  if (v71)
  {
    (*(*v71 + 8))(v71);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v69 - 96), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a68, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::FillLike::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_21829F864(_Unwind_Exception *a1)
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 96), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 240), 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::NonMaximumSuppression::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2182A1AAC(_Unwind_Exception *a1)
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x338], 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x3A0], 0);
  _Unwind_Resume(a1);
}

void sub_2182A2474()
{
  v0 = STACK[0x3A8];
  if (STACK[0x3A8])
  {
    STACK[0x3B0] = v0;
    operator delete(v0);
  }

  JUMPOUT(0x2182A2458);
}

void MIL::Operators::Common::ios16::Topk::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2182A2DC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52)
{
  v55 = *(v53 - 104);
  *(v53 - 104) = 0;
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v53 - 80), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v53 - 232), 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::CustomValidators::ValidateReshape(MIL::Operators::Common::ios16::CustomValidators *this@<X0>, MIL::ValidationResult *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(&v59, "x");
  ParameterType = MIL::IROperation::GetParameterType(this);
  v6 = MIL::IRValueType::AsTensorType(ParameterType);
  if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v59.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v59, "shape");
  v7 = MIL::IROperation::GetParameterType(this);
  v8 = MIL::IRValueType::AsTensorType(v7);
  if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v59.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v59, "shape");
  ParameterValue = MIL::IROperation::TryGetParameterValue(this, &v59, 0);
  v10 = ParameterValue;
  if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v59.__r_.__value_.__l.__data_);
    if (!v10)
    {
LABEL_34:
      MIL::ValidationResult::ValidationResult(a2);
      return;
    }
  }

  else if (!ParameterValue)
  {
    goto LABEL_34;
  }

  v11 = MIL::IRValue::AsTensor(v10);
  Data = MIL::IRTensorValue::GetDataView<int>(v11);
  v58 = v12;
  if ((*(*v8 + 16))(v8) >= 6)
  {
    LocationPtr = MIL::IRObject::GetLocationPtr(this);
    v14 = LocationPtr[1];
    v55 = *LocationPtr;
    v56 = v14;
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v53, "Rank of the shape parameter must be between 0 and 5 (inclusive) in reshape");
    MIL::ValidationResult::ValidationResult(a2, &v55, 315, v53);
    if (v54 < 0)
    {
      operator delete(v53[0]);
    }

    v15 = v56;
    if (!v56)
    {
      return;
    }

LABEL_59:
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    return;
  }

  if (!v58)
  {
    goto LABEL_62;
  }

  v16 = 0;
  v17 = Data;
  v18 = 4 * v58;
  do
  {
    v19 = *v17++;
    if (v19 == -1)
    {
      ++v16;
    }

    v18 -= 4;
  }

  while (v18);
  if (v16 >= 2)
  {
    v20 = MIL::IRObject::GetLocationPtr(this);
    v21 = v20[1];
    v51 = *v20;
    v52 = v21;
    if (v21)
    {
      atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v49, "Only 1 dimension can be set to -1 (infer size from other dims based off of the # of elements in the input tensor).");
    MIL::ValidationResult::ValidationResult(a2, &v51, 315, v49);
    if (v50 < 0)
    {
      operator delete(v49[0]);
    }

    v15 = v52;
    if (v52)
    {
      goto LABEL_59;
    }
  }

  else
  {
LABEL_62:
    if (!(*(*v6 + 104))(v6) || !MIL::Validation::IsZeroOutOfRangeForReshape(&Data, v6))
    {
      goto LABEL_34;
    }

    v22 = 4 * v58;
    v23 = Data + 4 * v58 + 4;
    while (v22)
    {
      v24 = *(Data - 4 + v22);
      v23 -= 4;
      v22 -= 4;
      if (!v24)
      {
        goto LABEL_36;
      }
    }

    v23 = Data;
LABEL_36:
    v25 = (v23 - Data) >> 2;
    v26 = MIL::IRObject::GetLocationPtr(this);
    v27 = v26[1];
    v47 = *v26;
    v48 = v27;
    if (v27)
    {
      atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::to_string(&v41, v25 + 1);
    v28 = std::string::insert(&v41, 0, "Input shape must be at least rank ");
    v29 = *&v28->__r_.__value_.__l.__data_;
    v42.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
    *&v42.__r_.__value_.__l.__data_ = v29;
    v28->__r_.__value_.__l.__size_ = 0;
    v28->__r_.__value_.__r.__words[2] = 0;
    v28->__r_.__value_.__r.__words[0] = 0;
    v30 = std::string::append(&v42, " for target dim ");
    v31 = *&v30->__r_.__value_.__l.__data_;
    v43.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
    *&v43.__r_.__value_.__l.__data_ = v31;
    v30->__r_.__value_.__l.__size_ = 0;
    v30->__r_.__value_.__r.__words[2] = 0;
    v30->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v40, v25);
    if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v32 = &v40;
    }

    else
    {
      v32 = v40.__r_.__value_.__r.__words[0];
    }

    if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v40.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v40.__r_.__value_.__l.__size_;
    }

    v34 = std::string::append(&v43, v32, size);
    v35 = *&v34->__r_.__value_.__l.__data_;
    v44.__r_.__value_.__r.__words[2] = v34->__r_.__value_.__r.__words[2];
    *&v44.__r_.__value_.__l.__data_ = v35;
    v34->__r_.__value_.__l.__size_ = 0;
    v34->__r_.__value_.__r.__words[2] = 0;
    v34->__r_.__value_.__r.__words[0] = 0;
    v36 = std::string::append(&v44, " to be set to 0 ");
    v37 = *&v36->__r_.__value_.__l.__data_;
    v59.__r_.__value_.__r.__words[2] = v36->__r_.__value_.__r.__words[2];
    *&v59.__r_.__value_.__l.__data_ = v37;
    v36->__r_.__value_.__l.__size_ = 0;
    v36->__r_.__value_.__r.__words[2] = 0;
    v36->__r_.__value_.__r.__words[0] = 0;
    v38 = std::string::append(&v59, "(copy the dim at the same index from x's shape).");
    v39 = *&v38->__r_.__value_.__l.__data_;
    v46 = v38->__r_.__value_.__r.__words[2];
    *__p = v39;
    v38->__r_.__value_.__l.__size_ = 0;
    v38->__r_.__value_.__r.__words[2] = 0;
    v38->__r_.__value_.__r.__words[0] = 0;
    MIL::ValidationResult::ValidationResult(a2, &v47, 315, __p);
    if (SHIBYTE(v46) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v59.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v44.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v40.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v43.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v42.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v41.__r_.__value_.__l.__data_);
    }

    v15 = v48;
    if (v48)
    {
      goto LABEL_59;
    }
  }
}

void sub_2182A350C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *__p, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, uint64_t a49, std::__shared_weak_count *a50)
{
  if (a47 < 0)
  {
    operator delete(__p);
  }

  if (*(v50 - 57) < 0)
  {
    operator delete(*(v50 - 80));
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a50)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a50);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios16::CustomValueTypeInference::ValueTypeInferenceReshape(MIL::IRConstantDimension **a1, void *a2, void *a3)
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

void sub_2182A368C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::Operators::Common::ios16::CustomValidators::ValidateReshapeLike@<X0>(MIL::Operators::Common::ios16::CustomValidators *this@<X0>, MIL::ValidationResult *a2@<X8>)
{
  memset(v15, 0, sizeof(v15));
  v16 = 1065353216;
  MIL::Validation::OpToTypeInferenceParams(this, v15, v13);
  if ((*(v13[0] + 16))(v13))
  {
    MIL::ValidationResult::~ValidationResult(v13);
    __p = 0;
    v10 = 0;
    v11 = 0;
    LocationPtr = MIL::IRObject::GetLocationPtr(this);
    v6 = LocationPtr[1];
    *&v8 = *LocationPtr;
    *(&v8 + 1) = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    if (*(&v8 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v8 + 1));
    }

    if ((*(v13[0] + 16))(v13))
    {
      MIL::ValidationResult::~ValidationResult(v13);
      MIL::ValidationResult::ValidationResult(a2);
    }

    else
    {
      MIL::MILResult::MILResult(a2, v13);
      *a2 = &unk_2829E9B70;
      *(a2 + 12) = v14;
      MIL::ValidationResult::~ValidationResult(v13);
    }

    if (__p)
    {
      v10 = __p;
      operator delete(__p);
    }
  }

  else
  {
    MIL::MILResult::MILResult(a2, v13);
    *a2 = &unk_2829E9B70;
    *(a2 + 12) = v14;
    MIL::ValidationResult::~ValidationResult(v13);
  }

  return std::__hash_table<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>>>::~__hash_table(v15);
}

void sub_2182A3848(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>>>::~__hash_table(v16 - 80);
  _Unwind_Resume(a1);
}

void anonymous namespace::ValueTypeInferenceReshapeLike(__int128 *a1@<X0>, void *a2@<X1>, _DWORD *a3@<X2>, uint64_t a4@<X3>, MIL::ValidationResult *a5@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "x");
  SingleValueType = MIL::ValueTypeInferenceUtils::GetSingleValueType(a2, __p);
  v11 = MIL::IRValueType::AsTensorType(SingleValueType);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  *a3 = (*(*v11 + 88))(v11);
  std::string::basic_string[abi:ne200100]<0>(__p, "ref_tensors");
  v12 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a2, &__p[0].__r_.__value_.__l.__data_);
  if (!v12)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "begins");
  v13 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a2, &__p[0].__r_.__value_.__l.__data_);
  if (!v13)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "ends");
  v14 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a2, &__p[0].__r_.__value_.__l.__data_);
  if (!v14)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "end_masks");
  if (std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a2, &__p[0].__r_.__value_.__l.__data_))
  {
    std::string::basic_string[abi:ne200100]<0>(&v138, "end_masks");
    v15 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a2, &v138.__r_.__value_.__l.__data_);
    if (!v15)
    {
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    v16 = v15 + 5;
    if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v138.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v16 = 0;
  }

  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  v17 = v12[5];
  v18 = v12[6];
  v19 = v18 - v17;
  if (v18 - v17 != v13[6] - v13[5] || v19 != v14[6] - v14[5] || v16 && v19 != v16[1] - *v16)
  {
    v137 = *a1;
    *a1 = 0;
    *(a1 + 1) = 0;
    std::string::basic_string[abi:ne200100]<0>(v135, "ref_tensors must be the same length as begins, ends, and end_masks.");
    MIL::ValidationResult::ValidationResult(a5, &v137, 315, v135);
    if (v136 < 0)
    {
      operator delete(v135[0]);
    }

    v55 = *(&v137 + 1);
    if (!*(&v137 + 1))
    {
      return;
    }

LABEL_75:
    std::__shared_weak_count::__release_shared[abi:ne200100](v55);
    return;
  }

  v97 = a1;
  v98 = v16;
  v95 = v11;
  v96 = a5;
  if (v18 == v17)
  {
LABEL_66:
    v48 = *a4;
    v49 = *(a4 + 8);
    v50 = 1;
    if (v48 == v49)
    {
      v51 = v96;
      v52 = v97;
      v53 = v95;
    }

    else
    {
      v51 = v96;
      v52 = v97;
      v53 = v95;
      do
      {
        v54 = (*(**v48 + 16))();
        if (v54)
        {
          v50 *= (*(*v54 + 48))(v54);
        }

        v48 += 8;
      }

      while (v48 != v49);
    }

    v56 = (*(*v53 + 96))(v53);
    HasUnknownDims = MIL::ValueTypeInferenceUtils::ShapeHasUnknownDims(v56);
    v58 = *v53;
    if (HasUnknownDims)
    {
      v59 = (*(v58 + 96))(v53);
      v60 = *v59;
      v61 = v59[1];
      v62 = 1;
      while (v60 != v61)
      {
        v63 = (*(**v60 + 16))();
        if (v63)
        {
          v62 *= (*(*v63 + 48))(v63);
        }

        v60 += 8;
      }

      if (v50 < v62)
      {
        v102 = *v52;
        *v52 = 0;
        *(v52 + 1) = 0;
        std::string::basic_string[abi:ne200100]<0>(v100, "Input has a greater number of elements than the output tensor can have.");
        MIL::ValidationResult::ValidationResult(v51, &v102, 315, v100);
        if (v101 < 0)
        {
          operator delete(v100[0]);
        }

        v55 = *(&v102 + 1);
        if (!*(&v102 + 1))
        {
          return;
        }

        goto LABEL_75;
      }
    }

    else
    {
      v64 = (*(v58 + 16))(v53);
      if (v64 != v50)
      {
        v65 = v64;
        std::ostringstream::basic_ostringstream[abi:ne200100](__p);
        v66 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "cannot reshape tensor of size ", 30);
        v67 = MEMORY[0x21CEAFB80](v66, v65);
        v68 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v67, " into a shape of different size ", 32);
        MEMORY[0x21CEAFB80](v68, v50);
        v105 = *v52;
        *v52 = 0;
        *(v52 + 1) = 0;
        std::stringbuf::str();
        MIL::ValidationResult::ValidationResult(v51, &v105, 315, &v103);
        if (v104 < 0)
        {
          operator delete(v103);
        }

        if (*(&v105 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v105 + 1));
        }

        __p[0].__r_.__value_.__r.__words[0] = *MEMORY[0x277D82828];
        *(__p[0].__r_.__value_.__r.__words + *(__p[0].__r_.__value_.__r.__words[0] - 24)) = *(MEMORY[0x277D82828] + 24);
        __p[0].__r_.__value_.__l.__size_ = MEMORY[0x277D82878] + 16;
        if (v108 < 0)
        {
          operator delete(v107);
        }

        __p[0].__r_.__value_.__l.__size_ = MEMORY[0x277D82868] + 16;
        std::locale::~locale(&__p[0].__r_.__value_.__r.__words[2]);
        std::ostream::~ostream();
        MEMORY[0x21CEAFDA0](&v109);
        return;
      }
    }

    MIL::ValidationResult::ValidationResult(v51);
    return;
  }

  v20 = 0;
  while (1)
  {
    ValueType = MIL::IRTypedArgument::GetValueType(*&v17[16 * v20]);
    v22 = MIL::IRValueType::AsTensorType(ValueType);
    v23 = (*(*v22 + 96))(v22);
    v24 = v13[5];
    if (v20 >= (v13[6] - v24) >> 4)
    {
      goto LABEL_165;
    }

    v25 = v23;
    Value = MIL::IRTypedArgument::GetValue(*&v24[16 * v20]);
    v27 = MIL::IRValue::GetScalar<int>(Value);
    v28 = v27;
    if (v27 < 0)
    {
      v28 = v27 + ((v25[1] - *v25) >> 3);
    }

    v29 = v14[5];
    __val = v20;
    if (v20 >= (v14[6] - v29) >> 4)
    {
LABEL_165:
      std::vector<MIL::IRDimension const*>::__throw_out_of_range[abi:ne200100]();
    }

    v30 = MIL::IRTypedArgument::GetValue(*&v29[16 * v20]);
    v31 = MIL::IRValue::GetScalar<int>(v30);
    v32 = v31;
    if (v31 < 0)
    {
      v32 = v31 + ((v25[1] - *v25) >> 3);
    }

    if (v98)
    {
      if (v20 >= (v98[1] - *v98) >> 4)
      {
        goto LABEL_165;
      }

      v33 = MIL::IRTypedArgument::GetValue(*(*v98 + 16 * v20));
      if (MIL::IRValue::GetScalar<BOOL>(v33))
      {
        if (((*(*v22 + 104))(v22) & 1) == 0)
        {
          v134 = *v97;
          *v97 = 0;
          *(v97 + 1) = 0;
          std::string::basic_string[abi:ne200100]<0>(v132, "If end_mask is true, the corresponding ref_tensor must have fixed rank.");
          MIL::ValidationResult::ValidationResult(v96, &v134, 315, v132);
          if (v133 < 0)
          {
            operator delete(v132[0]);
          }

          v55 = *(&v134 + 1);
          if (*(&v134 + 1))
          {
            goto LABEL_75;
          }

          return;
        }

        v32 = MIL::IRTensorValueType::Rank(v22);
      }
    }

    if (v28 < 0 || (*(*v22 + 104))(v22) && v28 >= MIL::IRTensorValueType::Rank(v22))
    {
      v131 = *v97;
      *v97 = 0;
      *(v97 + 1) = 0;
      std::to_string(&v138, v20);
      v69 = std::string::insert(&v138, 0, "begins[");
      v70 = *&v69->__r_.__value_.__l.__data_;
      __p[0].__r_.__value_.__r.__words[2] = v69->__r_.__value_.__r.__words[2];
      *&__p[0].__r_.__value_.__l.__data_ = v70;
      v69->__r_.__value_.__l.__size_ = 0;
      v69->__r_.__value_.__r.__words[2] = 0;
      v69->__r_.__value_.__r.__words[0] = 0;
      v71 = std::string::append(__p, "] is out of range");
      v72 = *&v71->__r_.__value_.__l.__data_;
      v130 = v71->__r_.__value_.__r.__words[2];
      v129 = v72;
      v71->__r_.__value_.__l.__size_ = 0;
      v71->__r_.__value_.__r.__words[2] = 0;
      v71->__r_.__value_.__r.__words[0] = 0;
      MIL::ValidationResult::ValidationResult(v96, &v131, 315, &v129);
      if (SHIBYTE(v130) < 0)
      {
        operator delete(v129);
      }

      if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p[0].__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v138.__r_.__value_.__l.__data_);
      }

      v55 = *(&v131 + 1);
      if (*(&v131 + 1))
      {
        goto LABEL_75;
      }

      return;
    }

    if (v32 < 0 || (*(*v22 + 104))(v22) && v32 > MIL::IRTensorValueType::Rank(v22))
    {
      v128 = *v97;
      *v97 = 0;
      *(v97 + 1) = 0;
      std::to_string(&v138, v20);
      v73 = std::string::insert(&v138, 0, "ends[");
      v74 = *&v73->__r_.__value_.__l.__data_;
      __p[0].__r_.__value_.__r.__words[2] = v73->__r_.__value_.__r.__words[2];
      *&__p[0].__r_.__value_.__l.__data_ = v74;
      v73->__r_.__value_.__l.__size_ = 0;
      v73->__r_.__value_.__r.__words[2] = 0;
      v73->__r_.__value_.__r.__words[0] = 0;
      v75 = std::string::append(__p, "] is out of range");
      v76 = *&v75->__r_.__value_.__l.__data_;
      v127 = v75->__r_.__value_.__r.__words[2];
      v126 = v76;
      v75->__r_.__value_.__l.__size_ = 0;
      v75->__r_.__value_.__r.__words[2] = 0;
      v75->__r_.__value_.__r.__words[0] = 0;
      MIL::ValidationResult::ValidationResult(v96, &v128, 315, &v126);
      if (SHIBYTE(v127) < 0)
      {
        operator delete(v126);
      }

      if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p[0].__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v138.__r_.__value_.__l.__data_);
      }

      v55 = *(&v128 + 1);
      if (*(&v128 + 1))
      {
        goto LABEL_75;
      }

      return;
    }

    if (v28 > v32)
    {
      v125 = *v97;
      *v97 = 0;
      *(v97 + 1) = 0;
      std::to_string(&v118, v20);
      v77 = std::string::insert(&v118, 0, "ends[");
      v78 = *&v77->__r_.__value_.__l.__data_;
      v119.__r_.__value_.__r.__words[2] = v77->__r_.__value_.__r.__words[2];
      *&v119.__r_.__value_.__l.__data_ = v78;
      v77->__r_.__value_.__l.__size_ = 0;
      v77->__r_.__value_.__r.__words[2] = 0;
      v77->__r_.__value_.__r.__words[0] = 0;
      v79 = std::string::append(&v119, "] is greater than begins[");
      v80 = *&v79->__r_.__value_.__l.__data_;
      v120.__r_.__value_.__r.__words[2] = v79->__r_.__value_.__r.__words[2];
      *&v120.__r_.__value_.__l.__data_ = v80;
      v79->__r_.__value_.__l.__size_ = 0;
      v79->__r_.__value_.__r.__words[2] = 0;
      v79->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v117, v20);
      if ((v117.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v81 = &v117;
      }

      else
      {
        v81 = v117.__r_.__value_.__r.__words[0];
      }

      if ((v117.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v117.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v117.__r_.__value_.__l.__size_;
      }

      v83 = std::string::append(&v120, v81, size);
      v84 = *&v83->__r_.__value_.__l.__data_;
      v121.__r_.__value_.__r.__words[2] = v83->__r_.__value_.__r.__words[2];
      *&v121.__r_.__value_.__l.__data_ = v84;
      v83->__r_.__value_.__l.__size_ = 0;
      v83->__r_.__value_.__r.__words[2] = 0;
      v83->__r_.__value_.__r.__words[0] = 0;
      v85 = std::string::append(&v121, "] ");
      v86 = *&v85->__r_.__value_.__l.__data_;
      v122.__r_.__value_.__r.__words[2] = v85->__r_.__value_.__r.__words[2];
      *&v122.__r_.__value_.__l.__data_ = v86;
      v85->__r_.__value_.__l.__size_ = 0;
      v85->__r_.__value_.__r.__words[2] = 0;
      v85->__r_.__value_.__r.__words[0] = 0;
      v87 = std::string::append(&v122, "(or begin_masks[");
      v88 = *&v87->__r_.__value_.__l.__data_;
      v138.__r_.__value_.__r.__words[2] = v87->__r_.__value_.__r.__words[2];
      *&v138.__r_.__value_.__l.__data_ = v88;
      v87->__r_.__value_.__l.__size_ = 0;
      v87->__r_.__value_.__r.__words[2] = 0;
      v87->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v116, v20);
      if ((v116.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v89 = &v116;
      }

      else
      {
        v89 = v116.__r_.__value_.__r.__words[0];
      }

      if ((v116.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v90 = HIBYTE(v116.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v90 = v116.__r_.__value_.__l.__size_;
      }

      v91 = std::string::append(&v138, v89, v90);
      v92 = *&v91->__r_.__value_.__l.__data_;
      __p[0].__r_.__value_.__r.__words[2] = v91->__r_.__value_.__r.__words[2];
      *&__p[0].__r_.__value_.__l.__data_ = v92;
      v91->__r_.__value_.__l.__size_ = 0;
      v91->__r_.__value_.__r.__words[2] = 0;
      v91->__r_.__value_.__r.__words[0] = 0;
      v93 = std::string::append(__p, "]).");
      v94 = *&v93->__r_.__value_.__l.__data_;
      v124 = v93->__r_.__value_.__r.__words[2];
      v123 = v94;
      v93->__r_.__value_.__l.__size_ = 0;
      v93->__r_.__value_.__r.__words[2] = 0;
      v93->__r_.__value_.__r.__words[0] = 0;
      MIL::ValidationResult::ValidationResult(v96, &v125, 315, &v123);
      if (SHIBYTE(v124) < 0)
      {
        operator delete(v123);
      }

      if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p[0].__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v116.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v116.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v138.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v122.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v122.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v121.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v121.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v117.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v117.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v120.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v120.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v119.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v119.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v118.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v118.__r_.__value_.__l.__data_);
      }

      v55 = *(&v125 + 1);
      if (*(&v125 + 1))
      {
        goto LABEL_75;
      }

      return;
    }

    if (v28)
    {
      break;
    }

LABEL_48:
    if (v28 < v32)
    {
      v35 = v28;
      while (1)
      {
        if (v35 >= (v25[1] - *v25) >> 3)
        {
          goto LABEL_160;
        }

        v36 = *(*v25 + 8 * v35);
        if ((*(*v36 + 24))(v36))
        {
          break;
        }

        v38 = *(a4 + 8);
        v37 = *(a4 + 16);
        if (v38 >= v37)
        {
          v40 = (v38 - *a4) >> 3;
          if ((v40 + 1) >> 61)
          {
            std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
          }

          v41 = v37 - *a4;
          v42 = v41 >> 2;
          if (v41 >> 2 <= (v40 + 1))
          {
            v42 = v40 + 1;
          }

          if (v41 >= 0x7FFFFFFFFFFFFFF8)
          {
            v43 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v43 = v42;
          }

          if (v43)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<std::string const*>>(a4, v43);
          }

          v44 = (8 * v40);
          *v44 = v36;
          v39 = 8 * v40 + 8;
          v45 = *(a4 + 8) - *a4;
          v46 = v44 - v45;
          memcpy(v44 - v45, *a4, v45);
          v47 = *a4;
          *a4 = v46;
          *(a4 + 8) = v39;
          *(a4 + 16) = 0;
          if (v47)
          {
            operator delete(v47);
          }
        }

        else
        {
          *v38 = v36;
          v39 = (v38 + 1);
        }

        *(a4 + 8) = v39;
        if (v32 <= ++v35)
        {
          goto LABEL_65;
        }
      }

      v112 = *v97;
      *v97 = 0;
      *(v97 + 1) = 0;
      std::string::basic_string[abi:ne200100]<0>(v110, "The destination shape cannot have unknown dimensions.");
      MIL::ValidationResult::ValidationResult(v96, &v112, 315, v110);
      if (v111 < 0)
      {
        operator delete(v110[0]);
      }

      v55 = *(&v112 + 1);
      if (*(&v112 + 1))
      {
        goto LABEL_75;
      }

      return;
    }

LABEL_65:
    ++v20;
    v17 = v12[5];
    if (__val + 1 >= (v12[6] - v17) >> 4)
    {
      goto LABEL_66;
    }
  }

  v34 = 0;
  while (1)
  {
    if (v34 >= (v25[1] - *v25) >> 3)
    {
LABEL_160:
      std::vector<MIL::IRDimension const*>::__throw_out_of_range[abi:ne200100]();
    }

    if ((*(**(*v25 + 8 * v34) + 32))(*(*v25 + 8 * v34)))
    {
      break;
    }

    if (v28 == ++v34)
    {
      goto LABEL_48;
    }
  }

  v115 = *v97;
  *v97 = 0;
  *(v97 + 1) = 0;
  std::string::basic_string[abi:ne200100]<0>(v113, "Variadic dimensions are not supported if they come before the selected dims in the shape of a ref_tensor.");
  MIL::ValidationResult::ValidationResult(v96, &v115, 315, v113);
  if (v114 < 0)
  {
    operator delete(v113[0]);
  }

  v55 = *(&v115 + 1);
  if (*(&v115 + 1))
  {
    goto LABEL_75;
  }
}

void sub_2182A4680(_Unwind_Exception *a1)
{
  if (*(v1 - 193) < 0)
  {
    operator delete(*(v1 - 216));
  }

  v3 = *(v1 - 184);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::CustomValueTypeInference::ValueTypeInferenceReshapeLike(MIL::UnknownLocation *a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = 0;
  v2 = 0;
  v3 = 0;
  MIL::UnknownLocation::Make(a1);
}

void sub_2182A4B7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  MIL::ValidationResult::~ValidationResult(&a9);
  MIL::ValidationResult::~ValidationResult(&a18);
  v20 = *(v18 - 80);
  if (v20)
  {
    *(v18 - 72) = v20;
    operator delete(v20);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::CustomValidators::ValidatePixelUnshuffle(MIL::Operators::Common::ios16::CustomValidators *this@<X0>, MIL::ValidationResult *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "x");
  ParameterType = MIL::IROperation::GetParameterType(this);
  v6 = MIL::IRValueType::AsTensorType(ParameterType);
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "downscale_factor");
  ParameterValue = MIL::IROperation::GetParameterValue(this);
  v8 = MIL::IRValue::GetScalar<unsigned int>(ParameterValue);
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  LocationPtr = MIL::IRObject::GetLocationPtr(this);
  v10 = LocationPtr[1];
  v11[0] = *LocationPtr;
  v11[1] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }
}

void sub_2182A4D04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  _Unwind_Resume(exception_object);
}

void anonymous namespace::ValidatePixelUnshuffleInputs(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t *a3@<X2>, MIL::ValidationResult *a4@<X8>)
{
  if (a2)
  {
    v7 = (*(*a1 + 96))(a1);
    if (v7[1] - *v7 <= 0x18uLL || (v8 = v7, v9 = (*(**(*v7 + 24) + 16))(*(*v7 + 24)), v8[1] - *v8 <= 0x10uLL))
    {
      std::vector<MIL::IRDimension const*>::__throw_out_of_range[abi:ne200100]();
    }

    v10 = v9;
    v11 = (*(**(*v8 + 16) + 16))(*(*v8 + 16));
    if (v10 && (*(*v10 + 48))(v10) % a2)
    {
      v12 = a3[1];
      v22 = *a3;
      v23 = v12;
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "width dimension is not divisible by downscale_factor.");
      MIL::ValidationResult::ValidationResult(a4, &v22, 315, __p);
      if (v21 < 0)
      {
        operator delete(__p[0]);
      }

      v13 = v23;
      if (!v23)
      {
        return;
      }

LABEL_25:
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      return;
    }

    if (v11 && (*(*v11 + 48))(v11) % a2)
    {
      v14 = a3[1];
      v18 = *a3;
      v19 = v14;
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      std::string::basic_string[abi:ne200100]<0>(v16, "height dimension is not divisible by downscale_factor.");
      MIL::ValidationResult::ValidationResult(a4, &v18, 315, v16);
      if (v17 < 0)
      {
        operator delete(v16[0]);
      }

      v13 = v19;
      if (v19)
      {
        goto LABEL_25;
      }
    }

    else
    {

      MIL::ValidationResult::ValidationResult(a4);
    }
  }

  else
  {
    v15 = a3[1];
    v26 = *a3;
    v27 = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v24, "downscale_factor must be greater than or equal to 1.");
    MIL::ValidationResult::ValidationResult(a4, &v26, 315, v24);
    if (v25 < 0)
    {
      operator delete(v24[0]);
    }

    v13 = v27;
    if (v27)
    {
      goto LABEL_25;
    }
  }
}

void sub_2182A4FCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
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

void MIL::Operators::Common::ios16::CustomValueTypeInference::ValueTypeInferencePixelUnshuffle(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&__p, "x");
  SingleValueType = MIL::ValueTypeInferenceUtils::GetSingleValueType(a3, &__p);
  v5 = MIL::IRValueType::AsTensorType(SingleValueType);
  if (v9 < 0)
  {
    operator delete(__p);
  }

  (*(*v5 + 88))(v5);
  (*(*v5 + 96))(v5);
  std::string::basic_string[abi:ne200100]<0>(&__p, "downscale_factor");
  SingleValue = MIL::ValueTypeInferenceUtils::GetSingleValue(a3, &__p);
  v7 = MIL::IRValue::GetScalar<unsigned int>(SingleValue);
  if (v9 < 0)
  {
    operator delete(__p);
  }

  MIL::UnknownLocation::Make(v7);
}

void sub_2182A5710(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  MIL::ValidationResult::~ValidationResult(&a33);
  MIL::ValidationResult::~ValidationResult(&a42);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::PixelUnshuffle::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2182A6910(_Unwind_Exception *a1)
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x218], 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 256), 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::Reshape::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2182A7A4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, void *a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57)
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

void MIL::Operators::Common::ios16::ReshapeLike::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2182A8D90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v67 = *(v65 - 88);
  *(v65 - 88) = 0;
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v65 - 120), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a64, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios17::BaseActivation::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2182A9E3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
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

void MIL::Operators::Common::ios17::BaseActivationWithAlpha::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2182AB06C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57)
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

void MIL::Operators::Common::ios17::BaseActivationWithAlphaBeta::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2182AC520(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
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

void MIL::Operators::Common::ios17::ClampedReLU::Make(uint64_t a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios17::BaseActivationWithAlphaBeta::Make();
}

void sub_2182ACB7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios17::LinearActivation::Make(uint64_t a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios17::BaseActivationWithAlphaBeta::Make();
}

void sub_2182ACC30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios17::ScaledTanh::Make(uint64_t a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios17::BaseActivationWithAlphaBeta::Make();
}

void sub_2182ACCE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios17::SigmoidHard::Make(uint64_t a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios17::BaseActivationWithAlphaBeta::Make();
}

void sub_2182ACD98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios17::ELU::Make(uint64_t a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios17::BaseActivationWithAlpha::Make();
}

void sub_2182ACE4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios17::LeakyReLU::Make(uint64_t a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios17::BaseActivationWithAlpha::Make();
}

void sub_2182ACF00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios17::ThresholdedReLU::Make(uint64_t a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios17::BaseActivationWithAlpha::Make();
}

void sub_2182ACFB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios17::PReLU::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2182ADF9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, void **a60, uint64_t a61, uint64_t a62, uint64_t a63)
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

void MIL::Operators::Common::ios17::SoftplusParametric::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2182AF858(_Unwind_Exception *a1)
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

void MIL::Operators::Common::ios17::Conv::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2182B2188(_Unwind_Exception *a1)
{
  v4 = *(v2 - 184);
  *(v2 - 184) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x558], 0);
  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 216), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x478], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios17::ConvTranspose::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2182B50F8(_Unwind_Exception *a1)
{
  v4 = *(v2 - 184);
  *(v2 - 184) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x568], 0);
  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 216), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x488], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios17::CustomValueTypeInference::ValueTypeInferenceElementwiseBinaryBoolOutput(MIL::IRUnknownDimension **a1, void *a2, void *a3)
{
  v3 = a2[1];
  v4[0] = *a2;
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios16::CustomValueTypeInference::ValueTypeInferenceElementwiseBinaryBoolOutput(a1, v4, a3);
}

void sub_2182B5D3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios17::ElementwiseBinary::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2182B6CBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v67 = a59;
  a59 = 0;
  if (v67)
  {
    (*(*v67 + 8))(v67);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a56, 0);
  v68 = *v64;
  *v64 = 0;
  if (v68)
  {
    (*(*v68 + 8))(v68);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v65 - 80), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a64, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios17::Add::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2182B8264(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v67 = a59;
  a59 = 0;
  if (v67)
  {
    (*(*v67 + 8))(v67);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a56, 0);
  v68 = *v64;
  *v64 = 0;
  if (v68)
  {
    (*(*v68 + 8))(v68);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v65 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a64, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios17::ElementwiseBinaryBoolOutput::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2182B9594(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, void *a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59)
{
  v62 = *(v60 - 80);
  *(v60 - 80) = 0;
  if (v62)
  {
    (*(*v62 + 8))(v62);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a51, 0);
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

void MIL::Operators::Common::ios17::ElementwiseBinaryLogical::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2182BA65C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53)
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

void MIL::Operators::Common::ios17::LogicalAnd::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2182BB75C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53)
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

void MIL::Operators::Common::ios17::LogicalOr::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2182BC86C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53)
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

void MIL::Operators::Common::ios17::LogicalXor::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2182BD97C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53)
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

void MIL::Operators::Common::ios17::Equal::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2182BEBDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, void *a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59)
{
  v62 = *(v60 - 64);
  *(v60 - 64) = 0;
  if (v62)
  {
    (*(*v62 + 8))(v62);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a51, 0);
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

void MIL::Operators::Common::ios17::Greater::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2182BFE84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, void *a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59)
{
  v62 = *(v60 - 64);
  *(v60 - 64) = 0;
  if (v62)
  {
    (*(*v62 + 8))(v62);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a51, 0);
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

void MIL::Operators::Common::ios17::GreaterEqual::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2182C112C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, void *a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59)
{
  v62 = *(v60 - 64);
  *(v60 - 64) = 0;
  if (v62)
  {
    (*(*v62 + 8))(v62);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a51, 0);
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

void MIL::Operators::Common::ios17::Less::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2182C23D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, void *a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59)
{
  v62 = *(v60 - 64);
  *(v60 - 64) = 0;
  if (v62)
  {
    (*(*v62 + 8))(v62);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a51, 0);
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

void MIL::Operators::Common::ios17::LessEqual::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2182C367C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, void *a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59)
{
  v62 = *(v60 - 64);
  *(v60 - 64) = 0;
  if (v62)
  {
    (*(*v62 + 8))(v62);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a51, 0);
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

void MIL::Operators::Common::ios17::NotEqual::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2182C4924(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, void *a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59)
{
  v62 = *(v60 - 64);
  *(v60 - 64) = 0;
  if (v62)
  {
    (*(*v62 + 8))(v62);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a51, 0);
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

void MIL::Operators::Common::ios17::FloorDiv::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2182C5DD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v67 = a59;
  a59 = 0;
  if (v67)
  {
    (*(*v67 + 8))(v67);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a56, 0);
  v68 = *v64;
  *v64 = 0;
  if (v68)
  {
    (*(*v68 + 8))(v68);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v65 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a64, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios17::Maximum::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2182C738C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v67 = a59;
  a59 = 0;
  if (v67)
  {
    (*(*v67 + 8))(v67);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a56, 0);
  v68 = *v64;
  *v64 = 0;
  if (v68)
  {
    (*(*v68 + 8))(v68);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v65 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a64, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios17::Minimum::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2182C8944(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v67 = a59;
  a59 = 0;
  if (v67)
  {
    (*(*v67 + 8))(v67);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a56, 0);
  v68 = *v64;
  *v64 = 0;
  if (v68)
  {
    (*(*v68 + 8))(v68);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v65 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a64, 0);
  _Unwind_Resume(a1);
}