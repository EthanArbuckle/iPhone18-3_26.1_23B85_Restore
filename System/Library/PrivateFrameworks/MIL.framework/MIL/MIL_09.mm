void sub_21802BA8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<std::shared_ptr<MIL::IRBlock>>::__init_with_size[abi:ne200100]<std::shared_ptr<MIL::IRBlock>*,std::shared_ptr<MIL::IRBlock>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::shared_ptr<MIL::IRNamedValueType>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_21802BBEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::shared_ptr<MIL::IRBlock>>,std::shared_ptr<MIL::IRBlock>*,std::shared_ptr<MIL::IRBlock>*,std::shared_ptr<MIL::IRBlock>*>(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = &v10;
  if (a2 != a3)
  {
    do
    {
      v5 = a2[1];
      *v4 = *a2;
      v4[1] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      a2 += 2;
      v4 += 2;
    }

    while (a2 != a3);
    v10 = v4;
  }

  v8 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<MIL::IRBlock>>,std::shared_ptr<MIL::IRBlock>*>>::~__exception_guard_exceptions[abi:ne200100](v7);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<MIL::IRBlock>>,std::shared_ptr<MIL::IRBlock>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<MIL::IRNamedValueType>>,std::shared_ptr<MIL::IRNamedValueType>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

uint64_t MIL::Builder::OperationBuilder::OperationBuilderImpl::OperationBuilderImpl(uint64_t a1, MIL::IRObject *a2, uint64_t a3, __int128 *a4, uint64_t a5, uint64_t a6)
{
  (*(*a2 + 80))(a2);
  v12 = (*(*a2 + 160))(a2);
  std::map<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>::map[abi:ne200100]((a1 + 16), v12);
  v13 = (*(*a2 + 176))(a2);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  std::vector<std::shared_ptr<MIL::IRNamedValueType>>::__init_with_size[abi:ne200100]<std::shared_ptr<MIL::IRNamedValueType>*,std::shared_ptr<MIL::IRNamedValueType>*>(a1 + 40, *v13, v13[1], (v13[1] - *v13) >> 4);
  Attributes = MIL::IRObject::GetAttributes(a2);
  std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>::unordered_map(a1 + 64, Attributes);
  LocationPtr = MIL::IRObject::GetLocationPtr(a2);
  *(a1 + 104) = *LocationPtr;
  v16 = LocationPtr[1];
  *(a1 + 112) = v16;
  if (v16)
  {
    atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
  }

  v17 = *a4;
  *(a1 + 136) = *(a4 + 2);
  *(a1 + 120) = v17;
  *(a4 + 1) = 0;
  *(a4 + 2) = 0;
  *a4 = 0;
  *(a1 + 144) = a5;
  *(a1 + 152) = a6;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = *a3;
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a1 + 200) = 0u;
  *(a1 + 248) = 0;
  *(a1 + 232) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 256) = 1065353216;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 1065353216;
  *(a1 + 304) = 0;
  MIL::Builder::OperationBuilder::OperationBuilderImpl::OperationBuilderImplFromIROperationCommon(a1, a2);
  return a1;
}

void sub_21802BE78(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__hash_table<std::__hash_value_type<std::shared_ptr<MIL::IRValue const>,std::unique_ptr<MIL::Builder::Variable const>>,std::__unordered_map_hasher<std::shared_ptr<MIL::IRValue const>,std::__hash_value_type<std::shared_ptr<MIL::IRValue const>,std::unique_ptr<MIL::Builder::Variable const>>,std::hash<std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::shared_ptr<MIL::IRValue const>>,true>,std::__unordered_map_equal<std::shared_ptr<MIL::IRValue const>,std::__hash_value_type<std::shared_ptr<MIL::IRValue const>,std::unique_ptr<MIL::Builder::Variable const>>,std::equal_to<std::shared_ptr<MIL::IRValue const>>,std::hash<std::shared_ptr<MIL::IRValue const>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<MIL::IRValue const>,std::unique_ptr<MIL::Builder::Variable const>>>>::~__hash_table(v3);
  std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<MIL::Builder::Variable>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<MIL::Builder::Variable>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<MIL::Builder::Variable>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<MIL::Builder::Variable>>>>::~__hash_table(v2 + 224);
  if (*(v2 + 223) < 0)
  {
    operator delete(*v4);
  }

  v6 = *(v2 + 192);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](va);
  if (*(v2 + 143) < 0)
  {
    operator delete(*(v2 + 120));
  }

  v7 = *(v2 + 112);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v2 + 64);
  std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](va);
  std::__tree<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>>>::destroy(v2 + 16, *(v2 + 24));
  v8 = *(v2 + 8);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  _Unwind_Resume(a1);
}

void *std::shared_ptr<MIL::Builder::OperationBuilder>::shared_ptr[abi:ne200100]<MIL::Builder::OperationBuilder,0>(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  if (!v3)
  {
    a1[1] = 0;
LABEL_5:
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v4 = std::__shared_weak_count::lock(v3);
  a1[1] = v4;
  if (!v4)
  {
    goto LABEL_5;
  }

  return a1;
}

void std::__throw_bad_weak_ptr[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82830] + 16;
  __cxa_throw(exception, MEMORY[0x277D82708], MEMORY[0x277D82630]);
}

void sub_21802C034(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::shared_ptr<MIL::Builder::OperationBuilder>::shared_ptr[abi:ne200100]<MIL::Builder::OperationBuilder,0>();
  }

  _Unwind_Resume(exception_object);
}

void std::shared_ptr<MIL::Builder::OperationBuilder>::__enable_weak_this[abi:ne200100]<MIL::Builder::OperationBuilder,MIL::Builder::OperationBuilder,0>(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    v4 = a2[1];
    if (!v4 || v4->__shared_owners_ == -1)
    {
      v5 = *(a1 + 8);
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v4 = a2[1];
      }

      *a2 = a3;
      a2[1] = v5;
      if (v4)
      {
        std::__shared_weak_count::__release_weak(v4);
      }

      if (v5)
      {

        std::__shared_weak_count::__release_shared[abi:ne200100](v5);
      }
    }
  }
}

void std::__shared_ptr_pointer<MIL::Builder::OperationBuilder *,std::shared_ptr<MIL::Builder::OperationBuilder>::__shared_ptr_default_delete<MIL::Builder::OperationBuilder,MIL::Builder::OperationBuilder>,std::allocator<MIL::Builder::OperationBuilder>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t std::__shared_ptr_pointer<MIL::Builder::OperationBuilder *,std::shared_ptr<MIL::Builder::OperationBuilder>::__shared_ptr_default_delete<MIL::Builder::OperationBuilder,MIL::Builder::OperationBuilder>,std::allocator<MIL::Builder::OperationBuilder>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<MIL::Builder::OperationBuilder *,std::shared_ptr<MIL::Builder::OperationBuilder>::__shared_ptr_default_delete<MIL::Builder::OperationBuilder,MIL::Builder::OperationBuilder>,std::allocator<MIL::Builder::OperationBuilder>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::vector<MIL::Int4>::__init_with_size[abi:ne200100]<MIL::Int4 const*,MIL::Int4 const*>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_21802C1D8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<MIL::UInt1>::__init_with_size[abi:ne200100]<MIL::UInt1 const*,MIL::UInt1 const*>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_21802C24C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<MIL::UInt2>::__init_with_size[abi:ne200100]<MIL::UInt2 const*,MIL::UInt2 const*>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_21802C2C0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<MIL::UInt3>::__init_with_size[abi:ne200100]<MIL::UInt3 const*,MIL::UInt3 const*>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_21802C334(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<MIL::UInt4>::__init_with_size[abi:ne200100]<MIL::UInt4 const*,MIL::UInt4 const*>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_21802C3A8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<MIL::UInt6>::__init_with_size[abi:ne200100]<MIL::UInt6 const*,MIL::UInt6 const*>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_21802C41C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<std::shared_ptr<MIL::IRArgument>>::__init_with_size[abi:ne200100]<std::shared_ptr<MIL::IRArgument> const*,std::shared_ptr<MIL::IRArgument> const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::shared_ptr<MIL::IRNamedValueType>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_21802C4A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_0()
{

  JUMPOUT(0x21CEAFEA0);
}

void MIL::Builder::ProgramBuilder::ProgramBuilder(void *a1)
{
  *a1 = &unk_2829E4BB0;
  operator new();
}

{
  *a1 = &unk_2829E4BB0;
  operator new();
}

void sub_21802C5AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  MEMORY[0x21CEAFEA0](v11, v10);
  _Unwind_Resume(a1);
}

void sub_21802C68C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  MEMORY[0x21CEAFEA0](v11, v10);
  _Unwind_Resume(a1);
}

void MIL::Builder::ProgramBuilder::~ProgramBuilder(MIL::Builder::ProgramBuilder *this)
{
  v1 = *(this + 1);
  *this = &unk_2829E4BB0;
  *(this + 1) = 0;
  if (v1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v1 + 72);
    v2 = *(v1 + 64);
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }

    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v1 + 16);
    v3 = *(v1 + 8);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    MEMORY[0x21CEAFEA0](v1, 0x10E0C4071EA3CCFLL);
  }
}

{
  MIL::Builder::ProgramBuilder::~ProgramBuilder(this);

  JUMPOUT(0x21CEAFEA0);
}

const void **MIL::Builder::ProgramBuilder::GetFunction@<X0>(uint64_t a1@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  result = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>((*(a1 + 8) + 16), a2);
  if (!result)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v5 = result[6];
  *a3 = result[5];
  a3[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(v5 + 1, 1uLL, memory_order_relaxed);
  }

  return result;
}

void MIL::Builder::ProgramBuilder::Make()
{
  operator new();
}

{
  operator new();
}

{
  operator new();
}

void sub_21802C874(_Unwind_Exception *a1)
{
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  MEMORY[0x21CEAFEA0](v2, v1);
  _Unwind_Resume(a1);
}

void sub_21802C954(_Unwind_Exception *a1)
{
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  MEMORY[0x21CEAFEA0](v2, v1);
  _Unwind_Resume(a1);
}

void sub_21802CA34(_Unwind_Exception *a1)
{
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  MEMORY[0x21CEAFEA0](v2, v1);
  _Unwind_Resume(a1);
}

void sub_21802CB88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  MIL::ValidationResult::~ValidationResult(va);
  v11 = *(v9 - 24);
  *(v9 - 24) = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  _Unwind_Resume(a1);
}

void MIL::Builder::ProgramBuilder::ProgramBuilderImpl::CreateProgramWithoutValidation(MIL::Builder::ProgramBuilder::ProgramBuilderImpl *this)
{
  std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>::unordered_map(v5, this + 72);
  v2 = *(this + 4);
  if (v2)
  {
    MIL::Builder::FunctionBuilder::CreateFunction(*(v2 + 40));
  }

  v3 = *(this + 1);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(this + 8);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::IRProgram::Make();
}

void sub_21802CD70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, uint64_t a5, std::__shared_weak_count *a6, uint64_t a7, ...)
{
  va_start(va, a7);
  if (a4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a4);
  }

  if (a6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a6);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(va);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v7 - 72);
  _Unwind_Resume(a1);
}

void MIL::Builder::ProgramBuilder::ProgramBuilderImpl::AddFunction(uint64_t a1, const void **a2)
{
  if (!std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>((a1 + 16), a2))
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    }

    MIL::Builder::FunctionBuilder::Make();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::operator+<char>();
  v5 = std::string::append(&v7, " is already part of this ProgramBuilder.");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v8.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v8.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  std::runtime_error::runtime_error(exception, &v8);
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_21802CF54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a17 < 0)
  {
    operator delete(a12);
    if ((v24 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v24)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v23);
  goto LABEL_8;
}

void MIL::Builder::ProgramBuilder::SetLocation(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  MIL::Builder::ProgramBuilder::ProgramBuilderImpl::SetLocation(v2, &v3);
  if (*(&v3 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v3 + 1));
  }
}

void sub_21802D04C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Builder::ProgramBuilder::ProgramBuilderImpl::SetLocation(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (!*a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Cannot set location to nullptr.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v3 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  v4 = *(a1 + 64);
  *(a1 + 56) = v2;
  *(a1 + 64) = v3;
  if (v4)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void MIL::Builder::ProgramBuilder::SetAttribute(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  v4 = *a2;
  v7 = *(a2 + 2);
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  v5 = *a3;
  *__p = v4;
  *a3 = 0;
  *(a3 + 8) = 0;
  MIL::Builder::ProgramBuilder::ProgramBuilderImpl::SetAttribute(v3, __p, &v5);
  if (*(&v5 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v5 + 1));
  }

  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_21802D178(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, ...)
{
  va_start(va, a3);
  if (a3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a3);
  }

  MIL::Builder::BlockBuilder::ReplaceUsesOfInputVariable(va);
  _Unwind_Resume(a1);
}

void MIL::Builder::ProgramBuilder::ProgramBuilderImpl::SetAttribute(uint64_t a1, const void **a2, __int128 *a3)
{
  v4 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((a1 + 72), a2);
  v5 = *a3;
  *a3 = 0;
  *(a3 + 1) = 0;
  v6 = v4[6];
  *(v4 + 5) = v5;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

const void **MIL::Builder::ProgramBuilder::TryGetAttribute@<X0>(uint64_t a1@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  result = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>((*(a1 + 8) + 72), a2);
  if (result)
  {
    v5 = result[6];
    *a3 = result[5];
    a3[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(v5 + 1, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
  }

  return result;
}

void MIL::Builder::ProgramBuilder::AddFunction(uint64_t a1, const void **a2, __int128 *a3)
{
  v3 = *(a1 + 8);
  v4 = *a3;
  *a3 = 0;
  *(a3 + 1) = 0;
  MIL::Builder::ProgramBuilder::ProgramBuilderImpl::AddFunction(v3, a2, &v4);
  if (*(&v4 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v4 + 1));
  }
}

void sub_21802D290(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Builder::ProgramBuilder::ProgramBuilderImpl::AddFunction(uint64_t *a1, const void **a2, uint64_t *a3)
{
  if (!*a3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Cannot add nullptr FunctionBuilder.");
    goto LABEL_12;
  }

  if (std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>(a1 + 2, a2))
  {
    v12 = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    v13 = std::string::append(&v15, " is already part of this ProgramBuilder.");
    v14 = *&v13->__r_.__value_.__l.__data_;
    v16.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
    *&v16.__r_.__value_.__l.__data_ = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(v12, &v16);
    __cxa_throw(v12, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v6 = *a1;
  MIL::Builder::FunctionBuilder::GetContext(*a3, &v16);
  v7 = v16.__r_.__value_.__r.__words[0];
  if (v16.__r_.__value_.__l.__size_)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16.__r_.__value_.__l.__size_);
  }

  if (v6 != v7)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "This ProgramBuilder holds a different MILContext than the one used to create this FunctionBuilder.");
LABEL_12:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v16.__r_.__value_.__r.__words[0] = a2;
  v8 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::Builder::FunctionBuilder>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::Builder::FunctionBuilder>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::Builder::FunctionBuilder>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::Builder::FunctionBuilder>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 2, a2);
  v9 = *a3;
  *a3 = 0;
  a3[1] = 0;
  v10 = v8[6];
  *(v8 + 5) = v9;
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }
}

void sub_21802D430(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

uint64_t MIL::MILResult::operator=(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v5 = *(a1 + 16);
  *(a1 + 8) = v4;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v6 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 24) = v6;
  *(a2 + 47) = 0;
  *(a2 + 24) = 0;
  return a1;
}

void *std::shared_ptr<MIL::Builder::FunctionBuilder>::operator=[abi:ne200100]<MIL::Builder::FunctionBuilder,std::default_delete<MIL::Builder::FunctionBuilder>,0>(void *a1, uint64_t *a2)
{
  std::shared_ptr<MIL::Builder::FunctionBuilder>::shared_ptr[abi:ne200100]<MIL::Builder::FunctionBuilder,std::default_delete<MIL::Builder::FunctionBuilder>,0>(&v6, a2);
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

const void **std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::Builder::FunctionBuilder>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::Builder::FunctionBuilder>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::Builder::FunctionBuilder>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::Builder::FunctionBuilder>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::Builder::FunctionBuilder>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::Builder::FunctionBuilder>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::Builder::FunctionBuilder>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::Builder::FunctionBuilder>>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
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

void sub_21802D7EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t *std::shared_ptr<MIL::Builder::FunctionBuilder>::shared_ptr[abi:ne200100]<MIL::Builder::FunctionBuilder,std::default_delete<MIL::Builder::FunctionBuilder>,0>(uint64_t *result, uint64_t *a2)
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

void std::__shared_ptr_pointer<MIL::Builder::FunctionBuilder  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t std::__shared_ptr_pointer<MIL::Builder::FunctionBuilder  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<MIL::Builder::FunctionBuilder  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void MIL::Builder::ProgramBuilder::ProgramBuilderImpl::ProgramBuilderImpl(uint64_t a1, void *a2)
{
  v2 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 1065353216;
  MIL::UnknownLocation::Make(a1);
}

void sub_21802DAAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MIL::Builder::FunctionBuilder::FunctionBuilderImpl::FunctionBuilderImpl();
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v11);
  v13 = *(v10 + 8);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  _Unwind_Resume(a1);
}

uint64_t MIL::Builder::ProgramBuilder::ProgramBuilderImpl::ProgramBuilderImpl(uint64_t a1, void *a2, MIL::IRObject *this)
{
  v5 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 1065353216;
  LocationPtr = MIL::IRObject::GetLocationPtr(this);
  v7 = LocationPtr[1];
  *(a1 + 56) = *LocationPtr;
  *(a1 + 64) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  Attributes = MIL::IRObject::GetAttributes(this);
  std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>::unordered_map(a1 + 72, Attributes);
  v9 = *((*(*this + 72))(this) + 16);
  if (v9)
  {
    v10 = *(a1 + 8);
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    }

    v11 = *(v9 + 48);
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }

    MIL::Builder::FunctionBuilder::Make();
  }

  return a1;
}

void sub_21802DC70(_Unwind_Exception *a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v1 + 72);
  v4 = *(v1 + 64);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v2);
  v5 = *(v1 + 8);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  _Unwind_Resume(a1);
}

void MIL::Builder::Variable::Make()
{
  operator new();
}

{
  operator new();
}

{
  operator new();
}

{
  operator new();
}

void sub_21802DF68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x21CEAFEA0](v15, v14);
  _Unwind_Resume(a1);
}

void sub_21802E050(_Unwind_Exception *a1)
{
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  MEMORY[0x21CEAFEA0](v2, v1);
  _Unwind_Resume(a1);
}

void MIL::Builder::Variable::Make(MIL::Builder::Variable *this, const MIL::IRArgument *a2, const MIL::Builder::OperationBuilder *a3)
{
  if ((*(*this + 16))(this))
  {
    Name = MIL::IRArgument::GetName(this);
    if (*(Name + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v7, *Name, *(Name + 8));
    }

    else
    {
      v5 = *Name;
      v7.__r_.__value_.__r.__words[2] = *(Name + 16);
      *&v7.__r_.__value_.__l.__data_ = v5;
    }

    MIL::Builder::Variable::Make();
  }

  (*(*this + 48))(&v6, this);
  MIL::Builder::Variable::Make();
}

void sub_21802E174(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Builder::Variable::Variable(void *a1)
{
  *a1 = &unk_2829E4C40;
  operator new();
}

{
  *a1 = &unk_2829E4C40;
  operator new();
}

{
  *a1 = &unk_2829E4C40;
  operator new();
}

{
  *a1 = &unk_2829E4C40;
  operator new();
}

void sub_21802E550(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  MEMORY[0x21CEAFEA0](v11, v10);
  _Unwind_Resume(a1);
}

uint64_t MIL::Builder::Variable::GetValue(MIL::Builder::Variable::VariableImpl **this)
{
  MIL::Builder::Variable::VariableImpl::TryGetValue(this[1], &v9);
  v2 = v9;
  if (!v9)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MIL::Builder::Variable::VariableImpl::GetName(this[1]);
    std::operator+<char>();
    v5 = std::string::append(&v7, " is not associated with a value.");
    v6 = *&v5->__r_.__value_.__l.__data_;
    v8.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
    *&v8.__r_.__value_.__l.__data_ = v6;
    v5->__r_.__value_.__l.__size_ = 0;
    v5->__r_.__value_.__r.__words[2] = 0;
    v5->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(exception, &v8);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  return v2;
}

void sub_21802E650(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      v25 = *(v23 - 40);
      if (v25)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v25);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

void MIL::Builder::Variable::VariableImpl::TryGetValue(MIL::Builder::Variable::VariableImpl *this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 6);
  if (v2)
  {
    if (v2 == 1)
    {
      v3 = this;
    }

    else
    {
      v3 = 0;
    }

    v5 = *v3;
    v4 = *(v3 + 1);
    *a2 = v5;
    a2[1] = v4;
    if (v4)
    {
      atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    MIL::Builder::Variable::VariableImpl::GetValueFromBuilder(this, this, a2);
  }
}

MIL::Builder::Variable::VariableImpl *MIL::Builder::Variable::VariableImpl::GetName(MIL::Builder::Variable::VariableImpl *this)
{
  result = MIL::Builder::Variable::VariableImpl::TryGetName(this);
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "This variable holds an IRValue literal.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return result;
}

uint64_t MIL::Builder::Variable::TryGetValue(MIL::Builder::Variable::VariableImpl **this)
{
  MIL::Builder::Variable::VariableImpl::TryGetValue(this[1], &v3);
  v1 = v3;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return v1;
}

MIL::Builder::Variable::VariableImpl *MIL::Builder::Variable::GetName(MIL::Builder::Variable::VariableImpl **this)
{
  result = MIL::Builder::Variable::VariableImpl::TryGetName(this[1]);
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Variable is not associated with a name.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return result;
}

MIL::Builder::Variable::VariableImpl *MIL::Builder::Variable::VariableImpl::TryGetName(MIL::Builder::Variable::VariableImpl *this)
{
  if (!this || *(this + 6))
  {
    MIL::Builder::Variable::VariableImpl::TryGetValue(this, &v2);
    v1 = (*(*v2 + 40))(v2);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    if (v1)
    {
      return (*(*v1 + 136))(v1);
    }

    else
    {
      return 0;
    }
  }

  return this;
}

void sub_21802E8C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::Builder::Variable::VariableImpl::TryGetType(MIL::Builder::Variable::VariableImpl *this)
{
  v1 = *(this + 6);
  if (v1)
  {
    if (v1 == 1)
    {
      v2 = this;
    }

    else
    {
      v2 = 0;
    }

    v3 = *v2;
    v4 = *(v2 + 1);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v5 = (*(*v3 + 32))(v3);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    return v5;
  }

  else
  {

    return MIL::Builder::Variable::VariableImpl::GetTypeFromBuilder(this, this);
  }
}

void sub_21802E980(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::Builder::Variable::VariableImpl::UpdateOwner(uint64_t this, const MIL::Builder::BlockBuilder *a2)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Cannot call UpdateOwner with a null pointer.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (*(this + 40) != 1)
  {
    *(this + 40) = 1;
  }

  *(this + 32) = a2;
  return this;
}

void MIL::Builder::Variable::~Variable(MIL::Builder::Variable *this)
{
  v1 = *(this + 1);
  *this = &unk_2829E4C40;
  *(this + 1) = 0;
  if (v1)
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<std::string,std::shared_ptr<MIL::IRValue const>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v1);
    MEMORY[0x21CEAFEA0](v1, 0x1072C409AFF1A62);
  }
}

{
  MIL::Builder::Variable::~Variable(this);

  JUMPOUT(0x21CEAFEA0);
}

void MIL::Builder::Variable::GetScalarValue<MIL::Int4>()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "rdar://111816272: Compile-time known scalar values is not defined for sub-byte data types.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void MIL::Builder::Variable::GetScalarValue<MIL::UInt4>()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "rdar://111816272: Compile-time known scalar values is not defined for sub-byte data types.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void MIL::Builder::Variable::GetScalarValue<MIL::UInt2>()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "rdar://111816272: Compile-time known scalar values is not defined for sub-byte data types.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void MIL::Builder::Variable::GetScalarValue<MIL::UInt1>()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "rdar://111816272: Compile-time known scalar values is not defined for sub-byte data types.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

uint64_t MIL::Builder::Variable::VariableImpl::GetScalarValue<BOOL>(MIL::Builder::Variable::VariableImpl *a1)
{
  MIL::Builder::Variable::VariableImpl::TryGetValue(a1, &v4);
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Variable does not hold an IRValue.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v1 = MIL::IRValue::GetScalar<BOOL>(v4);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return v1;
}

void sub_21802ECC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  __cxa_free_exception(v10);
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

uint64_t MIL::Builder::Variable::VariableImpl::GetScalarValue<unsigned char>(MIL::Builder::Variable::VariableImpl *a1)
{
  MIL::Builder::Variable::VariableImpl::TryGetValue(a1, &v4);
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Variable does not hold an IRValue.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v1 = MIL::IRValue::GetScalar<unsigned char>(v4);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return v1;
}

void sub_21802ED80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  __cxa_free_exception(v10);
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

uint64_t MIL::Builder::Variable::VariableImpl::GetScalarValue<unsigned short>(MIL::Builder::Variable::VariableImpl *a1)
{
  MIL::Builder::Variable::VariableImpl::TryGetValue(a1, &v4);
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Variable does not hold an IRValue.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v1 = MIL::IRValue::GetScalar<unsigned short>(v4);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return v1;
}

void sub_21802EE38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  __cxa_free_exception(v10);
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

uint64_t MIL::Builder::Variable::VariableImpl::GetScalarValue<unsigned int>(MIL::Builder::Variable::VariableImpl *a1)
{
  MIL::Builder::Variable::VariableImpl::TryGetValue(a1, &v4);
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Variable does not hold an IRValue.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v1 = MIL::IRValue::GetScalar<unsigned int>(v4);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return v1;
}

void sub_21802EEF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  __cxa_free_exception(v10);
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

uint64_t MIL::Builder::Variable::VariableImpl::GetScalarValue<unsigned long long>(MIL::Builder::Variable::VariableImpl *a1)
{
  MIL::Builder::Variable::VariableImpl::TryGetValue(a1, &v4);
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Variable does not hold an IRValue.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v1 = MIL::IRValue::GetScalar<unsigned long long>(v4);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return v1;
}

void sub_21802EFA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  __cxa_free_exception(v10);
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

uint64_t MIL::Builder::Variable::VariableImpl::GetScalarValue<signed char>(MIL::Builder::Variable::VariableImpl *a1)
{
  MIL::Builder::Variable::VariableImpl::TryGetValue(a1, &v4);
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Variable does not hold an IRValue.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v1 = MIL::IRValue::GetScalar<signed char>(v4);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return v1;
}

void sub_21802F060(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  __cxa_free_exception(v10);
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

uint64_t MIL::Builder::Variable::VariableImpl::GetScalarValue<short>(MIL::Builder::Variable::VariableImpl *a1)
{
  MIL::Builder::Variable::VariableImpl::TryGetValue(a1, &v4);
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Variable does not hold an IRValue.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v1 = MIL::IRValue::GetScalar<short>(v4);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return v1;
}

void sub_21802F118(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  __cxa_free_exception(v10);
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

uint64_t MIL::Builder::Variable::VariableImpl::GetScalarValue<int>(MIL::Builder::Variable::VariableImpl *a1)
{
  MIL::Builder::Variable::VariableImpl::TryGetValue(a1, &v4);
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Variable does not hold an IRValue.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v1 = MIL::IRValue::GetScalar<int>(v4);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return v1;
}

void sub_21802F1D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  __cxa_free_exception(v10);
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

uint64_t MIL::Builder::Variable::VariableImpl::GetScalarValue<long long>(MIL::Builder::Variable::VariableImpl *a1)
{
  MIL::Builder::Variable::VariableImpl::TryGetValue(a1, &v4);
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Variable does not hold an IRValue.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v1 = MIL::IRValue::GetScalar<long long>(v4);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return v1;
}

void sub_21802F288(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  __cxa_free_exception(v10);
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

uint64_t MIL::Builder::Variable::VariableImpl::GetScalarValue<MIL::Bf16>(MIL::Builder::Variable::VariableImpl *a1)
{
  MIL::Builder::Variable::VariableImpl::TryGetValue(a1, &v4);
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Variable does not hold an IRValue.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v1 = MIL::IRValue::GetScalar<MIL::Bf16>(v4);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return v1;
}

void sub_21802F340(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  __cxa_free_exception(v10);
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

uint64_t MIL::Builder::Variable::VariableImpl::GetScalarValue<MIL::Fp8E4M3FN>(MIL::Builder::Variable::VariableImpl *a1)
{
  MIL::Builder::Variable::VariableImpl::TryGetValue(a1, &v4);
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Variable does not hold an IRValue.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v1 = MIL::IRValue::GetScalar<MIL::Fp8E4M3FN>(v4);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return v1;
}

void sub_21802F3F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  __cxa_free_exception(v10);
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

uint64_t MIL::Builder::Variable::VariableImpl::GetScalarValue<MIL::Fp8E5M2>(MIL::Builder::Variable::VariableImpl *a1)
{
  MIL::Builder::Variable::VariableImpl::TryGetValue(a1, &v4);
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Variable does not hold an IRValue.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v1 = MIL::IRValue::GetScalar<MIL::Fp8E5M2>(v4);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return v1;
}

void sub_21802F4B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  __cxa_free_exception(v10);
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

uint64_t MIL::Builder::Variable::VariableImpl::GetScalarValue<MIL::Fp16>(MIL::Builder::Variable::VariableImpl *a1)
{
  MIL::Builder::Variable::VariableImpl::TryGetValue(a1, &v4);
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Variable does not hold an IRValue.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v1 = MIL::IRValue::GetScalar<MIL::Fp16>(v4);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return v1;
}

void sub_21802F568(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  __cxa_free_exception(v10);
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

float MIL::Builder::Variable::VariableImpl::GetScalarValue<float>(MIL::Builder::Variable::VariableImpl *a1)
{
  MIL::Builder::Variable::VariableImpl::TryGetValue(a1, &v4);
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Variable does not hold an IRValue.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v1 = MIL::IRValue::GetScalar<float>(v4);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return v1;
}

void sub_21802F628(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  __cxa_free_exception(v10);
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

double MIL::Builder::Variable::VariableImpl::GetScalarValue<double>(MIL::Builder::Variable::VariableImpl *a1)
{
  MIL::Builder::Variable::VariableImpl::TryGetValue(a1, &v4);
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Variable does not hold an IRValue.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v1 = MIL::IRValue::GetScalar<double>(v4);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return v1;
}

void sub_21802F6E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  __cxa_free_exception(v10);
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

void MIL::Builder::Variable::VariableImpl::GetScalarValue<std::string>(MIL::Builder::Variable::VariableImpl *a1@<X0>, std::string *a2@<X8>)
{
  MIL::Builder::Variable::VariableImpl::TryGetValue(a1, &v4);
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Variable does not hold an IRValue.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  MIL::IRValue::GetScalar<std::string>(v4, a2);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void sub_21802F7A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  __cxa_free_exception(v10);
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

void MIL::Builder::Variable::VariableImpl::GetValueFromBuilder(uint64_t a1@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  v3 = *(a1 + 40);
  if (v3)
  {
    if (v3 == 1)
    {
      MIL::Builder::BlockBuilder::GetValue(*(a1 + 32), a2, a3);
    }

    else
    {
      *a3 = 0;
      a3[1] = 0;
    }
  }

  else
  {
    MIL::Builder::OperationBuilder::TryGetConstant(*(a1 + 32), a3);
  }
}

uint64_t MIL::Builder::Variable::VariableImpl::GetTypeFromBuilder(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 32);
  if (v2 == 2)
  {
    return MIL::Builder::FunctionBuilder::GetType(v3, a2);
  }

  if (v2)
  {
    return MIL::Builder::BlockBuilder::GetType(v3, a2);
  }

  return MIL::Builder::OperationBuilder::GetType(v3, a2);
}

std::string *MIL::Builder::Variable::VariableImpl::VariableImpl(std::string *this, __int128 *a2, std::string::size_type a3)
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

  LODWORD(this[1].__r_.__value_.__l.__data_) = 0;
  this[1].__r_.__value_.__l.__size_ = a3;
  LODWORD(this[1].__r_.__value_.__r.__words[2]) = 0;
  if (!a3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Cannot create a Variable without an owning builder.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return this;
}

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

  LODWORD(this[1].__r_.__value_.__l.__data_) = 0;
  this[1].__r_.__value_.__l.__size_ = a3;
  LODWORD(this[1].__r_.__value_.__r.__words[2]) = 1;
  if (!a3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Cannot create a Variable without an owning builder.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return this;
}

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

  LODWORD(this[1].__r_.__value_.__l.__data_) = 0;
  this[1].__r_.__value_.__l.__size_ = a3;
  LODWORD(this[1].__r_.__value_.__r.__words[2]) = 2;
  if (!a3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Cannot create a Variable without an owning builder.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return this;
}

uint64_t MIL::Builder::Variable::VariableImpl::VariableImpl(uint64_t result, void *a2, uint64_t a3)
{
  v3 = a2[1];
  *result = *a2;
  *(result + 8) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  *(result + 24) = 1;
  *(result + 32) = a3;
  *(result + 40) = 0;
  if (!a3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Cannot create a Variable without an owning builder.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return result;
}

void MIL::Conversion::OpConversionImpl::~OpConversionImpl(char **this)
{
  std::__tree<std::__value_type<std::pair<std::string,std::set<std::string>>,std::function<void ()(MIL::Transform::ProgramTransformer &)>>,std::__map_value_compare<std::pair<std::string,std::set<std::string>>,std::__value_type<std::pair<std::string,std::set<std::string>>,std::function<void ()(MIL::Transform::ProgramTransformer &)>>,std::less<std::pair<std::string,std::set<std::string>>>,true>,std::allocator<std::__value_type<std::pair<std::string,std::set<std::string>>,std::function<void ()(MIL::Transform::ProgramTransformer &)>>>>::destroy((this + 4), this[5]);
  std::__tree<std::__value_type<std::string,std::vector<std::set<std::string>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::set<std::string>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::set<std::string>>>>>::destroy((this + 1), this[2]);
}

{
  std::__tree<std::__value_type<std::pair<std::string,std::set<std::string>>,std::function<void ()(MIL::Transform::ProgramTransformer &)>>,std::__map_value_compare<std::pair<std::string,std::set<std::string>>,std::__value_type<std::pair<std::string,std::set<std::string>>,std::function<void ()(MIL::Transform::ProgramTransformer &)>>,std::less<std::pair<std::string,std::set<std::string>>>,true>,std::allocator<std::__value_type<std::pair<std::string,std::set<std::string>>,std::function<void ()(MIL::Transform::ProgramTransformer &)>>>>::destroy((this + 4), this[5]);
  std::__tree<std::__value_type<std::string,std::vector<std::set<std::string>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::set<std::string>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::set<std::string>>>>>::destroy((this + 1), this[2]);
}

{
  std::__tree<std::__value_type<std::pair<std::string,std::set<std::string>>,std::function<void ()(MIL::Transform::ProgramTransformer &)>>,std::__map_value_compare<std::pair<std::string,std::set<std::string>>,std::__value_type<std::pair<std::string,std::set<std::string>>,std::function<void ()(MIL::Transform::ProgramTransformer &)>>,std::less<std::pair<std::string,std::set<std::string>>>,true>,std::allocator<std::__value_type<std::pair<std::string,std::set<std::string>>,std::function<void ()(MIL::Transform::ProgramTransformer &)>>>>::destroy((this + 4), this[5]);
  std::__tree<std::__value_type<std::string,std::vector<std::set<std::string>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::set<std::string>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::set<std::string>>>>>::destroy((this + 1), this[2]);

  JUMPOUT(0x21CEAFEA0);
}

void MIL::Conversion::OpConversionImpl::RegisterConversion(uint64_t a1, const void **a2, uint64_t a3, uint64_t a4)
{
  if (std::__tree<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>>>::__count_unique<std::string>(a1 + 8, a2))
  {
    __p.__r_.__value_.__r.__words[0] = a2;
    v8 = std::__tree<std::__value_type<std::string,std::vector<std::set<std::string>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::set<std::string>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::set<std::string>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 8, a2);
    v9 = *(v8 + 56);
    for (i = *(v8 + 64); v9 != i; v9 += 3)
    {
      std::set<std::string>::set[abi:ne200100](&p_p, v9);
      if (v28[1] == *(a3 + 16))
      {
        v11 = p_p;
        if (p_p == v28)
        {
LABEL_22:
          std::pair<std::string,std::set<std::string>>::pair[abi:ne200100]<true,0>(&__p, a2, a3);
          v28[3] = &__p;
          v22 = std::__tree<std::__value_type<std::pair<std::string,std::set<std::string>>,std::function<void ()(MIL::Transform::ProgramTransformer &)>>,std::__map_value_compare<std::pair<std::string,std::set<std::string>>,std::__value_type<std::pair<std::string,std::set<std::string>>,std::function<void ()(MIL::Transform::ProgramTransformer &)>>,std::less<std::pair<std::string,std::set<std::string>>>,true>,std::allocator<std::__value_type<std::pair<std::string,std::set<std::string>>,std::function<void ()(MIL::Transform::ProgramTransformer &)>>>>::__emplace_unique_key_args<std::pair<std::string,std::set<std::string>>,std::piecewise_construct_t const&,std::tuple<std::pair<std::string,std::set<std::string>>&&>,std::tuple<>>(a1 + 32, &__p);
          std::function<void ()(MIL::Transform::ProgramTransformer &)>::operator=((v22 + 80), a4);
          std::__tree<std::__value_type<std::string,MIL::IRValueType const*>,std::__map_value_compare<std::string,std::__value_type<std::string,MIL::IRValueType const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MIL::IRValueType const*>>>::destroy(&v25, v26);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          std::__tree<std::__value_type<std::string,MIL::IRValueType const*>,std::__map_value_compare<std::string,std::__value_type<std::string,MIL::IRValueType const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MIL::IRValueType const*>>>::destroy(&p_p, v28[0]);
          return;
        }

        v12 = *a3;
        while (std::equal_to<std::string>::operator()[abi:ne200100](&__p, &v11[1].__r_.__value_.__l.__size_, v12 + 4))
        {
          size = v11->__r_.__value_.__l.__size_;
          v14 = v11;
          if (size)
          {
            do
            {
              v11 = size;
              size = size->__r_.__value_.__r.__words[0];
            }

            while (size);
          }

          else
          {
            do
            {
              v11 = v14->__r_.__value_.__r.__words[2];
              v15 = v11->__r_.__value_.__r.__words[0] == v14;
              v14 = v11;
            }

            while (!v15);
          }

          v16 = v12[1];
          if (v16)
          {
            do
            {
              v17 = v16;
              v16 = *v16;
            }

            while (v16);
          }

          else
          {
            do
            {
              v17 = v12[2];
              v15 = *v17 == v12;
              v12 = v17;
            }

            while (!v15);
          }

          v12 = v17;
          if (v11 == v28)
          {
            goto LABEL_22;
          }
        }
      }

      std::__tree<std::__value_type<std::string,MIL::IRValueType const*>,std::__map_value_compare<std::string,std::__value_type<std::string,MIL::IRValueType const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MIL::IRValueType const*>>>::destroy(&p_p, v28[0]);
    }
  }

  __p.__r_.__value_.__r.__words[0] = a2;
  v18 = std::__tree<std::__value_type<std::string,std::vector<std::set<std::string>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::set<std::string>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::set<std::string>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 8, a2);
  v19 = v18;
  v20 = v18[8];
  if (v20 >= v18[9])
  {
    v21 = std::vector<std::set<std::string>>::__emplace_back_slow_path<std::set<std::string> const&>(v18 + 7, a3);
  }

  else
  {
    std::set<std::string>::set[abi:ne200100](v18[8], a3);
    v21 = v20 + 24;
    v19[8] = v20 + 24;
  }

  v19[8] = v21;
  std::pair<std::string,std::set<std::string>>::pair[abi:ne200100]<true,0>(&__p, a2, a3);
  p_p = &__p;
  v23 = std::__tree<std::__value_type<std::pair<std::string,std::set<std::string>>,std::function<void ()(MIL::Transform::ProgramTransformer &)>>,std::__map_value_compare<std::pair<std::string,std::set<std::string>>,std::__value_type<std::pair<std::string,std::set<std::string>>,std::function<void ()(MIL::Transform::ProgramTransformer &)>>,std::less<std::pair<std::string,std::set<std::string>>>,true>,std::allocator<std::__value_type<std::pair<std::string,std::set<std::string>>,std::function<void ()(MIL::Transform::ProgramTransformer &)>>>>::__emplace_unique_key_args<std::pair<std::string,std::set<std::string>>,std::piecewise_construct_t const&,std::tuple<std::pair<std::string,std::set<std::string>>&&>,std::tuple<>>(a1 + 32, &__p);
  std::function<void ()(MIL::Transform::ProgramTransformer &)>::operator=((v23 + 80), a4);
  std::__tree<std::__value_type<std::string,MIL::IRValueType const*>,std::__map_value_compare<std::string,std::__value_type<std::string,MIL::IRValueType const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MIL::IRValueType const*>>>::destroy(&v25, v26);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void MIL::Conversion::OpConversionImpl::ConvertProgram(MIL::Conversion::OpConversionImpl *a1, const MIL::IRProgram *a2, uint64_t a3)
{
  v18 = *MEMORY[0x277D85DE8];
  if (MIL::Conversion::OpConversionImpl::CanConvertProgram(a1, a2))
  {
    MIL::Transform::ProgramTransformer::ProgramTransformer(v15, a2);
    v14[0] = 0;
    v14[1] = 0;
    v13 = v14;
    v6 = (*(*a2 + 72))(a2) + 16;
    while (1)
    {
      v6 = *v6;
      if (!v6)
      {
        break;
      }

      v7 = (*(**(v6 + 40) + 48))(*(v6 + 40));
      v8 = (*(**(v6 + 40) + 32))(*(v6 + 40));
      MIL::Conversion::OpConversionImpl::PopulateProgramOps(a1, a2, v8, v7, &v13);
    }

    MIL::Conversion::OpConversionImpl::GetValidConversion(a1, &v13, a3, v12);
    v9 = v12[0];
    v10 = v12[1];
    while (v9 != v10)
    {
      std::__function::__value_func<void ()(MIL::Transform::ProgramTransformer &)>::__value_func[abi:ne200100](v16, v9);
      if (!v17)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      (*(*v17 + 48))(v17, v15);
      std::__function::__value_func<void ()(MIL::Transform::ProgramTransformer &)>::~__value_func[abi:ne200100](v16);
      v9 += 32;
    }

    MIL::Transform::ProgramTransformer::GetProgram(v15);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Program cannot be converted due to train opset.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void MIL::Conversion::OpConversionImpl::ConvertProgram(MIL::Conversion::OpConversionImpl *a1, const MIL::IRProgram *a2, const void **a3)
{
  v25[0] = 0;
  v25[1] = 0;
  v24 = v25;
  v6 = (*(*a2 + 40))(a2);
  Opset = MIL::MILContext::GetOpset(v6);
  MIL::IROpset::GetReversedOperatorNamesMap(Opset, v22);
  for (i = v23; i; i = *i)
  {
    if (*(a3 + 23) >= 0)
    {
      v9 = *(a3 + 23);
    }

    else
    {
      v9 = a3[1];
    }

    std::string::basic_string[abi:ne200100](&v19, v9 + 2);
    if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v10 = &v19;
    }

    else
    {
      v10 = v19.__r_.__value_.__r.__words[0];
    }

    if (v9)
    {
      if (*(a3 + 23) >= 0)
      {
        v11 = a3;
      }

      else
      {
        v11 = *a3;
      }

      memmove(v10, v11, v9);
    }

    strcpy(v10 + v9, "::");
    v12 = *(i + 63);
    if (v12 >= 0)
    {
      v13 = (i + 5);
    }

    else
    {
      v13 = i[5];
    }

    if (v12 >= 0)
    {
      v14 = *(i + 63);
    }

    else
    {
      v14 = i[6];
    }

    v15 = std::string::append(&v19, v13, v14);
    v16 = *&v15->__r_.__value_.__l.__data_;
    v21 = v15->__r_.__value_.__r.__words[2];
    *__p = v16;
    v15->__r_.__value_.__l.__size_ = 0;
    v15->__r_.__value_.__r.__words[2] = 0;
    v15->__r_.__value_.__r.__words[0] = 0;
    std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(&v24, __p);
    if (SHIBYTE(v21) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v19.__r_.__value_.__l.__data_);
    }
  }

  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(v22);
  v17 = *(a3 + 23);
  if (v17 < 0)
  {
    if (a3[1] != 5)
    {
      goto LABEL_40;
    }

    a3 = *a3;
  }

  else if (v17 != 5)
  {
    goto LABEL_40;
  }

  if (*a3 == 829648745 && *(a3 + 4) == 55)
  {
    std::string::basic_string[abi:ne200100]<0>(v22, "ios16::non_maximum_suppression");
    std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(&v24, v22);
    if (SHIBYTE(v23) < 0)
    {
      operator delete(v22[0]);
    }

    std::string::basic_string[abi:ne200100]<0>(v22, "ios16::resample");
    std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(&v24, v22);
    if (SHIBYTE(v23) < 0)
    {
      operator delete(v22[0]);
    }

    std::string::basic_string[abi:ne200100]<0>(v22, "ios16::crop_resize");
    std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(&v24, v22);
    if (SHIBYTE(v23) < 0)
    {
      operator delete(v22[0]);
    }
  }

LABEL_40:
  MIL::Conversion::OpConversionImpl::ConvertProgram(a1, a2, &v24);
}

void sub_218030500(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, char a30, char *a31)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<std::string,MIL::IRValueType const*>,std::__map_value_compare<std::string,std::__value_type<std::string,MIL::IRValueType const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MIL::IRValueType const*>>>::destroy(&a30, a31);
  _Unwind_Resume(a1);
}

uint64_t MIL::Conversion::OpConversionImpl::CanConvertProgram(MIL::Conversion::OpConversionImpl *this, const MIL::IRProgram *a2)
{
  v2 = *((*(*a2 + 72))(a2) + 16);
  if (!v2)
  {
    return 1;
  }

  while (1)
  {
    v3 = (*(*v2[5] + 32))(v2[5]);
    v4 = *(v3 + 23);
    if (v4 < 0)
    {
      if (*(v3 + 8) != 11)
      {
        goto LABEL_11;
      }

      v3 = *v3;
    }

    else if (v4 != 11)
    {
      goto LABEL_11;
    }

    if (*v3 == 0x72745F3631736F69 && *(v3 + 3) == 0x6E696172745F3631)
    {
      return 0;
    }

LABEL_11:
    v6 = (*(*v2[5] + 32))(v2[5]);
    v7 = *(v6 + 23);
    if (v7 < 0)
    {
      if (*(v6 + 8) != 11)
      {
        goto LABEL_20;
      }

      v6 = *v6;
    }

    else if (v7 != 11)
    {
      goto LABEL_20;
    }

    if (*v6 == 0x72745F3731736F69 && *(v6 + 3) == 0x6E696172745F3731)
    {
      return 0;
    }

LABEL_20:
    v9 = (*(*v2[5] + 48))(v2[5]);
    v10 = (*(*v9 + 56))(v9);
    v11 = **v10;
    v12 = (*v10)[1];
    while (v11 != v12)
    {
      v13 = *v11;
      if ((*(**v11 + 232))(*v11))
      {
        v14 = (*(*v13 + 232))(v13);
        v15 = (*(*v14 + 16))(v14);
        if (v16 == 11 && *v15 == 0x72745F3631736F69 && *(v15 + 3) == 0x6E696172745F3631)
        {
          return 0;
        }

        v18 = (*(*v13 + 232))(v13);
        v19 = (*(*v18 + 16))(v18);
        if (v20 == 11 && *v19 == 0x72745F3731736F69 && *(v19 + 3) == 0x6E696172745F3731)
        {
          return 0;
        }
      }

      v11 += 2;
    }

    v2 = *v2;
    if (!v2)
    {
      return 1;
    }
  }
}

void *std::function<void ()(MIL::Transform::ProgramTransformer &)>::operator=(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  std::__function::__value_func<void ()(MIL::Transform::ProgramTransformer &)>::__value_func[abi:ne200100](v4, a2);
  std::__function::__value_func<void ()(MIL::Transform::ProgramTransformer &)>::swap[abi:ne200100](v4, a1);
  std::__function::__value_func<void ()(MIL::Transform::ProgramTransformer &)>::~__value_func[abi:ne200100](v4);
  return a1;
}

uint64_t std::pair<std::string,std::set<std::string>>::~pair(uint64_t a1)
{
  std::__tree<std::__value_type<std::string,MIL::IRValueType const*>,std::__map_value_compare<std::string,std::__value_type<std::string,MIL::IRValueType const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MIL::IRValueType const*>>>::destroy(a1 + 24, *(a1 + 32));
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__tree<std::__value_type<std::string,std::vector<std::set<std::string>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::set<std::string>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::set<std::string>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    std::__tree<std::__value_type<std::string,std::vector<std::set<std::string>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::set<std::string>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::set<std::string>>>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return v2;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::vector<std::set<std::string>>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::vector<std::set<std::string>>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<std::set<std::string>>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<std::set<std::string>>>,0>(uint64_t a1)
{
  v2 = (a1 + 24);
  std::vector<std::set<std::string>>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

void std::vector<std::set<std::string>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = v4 - 3;
        std::__tree<std::__value_type<std::string,MIL::IRValueType const*>,std::__map_value_compare<std::string,std::__value_type<std::string,MIL::IRValueType const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MIL::IRValueType const*>>>::destroy((v4 - 3), *(v4 - 2));
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__tree<std::__value_type<std::pair<std::string,std::set<std::string>>,std::function<void ()(MIL::Transform::ProgramTransformer &)>>,std::__map_value_compare<std::pair<std::string,std::set<std::string>>,std::__value_type<std::pair<std::string,std::set<std::string>>,std::function<void ()(MIL::Transform::ProgramTransformer &)>>,std::less<std::pair<std::string,std::set<std::string>>>,true>,std::allocator<std::__value_type<std::pair<std::string,std::set<std::string>>,std::function<void ()(MIL::Transform::ProgramTransformer &)>>>>::__emplace_unique_key_args<std::pair<std::string,std::set<std::string>>,std::piecewise_construct_t const&,std::tuple<std::pair<std::string,std::set<std::string>>&&>,std::tuple<>>(uint64_t a1, uint64_t a2)
{
  result = *std::__tree<std::__value_type<std::pair<std::string,std::set<std::string>>,std::function<void ()(MIL::Transform::ProgramTransformer &)>>,std::__map_value_compare<std::pair<std::string,std::set<std::string>>,std::__value_type<std::pair<std::string,std::set<std::string>>,std::function<void ()(MIL::Transform::ProgramTransformer &)>>,std::less<std::pair<std::string,std::set<std::string>>>,true>,std::allocator<std::__value_type<std::pair<std::string,std::set<std::string>>,std::function<void ()(MIL::Transform::ProgramTransformer &)>>>>::__find_equal<std::pair<std::string,std::set<std::string>>>(a1, &v3, a2);
  if (!result)
  {
    std::__tree<std::__value_type<std::pair<std::string,std::set<std::string>>,std::function<void ()(MIL::Transform::ProgramTransformer &)>>,std::__map_value_compare<std::pair<std::string,std::set<std::string>>,std::__value_type<std::pair<std::string,std::set<std::string>>,std::function<void ()(MIL::Transform::ProgramTransformer &)>>,std::less<std::pair<std::string,std::set<std::string>>>,true>,std::allocator<std::__value_type<std::pair<std::string,std::set<std::string>>,std::function<void ()(MIL::Transform::ProgramTransformer &)>>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::pair<std::string,std::set<std::string>>&&>,std::tuple<>>();
  }

  return result;
}

uint64_t *std::__tree<std::__value_type<std::pair<std::string,std::set<std::string>>,std::function<void ()(MIL::Transform::ProgramTransformer &)>>,std::__map_value_compare<std::pair<std::string,std::set<std::string>>,std::__value_type<std::pair<std::string,std::set<std::string>>,std::function<void ()(MIL::Transform::ProgramTransformer &)>>,std::less<std::pair<std::string,std::set<std::string>>>,true>,std::allocator<std::__value_type<std::pair<std::string,std::set<std::string>>,std::function<void ()(MIL::Transform::ProgramTransformer &)>>>>::__find_equal<std::pair<std::string,std::set<std::string>>>(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 8);
  result = (a1 + 8);
  v4 = v5;
  if (v5)
  {
    while (1)
    {
      v36 = result;
      v6 = v4;
      v7 = v4 + 4;
      v8 = *(v4 + 55);
      v9 = *(a3 + 23);
      v10 = v9;
      v37 = v4[5];
      v38 = *(a3 + 8);
      if ((v9 & 0x80u) == 0)
      {
        v11 = *(a3 + 23);
      }

      else
      {
        v11 = *(a3 + 8);
      }

      v39 = v4[4];
      v40 = *a3;
      if ((v9 & 0x80u) == 0)
      {
        v12 = a3;
      }

      else
      {
        v12 = *a3;
      }

      if ((v8 & 0x80u) == 0)
      {
        v13 = *(v4 + 55);
      }

      else
      {
        v13 = v4[5];
      }

      if ((v8 & 0x80u) == 0)
      {
        v14 = v4 + 4;
      }

      else
      {
        v14 = v4[4];
      }

      if (v13 >= v11)
      {
        v15 = v11;
      }

      else
      {
        v15 = v13;
      }

      v16 = memcmp(v12, v14, v15);
      v17 = v11 < v13;
      if (v16)
      {
        v17 = v16 < 0;
      }

      if (v17)
      {
        goto LABEL_20;
      }

      v18 = memcmp(v14, v12, v15);
      v19 = v13 < v11;
      if (v18)
      {
        v19 = v18 < 0;
      }

      if (v19)
      {
        break;
      }

      if (std::__lexicographical_compare[abi:ne200100]<std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>,std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>,std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>,std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>,std::__identity,std::__identity,std::__less<void,void>>(*(a3 + 24), (a3 + 32), v6[7], v6 + 8))
      {
LABEL_20:
        v4 = *v6;
        result = v6;
        if (!*v6)
        {
          goto LABEL_54;
        }
      }

      else
      {
        v9 = *(a3 + 23);
        v20 = *a3;
        v22 = *(a3 + 8);
        v8 = *(v6 + 55);
        v21 = v6[4];
        v23 = v6[5];
        v24 = *(v6 + 55);
        v10 = *(a3 + 23);
LABEL_28:
        if (v24 >= 0)
        {
          v25 = v8;
        }

        else
        {
          v25 = v23;
        }

        if (v24 >= 0)
        {
          v26 = v7;
        }

        else
        {
          v26 = v21;
        }

        v27 = v10 < 0;
        if (v10 >= 0)
        {
          v28 = v9;
        }

        else
        {
          v28 = v22;
        }

        if (v27)
        {
          v29 = v20;
        }

        else
        {
          v29 = a3;
        }

        if (v28 >= v25)
        {
          v30 = v25;
        }

        else
        {
          v30 = v28;
        }

        v31 = memcmp(v26, v29, v30);
        v32 = v25 < v28;
        if (v31)
        {
          v32 = v31 < 0;
        }

        if (!v32)
        {
          v33 = memcmp(v29, v26, v30);
          v34 = v28 < v25;
          if (v33)
          {
            v34 = v33 < 0;
          }

          if (v34 || !std::__lexicographical_compare[abi:ne200100]<std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>,std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>,std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>,std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>,std::__identity,std::__identity,std::__less<void,void>>(v6[7], v6 + 8, *(a3 + 24), (a3 + 32)))
          {
            result = v36;
            goto LABEL_54;
          }
        }

        result = v6 + 1;
        v4 = v6[1];
        if (!v4)
        {
          goto LABEL_54;
        }
      }
    }

    v21 = v39;
    v20 = v40;
    v23 = v37;
    v22 = v38;
    v24 = v8;
    goto LABEL_28;
  }

  v6 = result;
LABEL_54:
  *a2 = v6;
  return result;
}

uint64_t std::__lexicographical_compare[abi:ne200100]<std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>,std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>,std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>,std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>,std::__identity,std::__identity,std::__less<void,void>>(void *a1, void *a2, void *a3, void *a4)
{
  if (a3 == a4)
  {
    return 0;
  }

  v6 = a3;
  while (a1 != a2)
  {
    v9 = *(v6 + 55);
    v10 = *(a1 + 55);
    if (v10 >= 0)
    {
      v11 = *(a1 + 55);
    }

    else
    {
      v11 = a1[5];
    }

    if (v10 >= 0)
    {
      v12 = a1 + 4;
    }

    else
    {
      v12 = a1[4];
    }

    if (v9 >= 0)
    {
      v13 = *(v6 + 55);
    }

    else
    {
      v13 = v6[5];
    }

    if (v9 >= 0)
    {
      v14 = v6 + 4;
    }

    else
    {
      v14 = v6[4];
    }

    if (v13 >= v11)
    {
      v15 = v11;
    }

    else
    {
      v15 = v13;
    }

    v16 = memcmp(v12, v14, v15);
    v17 = v11 < v13;
    if (v16)
    {
      v17 = v16 < 0;
    }

    if (v17)
    {
      break;
    }

    v18 = memcmp(v14, v12, v15);
    v19 = v13 < v11;
    if (v18)
    {
      v19 = v18 < 0;
    }

    if (!v19)
    {
      v20 = a1[1];
      v21 = a1;
      if (v20)
      {
        do
        {
          a1 = v20;
          v20 = *v20;
        }

        while (v20);
      }

      else
      {
        do
        {
          a1 = v21[2];
          v22 = *a1 == v21;
          v21 = a1;
        }

        while (!v22);
      }

      v23 = v6[1];
      if (v23)
      {
        do
        {
          v24 = v23;
          v23 = *v23;
        }

        while (v23);
      }

      else
      {
        do
        {
          v24 = v6[2];
          v22 = *v24 == v6;
          v6 = v24;
        }

        while (!v22);
      }

      v6 = v24;
      if (v24 != a4)
      {
        continue;
      }
    }

    return 0;
  }

  return 1;
}

std::string *std::pair<std::string,std::set<std::string>>::pair[abi:ne200100]<true,0>(std::string *this, __int128 *a2, const void ***a3)
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

  std::set<std::string>::set[abi:ne200100](this[1].__r_.__value_.__r.__words, a3);
  return this;
}

void sub_218031120(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::__function::__value_func<void ()(MIL::Transform::ProgramTransformer &)>::swap[abi:ne200100](void *result, void *a2)
{
  v5[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_21803142C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::vector<std::set<std::string>>::__emplace_back_slow_path<std::set<std::string> const&>(uint64_t *a1, const void ***a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::set<std::string>>>(a1, v6);
  }

  v13 = 0;
  v14 = 24 * v2;
  std::set<std::string>::set[abi:ne200100]((24 * v2), a2);
  v15 = 24 * v2 + 24;
  v7 = a1[1];
  v8 = 24 * v2 + *a1 - v7;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::set<std::string>>,std::set<std::string>*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<std::set<std::string>>::~__split_buffer(&v13);
  return v12;
}

void sub_218031554(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<std::set<std::string>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::set<std::string>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::set<std::string>>,std::set<std::string>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = a4;
  v15 = a4;
  v13[0] = a1;
  v13[1] = &v15;
  v13[2] = &v16;
  if (a2 == a3)
  {
    v14 = 1;
  }

  else
  {
    v5 = a2;
    v6 = 0;
    do
    {
      v7 = (a4 + v6);
      *v7 = *(a2 + v6);
      v8 = (a2 + v6 + 8);
      v9 = *v8;
      *(a4 + v6 + 8) = *v8;
      v10 = a4 + v6 + 8;
      v11 = *(a2 + v6 + 16);
      v7[2] = v11;
      if (v11)
      {
        *(v9 + 16) = v10;
        *(a2 + v6) = v8;
        *v8 = 0;
        *(a2 + v6 + 16) = 0;
      }

      else
      {
        *v7 = v10;
      }

      v6 += 24;
    }

    while (a2 + v6 != a3);
    v16 = a4 + v6;
    v14 = 1;
    while (v5 != a3)
    {
      std::__tree<std::__value_type<std::string,MIL::IRValueType const*>,std::__map_value_compare<std::string,std::__value_type<std::string,MIL::IRValueType const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MIL::IRValueType const*>>>::destroy(v5, *(v5 + 8));
      v5 += 24;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::set<std::string>>,std::set<std::string>*>>::~__exception_guard_exceptions[abi:ne200100](v13);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::set<std::string>>,std::set<std::string>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::set<std::string>>,std::set<std::string>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::set<std::string>>,std::set<std::string>*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    do
    {
      v3 = v1 - 24;
      std::__tree<std::__value_type<std::string,MIL::IRValueType const*>,std::__map_value_compare<std::string,std::__value_type<std::string,MIL::IRValueType const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MIL::IRValueType const*>>>::destroy(v1 - 24, *(v1 - 16));
      v1 = v3;
    }

    while (v3 != v2);
  }
}

void **std::__split_buffer<std::set<std::string>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::set<std::string>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::set<std::string>>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 24;
    std::__tree<std::__value_type<std::string,MIL::IRValueType const*>,std::__map_value_compare<std::string,std::__value_type<std::string,MIL::IRValueType const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MIL::IRValueType const*>>>::destroy(i - 24, *(i - 16));
  }
}

uint64_t MIL::Conversion::OpConversionImpl::PopulateProgramOps(uint64_t a1, uint64_t a2, const void **a3, uint64_t a4, uint64_t a5)
{
  v10 = (*(*a2 + 40))(a2);
  Opset = MIL::MILContext::GetOpset(v10);
  MIL::IROpset::GetReversedOperatorNamesMap(Opset, v62);
  v12 = (*(*a4 + 56))(a4);
  v14 = **v12;
  v13 = (*v12)[1];
  v55 = v13;
  while (v14 != v13)
  {
    v15 = *v14;
    v16 = (*(**v14 + 208))(*v14);
    v17 = **v16;
    v18 = (*v16)[1];
    while (v17 != v18)
    {
      MIL::Conversion::OpConversionImpl::PopulateProgramOps(a1, a2, a3, *v17, a5);
      v17 += 2;
    }

    if ((*(*v15 + 232))(v15))
    {
      v19 = (*(*v15 + 232))(v15);
      v20 = (*(*v19 + 16))(v19);
      v22 = v21;
      if (v21 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v21 >= 0x17)
      {
        operator new();
      }

      *(&__dst.__r_.__value_.__s + 23) = v21;
      if (v21)
      {
        memmove(&__dst, v20, v21);
      }

      __dst.__r_.__value_.__s.__data_[v22] = 0;
      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __dst.__r_.__value_.__l.__size_;
      }

      std::string::basic_string[abi:ne200100](&v58, size + 2);
      if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v39 = &v58;
      }

      else
      {
        v39 = v58.__r_.__value_.__r.__words[0];
      }

      if (size)
      {
        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_dst = &__dst;
        }

        else
        {
          p_dst = __dst.__r_.__value_.__r.__words[0];
        }

        memmove(v39, p_dst, size);
      }

      strcpy(v39 + size, "::");
      v41 = (*(*a2 + 40))(a2);
      v42 = MIL::MILContext::GetOpset(v41);
      MIL::IROpset::GetReversedOperatorNamesMap(v42, &v56);
      v43 = (*(*v15 + 64))(v15);
      v44 = (*(*v43 + 16))(v43);
      v45 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>(&v56, v44);
      if (!v45)
      {
        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      v48 = v45[5];
      v46 = v45 + 5;
      v47 = v48;
      v49 = *(v46 + 23);
      if (v49 >= 0)
      {
        v50 = v46;
      }

      else
      {
        v50 = v47;
      }

      if (v49 >= 0)
      {
        v51 = *(v46 + 23);
      }

      else
      {
        v51 = v46[1];
      }

      v52 = std::string::append(&v58, v50, v51);
      v53 = *&v52->__r_.__value_.__l.__data_;
      v60 = v52->__r_.__value_.__r.__words[2];
      *__p = v53;
      v52->__r_.__value_.__l.__size_ = 0;
      v52->__r_.__value_.__r.__words[2] = 0;
      v52->__r_.__value_.__r.__words[0] = 0;
      std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(a5, __p);
      if (SHIBYTE(v60) < 0)
      {
        operator delete(__p[0]);
      }

      std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(&v56);
      if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
      {
        v37 = v58.__r_.__value_.__r.__words[0];
        goto LABEL_55;
      }
    }

    else
    {
      if (*(a3 + 23) >= 0)
      {
        v23 = *(a3 + 23);
      }

      else
      {
        v23 = a3[1];
      }

      std::string::basic_string[abi:ne200100](&__dst, v23 + 2);
      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v24 = &__dst;
      }

      else
      {
        v24 = __dst.__r_.__value_.__r.__words[0];
      }

      if (v23)
      {
        if (*(a3 + 23) >= 0)
        {
          v25 = a3;
        }

        else
        {
          v25 = *a3;
        }

        memmove(v24, v25, v23);
      }

      strcpy(v24 + v23, "::");
      v26 = (*(*v15 + 64))(v15);
      v27 = (*(*v26 + 16))(v26);
      v28 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(v62, v27);
      if (!v28)
      {
        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      v31 = v28[5];
      v29 = v28 + 5;
      v30 = v31;
      v32 = *(v29 + 23);
      if (v32 >= 0)
      {
        v33 = v29;
      }

      else
      {
        v33 = v30;
      }

      if (v32 >= 0)
      {
        v34 = *(v29 + 23);
      }

      else
      {
        v34 = v29[1];
      }

      v35 = std::string::append(&__dst, v33, v34);
      v36 = *&v35->__r_.__value_.__l.__data_;
      v57 = v35->__r_.__value_.__r.__words[2];
      v56 = v36;
      v35->__r_.__value_.__l.__size_ = 0;
      v35->__r_.__value_.__r.__words[2] = 0;
      v35->__r_.__value_.__r.__words[0] = 0;
      std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(a5, &v56);
      if (SHIBYTE(v57) < 0)
      {
        v37 = v56;
LABEL_55:
        operator delete(v37);
      }
    }

    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    v14 += 2;
    v13 = v55;
  }

  return std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(v62);
}

void MIL::Conversion::OpConversionImpl::GetValidConversion(uint64_t a1@<X0>, const void ***a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v21[0] = 0;
  v21[1] = 0;
  v20 = v21;
  v5 = a2 + 1;
  v6 = *a2;
  if (*a2 != (a2 + 1))
  {
    do
    {
      if (!std::__tree<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>>>::__count_unique<std::string>(a3, v6 + 4))
      {
        if (!std::__tree<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>>>::__count_unique<std::string>(&v20, v6 + 4) || (v18 = (v6 + 4), (*(std::__tree<std::__value_type<std::string,BOOL>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v20, v6 + 4) + 56) & 1) == 0))
        {
          v18 = (v6 + 4);
          *(std::__tree<std::__value_type<std::string,BOOL>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v20, v6 + 4) + 56) = 0;
          MIL::Conversion::OpConversionImpl::GetConversionOrderReverse(a1, v6 + 4, a3, &v20, &v18);
          if (v18 == v19)
          {
            exception = __cxa_allocate_exception(0x10uLL);
            std::operator+<char>();
            std::runtime_error::runtime_error(exception, &v17);
            __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
          }

          std::vector<std::function<void ()(MIL::Transform::ProgramTransformer &)>>::__insert_with_size[abi:ne200100]<std::move_iterator<std::__wrap_iter<std::function<void ()(MIL::Transform::ProgramTransformer &)>*>>,std::move_iterator<std::__wrap_iter<std::function<void ()(MIL::Transform::ProgramTransformer &)>*>>>(a4, a4[1], v18, v19, (v19 - v18) >> 5);
          v17.__r_.__value_.__r.__words[0] = &v18;
          std::vector<std::function<void ()(MIL::Transform::ProgramTransformer &)>>::__destroy_vector::operator()[abi:ne200100](&v17);
        }
      }

      v9 = v6[1];
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = v6[2];
          v11 = *v10 == v6;
          v6 = v10;
        }

        while (!v11);
      }

      v6 = v10;
    }

    while (v10 != v5);
    v13 = *a4;
    v12 = a4[1];
    v14 = v12 - 4;
    if (v13 != v12 && v14 > v13)
    {
      do
      {
        std::__function::__value_func<void ()(MIL::Transform::ProgramTransformer &)>::swap[abi:ne200100](v13, v14);
        v13 += 4;
        v14 -= 4;
      }

      while (v13 < v14);
    }
  }

  std::__tree<std::__value_type<std::string,MIL::IRValueType const*>,std::__map_value_compare<std::string,std::__value_type<std::string,MIL::IRValueType const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MIL::IRValueType const*>>>::destroy(&v20, v21[0]);
}

void sub_218031F34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, char *a20)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v21 & 1) == 0)
    {
LABEL_6:
      __p = &a16;
      std::vector<std::function<void ()(MIL::Transform::ProgramTransformer &)>>::__destroy_vector::operator()[abi:ne200100](&__p);
      std::__tree<std::__value_type<std::string,MIL::IRValueType const*>,std::__map_value_compare<std::string,std::__value_type<std::string,MIL::IRValueType const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MIL::IRValueType const*>>>::destroy(&a19, a20);
      std::vector<std::function<void ()(MIL::Transform::ProgramTransformer &)>>::__destroy_vector::operator()[abi:ne200100](&a19);
      _Unwind_Resume(a1);
    }
  }

  else if (!v21)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v20);
  goto LABEL_6;
}

void MIL::Conversion::OpConversionImpl::GetConversionOrderReverse(uint64_t a1@<X0>, const void **a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  *(std::__tree<std::__value_type<std::string,BOOL>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a4, a2) + 56) = 0;
  __p.__r_.__value_.__r.__words[0] = a2;
  v10 = std::__tree<std::__value_type<std::string,std::vector<std::set<std::string>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::set<std::string>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::set<std::string>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 8, a2);
  v11 = *(v10 + 56);
  if (v11 == *(v10 + 64))
  {
LABEL_17:
    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
    return;
  }

  v19 = *(v10 + 64);
LABEL_3:
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  v12 = *v11;
  if (*v11 != (v11 + 1))
  {
    do
    {
      if (!std::__tree<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>>>::__count_unique<std::string>(a3, v12 + 4))
      {
        if (!std::__tree<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>>>::__count_unique<std::string>(a4, v12 + 4) || (p_p = (v12 + 4), (*(std::__tree<std::__value_type<std::string,BOOL>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a4, v12 + 4) + 56) & 1) == 0))
        {
          MIL::Conversion::OpConversionImpl::GetConversionOrderReverse(&__p, a1, v12 + 4, a3, a4);
          if (__p.__r_.__value_.__r.__words[0] == __p.__r_.__value_.__l.__size_)
          {
            p_p = &__p;
            std::vector<std::function<void ()(MIL::Transform::ProgramTransformer &)>>::__destroy_vector::operator()[abi:ne200100](&p_p);
            __p.__r_.__value_.__r.__words[0] = a5;
            std::vector<std::function<void ()(MIL::Transform::ProgramTransformer &)>>::__destroy_vector::operator()[abi:ne200100](&__p);
            v11 += 3;
            if (v11 == v19)
            {
              goto LABEL_17;
            }

            goto LABEL_3;
          }

          std::vector<std::function<void ()(MIL::Transform::ProgramTransformer &)>>::__insert_with_size[abi:ne200100]<std::move_iterator<std::__wrap_iter<std::function<void ()(MIL::Transform::ProgramTransformer &)>*>>,std::move_iterator<std::__wrap_iter<std::function<void ()(MIL::Transform::ProgramTransformer &)>*>>>(a5, a5[1], __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_, (__p.__r_.__value_.__l.__size_ - __p.__r_.__value_.__r.__words[0]) >> 5);
          p_p = &__p;
          std::vector<std::function<void ()(MIL::Transform::ProgramTransformer &)>>::__destroy_vector::operator()[abi:ne200100](&p_p);
        }
      }

      v13 = v12[1];
      if (v13)
      {
        do
        {
          v14 = v13;
          v13 = *v13;
        }

        while (v13);
      }

      else
      {
        do
        {
          v14 = v12[2];
          v15 = *v14 == v12;
          v12 = v14;
        }

        while (!v15);
      }

      v12 = v14;
    }

    while (v14 != v11 + 1);
  }

  std::pair<std::string,std::set<std::string>>::pair[abi:ne200100]<true,0>(&__p, a2, v11);
  p_p = &__p;
  v16 = std::__tree<std::__value_type<std::pair<std::string,std::set<std::string>>,std::function<void ()(MIL::Transform::ProgramTransformer &)>>,std::__map_value_compare<std::pair<std::string,std::set<std::string>>,std::__value_type<std::pair<std::string,std::set<std::string>>,std::function<void ()(MIL::Transform::ProgramTransformer &)>>,std::less<std::pair<std::string,std::set<std::string>>>,true>,std::allocator<std::__value_type<std::pair<std::string,std::set<std::string>>,std::function<void ()(MIL::Transform::ProgramTransformer &)>>>>::__emplace_unique_key_args<std::pair<std::string,std::set<std::string>>,std::piecewise_construct_t const&,std::tuple<std::pair<std::string,std::set<std::string>>&&>,std::tuple<>>(a1 + 32, &__p);
  v17 = a5[1];
  if (v17 >= a5[2])
  {
    v18 = std::vector<std::function<void ()(MIL::Transform::ProgramTransformer &)>>::__emplace_back_slow_path<std::function<void ()(MIL::Transform::ProgramTransformer &)> const&>(a5, v16 + 80);
  }

  else
  {
    std::__function::__value_func<void ()(MIL::Transform::ProgramTransformer &)>::__value_func[abi:ne200100](a5[1], v16 + 80);
    v18 = v17 + 32;
  }

  a5[1] = v18;
  std::__tree<std::__value_type<std::string,MIL::IRValueType const*>,std::__map_value_compare<std::string,std::__value_type<std::string,MIL::IRValueType const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MIL::IRValueType const*>>>::destroy(v21, v21[1]);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  p_p = a2;
  *(std::__tree<std::__value_type<std::string,BOOL>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a4, a2) + 56) = 1;
}

void sub_218032220(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11)
{
  *(v11 + 8) = v12;
  std::pair<std::string,std::set<std::string>>::~pair(&a11);
  a11 = v11;
  std::vector<std::function<void ()(MIL::Transform::ProgramTransformer &)>>::__destroy_vector::operator()[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

uint64_t std::__tree<std::__value_type<std::string,BOOL>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  result = *std::__tree<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>>>::__find_equal<std::string>(a1, &v3, a2);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,BOOL>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return result;
}

void sub_2180323AC(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,MIL::IRValueType const*>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t std::vector<std::function<void ()(MIL::Transform::ProgramTransformer &)>>::__emplace_back_slow_path<std::function<void ()(MIL::Transform::ProgramTransformer &)> const&>(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 4 > v3)
  {
    v3 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v17 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::function<void ()(MIL::Transform::ProgramTransformer &)>>>(a1, v7);
  }

  v14 = 0;
  v15 = 32 * v2;
  std::__function::__value_func<void ()(MIL::Transform::ProgramTransformer &)>::__value_func[abi:ne200100](32 * v2, a2);
  v16 = (32 * v2 + 32);
  v8 = a1[1];
  v9 = 32 * v2 + *a1 - v8;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::function<void ()(MIL::Transform::ProgramTransformer &)>>,std::function<void ()(MIL::Transform::ProgramTransformer &)>*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<std::function<void ()(MIL::Transform::ProgramTransformer &)>>::~__split_buffer(&v14);
  return v13;
}

void sub_2180324C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<std::function<void ()(MIL::Transform::ProgramTransformer &)>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::function<void ()(MIL::Transform::ProgramTransformer &)>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::function<void ()(MIL::Transform::ProgramTransformer &)>>,std::function<void ()(MIL::Transform::ProgramTransformer &)>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      v8 = std::__function::__value_func<void ()(MIL::Transform::ProgramTransformer &)>::__value_func[abi:ne200100](a4, v7);
      v7 += 32;
      a4 = v8 + 32;
    }

    while (v7 != a3);
    while (v6 != a3)
    {
      std::__function::__value_func<void ()(MIL::Transform::ProgramTransformer &)>::~__value_func[abi:ne200100](v6);
      v6 += 32;
    }
  }
}

uint64_t std::__split_buffer<std::function<void ()(MIL::Transform::ProgramTransformer &)>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 32;
    std::__function::__value_func<void ()(MIL::Transform::ProgramTransformer &)>::~__value_func[abi:ne200100](i - 32);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::vector<std::function<void ()(MIL::Transform::ProgramTransformer &)>>::__insert_with_size[abi:ne200100]<std::move_iterator<std::__wrap_iter<std::function<void ()(MIL::Transform::ProgramTransformer &)>*>>,std::move_iterator<std::__wrap_iter<std::function<void ()(MIL::Transform::ProgramTransformer &)>*>>>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = a3;
  v10 = a1[1];
  v9 = a1[2];
  if (a5 > (v9 - v10) >> 5)
  {
    v11 = *a1;
    v12 = a5 + ((v10 - *a1) >> 5);
    if (v12 >> 59)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v13 = a2 - v11;
    v14 = v9 - v11;
    if (v14 >> 4 > v12)
    {
      v12 = v14 >> 4;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFE0)
    {
      v15 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v30[4] = a1;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::function<void ()(MIL::Transform::ProgramTransformer &)>>>(a1, v15);
    }

    v26 = 32 * (v13 >> 5);
    v30[0] = 0;
    v30[1] = v26;
    v30[3] = 0;
    v27 = 32 * a5;
    v28 = v26 + 32 * a5;
    do
    {
      v26 = std::__function::__value_func<void ()(MIL::Transform::ProgramTransformer &)>::__value_func[abi:ne200100](v26, v7) + 32;
      v7 += 32;
      v27 -= 32;
    }

    while (v27);
    v30[2] = v28;
    v5 = std::vector<std::function<void ()(MIL::Transform::ProgramTransformer &)>>::__swap_out_circular_buffer(a1, v30, v5);
    std::__split_buffer<std::function<void ()(MIL::Transform::ProgramTransformer &)>>::~__split_buffer(v30);
    return v5;
  }

  v16 = v10 - a2;
  v17 = (v10 - a2) >> 5;
  if (v17 >= a5)
  {
    std::vector<std::function<void ()(MIL::Transform::ProgramTransformer &)>>::__move_range(a1, a2, a1[1], a2 + 32 * a5);
    v25 = v7 + 32 * a5;
    v24 = v7;
    goto LABEL_18;
  }

  v19 = v16 + a3;
  v20 = a1[1];
  if (v16 + a3 != a4)
  {
    v20 = a1[1];
    v21 = v16 + a3;
    v22 = v20;
    do
    {
      v23 = std::__function::__value_func<void ()(MIL::Transform::ProgramTransformer &)>::__value_func[abi:ne200100](v22, v21);
      v21 += 32;
      v22 = v23 + 32;
      v20 += 32;
    }

    while (v21 != a4);
  }

  a1[1] = v20;
  if (v17 >= 1)
  {
    std::vector<std::function<void ()(MIL::Transform::ProgramTransformer &)>>::__move_range(a1, v5, v10, v5 + 32 * a5);
    v24 = v7;
    v25 = v19;
LABEL_18:
    std::__copy_impl::operator()[abi:ne200100]<std::move_iterator<std::__wrap_iter<std::function<void ()(MIL::Transform::ProgramTransformer &)> *>>,std::move_iterator<std::__wrap_iter<std::function<void ()(MIL::Transform::ProgramTransformer &)> *>>,std::function<void ()(MIL::Transform::ProgramTransformer &)> *>(v30, v24, v25, v5);
  }

  return v5;
}

void sub_2180327A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::function<void ()(MIL::Transform::ProgramTransformer &)>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<std::function<void ()(MIL::Transform::ProgramTransformer &)>>::__move_range(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = a2 + v6 - a4;
  v8 = v6;
  if (v7 < a3)
  {
    v10 = a2 + v6 - a4;
    v8 = v6;
    do
    {
      v11 = std::__function::__value_func<void ()(MIL::Transform::ProgramTransformer &)>::__value_func[abi:ne200100](v8, v10);
      v10 += 32;
      v8 = v11 + 32;
    }

    while (v10 < a3);
  }

  *(a1 + 8) = v8;
  return std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::function<void ()(MIL::Transform::ProgramTransformer &)> *,std::function<void ()(MIL::Transform::ProgramTransformer &)> *,std::function<void ()(MIL::Transform::ProgramTransformer &)> *>(&v13, a2, v7, v6);
}

uint64_t std::vector<std::function<void ()(MIL::Transform::ProgramTransformer &)>>::__swap_out_circular_buffer(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = a2[1];
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::function<void ()(MIL::Transform::ProgramTransformer &)>>,std::function<void ()(MIL::Transform::ProgramTransformer &)>*>(a1, a3, a1[1], a2[2]);
  v7 = *a1;
  v8 = a2[1];
  a2[2] += a1[1] - a3;
  a1[1] = a3;
  v9 = v8 + v7 - a3;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::function<void ()(MIL::Transform::ProgramTransformer &)>>,std::function<void ()(MIL::Transform::ProgramTransformer &)>*>(a1, v7, a3, v9);
  a2[1] = v9;
  v10 = *a1;
  a1[1] = *a1;
  *a1 = a2[1];
  a2[1] = v10;
  v11 = a1[1];
  a1[1] = a2[2];
  a2[2] = v11;
  v12 = a1[2];
  a1[2] = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
  return v6;
}

uint64_t std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::function<void ()(MIL::Transform::ProgramTransformer &)> *,std::function<void ()(MIL::Transform::ProgramTransformer &)> *,std::function<void ()(MIL::Transform::ProgramTransformer &)> *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = a4 - 32;
  v8 = a3;
  while (v8 != a2)
  {
    v8 -= 32;
    v4 -= 32;
    v9 = v7 - 32;
    std::__function::__value_func<void ()(MIL::Transform::ProgramTransformer &)>::operator=[abi:ne200100](v7, v8);
    v7 = v9;
  }

  return a3;
}

uint64_t std::__function::__value_func<void ()(MIL::Transform::ProgramTransformer &)>::operator=[abi:ne200100](uint64_t a1, uint64_t a2)
{
  std::__function::__value_func<void ()(MIL::Transform::ProgramTransformer &)>::operator=[abi:ne200100](a1);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v4;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(MIL::Transform::ProgramTransformer &)>::operator=[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
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

uint64_t std::__copy_impl::operator()[abi:ne200100]<std::move_iterator<std::__wrap_iter<std::function<void ()(MIL::Transform::ProgramTransformer &)> *>>,std::move_iterator<std::__wrap_iter<std::function<void ()(MIL::Transform::ProgramTransformer &)> *>>,std::function<void ()(MIL::Transform::ProgramTransformer &)> *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      std::__function::__value_func<void ()(MIL::Transform::ProgramTransformer &)>::operator=[abi:ne200100](a4, v5);
      v5 += 32;
      a4 += 32;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void std::vector<std::function<void ()(MIL::Transform::ProgramTransformer &)>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = std::__function::__value_func<void ()(MIL::Transform::ProgramTransformer &)>::~__value_func[abi:ne200100](v4 - 32);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__tree<std::__value_type<std::string,std::vector<std::set<std::string>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::set<std::string>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::set<std::string>>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,std::vector<std::set<std::string>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::set<std::string>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::set<std::string>>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,std::vector<std::set<std::string>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::set<std::string>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::set<std::string>>>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<std::set<std::string>>>,0>((a2 + 4));

    operator delete(a2);
  }
}

void std::__tree<std::__value_type<std::pair<std::string,std::set<std::string>>,std::function<void ()(MIL::Transform::ProgramTransformer &)>>,std::__map_value_compare<std::pair<std::string,std::set<std::string>>,std::__value_type<std::pair<std::string,std::set<std::string>>,std::function<void ()(MIL::Transform::ProgramTransformer &)>>,std::less<std::pair<std::string,std::set<std::string>>>,true>,std::allocator<std::__value_type<std::pair<std::string,std::set<std::string>>,std::function<void ()(MIL::Transform::ProgramTransformer &)>>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::pair<std::string,std::set<std::string>>,std::function<void ()(MIL::Transform::ProgramTransformer &)>>,std::__map_value_compare<std::pair<std::string,std::set<std::string>>,std::__value_type<std::pair<std::string,std::set<std::string>>,std::function<void ()(MIL::Transform::ProgramTransformer &)>>,std::less<std::pair<std::string,std::set<std::string>>>,true>,std::allocator<std::__value_type<std::pair<std::string,std::set<std::string>>,std::function<void ()(MIL::Transform::ProgramTransformer &)>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::pair<std::string,std::set<std::string>>,std::function<void ()(MIL::Transform::ProgramTransformer &)>>,std::__map_value_compare<std::pair<std::string,std::set<std::string>>,std::__value_type<std::pair<std::string,std::set<std::string>>,std::function<void ()(MIL::Transform::ProgramTransformer &)>>,std::less<std::pair<std::string,std::set<std::string>>>,true>,std::allocator<std::__value_type<std::pair<std::string,std::set<std::string>>,std::function<void ()(MIL::Transform::ProgramTransformer &)>>>>::destroy(a1, *(a2 + 1));
    std::__function::__value_func<void ()(MIL::Transform::ProgramTransformer &)>::~__value_func[abi:ne200100]((a2 + 80));
    std::__tree<std::__value_type<std::string,MIL::IRValueType const*>,std::__map_value_compare<std::string,std::__value_type<std::string,MIL::IRValueType const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MIL::IRValueType const*>>>::destroy((a2 + 56), *(a2 + 8));
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

void MIL::Matching::CompiledPattern::CompiledPattern(MIL::Matching::CompiledPattern *this, uint64_t (****a2)(void), MIL::MILContext *a3, MIL::MILContext *a4)
{
  *this = 0;
  *(this + 1) = 0;
  v4 = &unk_2829E4D48;
  v5 = 0uLL;
  v6 = 0;
  MIL::MatchingPrivate::PatternPrivate::CompilePattern(a2, &v4, a3, a4);
  operator new();
}

void sub_218032D30(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v4 = *(v2 + 8);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  _Unwind_Resume(a1);
}

void anonymous namespace::InstructionBuilderImpl::~InstructionBuilderImpl(_anonymous_namespace_::InstructionBuilderImpl *this)
{
  *this = &unk_2829E4D48;
  v2 = (this + 8);
  std::vector<std::unique_ptr<MIL::Matching::Instruction>>::__destroy_vector::operator()[abi:ne200100](&v2);
  UnknownLocationImpl::~UnknownLocationImpl(this);
}

{
  *this = &unk_2829E4D48;
  v2 = (this + 8);
  std::vector<std::unique_ptr<MIL::Matching::Instruction>>::__destroy_vector::operator()[abi:ne200100](&v2);
  UnknownLocationImpl::~UnknownLocationImpl(this);
  MEMORY[0x21CEAFEA0]();
}

void *MIL::Matching::CompiledPattern::CompiledPattern(void *result, void *a2)
{
  v2 = a2[1];
  *result = *a2;
  result[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

{
  v2 = a2[1];
  *result = *a2;
  result[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void *MIL::Matching::CompiledPattern::operator=(void *a1, uint64_t *a2)
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

void MIL::Matching::CompiledPattern::~CompiledPattern(MIL::Matching::CompiledPattern *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  v1 = *(this + 1);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void sub_218032FE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_21803314C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
  }

  _Unwind_Resume(exception_object);
}

void anonymous namespace::InstructionBuilderImpl::CreateSetEdgePredicate(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *MEMORY[0x277D85DE8];
  std::__function::__value_func<BOOL ()(MIL::Builder::DataDependency const&)>::__value_func[abi:ne200100](v4, a2);
  MIL::Matching::CreateSetEdgePredicateInstruction(v4, a3);
}

void sub_2180332F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  if (a3)
  {
  }

  std::__function::__value_func<BOOL ()(MIL::Builder::DataDependency const&)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_218033468(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
  }

  _Unwind_Resume(exception_object);
}

void anonymous namespace::InstructionBuilderImpl::CreateSplit(uint64_t a1, uint64_t a2)
{
  *__p = *a2;
  v3 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  MIL::Matching::CreateSplitInstruction(__p);
}

void sub_2180335F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (a13)
  {
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_218033774(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_2180338D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_218033A3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<std::unique_ptr<MIL::Matching::Instruction>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::unique_ptr<MIL::Matching::Instruction>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *std::__split_buffer<std::unique_ptr<MIL::Matching::Instruction>>::__destruct_at_end[abi:ne200100](void *result, void *a2)
{
  v2 = result[2];
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      v5 = *--v2;
      result = v5;
      v4[2] = v2;
      *v2 = 0;
      if (v5)
      {
        result = (*(*result + 8))(result);
        v2 = v4[2];
      }
    }

    while (v2 != a2);
  }

  return result;
}

uint64_t std::__function::__value_func<BOOL ()(MIL::Builder::DataDependency const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

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

uint64_t std::__function::__value_func<BOOL ()(MIL::Builder::DataDependency const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

void std::vector<std::unique_ptr<MIL::Matching::Instruction>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::unique_ptr<MIL::Matching::Instruction>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *std::vector<std::unique_ptr<MIL::Matching::Instruction>>::clear[abi:ne200100](void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  while (v3 != v2)
  {
    v4 = *--v3;
    result = v4;
    *v3 = 0;
    if (v4)
    {
      result = (*(*result + 8))(result);
    }
  }

  v1[1] = v2;
  return result;
}

void std::__shared_ptr_emplace<MIL::Matching::CompiledPattern::CompiledPatternImpl>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2829E4DC8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x21CEAFEA0);
}

void MIL::EdgeIndexesImpl::~EdgeIndexesImpl(MIL::EdgeIndexesImpl *this)
{
  *this = &unk_2829E4E98;
  v2 = this + 8;
  std::__hash_table<std::__hash_value_type<std::reference_wrapper<std::string const>,std::vector<std::shared_ptr<MIL::Edge const>>>,std::__unordered_map_hasher<std::reference_wrapper<std::string const>,std::__hash_value_type<std::reference_wrapper<std::string const>,std::vector<std::shared_ptr<MIL::Edge const>>>,MIL::ConstReferenceWrapperHasher<std::string>,MIL::ConstReferenceWrapperEq<std::string>,true>,std::__unordered_map_equal<std::reference_wrapper<std::string const>,std::__hash_value_type<std::reference_wrapper<std::string const>,std::vector<std::shared_ptr<MIL::Edge const>>>,MIL::ConstReferenceWrapperEq<std::string>,MIL::ConstReferenceWrapperHasher<std::string>,true>,std::allocator<std::__hash_value_type<std::reference_wrapper<std::string const>,std::vector<std::shared_ptr<MIL::Edge const>>>>>::~__hash_table(this + 88);
  std::__hash_table<std::__hash_value_type<int,std::unordered_map<std::string,std::shared_ptr<MIL::Edge const>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::unordered_map<std::string,std::shared_ptr<MIL::Edge const>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::unordered_map<std::string,std::shared_ptr<MIL::Edge const>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::unordered_map<std::string,std::shared_ptr<MIL::Edge const>>>>>::~__hash_table(this + 48);
  std::__hash_table<std::__hash_value_type<MIL::ParameterSpec,std::shared_ptr<MIL::Edge const>>,std::__unordered_map_hasher<MIL::ParameterSpec,std::__hash_value_type<MIL::ParameterSpec,std::shared_ptr<MIL::Edge const>>,std::hash<MIL::ParameterSpec>,std::equal_to<MIL::ParameterSpec>,true>,std::__unordered_map_equal<MIL::ParameterSpec,std::__hash_value_type<MIL::ParameterSpec,std::shared_ptr<MIL::Edge const>>,std::equal_to<MIL::ParameterSpec>,std::hash<MIL::ParameterSpec>,true>,std::allocator<std::__hash_value_type<MIL::ParameterSpec,std::shared_ptr<MIL::Edge const>>>>::~__hash_table(v2);
}

{
  MIL::EdgeIndexesImpl::~EdgeIndexesImpl(this);

  JUMPOUT(0x21CEAFEA0);
}

void MIL::EdgeIndexes::BuildForBlock(MIL::EdgeIndexes *this, const MIL::IRBlock *a2)
{
  v57 = 0u;
  v58 = 0u;
  v59 = 1065353216;
  memset(v55, 0, sizeof(v55));
  v56 = 1065353216;
  memset(v53, 0, sizeof(v53));
  v54 = 1065353216;
  memset(v51, 0, sizeof(v51));
  v52 = 1065353216;
  v3 = (*(*this + 40))(this, a2);
  v4 = *v3;
  v5 = *(v3 + 8);
  if (*v3 != v5)
  {
    do
    {
      Name = MIL::IRNamedValueType::GetName(*v4);
      LODWORD(v50) = -1;
      std::__hash_table<std::__hash_value_type<std::reference_wrapper<std::string const>,int>,std::__unordered_map_hasher<std::reference_wrapper<std::string const>,std::__hash_value_type<std::reference_wrapper<std::string const>,int>,MIL::ConstReferenceWrapperHasher<std::string>,MIL::ConstReferenceWrapperEq<std::string>,true>,std::__unordered_map_equal<std::reference_wrapper<std::string const>,std::__hash_value_type<std::reference_wrapper<std::string const>,int>,MIL::ConstReferenceWrapperEq<std::string>,MIL::ConstReferenceWrapperHasher<std::string>,true>,std::allocator<std::__hash_value_type<std::reference_wrapper<std::string const>,int>>>::__emplace_unique_key_args<std::reference_wrapper<std::string const>,std::pair<std::reference_wrapper<std::string const> const,int>>(v51, &Name);
      v4 += 2;
    }

    while (v4 != v5);
  }

  v43 = this;
  v6 = (*(*this + 56))(this);
  v7 = **v6;
  v44 = (*v6)[1];
  if (v7 != v44)
  {
    v8 = 0;
    v9 = this + 64;
    do
    {
      v45 = v7;
      v46 = *v7;
      v10 = (*(**v7 + 160))();
      v11 = *v10;
      v47 = v10 + 1;
      if (*v10 != v10 + 1)
      {
        do
        {
          v12 = v11[7];
          for (i = v11[8]; v12 != i; v12 += 2)
          {
            if (((*(**v12 + 24))() & 1) == 0)
            {
              v14 = MIL::IRArgument::GetName(*v12);
              Name = v14;
              if (std::__hash_table<std::__hash_value_type<std::reference_wrapper<std::string const>,int>,std::__unordered_map_hasher<std::reference_wrapper<std::string const>,std::__hash_value_type<std::reference_wrapper<std::string const>,int>,MIL::ConstReferenceWrapperHasher<std::string>,MIL::ConstReferenceWrapperEq<std::string>,true>,std::__unordered_map_equal<std::reference_wrapper<std::string const>,std::__hash_value_type<std::reference_wrapper<std::string const>,int>,MIL::ConstReferenceWrapperEq<std::string>,MIL::ConstReferenceWrapperHasher<std::string>,true>,std::allocator<std::__hash_value_type<std::reference_wrapper<std::string const>,int>>>::find<std::reference_wrapper<std::string const>>(v51, &Name))
              {
                operator new();
              }

              if ((*(*v9 + 24))(v9, v14, 1))
              {
                operator new();
              }

              std::ostringstream::basic_ostringstream[abi:ne200100](&Name);
              v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&Name, "Program parameter '", 19);
              v28 = *(v14 + 23);
              if (v28 >= 0)
              {
                v29 = v14;
              }

              else
              {
                v29 = *v14;
              }

              if (v28 >= 0)
              {
                v30 = *(v14 + 23);
              }

              else
              {
                v30 = *(v14 + 8);
              }

              v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, v29, v30);
              v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, "' from operation ", 17);
              v33 = MEMORY[0x21CEAFB20](v32, v8);
              v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, " does not resolve. ", 19);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, "Are the operations topologically sorted?", 40);
              exception = __cxa_allocate_exception(0x10uLL);
              std::stringbuf::str();
              std::logic_error::logic_error(exception, &v48);
              exception->__vftable = (MEMORY[0x277D828F8] + 16);
              __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
            }
          }

          v15 = v11[1];
          if (v15)
          {
            do
            {
              v16 = v15;
              v15 = *v15;
            }

            while (v15);
          }

          else
          {
            do
            {
              v16 = v11[2];
              v17 = *v16 == v11;
              v11 = v16;
            }

            while (!v17);
          }

          v11 = v16;
        }

        while (v16 != v47);
      }

      v18 = (*(*v46 + 208))(v46);
      v19 = **v18;
      v20 = (*v18)[1];
      while (v19 != v20)
      {
        v19 += 2;
      }

      v21 = (*(*v46 + 176))(v46);
      v22 = *v21;
      v23 = *(v21 + 8);
      while (v22 != v23)
      {
        Name = MIL::IRNamedValueType::GetName(*v22);
        LODWORD(v50) = v8;
        std::__hash_table<std::__hash_value_type<std::reference_wrapper<std::string const>,int>,std::__unordered_map_hasher<std::reference_wrapper<std::string const>,std::__hash_value_type<std::reference_wrapper<std::string const>,int>,MIL::ConstReferenceWrapperHasher<std::string>,MIL::ConstReferenceWrapperEq<std::string>,true>,std::__unordered_map_equal<std::reference_wrapper<std::string const>,std::__hash_value_type<std::reference_wrapper<std::string const>,int>,MIL::ConstReferenceWrapperEq<std::string>,MIL::ConstReferenceWrapperHasher<std::string>,true>,std::allocator<std::__hash_value_type<std::reference_wrapper<std::string const>,int>>>::__emplace_unique_key_args<std::reference_wrapper<std::string const>,std::pair<std::reference_wrapper<std::string const> const,int>>(v51, &Name);
        if ((v24 & 1) == 0)
        {
          v36 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v36, "Two first appears at inserted for the same output!");
          __cxa_throw(v36, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }

        v22 += 2;
      }

      v8 = (v8 + 1);
      v7 = v45 + 2;
    }

    while (v45 + 2 != v44);
  }

  v25 = (*(*v43 + 88))(v43);
  v26 = *v25;
  if (*v25 != v25[1])
  {
    Name = *v25;
    if (std::__hash_table<std::__hash_value_type<std::reference_wrapper<std::string const>,int>,std::__unordered_map_hasher<std::reference_wrapper<std::string const>,std::__hash_value_type<std::reference_wrapper<std::string const>,int>,MIL::ConstReferenceWrapperHasher<std::string>,MIL::ConstReferenceWrapperEq<std::string>,true>,std::__unordered_map_equal<std::reference_wrapper<std::string const>,std::__hash_value_type<std::reference_wrapper<std::string const>,int>,MIL::ConstReferenceWrapperEq<std::string>,MIL::ConstReferenceWrapperHasher<std::string>,true>,std::allocator<std::__hash_value_type<std::reference_wrapper<std::string const>,int>>>::find<std::reference_wrapper<std::string const>>(v51, &Name))
    {
      operator new();
    }

    if ((*(*(v43 + 8) + 24))(v43 + 64, v26, 1))
    {
      operator new();
    }

    std::ostringstream::basic_ostringstream[abi:ne200100](&Name);
    v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&Name, "Program parameter '", 19);
    v38 = *(v26 + 23);
    if (v38 >= 0)
    {
      v39 = v26;
    }

    else
    {
      v39 = *v26;
    }

    if (v38 >= 0)
    {
      v40 = *(v26 + 23);
    }

    else
    {
      v40 = *(v26 + 8);
    }

    v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, v39, v40);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, "' from block output does not resolve.", 37);
    v42 = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str();
    std::logic_error::logic_error(v42, &v48);
    v42->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(v42, off_278235F80, MEMORY[0x277D82610]);
  }

  operator new();
}

void sub_218034908(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54)
{
  if (a20 < 0)
  {
    operator delete(__p);
    if ((v55 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a21);
      std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(&a54);
      std::__hash_table<std::__hash_value_type<std::reference_wrapper<std::string const>,std::vector<std::shared_ptr<MIL::Edge const>>>,std::__unordered_map_hasher<std::reference_wrapper<std::string const>,std::__hash_value_type<std::reference_wrapper<std::string const>,std::vector<std::shared_ptr<MIL::Edge const>>>,MIL::ConstReferenceWrapperHasher<std::string>,MIL::ConstReferenceWrapperEq<std::string>,true>,std::__unordered_map_equal<std::reference_wrapper<std::string const>,std::__hash_value_type<std::reference_wrapper<std::string const>,std::vector<std::shared_ptr<MIL::Edge const>>>,MIL::ConstReferenceWrapperEq<std::string>,MIL::ConstReferenceWrapperHasher<std::string>,true>,std::allocator<std::__hash_value_type<std::reference_wrapper<std::string const>,std::vector<std::shared_ptr<MIL::Edge const>>>>>::~__hash_table(v56 - 256);
      std::__hash_table<std::__hash_value_type<int,std::unordered_map<std::string,std::shared_ptr<MIL::Edge const>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::unordered_map<std::string,std::shared_ptr<MIL::Edge const>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::unordered_map<std::string,std::shared_ptr<MIL::Edge const>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::unordered_map<std::string,std::shared_ptr<MIL::Edge const>>>>>::~__hash_table(v56 - 208);
      std::__hash_table<std::__hash_value_type<MIL::ParameterSpec,std::shared_ptr<MIL::Edge const>>,std::__unordered_map_hasher<MIL::ParameterSpec,std::__hash_value_type<MIL::ParameterSpec,std::shared_ptr<MIL::Edge const>>,std::hash<MIL::ParameterSpec>,std::equal_to<MIL::ParameterSpec>,true>,std::__unordered_map_equal<MIL::ParameterSpec,std::__hash_value_type<MIL::ParameterSpec,std::shared_ptr<MIL::Edge const>>,std::equal_to<MIL::ParameterSpec>,std::hash<MIL::ParameterSpec>,true>,std::allocator<std::__hash_value_type<MIL::ParameterSpec,std::shared_ptr<MIL::Edge const>>>>::~__hash_table(v56 - 160);
      _Unwind_Resume(a1);
    }
  }

  else if (!v55)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v54);
  goto LABEL_6;
}

uint64_t ***MIL::anonymous namespace::AddLexicalEdges(uint64_t a1, void *a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6)
{
  v29 = a4;
  result = (*(*a1 + 56))(a1);
  v11 = **result;
  v23 = (*result)[1];
  if (v11 != v23)
  {
    v27 = a5;
    do
    {
      v25 = v11;
      v24 = *v11;
      v12 = (*(**v11 + 160))();
      v13 = *v12;
      v26 = v12 + 1;
      if (*v12 != v12 + 1)
      {
        do
        {
          v14 = v13[7];
          v15 = v13[8];
          while (v14 != v15)
          {
            if (((*(**v14 + 24))() & 1) == 0)
            {
              Name = MIL::IRArgument::GetName(*v14);
              __p = Name;
              if (std::__hash_table<std::__hash_value_type<std::reference_wrapper<std::string const>,int>,std::__unordered_map_hasher<std::reference_wrapper<std::string const>,std::__hash_value_type<std::reference_wrapper<std::string const>,int>,MIL::ConstReferenceWrapperHasher<std::string>,MIL::ConstReferenceWrapperEq<std::string>,true>,std::__unordered_map_equal<std::reference_wrapper<std::string const>,std::__hash_value_type<std::reference_wrapper<std::string const>,int>,MIL::ConstReferenceWrapperEq<std::string>,MIL::ConstReferenceWrapperHasher<std::string>,true>,std::allocator<std::__hash_value_type<std::reference_wrapper<std::string const>,int>>>::find<std::reference_wrapper<std::string const>>(a2, &__p))
              {
                operator new();
              }

              if ((*(*a3 + 24))(a3, Name, 1))
              {
                operator new();
              }
            }

            v14 += 2;
          }

          v17 = v13[1];
          if (v17)
          {
            do
            {
              v18 = v17;
              v17 = *v17;
            }

            while (v17);
          }

          else
          {
            do
            {
              v18 = v13[2];
              v19 = *v18 == v13;
              v13 = v18;
            }

            while (!v19);
          }

          v13 = v18;
        }

        while (v18 != v26);
      }

      result = (*(*v24 + 208))(v24);
      v20 = **result;
      {
        v22 = *v20;
        v20 += 2;
      }

      v11 = v25 + 2;
    }

    while (v25 + 2 != v23);
  }

  return result;
}

void sub_218034FE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, std::__shared_weak_count *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  if (a23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a23);
  }

  _Unwind_Resume(exception_object);
}

BOOL MIL::operator==(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a1 + 16))(a1);
  if (v4 != (*(*a2 + 16))(a2))
  {
    return 0;
  }

  v5 = (*(*a1 + 24))(a1);
  if (v5 != (*(*a2 + 24))(a2))
  {
    return 0;
  }

  v6 = (*(*a1 + 40))(a1);
  if (v6 != (*(*a2 + 40))(a2))
  {
    return 0;
  }

  v7 = (*(*a1 + 48))(a1);
  v8 = (*(*a2 + 48))(a2);
  v9 = *(v7 + 23);
  if (v9 >= 0)
  {
    v10 = *(v7 + 23);
  }

  else
  {
    v10 = *(v7 + 8);
  }

  v11 = *(v8 + 23);
  v12 = v11;
  if ((v11 & 0x80u) != 0)
  {
    v11 = *(v8 + 8);
  }

  if (v10 != v11)
  {
    return 0;
  }

  v13 = v9 >= 0 ? v7 : *v7;
  v14 = v12 >= 0 ? v8 : *v8;
  if (memcmp(v13, v14, v10))
  {
    return 0;
  }

  if ((*(*a1 + 40))(a1))
  {
    return 1;
  }

  v16 = (*(*a1 + 32))(a1);
  v17 = (*(*a2 + 32))(a2);
  v18 = *(v16 + 23);
  if (v18 >= 0)
  {
    v19 = *(v16 + 23);
  }

  else
  {
    v19 = *(v16 + 8);
  }

  v20 = *(v17 + 23);
  v21 = v20;
  if ((v20 & 0x80u) != 0)
  {
    v20 = *(v17 + 8);
  }

  if (v19 != v20)
  {
    return 0;
  }

  if (v18 >= 0)
  {
    v22 = v16;
  }

  else
  {
    v22 = *v16;
  }

  if (v21 >= 0)
  {
    v23 = v17;
  }

  else
  {
    v23 = *v17;
  }

  return memcmp(v22, v23, v19) == 0;
}

const void ***MIL::EdgeIndexesImpl::ForwardEdgesForIdentifierName(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = std::__hash_table<std::__hash_value_type<std::reference_wrapper<std::string const>,int>,std::__unordered_map_hasher<std::reference_wrapper<std::string const>,std::__hash_value_type<std::reference_wrapper<std::string const>,int>,MIL::ConstReferenceWrapperHasher<std::string>,MIL::ConstReferenceWrapperEq<std::string>,true>,std::__unordered_map_equal<std::reference_wrapper<std::string const>,std::__hash_value_type<std::reference_wrapper<std::string const>,int>,MIL::ConstReferenceWrapperEq<std::string>,MIL::ConstReferenceWrapperHasher<std::string>,true>,std::allocator<std::__hash_value_type<std::reference_wrapper<std::string const>,int>>>::find<std::reference_wrapper<std::string const>>((a1 + 88), &v4);
  if (v2)
  {
    return v2 + 3;
  }

  else
  {
    return 0;
  }
}

uint64_t *MIL::EdgeIndexesImpl::BackwardEdgesForParameter(uint64_t a1, int a2, uint64_t a3)
{
  v5 = a2;
  v6 = a3;
  v3 = std::__hash_table<std::__hash_value_type<MIL::ParameterSpec,std::shared_ptr<MIL::Edge const>>,std::__unordered_map_hasher<MIL::ParameterSpec,std::__hash_value_type<MIL::ParameterSpec,std::shared_ptr<MIL::Edge const>>,std::hash<MIL::ParameterSpec>,std::equal_to<MIL::ParameterSpec>,true>,std::__unordered_map_equal<MIL::ParameterSpec,std::__hash_value_type<MIL::ParameterSpec,std::shared_ptr<MIL::Edge const>>,std::equal_to<MIL::ParameterSpec>,std::hash<MIL::ParameterSpec>,true>,std::allocator<std::__hash_value_type<MIL::ParameterSpec,std::shared_ptr<MIL::Edge const>>>>::find<MIL::ParameterSpec>((a1 + 8), &v5);
  if (!v3)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  return v3 + 4;
}

uint64_t *MIL::EdgeIndexesImpl::BackwardLexicalEdgesByIdentifier(MIL::EdgeIndexesImpl *this, int a2)
{
  v4 = a2;
  v2 = std::__hash_table<std::__hash_value_type<int,std::unordered_map<std::string,std::shared_ptr<MIL::Edge const>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::unordered_map<std::string,std::shared_ptr<MIL::Edge const>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::unordered_map<std::string,std::shared_ptr<MIL::Edge const>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::unordered_map<std::string,std::shared_ptr<MIL::Edge const>>>>>::find<int>(this + 6, &v4);
  if (v2)
  {
    return v2 + 3;
  }

  else
  {
    return 0;
  }
}

const void ***std::__hash_table<std::__hash_value_type<std::reference_wrapper<std::string const>,int>,std::__unordered_map_hasher<std::reference_wrapper<std::string const>,std::__hash_value_type<std::reference_wrapper<std::string const>,int>,MIL::ConstReferenceWrapperHasher<std::string>,MIL::ConstReferenceWrapperEq<std::string>,true>,std::__unordered_map_equal<std::reference_wrapper<std::string const>,std::__hash_value_type<std::reference_wrapper<std::string const>,int>,MIL::ConstReferenceWrapperEq<std::string>,MIL::ConstReferenceWrapperHasher<std::string>,true>,std::allocator<std::__hash_value_type<std::reference_wrapper<std::string const>,int>>>::find<std::reference_wrapper<std::string const>>(void *a1, uint64_t *a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](&v14, *a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v6 == v12)
    {
      if (MIL::ConstReferenceWrapperEq<std::string>::operator()(a1, i + 2, a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](&v14, *a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v12 == v6)
    {
      if (MIL::ConstReferenceWrapperEq<std::string>::operator()(a1, i + 2, a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

BOOL MIL::ConstReferenceWrapperEq<std::string>::operator()(uint64_t a1, const void ***a2, const void ***a3)
{
  v3 = *a3;
  v4 = *(*a2 + 23);
  if (v4 >= 0)
  {
    v5 = *(*a2 + 23);
  }

  else
  {
    v5 = (*a2)[1];
  }

  v6 = *(v3 + 23);
  v7 = v6;
  if (v6 < 0)
  {
    v6 = v3[1];
  }

  if (v5 != v6)
  {
    return 0;
  }

  if (v4 >= 0)
  {
    v8 = *a2;
  }

  else
  {
    v8 = **a2;
  }

  if (v7 >= 0)
  {
    v9 = v3;
  }

  else
  {
    v9 = *v3;
  }

  return memcmp(v8, v9, v5) == 0;
}

uint64_t *std::__hash_table<std::__hash_value_type<int,std::unordered_map<std::string,std::shared_ptr<MIL::Edge const>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::unordered_map<std::string,std::shared_ptr<MIL::Edge const>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::unordered_map<std::string,std::shared_ptr<MIL::Edge const>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::unordered_map<std::string,std::shared_ptr<MIL::Edge const>>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(void *a1, int *a2)
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

void sub_2180357FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<int,std::unordered_map<std::string,std::shared_ptr<MIL::Edge const>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<int,std::unordered_map<std::string,std::shared_ptr<MIL::Edge const>>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<int,std::unordered_map<std::string,std::shared_ptr<MIL::Edge const>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<int,std::unordered_map<std::string,std::shared_ptr<MIL::Edge const>>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v2 + 24);
    }

    operator delete(v2);
  }

  return a1;
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::Edge const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::Edge const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::Edge const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::Edge const>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::shared_ptr<MIL::Edge const>>>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::Edge const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::Edge const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::Edge const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::Edge const>>>>::__construct_node_hash<std::pair<std::string const,std::shared_ptr<MIL::Edge const>>>();
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

void sub_218035AA4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *MIL::EdgeIndexesImpl::EdgeIndexesImpl(void *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  *a1 = &unk_2829E4E98;
  v7 = (a1 + 11);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__hash_table((a1 + 1), a2);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__hash_table((a1 + 6), a3);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__hash_table(v7, a4);
  return a1;
}

uint64_t *std::__hash_table<std::__hash_value_type<MIL::ParameterSpec,std::shared_ptr<MIL::Edge const>>,std::__unordered_map_hasher<MIL::ParameterSpec,std::__hash_value_type<MIL::ParameterSpec,std::shared_ptr<MIL::Edge const>>,std::hash<MIL::ParameterSpec>,std::equal_to<MIL::ParameterSpec>,true>,std::__unordered_map_equal<MIL::ParameterSpec,std::__hash_value_type<MIL::ParameterSpec,std::shared_ptr<MIL::Edge const>>,std::equal_to<MIL::ParameterSpec>,std::hash<MIL::ParameterSpec>,true>,std::allocator<std::__hash_value_type<MIL::ParameterSpec,std::shared_ptr<MIL::Edge const>>>>::find<MIL::ParameterSpec>(void *a1, int *a2)
{
  v4 = *a2;
  v5 = std::__string_hash<char>::operator()[abi:ne200100](&v24, *(a2 + 1));
  v6 = a1[1];
  if (!*&v6)
  {
    return 0;
  }

  v7 = v4 ^ (2 * v5);
  v8 = vcnt_s8(v6);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v7;
    if (v7 >= *&v6)
    {
      v10 = v7 % *&v6;
    }
  }

  else
  {
    v10 = (*&v6 - 1) & v7;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11)
  {
    return 0;
  }

  v12 = *v11;
  if (*v11)
  {
    v13 = *a2;
    v14 = *(a2 + 1);
    do
    {
      v15 = v12[1];
      if (v7 == v15)
      {
        if (*(v12 + 4) == v13)
        {
          v16 = v12[3];
          v17 = *(v16 + 23);
          if (v17 >= 0)
          {
            v18 = *(v16 + 23);
          }

          else
          {
            v18 = *(v16 + 8);
          }

          v19 = *(v14 + 23);
          v20 = v19;
          if ((v19 & 0x80u) != 0)
          {
            v19 = *(v14 + 8);
          }

          if (v18 == v19)
          {
            v21 = v17 >= 0 ? v12[3] : *v16;
            v22 = v20 >= 0 ? v14 : *v14;
            if (!memcmp(v21, v22, v18))
            {
              return v12;
            }
          }
        }
      }

      else
      {
        if (v9 > 1)
        {
          if (v15 >= *&v6)
          {
            v15 %= *&v6;
          }
        }

        else
        {
          v15 &= *&v6 - 1;
        }

        if (v15 != v10)
        {
          return 0;
        }
      }

      v12 = *v12;
    }

    while (v12);
  }

  return v12;
}

uint64_t *std::__hash_table<std::__hash_value_type<int,std::unordered_map<std::string,std::shared_ptr<MIL::Edge const>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::unordered_map<std::string,std::shared_ptr<MIL::Edge const>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::unordered_map<std::string,std::shared_ptr<MIL::Edge const>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::unordered_map<std::string,std::shared_ptr<MIL::Edge const>>>>>::find<int>(void *a1, int *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v2 <= v3)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (*(result + 4) == v3)
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t MIL::anonymous namespace::EdgeImpl::ParameterName(MIL::_anonymous_namespace_::EdgeImpl *this)
{
  result = *(this + 2);
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Parameter name is nullptr");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return result;
}

void std::__shared_ptr_pointer<MIL::Edge  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t std::__shared_ptr_pointer<MIL::Edge  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<MIL::Edge  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

const void ***std::__hash_table<std::__hash_value_type<std::reference_wrapper<std::string const>,std::vector<std::shared_ptr<MIL::Edge const>>>,std::__unordered_map_hasher<std::reference_wrapper<std::string const>,std::__hash_value_type<std::reference_wrapper<std::string const>,std::vector<std::shared_ptr<MIL::Edge const>>>,MIL::ConstReferenceWrapperHasher<std::string>,MIL::ConstReferenceWrapperEq<std::string>,true>,std::__unordered_map_equal<std::reference_wrapper<std::string const>,std::__hash_value_type<std::reference_wrapper<std::string const>,std::vector<std::shared_ptr<MIL::Edge const>>>,MIL::ConstReferenceWrapperEq<std::string>,MIL::ConstReferenceWrapperHasher<std::string>,true>,std::allocator<std::__hash_value_type<std::reference_wrapper<std::string const>,std::vector<std::shared_ptr<MIL::Edge const>>>>>::__emplace_unique_key_args<std::reference_wrapper<std::string const>,std::piecewise_construct_t const&,std::tuple<std::reference_wrapper<std::string const>&&>,std::tuple<>>(void *a1, uint64_t *a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](v14, *a2);
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
    operator new();
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

  if (!MIL::ConstReferenceWrapperEq<std::string>::operator()(a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::reference_wrapper<std::string const>,std::vector<std::shared_ptr<MIL::Edge const>>>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p + 3;
    std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](&v3);
  }

  if (__p)
  {
    operator delete(__p);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<MIL::ParameterSpec,std::shared_ptr<MIL::Edge const>>,std::__unordered_map_hasher<MIL::ParameterSpec,std::__hash_value_type<MIL::ParameterSpec,std::shared_ptr<MIL::Edge const>>,std::hash<MIL::ParameterSpec>,std::equal_to<MIL::ParameterSpec>,true>,std::__unordered_map_equal<MIL::ParameterSpec,std::__hash_value_type<MIL::ParameterSpec,std::shared_ptr<MIL::Edge const>>,std::equal_to<MIL::ParameterSpec>,std::hash<MIL::ParameterSpec>,true>,std::allocator<std::__hash_value_type<MIL::ParameterSpec,std::shared_ptr<MIL::Edge const>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<MIL::ParameterSpec,std::shared_ptr<MIL::Edge const>>,std::__unordered_map_hasher<MIL::ParameterSpec,std::__hash_value_type<MIL::ParameterSpec,std::shared_ptr<MIL::Edge const>>,std::hash<MIL::ParameterSpec>,std::equal_to<MIL::ParameterSpec>,true>,std::__unordered_map_equal<MIL::ParameterSpec,std::__hash_value_type<MIL::ParameterSpec,std::shared_ptr<MIL::Edge const>>,std::equal_to<MIL::ParameterSpec>,std::hash<MIL::ParameterSpec>,true>,std::allocator<std::__hash_value_type<MIL::ParameterSpec,std::shared_ptr<MIL::Edge const>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<MIL::ParameterSpec,std::shared_ptr<MIL::Edge const>>,std::__unordered_map_hasher<MIL::ParameterSpec,std::__hash_value_type<MIL::ParameterSpec,std::shared_ptr<MIL::Edge const>>,std::hash<MIL::ParameterSpec>,std::equal_to<MIL::ParameterSpec>,true>,std::__unordered_map_equal<MIL::ParameterSpec,std::__hash_value_type<MIL::ParameterSpec,std::shared_ptr<MIL::Edge const>>,std::equal_to<MIL::ParameterSpec>,std::hash<MIL::ParameterSpec>,true>,std::allocator<std::__hash_value_type<MIL::ParameterSpec,std::shared_ptr<MIL::Edge const>>>>::__deallocate_node(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[5];
      if (v4)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<int,std::unordered_map<std::string,std::shared_ptr<MIL::Edge const>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::unordered_map<std::string,std::shared_ptr<MIL::Edge const>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::unordered_map<std::string,std::shared_ptr<MIL::Edge const>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::unordered_map<std::string,std::shared_ptr<MIL::Edge const>>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<int,std::unordered_map<std::string,std::shared_ptr<MIL::Edge const>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::unordered_map<std::string,std::shared_ptr<MIL::Edge const>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::unordered_map<std::string,std::shared_ptr<MIL::Edge const>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::unordered_map<std::string,std::shared_ptr<MIL::Edge const>>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<int,std::unordered_map<std::string,std::shared_ptr<MIL::Edge const>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::unordered_map<std::string,std::shared_ptr<MIL::Edge const>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::unordered_map<std::string,std::shared_ptr<MIL::Edge const>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::unordered_map<std::string,std::shared_ptr<MIL::Edge const>>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table((v2 + 3));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<std::reference_wrapper<std::string const>,std::vector<std::shared_ptr<MIL::Edge const>>>,std::__unordered_map_hasher<std::reference_wrapper<std::string const>,std::__hash_value_type<std::reference_wrapper<std::string const>,std::vector<std::shared_ptr<MIL::Edge const>>>,MIL::ConstReferenceWrapperHasher<std::string>,MIL::ConstReferenceWrapperEq<std::string>,true>,std::__unordered_map_equal<std::reference_wrapper<std::string const>,std::__hash_value_type<std::reference_wrapper<std::string const>,std::vector<std::shared_ptr<MIL::Edge const>>>,MIL::ConstReferenceWrapperEq<std::string>,MIL::ConstReferenceWrapperHasher<std::string>,true>,std::allocator<std::__hash_value_type<std::reference_wrapper<std::string const>,std::vector<std::shared_ptr<MIL::Edge const>>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::reference_wrapper<std::string const>,std::vector<std::shared_ptr<MIL::Edge const>>>,std::__unordered_map_hasher<std::reference_wrapper<std::string const>,std::__hash_value_type<std::reference_wrapper<std::string const>,std::vector<std::shared_ptr<MIL::Edge const>>>,MIL::ConstReferenceWrapperHasher<std::string>,MIL::ConstReferenceWrapperEq<std::string>,true>,std::__unordered_map_equal<std::reference_wrapper<std::string const>,std::__hash_value_type<std::reference_wrapper<std::string const>,std::vector<std::shared_ptr<MIL::Edge const>>>,MIL::ConstReferenceWrapperEq<std::string>,MIL::ConstReferenceWrapperHasher<std::string>,true>,std::allocator<std::__hash_value_type<std::reference_wrapper<std::string const>,std::vector<std::shared_ptr<MIL::Edge const>>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::reference_wrapper<std::string const>,std::vector<std::shared_ptr<MIL::Edge const>>>,std::__unordered_map_hasher<std::reference_wrapper<std::string const>,std::__hash_value_type<std::reference_wrapper<std::string const>,std::vector<std::shared_ptr<MIL::Edge const>>>,MIL::ConstReferenceWrapperHasher<std::string>,MIL::ConstReferenceWrapperEq<std::string>,true>,std::__unordered_map_equal<std::reference_wrapper<std::string const>,std::__hash_value_type<std::reference_wrapper<std::string const>,std::vector<std::shared_ptr<MIL::Edge const>>>,MIL::ConstReferenceWrapperEq<std::string>,MIL::ConstReferenceWrapperHasher<std::string>,true>,std::allocator<std::__hash_value_type<std::reference_wrapper<std::string const>,std::vector<std::shared_ptr<MIL::Edge const>>>>>::__deallocate_node(uint64_t a1, char *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      v4 = (v2 + 24);
      std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](&v4);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

const void ***std::__hash_table<std::__hash_value_type<std::reference_wrapper<std::string const>,int>,std::__unordered_map_hasher<std::reference_wrapper<std::string const>,std::__hash_value_type<std::reference_wrapper<std::string const>,int>,MIL::ConstReferenceWrapperHasher<std::string>,MIL::ConstReferenceWrapperEq<std::string>,true>,std::__unordered_map_equal<std::reference_wrapper<std::string const>,std::__hash_value_type<std::reference_wrapper<std::string const>,int>,MIL::ConstReferenceWrapperEq<std::string>,MIL::ConstReferenceWrapperHasher<std::string>,true>,std::allocator<std::__hash_value_type<std::reference_wrapper<std::string const>,int>>>::__emplace_unique_key_args<std::reference_wrapper<std::string const>,std::pair<std::reference_wrapper<std::string const> const,int>>(void *a1, uint64_t *a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](&v14, *a2);
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
    operator new();
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

  if (!MIL::ConstReferenceWrapperEq<std::string>::operator()(a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

uint64_t *std::__hash_table<std::__hash_value_type<MIL::ParameterSpec,std::shared_ptr<MIL::Edge const>>,std::__unordered_map_hasher<MIL::ParameterSpec,std::__hash_value_type<MIL::ParameterSpec,std::shared_ptr<MIL::Edge const>>,std::hash<MIL::ParameterSpec>,std::equal_to<MIL::ParameterSpec>,true>,std::__unordered_map_equal<MIL::ParameterSpec,std::__hash_value_type<MIL::ParameterSpec,std::shared_ptr<MIL::Edge const>>,std::equal_to<MIL::ParameterSpec>,std::hash<MIL::ParameterSpec>,true>,std::allocator<std::__hash_value_type<MIL::ParameterSpec,std::shared_ptr<MIL::Edge const>>>>::__emplace_unique_key_args<MIL::ParameterSpec,std::pair<MIL::ParameterSpec const,std::shared_ptr<MIL::Edge const>>>(void *a1, int *a2)
{
  v4 = *a2;
  v5 = std::__string_hash<char>::operator()[abi:ne200100](v24, *(a2 + 1));
  v6 = v4 ^ (2 * v5);
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_32;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v4 ^ (2 * v5);
    if (v6 >= *&v7)
    {
      v10 = v6 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_32:
    operator new();
  }

  v13 = *a2;
  v14 = *(a2 + 1);
  while (1)
  {
    v15 = v12[1];
    if (v15 == v6)
    {
      break;
    }

    if (v9 > 1)
    {
      if (v15 >= *&v7)
      {
        v15 %= *&v7;
      }
    }

    else
    {
      v15 &= *&v7 - 1;
    }

    if (v15 != v10)
    {
      goto LABEL_32;
    }

LABEL_31:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_32;
    }
  }

  if (*(v12 + 4) != v13)
  {
    goto LABEL_31;
  }

  v16 = v12[3];
  v17 = *(v16 + 23);
  if (v17 >= 0)
  {
    v18 = *(v16 + 23);
  }

  else
  {
    v18 = *(v16 + 8);
  }

  v19 = *(v14 + 23);
  v20 = v19;
  if ((v19 & 0x80u) != 0)
  {
    v19 = *(v14 + 8);
  }

  if (v18 != v19)
  {
    goto LABEL_31;
  }

  v21 = v17 >= 0 ? v12[3] : *v16;
  v22 = v20 >= 0 ? v14 : *v14;
  if (memcmp(v21, v22, v18))
  {
    goto LABEL_31;
  }

  return v12;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<MIL::ParameterSpec,std::shared_ptr<MIL::Edge const>>,void *>>>::operator()[abi:ne200100](uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[5];
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t MIL::Matching::CoroutineRunner<MIL::Matching::anonymous namespace::AdditionalContext,MIL::Matching::anonymous namespace::CoroutineBodyContainer,MIL::Matching::anonymous namespace::MatchState>::Start<MIL::Matching::anonymous namespace::InstructionBase const*,MIL::Matching::anonymous namespace::MatchState>(uint64_t a1, void *a2, uint64_t a3)
{
  if (*(a1 + 680) != -1)
  {
      ;
    }
  }

  result = (*(**a2 + 16))(*a2, v7, a3);
  *(v7 + 44) = 0;
  *(v7 + 45) = DelegateChain;
  *(v7 + 23) = 0u;
  *(v7 + 25) = 0u;
  *(*(a1 + 568) + 8 * DelegateChain) = v7;
  *(a1 + 680) = DelegateChain;
  *(a1 + 696) = *(a1 + 688);
  if (*(a1 + 656) == 1)
  {
    *(a1 + 656) = 0;
  }

  *(a1 + 712) = 0;
  return result;
}

void *MIL::Matching::anonymous namespace::AsInstructionBase(void *this, const MIL::Matching::Instruction *a2)
{
  if (this)
  {
    if (!this)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::invalid_argument::invalid_argument[abi:ne200100](exception, "Unexpected Instruction subclass");
      __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
    }
  }

  return this;
}

void **std::unique_ptr<MIL::Matching::Machine::MachineImpl>::~unique_ptr[abi:ne200100](void **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    MIL::MatchingPrivate::MatchConverter::~MatchConverter((v2 + 90));
    MEMORY[0x21CEAFEA0](v3, 0x10F2C4021405641);
  }

  return a1;
}

uint64_t MIL::Matching::Machine::Reset(MIL::Matching::Machine *this, const MIL::Matching::Instruction *a2, MIL::Builder::BlockBuilder *a3, MIL::Builder::OperationBuilder *a4)
{
  v6 = *this;
  *v6 = a3;
  v6[1] = a4;
  MIL::Matching::PersistentListArena<MIL::Matching::MatchToken,6ul,6ul>::FreeAll((v6 + 6));
  v7 = *this;
  v9 = *this;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = v9 + 16;
  v15 = 0;
  v16 = 0;
}

void MIL::Matching::PersistentListArena<MIL::Matching::MatchToken,6ul,6ul>::FreeAll(uint64_t a1)
{
  bzero(*(a1 + 192), *(a1 + 200) - *(a1 + 192));
  bzero(*(a1 + 168), *(a1 + 176) - *(a1 + 168));
  *(**(a1 + 144) + 152) = 0;
  **(a1 + 168) |= 1u;
  v2 = *(a1 + 144);
  v3 = 8 * (*(a1 + 152) - v2) - 1;
  v4 = *v2;
  *(v4 + 160) = v3;
  *(v4 + 168) = -1;
  *(a1 + 216) = 1;
  *(a1 + 224) = v3;
}

uint64_t MIL::Matching::Machine::FindNextMatch(MIL::Matching::Machine::MachineImpl **a1, uint64_t **a2, std::chrono::duration<long long, std::ratio<1, 1000000000>>::rep a3)
{
  while (2)
  {
    MIL::Matching::Machine::MachineImpl::MaybeCollectGarbage(*a1);
    v6 = *a1;
    if (*(*a1 + 86) == *(*a1 + 87))
    {
    }

    v7 = *(v6 + 89);
    v8 = v7;
    do
    {
      *(v6 + 89) = v8 + 1;
      v9 = *(*(v6 + 87) - 4);
      *(v6 + 167) = v9;
      v10 = *(*(v6 + 71) + 8 * v9);
      *(v6 + 84) = v10;
      v11 = (**v10)();
      switch(v11)
      {
        case 3:
          if (*(v6 + 656) == 1)
          {
            *(v6 + 656) = 0;
          }

          {
            v13 = *(v6 + 87) - 4;
            *(v6 + 87) = v13;
            if (*(v6 + 86) == v13)
            {
              *(v6 + 170) = -1;
              return 1;
            }
          }

          break;
        case 1:
          if (*(v6 + 656) == 1)
          {
            *(v6 + 656) = 0;
          }

          break;
        case 0:
          v12 = *(v6 + 87) - 4;
          *(v6 + 87) = v12;
          if (*(v6 + 86) == v12)
          {
            MIL::MatchingPrivate::MatchConverter::ConvertMatch(*a1 + 90, *(*a1 + 76), *a1 + 48, a2);
            return 0;
          }

          break;
      }

      v8 = *(v6 + 89);
    }

    while ((v8 - v7) < 0x64);
    if (std::chrono::steady_clock::now().__d_.__rep_ < a3)
    {
      continue;
    }

    break;
  }

  return 2;
}

void MIL::Matching::Machine::MachineImpl::MaybeCollectGarbage(MIL::Matching::Machine::MachineImpl *this)
{
  v1 = *(this + 25) - *(this + 24);
  v2 = *(this + 34);
  v3 = v2 <= 0x63 && 4 * (v1 & 0x1FFFFFFFFFFFFFFFuLL) > v2;
  if (v3)
  {
    v5 = 8 * v1;
    v6 = v5 - v2;
    v7 = *(this + 91);
    v3 = v6 > v7;
    v8 = v6 - v7;
    v9 = v5 >> 2;
    if (v3 && v8 >= v9)
    {
      MIL::Matching::Machine::MachineImpl::Mark(this);
      MIL::Matching::PersistentListArena<MIL::Matching::MatchToken,6ul,6ul>::Sweep(this + 6, v11);
      *(this + 91) = 8 * (*(this + 25) - *(this + 24)) - *(this + 34);
    }
  }
}

void MIL::Matching::CreateSplitInstruction(void *a1)
{
  v1 = a1[1];
  if (v1 != *a1)
  {
    if (((v1 - *a1) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  operator new();
}

void sub_218037290(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void *MIL::Matching::SetSplitInstructionAlternative(MIL::Matching *this, unint64_t a2, void *a3, const MIL::Matching::Instruction *a4)
{
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "Expected a SplitInstruction");
    __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
  }

  v8 = v6;
  v10 = v8[1];
  if (a2 >= (v8[2] - v10) >> 3)
  {
    std::vector<MIL::IRDimension const*>::__throw_out_of_range[abi:ne200100]();
  }

  *(v10 + 8 * a2) = result;
  return result;
}

void MIL::Matching::CreatePushTokenInstruction(int a1, MIL::Matching::_anonymous_namespace_ *this)
{
  v2 = *MEMORY[0x277D85DE8];
  operator new();
}

void sub_218037464(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  MEMORY[0x21CEAFEA0](v3, v2);
  _Unwind_Resume(a1);
}

void MIL::Matching::CreateSetEdgePredicateInstruction(uint64_t a1, void *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  std::__function::__value_func<BOOL ()(MIL::Builder::DataDependency const&)>::__value_func[abi:ne200100](v4, a1);
  operator new();
}

void sub_218037598(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  va_copy(va2, va1);
  v9 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  std::__function::__value_func<BOOL ()(MIL::Builder::DataDependency const&)>::~__value_func[abi:ne200100](va1);
  MEMORY[0x21CEAFEA0](v2, 0x10E1C40E2CB26B8);
  std::__function::__value_func<BOOL ()(MIL::Builder::DataDependency const&)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void MIL::Matching::CreateParallelForwardInstruction(MIL::Matching *this, const MIL::Matching::Instruction *a2, const MIL::Matching::Instruction *a3, const MIL::Matching::Instruction *a4)
{
  operator new();
}

void MIL::Matching::Machine::MachineImpl::Mark(MIL::Matching::Machine::MachineImpl *this)
{
  if (*(this + 656) == 1)
  {
  }

  v2 = *(this + 170);
  if (v2 == -1)
  {
    v4 = 0;
  }

  else
  {
    v3 = *(*(this + 71) + 8 * v2);
    do
    {
      v4 = v3;
      v3 = *(v3 + 184);
    }

    while (v3);
  }

  v8 = v4;
  *(this + 65) = *(this + 64);
  v5 = *(this + 64);
  v6 = *(this + 65);
  while (v5 != v6)
  {
    v7 = *v5++;
    (*(*v7 + 8))(v7, this + 48);
  }
}

void MIL::Matching::PersistentListArena<MIL::Matching::MatchToken,6ul,6ul>::Sweep(void *a1, int8x8_t a2)
{
  v5 = a1 + 24;
  v3 = a1[24];
  v4 = v5[1];
  v6 = v4 - v3;
  v7 = a1[21];
  if (v4 - v3 != a1[22] - v7)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "BUG: size of 'used' and 'allocated' bitsets don't match");
    __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
  }

  *v3 |= 1u;
  if (v4 != v3)
  {
    v8 = 0;
    v9 = v6 >> 2;
    v10 = a1[28];
    if ((v6 >> 2) <= 1)
    {
      v9 = 1;
    }

    do
    {
      v11 = *(v7 + 4 * v8);
      v12 = *&v3[4 * v8];
      *(v7 + 4 * v8) = v12 & v11;
      v13 = v11 & ~v12;
      if (v13)
      {
        v14 = 32 * v8;
        v15 = a1[18];
        v16 = a1[27];
        v17 = v13;
        do
        {
          v18 = __clz(__rbit32(v17));
          v19 = v17 >> v18;
          v20 = v14 + v18;
          v21 = __clz(__rbit32(~v19));
          v14 = v20 + v21;
          v22 = (*(v15 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 160 * (v20 & 0x3F));
          *v22 = v20 + v21 - 1;
          v22[1] = v16;
          a1[27] = v20;
          if (v19 == -1)
          {
            break;
          }

          v17 = v19 >> v21;
          v16 = v20;
        }

        while (v17);
      }

      a2.i32[0] = v13;
      a2 = vcnt_s8(a2);
      a2.i16[0] = vaddlv_u8(a2);
      v10 += a2.u32[0];
      ++v8;
    }

    while (v8 != v9);
    a1[28] = v10;
  }

  bzero(v3, v6);
}

uint64_t MIL::Matching::anonymous namespace::MatchState::MarkObjectsAsUsed(uint64_t *a1, uint64_t a2)
{
  result = MIL::Matching::PersistentListArena<MIL::Matching::MatchToken,6ul,6ul>::MarkAsUsed(a2, *a1);
  v5 = a1[4];
  for (i = v5 & 0xFFFFFFFFFFFFFFLL; (v5 & 0xFFFFFFFFFFFFFFLL) != 0; i = v5 & 0xFFFFFFFFFFFFFFLL)
  {
    v7 = *(a2 + 424);
    v8 = *(v7 + 4 * (i >> 5));
    if ((v8 & (1 << v5)) != 0)
    {
      break;
    }

    *(v7 + 4 * (i >> 5)) = v8 | (1 << v5);
    v5 = *(*(*(a2 + 376) + ((i >> 3) & 0x1FFFFFFFFFFFFFF8)) + 160 * (v5 & 0x3F) + 144);
  }

  return result;
}

uint64_t MIL::Matching::PersistentListArena<MIL::Matching::MatchToken,6ul,6ul>::MarkAsUsed(uint64_t result, uint64_t a2)
{
  v2 = a2 & 0xFFFFFFFFFFFFFFLL;
  if ((a2 & 0xFFFFFFFFFFFFFFLL) != 0)
  {
    LOBYTE(v3) = a2;
    v4 = result;
    do
    {
      result = MIL::Matching::PersistentListArena<MIL::Matching::MatchToken,6ul,6ul>::AssertChunkIsAllocated(v4, v2);
      v5 = *(v4 + 192);
      v6 = *(v5 + 4 * (v2 >> 5));
      if ((v6 & (1 << v3)) != 0)
      {
        break;
      }

      *(v5 + 4 * (v2 >> 5)) = v6 | (1 << v3);
      v3 = *(*(*(v4 + 144) + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 160 * (v3 & 0x3F) + 144);
      v2 = v3 & 0xFFFFFFFFFFFFFFLL;
    }

    while ((v3 & 0xFFFFFFFFFFFFFFLL) != 0);
  }

  return result;
}

uint64_t MIL::Matching::PersistentListArena<MIL::Matching::MatchToken,6ul,6ul>::AssertChunkIsAllocated(uint64_t result, unint64_t a2)
{
  if (((*(*(result + 168) + ((a2 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) >> a2) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "BUG: Attempted to access a free chunk as an allocated one");
    __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
  }

  return result;
}

uint64_t MIL::Matching::PersistentListArena<MIL::Matching::anonymous namespace::Position,6ul,6ul>::AssertChunkIsAllocated(uint64_t result, unint64_t a2)
{
  if (((*(*(result + 168) + ((a2 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) >> a2) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "BUG: Attempted to access a free chunk as an allocated one");
    __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
  }

  return result;
}

void std::vector<MIL::Matching::anonymous namespace::TreeNode<MIL::Matching::anonymous namespace::CoroutineData<MIL::Matching::anonymous namespace::CoroutineBodyContainer>> *,std::allocator<MIL::Matching::anonymous namespace::TreeNode<MIL::Matching::anonymous namespace::CoroutineData<MIL::Matching::anonymous namespace::CoroutineBodyContainer>> *>>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = (v7 >> 3) + 1;
    if (v8 >> 61)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v9 = v3 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (!(v10 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v11 = (8 * (v7 >> 3));
    *v11 = *a2;
    v5 = v11 + 1;
    memcpy(0, v6, v7);
    *a1 = 0;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

void MIL::Matching::anonymous namespace::Tree<MIL::Matching::anonymous namespace::CoroutineData<MIL::Matching::anonymous namespace::CoroutineBodyContainer>>::Traverse(uint64_t *a1)
{
  v4 = *a1;
  v3 = a1[1];
  if (v3 != *a1)
  {
    v8[5] = v1;
    v8[6] = v2;
    v6 = 0;
    do
    {
      v7 = *(*(v4 + 8 * v6) + 192);
      v8[0] = v7;
      if (v7)
      {
        do
        {
          v7 = *(v7 + 208);
          v8[0] = v7;
        }

        while (v7);
        v4 = *a1;
        v3 = a1[1];
      }

      ++v6;
    }

    while (v6 < (v3 - v4) >> 3);
  }
}

void MIL::Matching::Machine::MachineImpl::MachineImpl(MIL::Matching::Machine::MachineImpl *this, MIL::Builder::BlockBuilder *a2, MIL::Builder::OperationBuilder *a3)
{
  *this = a2;
  *(this + 1) = a3;
  *(this + 2) = &unk_2829E50B8;
  *(this + 5) = this + 16;
  MIL::Matching::PersistentListArena<MIL::Matching::MatchToken,6ul,6ul>::PersistentListArena(this + 48);
  *(this + 61) = 0;
  *(this + 456) = 0u;
  *(this + 472) = 0u;
  *(this + 424) = 0u;
  *(this + 440) = 0u;
  *(this + 31) = xmmword_218586A00;
  {
    *(this + 75) = 0;
    *(this + 32) = 0u;
    *(this + 33) = 0u;
    *(this + 34) = 0u;
    *(this + 35) = 0u;
    *(this + 36) = 0u;
    *(this + 148) = 0;
    *(this + 608) = 0;
    *(this + 656) = 0;
    *(this + 83) = -1;
    *(this + 170) = -1;
    *(this + 43) = 0u;
    *(this + 44) = 0u;
    MIL::MatchingPrivate::MatchConverter::MatchConverter((this + 720));
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::logic_error::logic_error(exception, "Expected a zero chunk ID");
  __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
}

void sub_218037E2C(_Unwind_Exception *a1)
{
  __cxa_free_exception(v4);
  v6 = v1[59];
  if (v6)
  {
    v1[60] = v6;
    operator delete(v6);
  }

  v7 = v1[56];
  if (v7)
  {
    v1[57] = v7;
    operator delete(v7);
  }

  MIL::Matching::PersistentListArena<MIL::Matching::MatchToken,6ul,6ul>::~PersistentListArena((v1 + 6));
  std::__function::__value_func<BOOL ()(MIL::Builder::DataDependency const&)>::~__value_func[abi:ne200100](v2);
  _Unwind_Resume(a1);
}

void *MIL::Matching::CoroutineRunner<MIL::Matching::anonymous namespace::AdditionalContext,MIL::Matching::anonymous namespace::CoroutineBodyContainer,MIL::Matching::anonymous namespace::MatchState>::~CoroutineRunner(void *a1)
{
  v2 = a1[86];
  if (v2)
  {
    a1[87] = v2;
    operator delete(v2);
  }

  v3 = a1[71];
  if (v3)
  {
    a1[72] = v3;
    operator delete(v3);
  }

  v4 = a1[67];
  if (v4)
  {
    v5 = a1[68];
    v6 = a1[67];
    if (v5 != v4)
    {
      do
      {
        v8 = *--v5;
        v7 = v8;
        *v5 = 0;
        if (v8)
        {
          MEMORY[0x21CEAFEA0](v7, 0x1022C40FA248018);
        }
      }

      while (v5 != v4);
      v6 = a1[67];
    }

    a1[68] = v4;
    operator delete(v6);
  }

  v9 = a1[64];
  if (v9)
  {
    a1[65] = v9;
    operator delete(v9);
  }

  v10 = a1[59];
  if (v10)
  {
    a1[60] = v10;
    operator delete(v10);
  }

  v11 = a1[56];
  if (v11)
  {
    a1[57] = v11;
    operator delete(v11);
  }

  MIL::Matching::PersistentListArena<MIL::Matching::MatchToken,6ul,6ul>::~PersistentListArena((a1 + 6));
  std::__function::__value_func<BOOL ()(MIL::Builder::DataDependency const&)>::~__value_func[abi:ne200100]((a1 + 2));
  return a1;
}

uint64_t std::__function::__func<MIL::Matching::anonymous namespace::AdditionalContext::AdditionalContext(MIL::Builder::BlockBuilder *,MIL::Builder::OperationBuilder *)::{lambda(MIL::Builder::DataDependency const&)#1},std::allocator<MIL::Matching::anonymous namespace::AdditionalContext::AdditionalContext(MIL::Builder::BlockBuilder *,MIL::Builder::OperationBuilder *)::{lambda(MIL::Builder::DataDependency const&)#1}>,BOOL ()(MIL::Builder::DataDependency const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t MIL::Matching::PersistentListArena<MIL::Matching::MatchToken,6ul,6ul>::PersistentListArena(uint64_t a1)
{
  *(a1 + 144) = 0u;
  *(a1 + 208) = 0;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 216) = xmmword_218586A00;
  if (MIL::Matching::PersistentListArena<MIL::Matching::MatchToken,6ul,6ul>::AllocateChunk(a1, 0))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Expected a zero chunk ID");
    __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
  }

  return a1;
}

void sub_2180380F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  __cxa_free_exception(v11);
  v13 = v10[24];
  if (v13)
  {
    v10[25] = v13;
    operator delete(v13);
  }

  v14 = v10[21];
  if (v14)
  {
    v10[22] = v14;
    operator delete(v14);
  }

  std::vector<std::unique_ptr<std::array<MIL::Matching::PersistentListArena<MIL::Matching::MatchToken,6ul,6ul>::Chunk,64ul>>>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

unint64_t MIL::Matching::PersistentListArena<MIL::Matching::MatchToken,6ul,6ul>::AllocateChunk(void *a1, uint64_t a2)
{
  v2 = a1[27];
  if (v2 == -1)
  {
    MIL::Matching::PersistentListArena<MIL::Matching::MatchToken,6ul,6ul>::AllocateBlock();
  }

  v3 = a1[18];
  v4 = *(v3 + ((a1[27] >> 3) & 0x1FFFFFFFFFFFFFF8)) + 160 * (a1[27] & 0x3FLL);
  if (v2 == *v4)
  {
    a1[27] = *(v4 + 8);
  }

  else
  {
    a1[27] = v2 + 1;
    *(*(v3 + (((v2 + 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) + 160 * ((v2 + 1) & 0x3F)) = *v4;
  }

  *(v4 + 144) = a2;
  *(v4 + 152) = 0;
  *(a1[21] + ((v2 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v2;
  --a1[28];
  MIL::Matching::PersistentListArena<MIL::Matching::MatchToken,6ul,6ul>::AssertChunkIsAllocated(a1, v2);
  return v2;
}

void std::vector<unsigned int>::resize(std::vector<unsigned int> *this, std::vector<unsigned int>::size_type __sz)
{
  v2 = this->__end_ - this->__begin_;
  if (__sz <= v2)
  {
    if (__sz < v2)
    {
      this->__end_ = &this->__begin_[__sz];
    }
  }

  else
  {
    std::vector<unsigned int>::__append(this, __sz - v2);
  }
}

uint64_t std::__split_buffer<std::unique_ptr<std::array<MIL::Matching::PersistentListArena<MIL::Matching::MatchToken,6ul,6ul>::Chunk,64ul>>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::unique_ptr<std::array<MIL::Matching::PersistentListArena<MIL::Matching::MatchToken,6ul,6ul>::Chunk,64ul>>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__split_buffer<std::unique_ptr<std::array<MIL::Matching::PersistentListArena<MIL::Matching::MatchToken,6ul,6ul>::Chunk,64ul>>>::__destruct_at_end[abi:ne200100](uint64_t result, void *a2)
{
  v2 = *(result + 16);
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      v5 = *--v2;
      result = v5;
      *(v4 + 16) = v2;
      *v2 = 0;
      if (v5)
      {
        result = MEMORY[0x21CEAFEA0](result, 0x1000C40C72100A4);
        v2 = *(v4 + 16);
      }
    }

    while (v2 != a2);
  }

  return result;
}

void std::vector<unsigned int>::__append(std::vector<unsigned int> *this, std::vector<unsigned int>::size_type __n)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (__n <= value - end)
  {
    if (__n)
    {
      bzero(this->__end_, 4 * __n);
      end += __n;
    }

    this->__end_ = end;
  }

  else
  {
    begin = this->__begin_;
    v7 = end - this->__begin_;
    v8 = __n + (v7 >> 2);
    if (v8 >> 62)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v9 = value - begin;
    if (v9 >> 1 > v8)
    {
      v8 = v9 >> 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v10 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(this, v10);
    }

    v11 = (4 * (v7 >> 2));
    bzero(v11, 4 * __n);
    memcpy(0, begin, v7);
    v12 = this->__begin_;
    this->__begin_ = 0;
    this->__end_ = &v11[4 * __n];
    this->__end_cap_.__value_ = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

void std::vector<std::unique_ptr<std::array<MIL::Matching::PersistentListArena<MIL::Matching::MatchToken,6ul,6ul>::Chunk,64ul>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::unique_ptr<std::array<MIL::Matching::PersistentListArena<MIL::Matching::MatchToken,6ul,6ul>::Chunk,64ul>>>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t std::vector<std::unique_ptr<std::array<MIL::Matching::PersistentListArena<MIL::Matching::MatchToken,6ul,6ul>::Chunk,64ul>>>::__base_destruct_at_end[abi:ne200100](uint64_t result, void *a2)
{
  v3 = result;
  v4 = *(result + 8);
  while (v4 != a2)
  {
    v5 = *--v4;
    result = v5;
    *v4 = 0;
    if (v5)
    {
      result = MEMORY[0x21CEAFEA0](result, 0x1000C40C72100A4);
    }
  }

  *(v3 + 8) = a2;
  return result;
}

unint64_t MIL::Matching::PersistentListArena<MIL::Matching::anonymous namespace::Position,6ul,6ul>::AllocateChunk(void *a1, uint64_t a2)
{
  v2 = a1[27];
  if (v2 == -1)
  {
    operator new();
  }

  v3 = a1[18];
  v4 = *(v3 + ((a1[27] >> 3) & 0x1FFFFFFFFFFFFFF8)) + 160 * (a1[27] & 0x3FLL);
  if (v2 == *v4)
  {
    a1[27] = *(v4 + 8);
  }

  else
  {
    a1[27] = v2 + 1;
    *(*(v3 + (((v2 + 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) + 160 * ((v2 + 1) & 0x3F)) = *v4;
  }

  *(v4 + 144) = a2;
  *(v4 + 152) = 0;
  *(a1[21] + ((v2 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v2;
  --a1[28];
  return v2;
}

void *std::vector<std::unique_ptr<std::array<MIL::Matching::PersistentListArena<MIL::Matching::anonymous namespace::Position,6ul,6ul>::Chunk,64ul>>>::~vector[abi:ne200100](void *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v6 = *--v3;
        v5 = v6;
        *v3 = 0;
        if (v6)
        {
          MEMORY[0x21CEAFEA0](v5, 0x1000C40C72100A4);
        }
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t MIL::Matching::PersistentListArena<MIL::Matching::MatchToken,6ul,6ul>::~PersistentListArena(uint64_t a1)
{
  v2 = *(a1 + 192);
  if (v2)
  {
    *(a1 + 200) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 168);
  if (v3)
  {
    *(a1 + 176) = v3;
    operator delete(v3);
  }

  v5 = (a1 + 144);
  std::vector<std::unique_ptr<std::array<MIL::Matching::PersistentListArena<MIL::Matching::MatchToken,6ul,6ul>::Chunk,64ul>>>::__destroy_vector::operator()[abi:ne200100](&v5);
  return a1;
}

BOOL MIL::Matching::anonymous namespace::CoroutineManager<MIL::Matching::anonymous namespace::CoroutineBodyContainer>::KillOrReturnFromDelegate(uint64_t *a1, unsigned int a2)
{
  v3 = a1[7];
  v4 = *(v3 + 8 * a2);
  v5 = *(v4 + 180);
  if (v5 == -1)
  {
    v6 = a2;
    v7 = *(v4 + 184);
    v9 = a1;
    *(v3 + 8 * v6) = v7;
  }

  else
  {
    v9 = a1;
  }

  return v5 != -1;
}

uint64_t *MIL::Matching::anonymous namespace::Tree<MIL::Matching::anonymous namespace::CoroutineData<MIL::Matching::anonymous namespace::CoroutineBodyContainer>>::RemoveSubtree<MIL::Matching::anonymous namespace::CoroutineManager<MIL::Matching::anonymous namespace::CoroutineBodyContainer>::CleanupCallback>(uint64_t *a1, void *a2, uint64_t *a3)
{
  v9 = a2;
  v5 = a2[23];
  if (v5 && *(v5 + 192) == a2)
  {
    *(v5 + 192) = a2[26];
  }

  v6 = a2[25];
  v7 = a2[26];
  if (v6)
  {
    *(v6 + 208) = v7;
  }

  if (v7)
  {
    *(v7 + 200) = v6;
  }

  a1[1] = *a1;
}

uint64_t *MIL::Matching::anonymous namespace::Tree<MIL::Matching::anonymous namespace::CoroutineData<MIL::Matching::anonymous namespace::CoroutineBodyContainer>>::DeallocateTraversedNodes<MIL::Matching::anonymous namespace::CoroutineManager<MIL::Matching::anonymous namespace::CoroutineBodyContainer>::CleanupCallback>(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = result[1];
  while (v2 != v3)
  {
    v4 = *v2;
    v5 = *(*v2 + 180);
    if (v5 != -1)
    {
      v6 = *a2;
      *(*(*a2 + 56) + 8 * v5) = *(*a2 + 80);
      *(v6 + 80) = v5;
      --*(v6 + 88);
    }

    *v4 = result[6];
    result[6] = v4;
    v2 += 8;
  }

  return result;
}

uint64_t MIL::Matching::anonymous namespace::CoroutineManager<MIL::Matching::anonymous namespace::CoroutineBodyContainer>::AllocateDelegateChain(uint64_t a1)
{
  result = *(a1 + 80);
  v3 = *(a1 + 56);
  v4 = *(a1 + 64);
  if (result == (v4 - v3) >> 3)
  {
    v5 = *(a1 + 72);
    if (v4 >= v5)
    {
      v6 = v5 - v3;
      v7 = v6 >> 2;
      if (v6 >> 2 <= (result + 1))
      {
        v7 = result + 1;
      }

      if (v6 >= 0x7FFFFFFFFFFFFFF8)
      {
        v8 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v8 = v7;
      }

      if (!(v8 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    *v4 = (result + 1);
    *(a1 + 64) = v4 + 1;
    result = *(a1 + 80);
  }

  if (result == -1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Maximum number of coroutines has been reached");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  *(a1 + 80) = *(*(a1 + 56) + 8 * result);
  ++*(a1 + 88);
  return result;
}

void *MIL::Matching::anonymous namespace::MemoryPool<216ul,8ul,16ul>::Allocate(uint64_t a1)
{
  result = *(a1 + 24);
  if (!result)
  {
    operator new();
  }

  *(a1 + 24) = *result;
  return result;
}

void std::vector<MIL::Matching::anonymous namespace::CoroutineHandle>::push_back[abi:ne200100](uint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = (v7 >> 2) + 1;
    if (v8 >> 62)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v9 = v3 - v6;
    if (v9 >> 1 > v8)
    {
      v8 = v9 >> 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v10 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (!(v10 >> 62))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v11 = (4 * (v7 >> 2));
    *v11 = *a2;
    v5 = v11 + 1;
    memcpy(0, v6, v7);
    *a1 = 0;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

void MIL::Matching::anonymous namespace::OperationPredicateInstruction::~OperationPredicateInstruction(MIL::Matching::_anonymous_namespace_::OperationPredicateInstruction *this)
{
  *this = &unk_2829E5148;
  std::__function::__value_func<BOOL ()(MIL::Builder::OperationBuilder &)>::~__value_func[abi:ne200100](this + 8);

  UnknownLocationImpl::~UnknownLocationImpl(this);
}

{
  *this = &unk_2829E5148;
  std::__function::__value_func<BOOL ()(MIL::Builder::OperationBuilder &)>::~__value_func[abi:ne200100](this + 8);
  UnknownLocationImpl::~UnknownLocationImpl(this);

  JUMPOUT(0x21CEAFEA0);
}

__n128 MIL::Matching::anonymous namespace::InstructionImpl<MIL::Matching::anonymous namespace::OperationPredicateInstruction,MIL::Matching::anonymous namespace::OperationPredicateCoroutine>::ConstructCoroutine(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a2 = &unk_2829E51A0;
  *(a2 + 8) = a1;
  result = *a3;
  v4 = *(a3 + 32);
  *(a2 + 32) = *(a3 + 16);
  *(a2 + 48) = v4;
  *(a2 + 16) = result;
  return result;
}

uint64_t std::__function::__value_func<BOOL ()(MIL::Builder::OperationBuilder &)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

uint64_t std::__function::__value_func<BOOL ()(MIL::Builder::OperationBuilder &)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t MIL::Matching::anonymous namespace::OperationPredicateCoroutine::Run(uint64_t a1, void *a2)
{
  if (!*(a2[84] + 176))
  {
    if (*(a1 + 24) != 2)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(exception, "OperationPredicate invoked when there is no cursor");
      __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
    }

    v4 = *(a1 + 16);
    if (v4)
    {
      while (1)
      {
        MIL::Matching::PersistentListArena<MIL::Matching::MatchToken,6ul,6ul>::AssertChunkIsAllocated((a2 + 6), v4 & 0xFFFFFFFFFFFFFFLL);
        v5 = *(a2[24] + ((v4 >> 3) & 0x1FFFFFFFFFFFF8));
        if (v5)
        {
          v6 = v5 + 160 * (v4 & 0x3F) + 24 * HIBYTE(v4) - 24;
          if (!*(v6 + 8) && *v6 == *(a1 + 32))
          {
            break;
          }
        }

        v4 = MIL::Matching::PersistentListArena<MIL::Matching::MatchToken,6ul,6ul>::Pop((a2 + 6), v4);
        if (!v4)
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
LABEL_8:
      v7 = *(*(a1 + 8) + 32);
      if (!v7)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      if ((*(*v7 + 48))(v7, *(a1 + 32)))
      {
        v8 = *(a1 + 16);
        *&v13 = *(a1 + 32);
        DWORD2(v13) = 0;
        *&v14 = *(a1 + 56);
        *(a1 + 16) = MIL::Matching::PersistentListArena<MIL::Matching::MatchToken,6ul,6ul>::Append(a2 + 6, v8, &v13);
        v9 = *(a1 + 8);
        v10 = *(a1 + 32);
        v13 = *(a1 + 16);
        v14 = v10;
        v15 = *(a1 + 48);
        return 2;
      }
    }
  }

  return 3;
}

uint64_t MIL::Matching::CoroutineMacroHelper::ReplaceCurrent<MIL::Matching::CoroutineContext<MIL::Matching::anonymous namespace::AdditionalContext,MIL::Matching::anonymous namespace::CoroutineBodyContainer,MIL::Matching::anonymous namespace::MatchState>,MIL::Matching::anonymous namespace::InstructionBase const* const&,MIL::Matching::anonymous namespace::MatchState>(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(*(a1 + 568) + 8 * *(a1 + 668));
  v6 = (a1 + 512);
  v10 = a1 + 512;
  *(a1 + 520) = *(a1 + 512);
  for (i = *(v5 + 192); ; i = *(i + 208))
  {
    v11 = i;
    if (!i)
    {
      break;
    }
  }

  *(v5 + 192) = 0;
  v8 = *(v5 + 180);
  result = (*(**a2 + 16))(*a2, v5, a3);
  *(v5 + 176) = 0;
  *(v5 + 180) = v8;
  return result;
}

unint64_t MIL::Matching::PersistentListArena<MIL::Matching::MatchToken,6ul,6ul>::Pop(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v3 = a2 & 0xFFFFFFFFFFFFFFLL;
  if (a2 >> 57)
  {
    return a2 - 0x100000000000000;
  }

  MIL::Matching::PersistentListArena<MIL::Matching::MatchToken,6ul,6ul>::AssertChunkIsAllocated(a1, a2 & 0xFFFFFFFFFFFFFFLL);
  return *(*(*(a1 + 144) + ((v3 >> 3) & 0x1FFFFFFFFFFFF8)) + 160 * (v2 & 0x3F) + 144);
}

unint64_t MIL::Matching::PersistentListArena<MIL::Matching::MatchToken,6ul,6ul>::Append(void *a1, unint64_t a2, __int128 *a3)
{
  Chunk = a2 & 0xFFFFFFFFFFFFFFLL;
  MIL::Matching::PersistentListArena<MIL::Matching::MatchToken,6ul,6ul>::AssertChunkIsAllocated(a1, a2 & 0xFFFFFFFFFFFFFFLL);
  if (a2 >> 57 > 2 || (v7 = *(a1[18] + ((a2 >> 3) & 0x1FFFFFFFFFFFF8)), HIBYTE(a2) != *(v7 + 160 * (a2 & 0x3F) + 152)))
  {
    Chunk = MIL::Matching::PersistentListArena<MIL::Matching::MatchToken,6ul,6ul>::AllocateChunk(a1, a2);
    v7 = *(a1[18] + ((Chunk >> 3) & 0x1FFFFFFFFFFFFFF8));
  }

  v8 = v7 + 160 * (Chunk & 0x3F);
  v9 = *(v8 + 152);
  *(v8 + 152) = v9 + 1;
  v10 = v8 + 24 * v9;
  v11 = *a3;
  *(v10 + 16) = *(a3 + 2);
  *v10 = v11;
  return Chunk & 0xFFFFFFFFFFFFFFLL | (*(v8 + 152) << 56);
}

void MIL::Matching::anonymous namespace::AdvanceCursorForwardInstruction::~AdvanceCursorForwardInstruction(MIL::Matching::_anonymous_namespace_::AdvanceCursorForwardInstruction *this)
{
  UnknownLocationImpl::~UnknownLocationImpl(this);

  JUMPOUT(0x21CEAFEA0);
}

__n128 MIL::Matching::anonymous namespace::InstructionImpl<MIL::Matching::anonymous namespace::AdvanceCursorForwardInstruction,MIL::Matching::anonymous namespace::AdvanceCursorForwardCoroutine>::ConstructCoroutine(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a2 = &unk_2829E5240;
  result = *a3;
  v4 = *(a3 + 16);
  *(a2 + 40) = *(a3 + 32);
  *(a2 + 24) = v4;
  *(a2 + 8) = result;
  *(a2 + 56) = a1;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  return result;
}

uint64_t MIL::Matching::anonymous namespace::AdvanceCursorForwardCoroutine::Run(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a2 + 672) + 176);
  if (v4 == 472)
  {
    goto LABEL_35;
  }

  if (v4 == 459)
  {
    goto LABEL_51;
  }

  if (v4)
  {
    return 3;
  }

  v5 = *(a1 + 16);
  if (v5 != 2)
  {
    if (v5 != 1)
    {
      if (v5)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(exception, "Unexpected cursor state");
        __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
      }

      v6 = (a1 + 40);
      {
        *(a1 + 24) = *(a2 + 8);
        v7 = 2;
        *(a1 + 16) = 2;
        *v6 = 0;
        *(a1 + 48) = 0;
        v8 = *(a1 + 56);
        v9 = *(a1 + 24);
        v39[0] = *(a1 + 8);
        v39[1] = v9;
        v39[2] = *(a1 + 40);
        return v7;
      }

      return 3;
    }

    v10 = *(a1 + 8);
    if (v10)
    {
      while (1)
      {
        MIL::Matching::PersistentListArena<MIL::Matching::MatchToken,6ul,6ul>::AssertChunkIsAllocated(a2 + 48, v10 & 0xFFFFFFFFFFFFFFLL);
        v11 = *(*(a2 + 192) + ((v10 >> 3) & 0x1FFFFFFFFFFFF8));
        if (v11)
        {
          v12 = v11 + 160 * (v10 & 0x3F) + 24 * HIBYTE(v10) - 24;
          if (!*(v12 + 8))
          {
            if (*v12)
            {
              break;
            }
          }
        }

        v10 = MIL::Matching::PersistentListArena<MIL::Matching::MatchToken,6ul,6ul>::Pop(a2 + 48, v10);
        if (!v10)
        {
          goto LABEL_14;
        }
      }

      v13 = 0;
    }

    else
    {
LABEL_14:
      v13 = 1;
    }

    *(a1 + 88) = v13;
    DataDependenciesByVariableName = MIL::Builder::BlockBuilder::GetDataDependenciesByVariableName(*a2, *(a1 + 24));
    v15 = 0;
    v16 = DataDependenciesByVariableName[2];
    *(a1 + 72) = v16;
    *(a1 + 80) = 0;
    while (1)
    {
      if (v16 == v15)
      {
        return 3;
      }

      MIL::Builder::DataDependency::GetConsumer(v16 + 16, v39);
      v19 = 0;
      if (*&v39[0])
      {
        v20 = *(a1 + 88);
        if (v20 == 1)
        {
          MIL::Builder::DataDependency::GetConsumer(*(a1 + 72) + 16, &v37);
          v19 = 0;
          if (v37 != *(a2 + 8))
          {
            goto LABEL_30;
          }
        }

        v21 = *(*(a1 + 32) + 24);
        if (!v21)
        {
          std::__throw_bad_function_call[abi:ne200100]();
        }

        if (!(*(*v21 + 48))(v21, *(a1 + 72) + 16))
        {
          v19 = 0;
          if ((v20 & 1) == 0)
          {
            goto LABEL_32;
          }

LABEL_30:
          if (v38)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v38);
          }

          goto LABEL_32;
        }

        v22 = *(a1 + 40);
        MIL::Builder::DataDependency::GetConsumer(*(a1 + 72) + 16, &v35);
        if (v36)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v36);
        }

        if (v20)
        {
          goto LABEL_30;
        }
      }

LABEL_32:
      if (*(&v39[0] + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v39[0] + 1));
      }

      if (v19)
      {
        v23 = *(a2 + 672);
        v24 = 472;
        goto LABEL_54;
      }

LABEL_35:
      v15 = *(a1 + 80);
      v16 = **(a1 + 72);
      *(a1 + 72) = v16;
    }
  }

  v17 = 0;
  *(a1 + 64) = 0;
LABEL_40:
  if (v17 >= MIL::Builder::OperationBuilder::GetNumOutputs(*(a1 + 24)))
  {
    return 3;
  }

  v26 = *a2;
  OutputName = MIL::Builder::OperationBuilder::GetOutputName(*(a1 + 24), *(a1 + 64));
  v28 = MIL::Builder::BlockBuilder::GetDataDependenciesByVariableName(v26, OutputName);
  v29 = 0;
  v30 = v28[2];
  *(a1 + 72) = v30;
  *(a1 + 80) = 0;
  while (1)
  {
    if (v30 == v29)
    {
      v17 = *(a1 + 64) + 1;
      *(a1 + 64) = v17;
      goto LABEL_40;
    }

    MIL::Builder::DataDependency::GetConsumer(v30 + 16, v39);
    v31 = 0;
    if (*&v39[0])
    {
      v32 = *(*(a1 + 32) + 24);
      if (!v32)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      v31 = 0;
      if ((*(*v32 + 48))(v32, *(a1 + 72) + 16))
      {
        v33 = *(a1 + 40);
        MIL::Builder::DataDependency::GetConsumer(*(a1 + 72) + 16, &v37);
        if (v38)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v38);
        }
      }
    }

    if (*(&v39[0] + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v39[0] + 1));
    }

    if (v31)
    {
      break;
    }

LABEL_51:
    v29 = *(a1 + 80);
    v30 = **(a1 + 72);
    *(a1 + 72) = v30;
  }

  v23 = *(a2 + 672);
  v24 = 459;
LABEL_54:
  *(v23 + 176) = v24;
  v34 = *(a1 + 56);
  return 2;
}

void sub_218039934(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100]();
  }

  _Unwind_Resume(a1);
}

uint64_t MIL::Matching::anonymous namespace::AdvanceCursorForwardCoroutine::CheckParallelEdges(unint64_t a1, MIL::BuilderPrivate::OperationBuilderPrivate *a2, uint64_t *a3)
{
  if (!a1)
  {
    return 1;
  }

  v5 = a1;
  while (1)
  {
    v7 = *(a3[53] + ((v5 >> 3) & 0x1FFFFFFFFFFFF8)) + 160 * (v5 & 0x3F) + 24 * HIBYTE(v5);
    v10 = *(v7 - 24);
    v9 = v7 - 24;
    v8 = v10;
    v11 = *a3;
    if (v10 != 1)
    {
      break;
    }

    Parameters = MIL::BuilderPrivate::OperationBuilderPrivate::GetParameters(a2, v6);
    v22 = Parameters + 1;
    v23 = *Parameters;
    if (*Parameters == (Parameters + 1))
    {
      return 0;
    }

    while (1)
    {
      v24 = MIL::Builder::BlockBuilder::GetDataDependenciesForConsumerParam(v11, a2, v23 + 4)[2];
      if (v24)
      {
        break;
      }

LABEL_39:
      v33 = v23[1];
      if (v33)
      {
        do
        {
          v34 = v33;
          v33 = *v33;
        }

        while (v33);
      }

      else
      {
        do
        {
          v34 = v23[2];
          v20 = *v34 == v23;
          v23 = v34;
        }

        while (!v20);
      }

      v23 = v34;
      if (v34 == v22)
      {
        return 0;
      }
    }

    while (1)
    {
      VariableName = MIL::Builder::DataDependency::GetVariableName((v24 + 2));
      v26 = *(v9 + 8);
      v27 = *(VariableName + 23);
      if (v27 >= 0)
      {
        v28 = *(VariableName + 23);
      }

      else
      {
        v28 = VariableName[1];
      }

      v29 = *(v26 + 23);
      v30 = v29;
      if ((v29 & 0x80u) != 0)
      {
        v29 = *(v26 + 8);
      }

      if (v28 == v29)
      {
        if (v27 < 0)
        {
          VariableName = *VariableName;
        }

        v31 = v30 >= 0 ? *(v9 + 8) : *v26;
        if (!memcmp(VariableName, v31, v28))
        {
          v32 = *(*(v9 + 16) + 24);
          if (!v32)
          {
            std::__throw_bad_function_call[abi:ne200100]();
          }

          if ((*(*v32 + 48))(v32, v24 + 2))
          {
            break;
          }
        }
      }

      v24 = *v24;
      if (!v24)
      {
        goto LABEL_39;
      }
    }

LABEL_46:
    if (!v5)
    {
      return 1;
    }
  }

  if (v8 != 2)
  {
    goto LABEL_46;
  }

  v12 = MIL::BuilderPrivate::OperationBuilderPrivate::GetParameters(a2, v6);
  v13 = v12 + 1;
  v14 = *v12;
  if (*v12 != (v12 + 1))
  {
    do
    {
      for (i = MIL::Builder::BlockBuilder::GetDataDependenciesForConsumerParam(v11, a2, v14 + 4)[2]; i; i = *i)
      {
        MIL::Builder::DataDependency::GetProducer(i + 2, &v36);
        if (v36 == *(v9 + 8))
        {
          v16 = *(*(v9 + 16) + 24);
          if (!v16)
          {
            std::__throw_bad_function_call[abi:ne200100]();
          }

          v17 = (*(*v16 + 48))(v16, i + 2);
          if (v37)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v37);
          }

          if (v17)
          {
            goto LABEL_46;
          }
        }

        else if (v37)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v37);
        }
      }

      v18 = v14[1];
      if (v18)
      {
        do
        {
          v19 = v18;
          v18 = *v18;
        }

        while (v18);
      }

      else
      {
        do
        {
          v19 = v14[2];
          v20 = *v19 == v14;
          v14 = v19;
        }

        while (!v20);
      }

      v14 = v19;
    }

    while (v19 != v13);
  }

  return 0;
}

void sub_218039C14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::Matching::CoroutineMacroHelper::SpawnDelegate<MIL::Matching::CoroutineContext<MIL::Matching::anonymous namespace::AdditionalContext,MIL::Matching::anonymous namespace::CoroutineBodyContainer,MIL::Matching::anonymous namespace::MatchState>,MIL::Matching::anonymous namespace::InstructionBase const* const&,MIL::Matching::anonymous namespace::MatchState>(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 668);
  v6 = *(a1 + 568);
  v7 = *(v6 + 8 * v5);
  result = (*(**a2 + 16))(*a2, v8, a3);
  v8[22] = 0xFFFFFFFF00000000;
  v8[23] = v7;
  v8[24] = 0;
  v8[25] = 0;
  v8[26] = 0;
  if (v7)
  {
    v10 = *(v7 + 192);
    v8[26] = v10;
    if (v10)
    {
      *(v10 + 200) = v8;
    }

    *(v7 + 192) = v8;
  }

  *(v6 + 8 * v5) = v8;
  return result;
}

void MIL::Matching::anonymous namespace::AdvanceCursorForwardCoroutine::CreateNewState(MIL::Builder::DataDependency *this@<X1>, _OWORD *a2@<X0>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = *a2;
  MIL::Builder::DataDependency::GetConsumer(this, v8);
  v7 = v8[1];
  *(a4 + 16) = v8[0];
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  *(a4 + 8) = 2;
  *(a4 + 24) = a3 + 16;
  *(a4 + 32) = 0;
  *(a4 + 40) = this;
}

unint64_t MIL::Matching::anonymous namespace::AdditionalContext::Pop(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v3 = a2 & 0xFFFFFFFFFFFFFFLL;
  if (a2 >> 57)
  {
    return a2 - 0x100000000000000;
  }

  return *(*(*(a1 + 424) + ((v3 >> 3) & 0x1FFFFFFFFFFFF8)) + 160 * (v2 & 0x3F) + 144);
}

void MIL::Matching::anonymous namespace::SplitInstruction::~SplitInstruction(MIL::Matching::_anonymous_namespace_::SplitInstruction *this)
{
  *this = &unk_2829E5278;
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }

  UnknownLocationImpl::~UnknownLocationImpl(this);
}

{
  *this = &unk_2829E5278;
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }

  UnknownLocationImpl::~UnknownLocationImpl(this);

  JUMPOUT(0x21CEAFEA0);
}

__n128 MIL::Matching::anonymous namespace::InstructionImpl<MIL::Matching::anonymous namespace::SplitInstruction,MIL::Matching::anonymous namespace::SplitCoroutine>::ConstructCoroutine(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a2 = &unk_2829E52A0;
  *(a2 + 8) = a1;
  result = *a3;
  v4 = *(a3 + 32);
  *(a2 + 32) = *(a3 + 16);
  *(a2 + 48) = v4;
  *(a2 + 16) = result;
  return result;
}

uint64_t MIL::Matching::anonymous namespace::SplitCoroutine::Run(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 672);
  v3 = *(v2 + 176);
  if (v3 == 602)
  {
    v4 = *(a1 + 64) + 1;
    *(a1 + 64) = v4;
  }

  else
  {
    if (v3)
    {
      return 3;
    }

    v4 = 0;
    *(a1 + 64) = 0;
  }

  v5 = *(*(a1 + 8) + 8);
  if (v4 < (*(*(a1 + 8) + 16) - v5) >> 3)
  {
    *(v2 + 176) = 602;
    return 2;
  }

  return 3;
}

void *MIL::Matching::anonymous namespace::ChangeStateInstruction::ChangeStateInstruction(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = &unk_2829E5368;
  v5 = (a2 + 24);
  v6 = *(a2 + 24);
  if (v6)
  {
    if (v6 == a2)
    {
      a1[4] = a1 + 1;
      (*(**v5 + 24))();
      goto LABEL_7;
    }

    a1[4] = v6;
  }

  else
  {
    v5 = a1 + 4;
  }

  *v5 = 0;
LABEL_7:
  a1[5] = a3;
  return a1;
}

uint64_t std::function<void ()(MIL::Matching::CoroutineContext<MIL::Matching::anonymous namespace::AdditionalContext,MIL::Matching::anonymous namespace::CoroutineBodyContainer,MIL::Matching::anonymous namespace::MatchState> &,MIL::Matching::anonymous namespace::MatchState&)>::~function(uint64_t a1)
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

__n128 std::__function::__func<MIL::Matching::CreatePushTokenInstruction(std::variant<MIL::Builder::OperationBuilder *,MIL::Matching::BeginList,MIL::Matching::EndList> const&,MIL::Matching::Instruction const*)::$_0,std::allocator<MIL::Matching::CreatePushTokenInstruction(std::variant<MIL::Builder::OperationBuilder *,MIL::Matching::BeginList,MIL::Matching::EndList> const&,MIL::Matching::Instruction const*)::$_0>,void ()(MIL::Matching::CoroutineContext<MIL::Matching::anonymous namespace::AdditionalContext,MIL::Matching::anonymous namespace::CoroutineBodyContainer,MIL::Matching::anonymous namespace::MatchState> &,MIL::Matching::anonymous namespace::MatchState&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2829E52D8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

unint64_t std::__function::__func<MIL::Matching::CreatePushTokenInstruction(std::variant<MIL::Builder::OperationBuilder *,MIL::Matching::BeginList,MIL::Matching::EndList> const&,MIL::Matching::Instruction const*)::$_0,std::allocator<MIL::Matching::CreatePushTokenInstruction(std::variant<MIL::Builder::OperationBuilder *,MIL::Matching::BeginList,MIL::Matching::EndList> const&,MIL::Matching::Instruction const*)::$_0>,void ()(MIL::Matching::CoroutineContext<MIL::Matching::anonymous namespace::AdditionalContext,MIL::Matching::anonymous namespace::CoroutineBodyContainer,MIL::Matching::anonymous namespace::MatchState> &,MIL::Matching::anonymous namespace::MatchState&)>::operator()(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v4 = *a3;
  v6 = *(a1 + 8);
  v7 = a3[5];
  result = MIL::Matching::PersistentListArena<MIL::Matching::MatchToken,6ul,6ul>::Append((a2 + 48), v4, &v6);
  *a3 = result;
  return result;
}

uint64_t std::__function::__func<MIL::Matching::CreatePushTokenInstruction(std::variant<MIL::Builder::OperationBuilder *,MIL::Matching::BeginList,MIL::Matching::EndList> const&,MIL::Matching::Instruction const*)::$_0,std::allocator<MIL::Matching::CreatePushTokenInstruction(std::variant<MIL::Builder::OperationBuilder *,MIL::Matching::BeginList,MIL::Matching::EndList> const&,MIL::Matching::Instruction const*)::$_0>,void ()(MIL::Matching::CoroutineContext<MIL::Matching::anonymous namespace::AdditionalContext,MIL::Matching::anonymous namespace::CoroutineBodyContainer,MIL::Matching::anonymous namespace::MatchState> &,MIL::Matching::anonymous namespace::MatchState&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void MIL::Matching::anonymous namespace::ChangeStateInstruction::~ChangeStateInstruction(MIL::Matching::_anonymous_namespace_::ChangeStateInstruction *this)
{
  *this = &unk_2829E5368;

  UnknownLocationImpl::~UnknownLocationImpl(this);
}

{
  *this = &unk_2829E5368;
  UnknownLocationImpl::~UnknownLocationImpl(this);

  JUMPOUT(0x21CEAFEA0);
}

__n128 MIL::Matching::anonymous namespace::InstructionImpl<MIL::Matching::anonymous namespace::ChangeStateInstruction,MIL::Matching::anonymous namespace::ChangeStateCoroutine>::ConstructCoroutine(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v4 = a3[1];
  result = a3[2];
  v5 = *a3;
  *a2 = &unk_2829E53C0;
  *(a2 + 8) = a1;
  *(a2 + 16) = v5;
  *(a2 + 32) = v4;
  *(a2 + 48) = result;
  return result;
}

uint64_t MIL::Matching::anonymous namespace::ChangeStateCoroutine::Run(uint64_t a1, uint64_t a2)
{
  if (*(*(a2 + 672) + 176))
  {
    return 3;
  }

  v4 = *(*(a1 + 8) + 32);
  if (!v4)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v4 + 48))(v4);
  v6 = *(a1 + 8);
  v7 = *(a1 + 32);
  v8[0] = *(a1 + 16);
  v8[1] = v7;
  v8[2] = *(a1 + 48);
  return 2;
}

void *std::__function::__func<MIL::Matching::CreateSetEdgePredicateInstruction(std::function<BOOL ()(MIL::Builder::DataDependency const&)>,MIL::Matching::Instruction const*)::$_0,std::allocator<MIL::Matching::CreateSetEdgePredicateInstruction(std::function<BOOL ()(MIL::Builder::DataDependency const&)>,MIL::Matching::Instruction const*)::$_0>,void ()(MIL::Matching::CoroutineContext<MIL::Matching::anonymous namespace::AdditionalContext,MIL::Matching::anonymous namespace::CoroutineBodyContainer,MIL::Matching::anonymous namespace::MatchState> &,MIL::Matching::anonymous namespace::MatchState&)>::~__func(void *a1)
{
  *a1 = &unk_2829E53F8;
  std::__function::__value_func<BOOL ()(MIL::Builder::DataDependency const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<MIL::Matching::CreateSetEdgePredicateInstruction(std::function<BOOL ()(MIL::Builder::DataDependency const&)>,MIL::Matching::Instruction const*)::$_0,std::allocator<MIL::Matching::CreateSetEdgePredicateInstruction(std::function<BOOL ()(MIL::Builder::DataDependency const&)>,MIL::Matching::Instruction const*)::$_0>,void ()(MIL::Matching::CoroutineContext<MIL::Matching::anonymous namespace::AdditionalContext,MIL::Matching::anonymous namespace::CoroutineBodyContainer,MIL::Matching::anonymous namespace::MatchState> &,MIL::Matching::anonymous namespace::MatchState&)>::~__func(void *a1)
{
  *a1 = &unk_2829E53F8;
  std::__function::__value_func<BOOL ()(MIL::Builder::DataDependency const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x21CEAFEA0);
}

void std::__function::__func<MIL::Matching::CreateSetEdgePredicateInstruction(std::function<BOOL ()(MIL::Builder::DataDependency const&)>,MIL::Matching::Instruction const*)::$_0,std::allocator<MIL::Matching::CreateSetEdgePredicateInstruction(std::function<BOOL ()(MIL::Builder::DataDependency const&)>,MIL::Matching::Instruction const*)::$_0>,void ()(MIL::Matching::CoroutineContext<MIL::Matching::anonymous namespace::AdditionalContext,MIL::Matching::anonymous namespace::CoroutineBodyContainer,MIL::Matching::anonymous namespace::MatchState> &,MIL::Matching::anonymous namespace::MatchState&)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<BOOL ()(MIL::Builder::DataDependency const&)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

uint64_t std::__function::__func<MIL::Matching::CreateSetEdgePredicateInstruction(std::function<BOOL ()(MIL::Builder::DataDependency const&)>,MIL::Matching::Instruction const*)::$_0,std::allocator<MIL::Matching::CreateSetEdgePredicateInstruction(std::function<BOOL ()(MIL::Builder::DataDependency const&)>,MIL::Matching::Instruction const*)::$_0>,void ()(MIL::Matching::CoroutineContext<MIL::Matching::anonymous namespace::AdditionalContext,MIL::Matching::anonymous namespace::CoroutineBodyContainer,MIL::Matching::anonymous namespace::MatchState> &,MIL::Matching::anonymous namespace::MatchState&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void MIL::Matching::anonymous namespace::ReturnStateInstruction::~ReturnStateInstruction(MIL::Matching::_anonymous_namespace_::ReturnStateInstruction *this)
{
  UnknownLocationImpl::~UnknownLocationImpl(this);

  JUMPOUT(0x21CEAFEA0);
}

__n128 MIL::Matching::anonymous namespace::InstructionImpl<MIL::Matching::anonymous namespace::ReturnStateInstruction,MIL::Matching::anonymous namespace::ReturnStateCoroutine>::ConstructCoroutine(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a2 = &unk_2829E54D0;
  result = *a3;
  v4 = *(a3 + 16);
  *(a2 + 40) = *(a3 + 32);
  *(a2 + 24) = v4;
  *(a2 + 8) = result;
  return result;
}

uint64_t MIL::Matching::anonymous namespace::ReturnStateCoroutine::Run(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 672);
  if (*(v2 + 176))
  {
    return 3;
  }

  v4 = *(a2 + 656);
  v5 = *(a1 + 40);
  v6 = *(a1 + 24);
  *(a2 + 608) = *(a1 + 8);
  *(a2 + 624) = v6;
  *(a2 + 640) = v5;
  if ((v4 & 1) == 0)
  {
    *(a2 + 656) = 1;
  }

  result = 0;
  *(v2 + 176) = 711;
  return result;
}

void MIL::Matching::anonymous namespace::PrepareForParallelForwardInstruction::~PrepareForParallelForwardInstruction(MIL::Matching::_anonymous_namespace_::PrepareForParallelForwardInstruction *this)
{
  UnknownLocationImpl::~UnknownLocationImpl(this);

  JUMPOUT(0x21CEAFEA0);
}

__n128 MIL::Matching::anonymous namespace::InstructionImpl<MIL::Matching::anonymous namespace::PrepareForParallelForwardInstruction,MIL::Matching::anonymous namespace::PrepareForParallelForwardCoroutine>::ConstructCoroutine(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a2 = &unk_2829E5560;
  *(a2 + 8) = a1;
  result = *a3;
  v4 = *(a3 + 32);
  *(a2 + 32) = *(a3 + 16);
  *(a2 + 48) = v4;
  *(a2 + 16) = result;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  return result;
}

uint64_t MIL::Matching::anonymous namespace::PrepareForParallelForwardCoroutine::Run(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a2 + 672) + 176);
  if (v4 == 766)
  {
    goto LABEL_11;
  }

  if (v4)
  {
    return 3;
  }

  v6 = (a1 + 16);
  v5 = *(a1 + 16);
  *&v20 = 0;
  DWORD2(v20) = 1;
  *&v21 = 0;
  *(a1 + 16) = MIL::Matching::PersistentListArena<MIL::Matching::MatchToken,6ul,6ul>::Append((a2 + 48), v5, &v20);
  if (!*(a1 + 24))
  {
    *(a1 + 24) = 1;
    Parameters = MIL::BuilderPrivate::OperationBuilderPrivate::GetParameters(*(a2 + 8), v7);
    v13 = *Parameters;
    v11 = Parameters + 1;
    v12 = v13;
    *(a1 + 64) = v13;
    *(a1 + 72) = v11;
    while (v12 != v11)
    {
      v15 = 0;
      *(a1 + 80) = 0;
      while (1)
      {
        v16 = v12[7];
        if (v15 >= (v12[8] - v16) >> 4)
        {
          break;
        }

        if ((*(**(v16 + 16 * v15) + 16))(*(v16 + 16 * v15)))
        {
          *(a1 + 32) = MIL::IRArgument::GetName(*(*(*(a1 + 64) + 56) + 16 * *(a1 + 80)));
          *(*(a2 + 672) + 176) = 766;
          return 2;
        }

LABEL_11:
        v15 = *(a1 + 80) + 1;
        *(a1 + 80) = v15;
        v12 = *(a1 + 64);
      }

      v17 = v12[1];
      if (v17)
      {
        do
        {
          v18 = v17;
          v17 = *v17;
        }

        while (v17);
      }

      else
      {
        do
        {
          v18 = v12[2];
          v19 = *v18 == v12;
          v12 = v18;
        }

        while (!v19);
      }

      *(a1 + 64) = v18;
      v11 = *(a1 + 72);
      v12 = v18;
    }

    return 3;
  }

  v8 = *(a1 + 8);
  v9 = *(a1 + 32);
  v20 = *v6;
  v21 = v9;
  v22 = *(a1 + 48);
  return 2;
}

void MIL::Matching::anonymous namespace::ParallelForwardInstruction::~ParallelForwardInstruction(MIL::Matching::_anonymous_namespace_::ParallelForwardInstruction *this)
{
  UnknownLocationImpl::~UnknownLocationImpl(this);

  JUMPOUT(0x21CEAFEA0);
}

double MIL::Matching::anonymous namespace::InstructionImpl<MIL::Matching::anonymous namespace::ParallelForwardInstruction,MIL::Matching::anonymous namespace::ParallelForwardCoroutine>::ConstructCoroutine(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v4 = a3[1];
  v3 = a3[2];
  v5 = *a3;
  *a2 = &unk_2829E55F0;
  *(a2 + 8) = a1;
  *(a2 + 16) = v5;
  *(a2 + 32) = v4;
  *(a2 + 48) = v3;
  *(a2 + 64) = 0;
  *(a2 + 96) = 0;
  *(a2 + 112) = 0;
  *(a2 + 160) = 0;
  result = NAN;
  *(a2 + 168) = -1;
  return result;
}

uint64_t MIL::Matching::anonymous namespace::ParallelForwardCoroutine::Run(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 672);
  v5 = *(v4 + 176);
  result = 3;
  if (v5 > 845)
  {
    if (v5 != 846)
    {
      if (v5 != 852)
      {
        return result;
      }

      goto LABEL_30;
    }

    v20 = *(a2 + 608);
    v21 = *(a2 + 624);
    v22 = *(a2 + 640);
    v23 = *(a2 + 656);
    *(a1 + 160) = v23;
    *(a1 + 128) = v21;
    *(a1 + 144) = v22;
    *(a1 + 112) = v20;
    if (v23)
    {
      *(*(a2 + 672) + 176) = 852;
      v24 = *(a1 + 8);
      v25 = *(a1 + 96);
      v37 = *(a1 + 80);
      v38 = v25;
      v36 = *(a1 + 64);
      *&v36 = *(a1 + 112);
      {
      }

      *&v38 = v26;
      return 2;
    }

LABEL_23:
    *(*(a2 + 672) + 176) = 837;
    v31 = *(a1 + 168);
LABEL_31:
    *(a2 + 664) = v31;
    return 1;
  }

  if (!v5)
  {
    if (!*(a1 + 24))
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(exception, "ParallelForward invoked when there is no cursor");
      __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
    }

    v17 = *(a1 + 8);
    v18 = *(a2 + 668);
    if (v18 == -1)
    {
      v19 = 0;
    }

    else
    {
      v19 = *(*(a2 + 568) + 8 * v18);
    }

    (*(**(v17 + 8) + 16))(*(v17 + 8), v29, a1 + 16);
    *(v29 + 44) = 0;
    *(v29 + 45) = DelegateChain;
    v29[23] = v19;
    v29[24] = 0;
    v29[25] = 0;
    v29[26] = 0;
    if (v19)
    {
      v30 = *(v19 + 192);
      v29[26] = v30;
      if (v30)
      {
        *(v30 + 200) = v29;
      }

      *(v19 + 192) = v29;
    }

    *(*(a2 + 568) + 8 * DelegateChain) = v29;
    *(a1 + 168) = DelegateChain;
    goto LABEL_23;
  }

  if (v5 == 837)
  {
    v7 = *(a2 + 608);
    v8 = *(a2 + 624);
    v9 = *(a2 + 640);
    v10 = *(a2 + 656);
    *(a1 + 160) = v10;
    *(a1 + 128) = v8;
    *(a1 + 144) = v9;
    *(a1 + 112) = v7;
    if (v10)
    {
      v11 = *(a2 + 608);
      v12 = *(a2 + 640);
      *(a1 + 80) = *(a2 + 624);
      *(a1 + 96) = v12;
      *(a1 + 64) = v11;
      v13 = *(a1 + 8);
      v14 = *(a1 + 32);
      v36 = *(a1 + 16);
      v37 = v14;
      v38 = *(a1 + 48);
      *&v36 = *(a1 + 64);
      v15 = *(a2 + 668);
      if (v15 == -1)
      {
        v16 = 0;
      }

      else
      {
        v16 = *(*(a2 + 568) + 8 * v15);
      }

      (*(**(v13 + 16) + 16))(*(v13 + 16), v33, &v36);
      *(v33 + 44) = 0;
      *(v33 + 45) = v32;
      v33[23] = v16;
      v33[24] = 0;
      v33[25] = 0;
      v33[26] = 0;
      if (v16)
      {
        v34 = *(v16 + 192);
        v33[26] = v34;
        if (v34)
        {
          *(v34 + 200) = v33;
        }

        *(v16 + 192) = v33;
      }

      *(*(a2 + 568) + 8 * v32) = v33;
      *(a1 + 172) = v32;
      v4 = *(a2 + 672);
LABEL_30:
      *(v4 + 176) = 846;
      v31 = *(a1 + 172);
      goto LABEL_31;
    }
  }

  return result;
}

uint64_t MIL::Matching::anonymous namespace::ParallelForwardCoroutine::MarkObjectsAsUsed(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 160) == 1)
  {
  }

  return result;
}

unint64_t MIL::Matching::anonymous namespace::AdditionalContext::Append(uint64_t a1, unint64_t a2, __int128 *a3)
{
  Chunk = a2 & 0xFFFFFFFFFFFFFFLL;
  if (a2 >> 57 > 2 || (v7 = *(*(a1 + 424) + ((a2 >> 3) & 0x1FFFFFFFFFFFF8)), HIBYTE(a2) != *(v7 + 160 * (a2 & 0x3F) + 152)))
  {
    v7 = *(*(a1 + 424) + ((Chunk >> 3) & 0x1FFFFFFFFFFFFFF8));
  }

  v8 = v7 + 160 * (Chunk & 0x3F);
  v9 = *(v8 + 152);
  *(v8 + 152) = v9 + 1;
  v10 = v8 + 24 * v9;
  v11 = *a3;
  *(v10 + 16) = *(a3 + 2);
  *v10 = v11;
  return Chunk & 0xFFFFFFFFFFFFFFLL | (*(v8 + 152) << 56);
}

void *MIL::Matching::InvalidMatchAccess::InvalidMatchAccess(void *result, uint64_t a2)
{
  v3 = *(a2 + 8);
  v2 = *(a2 + 16);
  *result = &unk_2829E5628;
  result[1] = v3;
  result[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

{
  v3 = *(a2 + 8);
  v2 = *(a2 + 16);
  *result = &unk_2829E5628;
  result[1] = v3;
  result[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t MIL::Matching::InvalidMatchAccess::operator=(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v3 = *(a2 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 16);
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return a1;
}

void MIL::Matching::InvalidMatchAccess::~InvalidMatchAccess(std::exception *this)
{
  this->__vftable = &unk_2829E5628;
  v2 = this[2].__vftable;
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::exception::~exception(this);
}

{
  MIL::Matching::InvalidMatchAccess::~InvalidMatchAccess(this);

  JUMPOUT(0x21CEAFEA0);
}

char *MIL::Matching::InvalidMatchAccess::what(MIL::Matching::InvalidMatchAccess *this)
{
  result = *(this + 1);
  if (result[23] < 0)
  {
    return *result;
  }

  return result;
}

__n128 MIL::Matching::OutputView::OutputView(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

{
  result = *a2;
  *a1 = *a2;
  return result;
}

{
  result = *a2;
  *a1 = *a2;
  return result;
}

{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 MIL::Matching::OutputView::operator=(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

{
  result = *a2;
  *a1 = *a2;
  return result;
}

void *MIL::Matching::MatchView::MatchView(void *result, void *a2)
{
  *result = *a2;
  return result;
}

{
  *result = *a2;
  return result;
}

{
  *result = *a2;
  return result;
}

{
  *result = *a2;
  return result;
}

void *MIL::Matching::MatchView::operator=(void *result, void *a2)
{
  *result = *a2;
  return result;
}

{
  *result = *a2;
  return result;
}

uint64_t MIL::Matching::MatchView::GetKind(MIL::Matching::MatchView *this)
{
  v1 = *(*this + 8);
  if (!v1)
  {
    return **this != 0;
  }

  if (v1 != 1)
  {
    if (v1 == 2)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(exception, "Invalid MatchView");
    }

    else
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(exception, "Trying to visit a std::variant that is in an invalid state");
    }

    __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
  }

  return 2;
}

uint64_t MIL::Matching::MatchView::GetOperator(MIL::MatchingPrivate::MatchItem **this)
{
  Operation = MIL::MatchingPrivate::MatchItem::GetOperation(*this);

  return MIL::Builder::OperationBuilder::GetOperator(Operation);
}

uint64_t MIL::MatchingPrivate::MatchItem::GetOperation(MIL::MatchingPrivate::MatchItem *this)
{
  if (!this || *(this + 2) || (result = *this) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "MatchView is not holding an Operation");
    __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
  }

  return result;
}

uint64_t MIL::Matching::MatchView::GetOpsetName(MIL::MatchingPrivate::MatchItem **this)
{
  Operation = MIL::MatchingPrivate::MatchItem::GetOperation(*this);

  return MIL::Builder::OperationBuilder::GetOpsetName(Operation);
}

uint64_t MIL::Matching::MatchView::GetNumOutputs(MIL::MatchingPrivate::MatchItem **this)
{
  Operation = MIL::MatchingPrivate::MatchItem::GetOperation(*this);

  return MIL::Builder::OperationBuilder::GetNumOutputs(Operation);
}

uint64_t MIL::Matching::MatchView::GetOutput@<X0>(MIL::MatchingPrivate::MatchItem **this@<X0>, MIL::Builder::OperationBuilder **a2@<X8>)
{
  Operation = MIL::MatchingPrivate::MatchItem::GetOperation(*this);
  result = MIL::Builder::OperationBuilder::GetNumOutputs(Operation);
  if (result != 1)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    std::string::basic_string[abi:ne200100]<0>(v6, "The operation does not have exactly one output");
    MIL::Matching::InvalidMatchAccess::InvalidMatchAccess(exception);
  }

  *a2 = Operation;
  a2[1] = 0;
  return result;
}

void sub_21803B304(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
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

unint64_t MIL::Matching::MatchView::GetOutput@<X0>(MIL::MatchingPrivate::MatchItem **this@<X0>, unint64_t a2@<X1>, MIL::Builder::OperationBuilder **a3@<X8>)
{
  Operation = MIL::MatchingPrivate::MatchItem::GetOperation(*this);
  result = MIL::Builder::OperationBuilder::GetNumOutputs(Operation);
  if (result <= a2)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    std::string::basic_string[abi:ne200100]<0>(v8, "Output index is out of range");
    MIL::Matching::InvalidMatchAccess::InvalidMatchAccess(exception);
  }

  *a3 = Operation;
  a3[1] = a2;
  return result;
}

void sub_21803B3E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
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

uint64_t MIL::Matching::MatchView::GetArgumentCount(MIL::MatchingPrivate::MatchItem **a1, const void **a2)
{
  Operation = MIL::MatchingPrivate::MatchItem::GetOperation(*a1);

  return MIL::Builder::OperationBuilder::GetNumArguments(Operation, a2);
}

uint64_t MIL::Matching::MatchView::GetArgument@<X0>(MIL::MatchingPrivate::MatchItem **a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  Operation = MIL::MatchingPrivate::MatchItem::GetOperation(*a1);
  NumArguments = MIL::Builder::OperationBuilder::GetNumArguments(Operation, a2);
  if (NumArguments != 1)
  {
    v25 = NumArguments;
    std::ostringstream::basic_ostringstream[abi:ne200100](v26);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, "The op ", 7);
    v10 = MIL::MatchingPrivate::MatchItem::GetOperation(*a1);
    Operator = MIL::Builder::OperationBuilder::GetOperator(v10);
    v12 = (*(*Operator + 16))(Operator);
    v13 = *(v12 + 23);
    if (v13 >= 0)
    {
      v14 = v12;
    }

    else
    {
      v14 = *v12;
    }

    if (v13 >= 0)
    {
      v15 = *(v12 + 23);
    }

    else
    {
      v15 = *(v12 + 8);
    }

    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v14, v15);
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, " does not have exactly one argument bound to '", 46);
    v18 = *(a2 + 23);
    if (v18 >= 0)
    {
      v19 = a2;
    }

    else
    {
      v19 = *a2;
    }

    if (v18 >= 0)
    {
      v20 = *(a2 + 23);
    }

    else
    {
      v20 = *(a2 + 8);
    }

    v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, v19, v20);
    v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "' parameter. It has ", 20);
    v23 = MEMORY[0x21CEAFB40](v22, v25);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, " parameter(s).", 14);
    exception = __cxa_allocate_exception(0x18uLL);
    std::stringbuf::str();
    MIL::Matching::InvalidMatchAccess::InvalidMatchAccess(exception);
  }

  result = MIL::Builder::OperationBuilder::GetIRArgument(Operation, a2, 0);
  *a3 = Operation;
  a3[1] = result;
  return result;
}

void sub_21803B5E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, void *__p, uint64_t a5, int a6, __int16 a7, char a8, char a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  if (a9 < 0)
  {
    operator delete(__p);
    if ((v24 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a10, MEMORY[0x277D82828]);
      MEMORY[0x21CEAFDA0](va);
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

uint64_t MIL::Matching::MatchView::GetVariadicArgument@<X0>(MIL::MatchingPrivate::MatchItem **a1@<X0>, const void **a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  Operation = MIL::MatchingPrivate::MatchItem::GetOperation(*a1);
  if (MIL::Builder::OperationBuilder::GetNumArguments(Operation, a2) <= a3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::out_of_range::out_of_range[abi:ne200100](exception, "Argument index is out of range.");
    __cxa_throw(exception, off_278235F78, MEMORY[0x277D825F8]);
  }

  result = MIL::Builder::OperationBuilder::GetIRArgument(Operation, a2, a3);
  *a4 = Operation;
  a4[1] = result;
  return result;
}

const void **MIL::Matching::MatchView::TryGetAttribute@<X0>(MIL::MatchingPrivate::MatchItem **a1@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  Operation = MIL::MatchingPrivate::MatchItem::GetOperation(*a1);

  return MIL::Builder::OperationBuilder::TryGetAttribute(Operation, a2, a3);
}

const void **MIL::Matching::MatchView::GetAttribute@<X0>(MIL::MatchingPrivate::MatchItem **a1@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  Operation = MIL::MatchingPrivate::MatchItem::GetOperation(*a1);
  result = MIL::Builder::OperationBuilder::TryGetAttribute(Operation, a2, a3);
  if (!*a3)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    std::operator+<char>();
    v8 = std::string::append(&v9, "'.");
    v10 = *v8;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    MIL::Matching::InvalidMatchAccess::InvalidMatchAccess(exception);
  }

  return result;
}

void sub_21803B7FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v23 & 1) == 0)
    {
LABEL_8:
      v25 = *(v21 + 8);
      if (v25)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v25);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v23)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v22);
  goto LABEL_8;
}

uint64_t MIL::Matching::MatchView::GetAttributes(MIL::MatchingPrivate::MatchItem **this)
{
  Operation = MIL::MatchingPrivate::MatchItem::GetOperation(*this);

  return MIL::Builder::OperationBuilder::GetAttributes(Operation);
}

void MIL::Matching::MatchView::SetAttribute(MIL::MatchingPrivate::MatchItem **a1, uint64_t a2, uint64_t *a3)
{
  Operation = MIL::MatchingPrivate::MatchItem::GetOperation(*a1);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v9, *a2, *(a2 + 8));
  }

  else
  {
    v9 = *a2;
  }

  v6 = a3[1];
  v7 = *a3;
  v8 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  MIL::Builder::OperationBuilder::SetAttribute(Operation, &v9, &v7, &v10);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

void sub_21803B950(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, ...)
{
  va_start(va, a3);
  if (a3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a3);
  }

  MIL::Builder::BlockBuilder::ReplaceUsesOfInputVariable(va);
  _Unwind_Resume(a1);
}

uint64_t MIL::Matching::MatchView::GetLastEdge@<X0>(MIL::MatchingPrivate::MatchItem **this@<X0>, void *a2@<X8>)
{
  result = MIL::MatchingPrivate::MatchItem::GetOperation(*this);
  *a2 = *(*this + 2);
  return result;
}

uint64_t MIL::MatchingPrivate::MatchItem::GetListLength(MIL::MatchingPrivate::MatchItem *this)
{
  if (!this || *(this + 2) != 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "MatchView is not holding a List");
    __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
  }

  return *this;
}

unint64_t MIL::Matching::MatchView::operator[]@<X0>(MIL::MatchingPrivate::MatchItem **a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  result = MIL::MatchingPrivate::MatchItem::GetListLength(*a1);
  if (result <= a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::out_of_range::out_of_range[abi:ne200100](exception, "List index out of range");
    __cxa_throw(exception, off_278235F78, MEMORY[0x277D825F8]);
  }

  *a3 = *a1 + 32 * *(*a1 + 3) + 32 * a2;
  return result;
}

uint64_t MIL::Matching::MatchView::AsArray<2ul>@<X0>(MIL::MatchingPrivate::MatchItem **a1@<X0>, uint64_t *a2@<X8>)
{
  result = MIL::MatchingPrivate::MatchItem::CheckArrayLength(*a1, 2uLL);
  v5 = *a1 + 32 * *(*a1 + 3);
  *a2 = v5;
  a2[1] = v5 + 32;
  return result;
}

uint64_t MIL::MatchingPrivate::MatchItem::CheckArrayLength(MIL::MatchingPrivate::MatchItem *this, unint64_t a2)
{
  result = MIL::MatchingPrivate::MatchItem::GetListLength(this);
  if (result != a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v6 = this;
    v7 = exception;
    ListLength = MIL::MatchingPrivate::MatchItem::GetListLength(v6);
    std::to_string(&v18, ListLength);
    v9 = std::string::insert(&v18, 0, "Length mismatch: tried to convert a list of ");
    v10 = *&v9->__r_.__value_.__l.__data_;
    v19.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
    *&v19.__r_.__value_.__l.__data_ = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    v11 = std::string::append(&v19, " elements to an array of length ");
    v12 = *&v11->__r_.__value_.__l.__data_;
    v20.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
    *&v20.__r_.__value_.__l.__data_ = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v17, a2);
    if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v13 = &v17;
    }

    else
    {
      v13 = v17.__r_.__value_.__r.__words[0];
    }

    if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v17.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v17.__r_.__value_.__l.__size_;
    }

    v15 = std::string::append(&v20, v13, size);
    v16 = *&v15->__r_.__value_.__l.__data_;
    v21.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
    *&v21.__r_.__value_.__l.__data_ = v16;
    v15->__r_.__value_.__l.__size_ = 0;
    v15->__r_.__value_.__r.__words[2] = 0;
    v15->__r_.__value_.__r.__words[0] = 0;
    std::logic_error::logic_error(v7, &v21);
    v7->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(v7, off_278235F80, MEMORY[0x277D82610]);
  }

  return result;
}

void sub_21803BC68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v35 - 41) < 0)
  {
    operator delete(*(v35 - 64));
  }

  if (a14 < 0)
  {
    operator delete(__p);
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
    if ((v34 & 1) == 0)
    {
LABEL_14:
      _Unwind_Resume(a1);
    }
  }

  else if (!v34)
  {
    goto LABEL_14;
  }

  __cxa_free_exception(v33);
  goto LABEL_14;
}

uint64_t MIL::Matching::MatchView::AsArray<3ul>@<X0>(MIL::MatchingPrivate::MatchItem **a1@<X0>, uint64_t *a2@<X8>)
{
  result = MIL::MatchingPrivate::MatchItem::CheckArrayLength(*a1, 3uLL);
  v5 = *a1 + 32 * *(*a1 + 3);
  *a2 = v5;
  a2[1] = v5 + 32;
  a2[2] = v5 + 64;
  return result;
}

uint64_t MIL::Matching::MatchView::AsArray<4ul>@<X0>(MIL::MatchingPrivate::MatchItem **a1@<X0>, uint64_t *a2@<X8>)
{
  result = MIL::MatchingPrivate::MatchItem::CheckArrayLength(*a1, 4uLL);
  v5 = *a1 + 32 * *(*a1 + 3);
  *a2 = v5;
  a2[1] = v5 + 32;
  a2[2] = v5 + 64;
  a2[3] = v5 + 96;
  return result;
}

uint64_t MIL::Matching::MatchView::AsArray<5ul>@<X0>(MIL::MatchingPrivate::MatchItem **a1@<X0>, uint64_t *a2@<X8>)
{
  result = MIL::MatchingPrivate::MatchItem::CheckArrayLength(*a1, 5uLL);
  v5 = *a1 + 32 * *(*a1 + 3);
  *a2 = v5;
  a2[1] = v5 + 32;
  a2[2] = v5 + 64;
  a2[3] = v5 + 96;
  a2[4] = v5 + 128;
  return result;
}

uint64_t MIL::Matching::MatchView::AsArray<6ul>@<X0>(MIL::MatchingPrivate::MatchItem **a1@<X0>, uint64_t *a2@<X8>)
{
  result = MIL::MatchingPrivate::MatchItem::CheckArrayLength(*a1, 6uLL);
  v5 = *a1 + 32 * *(*a1 + 3);
  *a2 = v5;
  a2[1] = v5 + 32;
  a2[2] = v5 + 64;
  a2[3] = v5 + 96;
  a2[4] = v5 + 128;
  a2[5] = v5 + 160;
  return result;
}

uint64_t MIL::Matching::MatchView::AsArray<7ul>@<X0>(MIL::MatchingPrivate::MatchItem **a1@<X0>, uint64_t *a2@<X8>)
{
  result = MIL::MatchingPrivate::MatchItem::CheckArrayLength(*a1, 7uLL);
  v5 = *a1 + 32 * *(*a1 + 3);
  *a2 = v5;
  a2[1] = v5 + 32;
  a2[2] = v5 + 64;
  a2[3] = v5 + 96;
  a2[4] = v5 + 128;
  a2[5] = v5 + 160;
  a2[6] = v5 + 192;
  return result;
}

uint64_t MIL::Matching::MatchView::AsArray<8ul>@<X0>(MIL::MatchingPrivate::MatchItem **a1@<X0>, uint64_t *a2@<X8>)
{
  result = MIL::MatchingPrivate::MatchItem::CheckArrayLength(*a1, 8uLL);
  v5 = *a1 + 32 * *(*a1 + 3);
  *a2 = v5;
  a2[1] = v5 + 32;
  a2[2] = v5 + 64;
  a2[3] = v5 + 96;
  a2[4] = v5 + 128;
  a2[5] = v5 + 160;
  a2[6] = v5 + 192;
  a2[7] = v5 + 224;
  return result;
}

uint64_t MIL::Matching::MatchView::AsArray<9ul>@<X0>(MIL::MatchingPrivate::MatchItem **a1@<X0>, uint64_t *a2@<X8>)
{
  result = MIL::MatchingPrivate::MatchItem::CheckArrayLength(*a1, 9uLL);
  v5 = *a1 + 32 * *(*a1 + 3);
  *a2 = v5;
  a2[1] = v5 + 32;
  a2[2] = v5 + 64;
  a2[3] = v5 + 96;
  a2[4] = v5 + 128;
  a2[5] = v5 + 160;
  a2[6] = v5 + 192;
  a2[7] = v5 + 224;
  a2[8] = v5 + 256;
  return result;
}

uint64_t MIL::Matching::MatchView::AsArray<10ul>@<X0>(MIL::MatchingPrivate::MatchItem **a1@<X0>, uint64_t *a2@<X8>)
{
  result = MIL::MatchingPrivate::MatchItem::CheckArrayLength(*a1, 0xAuLL);
  v5 = *a1 + 32 * *(*a1 + 3);
  *a2 = v5;
  a2[1] = v5 + 32;
  a2[2] = v5 + 64;
  a2[3] = v5 + 96;
  a2[4] = v5 + 128;
  a2[5] = v5 + 160;
  a2[6] = v5 + 192;
  a2[7] = v5 + 224;
  a2[8] = v5 + 256;
  a2[9] = v5 + 288;
  return result;
}

uint64_t MIL::Matching::MatchView::AsArray<11ul>@<X0>(MIL::MatchingPrivate::MatchItem **a1@<X0>, uint64_t *a2@<X8>)
{
  result = MIL::MatchingPrivate::MatchItem::CheckArrayLength(*a1, 0xBuLL);
  v5 = *a1 + 32 * *(*a1 + 3);
  *a2 = v5;
  a2[1] = v5 + 32;
  a2[2] = v5 + 64;
  a2[3] = v5 + 96;
  a2[4] = v5 + 128;
  a2[5] = v5 + 160;
  a2[6] = v5 + 192;
  a2[7] = v5 + 224;
  a2[8] = v5 + 256;
  a2[9] = v5 + 288;
  a2[10] = v5 + 320;
  return result;
}

uint64_t MIL::Matching::MatchView::AsArray<12ul>@<X0>(MIL::MatchingPrivate::MatchItem **a1@<X0>, uint64_t *a2@<X8>)
{
  result = MIL::MatchingPrivate::MatchItem::CheckArrayLength(*a1, 0xCuLL);
  v5 = *a1 + 32 * *(*a1 + 3);
  *a2 = v5;
  a2[1] = v5 + 32;
  a2[2] = v5 + 64;
  a2[3] = v5 + 96;
  a2[4] = v5 + 128;
  a2[5] = v5 + 160;
  a2[6] = v5 + 192;
  a2[7] = v5 + 224;
  a2[8] = v5 + 256;
  a2[9] = v5 + 288;
  a2[10] = v5 + 320;
  a2[11] = v5 + 352;
  return result;
}

uint64_t MIL::Matching::MatchView::AsArray<13ul>@<X0>(MIL::MatchingPrivate::MatchItem **a1@<X0>, uint64_t *a2@<X8>)
{
  result = MIL::MatchingPrivate::MatchItem::CheckArrayLength(*a1, 0xDuLL);
  v5 = *a1 + 32 * *(*a1 + 3);
  *a2 = v5;
  a2[1] = v5 + 32;
  a2[2] = v5 + 64;
  a2[3] = v5 + 96;
  a2[4] = v5 + 128;
  a2[5] = v5 + 160;
  a2[6] = v5 + 192;
  a2[7] = v5 + 224;
  a2[8] = v5 + 256;
  a2[9] = v5 + 288;
  a2[10] = v5 + 320;
  a2[11] = v5 + 352;
  a2[12] = v5 + 384;
  return result;
}

uint64_t MIL::Matching::MatchView::AsArray<14ul>@<X0>(MIL::MatchingPrivate::MatchItem **a1@<X0>, uint64_t *a2@<X8>)
{
  result = MIL::MatchingPrivate::MatchItem::CheckArrayLength(*a1, 0xEuLL);
  v5 = *a1 + 32 * *(*a1 + 3);
  *a2 = v5;
  a2[1] = v5 + 32;
  a2[2] = v5 + 64;
  a2[3] = v5 + 96;
  a2[4] = v5 + 128;
  a2[5] = v5 + 160;
  a2[6] = v5 + 192;
  a2[7] = v5 + 224;
  a2[8] = v5 + 256;
  a2[9] = v5 + 288;
  a2[10] = v5 + 320;
  a2[11] = v5 + 352;
  a2[12] = v5 + 384;
  a2[13] = v5 + 416;
  return result;
}

uint64_t MIL::Matching::MatchView::AsArray<15ul>@<X0>(MIL::MatchingPrivate::MatchItem **a1@<X0>, uint64_t *a2@<X8>)
{
  result = MIL::MatchingPrivate::MatchItem::CheckArrayLength(*a1, 0xFuLL);
  v5 = *a1 + 32 * *(*a1 + 3);
  *a2 = v5;
  a2[1] = v5 + 32;
  a2[2] = v5 + 64;
  a2[3] = v5 + 96;
  a2[4] = v5 + 128;
  a2[5] = v5 + 160;
  a2[6] = v5 + 192;
  a2[7] = v5 + 224;
  a2[8] = v5 + 256;
  a2[9] = v5 + 288;
  a2[10] = v5 + 320;
  a2[11] = v5 + 352;
  a2[12] = v5 + 384;
  a2[13] = v5 + 416;
  a2[14] = v5 + 448;
  return result;
}

uint64_t MIL::Matching::MatchView::AsArray<16ul>@<X0>(MIL::MatchingPrivate::MatchItem **a1@<X0>, uint64_t *a2@<X8>)
{
  result = MIL::MatchingPrivate::MatchItem::CheckArrayLength(*a1, 0x10uLL);
  v5 = *a1 + 32 * *(*a1 + 3);
  *a2 = v5;
  a2[1] = v5 + 32;
  a2[2] = v5 + 64;
  a2[3] = v5 + 96;
  a2[4] = v5 + 128;
  a2[5] = v5 + 160;
  a2[6] = v5 + 192;
  a2[7] = v5 + 224;
  a2[8] = v5 + 256;
  a2[9] = v5 + 288;
  a2[10] = v5 + 320;
  a2[11] = v5 + 352;
  a2[12] = v5 + 384;
  a2[13] = v5 + 416;
  a2[14] = v5 + 448;
  a2[15] = v5 + 480;
  return result;
}

__n128 MIL::Matching::ArgumentView::ArgumentView(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

{
  result = *a2;
  *a1 = *a2;
  return result;
}

{
  result = *a2;
  *a1 = *a2;
  return result;
}

{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 MIL::Matching::ArgumentView::operator=(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t MIL::Matching::ArgumentView::GetType(MIL::Matching::ArgumentView *this)
{
  v2 = (*(***(this + 1) + 40))(**(this + 1));
  if (v2)
  {
    v3 = *(*v2 + 32);

    return v3();
  }

  else
  {
    OwningBlock = MIL::Builder::OperationBuilder::GetOwningBlock(*this);
    Name = MIL::IRArgument::GetName(**(this + 1));
    result = MIL::Builder::BlockBuilder::GetType(OwningBlock, Name);
    if (!result)
    {
      exception = __cxa_allocate_exception(0x18uLL);
      MIL::IRArgument::GetName(**(this + 1));
      std::operator+<char>();
      v8 = std::string::append(&v9, "' is unknown");
      v10 = *v8;
      v8->__r_.__value_.__l.__size_ = 0;
      v8->__r_.__value_.__r.__words[2] = 0;
      v8->__r_.__value_.__r.__words[0] = 0;
      MIL::Matching::InvalidMatchAccess::InvalidMatchAccess(exception);
    }
  }

  return result;
}

void sub_21803C500(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

uint64_t MIL::Matching::ArgumentView::TryGetValue(MIL::Matching::ArgumentView *this)
{
  v2 = *(this + 1);
  v3 = (*(**v2 + 40))();
  if (!v3)
  {
    OwningBlock = MIL::Builder::OperationBuilder::GetOwningBlock(*this);
    Name = MIL::IRArgument::GetName(*v2);
    MIL::Builder::BlockBuilder::GetValue(OwningBlock, Name, &v7);
    v3 = v7;
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }

  return v3;
}

uint64_t MIL::Matching::ArgumentView::GetValue(MIL::Matching::ArgumentView *this)
{
  result = MIL::Matching::ArgumentView::TryGetValue(this);
  if (!result)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    std::string::basic_string[abi:ne200100]<0>(v3, "Selected argument doesn't have a known value");
    MIL::Matching::InvalidMatchAccess::InvalidMatchAccess(exception);
  }

  return result;
}

void sub_21803C6AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
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

uint64_t MIL::Matching::ArgumentView::IsConnectedTo(MIL::Matching::ArgumentView *this, const MIL::Matching::OutputView *a2)
{
  result = (*(***(this + 1) + 32))(**(this + 1));
  if (result)
  {
    v4 = result;
    OutputName = MIL::Builder::OperationBuilder::GetOutputName(*a2, *(a2 + 1));
    v6 = *(v4 + 23);
    if (v6 >= 0)
    {
      v7 = *(v4 + 23);
    }

    else
    {
      v7 = *(v4 + 8);
    }

    v8 = *(OutputName + 23);
    v9 = v8;
    if ((v8 & 0x80u) != 0)
    {
      v8 = *(OutputName + 8);
    }

    if (v7 == v8)
    {
      if (v6 >= 0)
      {
        v10 = v4;
      }

      else
      {
        v10 = *v4;
      }

      if (v9 >= 0)
      {
        v11 = OutputName;
      }

      else
      {
        v11 = *OutputName;
      }

      return memcmp(v10, v11, v7) == 0;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

const void **MIL::Matching::ArgumentView::IsSameVariableAs(MIL::Matching::ArgumentView *this, const MIL::Matching::ArgumentView *a2)
{
  result = (*(***(this + 1) + 32))(**(this + 1));
  if (result)
  {
    v4 = result;
    result = (*(***(a2 + 1) + 32))(**(a2 + 1));
    if (result)
    {
      v5 = *(v4 + 23);
      if (v5 >= 0)
      {
        v6 = *(v4 + 23);
      }

      else
      {
        v6 = *(v4 + 8);
      }

      v7 = *(result + 23);
      v8 = v7;
      if (v7 < 0)
      {
        v7 = result[1];
      }

      if (v6 == v7)
      {
        if (v5 >= 0)
        {
          v9 = v4;
        }

        else
        {
          v9 = *v4;
        }

        if (v8 >= 0)
        {
          v10 = result;
        }

        else
        {
          v10 = *result;
        }

        return (memcmp(v9, v10, v6) == 0);
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t MIL::Matching::ArgumentView::IsSameValueAs(MIL::Matching::ArgumentView *this, const MIL::Matching::ArgumentView *a2)
{
  Value = MIL::Matching::ArgumentView::TryGetValue(this);
  if (!Value)
  {
    return 0;
  }

  v4 = Value;
  v5 = MIL::Matching::ArgumentView::TryGetValue(a2);
  if (!v5)
  {
    return 0;
  }

  v6 = *(*v4 + 16);

  return v6(v4, v5);
}

uint64_t MIL::Matching::ArgumentView::IsSameAs(MIL::Matching::ArgumentView *this, const MIL::Matching::ArgumentView *a2)
{
  if (MIL::Matching::ArgumentView::IsSameVariableAs(this, a2))
  {
    return 1;
  }

  return MIL::Matching::ArgumentView::IsSameValueAs(this, a2);
}

void *MIL::Matching::EdgeView::EdgeView(void *result, void *a2)
{
  *result = *a2;
  return result;
}

{
  *result = *a2;
  return result;
}

{
  *result = *a2;
  return result;
}

{
  *result = *a2;
  return result;
}

void *MIL::Matching::EdgeView::operator=(void *result, void *a2)
{
  *result = *a2;
  return result;
}

{
  *result = *a2;
  return result;
}

uint64_t MIL::Matching::EdgeView::GetProducerOutputIndex(MIL::Matching::EdgeView *this)
{
  DataDependency = MIL::Matching::EdgeView::EdgeViewImpl::GetDataDependency(this);

  return MIL::Builder::DataDependency::GetProducerOutputIndex(DataDependency);
}

uint64_t MIL::Matching::EdgeView::EdgeViewImpl::GetDataDependency(MIL::Matching::EdgeView::EdgeViewImpl *this)
{
  result = *this;
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "Attempted to access an absent edge");
    __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
  }

  return result;
}

uint64_t MIL::Matching::EdgeView::GetConsumerParameterName(MIL::Matching::EdgeView *this)
{
  DataDependency = MIL::Matching::EdgeView::EdgeViewImpl::GetDataDependency(this);

  return MIL::Builder::DataDependency::GetConsumerParameterName(DataDependency);
}

void sub_21803CAFC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  *v1 = 0;
  if (v3)
  {
    std::default_delete<MIL::Matching::Match::MatchImpl>::operator()[abi:ne200100](v1, v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<MIL::MatchingPrivate::MatchItem>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v8 = (v4 - *a1) >> 5;
    v9 = v8 + 1;
    if ((v8 + 1) >> 59)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v10 = v5 - *a1;
    if (v10 >> 4 > v9)
    {
      v9 = v10 >> 4;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFE0)
    {
      v11 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<MatchItemStub>>(a1, v11);
    }

    v12 = (32 * v8);
    v13 = a2[1];
    *v12 = *a2;
    v12[1] = v13;
    v7 = 32 * v8 + 32;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy(v12 - v14, *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = a2[1];
    *v4 = *a2;
    v4[1] = v6;
    v7 = (v4 + 2);
  }

  *(a1 + 8) = v7;
}

void sub_21803CC60(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  *v1 = 0;
  if (v3)
  {
    std::default_delete<MIL::Matching::Match::MatchImpl>::operator()[abi:ne200100](v1, v3);
  }

  _Unwind_Resume(exception_object);
}

void *MIL::Matching::Match::Match(void *result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  return result;
}

{
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  return result;
}

char ***MIL::Matching::Match::operator=(char ***a1, char ***a2)
{
  v3 = *a1;
  if (v3 != *a2)
  {
    std::vector<MIL::MatchingPrivate::MatchItem>::__assign_with_size[abi:ne200100]<MIL::MatchingPrivate::MatchItem*,MIL::MatchingPrivate::MatchItem*>(v3, **a2, (*a2)[1], ((*a2)[1] - **a2) >> 5);
  }

  return a1;
}

uint64_t *MIL::Matching::Match::operator=(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = 0;
  v4 = *a1;
  *a1 = v3;
  if (v4)
  {
    std::default_delete<MIL::Matching::Match::MatchImpl>::operator()[abi:ne200100](a1, v4);
  }

  return a1;
}