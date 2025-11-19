MIL::Operators::Common::ios15::_anonymous_namespace_ *MIL::Operators::Common::ios15::anonymous namespace::GetCompatibleDim(MIL::Operators::Common::ios15::_anonymous_namespace_ *this, const MIL::IRDimension *a2, const MIL::IRDimension *a3)
{
  v3 = a2;
  v5 = (*(*this + 16))(this, a2, a3);
  v6 = (*(*v3 + 16))(v3);
  if (v5)
  {
    v7 = v6;
    if (v6)
    {
      v8 = (*(*v5 + 48))(v5);
      v3 = this;
      if (v8 != (*(*v7 + 48))(v7))
      {
        exception = __cxa_allocate_exception(0x48uLL);
        MIL::UnknownLocation::Make(exception);
      }
    }

    else
    {
      return this;
    }
  }

  return v3;
}

void sub_21819E27C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (a15)
  {
    (*(*a15 + 8))(a15);
  }

  __cxa_free_exception(v17);
  _Unwind_Resume(a1);
}

char *std::vector<MIL::IRDimension const*>::__insert_with_size[abi:ne200100]<std::__wrap_iter<MIL::IRDimension const**>,std::__wrap_iter<MIL::IRDimension const**>>(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (a5 > (v9 - v10) >> 3)
  {
    v11 = *a1;
    v12 = a5 + ((v10 - *a1) >> 3);
    if (v12 >> 61)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v13 = __dst - v11;
    v14 = v9 - v11;
    if (v14 >> 2 > v12)
    {
      v12 = v14 >> 2;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      v15 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 3;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::string const*>>(a1, v15);
    }

    v33 = 8 * v16;
    v34 = 8 * a5;
    v35 = (8 * v16);
    do
    {
      v36 = *v7++;
      *v35++ = v36;
      v34 -= 8;
    }

    while (v34);
    memcpy((v33 + 8 * a5), v5, *(a1 + 8) - v5);
    v37 = *a1;
    v38 = v33 + 8 * a5 + *(a1 + 8) - v5;
    *(a1 + 8) = v5;
    v39 = v5 - v37;
    v40 = (v33 - (v5 - v37));
    memcpy(v40, v37, v39);
    v41 = *a1;
    *a1 = v40;
    *(a1 + 8) = v38;
    *(a1 + 16) = 0;
    if (v41)
    {
      operator delete(v41);
    }

    return (8 * v16);
  }

  v17 = v10 - __dst;
  v18 = (v10 - __dst) >> 3;
  if (v18 >= a5)
  {
    v29 = &__dst[8 * a5];
    v30 = (v10 - 8 * a5);
    v31 = *(a1 + 8);
    while (v30 < v10)
    {
      v32 = *v30++;
      *v31++ = v32;
    }

    *(a1 + 8) = v31;
    if (v10 != v29)
    {
      memmove(&__dst[8 * a5], __dst, v10 - v29);
    }

    v28 = 8 * a5;
    v26 = v5;
    v27 = v7;
    goto LABEL_29;
  }

  v20 = a4 - &__src[v17];
  if (a4 != &__src[v17])
  {
    memmove(*(a1 + 8), &__src[v17], a4 - &__src[v17]);
  }

  v21 = (v10 + v20);
  *(a1 + 8) = v10 + v20;
  if (v18 >= 1)
  {
    v22 = &v5[8 * a5];
    v23 = v10 + v20;
    if (&v21[-8 * a5] < v10)
    {
      v24 = &v5[a4];
      v25 = &v5[a4 + -8 * a5];
      do
      {
        *(v24 - v7) = *(v25 - v7);
        v25 += 8;
        v24 += 8;
      }

      while (v25 - v7 < v10);
      v23 = v24 - v7;
    }

    *(a1 + 8) = v23;
    if (v21 != v22)
    {
      memmove(&v5[8 * a5], v5, v21 - v22);
    }

    if (v10 != v5)
    {
      v26 = v5;
      v27 = v7;
      v28 = v10 - v5;
LABEL_29:
      memmove(v26, v27, v28);
    }
  }

  return v5;
}

void std::__function::__func<MIL::Operators::Common::ios15::Const::Make(MIL::MILContext &,std::string)::$_0,std::allocator<MIL::Operators::Common::ios15::Const::Make(MIL::MILContext &,std::string)::$_0>,std::shared_ptr<MIL::IRValue const> ()(MIL::IROperation const&)>::operator()(MIL::IRObject *a1@<X1>, void *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "val");
  MIL::IRObject::TryGetAttributeSharedPtr(a1, __p, a2);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  if (!*a2)
  {
    exception = __cxa_allocate_exception(0x48uLL);
    LocationPtr = MIL::IRObject::GetLocationPtr(a1);
    v6 = LocationPtr[1];
    *&v7 = *LocationPtr;
    *(&v7 + 1) = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    (*(*a1 + 56))(a1);
    std::operator+<char>();
    MIL::ValidationError::ValidationError(exception, &v7, __p, 321);
  }
}

void sub_21819E6DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
    if ((v19 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else if (!v19)
  {
LABEL_8:
    v21 = *(v17 + 8);
    if (v21)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v21);
    }

    _Unwind_Resume(exception_object);
  }

  __cxa_free_exception(v18);
  goto LABEL_8;
}

uint64_t std::__function::__func<MIL::Operators::Common::ios15::Const::Make(MIL::MILContext &,std::string)::$_0,std::allocator<MIL::Operators::Common::ios15::Const::Make(MIL::MILContext &,std::string)::$_0>,std::shared_ptr<MIL::IRValue const> ()(MIL::IROperation const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<MIL::Operators::Common::ios15::Const::Make(MIL::MILContext &,std::string)::$_1,std::allocator<MIL::Operators::Common::ios15::Const::Make(MIL::MILContext &,std::string)::$_1>,void ()(MIL::IROperation &,std::shared_ptr<MIL::IRValue const>)>::operator()(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  v4 = a3[1];
  *a3 = 0;
  a3[1] = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, "val");
  *&v6 = v5;
  *(&v6 + 1) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  MIL::IRObject::SetAttribute(a2, __p, &v6);
  if (*(&v6 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v6 + 1));
  }

  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void sub_21819E8C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Operators::Common::ios15::Const::Make(MIL::MILContext &,std::string)::$_1,std::allocator<MIL::Operators::Common::ios15::Const::Make(MIL::MILContext &,std::string)::$_1>,void ()(MIL::IROperation &,std::shared_ptr<MIL::IRValue const>)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<MIL::Operators::Common::ios15::Const::Make(MIL::MILContext &,std::string)::$_2,std::allocator<MIL::Operators::Common::ios15::Const::Make(MIL::MILContext &,std::string)::$_2>,std::vector<MIL::IRValueType const*> ()(std::shared_ptr<MIL::MILContext> const&,std::shared_ptr<MIL::Location const>,std::unordered_map<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>> const&,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>> const&,std::vector<std::vector<MIL::IRValueType const*>> const&)>::operator()(uint64_t *a1@<X2>, void *a2@<X4>, void *a3@<X8>)
{
  v12 = *MEMORY[0x277D85DE8];
  v6 = *a1;
  v5 = a1[1];
  *a1 = 0;
  a1[1] = 0;
  std::string::basic_string[abi:ne200100]<0>(&__p, "val");
  v7 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a2, &__p);
  if ((v11[15] & 0x80000000) != 0)
  {
    operator delete(__p);
  }

  if (!v7)
  {
    exception = __cxa_allocate_exception(0x48uLL);
    *&v9 = v6;
    *(&v9 + 1) = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "Attribute val is undefined for const");
    MIL::ValidationError::ValidationError(exception, &v9, &__p, 315);
  }

  __p = (*(*v7[5] + 32))(v7[5]);
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  std::vector<MIL::IRValueType const*>::__init_with_size[abi:ne200100]<MIL::IRValueType const* const*,MIL::IRValueType const* const*>(a3, &__p, v11, 1uLL);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void sub_21819EB34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
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

uint64_t std::__function::__func<MIL::Operators::Common::ios15::Const::Make(MIL::MILContext &,std::string)::$_2,std::allocator<MIL::Operators::Common::ios15::Const::Make(MIL::MILContext &,std::string)::$_2>,std::vector<MIL::IRValueType const*> ()(std::shared_ptr<MIL::MILContext> const&,std::shared_ptr<MIL::Location const>,std::unordered_map<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>> const&,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>> const&,std::vector<std::vector<MIL::IRValueType const*>> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<MIL::Operators::Common::ios15::Const::Make(MIL::MILContext &,std::string)::$_3,std::allocator<MIL::Operators::Common::ios15::Const::Make(MIL::MILContext &,std::string)::$_3>,std::vector<std::shared_ptr<MIL::IRValue const>> ()(std::shared_ptr<MIL::MILContext> const&,std::shared_ptr<MIL::Location const>,std::unordered_map<std::string,std::vector<std::shared_ptr<MIL::IRValue const>>> const&,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>> const&,std::vector<std::shared_ptr<MIL::IRBlock>> const&,int)>::operator()(uint64_t *a1@<X2>, void *a2@<X4>, void *a3@<X8>)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = *a1;
  v5 = a1[1];
  *a1 = 0;
  a1[1] = 0;
  std::string::basic_string[abi:ne200100]<0>(&__p, "val");
  v7 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a2, &__p);
  if ((v13[7] & 0x80000000) != 0)
  {
    operator delete(__p);
  }

  if (!v7)
  {
    exception = __cxa_allocate_exception(0x48uLL);
    *&v10 = v6;
    *(&v10 + 1) = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "Attribute val is undefined for const");
    MIL::ValidationError::ValidationError(exception, &v10, &__p, 315);
  }

  v8 = v7[6];
  __p = v7[5];
  v12 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  std::vector<std::shared_ptr<MIL::IRValue const>>::__init_with_size[abi:ne200100]<std::shared_ptr<MIL::IRValue const> const*,std::shared_ptr<MIL::IRValue const> const*>(a3, &__p, v13, 1uLL);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void sub_21819EDD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
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

uint64_t std::__function::__func<MIL::Operators::Common::ios15::Const::Make(MIL::MILContext &,std::string)::$_3,std::allocator<MIL::Operators::Common::ios15::Const::Make(MIL::MILContext &,std::string)::$_3>,std::vector<std::shared_ptr<MIL::IRValue const>> ()(std::shared_ptr<MIL::MILContext> const&,std::shared_ptr<MIL::Location const>,std::unordered_map<std::string,std::vector<std::shared_ptr<MIL::IRValue const>>> const&,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>> const&,std::vector<std::shared_ptr<MIL::IRBlock>> const&,int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void MIL::Operators::Common::ios15::Cond::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_21819F1D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, __int16 a28, char a29, char a30)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  if (a20 < 0)
  {
    operator delete(__p);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a21, 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a27, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::Select::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2181A0010(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54)
{
  v57 = *(v55 - 112);
  *(v55 - 112) = 0;
  if (v57)
  {
    (*(*v57 + 8))(v57);
  }

  v58 = *v54;
  *v54 = 0;
  if (v58)
  {
    (*(*v58 + 8))(v58);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v55 - 120), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a54, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::WhileLoop::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2181A0CF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  if (a20 < 0)
  {
    operator delete(__p);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v54 - 152), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a54, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::CustomValidators::ValidateBatchNorm(MIL::Operators::Common::ios15::CustomValidators *this@<X0>, MIL::ValidationResult *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "x");
  ParameterType = MIL::IROperation::GetParameterType(this);
  v6 = MIL::IRValueType::AsTensorType(ParameterType);
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = 0;
  while (1)
  {
    v8 = off_2782363A0[v7];
    std::string::basic_string[abi:ne200100]<0>(__p, v8);
    IsParameterSet = MIL::IROperation::IsParameterSet(this, __p);
    v10 = IsParameterSet;
    if ((v20 & 0x80000000) == 0)
    {
      break;
    }

    operator delete(__p[0]);
    if (v10)
    {
      goto LABEL_8;
    }

LABEL_16:
    if (++v7 == 4)
    {
      MIL::ValidationResult::ValidationResult(a2);
      return;
    }
  }

  if (!IsParameterSet)
  {
    goto LABEL_16;
  }

LABEL_8:
  std::string::basic_string[abi:ne200100]<0>(&v17, v8);
  v11 = MIL::IROperation::GetParameterType(this);
  v12 = MIL::IRValueType::AsTensorType(v11);
  std::string::basic_string[abi:ne200100]<0>(v15, "x");
  std::string::basic_string[abi:ne200100]<0>(&v13, v8);
  MIL::Validation::VerifyDimSizeIsNumChannels(v6, v12, v15, this, 0, __p);
  if (v14 < 0)
  {
    operator delete(v13);
  }

  if (v16 < 0)
  {
    operator delete(v15[0]);
  }

  if (v18 < 0)
  {
    operator delete(v17);
  }

  if ((*(__p[0] + 2))(__p))
  {
    MIL::ValidationResult::~ValidationResult(__p);
    goto LABEL_16;
  }

  MIL::MILResult::MILResult(a2, __p);
  *a2 = &unk_2829E9B70;
  *(a2 + 12) = v21;
  MIL::ValidationResult::~ValidationResult(__p);
}

void MIL::Operators::Common::ios15::BatchNorm::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2181A2D38(_Unwind_Exception *a1)
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 80), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x3E8], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::InstanceNorm::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2181A4BBC(_Unwind_Exception *a1)
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 80), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x2C8], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::L2Norm::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2181A609C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, void *a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v69 = *(v67 - 96);
  *(v67 - 96) = 0;
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v67 - 72), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a66, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::LayerNorm::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2181A774C(_Unwind_Exception *a1)
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 136), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 256), 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::LocalResponseNorm::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2181A8F34(_Unwind_Exception *a1)
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 72), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x278], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::CustomValidators::ValidateBasePool(MIL::Operators::Common::ios15::CustomValidators *this@<X0>, MIL::ValidationResult *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(&v75, "x");
  ParameterType = MIL::IROperation::GetParameterType(this);
  v6 = MIL::IRValueType::AsTensorType(ParameterType);
  if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v75.__r_.__value_.__l.__data_);
  }

  if (((*(*v6 + 104))(v6) & 1) == 0)
  {
    MIL::ValidationResult::ValidationResult(a2);
    return;
  }

  v7 = MIL::IRTensorValueType::Rank(v6);
  std::string::basic_string[abi:ne200100]<0>(&v75, "pad");
  ParameterValue = MIL::IROperation::GetParameterValue(this);
  v9 = MIL::IRValue::AsTensor(ParameterValue);
  v10 = v7 - 2;
  if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v75.__r_.__value_.__l.__data_);
  }

  v11 = (*(*v9 + 32))(v9);
  if ((*(*v11 + 16))(v11) != 2 * v10)
  {
    LocationPtr = MIL::IRObject::GetLocationPtr(this);
    v22 = LocationPtr[1];
    v73 = *LocationPtr;
    v74 = v22;
    if (v22)
    {
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v71, "Attribute 'pad' invalid: should be length of 2 * spatial rank");
    MIL::ValidationResult::ValidationResult(a2, &v73, 315, v71);
    if (v72 < 0)
    {
      operator delete(v71[0]);
    }

    if (v74)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v74);
    }

    return;
  }

  v12 = MIL::IRValue::AsTensor(v9);
  Data = MIL::IRTensorValue::GetDataView<int>(v12);
  v15 = Data;
  v16 = v14;
  if (!v14)
  {
LABEL_11:
    std::string::basic_string[abi:ne200100]<0>(&v69, "pad_type");
    v19 = MIL::IROperation::GetParameterValue(this);
    MIL::IRValue::GetScalar<std::string>(v19, &v75);
    if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v69.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
    {
      if (v75.__r_.__value_.__l.__size_ != 5)
      {
        goto LABEL_38;
      }

      v20 = v75.__r_.__value_.__r.__words[0];
      if (!v16)
      {
        goto LABEL_38;
      }
    }

    else
    {
      if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) != 5)
      {
        goto LABEL_38;
      }

      v20 = &v75;
      if (!v16)
      {
        goto LABEL_38;
      }
    }

    if (!(LODWORD(v20->__r_.__value_.__l.__data_) ^ 0x696C6176 | v20->__r_.__value_.__s.__data_[4] ^ 0x64))
    {
      v31 = 4 * v16;
      v32 = v15;
      while (!*v32)
      {
        ++v32;
        v31 -= 4;
        if (!v31)
        {
          goto LABEL_38;
        }
      }

      v45 = MIL::IRObject::GetLocationPtr(this);
      v46 = v45[1];
      v64 = *v45;
      v65 = v46;
      if (v46)
      {
        atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      std::string::basic_string[abi:ne200100]<0>(v62, "Pad values must be 0s for 'valid' pad type.");
      MIL::ValidationResult::ValidationResult(a2, &v64, 315, v62);
      if (v63 < 0)
      {
        operator delete(v62[0]);
      }

      v42 = v65;
      if (v65)
      {
LABEL_79:
        std::__shared_weak_count::__release_shared[abi:ne200100](v42);
      }

      goto LABEL_90;
    }

LABEL_38:
    std::string::basic_string[abi:ne200100]<0>(&v69, "ceil_mode");
    IsParameterSet = MIL::IROperation::IsParameterSet(this, &v69.__r_.__value_.__l.__data_);
    v34 = IsParameterSet;
    if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v69.__r_.__value_.__l.__data_);
      if (!v34)
      {
        goto LABEL_89;
      }
    }

    else if (!IsParameterSet)
    {
      goto LABEL_89;
    }

    std::string::basic_string[abi:ne200100]<0>(&v69, "ceil_mode");
    v35 = MIL::IROperation::GetParameterValue(this);
    v36 = MIL::IRValue::GetScalar<BOOL>(v35);
    if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v69.__r_.__value_.__l.__data_);
    }

    if (v10)
    {
      v37 = v36;
    }

    else
    {
      v37 = 0;
    }

    if (v37 == 1)
    {
      v38 = v15 + 1;
      v39 = v10;
      do
      {
        if (*(v38 - 1) != *v38)
        {
          v47 = MIL::IRObject::GetLocationPtr(this);
          v48 = v47[1];
          v60 = *v47;
          v61 = v48;
          if (v48)
          {
            atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          std::string::basic_string[abi:ne200100]<0>(v58, "Padding must be symmetric if ceil_mode is True");
          MIL::ValidationResult::ValidationResult(a2, &v60, 315, v58);
          if (v59 < 0)
          {
            operator delete(v58[0]);
          }

          v42 = v61;
          if (!v61)
          {
            goto LABEL_90;
          }

          goto LABEL_79;
        }

        v38 += 2;
        --v39;
      }

      while (v39);
      if (v10 < 3)
      {
        goto LABEL_58;
      }

      v40 = MIL::IRObject::GetLocationPtr(this);
      v41 = v40[1];
      v56 = *v40;
      v57 = v41;
      if (v41)
      {
        atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "ceil_mode must be False when there are 3 spatial dimensions (3D pool)");
      MIL::ValidationResult::ValidationResult(a2, &v56, 315, __p);
      if (v55 < 0)
      {
        operator delete(__p[0]);
      }

      v42 = v57;
      if (v57)
      {
        goto LABEL_79;
      }

      goto LABEL_90;
    }

LABEL_58:
    if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
    {
      if (v75.__r_.__value_.__l.__size_ != 4)
      {
        goto LABEL_83;
      }

      v43 = v75.__r_.__value_.__r.__words[0];
    }

    else
    {
      if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) != 4)
      {
        goto LABEL_83;
      }

      v43 = &v75;
    }

    if (LODWORD(v43->__r_.__value_.__l.__data_) == 1701667187)
    {
      if (v36)
      {
        goto LABEL_84;
      }

      goto LABEL_89;
    }

LABEL_83:
    if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v75, "same_lower") & v36)
    {
LABEL_84:
      std::operator+<char>();
      v49 = MIL::IRObject::GetLocationPtr(this);
      v50 = v49[1];
      v52 = *v49;
      v53 = v50;
      if (v50)
      {
        atomic_fetch_add_explicit(&v50->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v51, v69.__r_.__value_.__l.__data_, v69.__r_.__value_.__l.__size_);
      }

      else
      {
        v51 = v69;
      }

      MIL::ValidationResult::ValidationResult(a2, &v52, 315, &v51);
      if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v51.__r_.__value_.__l.__data_);
      }

      if (v53)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v53);
      }

      if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v69.__r_.__value_.__l.__data_);
      }

      goto LABEL_90;
    }

LABEL_89:
    MIL::ValidationResult::ValidationResult(a2);
LABEL_90:
    if ((SHIBYTE(v75.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

    v44 = v75.__r_.__value_.__r.__words[0];
    goto LABEL_92;
  }

  v17 = 4 * v14;
  v18 = Data;
  while (*v18 < 0x8000)
  {
    ++v18;
    v17 -= 4;
    if (!v17)
    {
      goto LABEL_11;
    }
  }

  std::to_string(&v69, 0x7FFF);
  v23 = std::string::insert(&v69, 0, "At least one of pad values exceed maximum allowed values (");
  v24 = *&v23->__r_.__value_.__l.__data_;
  v75.__r_.__value_.__r.__words[2] = v23->__r_.__value_.__r.__words[2];
  *&v75.__r_.__value_.__l.__data_ = v24;
  v23->__r_.__value_.__l.__size_ = 0;
  v23->__r_.__value_.__r.__words[2] = 0;
  v23->__r_.__value_.__r.__words[0] = 0;
  v25 = std::string::append(&v75, ").");
  v26 = v25->__r_.__value_.__r.__words[0];
  size = v25->__r_.__value_.__l.__size_;
  v70[0] = v25->__r_.__value_.__r.__words[2];
  *(v70 + 3) = *(&v25->__r_.__value_.__r.__words[2] + 3);
  v28 = SHIBYTE(v25->__r_.__value_.__r.__words[2]);
  v25->__r_.__value_.__l.__size_ = 0;
  v25->__r_.__value_.__r.__words[2] = 0;
  v25->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v75.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v69.__r_.__value_.__l.__data_);
  }

  v29 = MIL::IRObject::GetLocationPtr(this);
  v30 = v29[1];
  v67 = *v29;
  v68 = v30;
  if (v30)
  {
    atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v28 < 0)
  {
    std::string::__init_copy_ctor_external(&v66, v26, size);
  }

  else
  {
    v66.__r_.__value_.__r.__words[0] = v26;
    v66.__r_.__value_.__l.__size_ = size;
    LODWORD(v66.__r_.__value_.__r.__words[2]) = v70[0];
    *(&v66.__r_.__value_.__r.__words[2] + 3) = *(v70 + 3);
    *(&v66.__r_.__value_.__s + 23) = v28;
  }

  MIL::ValidationResult::ValidationResult(a2, &v67, 315, &v66);
  if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v66.__r_.__value_.__l.__data_);
  }

  if (v68)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v68);
  }

  if (v28 < 0)
  {
    v44 = v26;
LABEL_92:
    operator delete(v44);
  }
}

void sub_2181A9C20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::__shared_weak_count *a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, uint64_t a47, uint64_t a48)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  if (*(v48 - 145) < 0)
  {
    operator delete(*(v48 - 168));
  }

  if (*(v48 - 73) < 0)
  {
    operator delete(*(v48 - 96));
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios15::CustomValidators::ValidateL2Pool(MIL::Operators::Common::ios15::CustomValidators *this@<X0>, MIL::ValidationResult *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, "x");
  ParameterType = MIL::IROperation::GetParameterType(this);
  v6 = MIL::IRValueType::AsTensorType(ParameterType);
  if (v14 < 0)
  {
    operator delete(__p);
  }

  if ((*(*v6 + 104))(v6) && MIL::IRTensorValueType::Rank(v6) == 5)
  {
    LocationPtr = MIL::IRObject::GetLocationPtr(this);
    v8 = LocationPtr[1];
    v11 = *LocationPtr;
    v12 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v9, "Unsupported 3D Pooling type.");
    MIL::ValidationResult::ValidationResult(a2, &v11, 315, v9);
    if (v10 < 0)
    {
      operator delete(v9[0]);
    }

    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }
  }

  else
  {
    MIL::Operators::Common::ios15::CustomValidators::ValidateBasePool(this, a2);
  }
}

void sub_2181A9ED4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::__shared_weak_count *a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
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

void MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceBasePool(MIL::IRConstantDimension **a1, uint64_t a2, void *a3)
{
  v50[1] = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&v48, "x");
  SingleValueType = MIL::ValueTypeInferenceUtils::GetSingleValueType(a3, &v48);
  v6 = MIL::IRValueType::AsTensorType(SingleValueType);
  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v48.__r_.__value_.__l.__data_);
  }

  (*(*v6 + 88))(v6);
  v7 = (*(*v6 + 96))(v6);
  std::string::basic_string[abi:ne200100]<0>(&v48, "pad");
  SingleValue = MIL::ValueTypeInferenceUtils::GetSingleValue(a3, &v48);
  v9 = MIL::IRValue::AsTensor(SingleValue);
  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v48.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "pad_type");
  v10 = MIL::ValueTypeInferenceUtils::GetSingleValue(a3, &__p);
  MIL::IRValue::GetScalar<std::string>(v10, &v48);
  if (SHIBYTE(v47) < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "ceil_mode");
  v11 = MIL::ValueTypeInferenceUtils::GetSingleValue(a3, &__p);
  v12 = MIL::IRValue::GetScalar<BOOL>(v11);
  if (SHIBYTE(v47) < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "strides");
  v13 = MIL::ValueTypeInferenceUtils::GetSingleValue(a3, &__p);
  v14 = MIL::IRValue::AsTensor(v13);
  if (SHIBYTE(v47) < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "kernel_sizes");
  v15 = MIL::ValueTypeInferenceUtils::GetSingleValue(a3, &__p);
  v16 = MIL::IRValue::AsTensor(v15);
  Data = MIL::IRTensorValue::GetDataView<int>(v16);
  v19 = v18;
  v37 = v7;
  if (SHIBYTE(v47) < 0)
  {
    operator delete(__p);
  }

  v20 = v12;
  __p = 0;
  v46 = 0;
  v47 = 0;
  std::vector<std::string const*>::reserve(&__p, v19);
  if (v19)
  {
    v21 = 4 * v19;
    do
    {
      v22 = MIL::IRConstantDimension::Make(*a1, *Data);
      v23 = v46;
      if (v46 >= v47)
      {
        v25 = (v46 - __p) >> 3;
        if ((v25 + 1) >> 61)
        {
          std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
        }

        v26 = (v47 - __p) >> 2;
        if (v26 <= v25 + 1)
        {
          v26 = v25 + 1;
        }

        if (v47 - __p >= 0x7FFFFFFFFFFFFFF8)
        {
          v27 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v27 = v26;
        }

        if (v27)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::string const*>>(&__p, v27);
        }

        v28 = (8 * v25);
        *v28 = v22;
        v24 = 8 * v25 + 8;
        v29 = v28 - (v46 - __p);
        memcpy(v29, __p, v46 - __p);
        v30 = __p;
        __p = v29;
        v46 = v24;
        v47 = 0;
        if (v30)
        {
          operator delete(v30);
        }
      }

      else
      {
        *v46 = v22;
        v24 = (v23 + 8);
      }

      v46 = v24;
      ++Data;
      v21 -= 4;
    }

    while (v21);
  }

  v31 = MIL::IRTensorValue::GetDataView<int>(v14);
  memset(v44, 0, sizeof(v44));
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(v44, v31, v31 + 4 * v32, (4 * v32) >> 2);
  v33 = MIL::IRTensorValue::GetDataView<int>(v9);
  memset(v43, 0, sizeof(v43));
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(v43, v33, v33 + 4 * v34, (4 * v34) >> 2);
  v35 = *a1;
  v36 = (v37[1] - *v37) >> 3;
  MIL::ValueTypeInferenceUtils::SliceShape(v37, 2uLL, v36, &v38);
  std::vector<int>::vector[abi:ne200100](&v49, v36 - 2);
  MIL::ValueTypeInferenceUtils::GetSpatialDimensionsOutShape(v35, &v38, &__p, v44, &v49, &v48, v43, v20, &v41);
  if (v49)
  {
    *(&v49 + 1) = v49;
    operator delete(v49);
  }

  if (v38)
  {
    __dst = v38;
    operator delete(v38);
  }

  v49 = **v37;
  __dst = 0;
  v40 = 0;
  v38 = 0;
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const* const*,MIL::IRDimension const* const*>(&v38, &v49, v50, 2uLL);
  std::vector<MIL::IRDimension const*>::__insert_with_size[abi:ne200100]<std::__wrap_iter<MIL::IRDimension const* const*>,std::__wrap_iter<MIL::IRDimension const* const*>>(&v38, __dst, v41, v42, (v42 - v41) >> 3);
  MIL::IRTensorValueType::MakeWithShape();
}

void sub_2181AA3D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
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

  if (a24)
  {
    operator delete(a24);
  }

  if (a27)
  {
    operator delete(a27);
  }

  if (*(v32 - 129) < 0)
  {
    operator delete(*(v32 - 152));
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios15::BasePool::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2181ABC14(_Unwind_Exception *a1)
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 88), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x2F0], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::BaseAvgPool::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2181ADBE0(_Unwind_Exception *a1)
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 88), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x300], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::AvgPool::Make(uint64_t a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios15::BaseAvgPool::Make();
}

void sub_2181AE4A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::L2Pool::Make(uint64_t a1, void *a2)
{
  v2[4] = *MEMORY[0x277D85DE8];
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v2[0] = &unk_2829EA4C8;
  v2[1] = MIL::Operators::Common::ios15::CustomValidators::ValidateL2Pool;
  v2[3] = v2;
  MIL::Operators::Common::ios15::BasePool::Make();
}

void sub_2181AE580(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::MaxPool::Make(uint64_t a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios15::BasePool::Make();
}

void sub_2181AE634(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2181AE6B4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

_BYTE *std::pair<std::string const,std::shared_ptr<MIL::IRParameter>>::pair[abi:ne200100]<char const(&)[29],std::unique_ptr<MIL::IRParameter>,0>(_BYTE *a1, char *a2, uint64_t *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::shared_ptr<MIL::IRParameter>::shared_ptr[abi:ne200100]<MIL::IRParameter,std::default_delete<MIL::IRParameter>,0>(v5 + 3, a3);
  return a1;
}

void sub_2181AE79C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios15::CustomValidators::ValidateRandomBernoulli(MIL::Operators::Common::ios15::CustomValidators *this@<X0>, MIL::ValidationResult *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "shape");
  ParameterType = MIL::IROperation::GetParameterType(this);
  v6 = MIL::IRValueType::AsTensorType(ParameterType);
  v7 = (*(*v6 + 96))(v6);
  v15 = 0;
  v16 = 0;
  v17 = 0;
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&v15, *v7, v7[1], (v7[1] - *v7) >> 3);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  v8 = (*(*this + 56))(this);
  std::string::basic_string[abi:ne200100]<0>(__p, "shape");
  LocationPtr = MIL::IRObject::GetLocationPtr(this);
  v10 = LocationPtr[1];
  v11 = *LocationPtr;
  v12 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  MIL::ValueTypeInferenceUtils::EnsureShapeIsConstant(&v15, v8, &v11, a2);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  if (v15)
  {
    v16 = v15;
    operator delete(v15);
  }
}

void sub_2181AE900(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios15::CustomValidators::ValidateRandomCategorical(MIL::Operators::Common::ios15::CustomValidators *this@<X0>, MIL::ValidationResult *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "x");
  ParameterType = MIL::IROperation::GetParameterType(this);
  v6 = MIL::IRValueType::AsTensorType(ParameterType);
  v7 = (*(*v6 + 96))(v6);
  v15 = 0;
  v16 = 0;
  v17 = 0;
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&v15, *v7, v7[1], (v7[1] - *v7) >> 3);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  v8 = (*(*this + 56))(this);
  std::string::basic_string[abi:ne200100]<0>(__p, "x");
  LocationPtr = MIL::IRObject::GetLocationPtr(this);
  v10 = LocationPtr[1];
  v11 = *LocationPtr;
  v12 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  MIL::ValueTypeInferenceUtils::EnsureShapeIsConstant(&v15, v8, &v11, a2);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  if (v15)
  {
    v16 = v15;
    operator delete(v15);
  }
}

void sub_2181AEAA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios15::CustomValidators::ValidateRandomNormal(MIL::Operators::Common::ios15::CustomValidators *this@<X0>, MIL::ValidationResult *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "shape");
  ParameterType = MIL::IROperation::GetParameterType(this);
  v6 = MIL::IRValueType::AsTensorType(ParameterType);
  v7 = (*(*v6 + 96))(v6);
  v15 = 0;
  v16 = 0;
  v17 = 0;
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&v15, *v7, v7[1], (v7[1] - *v7) >> 3);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  v8 = (*(*this + 56))(this);
  std::string::basic_string[abi:ne200100]<0>(__p, "shape");
  LocationPtr = MIL::IRObject::GetLocationPtr(this);
  v10 = LocationPtr[1];
  v11 = *LocationPtr;
  v12 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  MIL::ValueTypeInferenceUtils::EnsureShapeIsConstant(&v15, v8, &v11, a2);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  if (v15)
  {
    v16 = v15;
    operator delete(v15);
  }
}

void sub_2181AEC50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios15::CustomValidators::ValidateRandomUniform(MIL::Operators::Common::ios15::CustomValidators *this@<X0>, MIL::ValidationResult *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "shape");
  ParameterType = MIL::IROperation::GetParameterType(this);
  v6 = MIL::IRValueType::AsTensorType(ParameterType);
  v7 = (*(*v6 + 96))(v6);
  v15 = 0;
  v16 = 0;
  v17 = 0;
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&v15, *v7, v7[1], (v7[1] - *v7) >> 3);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  v8 = (*(*this + 56))(this);
  std::string::basic_string[abi:ne200100]<0>(__p, "shape");
  LocationPtr = MIL::IRObject::GetLocationPtr(this);
  v10 = LocationPtr[1];
  v11 = *LocationPtr;
  v12 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  MIL::ValueTypeInferenceUtils::EnsureShapeIsConstant(&v15, v8, &v11, a2);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  if (v15)
  {
    v16 = v15;
    operator delete(v15);
  }
}

void sub_2181AEDF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceRandomBernoulli(MIL::IRConstantDimension **a1, uint64_t *a2, void *a3)
{
  v5 = a2[1];
  v8[0] = *a2;
  v8[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(v7, "random_bernoulli");
  std::string::basic_string[abi:ne200100]<0>(__p, "prob");
}

void sub_2181AEF10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios15::CustomValueTypeInference::anonymous namespace::ValueTypeInferenceRandomOpHelper(MIL::IRConstantDimension **a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v28[4] = *MEMORY[0x277D85DE8];
  SingleValueType = MIL::ValueTypeInferenceUtils::GetSingleValueType(a3, a5);
  v10 = MIL::IRValueType::AsTensorType(SingleValueType);
  (*(*v10 + 88))(v10);
  std::string::basic_string[abi:ne200100]<0>(__p, "shape");
  v11 = MIL::ValueTypeInferenceUtils::GetSingleValueType(a3, __p);
  v12 = MIL::IRValueType::AsTensorType(v11);
  v13 = (*(*v12 + 96))(v12);
  memset(v28, 0, 24);
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(v28, *v13, v13[1], (v13[1] - *v13) >> 3);
  if (v26 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(&v23, "shape");
  v14 = a2[1];
  v21 = *a2;
  v22 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  MIL::ValueTypeInferenceUtils::EnsureShapeIsConstant(v28, a4, &v21, __p);
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  if (v24 < 0)
  {
    operator delete(v23);
  }

  if (MIL::ValidationResult::IsGood(__p))
  {
    std::string::basic_string[abi:ne200100]<0>(&v23, "shape");
    SingleValue = MIL::ValueTypeInferenceUtils::TryGetSingleValue(a3, &v23);
    if (v24 < 0)
    {
      operator delete(v23);
    }

    v16 = a2[1];
    v18[0] = *a2;
    v18[1] = v16;
    if (v16)
    {
      atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
    }

    MIL::ValueTypeInferenceUtils::GetRandomOpOutShape(SingleValue, a1, v28, v18, &v23);
    MIL::IRTensorValueType::MakeWithShape();
  }

  exception = __cxa_allocate_exception(0x48uLL);
  MIL::MILResult::MILResult(v19, __p);
  v19[0].__r_.__value_.__r.__words[0] = &unk_2829E9B70;
  v20 = v27;
  MIL::ValidationError::ValidationError(exception, v19);
}

void sub_2181AF220(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  MIL::ValidationResult::~ValidationResult(&a11);
  MIL::ValidationResult::~ValidationResult(&a26);
  v33 = *(v31 - 104);
  if (v33)
  {
    *(v31 - 96) = v33;
    operator delete(v33);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceRandomCategorical(MIL::IRConstantDimension **a1, uint64_t *a2, void *a3)
{
  v34 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(__p, "x");
  SingleValueType = MIL::ValueTypeInferenceUtils::GetSingleValueType(a3, __p);
  v7 = MIL::IRValueType::AsTensorType(SingleValueType);
  if (v25 < 0)
  {
    operator delete(__p[0]);
  }

  (*(*v7 + 88))(v7);
  v8 = (*(*v7 + 96))(v7);
  v29 = 0;
  v30 = 0;
  v31 = 0;
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&v29, *v8, v8[1], (v8[1] - *v8) >> 3);
  if ((v30 - v29) > 8)
  {
    std::string::basic_string[abi:ne200100]<0>(&v22, "random_categorical");
    std::string::basic_string[abi:ne200100]<0>(&v32, "x");
    v9 = a2[1];
    v20 = *a2;
    v21 = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    MIL::ValueTypeInferenceUtils::EnsureShapeIsConstant(&v29, &v22, &v20, __p);
    if (v21)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v21);
    }

    if (v33 < 0)
    {
      operator delete(v32);
    }

    if (v23 < 0)
    {
      operator delete(v22);
    }

    if (MIL::ValidationResult::IsGood(__p))
    {
      std::string::basic_string[abi:ne200100]<0>(&v22, "size");
      SingleValue = MIL::ValueTypeInferenceUtils::GetSingleValue(a3, &v22);
      v11 = MIL::IRValue::AsTensor(SingleValue);
      v12 = MIL::IRValue::GetScalar<int>(v11);
      if (v23 < 0)
      {
        operator delete(v22);
      }

      v13 = a2[1];
      v17[0] = *a2;
      v17[1] = v13;
      if (v13)
      {
        atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
      }

      MIL::ValueTypeInferenceUtils::GetRandomCategoricalOutShape(a1, v17, &v29, v12, &v22);
      MIL::IRTensorValueType::MakeWithShape();
    }

    exception = __cxa_allocate_exception(0x48uLL);
    MIL::MILResult::MILResult(v18, __p);
    v18[0].__r_.__value_.__r.__words[0] = &unk_2829E9B70;
    v19 = v26;
    MIL::ValidationError::ValidationError(exception, v18);
  }

  v14 = __cxa_allocate_exception(0x48uLL);
  v15 = a2[1];
  *&v28 = *a2;
  *(&v28 + 1) = v15;
  if (v15)
  {
    atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(v27, "Parameter x must have a minimum rank of 2. The last dimension represents vector of probabilities and remaining dimensions represent specific distributions.");
  MIL::ValidationError::ValidationError(v14, &v28, v27, 315);
}

void sub_2181AF670(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  MIL::ValidationResult::~ValidationResult(&a12);
  MIL::ValidationResult::~ValidationResult(&a27);
  v34 = *(v32 - 120);
  if (v34)
  {
    *(v32 - 112) = v34;
    operator delete(v34);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceRandomNormal(MIL::IRConstantDimension **a1, uint64_t *a2, void *a3)
{
  v5 = a2[1];
  v8[0] = *a2;
  v8[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(v7, "random_normal");
  std::string::basic_string[abi:ne200100]<0>(__p, "mean");
}

void sub_2181AF860(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceRandomUniform(MIL::IRConstantDimension **a1, uint64_t *a2, void *a3)
{
  v5 = a2[1];
  v8[0] = *a2;
  v8[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(v7, "random_uniform");
  std::string::basic_string[abi:ne200100]<0>(__p, "low");
}

void sub_2181AF960(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios15::RandomBernoulli::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2181B04A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void **a46)
{
  v49 = *(v47 - 80);
  *(v47 - 80) = 0;
  if (v49)
  {
    (*(*v49 + 8))(v49);
  }

  v50 = *v46;
  *v46 = 0;
  if (v50)
  {
    (*(*v50 + 8))(v50);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a46, 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v47 - 256), 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::RandomCategorical::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2181B1278(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57)
{
  if (a53)
  {
    (*(*a53 + 8))(a53);
  }

  v60 = *v57;
  *v57 = 0;
  if (v60)
  {
    (*(*v60 + 8))(v60);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v58 - 80), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v58 - 248), 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::RandomNormal::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2181B22D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, void **a54)
{
  v57 = *(v55 - 80);
  *(v55 - 80) = 0;
  if (v57)
  {
    (*(*v57 + 8))(v57);
  }

  v58 = *v54;
  *v54 = 0;
  if (v58)
  {
    (*(*v58 + 8))(v58);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a54, 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v55 - 256), 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::RandomUniform::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2181B3424(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, void **a54)
{
  v57 = *(v55 - 80);
  *(v55 - 80) = 0;
  if (v57)
  {
    (*(*v57 + 8))(v57);
  }

  v58 = *v54;
  *v54 = 0;
  if (v58)
  {
    (*(*v58 + 8))(v58);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a54, 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v55 - 256), 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::CustomValidators::ValidateGru(MIL::Operators::Common::ios15::CustomValidators *this@<X0>, uint64_t a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "x");
  ParameterType = MIL::IROperation::GetParameterType(this);
  v6 = MIL::IRValueType::AsTensorType(ParameterType);
  if (v21 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "initial_h");
  v7 = MIL::IROperation::GetParameterType(this);
  v8 = MIL::IRValueType::AsTensorType(v7);
  if (v21 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "weight_ih");
  v9 = MIL::IROperation::GetParameterType(this);
  v10 = MIL::IRValueType::AsTensorType(v9);
  if (v21 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "weight_hh");
  v11 = MIL::IROperation::GetParameterType(this);
  v12 = MIL::IRValueType::AsTensorType(v11);
  if (v21 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "bias");
  v13 = MIL::IROperation::TryGetParameterType(this, __p, 0);
  if (v21 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "bias");
  v14 = MIL::IROperation::TryGetParameterType(this, __p, 0);
  if (v21 < 0)
  {
    operator delete(__p[0]);
  }

  LocationPtr = MIL::IRObject::GetLocationPtr(this);
  v16 = LocationPtr[1];
  v19[0] = *LocationPtr;
  v19[1] = v16;
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(v17, "GRU");
  if (v18 < 0)
  {
    operator delete(v17[0]);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }
}

void sub_2181B3AA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios15::anonymous namespace::ValidateGruRnnHelper(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, MIL::IRValueType *a6@<X5>, MIL::IRValueType *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v16 = (*(*a2 + 96))(a2);
  v17 = (*(*a4 + 96))(a4);
  v18 = (*(*a5 + 96))(a5);
  if (!(*(*a2 + 104))(a2) || !(*(*a3 + 104))(a3) || !(*(*a4 + 104))(a4) || ((*(*a5 + 104))(a5) & 1) == 0)
  {
    v46 = a1[1];
    v141 = *a1;
    v142 = v46;
    if (v46)
    {
      atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::operator+<char>();
    MIL::ValidationResult::ValidationResult(a9, &v141, 315, &v139);
    if (v140 < 0)
    {
      operator delete(v139);
    }

    v45 = v142;
    if (v142)
    {
      goto LABEL_59;
    }

    return;
  }

  std::string::basic_string[abi:ne200100]<0>(&v136, "weight_ih");
  v19 = a1[1];
  v134 = *a1;
  v135 = v19;
  if (v19)
  {
    atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  MIL::ValueTypeInferenceUtils::EnsureShapeIsConstant(v17, a8, &v134, &v137);
  if (v135)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v135);
  }

  if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v136.__r_.__value_.__l.__data_);
  }

  if (((*(v137.__r_.__value_.__r.__words[0] + 16))(&v137) & 1) == 0)
  {
    MIL::MILResult::MILResult(a9, &v137);
LABEL_63:
    *a9 = &unk_2829E9B70;
    *(a9 + 48) = v138;
    MIL::ValidationResult::~ValidationResult(&v137);
    return;
  }

  MIL::ValidationResult::~ValidationResult(&v137);
  std::string::basic_string[abi:ne200100]<0>(&v136, "weight_hh");
  v20 = a1[1];
  v132 = *a1;
  v133 = v20;
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  MIL::ValueTypeInferenceUtils::EnsureShapeIsConstant(v18, a8, &v132, &v137);
  if (v133)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v133);
  }

  if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v136.__r_.__value_.__l.__data_);
  }

  if (((*(v137.__r_.__value_.__r.__words[0] + 16))(&v137) & 1) == 0)
  {
    MIL::MILResult::MILResult(a9, &v137);
    goto LABEL_63;
  }

  MIL::ValidationResult::~ValidationResult(&v137);
  v21 = MIL::IRDimension::AsConstant(*(*v17 + 8));
  v22 = (*(*v21 + 48))(v21);
  v23 = MIL::IRDimension::AsConstant(*(*v18 + 8));
  v24 = (*(*v23 + 48))(v23);
  v25 = MIL::IRDimension::AsConstant(**v18);
  v26 = (*(*v25 + 48))(v25);
  if ((*(**(*v16 + 16) + 16))(*(*v16 + 16)) && (v27 = MIL::IRDimension::AsConstant(*(*v16 + 16)), v22 != (*(*v27 + 48))(v27)))
  {
    v48 = a1[1];
    v130 = *a1;
    v131 = v48;
    if (v48)
    {
      atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::to_string(&v127, v22);
    v49 = std::string::insert(&v127, 0, "Input size from weight_ih: ");
    v50 = *&v49->__r_.__value_.__l.__data_;
    v136.__r_.__value_.__r.__words[2] = v49->__r_.__value_.__r.__words[2];
    *&v136.__r_.__value_.__l.__data_ = v50;
    v49->__r_.__value_.__l.__size_ = 0;
    v49->__r_.__value_.__r.__words[2] = 0;
    v49->__r_.__value_.__r.__words[0] = 0;
    v51 = std::string::append(&v136, " does not match with input shape for op: ");
    v52 = *&v51->__r_.__value_.__l.__data_;
    v137.__r_.__value_.__r.__words[2] = v51->__r_.__value_.__r.__words[2];
    *&v137.__r_.__value_.__l.__data_ = v52;
    v51->__r_.__value_.__l.__size_ = 0;
    v51->__r_.__value_.__r.__words[2] = 0;
    v51->__r_.__value_.__r.__words[0] = 0;
    v53 = *(a8 + 23);
    if (v53 >= 0)
    {
      v54 = a8;
    }

    else
    {
      v54 = *a8;
    }

    if (v53 >= 0)
    {
      v55 = *(a8 + 23);
    }

    else
    {
      v55 = *(a8 + 8);
    }

    v56 = std::string::append(&v137, v54, v55);
    v57 = *&v56->__r_.__value_.__l.__data_;
    v129 = v56->__r_.__value_.__r.__words[2];
    *v128 = v57;
    v56->__r_.__value_.__l.__size_ = 0;
    v56->__r_.__value_.__r.__words[2] = 0;
    v56->__r_.__value_.__r.__words[0] = 0;
    MIL::ValidationResult::ValidationResult(a9, &v130, 315, v128);
    if (SHIBYTE(v129) < 0)
    {
      operator delete(v128[0]);
    }

    if (SHIBYTE(v137.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v137.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v136.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v127.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v127.__r_.__value_.__l.__data_);
    }

    v45 = v131;
    if (v131)
    {
      goto LABEL_59;
    }
  }

  else
  {
    v28 = MIL::IRDimension::AsConstant(**v17);
    if (v26 == (*(*v28 + 48))(v28))
    {
      if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a8, "GRU") && 3 * v24 != v26)
      {
        v29 = a1[1];
        v121 = *a1;
        v122 = v29;
        if (v29)
        {
          atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        std::to_string(&v117, v24);
        v30 = std::string::insert(&v117, 0, "Hidden dimension must be of shape 3*HiddenSize. Provided hiddenSize: ");
        v31 = *&v30->__r_.__value_.__l.__data_;
        v118.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
        *&v118.__r_.__value_.__l.__data_ = v31;
        v30->__r_.__value_.__l.__size_ = 0;
        v30->__r_.__value_.__r.__words[2] = 0;
        v30->__r_.__value_.__r.__words[0] = 0;
        v32 = std::string::append(&v118, "hiddenDim: ");
        v33 = *&v32->__r_.__value_.__l.__data_;
        v127.__r_.__value_.__r.__words[2] = v32->__r_.__value_.__r.__words[2];
        *&v127.__r_.__value_.__l.__data_ = v33;
        v32->__r_.__value_.__l.__size_ = 0;
        v32->__r_.__value_.__r.__words[2] = 0;
        v32->__r_.__value_.__r.__words[0] = 0;
        std::to_string(&v116, v26);
        if ((v116.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v34 = &v116;
        }

        else
        {
          v34 = v116.__r_.__value_.__r.__words[0];
        }

        if ((v116.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v116.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v116.__r_.__value_.__l.__size_;
        }

        v36 = std::string::append(&v127, v34, size);
        v37 = *&v36->__r_.__value_.__l.__data_;
        v136.__r_.__value_.__r.__words[2] = v36->__r_.__value_.__r.__words[2];
        *&v136.__r_.__value_.__l.__data_ = v37;
        v36->__r_.__value_.__l.__size_ = 0;
        v36->__r_.__value_.__r.__words[2] = 0;
        v36->__r_.__value_.__r.__words[0] = 0;
        v38 = std::string::append(&v136, "for op: ");
        v39 = *&v38->__r_.__value_.__l.__data_;
        v137.__r_.__value_.__r.__words[2] = v38->__r_.__value_.__r.__words[2];
        *&v137.__r_.__value_.__l.__data_ = v39;
        v38->__r_.__value_.__l.__size_ = 0;
        v38->__r_.__value_.__r.__words[2] = 0;
        v38->__r_.__value_.__r.__words[0] = 0;
        v40 = *(a8 + 23);
        if (v40 >= 0)
        {
          v41 = a8;
        }

        else
        {
          v41 = *a8;
        }

        if (v40 >= 0)
        {
          v42 = *(a8 + 23);
        }

        else
        {
          v42 = *(a8 + 8);
        }

        v43 = std::string::append(&v137, v41, v42);
        v44 = *&v43->__r_.__value_.__l.__data_;
        v120 = v43->__r_.__value_.__r.__words[2];
        *__p = v44;
        v43->__r_.__value_.__l.__size_ = 0;
        v43->__r_.__value_.__r.__words[2] = 0;
        v43->__r_.__value_.__r.__words[0] = 0;
        MIL::ValidationResult::ValidationResult(a9, &v121, 315, __p);
        if (SHIBYTE(v120) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v137.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v137.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v136.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v116.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v116.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v127.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v127.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v118.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v118.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v117.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v117.__r_.__value_.__l.__data_);
        }

        v45 = v122;
        if (!v122)
        {
          return;
        }

LABEL_59:
        std::__shared_weak_count::__release_shared[abi:ne200100](v45);
        return;
      }

      if (a6)
      {
        v58 = MIL::IRValueType::AsTensorType(a6);
        v59 = (*(*v58 + 96))(v58);
        memset(&v136, 0, sizeof(v136));
        std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&v136, *v59, v59[1], (v59[1] - *v59) >> 3);
        std::string::basic_string[abi:ne200100]<0>(&v127, "bias");
        v60 = a1[1];
        v114 = *a1;
        v115 = v60;
        if (v60)
        {
          atomic_fetch_add_explicit(&v60->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        MIL::ValueTypeInferenceUtils::EnsureShapeIsConstant(&v136, a8, &v114, &v137);
        if (v115)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v115);
        }

        if (SHIBYTE(v127.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v127.__r_.__value_.__l.__data_);
        }

        if (((*(v137.__r_.__value_.__r.__words[0] + 16))(&v137) & 1) == 0)
        {
          MIL::MILResult::MILResult(a9, &v137);
          goto LABEL_113;
        }

        MIL::ValidationResult::~ValidationResult(&v137);
        v61 = MIL::IRDimension::AsConstant(*v136.__r_.__value_.__l.__data_);
        v62 = (*(*v61 + 48))(v61);
        if (v62 != v26)
        {
          v68 = a1[1];
          v112 = *a1;
          v113 = v68;
          if (v68)
          {
            atomic_fetch_add_explicit(&v68->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          std::to_string(&v116, v62);
          v69 = std::string::insert(&v116, 0, "Incorrect bias shape (");
          v70 = *&v69->__r_.__value_.__l.__data_;
          v117.__r_.__value_.__r.__words[2] = v69->__r_.__value_.__r.__words[2];
          *&v117.__r_.__value_.__l.__data_ = v70;
          v69->__r_.__value_.__l.__size_ = 0;
          v69->__r_.__value_.__r.__words[2] = 0;
          v69->__r_.__value_.__r.__words[0] = 0;
          v71 = std::string::append(&v117, ") but expecting: ");
          v72 = *&v71->__r_.__value_.__l.__data_;
          v118.__r_.__value_.__r.__words[2] = v71->__r_.__value_.__r.__words[2];
          *&v118.__r_.__value_.__l.__data_ = v72;
          v71->__r_.__value_.__l.__size_ = 0;
          v71->__r_.__value_.__r.__words[2] = 0;
          v71->__r_.__value_.__r.__words[0] = 0;
          std::to_string(&v109, v26);
          if ((v109.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v73 = &v109;
          }

          else
          {
            v73 = v109.__r_.__value_.__r.__words[0];
          }

          if ((v109.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v74 = HIBYTE(v109.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v74 = v109.__r_.__value_.__l.__size_;
          }

          v75 = std::string::append(&v118, v73, v74);
          v76 = *&v75->__r_.__value_.__l.__data_;
          v127.__r_.__value_.__r.__words[2] = v75->__r_.__value_.__r.__words[2];
          *&v127.__r_.__value_.__l.__data_ = v76;
          v75->__r_.__value_.__l.__size_ = 0;
          v75->__r_.__value_.__r.__words[2] = 0;
          v75->__r_.__value_.__r.__words[0] = 0;
          v77 = std::string::append(&v127, " for op: ");
          v78 = *&v77->__r_.__value_.__l.__data_;
          v137.__r_.__value_.__r.__words[2] = v77->__r_.__value_.__r.__words[2];
          *&v137.__r_.__value_.__l.__data_ = v78;
          v77->__r_.__value_.__l.__size_ = 0;
          v77->__r_.__value_.__r.__words[2] = 0;
          v77->__r_.__value_.__r.__words[0] = 0;
          v79 = *(a8 + 23);
          if (v79 >= 0)
          {
            v80 = a8;
          }

          else
          {
            v80 = *a8;
          }

          if (v79 >= 0)
          {
            v81 = *(a8 + 23);
          }

          else
          {
            v81 = *(a8 + 8);
          }

          v82 = std::string::append(&v137, v80, v81);
          v83 = *&v82->__r_.__value_.__l.__data_;
          v111 = v82->__r_.__value_.__r.__words[2];
          *v110 = v83;
          v82->__r_.__value_.__l.__size_ = 0;
          v82->__r_.__value_.__r.__words[2] = 0;
          v82->__r_.__value_.__r.__words[0] = 0;
          MIL::ValidationResult::ValidationResult(a9, &v112, 315, v110);
          if (SHIBYTE(v111) < 0)
          {
            operator delete(v110[0]);
          }

          if (SHIBYTE(v137.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v137.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v127.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v127.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v109.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v109.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v118.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v118.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v117.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v117.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v116.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v116.__r_.__value_.__l.__data_);
          }

          v84 = v113;
          if (!v113)
          {
            goto LABEL_144;
          }

          goto LABEL_143;
        }

        if (v136.__r_.__value_.__r.__words[0])
        {
          v136.__r_.__value_.__l.__size_ = v136.__r_.__value_.__r.__words[0];
          operator delete(v136.__r_.__value_.__l.__data_);
        }
      }

      if (!a7)
      {
LABEL_110:
        MIL::ValidationResult::ValidationResult(a9);
        return;
      }

      v63 = MIL::IRValueType::AsTensorType(a7);
      v64 = (*(*v63 + 96))(v63);
      memset(&v136, 0, sizeof(v136));
      std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&v136, *v64, v64[1], (v64[1] - *v64) >> 3);
      std::string::basic_string[abi:ne200100]<0>(&v127, "input_bias");
      v65 = a1[1];
      v107 = *a1;
      v108 = v65;
      if (v65)
      {
        atomic_fetch_add_explicit(&v65->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      MIL::ValueTypeInferenceUtils::EnsureShapeIsConstant(&v136, a8, &v107, &v137);
      if (v108)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v108);
      }

      if (SHIBYTE(v127.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v127.__r_.__value_.__l.__data_);
      }

      if ((*(v137.__r_.__value_.__r.__words[0] + 16))(&v137))
      {
        MIL::ValidationResult::~ValidationResult(&v137);
        v66 = MIL::IRDimension::AsConstant(*v136.__r_.__value_.__l.__data_);
        v67 = (*(*v66 + 48))(v66);
        if (v67 == v26)
        {
          if (v136.__r_.__value_.__r.__words[0])
          {
            v136.__r_.__value_.__l.__size_ = v136.__r_.__value_.__r.__words[0];
            operator delete(v136.__r_.__value_.__l.__data_);
          }

          goto LABEL_110;
        }

        v85 = a1[1];
        v105 = *a1;
        v106 = v85;
        if (v85)
        {
          atomic_fetch_add_explicit(&v85->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        std::to_string(&v116, v67);
        v86 = std::string::insert(&v116, 0, "Incorrect input_bias shape (");
        v87 = *&v86->__r_.__value_.__l.__data_;
        v117.__r_.__value_.__r.__words[2] = v86->__r_.__value_.__r.__words[2];
        *&v117.__r_.__value_.__l.__data_ = v87;
        v86->__r_.__value_.__l.__size_ = 0;
        v86->__r_.__value_.__r.__words[2] = 0;
        v86->__r_.__value_.__r.__words[0] = 0;
        v88 = std::string::append(&v117, ") but expecting: ");
        v89 = *&v88->__r_.__value_.__l.__data_;
        v118.__r_.__value_.__r.__words[2] = v88->__r_.__value_.__r.__words[2];
        *&v118.__r_.__value_.__l.__data_ = v89;
        v88->__r_.__value_.__l.__size_ = 0;
        v88->__r_.__value_.__r.__words[2] = 0;
        v88->__r_.__value_.__r.__words[0] = 0;
        std::to_string(&v109, v26);
        if ((v109.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v90 = &v109;
        }

        else
        {
          v90 = v109.__r_.__value_.__r.__words[0];
        }

        if ((v109.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v91 = HIBYTE(v109.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v91 = v109.__r_.__value_.__l.__size_;
        }

        v92 = std::string::append(&v118, v90, v91);
        v93 = *&v92->__r_.__value_.__l.__data_;
        v127.__r_.__value_.__r.__words[2] = v92->__r_.__value_.__r.__words[2];
        *&v127.__r_.__value_.__l.__data_ = v93;
        v92->__r_.__value_.__l.__size_ = 0;
        v92->__r_.__value_.__r.__words[2] = 0;
        v92->__r_.__value_.__r.__words[0] = 0;
        v94 = std::string::append(&v127, " for op: ");
        v95 = *&v94->__r_.__value_.__l.__data_;
        v137.__r_.__value_.__r.__words[2] = v94->__r_.__value_.__r.__words[2];
        *&v137.__r_.__value_.__l.__data_ = v95;
        v94->__r_.__value_.__l.__size_ = 0;
        v94->__r_.__value_.__r.__words[2] = 0;
        v94->__r_.__value_.__r.__words[0] = 0;
        v96 = *(a8 + 23);
        if (v96 >= 0)
        {
          v97 = a8;
        }

        else
        {
          v97 = *a8;
        }

        if (v96 >= 0)
        {
          v98 = *(a8 + 23);
        }

        else
        {
          v98 = *(a8 + 8);
        }

        v99 = std::string::append(&v137, v97, v98);
        v100 = *&v99->__r_.__value_.__l.__data_;
        v104 = v99->__r_.__value_.__r.__words[2];
        *v103 = v100;
        v99->__r_.__value_.__l.__size_ = 0;
        v99->__r_.__value_.__r.__words[2] = 0;
        v99->__r_.__value_.__r.__words[0] = 0;
        MIL::ValidationResult::ValidationResult(a9, &v105, 315, v103);
        if (SHIBYTE(v104) < 0)
        {
          operator delete(v103[0]);
        }

        if (SHIBYTE(v137.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v137.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v127.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v127.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v109.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v109.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v118.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v118.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v117.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v117.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v116.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v116.__r_.__value_.__l.__data_);
        }

        v84 = v106;
        if (!v106)
        {
          goto LABEL_144;
        }

LABEL_143:
        std::__shared_weak_count::__release_shared[abi:ne200100](v84);
LABEL_144:
        if (v136.__r_.__value_.__r.__words[0])
        {
          v136.__r_.__value_.__l.__size_ = v136.__r_.__value_.__r.__words[0];
          operator delete(v136.__r_.__value_.__l.__data_);
        }

        return;
      }

      MIL::MILResult::MILResult(a9, &v137);
LABEL_113:
      *a9 = &unk_2829E9B70;
      *(a9 + 48) = v138;
      MIL::ValidationResult::~ValidationResult(&v137);
      goto LABEL_144;
    }

    v47 = a1[1];
    v125 = *a1;
    v126 = v47;
    if (v47)
    {
      atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::operator+<char>();
    MIL::ValidationResult::ValidationResult(a9, &v125, 315, &v123);
    if (v124 < 0)
    {
      operator delete(v123);
    }

    v45 = v126;
    if (v126)
    {
      goto LABEL_59;
    }
  }
}

void sub_2181B4908(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52, uint64_t a53, void *a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (*(v69 - 169) < 0)
  {
    operator delete(*(v69 - 192));
  }

  if (a69 < 0)
  {
    operator delete(a64);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a52 < 0)
  {
    operator delete(a47);
  }

  if (a45 < 0)
  {
    operator delete(a40);
  }

  if (a39 < 0)
  {
    operator delete(a34);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  v71 = *(v69 - 224);
  if (v71)
  {
    *(v69 - 216) = v71;
    operator delete(v71);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::CustomValidators::ValidateLstm(MIL::Operators::Common::ios15::CustomValidators *this@<X0>, uint64_t a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(&v28, "x");
  ParameterType = MIL::IROperation::GetParameterType(this);
  v6 = MIL::IRValueType::AsTensorType(ParameterType);
  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v28, "initial_h");
  v7 = MIL::IROperation::GetParameterType(this);
  v8 = MIL::IRValueType::AsTensorType(v7);
  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v28, "weight_ih");
  v9 = MIL::IROperation::GetParameterType(this);
  v10 = MIL::IRValueType::AsTensorType(v9);
  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v28, "weight_hh");
  v11 = MIL::IROperation::GetParameterType(this);
  v12 = MIL::IRValueType::AsTensorType(v11);
  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v28, "weight_ih_back");
  v21 = MIL::IROperation::TryGetParameterType(this, &v28, 0);
  v22 = v12;
  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v28, "weight_hh_back");
  v13 = MIL::IROperation::TryGetParameterType(this, &v28, 0);
  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "direction");
  ParameterValue = MIL::IROperation::GetParameterValue(this);
  MIL::IRValue::GetScalar<std::string>(ParameterValue, &v28);
  if (v27 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "bias");
  v15 = MIL::IROperation::TryGetParameterType(this, __p, 0);
  if (v27 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "bias_back");
  v16 = MIL::IROperation::TryGetParameterType(this, __p, 0);
  if (v27 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "peephole");
  v17 = MIL::IROperation::TryGetParameterType(this, __p, 0);
  if (v27 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "peephole_back");
  v18 = MIL::IROperation::TryGetParameterType(this, __p, 0);
  if (v27 < 0)
  {
    operator delete(__p[0]);
  }

  LocationPtr = MIL::IRObject::GetLocationPtr(this);
  v20 = LocationPtr[1];
  v24 = *LocationPtr;
  v25 = v20;
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v23, v28.__r_.__value_.__l.__data_, v28.__r_.__value_.__l.__size_);
  }

  else
  {
    v23 = v28;
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }
}

void sub_2181B4FF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a23);
  }

  if (*(v29 - 81) < 0)
  {
    operator delete(*(v29 - 104));
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios15::anonymous namespace::ValidateLSTMHelper(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, MIL::IRValueType *a6@<X5>, MIL::IRValueType *a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, MIL::IRValueType *a10, MIL::IRValueType *a11, MIL::IRValueType *a12, MIL::IRValueType *a13)
{
  v22 = (*(*a2 + 96))(a2);
  if (*(*a2 + 104))(a2) && (*(*a3 + 104))(a3) && ((*(*a3 + 104))(a3))
  {
    v100[0] = a1;
    v100[1] = v22;
    memset(&v99, 0, sizeof(v99));
    memset(&v98, 0, sizeof(v98));
    std::string::basic_string[abi:ne200100]<0>(&v95, "weight_ih");
    std::string::basic_string[abi:ne200100]<0>(&__p, "weight_hh");
    if (SHIBYTE(__p.__end_cap_.__value_) < 0)
    {
      operator delete(__p.__begin_);
    }

    if (SHIBYTE(v95.__end_cap_.__value_) < 0)
    {
      operator delete(v95.__begin_);
    }

    if (((*(v96.__r_.__value_.__r.__words[0] + 16))(&v96) & 1) == 0)
    {
      MIL::MILResult::MILResult(a9, &v96);
LABEL_68:
      *a9 = &unk_2829E9B70;
      *(a9 + 48) = v97;
      MIL::ValidationResult::~ValidationResult(&v96);
      goto LABEL_69;
    }

    MIL::ValidationResult::~ValidationResult(&v96);
    v23 = v99.__begin_[1];
    v25 = *v98.__begin_;
    v24 = v98.__begin_[1];
    v26 = *(a8 + 23);
    if (v26 < 0)
    {
      if (a8[1] != 13)
      {
        goto LABEL_26;
      }

      a8 = *a8;
    }

    else if (v26 != 13)
    {
      goto LABEL_26;
    }

    if (*a8 != 0x7463657269646962 || *(a8 + 5) != 0x6C616E6F69746365)
    {
LABEL_26:
      __p.__begin_ = a1;
      if (a10)
      {
        v29 = MIL::IRValueType::AsTensorType(a10);
        std::string::basic_string[abi:ne200100]<0>(&v95, "bias");
        if (SHIBYTE(v95.__end_cap_.__value_) < 0)
        {
          operator delete(v95.__begin_);
        }

        if (((*(v96.__r_.__value_.__r.__words[0] + 16))(&v96) & 1) == 0)
        {
          goto LABEL_67;
        }

        MIL::ValidationResult::~ValidationResult(&v96);
      }

      if (a11)
      {
        v30 = MIL::IRValueType::AsTensorType(a11);
        std::string::basic_string[abi:ne200100]<0>(&v95, "bias_back");
        if (SHIBYTE(v95.__end_cap_.__value_) < 0)
        {
          operator delete(v95.__begin_);
        }

        if (((*(v96.__r_.__value_.__r.__words[0] + 16))(&v96) & 1) == 0)
        {
          goto LABEL_67;
        }

        MIL::ValidationResult::~ValidationResult(&v96);
      }

      v31 = 3 * v24;
      if (!a12)
      {
LABEL_41:
        if (!a13)
        {
LABEL_46:
          MIL::ValidationResult::ValidationResult(a9);
LABEL_69:
          if (v98.__begin_)
          {
            v98.__end_ = v98.__begin_;
            operator delete(v98.__begin_);
          }

          if (v99.__begin_)
          {
            v99.__end_ = v99.__begin_;
            operator delete(v99.__begin_);
          }

          return;
        }

        v33 = MIL::IRValueType::AsTensorType(a13);
        std::string::basic_string[abi:ne200100]<0>(&v95, "peephole_back");
        if (SHIBYTE(v95.__end_cap_.__value_) < 0)
        {
          operator delete(v95.__begin_);
        }

        if ((*(v96.__r_.__value_.__r.__words[0] + 16))(&v96))
        {
          MIL::ValidationResult::~ValidationResult(&v96);
          goto LABEL_46;
        }

        goto LABEL_67;
      }

      v32 = MIL::IRValueType::AsTensorType(a12);
      std::string::basic_string[abi:ne200100]<0>(&v95, "peephole");
      if (SHIBYTE(v95.__end_cap_.__value_) < 0)
      {
        operator delete(v95.__begin_);
      }

      if ((*(v96.__r_.__value_.__r.__words[0] + 16))(&v96))
      {
        MIL::ValidationResult::~ValidationResult(&v96);
        goto LABEL_41;
      }

LABEL_67:
      MIL::MILResult::MILResult(a9, &v96);
      goto LABEL_68;
    }

    memset(&v95, 0, sizeof(v95));
    memset(&__p, 0, sizeof(__p));
    if (a6 && a7)
    {
      v34 = MIL::IRValueType::AsTensorType(a6);
      v35 = MIL::IRValueType::AsTensorType(a7);
      std::string::basic_string[abi:ne200100]<0>(&v93, "weight_ih_back");
      std::string::basic_string[abi:ne200100]<0>(&v92, "weight_hh_back");
      if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v92.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v93.__r_.__value_.__l.__data_);
      }

      if (((*(v96.__r_.__value_.__r.__words[0] + 16))(&v96) & 1) == 0)
      {
        MIL::MILResult::MILResult(a9, &v96);
        *a9 = &unk_2829E9B70;
        *(a9 + 48) = v97;
        MIL::ValidationResult::~ValidationResult(&v96);
        goto LABEL_74;
      }

      MIL::ValidationResult::~ValidationResult(&v96);
      v36 = v95.__begin_[1];
      if (v36 == v23)
      {
        v37 = __p.__begin_[1];
        if (v37 == v24)
        {
          v38 = *v95.__begin_;
          if (*v95.__begin_ == v25)
          {
            __p.__end_ = __p.__begin_;
            operator delete(__p.__begin_);
            if (v95.__begin_)
            {
              v95.__end_ = v95.__begin_;
              operator delete(v95.__begin_);
            }

            goto LABEL_26;
          }

          v63 = a1[1];
          v80 = *a1;
          v81 = v63;
          if (v63)
          {
            atomic_fetch_add_explicit((v63 + 8), 1uLL, memory_order_relaxed);
          }

          std::to_string(&v87, v25);
          v64 = std::string::insert(&v87, 0, "Hidden dimensions for forward and reverse weight differs. forward hidden dim: ");
          v65 = *&v64->__r_.__value_.__l.__data_;
          v92.__r_.__value_.__r.__words[2] = v64->__r_.__value_.__r.__words[2];
          *&v92.__r_.__value_.__l.__data_ = v65;
          v64->__r_.__value_.__l.__size_ = 0;
          v64->__r_.__value_.__r.__words[2] = 0;
          v64->__r_.__value_.__r.__words[0] = 0;
          v66 = std::string::append(&v92, " reverse hidden dim: ");
          v67 = *&v66->__r_.__value_.__l.__data_;
          v93.__r_.__value_.__r.__words[2] = v66->__r_.__value_.__r.__words[2];
          *&v93.__r_.__value_.__l.__data_ = v67;
          v66->__r_.__value_.__l.__size_ = 0;
          v66->__r_.__value_.__r.__words[2] = 0;
          v66->__r_.__value_.__r.__words[0] = 0;
          std::to_string(&v86, v38);
          if ((v86.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v68 = &v86;
          }

          else
          {
            v68 = v86.__r_.__value_.__r.__words[0];
          }

          if ((v86.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v86.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v86.__r_.__value_.__l.__size_;
          }

          v70 = std::string::append(&v93, v68, size);
          v71 = *&v70->__r_.__value_.__l.__data_;
          v96.__r_.__value_.__r.__words[2] = v70->__r_.__value_.__r.__words[2];
          *&v96.__r_.__value_.__l.__data_ = v71;
          v70->__r_.__value_.__l.__size_ = 0;
          v70->__r_.__value_.__r.__words[2] = 0;
          v70->__r_.__value_.__r.__words[0] = 0;
          v72 = std::string::append(&v96, " for LSTM op.");
          v73 = *&v72->__r_.__value_.__l.__data_;
          v79 = v72->__r_.__value_.__r.__words[2];
          *v78 = v73;
          v72->__r_.__value_.__l.__size_ = 0;
          v72->__r_.__value_.__r.__words[2] = 0;
          v72->__r_.__value_.__r.__words[0] = 0;
          MIL::ValidationResult::ValidationResult(a9, &v80, 315, v78);
          if (SHIBYTE(v79) < 0)
          {
            operator delete(v78[0]);
          }

          if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v96.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v86.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v93.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v92.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v87.__r_.__value_.__l.__data_);
          }

          v40 = v81;
          if (!v81)
          {
LABEL_74:
            if (__p.__begin_)
            {
              __p.__end_ = __p.__begin_;
              operator delete(__p.__begin_);
            }

            if (v95.__begin_)
            {
              v95.__end_ = v95.__begin_;
              operator delete(v95.__begin_);
            }

            goto LABEL_69;
          }
        }

        else
        {
          v52 = a1[1];
          v84 = *a1;
          v85 = v52;
          if (v52)
          {
            atomic_fetch_add_explicit((v52 + 8), 1uLL, memory_order_relaxed);
          }

          std::to_string(&v87, v24);
          v53 = std::string::insert(&v87, 0, "Hidden size for forward and reverse weight differs. forward hidden size: ");
          v54 = *&v53->__r_.__value_.__l.__data_;
          v92.__r_.__value_.__r.__words[2] = v53->__r_.__value_.__r.__words[2];
          *&v92.__r_.__value_.__l.__data_ = v54;
          v53->__r_.__value_.__l.__size_ = 0;
          v53->__r_.__value_.__r.__words[2] = 0;
          v53->__r_.__value_.__r.__words[0] = 0;
          v55 = std::string::append(&v92, " reverse hidden size: ");
          v56 = *&v55->__r_.__value_.__l.__data_;
          v93.__r_.__value_.__r.__words[2] = v55->__r_.__value_.__r.__words[2];
          *&v93.__r_.__value_.__l.__data_ = v56;
          v55->__r_.__value_.__l.__size_ = 0;
          v55->__r_.__value_.__r.__words[2] = 0;
          v55->__r_.__value_.__r.__words[0] = 0;
          std::to_string(&v86, v37);
          if ((v86.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v57 = &v86;
          }

          else
          {
            v57 = v86.__r_.__value_.__r.__words[0];
          }

          if ((v86.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v58 = HIBYTE(v86.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v58 = v86.__r_.__value_.__l.__size_;
          }

          v59 = std::string::append(&v93, v57, v58);
          v60 = *&v59->__r_.__value_.__l.__data_;
          v96.__r_.__value_.__r.__words[2] = v59->__r_.__value_.__r.__words[2];
          *&v96.__r_.__value_.__l.__data_ = v60;
          v59->__r_.__value_.__l.__size_ = 0;
          v59->__r_.__value_.__r.__words[2] = 0;
          v59->__r_.__value_.__r.__words[0] = 0;
          v61 = std::string::append(&v96, " for LSTM op.");
          v62 = *&v61->__r_.__value_.__l.__data_;
          v83 = v61->__r_.__value_.__r.__words[2];
          *v82 = v62;
          v61->__r_.__value_.__l.__size_ = 0;
          v61->__r_.__value_.__r.__words[2] = 0;
          v61->__r_.__value_.__r.__words[0] = 0;
          MIL::ValidationResult::ValidationResult(a9, &v84, 315, v82);
          if (SHIBYTE(v83) < 0)
          {
            operator delete(v82[0]);
          }

          if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v96.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v86.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v93.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v92.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v87.__r_.__value_.__l.__data_);
          }

          v40 = v85;
          if (!v85)
          {
            goto LABEL_74;
          }
        }
      }

      else
      {
        v41 = a1[1];
        v90 = *a1;
        v91 = v41;
        if (v41)
        {
          atomic_fetch_add_explicit((v41 + 8), 1uLL, memory_order_relaxed);
        }

        std::to_string(&v87, v23);
        v42 = std::string::insert(&v87, 0, "Input size for forward and reverse weight differs. forward input size: ");
        v43 = *&v42->__r_.__value_.__l.__data_;
        v92.__r_.__value_.__r.__words[2] = v42->__r_.__value_.__r.__words[2];
        *&v92.__r_.__value_.__l.__data_ = v43;
        v42->__r_.__value_.__l.__size_ = 0;
        v42->__r_.__value_.__r.__words[2] = 0;
        v42->__r_.__value_.__r.__words[0] = 0;
        v44 = std::string::append(&v92, " reverse input size: ");
        v45 = *&v44->__r_.__value_.__l.__data_;
        v93.__r_.__value_.__r.__words[2] = v44->__r_.__value_.__r.__words[2];
        *&v93.__r_.__value_.__l.__data_ = v45;
        v44->__r_.__value_.__l.__size_ = 0;
        v44->__r_.__value_.__r.__words[2] = 0;
        v44->__r_.__value_.__r.__words[0] = 0;
        std::to_string(&v86, v36);
        if ((v86.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v46 = &v86;
        }

        else
        {
          v46 = v86.__r_.__value_.__r.__words[0];
        }

        if ((v86.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v47 = HIBYTE(v86.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v47 = v86.__r_.__value_.__l.__size_;
        }

        v48 = std::string::append(&v93, v46, v47);
        v49 = *&v48->__r_.__value_.__l.__data_;
        v96.__r_.__value_.__r.__words[2] = v48->__r_.__value_.__r.__words[2];
        *&v96.__r_.__value_.__l.__data_ = v49;
        v48->__r_.__value_.__l.__size_ = 0;
        v48->__r_.__value_.__r.__words[2] = 0;
        v48->__r_.__value_.__r.__words[0] = 0;
        v50 = std::string::append(&v96, " for LSTM op.");
        v51 = *&v50->__r_.__value_.__l.__data_;
        v89 = v50->__r_.__value_.__r.__words[2];
        v88 = v51;
        v50->__r_.__value_.__l.__size_ = 0;
        v50->__r_.__value_.__r.__words[2] = 0;
        v50->__r_.__value_.__r.__words[0] = 0;
        MIL::ValidationResult::ValidationResult(a9, &v90, 315, &v88);
        if (SHIBYTE(v89) < 0)
        {
          operator delete(v88);
        }

        if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v96.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v86.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v93.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v92.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v87.__r_.__value_.__l.__data_);
        }

        v40 = v91;
        if (!v91)
        {
          goto LABEL_74;
        }
      }
    }

    else
    {
      v39 = a1[1];
      v76 = *a1;
      v77 = v39;
      if (v39)
      {
        atomic_fetch_add_explicit((v39 + 8), 1uLL, memory_order_relaxed);
      }

      std::string::basic_string[abi:ne200100]<0>(v74, "Parameter weight_ih_back and weight_hh_back must be provided when direction is bidirectional for LSTM op.");
      MIL::ValidationResult::ValidationResult(a9, &v76, 316, v74);
      if (v75 < 0)
      {
        operator delete(v74[0]);
      }

      v40 = v77;
      if (!v77)
      {
        goto LABEL_74;
      }
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v40);
    goto LABEL_74;
  }

  v27 = a1[1];
  v103 = *a1;
  v104 = v27;
  if (v27)
  {
    atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(v101, "Variadic input / initial_h / initial_c not supported for LSTM op.");
  MIL::ValidationResult::ValidationResult(a9, &v103, 315, v101);
  if (v102 < 0)
  {
    operator delete(v101[0]);
  }

  if (v104)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v104);
  }
}

void sub_2181B5BD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, void *a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, int a50, __int16 a51, char a52, char a53, uint64_t a54, void *a55, uint64_t a56, int a57, __int16 a58, char a59, char a60, uint64_t a61, void *a62, uint64_t a63)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (*(v65 - 233) < 0)
  {
    operator delete(*(v65 - 256));
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (a60 < 0)
  {
    operator delete(a55);
  }

  if (a53 < 0)
  {
    operator delete(a48);
  }

  if (a41 < 0)
  {
    operator delete(a36);
  }

  if (a23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a23);
  }

  if (a62)
  {
    operator delete(a62);
  }

  if (a65)
  {
    operator delete(a65);
  }

  v67 = *(v65 - 200);
  if (v67)
  {
    *(v65 - 192) = v67;
    operator delete(v67);
  }

  v68 = *(v65 - 176);
  if (v68)
  {
    *(v65 - 168) = v68;
    operator delete(v68);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::CustomValidators::ValidateRnn(MIL::Operators::Common::ios15::CustomValidators *this@<X0>, uint64_t a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "x");
  ParameterType = MIL::IROperation::GetParameterType(this);
  v6 = MIL::IRValueType::AsTensorType(ParameterType);
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "initial_h");
  v7 = MIL::IROperation::GetParameterType(this);
  v8 = MIL::IRValueType::AsTensorType(v7);
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "weight_ih");
  v9 = MIL::IROperation::GetParameterType(this);
  v10 = MIL::IRValueType::AsTensorType(v9);
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "weight_hh");
  v11 = MIL::IROperation::GetParameterType(this);
  v12 = MIL::IRValueType::AsTensorType(v11);
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "bias");
  v13 = MIL::IROperation::TryGetParameterType(this, __p, 0);
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  LocationPtr = MIL::IRObject::GetLocationPtr(this);
  v15 = LocationPtr[1];
  v18[0] = *LocationPtr;
  v18[1] = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(v16, "RNN");
  if (v17 < 0)
  {
    operator delete(v16[0]);
  }

  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }
}

void sub_2181B60F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceGru(MIL::IRConstantDimension **a1, uint64_t *a2, void *a3)
{
  v5 = a2[1];
  v7[0] = *a2;
  v7[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "GRU");
}

void sub_2181B61E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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

void MIL::Operators::Common::ios15::anonymous namespace::ValueTypeInferenceGruRnnHelper(MIL::IRConstantDimension **a1, uint64_t *a2, void *a3, uint64_t a4)
{
  v45 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(__p, "x");
  v8 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, __p);
  if (!v8)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  ValueType = MIL::IRTypedArgument::GetValueType(*v8[5]);
  v10 = MIL::IRValueType::AsTensorType(ValueType);
  if (v39 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "initial_h");
  v11 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, __p);
  if (!v11)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v12 = MIL::IRTypedArgument::GetValueType(*v11[5]);
  v13 = MIL::IRValueType::AsTensorType(v12);
  if (v39 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "weight_ih");
  v14 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, __p);
  if (!v14)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v15 = MIL::IRTypedArgument::GetValueType(*v14[5]);
  v16 = MIL::IRValueType::AsTensorType(v15);
  if (v39 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "weight_hh");
  v17 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, __p);
  if (!v17)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v18 = MIL::IRTypedArgument::GetValueType(*v17[5]);
  v19 = MIL::IRValueType::AsTensorType(v18);
  if (v39 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "bias");
  v20 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, __p);
  v21 = v20;
  if (v39 < 0)
  {
    operator delete(__p[0]);
    if (!v21)
    {
      goto LABEL_20;
    }
  }

  else if (!v20)
  {
    goto LABEL_20;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "bias");
  v22 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, __p);
  if (!v22)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v21 = MIL::IRTypedArgument::GetValueType(*v22[5]);
  if (v39 < 0)
  {
    operator delete(__p[0]);
  }

LABEL_20:
  v23 = *a2;
  v24 = a2[1];
  v37[0] = v23;
  v37[1] = v24;
  if (v24)
  {
    atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v36, *a4, *(a4 + 8));
  }

  else
  {
    v36 = *a4;
  }

  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }

  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  if (MIL::ValidationResult::IsGood(__p))
  {
    std::string::basic_string[abi:ne200100]<0>(&v31, "output_sequence");
    SingleValue = MIL::ValueTypeInferenceUtils::GetSingleValue(a3, &v31);
    v26 = MIL::IRValue::GetScalar<BOOL>(SingleValue);
    if (SHIBYTE(v33) < 0)
    {
      operator delete(v31);
    }

    v27 = v32;
    v28 = v31;
    v42 = v33;
    v43 = v31;
    v44 = v32;
    memset(v30, 0, sizeof(v30));
    std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const* const*,MIL::IRDimension const* const*>(v30, &v42, &v45, 3uLL);
    v41[0] = v28;
    v41[1] = v27;
    v43 = 0;
    v44 = 0;
    v42 = 0;
    std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const* const*,MIL::IRDimension const* const*>(&v42, v41, &v42, 2uLL);
    MIL::IRTensorValueType::MakeWithShape();
  }

  exception = __cxa_allocate_exception(0x48uLL);
  MIL::MILResult::MILResult(v34, __p);
  v34[0].__r_.__value_.__r.__words[0] = &unk_2829E9B70;
  v35 = v40;
  MIL::ValidationError::ValidationError(exception, v34);
}

void sub_2181B6684(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  MIL::ValidationResult::~ValidationResult(&a19);
  MIL::ValidationResult::~ValidationResult(&a35);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceRnn(MIL::IRConstantDimension **a1, uint64_t *a2, void *a3)
{
  v5 = a2[1];
  v7[0] = *a2;
  v7[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "RNN");
}

void sub_2181B680C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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

void MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceLstm(MIL::IRConstantDimension **a1, uint64_t *a2, void *a3)
{
  v75 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(__p, "x");
  v6 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, __p);
  if (!v6)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  ValueType = MIL::IRTypedArgument::GetValueType(*v6[5]);
  v8 = MIL::IRValueType::AsTensorType(ValueType);
  if (v64 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "initial_h");
  v9 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, __p);
  if (!v9)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v10 = MIL::IRTypedArgument::GetValueType(*v9[5]);
  v11 = MIL::IRValueType::AsTensorType(v10);
  if (v64 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "weight_ih");
  v12 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, __p);
  if (!v12)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v13 = MIL::IRTypedArgument::GetValueType(*v12[5]);
  v54 = MIL::IRValueType::AsTensorType(v13);
  if (v64 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "weight_hh");
  v14 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, __p);
  if (!v14)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v15 = MIL::IRTypedArgument::GetValueType(*v14[5]);
  v16 = MIL::IRValueType::AsTensorType(v15);
  if (v64 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "weight_ih_back");
  v17 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, __p);
  v18 = v17;
  if (v64 < 0)
  {
    operator delete(__p[0]);
    if (v18)
    {
      goto LABEL_15;
    }
  }

  else if (v17)
  {
LABEL_15:
    std::string::basic_string[abi:ne200100]<0>(__p, "weight_ih_back");
    v19 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, __p);
    if (!v19)
    {
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    v53 = MIL::IRTypedArgument::GetValueType(*v19[5]);
    if (v64 < 0)
    {
      operator delete(__p[0]);
    }

LABEL_20:
    std::string::basic_string[abi:ne200100]<0>(__p, "weight_hh_back");
    v20 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, __p);
    v21 = v20;
    if (v64 < 0)
    {
      operator delete(__p[0]);
      if (v21)
      {
        goto LABEL_22;
      }
    }

    else if (v20)
    {
LABEL_22:
      std::string::basic_string[abi:ne200100]<0>(__p, "weight_hh_back");
      v22 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, __p);
      if (!v22)
      {
        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      v52 = MIL::IRTypedArgument::GetValueType(*v22[5]);
      if (v64 < 0)
      {
        operator delete(__p[0]);
      }

LABEL_27:
      std::string::basic_string[abi:ne200100]<0>(__p, "direction");
      SingleValue = MIL::ValueTypeInferenceUtils::GetSingleValue(a3, __p);
      MIL::IRValue::GetScalar<std::string>(SingleValue, &v66);
      if (v64 < 0)
      {
        operator delete(__p[0]);
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "bias");
      v24 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, __p);
      v25 = v24;
      if (v64 < 0)
      {
        operator delete(__p[0]);
        if (v25)
        {
          goto LABEL_31;
        }
      }

      else if (v24)
      {
LABEL_31:
        std::string::basic_string[abi:ne200100]<0>(__p, "bias");
        v26 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, __p);
        if (!v26)
        {
          std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
        }

        v27 = MIL::IRTypedArgument::GetValueType(*v26[5]);
        if (v64 < 0)
        {
          operator delete(__p[0]);
        }

LABEL_36:
        std::string::basic_string[abi:ne200100]<0>(__p, "bias_back");
        v28 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, __p);
        v29 = v28;
        if (v64 < 0)
        {
          operator delete(__p[0]);
          if (v29)
          {
            goto LABEL_38;
          }
        }

        else if (v28)
        {
LABEL_38:
          v30 = v8;
          std::string::basic_string[abi:ne200100]<0>(__p, "bias_back");
          v31 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, __p);
          if (!v31)
          {
            std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
          }

          v32 = MIL::IRTypedArgument::GetValueType(*v31[5]);
          if (v64 < 0)
          {
            operator delete(__p[0]);
          }

LABEL_43:
          std::string::basic_string[abi:ne200100]<0>(__p, "peephole");
          v33 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, __p);
          v34 = v33;
          if (v64 < 0)
          {
            operator delete(__p[0]);
            if (!v34)
            {
              goto LABEL_50;
            }
          }

          else if (!v33)
          {
            goto LABEL_50;
          }

          std::string::basic_string[abi:ne200100]<0>(__p, "peephole");
          v35 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, __p);
          if (!v35)
          {
            std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
          }

          v34 = MIL::IRTypedArgument::GetValueType(*v35[5]);
          if (v64 < 0)
          {
            operator delete(__p[0]);
          }

LABEL_50:
          std::string::basic_string[abi:ne200100]<0>(__p, "peephole_back");
          v36 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, __p);
          v37 = v36;
          if (v64 < 0)
          {
            operator delete(__p[0]);
            if (!v37)
            {
              goto LABEL_57;
            }
          }

          else if (!v36)
          {
            goto LABEL_57;
          }

          std::string::basic_string[abi:ne200100]<0>(__p, "peephole_back");
          v38 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, __p);
          if (!v38)
          {
            std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
          }

          v37 = MIL::IRTypedArgument::GetValueType(*v38[5]);
          if (v64 < 0)
          {
            operator delete(__p[0]);
          }

LABEL_57:
          v39 = a2[1];
          v61 = *a2;
          v62 = v39;
          if (v39)
          {
            atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&v60, v66.__r_.__value_.__l.__data_, v66.__r_.__value_.__l.__size_);
          }

          else
          {
            v60 = v66;
          }

          if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v60.__r_.__value_.__l.__data_);
          }

          if (v62)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v62);
          }

          if (!MIL::ValidationResult::IsGood(__p))
          {
            exception = __cxa_allocate_exception(0x48uLL);
            MIL::MILResult::MILResult(v58, __p);
            v58[0].__r_.__value_.__r.__words[0] = &unk_2829E9B70;
            v59 = v65;
            MIL::ValidationError::ValidationError(exception, v58);
          }

          std::string::basic_string[abi:ne200100]<0>(v56, "output_sequence");
          v40 = MIL::ValueTypeInferenceUtils::GetSingleValue(a3, v56);
          v41 = MIL::IRValue::GetScalar<BOOL>(v40);
          if (SHIBYTE(v57) < 0)
          {
            operator delete(v56[0]);
          }

          if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
          {
            if (v66.__r_.__value_.__l.__size_ == 13)
            {
              v42 = v66.__r_.__value_.__r.__words[0];
              goto LABEL_74;
            }
          }

          else if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) == 13)
          {
            v42 = &v66;
LABEL_74:
            v43 = v42->__r_.__value_.__r.__words[0];
            v44 = *(v42->__r_.__value_.__r.__words + 5);
            v46 = v43 == 0x7463657269646962 && v44 == 0x6C616E6F69746365;
LABEL_81:
            v47 = MIL::IRDimension::AsConstant(v56[1]);
            v48 = (*(*v47 + 48))(v47);
            v49 = MIL::IRConstantDimension::Make(*a1, (v48 << v46));
            v50 = v56[0];
            v72 = v57;
            v73 = v56[0];
            v74 = v49;
            memset(v55, 0, sizeof(v55));
            std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const* const*,MIL::IRDimension const* const*>(v55, &v72, &v75, 3uLL);
            v69 = v50;
            v70 = v49;
            v73 = 0;
            v74 = 0;
            v72 = 0;
            std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const* const*,MIL::IRDimension const* const*>(&v72, &v69, &v71, 2uLL);
            v67[0] = v50;
            v67[1] = v49;
            v70 = 0;
            v71 = 0;
            v69 = 0;
            std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const* const*,MIL::IRDimension const* const*>(&v69, v67, &v68, 2uLL);
            MIL::IRTensorValueType::MakeWithShape();
          }

          v46 = 0;
          goto LABEL_81;
        }

        v30 = v8;
        v32 = 0;
        goto LABEL_43;
      }

      v27 = 0;
      goto LABEL_36;
    }

    v52 = 0;
    goto LABEL_27;
  }

  v53 = 0;
  goto LABEL_20;
}

void sub_2181B70B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  MIL::ValidationResult::~ValidationResult(&a27);
  MIL::ValidationResult::~ValidationResult(&a42);
  if (*(v47 - 169) < 0)
  {
    operator delete(*(v47 - 192));
  }

  _Unwind_Resume(a1);
}

uint64_t MIL::Operators::Common::ios15::anonymous namespace::GetRecurrentOpOutputDimensions@<X0>(MIL::IRConstantDimension **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v10 = (*(*a2 + 88))(a2);
  v11 = (*(*a2 + 96))(a2);
  v12 = **v11;
  v13 = (*v11)[1];
  result = (*(*a3 + 96))(a3);
  v15 = *(*result + 8);
  if ((a4 & 1) == 0)
  {
    result = MIL::IRConstantDimension::Make(*a1, 1);
    v12 = result;
  }

  *a5 = v13;
  *(a5 + 8) = v15;
  *(a5 + 16) = v12;
  *(a5 + 24) = v10;
  return result;
}

void MIL::Operators::Common::ios15::anonymous namespace::ValidateLSTMHelper(std::shared_ptr<MIL::Location const>,MIL::IRTensorValueType const*,MIL::IRTensorValueType const*,MIL::IRTensorValueType const*,MIL::IRTensorValueType const*,MIL::IRValueType const*,MIL::IRValueType const*,std::string,MIL::IRValueType const*,MIL::IRValueType const*,MIL::IRValueType const*,MIL::IRValueType const*)::$_0::operator()(uint64_t **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, std::vector<unsigned int> *a5@<X5>, std::vector<unsigned int> *a6@<X6>, uint64_t a7@<X8>)
{
  v14 = (*(*a2 + 96))(a2);
  v15 = (*(*a3 + 96))(a3);
  if (!(*(*a2 + 104))(a2) || ((*(*a3 + 104))(a3) & 1) == 0)
  {
    v22 = (*a1)[1];
    v91 = **a1;
    v92 = v22;
    if (v22)
    {
      atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v89, "Variadic weights not supported for LSTM op.");
    MIL::ValidationResult::ValidationResult(a7, &v91, 315, v89);
    if (v90 < 0)
    {
      operator delete(v89[0]);
    }

    v23 = v92;
    if (!v92)
    {
      return;
    }

LABEL_25:
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
    return;
  }

  std::string::basic_string[abi:ne200100]<0>(&v86, "LSTM");
  v16 = (*a1)[1];
  v84 = **a1;
  v85 = v16;
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  MIL::ValueTypeInferenceUtils::EnsureShapeIsConstant(v14, &v86, &v84, &v87);
  if (v85)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v85);
  }

  if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v86.__r_.__value_.__l.__data_);
  }

  if (((*(v87.__r_.__value_.__r.__words[0] + 16))(&v87) & 1) == 0)
  {
    MIL::MILResult::MILResult(a7, &v87);
LABEL_28:
    *a7 = &unk_2829E9B70;
    *(a7 + 48) = v88;
    MIL::ValidationResult::~ValidationResult(&v87);
    return;
  }

  MIL::ValidationResult::~ValidationResult(&v87);
  std::string::basic_string[abi:ne200100]<0>(&v86, "LSTM");
  v17 = (*a1)[1];
  v82 = **a1;
  v83 = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  MIL::ValueTypeInferenceUtils::EnsureShapeIsConstant(v15, &v86, &v82, &v87);
  if (v83)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v83);
  }

  if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v86.__r_.__value_.__l.__data_);
  }

  if (((*(v87.__r_.__value_.__r.__words[0] + 16))(&v87) & 1) == 0)
  {
    MIL::MILResult::MILResult(a7, &v87);
    goto LABEL_28;
  }

  MIL::ValidationResult::~ValidationResult(&v87);
  std::vector<int>::reserve(a5, 2uLL);
  v19 = *v14;
  v18 = v14[1];
  while (v19 != v18)
  {
    v20 = *v19++;
    v21 = MIL::IRDimension::AsConstant(v20);
    LODWORD(v87.__r_.__value_.__l.__data_) = (*(*v21 + 48))(v21);
    std::vector<int>::push_back[abi:ne200100](&a5->__begin_, &v87);
  }

  std::vector<int>::reserve(a6, 2uLL);
  v25 = *v15;
  v24 = v15[1];
  while (v25 != v24)
  {
    v26 = *v25++;
    v27 = MIL::IRDimension::AsConstant(v26);
    LODWORD(v87.__r_.__value_.__l.__data_) = (*(*v27 + 48))(v27);
    std::vector<int>::push_back[abi:ne200100](&a6->__begin_, &v87);
  }

  v28 = *(*a1[1] + 16);
  if ((*(*v28 + 16))(v28))
  {
    v29 = a5->__begin_[1];
    v30 = MIL::IRDimension::AsConstant(*(*a1[1] + 16));
    if (v29 != (*(*v30 + 48))(v30))
    {
      v34 = (*a1)[1];
      v80 = **a1;
      v81 = v34;
      if (v34)
      {
        atomic_fetch_add_explicit((v34 + 8), 1uLL, memory_order_relaxed);
      }

      v35 = MIL::IRDimension::AsConstant(*(*a1[1] + 16));
      v36 = (*(*v35 + 48))(v35);
      std::to_string(&v74, v36);
      v37 = std::string::insert(&v74, 0, "Different input size for input: ");
      v38 = *&v37->__r_.__value_.__l.__data_;
      v75.__r_.__value_.__r.__words[2] = v37->__r_.__value_.__r.__words[2];
      *&v75.__r_.__value_.__l.__data_ = v38;
      v37->__r_.__value_.__l.__size_ = 0;
      v37->__r_.__value_.__r.__words[2] = 0;
      v37->__r_.__value_.__r.__words[0] = 0;
      v39 = std::string::append(&v75, " and input weight: ");
      v40 = *&v39->__r_.__value_.__l.__data_;
      v76.__r_.__value_.__r.__words[2] = v39->__r_.__value_.__r.__words[2];
      *&v76.__r_.__value_.__l.__data_ = v40;
      v39->__r_.__value_.__l.__size_ = 0;
      v39->__r_.__value_.__r.__words[2] = 0;
      v39->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v73, a5->__begin_[1]);
      if ((v73.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v41 = &v73;
      }

      else
      {
        v41 = v73.__r_.__value_.__r.__words[0];
      }

      if ((v73.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v73.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v73.__r_.__value_.__l.__size_;
      }

      v43 = std::string::append(&v76, v41, size);
      v44 = *&v43->__r_.__value_.__l.__data_;
      v77.__r_.__value_.__r.__words[2] = v43->__r_.__value_.__r.__words[2];
      *&v77.__r_.__value_.__l.__data_ = v44;
      v43->__r_.__value_.__l.__size_ = 0;
      v43->__r_.__value_.__r.__words[2] = 0;
      v43->__r_.__value_.__r.__words[0] = 0;
      v45 = std::string::append(&v77, " for ");
      v46 = *&v45->__r_.__value_.__l.__data_;
      v86.__r_.__value_.__r.__words[2] = v45->__r_.__value_.__r.__words[2];
      *&v86.__r_.__value_.__l.__data_ = v46;
      v45->__r_.__value_.__l.__size_ = 0;
      v45->__r_.__value_.__r.__words[2] = 0;
      v45->__r_.__value_.__r.__words[0] = 0;
      v47 = *(a4 + 23);
      if (v47 >= 0)
      {
        v48 = a4;
      }

      else
      {
        v48 = *a4;
      }

      if (v47 >= 0)
      {
        v49 = *(a4 + 23);
      }

      else
      {
        v49 = *(a4 + 8);
      }

      v50 = std::string::append(&v86, v48, v49);
      v51 = *&v50->__r_.__value_.__l.__data_;
      v87.__r_.__value_.__r.__words[2] = v50->__r_.__value_.__r.__words[2];
      *&v87.__r_.__value_.__l.__data_ = v51;
      v50->__r_.__value_.__l.__size_ = 0;
      v50->__r_.__value_.__r.__words[2] = 0;
      v50->__r_.__value_.__r.__words[0] = 0;
      v52 = std::string::append(&v87, " parameter of LSTM op.");
      v53 = *&v52->__r_.__value_.__l.__data_;
      v79 = v52->__r_.__value_.__r.__words[2];
      *v78 = v53;
      v52->__r_.__value_.__l.__size_ = 0;
      v52->__r_.__value_.__r.__words[2] = 0;
      v52->__r_.__value_.__r.__words[0] = 0;
      MIL::ValidationResult::ValidationResult(a7, &v80, 315, v78);
      if (SHIBYTE(v79) < 0)
      {
        operator delete(v78[0]);
      }

      if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v87.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v86.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v77.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v73.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v76.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v75.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v74.__r_.__value_.__l.__data_);
      }

      v23 = v81;
      if (!v81)
      {
        return;
      }

      goto LABEL_25;
    }
  }

  v31 = *a6->__begin_;
  if (v31 != *a5->__begin_)
  {
    v33 = (*a1)[1];
    v71 = **a1;
    v72 = v33;
    if (v33)
    {
      atomic_fetch_add_explicit((v33 + 8), 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "Input and Hidden weights hidden dimensions mismatch for LSTM op.");
    MIL::ValidationResult::ValidationResult(a7, &v71, 315, __p);
    if (v70 < 0)
    {
      operator delete(__p[0]);
    }

    v23 = v72;
    if (!v72)
    {
      return;
    }

    goto LABEL_25;
  }

  v32 = a6->__begin_[1];
  if (v31 == 4 * v32)
  {
    MIL::ValidationResult::ValidationResult(a7);
    return;
  }

  v54 = (*a1)[1];
  v67 = **a1;
  v68 = v54;
  if (v54)
  {
    atomic_fetch_add_explicit((v54 + 8), 1uLL, memory_order_relaxed);
    v32 = a6->__begin_[1];
  }

  std::to_string(&v76, v32);
  v55 = std::string::insert(&v76, 0, "Hidden dimension must be of shape 4*HiddenSize. Provided hiddenSize: ");
  v56 = *&v55->__r_.__value_.__l.__data_;
  v77.__r_.__value_.__r.__words[2] = v55->__r_.__value_.__r.__words[2];
  *&v77.__r_.__value_.__l.__data_ = v56;
  v55->__r_.__value_.__l.__size_ = 0;
  v55->__r_.__value_.__r.__words[2] = 0;
  v55->__r_.__value_.__r.__words[0] = 0;
  v57 = std::string::append(&v77, " hiddenDim: ");
  v58 = *&v57->__r_.__value_.__l.__data_;
  v86.__r_.__value_.__r.__words[2] = v57->__r_.__value_.__r.__words[2];
  *&v86.__r_.__value_.__l.__data_ = v58;
  v57->__r_.__value_.__l.__size_ = 0;
  v57->__r_.__value_.__r.__words[2] = 0;
  v57->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v75, *a6->__begin_);
  if ((v75.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v59 = &v75;
  }

  else
  {
    v59 = v75.__r_.__value_.__r.__words[0];
  }

  if ((v75.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v60 = HIBYTE(v75.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v60 = v75.__r_.__value_.__l.__size_;
  }

  v61 = std::string::append(&v86, v59, v60);
  v62 = *&v61->__r_.__value_.__l.__data_;
  v87.__r_.__value_.__r.__words[2] = v61->__r_.__value_.__r.__words[2];
  *&v87.__r_.__value_.__l.__data_ = v62;
  v61->__r_.__value_.__l.__size_ = 0;
  v61->__r_.__value_.__r.__words[2] = 0;
  v61->__r_.__value_.__r.__words[0] = 0;
  v63 = std::string::append(&v87, "for LSTM op.");
  v64 = *&v63->__r_.__value_.__l.__data_;
  v66 = v63->__r_.__value_.__r.__words[2];
  *v65 = v64;
  v63->__r_.__value_.__l.__size_ = 0;
  v63->__r_.__value_.__r.__words[2] = 0;
  v63->__r_.__value_.__r.__words[0] = 0;
  MIL::ValidationResult::ValidationResult(a7, &v67, 315, v65);
  if (SHIBYTE(v66) < 0)
  {
    operator delete(v65[0]);
  }

  if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v87.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v75.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v86.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v77.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v76.__r_.__value_.__l.__data_);
  }

  v23 = v68;
  if (v68)
  {
    goto LABEL_25;
  }
}

void sub_2181B7B60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::__shared_weak_count *a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (*(v47 - 169) < 0)
  {
    operator delete(*(v47 - 192));
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (*(v47 - 201) < 0)
  {
    operator delete(*(v47 - 224));
  }

  if (a47 < 0)
  {
    operator delete(a42);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::anonymous namespace::ValidateLSTMHelper(std::shared_ptr<MIL::Location const>,MIL::IRTensorValueType const*,MIL::IRTensorValueType const*,MIL::IRTensorValueType const*,MIL::IRTensorValueType const*,MIL::IRValueType const*,MIL::IRValueType const*,std::string,MIL::IRValueType const*,MIL::IRValueType const*,MIL::IRValueType const*,MIL::IRValueType const*)::$_1::operator()(uint64_t **a1@<X0>, uint64_t a2@<X1>, int a3@<W3>, MIL::ValidationResult *a4@<X8>)
{
  v7 = (*(*a2 + 96))(a2);
  v41 = 0;
  v42 = 0;
  v40 = 0;
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&v40, *v7, v7[1], (v7[1] - *v7) >> 3);
  std::string::basic_string[abi:ne200100]<0>(&v37, "LSTM");
  v8 = (*a1)[1];
  v35 = **a1;
  v36 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  MIL::ValueTypeInferenceUtils::EnsureShapeIsConstant(&v40, &v37, &v35, &v38);
  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  if ((*(v38.__r_.__value_.__r.__words[0] + 16))(&v38))
  {
    MIL::ValidationResult::~ValidationResult(&v38);
    v9 = MIL::IRDimension::AsConstant(*v40);
    v10 = (*(*v9 + 48))(v9);
    if (v10 == a3)
    {
      MIL::ValidationResult::ValidationResult(a4);
    }

    else
    {
      v11 = (*a1)[1];
      v33 = **a1;
      v34 = v11;
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      std::operator+<char>();
      v12 = std::string::append(&v28, " elements: ");
      v13 = *&v12->__r_.__value_.__l.__data_;
      v29.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
      *&v29.__r_.__value_.__l.__data_ = v13;
      v12->__r_.__value_.__l.__size_ = 0;
      v12->__r_.__value_.__r.__words[2] = 0;
      v12->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v27, v10);
      if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v14 = &v27;
      }

      else
      {
        v14 = v27.__r_.__value_.__r.__words[0];
      }

      if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v27.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v27.__r_.__value_.__l.__size_;
      }

      v16 = std::string::append(&v29, v14, size);
      v17 = *&v16->__r_.__value_.__l.__data_;
      v30.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
      *&v30.__r_.__value_.__l.__data_ = v17;
      v16->__r_.__value_.__l.__size_ = 0;
      v16->__r_.__value_.__r.__words[2] = 0;
      v16->__r_.__value_.__r.__words[0] = 0;
      v18 = std::string::append(&v30, ".");
      v19 = *&v18->__r_.__value_.__l.__data_;
      v37.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
      *&v37.__r_.__value_.__l.__data_ = v19;
      v18->__r_.__value_.__l.__size_ = 0;
      v18->__r_.__value_.__r.__words[2] = 0;
      v18->__r_.__value_.__r.__words[0] = 0;
      v20 = std::string::append(&v37, " Expecting ");
      v21 = *&v20->__r_.__value_.__l.__data_;
      v38.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
      *&v38.__r_.__value_.__l.__data_ = v21;
      v20->__r_.__value_.__l.__size_ = 0;
      v20->__r_.__value_.__r.__words[2] = 0;
      v20->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v26, a3);
      if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v22 = &v26;
      }

      else
      {
        v22 = v26.__r_.__value_.__r.__words[0];
      }

      if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v23 = HIBYTE(v26.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v23 = v26.__r_.__value_.__l.__size_;
      }

      v24 = std::string::append(&v38, v22, v23);
      v25 = *&v24->__r_.__value_.__l.__data_;
      v32 = v24->__r_.__value_.__r.__words[2];
      __p = v25;
      v24->__r_.__value_.__l.__size_ = 0;
      v24->__r_.__value_.__r.__words[2] = 0;
      v24->__r_.__value_.__r.__words[0] = 0;
      MIL::ValidationResult::ValidationResult(a4, &v33, 315, &__p);
      if (SHIBYTE(v32) < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v26.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v38.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v37.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v30.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v27.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v29.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v28.__r_.__value_.__l.__data_);
      }

      if (v34)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v34);
      }
    }
  }

  else
  {
    MIL::MILResult::MILResult(a4, &v38);
    *a4 = &unk_2829E9B70;
    *(a4 + 12) = v39;
    MIL::ValidationResult::~ValidationResult(&v38);
  }

  if (v40)
  {
    v41 = v40;
    operator delete(v40);
  }
}

void sub_2181B8104(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *__p, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, uint64_t a49, std::__shared_weak_count *a50)
{
  if (a47 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (*(v50 - 105) < 0)
  {
    operator delete(*(v50 - 128));
  }

  if (*(v50 - 137) < 0)
  {
    operator delete(*(v50 - 160));
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a50)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a50);
  }

  v52 = *(v50 - 72);
  if (v52)
  {
    *(v50 - 64) = v52;
    operator delete(v52);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios15::Gru::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2181BAC9C(_Unwind_Exception *a1)
{
  v4 = *(v2 - 80);
  *(v2 - 80) = 0;
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
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x658], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::Lstm::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2181C05EC(_Unwind_Exception *a1)
{
  v5 = *(v2 - 80);
  *(v2 - 80) = 0;
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0xB88], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::Rnn::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2181C4718(_Unwind_Exception *a1)
{
  v5 = *(v2 - 80);
  *(v2 - 80) = 0;
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x5D8], 0);
  _Unwind_Resume(a1);
}

void sub_2181C5510(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

_BYTE *std::pair<std::string const,std::shared_ptr<MIL::IRParameter>>::pair[abi:ne200100]<char const(&)[16],std::unique_ptr<MIL::IRParameter>,0>(_BYTE *a1, char *a2, uint64_t *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::shared_ptr<MIL::IRParameter>::shared_ptr[abi:ne200100]<MIL::IRParameter,std::default_delete<MIL::IRParameter>,0>(v5 + 3, a3);
  return a1;
}

void sub_2181C55F8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_2181C5670(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

_BYTE *std::pair<std::string const,std::shared_ptr<MIL::IRParameter>>::pair[abi:ne200100]<char const(&)[21],std::unique_ptr<MIL::IRParameter>,0>(_BYTE *a1, char *a2, uint64_t *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::shared_ptr<MIL::IRParameter>::shared_ptr[abi:ne200100]<MIL::IRParameter,std::default_delete<MIL::IRParameter>,0>(v5 + 3, a3);
  return a1;
}

void sub_2181C5758(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios15::CustomValidators::ValidateBaseReduction(MIL::Operators::Common::ios15::CustomValidators *this@<X0>, MIL::ValidationResult *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(&v48, "axes");
  IsParameterSet = MIL::IROperation::IsParameterSet(this, &v48.__r_.__value_.__l.__data_);
  v6 = IsParameterSet;
  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v48.__r_.__value_.__l.__data_);
    if (!v6)
    {
      goto LABEL_15;
    }
  }

  else if (!IsParameterSet)
  {
    goto LABEL_15;
  }

  std::string::basic_string[abi:ne200100]<0>(&v48, "x");
  ParameterType = MIL::IROperation::GetParameterType(this);
  v8 = MIL::IRValueType::AsTensorType(ParameterType);
  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v48.__r_.__value_.__l.__data_);
  }

  if (((*(*v8 + 104))(v8) & 1) == 0)
  {
    goto LABEL_15;
  }

  v9 = MIL::IRTensorValueType::Rank(v8);
  std::string::basic_string[abi:ne200100]<0>(&v48, "axes");
  ParameterValue = MIL::IROperation::GetParameterValue(this);
  v11 = MIL::IRValue::AsTensor(ParameterValue);
  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v48.__r_.__value_.__l.__data_);
  }

  v12 = MIL::IRValue::AsTensor(v11);
  Data = MIL::IRTensorValue::GetDataView<int>(v12);
  if (v14)
  {
    v15 = Data;
    v16 = 4 * v14;
    while (1)
    {
      v17 = *v15;
      if (!MIL::Validation::IsAxisValidForRank(*v15, v9))
      {
        break;
      }

      ++v15;
      v16 -= 4;
      if (!v16)
      {
        goto LABEL_14;
      }
    }

    LocationPtr = MIL::IRObject::GetLocationPtr(this);
    v22 = LocationPtr[1];
    v46 = *LocationPtr;
    v47 = v22;
    if (v22)
    {
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*this + 56))(this);
    std::operator+<char>();
    v24 = *&v23->__r_.__value_.__l.__data_;
    v42.__r_.__value_.__r.__words[2] = v23->__r_.__value_.__r.__words[2];
    *&v42.__r_.__value_.__l.__data_ = v24;
    v23->__r_.__value_.__l.__size_ = 0;
    v23->__r_.__value_.__r.__words[2] = 0;
    v23->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v40, v17);
    if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v25 = &v40;
    }

    else
    {
      v25 = v40.__r_.__value_.__r.__words[0];
    }

    if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v40.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v40.__r_.__value_.__l.__size_;
    }

    v27 = std::string::append(&v42, v25, size);
    v28 = *&v27->__r_.__value_.__l.__data_;
    v43.__r_.__value_.__r.__words[2] = v27->__r_.__value_.__r.__words[2];
    *&v43.__r_.__value_.__l.__data_ = v28;
    v27->__r_.__value_.__l.__size_ = 0;
    v27->__r_.__value_.__r.__words[2] = 0;
    v27->__r_.__value_.__r.__words[0] = 0;
    v29 = std::string::append(&v43, "for input with rank: ");
    v30 = *&v29->__r_.__value_.__l.__data_;
    v48.__r_.__value_.__r.__words[2] = v29->__r_.__value_.__r.__words[2];
    *&v48.__r_.__value_.__l.__data_ = v30;
    v29->__r_.__value_.__l.__size_ = 0;
    v29->__r_.__value_.__r.__words[2] = 0;
    v29->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v39, v9);
    if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v31 = &v39;
    }

    else
    {
      v31 = v39.__r_.__value_.__r.__words[0];
    }

    if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v32 = HIBYTE(v39.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v32 = v39.__r_.__value_.__l.__size_;
    }

    v33 = std::string::append(&v48, v31, v32);
    v34 = *&v33->__r_.__value_.__l.__data_;
    v45 = v33->__r_.__value_.__r.__words[2];
    v44 = v34;
    v33->__r_.__value_.__l.__size_ = 0;
    v33->__r_.__value_.__r.__words[2] = 0;
    v33->__r_.__value_.__r.__words[0] = 0;
    MIL::ValidationResult::ValidationResult(a2, &v46, 315, &v44);
    if (SHIBYTE(v45) < 0)
    {
      operator delete(v44);
    }

    if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v39.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v48.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v43.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v40.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v42.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v41.__r_.__value_.__l.__data_);
    }

    v20 = v47;
    if (v47)
    {
      goto LABEL_52;
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

  v18 = MIL::IRObject::GetLocationPtr(this);
  v19 = v18[1];
  v37 = *v18;
  v38 = v19;
  if (v19)
  {
    atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*this + 56))(this);
  std::operator+<char>();
  MIL::ValidationResult::ValidationResult(a2, &v37, 315, &__p);
  if (v36 < 0)
  {
    operator delete(__p);
  }

  v20 = v38;
  if (v38)
  {
LABEL_52:
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }
}

void sub_2181C5B48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  if (*(v47 - 121) < 0)
  {
    operator delete(*(v47 - 144));
  }

  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (*(v47 - 73) < 0)
  {
    operator delete(*(v47 - 96));
  }

  if (a47 < 0)
  {
    operator delete(a42);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  v49 = *(v47 - 104);
  if (v49)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v49);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceBaseArgReduction(MIL::IRConstantDimension **a1, void *a2, void *a3)
{
  v3 = a2[1];
  v4[0] = *a2;
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::ValueTypeInferenceUtils::ValueTypeInferenceBaseArgReductionCommon(a1, v4, a3);
}

void sub_2181C5CA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceBaseReduction(MIL::IRConstantDimension **a1, uint64_t a2, void *a3)
{
  v45 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(__p, "x");
  SingleValueType = MIL::ValueTypeInferenceUtils::GetSingleValueType(a3, __p);
  v6 = MIL::IRValueType::AsTensorType(SingleValueType);
  (*(*v6 + 88))(v6);
  if (v44 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = *a1;
  std::string::basic_string[abi:ne200100]<0>(__p, "x");
  v8 = MIL::ValueTypeInferenceUtils::GetSingleValueType(a3, __p);
  v9 = MIL::IRValueType::AsTensorType(v8);
  if (v44 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "keep_dims");
  SingleValue = MIL::ValueTypeInferenceUtils::GetSingleValue(a3, __p);
  v11 = MIL::IRValue::GetScalar<BOOL>(SingleValue);
  if (v44 < 0)
  {
    operator delete(__p[0]);
  }

  v12 = (*(*v9 + 96))(v9);
  v37 = 0;
  v38 = 0;
  v39 = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, "axes");
  v13 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, __p);
  v14 = v13;
  if (v44 < 0)
  {
    operator delete(__p[0]);
    if (v14)
    {
      goto LABEL_9;
    }
  }

  else if (v13)
  {
LABEL_9:
    std::string::basic_string[abi:ne200100]<0>(__p, "axes");
    v15 = MIL::ValueTypeInferenceUtils::GetSingleValue(a3, __p);
    v16 = MIL::IRValue::AsTensor(v15);
    Data = MIL::IRTensorValue::GetDataView<int>(v16);
    v19 = v18;
    if (v44 < 0)
    {
      operator delete(__p[0]);
    }

    MIL::ValueTypeInferenceUtils::ConvertAxesToNonNeg(Data, v19, (v12[1] - *v12) >> 3, &v41);
    std::unordered_set<unsigned long>::unordered_set<std::__wrap_iter<unsigned long *>>(__p, v41, v42);
    v40 = 0;
    if (v12[1] != *v12)
    {
      while (std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::find<unsigned long long>(__p, &v40))
      {
        if (v11)
        {
          v20 = MIL::IRConstantDimension::Make(v7, 1);
          v21 = v38;
          if (v38 < v39)
          {
            *v38 = v20;
            v22 = v21 + 8;
LABEL_36:
            v38 = v22;
            goto LABEL_37;
          }

          v28 = (v38 - v37) >> 3;
          if ((v28 + 1) >> 61)
          {
            std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
          }

          v29 = (v39 - v37) >> 2;
          if (v29 <= v28 + 1)
          {
            v29 = v28 + 1;
          }

          if (v39 - v37 >= 0x7FFFFFFFFFFFFFF8)
          {
            v30 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v30 = v29;
          }

          if (v30)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<std::string const*>>(&v37, v30);
          }

          *(8 * v28) = v20;
          v22 = (8 * v28 + 8);
          memcpy((8 * v28 - (v38 - v37)), v37, v38 - v37);
          v33 = v37;
          v37 = (8 * v28 - (v38 - v37));
          v38 = v22;
          v39 = 0;
          if (!v33)
          {
            goto LABEL_36;
          }

          goto LABEL_35;
        }

LABEL_37:
        if (++v40 >= (v12[1] - *v12) >> 3)
        {
          goto LABEL_41;
        }
      }

      v23 = *v12;
      v24 = v38;
      if (v38 < v39)
      {
        *v38 = *(v23 + 8 * v40);
        v22 = v24 + 8;
        goto LABEL_36;
      }

      v25 = (v38 - v37) >> 3;
      if ((v25 + 1) >> 61)
      {
        std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
      }

      v26 = (v39 - v37) >> 2;
      if (v26 <= v25 + 1)
      {
        v26 = v25 + 1;
      }

      if (v39 - v37 >= 0x7FFFFFFFFFFFFFF8)
      {
        v27 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v27 = v26;
      }

      if (v27)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::string const*>>(&v37, v27);
      }

      v31 = (8 * v25);
      *v31 = *(v23 + 8 * v40);
      v22 = (8 * v25 + 8);
      v32 = v31 - (v38 - v37);
      memcpy(v32, v37, v38 - v37);
      v33 = v37;
      v37 = v32;
      v38 = v22;
      v39 = 0;
      if (!v33)
      {
        goto LABEL_36;
      }

LABEL_35:
      operator delete(v33);
      goto LABEL_36;
    }

LABEL_41:
    std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(__p);
    if (v41)
    {
      v42 = v41;
      operator delete(v41);
    }

LABEL_47:
    MIL::IRTensorValueType::MakeWithShape();
  }

  if (v11)
  {
    v36 = v12;
    v35 = *v12;
    v34 = v36[1];
    __p[0] = MIL::IRConstantDimension::Make(v7, 1);
    std::vector<MIL::IRDimension const*>::insert(&v37, v38, (v34 - v35) >> 3, __p);
  }

  goto LABEL_47;
}

void sub_2181C6114(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *std::vector<MIL::IRDimension const*>::insert(void *a1, char *__src, unint64_t a3, char *a4)
{
  if (!a3)
  {
    return __src;
  }

  v5 = a4;
  v8 = a1[1];
  v9 = a1[2];
  if (a3 <= (v9 - v8) >> 3)
  {
    v15 = v8 - __src;
    if (a3 <= (v8 - __src) >> 3)
    {
      v18 = a1[1];
      v17 = a3;
    }

    else
    {
      v16 = 0;
      v17 = v15 >> 3;
      v18 = &v8[8 * (a3 - (v15 >> 3))];
      v19 = *a4;
      v20 = (8 * a3 - v15 - 8) >> 3;
      v21 = vdupq_n_s64(v20);
      do
      {
        v22 = vmovn_s64(vcgeq_u64(v21, vorrq_s8(vdupq_n_s64(v16), xmmword_218583C30)));
        if (v22.i8[0])
        {
          *&v8[8 * v16] = v19;
        }

        if (v22.i8[4])
        {
          *&v8[8 * v16 + 8] = v19;
        }

        v16 += 2;
      }

      while (((v20 + 2) & 0x3FFFFFFFFFFFFFFELL) != v16);
      a1[1] = v18;
      if (v8 == __src)
      {
        return __src;
      }
    }

    v23 = &__src[8 * a3];
    v24 = &v18[-8 * a3];
    v25 = v18;
    if (v24 < v8)
    {
      v25 = v18;
      do
      {
        v26 = *v24;
        v24 += 8;
        *v25 = v26;
        v25 += 8;
      }

      while (v24 < v8);
    }

    a1[1] = v25;
    if (v18 != v23)
    {
      memmove(&__src[8 * a3], __src, v18 - v23);
    }

    if (__src <= v5)
    {
      if (a1[1] <= v5)
      {
        v27 = 0;
      }

      else
      {
        v27 = a3;
      }

      v5 += 8 * v27;
    }

    v28 = 0;
    v29 = *v5;
    v30 = vdupq_n_s64(v17 - 1);
    v31 = __src + 8;
    do
    {
      v32 = vmovn_s64(vcgeq_u64(v30, vorrq_s8(vdupq_n_s64(v28), xmmword_218583C30)));
      if (v32.i8[0])
      {
        *(v31 - 1) = v29;
      }

      if (v32.i8[4])
      {
        *v31 = v29;
      }

      v28 += 2;
      v31 += 2;
    }

    while (((v17 + 1) & 0xFFFFFFFFFFFFFFFELL) != v28);
    return __src;
  }

  v10 = *a1;
  v11 = a3 + (&v8[-*a1] >> 3);
  if (v11 >> 61)
  {
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  v12 = __src - v10;
  v13 = v9 - v10;
  if (v13 >> 2 > v11)
  {
    v11 = v13 >> 2;
  }

  if (v13 >= 0x7FFFFFFFFFFFFFF8)
  {
    v14 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v14 = v11;
  }

  if (v14)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::string const*>>(a1, v14);
  }

  v34 = 0;
  v33 = 8 * (v12 >> 3);
  v35 = *a4;
  v36 = (a3 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
  v37 = v36 - ((a3 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2;
  v38 = vdupq_n_s64(v36);
  v39 = (v33 + 8);
  do
  {
    v40 = vmovn_s64(vcgeq_u64(v38, vorrq_s8(vdupq_n_s64(v34), xmmword_218583C30)));
    if (v40.i8[0])
    {
      *(v39 - 1) = v35;
    }

    if (v40.i8[4])
    {
      *v39 = v35;
    }

    v34 += 2;
    v39 += 2;
  }

  while (v37 != v34);
  memcpy((v33 + 8 * a3), __src, a1[1] - __src);
  v41 = *a1;
  v42 = v33 + 8 * a3 + a1[1] - __src;
  a1[1] = __src;
  v43 = (__src - v41);
  v44 = (v33 - (__src - v41));
  memcpy(v44, v41, v43);
  v45 = *a1;
  *a1 = v44;
  a1[1] = v42;
  a1[2] = 0;
  if (v45)
  {
    operator delete(v45);
  }

  return v33;
}

uint64_t std::unordered_set<unsigned long>::unordered_set<std::__wrap_iter<unsigned long *>>(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::__emplace_unique_key_args<unsigned long,unsigned long const&>(a1, v5++);
    }

    while (v5 != a3);
  }

  return a1;
}

void *std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::__emplace_unique_key_args<unsigned long,unsigned long const&>(void *a1, unint64_t *a2)
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

void MIL::Operators::Common::ios15::BaseArgReduction::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2181C7204(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51)
{
  v54 = *(v52 - 96);
  *(v52 - 96) = 0;
  if (v54)
  {
    (*(*v54 + 8))(v54);
  }

  v55 = *v51;
  *v51 = 0;
  if (v55)
  {
    (*(*v55 + 8))(v55);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a45, 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a51, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::ReduceArgmax::Make(uint64_t a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios15::BaseArgReduction::Make();
}

void sub_2181C7620(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::ReduceArgmin::Make(uint64_t a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios15::BaseArgReduction::Make();
}

void sub_2181C76D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::BaseReduction::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2181C84B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v59 - 184), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a58, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::ReduceL1Norm::Make(uint64_t a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios15::BaseReduction::Make();
}

void sub_2181C8A08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::ReduceL2Norm::Make(uint64_t a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios15::BaseReduction::Make();
}

void sub_2181C8ABC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::ReduceLogSum::Make(uint64_t a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios15::BaseReduction::Make();
}

void sub_2181C8B70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::ReduceLogSumExp::Make(uint64_t a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios15::BaseReduction::Make();
}

void sub_2181C8C24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::ReduceMax::Make(uint64_t a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios15::BaseReduction::Make();
}

void sub_2181C8CD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::ReduceMean::Make(uint64_t a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios15::BaseReduction::Make();
}

void sub_2181C8D8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::ReduceMin::Make(uint64_t a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios15::BaseReduction::Make();
}

void sub_2181C8E40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::ReduceProd::Make(uint64_t a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios15::BaseReduction::Make();
}

void sub_2181C8EF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::ReduceSum::Make(uint64_t a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios15::BaseReduction::Make();
}

void sub_2181C8FA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::ReduceSumSquare::Make(uint64_t a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios15::BaseReduction::Make();
}

void sub_2181C905C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::CustomValidators::ValidateBaseScatterWithAxis(MIL::Operators::Common::ios15::CustomValidators *this@<X0>, MIL::ValidationResult *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(&v35, "axis");
  IsParameterSet = MIL::IROperation::IsParameterSet(this, &v35.__r_.__value_.__l.__data_);
  v6 = IsParameterSet;
  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
    if (!v6)
    {
LABEL_11:
      MIL::ValidationResult::ValidationResult(a2);
      return;
    }
  }

  else if (!IsParameterSet)
  {
    goto LABEL_11;
  }

  std::string::basic_string[abi:ne200100]<0>(&v35, "data");
  ParameterType = MIL::IROperation::GetParameterType(this);
  v8 = MIL::IRValueType::AsTensorType(ParameterType);
  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

  if (((*(*v8 + 104))(v8) & 1) == 0)
  {
    goto LABEL_11;
  }

  v9 = MIL::IRTensorValueType::Rank(v8);
  std::string::basic_string[abi:ne200100]<0>(&v35, "axis");
  ParameterValue = MIL::IROperation::GetParameterValue(this);
  v11 = MIL::IRValue::GetScalar<int>(ParameterValue);
  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

  if (MIL::Validation::IsAxisValidForRank(v11, v9))
  {
    goto LABEL_11;
  }

  LocationPtr = MIL::IRObject::GetLocationPtr(this);
  v13 = LocationPtr[1];
  v33 = *LocationPtr;
  v34 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*this + 56))(this);
  std::operator+<char>();
  v14 = std::string::append(&v28, ", 'axis' must be within range (-data_rank - 1, data_rank) (exclusive). Provided axis: ");
  v15 = *&v14->__r_.__value_.__l.__data_;
  v29.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
  *&v29.__r_.__value_.__l.__data_ = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v27, v11);
  if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = &v27;
  }

  else
  {
    v16 = v27.__r_.__value_.__r.__words[0];
  }

  if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v27.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v27.__r_.__value_.__l.__size_;
  }

  v18 = std::string::append(&v29, v16, size);
  v19 = *&v18->__r_.__value_.__l.__data_;
  v30.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
  *&v30.__r_.__value_.__l.__data_ = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  v20 = std::string::append(&v30, "for input 'data' with rank: ");
  v21 = *&v20->__r_.__value_.__l.__data_;
  v35.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
  *&v35.__r_.__value_.__l.__data_ = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v26, v9);
  if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v22 = &v26;
  }

  else
  {
    v22 = v26.__r_.__value_.__r.__words[0];
  }

  if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v23 = HIBYTE(v26.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v23 = v26.__r_.__value_.__l.__size_;
  }

  v24 = std::string::append(&v35, v22, v23);
  v25 = *&v24->__r_.__value_.__l.__data_;
  v32 = v24->__r_.__value_.__r.__words[2];
  v31 = v25;
  v24->__r_.__value_.__l.__size_ = 0;
  v24->__r_.__value_.__r.__words[2] = 0;
  v24->__r_.__value_.__r.__words[0] = 0;
  MIL::ValidationResult::ValidationResult(a2, &v33, 315, &v31);
  if (SHIBYTE(v32) < 0)
  {
    operator delete(v31);
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }
}

void sub_2181C938C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (*(v40 - 105) < 0)
  {
    operator delete(*(v40 - 128));
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v40 - 57) < 0)
  {
    operator delete(*(v40 - 80));
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  v42 = *(v40 - 88);
  if (v42)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v42);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios15::BaseScatter::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2181CA828(_Unwind_Exception *a1)
{
  v4 = STACK[0x238];
  STACK[0x238] = 0;
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
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x260], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::BaseScatterWithAxis::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2181CC3E0(_Unwind_Exception *a1)
{
  v4 = STACK[0x248];
  STACK[0x248] = 0;
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
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x270], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::Scatter::Make(uint64_t a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios15::BaseScatterWithAxis::Make();
}

void sub_2181CCBB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::ScatterAlongAxis::Make(uint64_t a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios15::BaseScatterWithAxis::Make();
}

void sub_2181CCC64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::ScatterNd::Make(uint64_t a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios15::BaseScatter::Make();
}

void sub_2181CCD18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::CustomValidators::ValidateArgsort(MIL::Operators::Common::ios15::CustomValidators *this@<X0>, MIL::ValidationResult *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(v34, "x");
  ParameterType = MIL::IROperation::GetParameterType(this);
  v6 = MIL::IRValueType::AsTensorType(ParameterType);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  if (((*(*v6 + 104))(v6) & 1) == 0)
  {
    goto LABEL_17;
  }

  v7 = MIL::IRTensorValueType::Rank(v6);
  std::string::basic_string[abi:ne200100]<0>(v34, "axis");
  ParameterValue = MIL::IROperation::GetParameterValue(this);
  v9 = MIL::IRValue::GetScalar<int>(ParameterValue);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  if (v9 >= v7 || v9 < -v7)
  {
    LocationPtr = MIL::IRObject::GetLocationPtr(this);
    v19 = LocationPtr[1];
    v32 = *LocationPtr;
    v33 = v19;
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v30, "'axis' must be within range (-input_rank - 1, input_rank) (exclusive)");
    MIL::ValidationResult::ValidationResult(a2, &v32, 315, v30);
    if (v31 < 0)
    {
      operator delete(v30[0]);
    }

    v17 = v33;
    if (v33)
    {
      goto LABEL_23;
    }
  }

  else
  {
    OutputType = MIL::IROperation::GetOutputType(this, 0);
    v11 = (*(*OutputType + 24))(OutputType);
    if (v11)
    {
      v12 = (*(*v11 + 96))(v11);
      v13 = (*(*v6 + 96))(v6);
      v14 = *(v12 + 8) - *v12;
      if (v14 != *(v13 + 8) - *v13 || memcmp(*v12, *v13, v14))
      {
        v15 = MIL::IRObject::GetLocationPtr(this);
        v16 = v15[1];
        v24 = *v15;
        v25 = v16;
        if (v16)
        {
          atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        std::string::basic_string[abi:ne200100]<0>(__p, "Output type should be same as input type");
        MIL::ValidationResult::ValidationResult(a2, &v24, 313, __p);
        if (v23 < 0)
        {
          operator delete(__p[0]);
        }

        v17 = v25;
        if (!v25)
        {
          return;
        }

LABEL_23:
        std::__shared_weak_count::__release_shared[abi:ne200100](v17);
        return;
      }

LABEL_17:
      MIL::ValidationResult::ValidationResult(a2);
      return;
    }

    v20 = MIL::IRObject::GetLocationPtr(this);
    v21 = v20[1];
    v28 = *v20;
    v29 = v21;
    if (v21)
    {
      atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v26, "Output type should be a tensor");
    MIL::ValidationResult::ValidationResult(a2, &v28, 313, v26);
    if (v27 < 0)
    {
      operator delete(v26[0]);
    }

    v17 = v29;
    if (v29)
    {
      goto LABEL_23;
    }
  }
}

void sub_2181CD008(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, std::__shared_weak_count *a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a24);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios15::CustomValidators::ValidatePad(MIL::Operators::Common::ios15::CustomValidators *this@<X0>, uint64_t a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(&v142, "x");
  ParameterType = MIL::IROperation::GetParameterType(this);
  v6 = MIL::IRValueType::AsTensorType(ParameterType);
  if (SHIBYTE(v143) < 0)
  {
    operator delete(v142);
  }

  v7 = (*(*v6 + 96))(v6);
  v151 = 0;
  v152 = 0;
  v150 = 0;
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&v150, *v7, v7[1], (v7[1] - *v7) >> 3);
  std::string::basic_string[abi:ne200100]<0>(&v142, "pad");
  v8 = MIL::IROperation::GetParameterType(this);
  v9 = MIL::IRValueType::AsTensorType(v8);
  if (SHIBYTE(v143) < 0)
  {
    operator delete(v142);
  }

  v10 = (*(*v9 + 96))(v9);
  v147 = 0;
  v148 = 0;
  v149 = 0;
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&v147, *v10, v10[1], (v10[1] - *v10) >> 3);
  LocationPtr = MIL::IRObject::GetLocationPtr(this);
  v12 = LocationPtr[1];
  v141[0] = *LocationPtr;
  v141[1] = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  if (!MIL::ValidationResult::IsGood(&v142))
  {
    v16 = v144;
    *(a2 + 8) = v143;
    v143 = 0uLL;
    *(a2 + 24) = v16;
    *(a2 + 40) = v145;
    v144 = 0uLL;
    v145 = 0;
    *a2 = &unk_2829E9B70;
    *(a2 + 48) = v146;
    goto LABEL_96;
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "mode");
  ParameterValue = MIL::IROperation::GetParameterValue(this);
  MIL::IRValue::GetScalar<std::string>(ParameterValue, &v140);
  if (SHIBYTE(v139) < 0)
  {
    operator delete(__p);
  }

  v14 = MIL::IRDimension::AsConstant(*v147);
  if ((*(*v14 + 48))(v14) < 5)
  {
    goto LABEL_34;
  }

  if (SHIBYTE(v140.__r_.__value_.__r.__words[2]) < 0)
  {
    if (v140.__r_.__value_.__l.__size_ == 8)
    {
      v15 = v140.__r_.__value_.__r.__words[0];
LABEL_19:
      if (v15->__r_.__value_.__r.__words[0] == 0x746E6174736E6F63)
      {
        goto LABEL_34;
      }
    }
  }

  else if (SHIBYTE(v140.__r_.__value_.__r.__words[2]) == 8)
  {
    v15 = &v140;
    goto LABEL_19;
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "pad");
  v17 = MIL::IROperation::TryGetParameterValue(this, &__p, 0);
  v18 = v17;
  if (SHIBYTE(v139) < 0)
  {
    operator delete(__p);
    if (!v18)
    {
LABEL_82:
      v55 = MIL::IRObject::GetLocationPtr(this);
      v56 = v55[1];
      v135 = *v55;
      v136 = v56;
      if (v56)
      {
        atomic_fetch_add_explicit(&v56->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      MIL::ValidationResult::ValidationResult(a2, &v135, 315, v133);
      if (v134 < 0)
      {
        operator delete(v133[0]);
      }

      if (v136)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v136);
      }

      goto LABEL_94;
    }
  }

  else if (!v17)
  {
    goto LABEL_82;
  }

  v19 = MIL::IRDimension::AsConstant(*v147);
  v20 = (*(*v19 + 48))(v19);
  std::vector<int>::vector[abi:ne200100](&__p, v20);
  if (v138 == __p)
  {
    v21 = 0;
  }

  else
  {
    v21 = __p;
  }

  MIL::IRValueUtils::CopyTensorTo<int>(v18, v21, (v138 - __p) >> 2);
  if ((v138 - __p) >> 2 != 4)
  {
    v22 = 0;
    while (!*(__p + v22))
    {
      if (((v138 - __p) >> 2) - 4 == ++v22)
      {
        goto LABEL_33;
      }
    }

    v138 = __p;
    operator delete(__p);
    goto LABEL_82;
  }

  if (__p)
  {
LABEL_33:
    v138 = __p;
    operator delete(__p);
  }

LABEL_34:
  OutputType = MIL::IROperation::GetOutputType(this, 0);
  v24 = MIL::IRValueType::AsTensorType(OutputType);
  if ((*(*v6 + 104))(v6) && (*(*v24 + 104))(v24))
  {
    v25 = (*(*v24 + 96))(v24);
    __p = 0;
    v138 = 0;
    v139 = 0;
    std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&__p, *v25, v25[1], (v25[1] - *v25) >> 3);
    v26 = MIL::IRTensorValueType::Rank(v6);
    if (v26 != MIL::IRTensorValueType::Rank(v24))
    {
      v52 = MIL::IRObject::GetLocationPtr(this);
      v53 = v52[1];
      v131 = *v52;
      v132 = v53;
      if (v53)
      {
        atomic_fetch_add_explicit(&v53->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      std::string::basic_string[abi:ne200100]<0>(v129, "Input and output should have the same rank");
      MIL::ValidationResult::ValidationResult(a2, &v131, 313, v129);
      if (v130 < 0)
      {
        operator delete(v129[0]);
      }

      v54 = v132;
      if (v132)
      {
LABEL_80:
        std::__shared_weak_count::__release_shared[abi:ne200100](v54);
      }

LABEL_89:
      if (__p)
      {
        v138 = __p;
        operator delete(__p);
      }

      goto LABEL_94;
    }

    v27 = (*(*v9 + 16))(v9);
    std::string::basic_string[abi:ne200100]<0>(&v128, "pad");
    v28 = MIL::IROperation::TryGetParameterValue(this, &v128, 0);
    if (SHIBYTE(v128.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v128.__r_.__value_.__l.__data_);
    }

    if (!v28)
    {
      MIL::ValidationResult::ValidationResult(a2);
      goto LABEL_89;
    }

    v29 = MIL::IRValue::AsTensor(v28);
    v30 = 0;
    v103 = v27 >> 1;
    for (i = MIL::IRTensorValue::GetDataView<int>(v29) + 8 * (v27 >> 1); ; i += 8)
    {
      if (v30 >= MIL::IRTensorValueType::Rank(v6))
      {
        if (__p)
        {
          v138 = __p;
          operator delete(__p);
        }

        break;
      }

      v32 = v150[v30];
      v33 = *(__p + v30);
      v34 = (*(*v32 + 16))(v32);
      v35 = (*(*v33 + 16))(v33);
      if ((v34 == 0) == (v35 != 0))
      {
        v57 = MIL::IRObject::GetLocationPtr(this);
        v58 = v57[1];
        v126 = *v57;
        v127 = v58;
        if (v58)
        {
          atomic_fetch_add_explicit(&v58->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        std::to_string(&v123, v30);
        v59 = std::string::insert(&v123, 0, "Dim ");
        v60 = *&v59->__r_.__value_.__l.__data_;
        v128.__r_.__value_.__r.__words[2] = v59->__r_.__value_.__r.__words[2];
        *&v128.__r_.__value_.__l.__data_ = v60;
        v59->__r_.__value_.__l.__size_ = 0;
        v59->__r_.__value_.__r.__words[2] = 0;
        v59->__r_.__value_.__r.__words[0] = 0;
        v61 = std::string::append(&v128, " for both input and output should have matching dimension type");
        v62 = *&v61->__r_.__value_.__l.__data_;
        v125 = v61->__r_.__value_.__r.__words[2];
        v124 = v62;
        v61->__r_.__value_.__l.__size_ = 0;
        v61->__r_.__value_.__r.__words[2] = 0;
        v61->__r_.__value_.__r.__words[0] = 0;
        MIL::ValidationResult::ValidationResult(a2, &v126, 313, &v124);
        if (SHIBYTE(v125) < 0)
        {
          operator delete(v124);
        }

        if (SHIBYTE(v128.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v128.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v123.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v123.__r_.__value_.__l.__data_);
        }

        v54 = v127;
        if (v127)
        {
          goto LABEL_80;
        }

        goto LABEL_89;
      }

      if (v30 < MIL::IRTensorValueType::Rank(v6) - v103)
      {
        if (v32 != v33)
        {
          v63 = MIL::IRObject::GetLocationPtr(this);
          v64 = v63[1];
          v106 = *v63;
          v107 = v64;
          if (v64)
          {
            atomic_fetch_add_explicit(&v64->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          std::string::basic_string[abi:ne200100]<0>(v104, "Output shape dimensions should match input when no padding is added");
          MIL::ValidationResult::ValidationResult(a2, &v106, 313, v104);
          if (v105 < 0)
          {
            operator delete(v104[0]);
          }

          v54 = v107;
          if (v107)
          {
            goto LABEL_80;
          }

          goto LABEL_89;
        }

        goto LABEL_74;
      }

      if (!v34)
      {
        goto LABEL_74;
      }

      v36 = MIL::IRTensorValueType::Rank(v6);
      v37 = v36;
      if (SHIBYTE(v140.__r_.__value_.__r.__words[2]) < 0)
      {
        if (v140.__r_.__value_.__l.__size_ == 7 && *v140.__r_.__value_.__l.__data_ == 1818649970 && *(v140.__r_.__value_.__r.__words[0] + 3) == 1952671084)
        {
LABEL_71:
          v46 = (i - 8 * v36);
          v102 = *v46;
          if ((*(*v34 + 48))(v34) <= v102 || (v47 = v46[1], (*(*v34 + 48))(v34) <= v47))
          {
            v88 = MIL::IRObject::GetLocationPtr(this);
            v89 = v88[1];
            v121 = *v88;
            v122 = v89;
            if (v89)
            {
              atomic_fetch_add_explicit(&v89->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            std::to_string(&v117, v30);
            v90 = std::string::insert(&v117, 0, "Padding size for dim");
            v91 = *&v90->__r_.__value_.__l.__data_;
            v118.__r_.__value_.__r.__words[2] = v90->__r_.__value_.__r.__words[2];
            *&v118.__r_.__value_.__l.__data_ = v91;
            v90->__r_.__value_.__l.__size_ = 0;
            v90->__r_.__value_.__r.__words[2] = 0;
            v90->__r_.__value_.__r.__words[0] = 0;
            v92 = std::string::append(&v118, " is too big for mode reflect. ");
            v93 = *&v92->__r_.__value_.__l.__data_;
            v123.__r_.__value_.__r.__words[2] = v92->__r_.__value_.__r.__words[2];
            *&v123.__r_.__value_.__l.__data_ = v93;
            v92->__r_.__value_.__l.__size_ = 0;
            v92->__r_.__value_.__r.__words[2] = 0;
            v92->__r_.__value_.__r.__words[0] = 0;
            v94 = std::string::append(&v123, " It can a maximum of (dim_size - 1) ");
            v95 = *&v94->__r_.__value_.__l.__data_;
            v128.__r_.__value_.__r.__words[2] = v94->__r_.__value_.__r.__words[2];
            *&v128.__r_.__value_.__l.__data_ = v95;
            v94->__r_.__value_.__l.__size_ = 0;
            v94->__r_.__value_.__r.__words[2] = 0;
            v94->__r_.__value_.__r.__words[0] = 0;
            v96 = (*(*v34 + 48))(v34);
            std::to_string(&v116, v96 - 1);
            if ((v116.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v97 = &v116;
            }

            else
            {
              v97 = v116.__r_.__value_.__r.__words[0];
            }

            if ((v116.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = HIBYTE(v116.__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = v116.__r_.__value_.__l.__size_;
            }

            v99 = std::string::append(&v128, v97, size);
            v100 = *&v99->__r_.__value_.__l.__data_;
            v120 = v99->__r_.__value_.__r.__words[2];
            v119 = v100;
            v99->__r_.__value_.__l.__size_ = 0;
            v99->__r_.__value_.__r.__words[2] = 0;
            v99->__r_.__value_.__r.__words[0] = 0;
            MIL::ValidationResult::ValidationResult(a2, &v121, 315, &v119);
            if (SHIBYTE(v120) < 0)
            {
              operator delete(v119);
            }

            if (SHIBYTE(v116.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v116.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v128.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v128.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v123.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v123.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v118.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v118.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v117.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v117.__r_.__value_.__l.__data_);
            }

            v54 = v122;
            if (v122)
            {
              goto LABEL_80;
            }

            goto LABEL_89;
          }

          goto LABEL_73;
        }

        if (v140.__r_.__value_.__l.__size_ == 9)
        {
          v38 = v140.__r_.__value_.__r.__words[0];
LABEL_58:
          v40 = v38->__r_.__value_.__r.__words[0];
          v41 = v38->__r_.__value_.__s.__data_[8];
          if (v40 == 0x746163696C706572 && v41 == 101)
          {
            v43 = (i - 8 * v36);
            v101 = *v43;
            if ((*(*v34 + 48))(v34) < v101 || (v44 = v43[1], (*(*v34 + 48))(v34) < v44))
            {
              v75 = MIL::IRObject::GetLocationPtr(this);
              v76 = v75[1];
              v114 = *v75;
              v115 = v76;
              if (v76)
              {
                atomic_fetch_add_explicit(&v76->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              std::to_string(&v117, v30);
              v77 = std::string::insert(&v117, 0, "Padding size for dim");
              v78 = *&v77->__r_.__value_.__l.__data_;
              v118.__r_.__value_.__r.__words[2] = v77->__r_.__value_.__r.__words[2];
              *&v118.__r_.__value_.__l.__data_ = v78;
              v77->__r_.__value_.__l.__size_ = 0;
              v77->__r_.__value_.__r.__words[2] = 0;
              v77->__r_.__value_.__r.__words[0] = 0;
              v79 = std::string::append(&v118, " is too big for mode replicate. ");
              v80 = *&v79->__r_.__value_.__l.__data_;
              v123.__r_.__value_.__r.__words[2] = v79->__r_.__value_.__r.__words[2];
              *&v123.__r_.__value_.__l.__data_ = v80;
              v79->__r_.__value_.__l.__size_ = 0;
              v79->__r_.__value_.__r.__words[2] = 0;
              v79->__r_.__value_.__r.__words[0] = 0;
              v81 = std::string::append(&v123, " It can a maximum of (dim_size) ");
              v82 = *&v81->__r_.__value_.__l.__data_;
              v128.__r_.__value_.__r.__words[2] = v81->__r_.__value_.__r.__words[2];
              *&v128.__r_.__value_.__l.__data_ = v82;
              v81->__r_.__value_.__l.__size_ = 0;
              v81->__r_.__value_.__r.__words[2] = 0;
              v81->__r_.__value_.__r.__words[0] = 0;
              v83 = (*(*v34 + 48))(v34);
              std::to_string(&v116, v83 - 1);
              if ((v116.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v84 = &v116;
              }

              else
              {
                v84 = v116.__r_.__value_.__r.__words[0];
              }

              if ((v116.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v85 = HIBYTE(v116.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v85 = v116.__r_.__value_.__l.__size_;
              }

              v86 = std::string::append(&v128, v84, v85);
              v87 = *&v86->__r_.__value_.__l.__data_;
              v113 = v86->__r_.__value_.__r.__words[2];
              *v112 = v87;
              v86->__r_.__value_.__l.__size_ = 0;
              v86->__r_.__value_.__r.__words[2] = 0;
              v86->__r_.__value_.__r.__words[0] = 0;
              MIL::ValidationResult::ValidationResult(a2, &v114, 315, v112);
              if (SHIBYTE(v113) < 0)
              {
                operator delete(v112[0]);
              }

              if (SHIBYTE(v116.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v116.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v128.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v128.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v123.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v123.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v118.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v118.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v117.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v117.__r_.__value_.__l.__data_);
              }

              v54 = v115;
              if (v115)
              {
                goto LABEL_80;
              }

              goto LABEL_89;
            }
          }
        }
      }

      else
      {
        if (HIBYTE(v140.__r_.__value_.__r.__words[2]) != 7)
        {
          if (HIBYTE(v140.__r_.__value_.__r.__words[2]) != 9)
          {
            goto LABEL_73;
          }

          v38 = &v140;
          goto LABEL_58;
        }

        if (LODWORD(v140.__r_.__value_.__l.__data_) == 1818649970 && *(v140.__r_.__value_.__r.__words + 3) == 1952671084)
        {
          goto LABEL_71;
        }
      }

LABEL_73:
      v48 = (i - 8 * v37);
      v49 = *v48;
      v50 = v48[1];
      v51 = (*(*v34 + 48))(v34) + v50 + v49;
      if (v51 != (*(*v35 + 48))(v35))
      {
        v65 = MIL::IRObject::GetLocationPtr(this);
        v66 = v65[1];
        v110 = *v65;
        v111 = v66;
        if (v66)
        {
          atomic_fetch_add_explicit(&v66->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        std::to_string(&v118, v30);
        v67 = std::string::insert(&v118, 0, "Output dim");
        v68 = *&v67->__r_.__value_.__l.__data_;
        v123.__r_.__value_.__r.__words[2] = v67->__r_.__value_.__r.__words[2];
        *&v123.__r_.__value_.__l.__data_ = v68;
        v67->__r_.__value_.__l.__size_ = 0;
        v67->__r_.__value_.__r.__words[2] = 0;
        v67->__r_.__value_.__r.__words[0] = 0;
        v69 = std::string::append(&v123, " size incorrect. Expected ");
        v70 = *&v69->__r_.__value_.__l.__data_;
        v128.__r_.__value_.__r.__words[2] = v69->__r_.__value_.__r.__words[2];
        *&v128.__r_.__value_.__l.__data_ = v70;
        v69->__r_.__value_.__l.__size_ = 0;
        v69->__r_.__value_.__r.__words[2] = 0;
        v69->__r_.__value_.__r.__words[0] = 0;
        std::to_string(&v117, v51);
        if ((v117.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v71 = &v117;
        }

        else
        {
          v71 = v117.__r_.__value_.__r.__words[0];
        }

        if ((v117.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v72 = HIBYTE(v117.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v72 = v117.__r_.__value_.__l.__size_;
        }

        v73 = std::string::append(&v128, v71, v72);
        v74 = *&v73->__r_.__value_.__l.__data_;
        v109 = v73->__r_.__value_.__r.__words[2];
        *v108 = v74;
        v73->__r_.__value_.__l.__size_ = 0;
        v73->__r_.__value_.__r.__words[2] = 0;
        v73->__r_.__value_.__r.__words[0] = 0;
        MIL::ValidationResult::ValidationResult(a2, &v110, 313, v108);
        if (SHIBYTE(v109) < 0)
        {
          operator delete(v108[0]);
        }

        if (SHIBYTE(v117.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v117.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v128.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v128.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v123.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v123.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v118.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v118.__r_.__value_.__l.__data_);
        }

        v54 = v111;
        if (v111)
        {
          goto LABEL_80;
        }

        goto LABEL_89;
      }

LABEL_74:
      ++v30;
    }
  }

  MIL::ValidationResult::ValidationResult(a2);
LABEL_94:
  if (SHIBYTE(v140.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v140.__r_.__value_.__l.__data_);
  }

LABEL_96:
  MIL::ValidationResult::~ValidationResult(&v142);
  if (v147)
  {
    v148 = v147;
    operator delete(v147);
  }

  if (v150)
  {
    v151 = v150;
    operator delete(v150);
  }
}

void sub_2181CDF10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, uint64_t a47, void *__p, uint64_t a49, int a50, __int16 a51, char a52, char a53, uint64_t a54, uint64_t a55, std::__shared_weak_count *a56, void *a57, uint64_t a58, int a59, __int16 a60, char a61, char a62, uint64_t a63)
{
  if (a53 < 0)
  {
    operator delete(__p);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  if (a72 < 0)
  {
    operator delete(a70);
  }

  if (a62 < 0)
  {
    operator delete(a57);
  }

  if (a46 < 0)
  {
    operator delete(a41);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (a56)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a56);
  }

  if (a73)
  {
    operator delete(a73);
  }

  if (*(v73 - 217) < 0)
  {
    operator delete(*(v73 - 240));
  }

  MIL::ValidationResult::~ValidationResult((v73 - 200));
  v75 = *(v73 - 144);
  if (v75)
  {
    *(v73 - 136) = v75;
    operator delete(v75);
  }

  v76 = *(v73 - 120);
  if (v76)
  {
    *(v73 - 112) = v76;
    operator delete(v76);
  }

  _Unwind_Resume(a1);
}

void sub_2181CE2E0()
{
  if (*(v0 - 177) < 0)
  {
    JUMPOUT(0x2181CE2D4);
  }

  JUMPOUT(0x2181CE2D8);
}

void anonymous namespace::ValidatePadInputs(MIL::IRTensorValueType *a1@<X0>, MIL::IRTensorValueType *a2@<X1>, uint64_t *a3@<X2>, MIL::ValidationResult *a4@<X8>)
{
  v8 = (*(*a1 + 96))(a1);
  v33 = 0;
  v34 = 0;
  v32 = 0;
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&v32, *v8, v8[1], (v8[1] - *v8) >> 3);
  v9 = (*(*a2 + 96))(a2);
  v29 = 0;
  v30 = 0;
  v31 = 0;
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&v29, *v9, v9[1], (v9[1] - *v9) >> 3);
  if (MIL::IRTensorValueType::Rank(a2) == 1)
  {
    v10 = MIL::IRDimension::AsConstant(*v29);
    if ((*(*a1 + 104))(a1))
    {
      v11 = (*(*v10 + 48))(v10);
      if (v11 > 2 * MIL::IRTensorValueType::Rank(a1))
      {
        v12 = a3[1];
        v23 = *a3;
        v24 = v12;
        if (v12)
        {
          atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        std::string::basic_string[abi:ne200100]<0>(__p, "Pad can have a maximum size of 2 * (input x rank)");
        MIL::ValidationResult::ValidationResult(a4, &v23, 315, __p);
        if (v22 < 0)
        {
          operator delete(__p[0]);
        }

        v13 = v24;
        if (!v24)
        {
          goto LABEL_24;
        }

LABEL_23:
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
        goto LABEL_24;
      }
    }

    v15 = MIL::IRDimension::AsConstant(*v29);
    if (((*(*v15 + 48))(v15) & 1) == 0)
    {
      MIL::ValidationResult::ValidationResult(a4);
      goto LABEL_24;
    }

    v16 = a3[1];
    v19 = *a3;
    v20 = v16;
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v17, "Padding must be even! Provided odd number of padding");
    MIL::ValidationResult::ValidationResult(a4, &v19, 315, v17);
    if (v18 < 0)
    {
      operator delete(v17[0]);
    }

    v13 = v20;
    if (v20)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v14 = a3[1];
    v27 = *a3;
    v28 = v14;
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v25, "Padding must be rank 1");
    MIL::ValidationResult::ValidationResult(a4, &v27, 315, v25);
    if (v26 < 0)
    {
      operator delete(v25[0]);
    }

    v13 = v28;
    if (v28)
    {
      goto LABEL_23;
    }
  }

LABEL_24:
  if (v29)
  {
    v30 = v29;
    operator delete(v29);
  }

  if (v32)
  {
    v33 = v32;
    operator delete(v32);
  }
}

void sub_2181CE5A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, std::__shared_weak_count *a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a25);
  }

  v33 = *(v31 - 80);
  if (v33)
  {
    *(v31 - 72) = v33;
    operator delete(v33);
  }

  v34 = *(v31 - 56);
  if (v34)
  {
    *(v31 - 48) = v34;
    operator delete(v34);
  }

  _Unwind_Resume(exception_object);
}

void *MIL::IRValueUtils::CopyTensorTo<int>(MIL::IRValue *a1, void *a2, unint64_t a3)
{
  v5 = MIL::IRValue::AsTensor(a1);
  result = MIL::IRTensorValue::GetDataView<int>(v5);
  if (a3 < v7)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Insufficient destination buffer size.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (v7)
  {

    return memmove(a2, result, 4 * v7);
  }

  return result;
}

void MIL::Operators::Common::ios15::CustomValidators::ValidateFill(MIL::Operators::Common::ios15::CustomValidators *this@<X0>, MIL::ValidationResult *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(&v29, "shape");
  ParameterValue = MIL::IROperation::TryGetParameterValue(this, &v29, 0);
  v6 = ParameterValue;
  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
    if (!v6)
    {
      goto LABEL_19;
    }
  }

  else if (!ParameterValue)
  {
    goto LABEL_19;
  }

  v7 = (*(*v6 + 32))(v6);
  v8 = MIL::IRValueType::AsTensorType(v7);
  v9 = (*(*v8 + 16))(v8);
  if (v9 >= 6)
  {
    std::to_string(&v29, v9);
    v10 = std::string::insert(&v29, 0, "'shape' parameter must have size less than equal to 5. Instead, size is ");
    v11 = v10->__r_.__value_.__r.__words[0];
    size = v10->__r_.__value_.__l.__size_;
    v28[0] = v10->__r_.__value_.__r.__words[2];
    *(v28 + 3) = *(&v10->__r_.__value_.__r.__words[2] + 3);
    v13 = SHIBYTE(v10->__r_.__value_.__r.__words[2]);
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v29.__r_.__value_.__l.__data_);
    }

    LocationPtr = MIL::IRObject::GetLocationPtr(this);
    v15 = LocationPtr[1];
    v26 = *LocationPtr;
    v27 = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v13 < 0)
    {
      std::string::__init_copy_ctor_external(&v25, v11, size);
    }

    else
    {
      v25.__r_.__value_.__r.__words[0] = v11;
      v25.__r_.__value_.__l.__size_ = size;
      LODWORD(v25.__r_.__value_.__r.__words[2]) = v28[0];
      *(&v25.__r_.__value_.__r.__words[2] + 3) = *(v28 + 3);
      *(&v25.__r_.__value_.__s + 23) = v13;
    }

    MIL::ValidationResult::ValidationResult(a2, &v26, 315, &v25);
    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v25.__r_.__value_.__l.__data_);
    }

    v21 = v27;
    if (!v27)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  v16 = MIL::IRTensorValueType::Rank(v8);
  if (v16 < 2)
  {
LABEL_19:
    MIL::ValidationResult::ValidationResult(a2);
    return;
  }

  std::to_string(&v29, v16);
  v17 = std::string::insert(&v29, 0, "'shape' parameter must have 1 dimension (rank 1). Instead, rank is ");
  v11 = v17->__r_.__value_.__r.__words[0];
  v18 = v17->__r_.__value_.__l.__size_;
  v28[0] = v17->__r_.__value_.__r.__words[2];
  *(v28 + 3) = *(&v17->__r_.__value_.__r.__words[2] + 3);
  v13 = SHIBYTE(v17->__r_.__value_.__r.__words[2]);
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  v17->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  v19 = MIL::IRObject::GetLocationPtr(this);
  v20 = v19[1];
  v23 = *v19;
  v24 = v20;
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v13 < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v11, v18);
  }

  else
  {
    __p.__r_.__value_.__r.__words[0] = v11;
    __p.__r_.__value_.__l.__size_ = v18;
    LODWORD(__p.__r_.__value_.__r.__words[2]) = v28[0];
    *(&__p.__r_.__value_.__r.__words[2] + 3) = *(v28 + 3);
    *(&__p.__r_.__value_.__s + 23) = v13;
  }

  MIL::ValidationResult::ValidationResult(a2, &v23, 315, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v21 = v24;
  if (!v24)
  {
    goto LABEL_25;
  }

LABEL_24:
  std::__shared_weak_count::__release_shared[abi:ne200100](v21);
LABEL_25:
  if (v13 < 0)
  {
    operator delete(v11);
  }
}

void sub_2181CE9A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::__shared_weak_count *a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  if (v25 < 0)
  {
    operator delete(v24);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios15::CustomValidators::ValidateFlatten2D(MIL::Operators::Common::ios15::CustomValidators *this@<X0>, MIL::ValidationResult *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "x");
  ParameterType = MIL::IROperation::GetParameterType(this);
  v6 = MIL::IRValueType::AsTensorType(ParameterType);
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "axis");
  IsParameterSet = MIL::IROperation::IsParameterSet(this, __p);
  v8 = IsParameterSet;
  if (v15 < 0)
  {
    operator delete(__p[0]);
    if (v8)
    {
      goto LABEL_5;
    }

LABEL_12:
    MIL::ValidationResult::ValidationResult(a2);
    return;
  }

  if (!IsParameterSet)
  {
    goto LABEL_12;
  }

LABEL_5:
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

void sub_2181CEB58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  _Unwind_Resume(exception_object);
}

void anonymous namespace::ValidateFlatten2DInputs(MIL::IRTensorValueType *a1@<X0>, int a2@<W1>, uint64_t *a3@<X2>, MIL::ValidationResult *a4@<X8>)
{
  if (((*(*a1 + 104))(a1) & 1) != 0 && ((v8 = MIL::IRTensorValueType::Rank(a1), v8 < a2) || -v8 > a2))
  {
    v9 = a3[1];
    v12 = *a3;
    v13 = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "'axis'' must be within range [-input_rank, input_rank]");
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

void sub_2181CEC90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
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

void MIL::Operators::Common::ios15::CustomValidators::ValidateNonMaximumSuppression(MIL::Operators::Common::ios15::CustomValidators *this@<X0>, MIL::ValidationResult *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(&v40, "boxes");
  ParameterType = MIL::IROperation::GetParameterType(this);
  v6 = MIL::IRValueType::AsTensorType(ParameterType);
  if (SHIBYTE(v42) < 0)
  {
    operator delete(v40);
  }

  std::string::basic_string[abi:ne200100]<0>(&v40, "scores");
  v7 = MIL::IROperation::GetParameterType(this);
  v8 = MIL::IRValueType::AsTensorType(v7);
  if (SHIBYTE(v42) < 0)
  {
    operator delete(v40);
  }

  if (*(*v6 + 104))(v6) && ((*(*v8 + 104))(v8))
  {
    v9 = (*(*v6 + 96))(v6);
    v41 = 0;
    v42 = 0;
    v40 = 0;
    std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&v40, *v9, v9[1], (v9[1] - *v9) >> 3);
    v10 = (*(*v8 + 96))(v8);
    v33 = 0;
    v34 = 0;
    v35 = 0;
    std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&v33, *v10, v10[1], (v10[1] - *v10) >> 3);
    if (*v40 == *v33)
    {
      if (v40[1] == *(v33 + 1))
      {
        v18 = (*(*v40[2] + 16))(v40[2]);
        if ((*(*v18 + 48))(v18) == 4)
        {
          MIL::ValidationResult::ValidationResult(a2);
LABEL_35:
          if (v33)
          {
            v34 = v33;
            operator delete(v33);
          }

          if (v40)
          {
            v41 = v40;
            operator delete(v40);
          }

          return;
        }

        LocationPtr = MIL::IRObject::GetLocationPtr(this);
        v20 = LocationPtr[1];
        v23 = *LocationPtr;
        v24 = v20;
        if (v20)
        {
          atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        std::string::basic_string[abi:ne200100]<0>(v21, "Invalid boxes coordinate");
        MIL::ValidationResult::ValidationResult(a2, &v23, 315, v21);
        if (v22 < 0)
        {
          operator delete(v21[0]);
        }

        v13 = v24;
        if (!v24)
        {
          goto LABEL_35;
        }
      }

      else
      {
        v16 = MIL::IRObject::GetLocationPtr(this);
        v17 = v16[1];
        v27 = *v16;
        v28 = v17;
        if (v17)
        {
          atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        std::string::basic_string[abi:ne200100]<0>(v25, "Boxes don't match between boxes and scores");
        MIL::ValidationResult::ValidationResult(a2, &v27, 315, v25);
        if (v26 < 0)
        {
          operator delete(v25[0]);
        }

        v13 = v28;
        if (!v28)
        {
          goto LABEL_35;
        }
      }
    }

    else
    {
      v11 = MIL::IRObject::GetLocationPtr(this);
      v12 = v11[1];
      v31 = *v11;
      v32 = v12;
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "Batch doesn't match between boxes and scores");
      MIL::ValidationResult::ValidationResult(a2, &v31, 315, __p);
      if (v30 < 0)
      {
        operator delete(__p[0]);
      }

      v13 = v32;
      if (!v32)
      {
        goto LABEL_35;
      }
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    goto LABEL_35;
  }

  v14 = MIL::IRObject::GetLocationPtr(this);
  v15 = v14[1];
  v38 = *v14;
  v39 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(v36, "Non-fixed rank not supported");
  MIL::ValidationResult::ValidationResult(a2, &v38, 315, v36);
  if (v37 < 0)
  {
    operator delete(v36[0]);
  }

  if (v39)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v39);
  }
}

void sub_2181CF078(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::__shared_weak_count *a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  if (a33)
  {
    operator delete(a33);
  }

  v36 = *(v34 - 72);
  if (v36)
  {
    *(v34 - 64) = v36;
    operator delete(v36);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios15::CustomValidators::ValidateTile(MIL::Operators::Common::ios15::CustomValidators *this@<X0>, MIL::ValidationResult *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "reps");
  ParameterValue = MIL::IROperation::TryGetParameterValue(this, __p, 0);
  LocationPtr = MIL::IRObject::GetLocationPtr(this);
  v7 = LocationPtr[1];
  v8[0] = *LocationPtr;
  v8[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  if (v10 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2181CF210(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void anonymous namespace::ValidateTileInputs(MIL::IRValue *a1@<X0>, uint64_t *a2@<X1>, MIL::ValidationResult *a3@<X8>)
{
  if (a1 && (v5 = MIL::IRValue::AsTensor(a1), Data = MIL::IRTensorValue::GetDataView<int>(v5), v7))
  {
    v8 = 4 * v7;
    while (*Data > 0)
    {
      ++Data;
      v8 -= 4;
      if (!v8)
      {
        goto LABEL_6;
      }
    }

    v9 = a2[1];
    v12 = *a2;
    v13 = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "All values of reps must be at least 1");
    MIL::ValidationResult::ValidationResult(a3, &v12, 315, __p);
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
LABEL_6:

    MIL::ValidationResult::ValidationResult(a3);
  }
}

void sub_2181CF314(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
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

void MIL::Operators::Common::ios15::CustomValidators::ValidateTopk(MIL::Operators::Common::ios15::CustomValidators *this@<X0>, uint64_t a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, "x");
  ParameterType = MIL::IROperation::GetParameterType(this);
  v6 = MIL::IRValueType::AsTensorType(ParameterType);
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "axis");
  if (MIL::IROperation::TryGetParameterValue(this, &__p, 0))
  {
    std::string::basic_string[abi:ne200100]<0>(&v20, "axis");
    ParameterValue = MIL::IROperation::GetParameterValue(this);
    v8 = MIL::IRValue::GetScalar<int>(ParameterValue);
    if (v21 < 0)
    {
      operator delete(v20);
    }
  }

  else
  {
    v8 = -1;
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "k");
  v9 = MIL::IROperation::TryGetParameterValue(this, &__p, 0);
  v10 = v9;
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p);
    if (v10)
    {
      goto LABEL_11;
    }
  }

  else if (v9)
  {
LABEL_11:
    v11 = MIL::IRValue::GetScalar<int>(v10);
    goto LABEL_14;
  }

  v11 = 1;
LABEL_14:
  LocationPtr = MIL::IRObject::GetLocationPtr(this);
  v13 = LocationPtr[1];
  v14[0] = *LocationPtr;
  v14[1] = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  if (MIL::ValidationResult::IsGood(&__p))
  {
    MIL::ValidationResult::ValidationResult(a2);
  }

  else
  {
    *(a2 + 8) = v16;
    v16 = 0uLL;
    *(a2 + 24) = v17;
    *(a2 + 40) = v18;
    v17 = 0uLL;
    v18 = 0;
    *a2 = &unk_2829E9B70;
    *(a2 + 48) = v19;
  }

  MIL::ValidationResult::~ValidationResult(&__p);
}

void sub_2181CF528(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void anonymous namespace::ValidateTopkInputs(MIL::IRTensorValueType *a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t *a4@<X3>, MIL::ValidationResult *a5@<X8>)
{
  v10 = (*(*a1 + 96))(a1);
  v65 = 0;
  v66 = 0;
  v64 = 0;
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&v64, *v10, v10[1], (v10[1] - *v10) >> 3);
  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    goto LABEL_9;
  }

  v11 = a2;
  if (a2 < 0)
  {
    v11 = MIL::IRTensorValueType::Rank(a1) + a2;
  }

  v12 = MIL::IRTensorValueType::Rank(a1);
  if (v11 < 0 || v12 <= v11)
  {
    v16 = a4[1];
    v62 = *a4;
    v63 = v16;
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::to_string(&v54, a2);
    v17 = std::string::insert(&v54, 0, "Provided axis (");
    v18 = *&v17->__r_.__value_.__l.__data_;
    v55.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
    *&v55.__r_.__value_.__l.__data_ = v18;
    v17->__r_.__value_.__l.__size_ = 0;
    v17->__r_.__value_.__r.__words[2] = 0;
    v17->__r_.__value_.__r.__words[0] = 0;
    v19 = std::string::append(&v55, ") is not within range [-");
    v20 = *&v19->__r_.__value_.__l.__data_;
    v56.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
    *&v56.__r_.__value_.__l.__data_ = v20;
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    v21 = MIL::IRTensorValueType::Rank(a1);
    std::to_string(&v53, v21);
    if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v22 = &v53;
    }

    else
    {
      v22 = v53.__r_.__value_.__r.__words[0];
    }

    if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v53.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v53.__r_.__value_.__l.__size_;
    }

    v24 = std::string::append(&v56, v22, size);
    v25 = *&v24->__r_.__value_.__l.__data_;
    v57.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
    *&v57.__r_.__value_.__l.__data_ = v25;
    v24->__r_.__value_.__l.__size_ = 0;
    v24->__r_.__value_.__r.__words[2] = 0;
    v24->__r_.__value_.__r.__words[0] = 0;
    v26 = std::string::append(&v57, ", ");
    v27 = *&v26->__r_.__value_.__l.__data_;
    v58.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
    *&v58.__r_.__value_.__l.__data_ = v27;
    v26->__r_.__value_.__l.__size_ = 0;
    v26->__r_.__value_.__r.__words[2] = 0;
    v26->__r_.__value_.__r.__words[0] = 0;
    v28 = MIL::IRTensorValueType::Rank(a1);
    std::to_string(&v52, v28 - 1);
    if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v29 = &v52;
    }

    else
    {
      v29 = v52.__r_.__value_.__r.__words[0];
    }

    if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v30 = HIBYTE(v52.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v30 = v52.__r_.__value_.__l.__size_;
    }

    v31 = std::string::append(&v58, v29, v30);
    v32 = *&v31->__r_.__value_.__l.__data_;
    v59.__r_.__value_.__r.__words[2] = v31->__r_.__value_.__r.__words[2];
    *&v59.__r_.__value_.__l.__data_ = v32;
    v31->__r_.__value_.__l.__size_ = 0;
    v31->__r_.__value_.__r.__words[2] = 0;
    v31->__r_.__value_.__r.__words[0] = 0;
    v33 = std::string::append(&v59, "] for TopK");
    v34 = *&v33->__r_.__value_.__l.__data_;
    v61 = v33->__r_.__value_.__r.__words[2];
    v60 = v34;
    v33->__r_.__value_.__l.__size_ = 0;
    v33->__r_.__value_.__r.__words[2] = 0;
    v33->__r_.__value_.__r.__words[0] = 0;
    MIL::ValidationResult::ValidationResult(a5, &v62, 315, &v60);
    if (SHIBYTE(v61) < 0)
    {
      operator delete(v60);
    }

    if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v59.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v52.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v58.__r_.__value_.__l.__data_);
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

    v35 = v63;
    if (!v63)
    {
      goto LABEL_45;
    }

LABEL_44:
    std::__shared_weak_count::__release_shared[abi:ne200100](v35);
    goto LABEL_45;
  }

  v13 = (*(*v64[v11] + 16))(v64[v11]);
  v14 = v13;
  if (!v13 || (v15 = (*(*v13 + 48))(v13), a3 >= 1) && v15 >= a3)
  {
LABEL_9:
    MIL::ValidationResult::ValidationResult(a5);
    goto LABEL_45;
  }

  v36 = a4[1];
  v50 = *a4;
  v51 = v36;
  if (v36)
  {
    atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::to_string(&v56, a3);
  v37 = std::string::insert(&v56, 0, "Provided k (");
  v38 = *&v37->__r_.__value_.__l.__data_;
  v57.__r_.__value_.__r.__words[2] = v37->__r_.__value_.__r.__words[2];
  *&v57.__r_.__value_.__l.__data_ = v38;
  v37->__r_.__value_.__l.__size_ = 0;
  v37->__r_.__value_.__r.__words[2] = 0;
  v37->__r_.__value_.__r.__words[0] = 0;
  v39 = std::string::append(&v57, ") is not within range [1, ");
  v40 = *&v39->__r_.__value_.__l.__data_;
  v58.__r_.__value_.__r.__words[2] = v39->__r_.__value_.__r.__words[2];
  *&v58.__r_.__value_.__l.__data_ = v40;
  v39->__r_.__value_.__l.__size_ = 0;
  v39->__r_.__value_.__r.__words[2] = 0;
  v39->__r_.__value_.__r.__words[0] = 0;
  v41 = (*(*v14 + 48))(v14);
  std::to_string(&v55, v41);
  if ((v55.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v42 = &v55;
  }

  else
  {
    v42 = v55.__r_.__value_.__r.__words[0];
  }

  if ((v55.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v43 = HIBYTE(v55.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v43 = v55.__r_.__value_.__l.__size_;
  }

  v44 = std::string::append(&v58, v42, v43);
  v45 = *&v44->__r_.__value_.__l.__data_;
  v59.__r_.__value_.__r.__words[2] = v44->__r_.__value_.__r.__words[2];
  *&v59.__r_.__value_.__l.__data_ = v45;
  v44->__r_.__value_.__l.__size_ = 0;
  v44->__r_.__value_.__r.__words[2] = 0;
  v44->__r_.__value_.__r.__words[0] = 0;
  v46 = std::string::append(&v59, "] for TopK");
  v47 = *&v46->__r_.__value_.__l.__data_;
  v49 = v46->__r_.__value_.__r.__words[2];
  *__p = v47;
  v46->__r_.__value_.__l.__size_ = 0;
  v46->__r_.__value_.__r.__words[2] = 0;
  v46->__r_.__value_.__r.__words[0] = 0;
  MIL::ValidationResult::ValidationResult(a5, &v50, 315, __p);
  if (SHIBYTE(v49) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v59.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v55.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v58.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v57.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v56.__r_.__value_.__l.__data_);
  }

  v35 = v51;
  if (v51)
  {
    goto LABEL_44;
  }

LABEL_45:
  if (v64)
  {
    v65 = v64;
    operator delete(v64);
  }
}

void sub_2181CFAA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::__shared_weak_count *a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (*(v54 - 137) < 0)
  {
    operator delete(*(v54 - 160));
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (*(v54 - 169) < 0)
  {
    operator delete(*(v54 - 192));
  }

  if (a54 < 0)
  {
    operator delete(a49);
  }

  if (a47 < 0)
  {
    operator delete(a42);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  v56 = *(v54 - 88);
  if (v56)
  {
    *(v54 - 80) = v56;
    operator delete(v56);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceArgsort(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(__p, "x");
  SingleValueType = MIL::ValueTypeInferenceUtils::GetSingleValueType(a3, __p);
  v5 = MIL::IRValueType::AsTensorType(SingleValueType);
  v6 = (*(*v5 + 96))(v5);
  memset(v7, 0, sizeof(v7));
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(v7, *v6, v6[1], (v6[1] - *v6) >> 3);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  MIL::IRTensorValueType::MakeWithShape();
}

void sub_2181CFD70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceFill(MIL::IRConstantDimension **a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(__p, "value");
  v6 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, __p);
  if (v6)
  {
    ValueType = MIL::IRTypedArgument::GetValueType(*v6[5]);
    v8 = MIL::IRValueType::AsTensorType(ValueType);
    if (SHIBYTE(v29) < 0)
    {
      operator delete(__p[0]);
    }

    (*(*v8 + 88))(v8);
    std::string::basic_string[abi:ne200100]<0>(__p, "shape");
    SingleValue = MIL::ValueTypeInferenceUtils::TryGetSingleValue(a3, __p);
    if (SHIBYTE(v29) < 0)
    {
      operator delete(__p[0]);
    }

    __p[0] = 0;
    __p[1] = 0;
    v29 = 0;
    if (SingleValue)
    {
      v10 = MIL::IRValue::AsTensor(SingleValue);
      v11 = (*(*v10 + 32))(v10);
      v12 = (*(*v11 + 16))(v11);
      std::vector<std::string const*>::reserve(__p, v12);
      Data = MIL::IRTensorValue::GetDataView<int>(v10);
      if (v14)
      {
        v15 = Data;
        v16 = 4 * v14;
        do
        {
          v17 = *v15;
          if (v17 <= 0)
          {
            exception = __cxa_allocate_exception(0x48uLL);
            v25 = a2[1];
            *&v27 = *a2;
            *(&v27 + 1) = v25;
            if (v25)
            {
              atomic_fetch_add_explicit((v25 + 8), 1uLL, memory_order_relaxed);
            }

            std::string::basic_string[abi:ne200100]<0>(v26, "Cannot fill tensor of shape with negative elements.");
            MIL::ValidationError::ValidationError(exception, &v27, v26, 315);
          }

          v30[0] = MIL::IRConstantDimension::Make(*a1, v17);
          std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](__p, v30);
          ++v15;
          v16 -= 4;
        }

        while (v16);
      }
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(v30, "shape");
      v18 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, v30);
      if (!v18)
      {
        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      v19 = MIL::IRTypedArgument::GetValueType(*v18[5]);
      v20 = MIL::IRValueType::AsTensorType(v19);
      v21 = **(*(*v20 + 96))(v20);
      if (v31 < 0)
      {
        operator delete(v30[0]);
      }

      if ((*(*v21 + 24))(v21))
      {
        v30[0] = MIL::IRUnknownDimension::Make(*a1, 1);
        std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](__p, v30);
      }

      else
      {
        v22 = MIL::IRDimension::AsConstant(v21);
        v23 = (*(*v22 + 48))(v22);
        std::vector<std::string const*>::reserve(__p, v23);
        for (; v23; --v23)
        {
          v30[0] = MIL::IRUnknownDimension::Make(*a1, 0);
          std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](__p, v30);
        }
      }
    }

    MIL::IRTensorValueType::MakeWithShape();
  }

  std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
}

void sub_2181D0164(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceFlatten2D(MIL::IRUnknownDimension **a1, uint64_t *a2, void *a3)
{
  v28[1] = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(__p, "x");
  SingleValueType = MIL::ValueTypeInferenceUtils::GetSingleValueType(a3, __p);
  v7 = MIL::IRValueType::AsTensorType(SingleValueType);
  if (v26 < 0)
  {
    operator delete(__p[0]);
  }

  v8 = (*(*v7 + 96))(v7);
  std::string::basic_string[abi:ne200100]<0>(__p, "axis");
  SingleValue = MIL::ValueTypeInferenceUtils::GetSingleValue(a3, __p);
  v10 = MIL::IRValue::GetScalar<int>(SingleValue);
  if (v26 < 0)
  {
    operator delete(__p[0]);
  }

  v11 = *a2;
  v12 = a2[1];
  v24[0] = v11;
  v24[1] = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  if (!MIL::ValidationResult::IsGood(__p))
  {
    exception = __cxa_allocate_exception(0x48uLL);
    MIL::MILResult::MILResult(v22, __p);
    v22[0].__r_.__value_.__r.__words[0] = &unk_2829E9B70;
    v23 = v27;
    MIL::ValidationError::ValidationError(exception, v22);
  }

  if (v10 < 0)
  {
    v10 += (v8[1] - *v8) >> 3;
  }

  memset(v21, 0, sizeof(v21));
  std::vector<std::string const*>::reserve(v21, 2uLL);
  if ((*(*v7 + 104))(v7))
  {
    v13 = v10;
    if (v10)
    {
      v14 = 0;
      v15 = 1;
      while ((*(**(*v8 + 8 * v14) + 16))(*(*v8 + 8 * v14)))
      {
        v16 = MIL::IRDimension::AsConstant(*(*v8 + 8 * v14));
        v15 *= (*(*v16 + 48))(v16);
        if (v13 == ++v14)
        {
          goto LABEL_20;
        }
      }

      v28[0] = MIL::IRUnknownDimension::Make(*a1, 0);
      std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](v21, v28);
    }

    else
    {
      v15 = 1;
LABEL_20:
      v28[0] = MIL::IRConstantDimension::Make(*a1, v15);
      std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](v21, v28);
    }

    v17 = (v8[1] - *v8) >> 3;
    v18 = 1;
    if (v17 <= v13)
    {
LABEL_25:
      v28[0] = MIL::IRConstantDimension::Make(*a1, v18);
      std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](v21, v28);
    }

    else
    {
      while ((*(**(*v8 + 8 * v13) + 16))(*(*v8 + 8 * v13)))
      {
        v19 = MIL::IRDimension::AsConstant(*(*v8 + 8 * v13));
        v18 *= (*(*v19 + 48))(v19);
        if (v17 == ++v13)
        {
          goto LABEL_25;
        }
      }

      v28[0] = MIL::IRUnknownDimension::Make(*a1, 0);
      std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](v21, v28);
    }
  }

  else
  {
    v28[0] = MIL::IRUnknownDimension::Make(*a1, 0);
    std::vector<MIL::IRDimension const*>::assign(v21, 2uLL, v28);
  }

  (*(*v7 + 88))(v7);
  MIL::IRTensorValueType::MakeWithShape();
}

void sub_2181D064C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  MIL::ValidationResult::~ValidationResult(&a13);
  MIL::ValidationResult::~ValidationResult(&a22);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceNonMaximumSuppression(MIL::IRConstantDimension **a1, void *a2, void *a3)
{
  v38 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&v35, "max_boxes");
  SingleValue = MIL::ValueTypeInferenceUtils::GetSingleValue(a3, &v35);
  v7 = MIL::IRValue::GetScalar<int>(SingleValue);
  if (SHIBYTE(v37) < 0)
  {
    operator delete(v35);
  }

  if (v7 > 0)
  {
    v8 = MIL::IRConstantDimension::Make(*a1, v7);
    std::string::basic_string[abi:ne200100]<0>(&v35, "boxes");
    SingleValueType = MIL::ValueTypeInferenceUtils::GetSingleValueType(a3, &v35);
    v10 = MIL::IRValueType::AsTensorType(SingleValueType);
    if (SHIBYTE(v37) < 0)
    {
      operator delete(v35);
    }

    std::string::basic_string[abi:ne200100]<0>(&v35, "scores");
    v11 = MIL::ValueTypeInferenceUtils::GetSingleValueType(a3, &v35);
    v12 = MIL::IRValueType::AsTensorType(v11);
    if (SHIBYTE(v37) < 0)
    {
      operator delete(v35);
    }

    v13 = (*(*v10 + 96))(v10);
    v30 = 0;
    v31 = 0;
    v32 = 0;
    std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&v30, *v13, v13[1], (v13[1] - *v13) >> 3);
    if ((v31 - v30) >= 9)
    {
      *(v30 + 1) = v8;
      v14 = (*(*v12 + 96))(v12);
      v25 = 0;
      v26 = 0;
      v27 = 0;
      std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&v25, *v14, v14[1], (v14[1] - *v14) >> 3);
      if ((v26 - v25) >= 9)
      {
        *(v25 + 1) = v8;
        if (v31 != v30)
        {
          v35 = *v30;
          v36 = v8;
          memset(v22, 0, sizeof(v22));
          std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const* const*,MIL::IRDimension const* const*>(v22, &v35, &v37, 2uLL);
          if (v31 != v30)
          {
            v35 = *v30;
            memset(__p, 0, sizeof(__p));
            std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const* const*,MIL::IRDimension const* const*>(__p, &v35, &v36, 1uLL);
            (*(*v10 + 88))(v10);
            MIL::IRTensorValueType::MakeWithShape();
          }

          std::vector<MIL::IRDimension const*>::__throw_out_of_range[abi:ne200100]();
        }

        std::vector<MIL::IRDimension const*>::__throw_out_of_range[abi:ne200100]();
      }

      exception = __cxa_allocate_exception(0x48uLL);
      v20 = a2[1];
      *&v24 = *a2;
      *(&v24 + 1) = v20;
      if (v20)
      {
        atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
      }

      std::string::basic_string[abi:ne200100]<0>(v23, "Scores param should have a rank of 3");
      MIL::ValidationError::ValidationError(exception, &v24, v23, 315);
    }

    v17 = __cxa_allocate_exception(0x48uLL);
    v18 = a2[1];
    *&v29 = *a2;
    *(&v29 + 1) = v18;
    if (v18)
    {
      atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v28, "Boxes param should have a rank of 3");
    MIL::ValidationError::ValidationError(v17, &v29, v28, 315);
  }

  v15 = __cxa_allocate_exception(0x48uLL);
  v16 = a2[1];
  *&v34 = *a2;
  *(&v34 + 1) = v16;
  if (v16)
  {
    atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(v33, "Max_boxes parameter needs to be greater than zero always.");
  MIL::ValidationError::ValidationError(v15, &v34, v33, 315);
}

void sub_2181D0BAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, std::__shared_weak_count *a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a22);
  }

  if (v36)
  {
    __cxa_free_exception(v35);
  }

  if (a23)
  {
    operator delete(a23);
  }

  if (a34)
  {
    operator delete(a34);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceNonZero(MIL::IRUnknownDimension **a1, uint64_t a2, void *a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(__p, "x");
  SingleValueType = MIL::ValueTypeInferenceUtils::GetSingleValueType(a3, __p);
  v6 = MIL::IRValueType::AsTensorType(SingleValueType);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  v7 = (*(*v6 + 96))(v6);
  __p[0] = 0;
  __p[1] = 0;
  v9 = 0;
  std::vector<std::string const*>::reserve(__p, 2uLL);
  v10[0] = MIL::IRUnknownDimension::Make(*a1, 0);
  std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](__p, v10);
  if (MIL::ValueTypeInferenceUtils::ShapeHasVariadicUnknownDims(v7))
  {
    v10[0] = MIL::IRUnknownDimension::Make(*a1, 0);
  }

  else
  {
    v10[0] = MIL::IRConstantDimension::Make(*a1, ((v7[1] - *v7) >> 3));
  }

  std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](__p, v10);
  MIL::IRTensorValueType::MakeWithShape();
}

void sub_2181D0E70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceOneHot(void *a1, void *a2, void *a3)
{
  v47 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&__p, "indices");
  SingleValueType = MIL::ValueTypeInferenceUtils::GetSingleValueType(a3, &__p);
  v7 = MIL::IRValueType::AsTensorType(SingleValueType);
  v8 = (*(*v7 + 96))(v7);
  v42 = 0;
  v43 = 0;
  v44 = 0;
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&v42, *v8, v8[1], (v8[1] - *v8) >> 3);
  if (SHIBYTE(v38) < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "on_value");
  v9 = MIL::ValueTypeInferenceUtils::GetSingleValueType(a3, &__p);
  v10 = MIL::IRValueType::AsTensorType(v9);
  v11 = (*(*v10 + 88))(v10);
  if (SHIBYTE(v38) < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "off_value");
  v12 = MIL::ValueTypeInferenceUtils::GetSingleValueType(a3, &__p);
  v13 = MIL::IRValueType::AsTensorType(v12);
  v14 = (*(*v13 + 88))(v13);
  if (SHIBYTE(v38) < 0)
  {
    operator delete(__p);
  }

  if (v11 != v14)
  {
    exception = __cxa_allocate_exception(0x48uLL);
    v29 = a2[1];
    *&v41 = *a2;
    *(&v41 + 1) = v29;
    if (v29)
    {
      atomic_fetch_add_explicit((v29 + 8), 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v40, "The dtype of on_value and off_value must match with each other.");
    MIL::ValidationError::ValidationError(exception, &v41, v40, 315);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "one_hot_vector_size");
  SingleValue = MIL::ValueTypeInferenceUtils::TryGetSingleValue(a3, &__p);
  if (SHIBYTE(v38) < 0)
  {
    operator delete(__p);
  }

  v39 = -1;
  if (SingleValue)
  {
    v39 = MIL::IRValue::GetScalar<int>(SingleValue);
    if ((v39 & 0x80000000) != 0)
    {
      std::ostringstream::basic_ostringstream[abi:ne200100](&__p);
      v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "The value of one_hot_vector_size must be non-negative but is ", 61);
      v31 = MEMORY[0x21CEAFB20](v30, v39);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, ".", 1);
      v32 = __cxa_allocate_exception(0x48uLL);
      v33 = a2[1];
      *&v35 = *a2;
      *(&v35 + 1) = v33;
      if (v33)
      {
        atomic_fetch_add_explicit((v33 + 8), 1uLL, memory_order_relaxed);
      }

      std::stringbuf::str();
      MIL::ValidationError::ValidationError(v32, &v35, v34, 315);
    }
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "axis");
  v16 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, &__p);
  v17 = v16;
  if (SHIBYTE(v38) < 0)
  {
    operator delete(__p);
    if (v17)
    {
LABEL_14:
      std::string::basic_string[abi:ne200100]<0>(&__p, "axis");
      v18 = MIL::ValueTypeInferenceUtils::GetSingleValue(a3, &__p);
      v19 = MIL::IRValue::GetScalar<int>(v18);
      if (SHIBYTE(v38) < 0)
      {
        operator delete(__p);
      }

      __p = a1;
      v37 = &v42;
      v38 = &v39;
      if ((v19 & 0x80000000) == 0)
      {
        MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceOneHot(std::shared_ptr<MIL::MILContext> const&,std::shared_ptr<MIL::Location const>,std::unordered_map<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>> const&,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>> const&,std::vector<std::vector<MIL::IRValueType const*>> const&)::$_0::operator()(&__p, &v42, v19, &v45);
        goto LABEL_33;
      }

LABEL_20:
      if (v42 != v43)
      {
        v20 = (v43 - 8);
        if (v43 - 8 > v42)
        {
          v21 = v42 + 8;
          do
          {
            v22 = *(v21 - 8);
            *(v21 - 8) = *v20;
            *v20-- = v22;
            v23 = v21 >= v20;
            v21 += 8;
          }

          while (!v23);
        }
      }

      MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceOneHot(std::shared_ptr<MIL::MILContext> const&,std::shared_ptr<MIL::Location const>,std::unordered_map<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>> const&,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>> const&,std::vector<std::vector<MIL::IRValueType const*>> const&)::$_0::operator()(&__p, &v42, ~v19, &v45);
      v24 = (v46 - 8);
      if (v45 != v46 && v24 > v45)
      {
        v26 = v45 + 8;
        do
        {
          v27 = *(v26 - 8);
          *(v26 - 8) = *v24;
          *v24-- = v27;
          v23 = v26 >= v24;
          v26 += 8;
        }

        while (!v23);
      }

LABEL_33:
      MIL::IRTensorValueType::MakeWithShape();
    }
  }

  else if (v16)
  {
    goto LABEL_14;
  }

  __p = a1;
  v37 = &v42;
  v38 = &v39;
  v19 = -1;
  goto LABEL_20;
}

void sub_2181D1370(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, std::__shared_weak_count *a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a19);
  }

  if (v38)
  {
    __cxa_free_exception(v37);
  }

  std::ostringstream::~ostringstream(&a20, MEMORY[0x277D82828]);
  MEMORY[0x21CEAFDA0](&a37);
  v41 = *(v39 - 120);
  if (v41)
  {
    *(v39 - 112) = v41;
    operator delete(v41);
  }

  _Unwind_Resume(a1);
}

void sub_2181D148C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    JUMPOUT(0x2181D1480);
  }

  JUMPOUT(0x2181D1484);
}

void MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceOneHot(std::shared_ptr<MIL::MILContext> const&,std::shared_ptr<MIL::Location const>,std::unordered_map<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>> const&,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>> const&,std::vector<std::vector<MIL::IRValueType const*>> const&)::$_0::operator()(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  if (a2[1] != *a2)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      if (a3 == v9)
      {
        v10 = **(a1 + 16);
        if ((v10 & 0x80000000) != 0)
        {
          v12 = MIL::IRUnknownDimension::Make(**a1, 0);
        }

        else
        {
          v12 = MIL::IRConstantDimension::Make(**a1, v10);
        }

        std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](a4, &v12);
      }

      v11 = *(**(a1 + 8) + 8 * v9);
      if ((*(*v11 + 32))(v11))
      {
        break;
      }

      std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](a4, (*a2 + v8));
      ++v9;
      v8 += 8;
      if (v9 >= (a2[1] - *a2) >> 3)
      {
        return;
      }
    }

    v12 = MIL::IRUnknownDimension::Make(**a1, 1);
    std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](a4, &v12);
  }
}

void sub_2181D15D4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferencePad(MIL::IRConstantDimension **a1, uint64_t *a2, void *a3)
{
  v56 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(__p, "x");
  SingleValueType = MIL::ValueTypeInferenceUtils::GetSingleValueType(a3, __p);
  v7 = MIL::IRValueType::AsTensorType(SingleValueType);
  if (v48 < 0)
  {
    operator delete(__p[0]);
  }

  (*(*v7 + 88))(v7);
  v8 = (*(*v7 + 96))(v7);
  v51 = 0;
  v52 = 0;
  v50 = 0;
  std::vector<std::string const*>::reserve(&v50, (v8[1] - *v8) >> 3);
  std::string::basic_string[abi:ne200100]<0>(__p, "pad");
  v9 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, __p);
  if (!v9)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  ValueType = MIL::IRTypedArgument::GetValueType(*v9[5]);
  v11 = MIL::IRValueType::AsTensorType(ValueType);
  if (v48 < 0)
  {
    operator delete(__p[0]);
  }

  v12 = a2[1];
  v46[0] = *a2;
  v46[1] = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  if (!MIL::ValidationResult::IsGood(__p))
  {
    exception = __cxa_allocate_exception(0x48uLL);
    MIL::MILResult::MILResult(v44, __p);
    v44[0].__r_.__value_.__r.__words[0] = &unk_2829E9B70;
    v45 = v49;
    MIL::ValidationError::ValidationError(exception, v44);
  }

  v13 = (*(*v11 + 16))(v11);
  v14 = (v8[1] - *v8) >> 3;
  v15 = v14 - (v13 >> 1);
  if (v14 != v13 >> 1)
  {
    v16 = 0;
    do
    {
      std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](&v50, (*v8 + v16));
      v16 += 8;
      --v15;
    }

    while (v15);
  }

  std::string::basic_string[abi:ne200100]<0>(&v53, "pad");
  SingleValue = MIL::ValueTypeInferenceUtils::TryGetSingleValue(a3, &v53);
  v18 = SingleValue;
  v19 = v13 >> 1;
  if (SHIBYTE(v55) < 0)
  {
    operator delete(v53);
    if (v18)
    {
      goto LABEL_16;
    }
  }

  else if (SingleValue)
  {
LABEL_16:
    v20 = MIL::IRValue::AsTensor(v18);
    Data = MIL::IRTensorValue::GetDataView<int>(v20);
    v53 = 0;
    v54 = 0;
    v55 = 0;
    std::vector<std::string const*>::reserve(&v53, v13 >> 1);
    if (v19 >= 1)
    {
      v22 = v13 >> 1;
      v23 = 8 * v14 - 8 * v19 - 8;
      v24 = (Data + 8 * v22 - 4);
LABEL_19:
      v25 = *(*v8 + v23 + 8 * v22);
      if ((*(*v25 + 16))(v25))
      {
        v26 = MIL::IRDimension::AsConstant(*(*v8 + v23 + 8 * v22));
        v27 = (*(*v26 + 48))(v26);
        v28 = *(v24 - 1) + *v24;
        if (v28 + v27 < 0)
        {
          v38 = __cxa_allocate_exception(0x48uLL);
          v39 = a2[1];
          *&v42 = *a2;
          *(&v42 + 1) = v39;
          if (v39)
          {
            atomic_fetch_add_explicit((v39 + 8), 1uLL, memory_order_relaxed);
          }

          std::string::basic_string[abi:ne200100]<0>(v41, "Negative padded dimension is not allowed.");
          MIL::ValidationError::ValidationError(v38, &v42, v41, 315);
        }

        v43 = MIL::IRConstantDimension::Make(*a1, (v28 + v27));
        std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](&v53, &v43);
        if (v22 > 1)
        {
          v29 = 0;
          goto LABEL_18;
        }
      }

      else
      {
        v30 = *a1;
        v31 = MIL::IRDimension::AsUnknown(*(*v8 + v23 + 8 * v22));
        v32 = (*(*v31 + 32))(v31);
        v43 = MIL::IRUnknownDimension::Make(v30, v32);
        std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](&v53, &v43);
        v33 = MIL::IRDimension::AsUnknown(*(*v8 + v23 + 8 * v22));
        v29 = (*(*v33 + 32))(v33);
        while (v22 >= 2)
        {
LABEL_18:
          v24 -= 2;
          --v22;
          if ((v29 & 1) == 0)
          {
            goto LABEL_19;
          }

          v43 = MIL::IRUnknownDimension::Make(*a1, 0);
          std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](&v53, &v43);
          v29 = 1;
        }

        if ((v29 & 1) != 0 && v51 != v50)
        {
          v34 = MIL::IRUnknownDimension::Make(*a1, 0);
          *(v51 - 1) = v34;
        }
      }
    }

    std::vector<MIL::IRDimension const*>::__insert_with_size[abi:ne200100]<std::reverse_iterator<std::__wrap_iter<MIL::IRDimension const**>>,std::reverse_iterator<std::__wrap_iter<MIL::IRDimension const**>>>(&v50, v51, v54, v54, v53, v53, (v54 - v53) >> 3);
    if (v53)
    {
      v54 = v53;
      operator delete(v53);
    }

LABEL_38:
    MIL::IRTensorValueType::MakeWithShape();
  }

  if (v13 >= 2)
  {
    v35 = 8 * v14 - 8 * v19;
    do
    {
      if ((*(**(*v8 + v35) + 24))(*(*v8 + v35)))
      {
        v36 = MIL::IRDimension::AsUnknown(*(*v8 + v35));
        v37 = (*(*v36 + 32))(v36);
      }

      else
      {
        v37 = 0;
      }

      v53 = MIL::IRUnknownDimension::Make(*a1, v37);
      std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](&v50, &v53);
      v35 += 8;
      --v19;
    }

    while (v19);
  }

  goto LABEL_38;
}

void sub_2181D1C30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  v34 = *(v32 - 120);
  if (v34)
  {
    *(v32 - 112) = v34;
    operator delete(v34);
  }

  MIL::ValidationResult::~ValidationResult(&a27);
  v35 = *(v32 - 144);
  if (v35)
  {
    *(v32 - 136) = v35;
    operator delete(v35);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceRange1D(MIL::IRConstantDimension **a1, uint64_t a2, void *a3)
{
  v21[1] = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(__p, "start");
  SingleValueType = MIL::ValueTypeInferenceUtils::GetSingleValueType(a3, __p);
  if (SHIBYTE(v20) < 0)
  {
    operator delete(__p[0]);
  }

  v6 = MIL::IRValueType::AsTensorType(SingleValueType);
  (*(*v6 + 88))(v6);
  std::string::basic_string[abi:ne200100]<0>(__p, "start");
  SingleValue = MIL::ValueTypeInferenceUtils::TryGetSingleValue(a3, __p);
  if (SHIBYTE(v20) < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "end");
  v8 = MIL::ValueTypeInferenceUtils::TryGetSingleValue(a3, __p);
  if (SHIBYTE(v20) < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "step");
  v9 = MIL::ValueTypeInferenceUtils::TryGetSingleValue(a3, __p);
  if (SHIBYTE(v20) < 0)
  {
    operator delete(__p[0]);
  }

  __p[0] = 0;
  __p[1] = 0;
  v20 = 0;
  std::vector<std::string const*>::reserve(__p, 1uLL);
  if (SingleValue && v8 && v9)
  {
    v10 = MIL::IRValue::AsTensor(SingleValue);
    FloatScalarValue = MIL::ValueTypeInferenceUtils::GetFloatScalarValue(v10, v11);
    v13 = MIL::IRValue::AsTensor(v8);
    v15 = MIL::ValueTypeInferenceUtils::GetFloatScalarValue(v13, v14);
    v16 = MIL::IRValue::AsTensor(v9);
    v18 = MIL::ValueTypeInferenceUtils::GetFloatScalarValue(v16, v17);
    v21[0] = MIL::IRConstantDimension::Make(*a1, vcvtps_u32_f32((v15 - FloatScalarValue) / v18));
    std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](__p, v21);
  }

  else
  {
    v21[0] = MIL::IRUnknownDimension::Make(*a1, 0);
    std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](__p, v21);
  }

  MIL::IRTensorValueType::MakeWithShape();
}

void sub_2181D1FB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceShape(MIL::IRUnknownDimension **a1, uint64_t a2, void *a3)
{
  v16[1] = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&__p, "x");
  SingleValueType = MIL::ValueTypeInferenceUtils::GetSingleValueType(a3, &__p);
  v6 = MIL::IRValueType::AsTensorType(SingleValueType);
  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p);
  }

  v7 = (*(*v6 + 96))(v6);
  __p = 0;
  v13 = 0;
  v14 = 0;
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&__p, *v7, v7[1], (v7[1] - *v7) >> 3);
  HasVariadicUnknownDims = MIL::ValueTypeInferenceUtils::ShapeHasVariadicUnknownDims(&__p);
  v9 = *a1;
  if (HasVariadicUnknownDims)
  {
    v10 = MIL::IRUnknownDimension::Make(v9, 0);
  }

  else
  {
    v10 = MIL::IRConstantDimension::Make(v9, ((v13 - __p) >> 3));
  }

  v15 = v10;
  memset(v11, 0, sizeof(v11));
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const* const*,MIL::IRDimension const* const*>(v11, &v15, v16, 1uLL);
  MIL::IRTensorValueType::MakeWithShape();
}

void sub_2181D219C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceTile(MIL::IRUnknownDimension **a1, uint64_t *a2, void *a3)
{
  v50 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(v45, "reps");
  SingleValue = MIL::ValueTypeInferenceUtils::TryGetSingleValue(a3, v45);
  if (v46 < 0)
  {
    operator delete(v45[0]);
  }

  v7 = a2[1];
  v44[0] = *a2;
  v44[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  if (MIL::ValidationResult::IsGood(v45))
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "x");
    SingleValueType = MIL::ValueTypeInferenceUtils::GetSingleValueType(a3, &__p);
    v9 = MIL::IRValueType::AsTensorType(SingleValueType);
    if (SHIBYTE(v41) < 0)
    {
      operator delete(__p);
    }

    v10 = (*(*v9 + 96))(v9);
    __p = 0;
    v40 = 0;
    v41 = 0;
    std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&__p, *v10, v10[1], (v10[1] - *v10) >> 3);
    if (!MIL::ValueTypeInferenceUtils::ShapeHasVariadicUnknownDims(&__p))
    {
      v12 = __p;
      v11 = v40;
      std::string::basic_string[abi:ne200100]<0>(v34, "reps");
      v13 = MIL::ValueTypeInferenceUtils::GetSingleValueType(a3, v34);
      v14 = (*(*v13 + 16))(v13);
      v15 = (v11 - v12) >> 3;
      if (SHIBYTE(v35) < 0)
      {
        operator delete(v34[0]);
      }

      if (v15 == v14)
      {
        v34[0] = 0;
        v34[1] = 0;
        v35 = 0;
        std::vector<std::string const*>::reserve(v34, (v40 - __p) >> 3);
        if (SingleValue)
        {
          v16 = MIL::IRValue::AsTensor(SingleValue);
          Data = MIL::IRTensorValue::GetDataView<int>(v16);
          v18 = __p;
          if (v40 != __p)
          {
            v19 = Data;
            v20 = 0;
            do
            {
              v21 = (*(*v18[v20] + 16))(v18[v20]);
              if (v21)
              {
                v22 = *a1;
                v23 = (*(*v21 + 48))(v21);
                *&v48 = MIL::IRConstantDimension::Make(v22, (v23 * *(v19 + 4 * v20)));
              }

              else
              {
                *&v48 = MIL::IRUnknownDimension::Make(*a1, 0);
              }

              std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](v34, &v48);
              ++v20;
              v18 = __p;
            }

            while (v20 < (v40 - __p) >> 3);
          }
        }

        else
        {
          v25 = __p;
          v24 = v40;
          MIL::IRUnknownDimension::Make(*a1, 0);
          std::vector<MIL::IRDimension const*>::vector[abi:ne200100](&v48, (v24 - v25) >> 3);
          if (v34[0])
          {
            v34[1] = v34[0];
            operator delete(v34[0]);
          }

          *v34 = v48;
          v35 = v49;
        }

        (*(*v9 + 88))(v9);
        MIL::IRTensorValueType::MakeWithShape();
      }

      exception = __cxa_allocate_exception(0x48uLL);
      v30 = a2[1];
      v32[0] = *a2;
      v32[1] = v30;
      if (v30)
      {
        atomic_fetch_add_explicit((v30 + 8), 1uLL, memory_order_relaxed);
      }

      std::string::basic_string[abi:ne200100]<0>(v31, "Reps 1-D Length must be the same as the number of dimensions in input.");
      MIL::ValidationResult::ValidationResult(v33, v32, 315, v31);
      MIL::ValidationError::ValidationError(exception, v33);
    }

    v27 = __cxa_allocate_exception(0x48uLL);
    v28 = a2[1];
    v37[0] = *a2;
    v37[1] = v28;
    if (v28)
    {
      atomic_fetch_add_explicit((v28 + 8), 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v36, "Variadic shape is not supported for tile type inference.");
    MIL::ValidationResult::ValidationResult(v38, v37, 315, v36);
    MIL::ValidationError::ValidationError(v27, v38);
  }

  v26 = __cxa_allocate_exception(0x48uLL);
  MIL::MILResult::MILResult(v42, v45);
  v42[0].__r_.__value_.__r.__words[0] = &unk_2829E9B70;
  v43 = v47;
  MIL::ValidationError::ValidationError(v26, v42);
}