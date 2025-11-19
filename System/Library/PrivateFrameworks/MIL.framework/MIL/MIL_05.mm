uint64_t std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_217FE21B4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<short>::__init_with_size[abi:ne200100]<short const*,short const*>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<MIL::Fp16>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_217FE2228(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<long long>::__init_with_size[abi:ne200100]<long long const*,long long const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned long long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_217FE229C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::string>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_217FE2320(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::string>,std::string const*,std::string const*,std::string*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
{
  v4 = this;
  v11 = this;
  v12 = this;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v4, *v6, *(v6 + 1));
        v4 = v12;
      }

      else
      {
        v7 = *v6;
        v4->__r_.__value_.__r.__words[2] = *(v6 + 2);
        *&v4->__r_.__value_.__l.__data_ = v7;
      }

      v6 = (v6 + 24);
      v12 = ++v4;
    }

    while (v6 != a3);
  }

  v10 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](v9);
  return v4;
}

void anonymous namespace::IRTupleValueTypeImpl::~IRTupleValueTypeImpl(_anonymous_namespace_::IRTupleValueTypeImpl *this)
{
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x21CEAFEA0);
}

void *std::vector<unsigned char>::vector[abi:ne200100](void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_217FE253C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<MIL::IRDimension const*>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<MIL::IRDimension const*>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<MIL::IRDimension const*>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_217FE25B4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<std::vector<MIL::IRDimension const*>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2829E3678;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x21CEAFEA0);
}

void std::__shared_ptr_emplace<std::vector<MIL::IRDimension const*>>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }
}

void std::__shared_ptr_emplace<std::vector<MIL::IRProperty const*>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2829E36C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x21CEAFEA0);
}

void std::__shared_ptr_emplace<std::vector<MIL::IRProperty const*>>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }
}

uint64_t MIL::IRTensorBufferValueTypeImpl::IRTensorBufferValueTypeImpl(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  *a1 = a2;
  *(a1 + 8) = *a3;
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a1 + 32) = *a4;
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a1 + 48) = a5;
  *(a1 + 56) = *a6;
  *a6 = 0;
  *(a6 + 8) = 0;
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__hash_table(a1 + 72, a7);
  v12 = *(a1 + 32);
  v13 = *(a1 + 48);
  if (v12)
  {
    if (v13)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(exception, "Strides and row-alignment cannot be specified simulataneously for tensor_buffers.");
    }

    else
    {
      if (*(*(a1 + 8) + 8) - **(a1 + 8) == v12[1] - *v12)
      {
        goto LABEL_4;
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(exception, "Length of shape and strides must be equal.");
    }

LABEL_33:
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
  }

  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Row-alignment-in-bytes cannot be a variadic unknown property for tensor_buffers.");
    goto LABEL_33;
  }

LABEL_4:
  v14 = *(*(a1 + 8) + 8) - **(a1 + 8);
  v15 = *(a1 + 56);
  v16 = *v15;
  v17 = v15[1];
  v18 = v17 - *v15;
  if (v14 != v18)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Length of shape and interleaveFactors must be equal.");
    goto LABEL_33;
  }

  {
    v20 = v18 >> 3;
    if (v17 == v16)
    {
      v29 = 1;
    }

    else
    {
      v21 = 0;
      if (v20 <= 1)
      {
        v22 = 1;
      }

      else
      {
        v22 = v18 >> 3;
      }

      do
      {
        v23 = v16[v21];
        {
          v32 = __cxa_allocate_exception(0x10uLL);
          std::logic_error::logic_error(v32, "Interleave factors should be scalars.");
          v32->__vftable = (MEMORY[0x277D828F8] + 16);
          __cxa_throw(v32, off_278235F80, MEMORY[0x277D82610]);
        }

        ++v21;
      }

      while (v22 != v21);
      v24 = 0;
      v25 = 0;
      do
      {
        v26 = MIL::IRProperty::AsConstant(v16[v24]);
        if (*MIL::IRConstantPropertyImpl::GetValue<unsigned char>(v26[1]) == 1)
        {
          ++v25;
        }

        ++v24;
        v27 = *(a1 + 56);
        v16 = *v27;
        v28 = *(v27 + 8) - *v27;
      }

      while (v24 < v28 >> 3);
      v20 = v28 >> 3;
      v29 = v25 + 1;
    }

    if (v29 < v20)
    {
      v33 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v33, "Found multiple interleave factors that are not 1.");
      v33->__vftable = (MEMORY[0x277D828F8] + 16);
      __cxa_throw(v33, off_278235F80, MEMORY[0x277D82610]);
    }
  }

  return a1;
}

void sub_217FE2AF4(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table((v1 + 9));
  v4 = v1[8];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = v1[5];
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = v1[2];
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<MIL::IRPixelBufferValueTypeImpl>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v2 + 80);
    if (*(v2 + 72) == 1)
    {
      v3 = *(v2 + 64);
      if (v3)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v3);
      }
    }

    if (*(v2 + 48) == 1)
    {
      v4 = *(v2 + 40);
      if (v4)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      }
    }

    v5 = *(v2 + 16);
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    JUMPOUT(0x21CEAFEA0);
  }

  return result;
}

uint64_t MIL::IRPixelBufferValueTypeImpl::IRPixelBufferValueTypeImpl(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  *a1 = a2;
  *(a1 + 8) = *a3;
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a1 + 32) = 0;
  *(a1 + 48) = 0;
  if (*(a4 + 16) == 1)
  {
    *(a1 + 32) = *a4;
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a1 + 48) = 1;
  }

  *(a1 + 56) = 0;
  *(a1 + 72) = 0;
  if (*(a5 + 16) == 1)
  {
    *(a1 + 56) = *a5;
    *a5 = 0;
    *(a5 + 8) = 0;
    *(a1 + 72) = 1;
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__hash_table(a1 + 80, a6);
  if (*a1 != 20 && !MIL::IsValidIRPixelFormatType(*a1))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Unsupported pixel format type.");
    goto LABEL_32;
  }

  if ((*(a1 + 24) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Pixel buffers must have known rank.");
    goto LABEL_32;
  }

  if (*(*(a1 + 8) + 8) - **(a1 + 8) != 16)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Length of shape must be 2 (height, width).");
    goto LABEL_32;
  }

  if (*(a1 + 48) == 1 && *a1 != 20)
  {
    v11 = *(a1 + 32);
    v13 = *v11;
    v12 = v11[1];
    if (MIL::GetNumPlanesForFormat(*a1) != (v12 - v13) >> 3)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(exception, "Length of bytesPerRow must be equal to the number of planes in formatType.");
      goto LABEL_32;
    }
  }

  if (*(a1 + 72) != 1)
  {
    return a1;
  }

  if (*a1 != 20)
  {
    v14 = *(a1 + 56);
    v16 = *v14;
    v15 = v14[1];
    if (MIL::GetNumPlanesForFormat(*a1) != (v15 - v16) >> 3)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(exception, "Length of numSlices must be equal to the number of planes in formatType.");
LABEL_32:
      exception->__vftable = (MEMORY[0x277D828F8] + 16);
      __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
    }
  }

  v17 = *(a1 + 56);
  v18 = *v17;
  v19 = v17[1];
  if (*v17 != v19)
  {
    do
    {
      v20 = *v18;
      if (*v18)
      {
        {
          v21 = MIL::IRProperty::AsConstant(v20);
          if (*MIL::IRConstantPropertyImpl::GetValue<long long>(v21[1]) != 1 && !MIL::SupportsMultiSlice(*a1))
          {
            v25 = __cxa_allocate_exception(0x10uLL);
            MIL::IRPixelFormatTypeToString(a2, &v31);
            v26 = std::string::insert(&v31, 0, "Given pixel format type ");
            v27 = *&v26->__r_.__value_.__l.__data_;
            v32.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
            *&v32.__r_.__value_.__l.__data_ = v27;
            v26->__r_.__value_.__l.__size_ = 0;
            v26->__r_.__value_.__r.__words[2] = 0;
            v26->__r_.__value_.__r.__words[0] = 0;
            v28 = std::string::append(&v32, " does not support multislice.");
            v29 = *&v28->__r_.__value_.__l.__data_;
            v33.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
            *&v33.__r_.__value_.__l.__data_ = v29;
            v28->__r_.__value_.__l.__size_ = 0;
            v28->__r_.__value_.__r.__words[2] = 0;
            v28->__r_.__value_.__r.__words[0] = 0;
            std::logic_error::logic_error(v25, &v33);
            v25->__vftable = (MEMORY[0x277D828F8] + 16);
            __cxa_throw(v25, off_278235F80, MEMORY[0x277D82610]);
          }
        }

        {
          if (MIL::SupportsMultiSlice(*a1))
          {
            v22 = MIL::IRProperty::AsConstant(v20);
            if (*MIL::IRConstantPropertyImpl::GetValue<long long>(v22[1]) <= 1)
            {
              v24 = __cxa_allocate_exception(0x10uLL);
              std::logic_error::logic_error(v24, "Multislice pixel format requires numSlices > 1.");
              v24->__vftable = (MEMORY[0x277D828F8] + 16);
              __cxa_throw(v24, off_278235F80, MEMORY[0x277D82610]);
            }
          }
        }
      }

      ++v18;
    }

    while (v18 != v19);
  }

  return a1;
}

void sub_217FE3040(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  __cxa_free_exception(v29);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v28 + 80);
  if (*(v28 + 72) == 1)
  {
    v31 = *(v28 + 64);
    if (v31)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v31);
    }
  }

  if (*(v28 + 48) == 1)
  {
    v32 = *(v28 + 40);
    if (v32)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v32);
    }
  }

  v33 = *(v28 + 16);
  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  _Unwind_Resume(a1);
}

void sub_217FE3370(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::unique_ptr<MIL::IRTensorBufferValueTypeImpl>::~unique_ptr[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

const void **MIL::IRStateValueTypeImpl::IRStateValueTypeImpl(const void **this, const MIL::IRValueType *a2)
{
  *this = a2;
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "Trying to wrap an unsupported type (only tensors and memory layouts are supported).");
    __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
  }

  return this;
}

uint64_t MIL::IRTypeStore<unsigned long long,MIL::IRConstantDimension const>::Get<unsigned long long>(void *a1, MIL::IRConstantDimension *a2)
{
  v6 = a2;
  v3 = std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<MIL::IRConstantDimension const>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<MIL::IRConstantDimension const>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<MIL::IRConstantDimension const>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<MIL::IRConstantDimension const>>>>::__emplace_unique_key_args<unsigned long long,unsigned long long,decltype(nullptr)>(a1, &v6);
  if (v4)
  {
    MIL::IRConstantDimension::Make(a2);
  }

  return v3[3];
}

uint64_t MIL::IRTypeStore<long long,MIL::IRConstantProperty const>::Get<long long>(void *a1, unint64_t a2)
{
  v5[0] = a2;
  v5[1] = a2;
  v2 = std::__hash_table<std::__hash_value_type<long long,std::unique_ptr<MIL::IRConstantProperty const>>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,std::unique_ptr<MIL::IRConstantProperty const>>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,std::unique_ptr<MIL::IRConstantProperty const>>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,std::unique_ptr<MIL::IRConstantProperty const>>>>::__emplace_unique_key_args<long long,long long,decltype(nullptr)>(a1, v5);
  if (v3)
  {
    MIL::IRConstantProperty::Make<long long>();
  }

  return v2[3];
}

uint64_t *MIL::IRTypeStore<unsigned char,MIL::IRConstantProperty const>::Get<unsigned char>(void *a1, unsigned __int8 a2)
{
  v5[1] = a2;
  v5[0] = a2;
  v2 = std::__hash_table<std::__hash_value_type<unsigned char,std::unique_ptr<MIL::IRConstantProperty const>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::unique_ptr<MIL::IRConstantProperty const>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::unique_ptr<MIL::IRConstantProperty const>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::unique_ptr<MIL::IRConstantProperty const>>>>::__emplace_unique_key_args<unsigned char,unsigned char,decltype(nullptr)>(a1, v5);
  if (v3)
  {
    MIL::IRConstantProperty::Make<unsigned char>();
  }

  return v2[3];
}

uint64_t MIL::IRTypeStore<unsigned long long,MIL::IRConstantProperty const>::Get<unsigned long long>(void *a1, unint64_t a2)
{
  v5[0] = a2;
  v5[1] = a2;
  v2 = std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<MIL::IRConstantProperty const>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<MIL::IRConstantProperty const>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<MIL::IRConstantProperty const>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<MIL::IRConstantProperty const>>>>::__emplace_unique_key_args<unsigned long long,unsigned long long,decltype(nullptr)>(a1, v5);
  if (v3)
  {
    MIL::IRConstantProperty::Make<unsigned long long>();
  }

  return v2[3];
}

uint64_t MIL::IRTypeStore<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*> const>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,MIL::IRTensorValueType const>::Get<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>> const&,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>(void *a1, int a2, void *a3, uint64_t a4)
{
  std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>::unordered_map(&v16, a4);
  LODWORD(v21[0]) = a2;
  v7 = a3[1];
  v21[1] = *a3;
  v22 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = v16;
  v9 = v17;
  v16 = 0;
  v17 = 0;
  v23[0] = v8;
  v23[1] = v9;
  v24[0] = v18;
  v24[1] = v19;
  v25 = v20;
  if (v19)
  {
    v10 = *(v18 + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v10 >= v9)
      {
        v10 %= v9;
      }
    }

    else
    {
      v10 &= v9 - 1;
    }

    *(v8 + 8 * v10) = v24;
    v18 = 0;
    v19 = 0;
  }

  v11 = std::__hash_table<std::__hash_value_type<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*> const>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::unique_ptr<MIL::IRTensorValueType const>>,std::__unordered_map_hasher<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*> const>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::__hash_value_type<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*> const>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::unique_ptr<MIL::IRTensorValueType const>>,std::hash<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*> const>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>>,std::equal_to<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*> const>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>>,true>,std::__unordered_map_equal<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*> const>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::__hash_value_type<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*> const>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::unique_ptr<MIL::IRTensorValueType const>>,std::equal_to<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*> const>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>>,std::hash<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*> const>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>>,true>,std::allocator<std::__hash_value_type<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*> const>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::unique_ptr<MIL::IRTensorValueType const>>>>::__emplace_unique_key_args<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*> const>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*> const>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,decltype(nullptr)>(a1, v21);
  v13 = v12;
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v23);
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&v16);
  if (v13)
  {
    v14 = a3[1];
    if (v14)
    {
      atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
    }

    MIL::IRTensorValueType::Make();
  }

  return v11[10];
}

void sub_217FE394C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::hash<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*> const>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>>::operator()(uint64_t a1, int *a2)
{
  v8 = 0;
  v3 = *(a2 + 1);
  v4 = *v3;
  v5 = v3[1];
  while (v4 != v5)
  {
    v6 = *v4++;
    MIL::Util::HashCombine(&v8, v6);
  }

  MIL::Util::HashCombine(&v8, *a2);
}

uint64_t anonymous namespace::HashCombineForAttr(uint64_t a1, uint64_t a2)
{
  v7 = a2;
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = std::__string_hash<char>::operator()[abi:ne200100](&v6, (v2 + 2));
      MIL::Util::HashCombine(&v7, v3);
      v4 = (*(*v2[5] + 24))(v2[5]);
      MIL::Util::HashCombine(&v7, v4);
      v2 = *v2;
    }

    while (v2);
    return v7;
  }

  return a2;
}

BOOL std::equal_to<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*> const>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a2 != *a3)
  {
    return 0;
  }

  v5 = *(a2 + 8);
  v6 = *(a3 + 8);
  v7 = *(v5 + 8) - *v5;
  if (v7 != *(v6 + 8) - *v6 || memcmp(*v5, *v6, v7))
  {
    return 0;
  }
}

BOOL anonymous namespace::CompareAttr(uint64_t a1, void *a2)
{
  if (*(a1 + 24) != a2[3])
  {
    return 0;
  }

  v3 = (a1 + 16);
  do
  {
    v3 = *v3;
    v4 = v3 == 0;
    if (!v3)
    {
      break;
    }

    v5 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a2, v3 + 2);
    if (!v5)
    {
      break;
    }
  }

  while (((*(*v5[5] + 16))(v5[5], v3[5]) & 1) != 0);
  return v4;
}

uint64_t MIL::IRTypeStore<std::pair<MIL::IRValueType const*,MIL::IRDimension const*>,MIL::IRListValueType const>::Get<MIL::IRValueType const*,MIL::IRDimension const*>(void *a1, MIL::IRListValueType *a2, const MIL::IRValueType *a3)
{
  v9[0] = a2;
  v9[1] = a3;
  v6 = std::__hash_table<std::__hash_value_type<std::pair<MIL::IRValueType const*,MIL::IRDimension const*>,std::unique_ptr<MIL::IRListValueType const>>,std::__unordered_map_hasher<std::pair<MIL::IRValueType const*,MIL::IRDimension const*>,std::__hash_value_type<std::pair<MIL::IRValueType const*,MIL::IRDimension const*>,std::unique_ptr<MIL::IRListValueType const>>,std::hash<std::pair<MIL::IRValueType const*,MIL::IRDimension const*>>,std::equal_to<std::pair<MIL::IRValueType const*,MIL::IRDimension const*>>,true>,std::__unordered_map_equal<std::pair<MIL::IRValueType const*,MIL::IRDimension const*>,std::__hash_value_type<std::pair<MIL::IRValueType const*,MIL::IRDimension const*>,std::unique_ptr<MIL::IRListValueType const>>,std::equal_to<std::pair<MIL::IRValueType const*,MIL::IRDimension const*>>,std::hash<std::pair<MIL::IRValueType const*,MIL::IRDimension const*>>,true>,std::allocator<std::__hash_value_type<std::pair<MIL::IRValueType const*,MIL::IRDimension const*>,std::unique_ptr<MIL::IRListValueType const>>>>::__emplace_unique_key_args<std::pair<MIL::IRValueType const*,MIL::IRDimension const*>,std::pair<MIL::IRValueType const*,MIL::IRDimension const*>,decltype(nullptr)>(a1, v9);
  if (v7)
  {
    MIL::IRListValueType::Make(a2, a3, v5);
  }

  return v6[4];
}

uint64_t std::hash<std::pair<MIL::IRValueType const*,MIL::IRDimension const*>>::operator()(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  v5 = v3;
  MIL::Util::HashCombine(&v5, v2);
  return v5;
}

const void **MIL::IRTypeStore<std::shared_ptr<std::vector<MIL::IRValueType const*>>,MIL::IRTupleValueType const>::Get<std::shared_ptr<std::vector<MIL::IRValueType const*>> const&>(void *a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v9 = *a2;
  v10 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = std::__hash_table<std::__hash_value_type<std::shared_ptr<std::vector<MIL::IRValueType const*>>,std::unique_ptr<MIL::IRTupleValueType const>>,std::__unordered_map_hasher<std::shared_ptr<std::vector<MIL::IRValueType const*>>,std::__hash_value_type<std::shared_ptr<std::vector<MIL::IRValueType const*>>,std::unique_ptr<MIL::IRTupleValueType const>>,std::hash<std::shared_ptr<std::vector<MIL::IRValueType const*>>>,std::equal_to<std::shared_ptr<std::vector<MIL::IRValueType const*>>>,true>,std::__unordered_map_equal<std::shared_ptr<std::vector<MIL::IRValueType const*>>,std::__hash_value_type<std::shared_ptr<std::vector<MIL::IRValueType const*>>,std::unique_ptr<MIL::IRTupleValueType const>>,std::equal_to<std::shared_ptr<std::vector<MIL::IRValueType const*>>>,std::hash<std::shared_ptr<std::vector<MIL::IRValueType const*>>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<std::vector<MIL::IRValueType const*>>,std::unique_ptr<MIL::IRTupleValueType const>>>>::__emplace_unique_key_args<std::shared_ptr<std::vector<MIL::IRValueType const*>>,std::shared_ptr<std::vector<MIL::IRValueType const*>>,decltype(nullptr)>(a1, &v9);
  v6 = v5;
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  if (v6)
  {
    v7 = *(a2 + 8);
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }

    MIL::IRTupleValueType::Make();
  }

  return v4[4];
}

void sub_217FE3DA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::hash<std::shared_ptr<std::vector<MIL::IRValueType const*>>>::operator()(uint64_t a1, unint64_t ****a2)
{
  v6 = 0;
  v2 = **a2;
  v3 = (*a2)[1];
  if (v2 == v3)
  {
    return 0;
  }

  do
  {
    v4 = *v2++;
    MIL::Util::HashCombine(&v6, v4);
  }

  while (v2 != v3);
  return v6;
}

BOOL std::equal_to<std::shared_ptr<std::vector<MIL::IRValueType const*>>>::operator()(uint64_t a1, const void ***a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = **a2;
  v5 = (*a2)[1] - v4;
  return v5 == *(v3 + 8) - *v3 && memcmp(v4, *v3, v5) == 0;
}

uint64_t MIL::IRTypeStore<std::pair<MIL::IRValueType const*,MIL::IRValueType const*>,MIL::IRDictionaryValueType const>::Get<MIL::IRValueType const*,MIL::IRValueType const*>(void *a1, MIL::IRDictionaryValueType *a2, const MIL::IRValueType *a3)
{
  v9[0] = a2;
  v9[1] = a3;
  v6 = std::__hash_table<std::__hash_value_type<std::pair<MIL::IRValueType const*,MIL::IRValueType const*>,std::unique_ptr<MIL::IRDictionaryValueType const>>,std::__unordered_map_hasher<std::pair<MIL::IRValueType const*,MIL::IRValueType const*>,std::__hash_value_type<std::pair<MIL::IRValueType const*,MIL::IRValueType const*>,std::unique_ptr<MIL::IRDictionaryValueType const>>,std::hash<std::pair<MIL::IRValueType const*,MIL::IRValueType const*>>,std::equal_to<std::pair<MIL::IRValueType const*,MIL::IRValueType const*>>,true>,std::__unordered_map_equal<std::pair<MIL::IRValueType const*,MIL::IRValueType const*>,std::__hash_value_type<std::pair<MIL::IRValueType const*,MIL::IRValueType const*>,std::unique_ptr<MIL::IRDictionaryValueType const>>,std::equal_to<std::pair<MIL::IRValueType const*,MIL::IRValueType const*>>,std::hash<std::pair<MIL::IRValueType const*,MIL::IRValueType const*>>,true>,std::allocator<std::__hash_value_type<std::pair<MIL::IRValueType const*,MIL::IRValueType const*>,std::unique_ptr<MIL::IRDictionaryValueType const>>>>::__emplace_unique_key_args<std::pair<MIL::IRValueType const*,MIL::IRValueType const*>,std::pair<MIL::IRValueType const*,MIL::IRValueType const*>,decltype(nullptr)>(a1, v9);
  if (v7)
  {
    MIL::IRDictionaryValueType::Make(a2, a3, v5);
  }

  return v6[4];
}

uint64_t MIL::IRTypeStore<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,MIL::IRTensorBufferValueType const>::Get<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>(void *a1, int a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t *a6, uint64_t a7)
{
  v13 = a3[1];
  v28 = *a3;
  v29 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v14 = a4[1];
  v26 = *a4;
  v27 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v15 = a6[1];
  v24 = *a6;
  v25 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>::unordered_map(v23, a7);
  v36 = a2;
  v35 = a5;
  _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2ELm3ELm4ELm5EEEEJN3MIL10IRDataTypeENS_10shared_ptrINS_6vectorIPKNS3_11IRDimensionENS_9allocatorIS9_EEEEEENS5_INS6_IPKNS3_10IRPropertyENSA_ISG_EEEEEESG_SJ_NS_13unordered_mapINS_12basic_stringIcNS_11char_traitsIcEENSA_IcEEEENS5_IKNS3_7IRValueEEENS_4hashISP_EENS_8equal_toISP_EENSA_INS_4pairIKSP_SS_EEEEEEEEC2B8ne200100IJLm0ELm1ELm2ELm3ELm4ELm5EEJS4_SD_SJ_SG_SJ_S11_EJEJEJRS4_RSD_RSJ_RSG_S16_S11_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENS19_IJDpT2_EEEDpOT3_(v30, &v36, &v28, &v26, &v35, &v24, v23);
  v35 = 0;
  v16 = std::__hash_table<std::__hash_value_type<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::unique_ptr<MIL::IRTensorBufferValueType const>>,std::__unordered_map_hasher<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::__hash_value_type<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::unique_ptr<MIL::IRTensorBufferValueType const>>,std::hash<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>>,std::equal_to<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>>,true>,std::__unordered_map_equal<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::__hash_value_type<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::unique_ptr<MIL::IRTensorBufferValueType const>>,std::equal_to<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>>,std::hash<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>>,true>,std::allocator<std::__hash_value_type<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::unique_ptr<MIL::IRTensorBufferValueType const>>>>::__emplace_unique_key_args<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,decltype(nullptr)>( a1,  v30);
  v18 = v17;
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&v34);
  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }

  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v23);
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  if (v18)
  {
    v19 = *a3;
    *a3 = 0;
    a3[1] = 0;
    v21 = *a4;
    v22 = v19;
    *a4 = 0;
    a4[1] = 0;
    *a6 = 0;
    a6[1] = 0;
    MIL::IRTensorBufferValueType::Make(a2, &v22, &v21, a5);
  }

  return v16[15];
}

void sub_217FE4168(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::hash<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>>::operator()(uint64_t a1, int *a2)
{
  v17 = 0;
  MIL::Util::HashCombine(&v17, *a2);
  v3 = *(a2 + 1);
  v4 = *v3;
  v5 = v3[1];
  while (v4 != v5)
  {
    v6 = *v4++;
    MIL::Util::HashCombine(&v17, v6);
  }

  v7 = *(a2 + 3);
  v8 = *(a2 + 4);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v7)
  {
    v9 = *(a2 + 3);
    v10 = *v9;
    v11 = v9[1];
    while (v10 != v11)
    {
      MIL::Util::HashCombine(&v17, *v10++);
    }
  }

  else
  {
    MIL::Util::HashCombine(&v17, 0);
  }

  MIL::Util::HashCombine(&v17, *(a2 + 5));
  v12 = *(a2 + 6);
  v13 = *v12;
  v14 = v12[1];
  while (v13 != v14)
  {
    MIL::Util::HashCombine(&v17, *v13++);
  }

  v17 = v15;
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  return v15;
}

void sub_217FE42D4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL std::equal_to<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a2 != *a3)
  {
    return 0;
  }

  v5 = *(a2 + 8);
  v6 = *(a3 + 8);
  v7 = *(v5 + 8) - *v5;
  if (v7 != *(v6 + 8) - *v6)
  {
    return 0;
  }

  if (memcmp(*v5, *v6, v7))
  {
    return 0;
  }

  v8 = *(a2 + 48);
  v9 = *(a3 + 48);
  v10 = *(v8 + 8) - *v8;
  if (v10 != *(v9 + 8) - *v9 || memcmp(*v8, *v9, v10) || *(a2 + 40) != *(a3 + 40))
  {
    return 0;
  }

  v11 = *(a2 + 24);
  v12 = *(a2 + 32);
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = *(a3 + 24);
  v14 = *(a3 + 32);
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v15 = 0;
  if ((v11 != 0) == (v13 != 0))
  {
    if (!v11 || !v13 || (v16 = *(v11 + 8) - *v11, v16 == *(v13 + 8) - *v13) && !memcmp(*v11, *v13, v16))
    {
      v15 = 1;
    }
  }

  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  if (!v15)
  {
    return 0;
  }
}

uint64_t MIL::IRTypeStore<std::tuple<MIL::IRPixelFormatType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,MIL::IRPixelBufferValueType const>::Get<MIL::IRPixelFormatType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>(void *a1, int a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t a6)
{
  v11 = a3[1];
  v28 = *a3;
  v29 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = a4[1];
  v26 = *a4;
  v27 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = a5[1];
  v24 = *a5;
  v25 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>::unordered_map(v23, a6);
  LODWORD(v22) = a2;
  _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2ELm3ELm4EEEEJN3MIL17IRPixelFormatTypeENS_10shared_ptrINS_6vectorIPKNS3_11IRDimensionENS_9allocatorIS9_EEEEEENS5_INS6_IPKNS3_10IRPropertyENSA_ISG_EEEEEESJ_NS_13unordered_mapINS_12basic_stringIcNS_11char_traitsIcEENSA_IcEEEENS5_IKNS3_7IRValueEEENS_4hashISP_EENS_8equal_toISP_EENSA_INS_4pairIKSP_SS_EEEEEEEEC2B8ne200100IJLm0ELm1ELm2ELm3ELm4EEJS4_SD_SJ_SJ_S11_EJEJEJRS4_RSD_RSJ_S16_S11_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENS18_IJDpT2_EEEDpOT3_(v30, &v22, &v28, &v26, &v24, v23);
  v22 = 0;
  v14 = std::__hash_table<std::__hash_value_type<std::tuple<MIL::IRPixelFormatType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::unique_ptr<MIL::IRPixelBufferValueType const>>,std::__unordered_map_hasher<std::tuple<MIL::IRPixelFormatType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::__hash_value_type<std::tuple<MIL::IRPixelFormatType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::unique_ptr<MIL::IRPixelBufferValueType const>>,std::hash<std::tuple<MIL::IRPixelFormatType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>>,std::equal_to<std::tuple<MIL::IRPixelFormatType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>>,true>,std::__unordered_map_equal<std::tuple<MIL::IRPixelFormatType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::__hash_value_type<std::tuple<MIL::IRPixelFormatType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::unique_ptr<MIL::IRPixelBufferValueType const>>,std::equal_to<std::tuple<MIL::IRPixelFormatType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>>,std::hash<std::tuple<MIL::IRPixelFormatType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>>,true>,std::allocator<std::__hash_value_type<std::tuple<MIL::IRPixelFormatType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::unique_ptr<MIL::IRPixelBufferValueType const>>>>::__emplace_unique_key_args<std::tuple<MIL::IRPixelFormatType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::tuple<MIL::IRPixelFormatType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,decltype(nullptr)>( a1,  v30);
  v16 = v15;
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&v34);
  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }

  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v23);
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  if (v16)
  {
    v17 = *a3;
    *a3 = 0;
    a3[1] = 0;
    v20 = *a4;
    v21 = v17;
    *a4 = 0;
    a4[1] = 0;
    v19 = *a5;
    *a5 = 0;
    a5[1] = 0;
    MIL::IRPixelBufferValueType::Make(a2, &v21, &v20, &v19);
  }

  return v14[14];
}

void sub_217FE4678(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::hash<std::tuple<MIL::IRPixelFormatType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>>::operator()(uint64_t a1, void *a2)
{
  v19 = 0;
  MIL::Util::HashCombine(&v19, *a2);
  v3 = a2[1];
  v4 = *v3;
  v5 = v3[1];
  while (v4 != v5)
  {
    v6 = *v4++;
    MIL::Util::HashCombine(&v19, v6);
  }

  v7 = a2[3];
  v8 = a2[4];
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v7)
  {
    v9 = a2[3];
    v10 = *v9;
    v11 = v9[1];
    while (v10 != v11)
    {
      MIL::Util::HashCombine(&v19, *v10++);
    }
  }

  else
  {
    MIL::Util::HashCombine(&v19, 0);
  }

  v12 = a2[5];
  v13 = a2[6];
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v12)
  {
    v14 = a2[5];
    v15 = *v14;
    v16 = v14[1];
    while (v15 != v16)
    {
      MIL::Util::HashCombine(&v19, *v15++);
    }
  }

  else
  {
    MIL::Util::HashCombine(&v19, 0);
  }

  v19 = v17;
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  return v17;
}

void sub_217FE4810(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL std::equal_to<std::tuple<MIL::IRPixelFormatType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a2 != *a3)
  {
    return 0;
  }

  v5 = *(a2 + 8);
  v6 = *(a3 + 8);
  v7 = *(v5 + 8) - *v5;
  if (v7 != *(v6 + 8) - *v6 || memcmp(*v5, *v6, v7))
  {
    return 0;
  }

  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = *(a3 + 24);
  v11 = *(a3 + 32);
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if ((v8 != 0) != (v10 != 0) || v8 && v10 && ((v18 = *(v8 + 8) - *v8, v18 != *(v10 + 8) - *v10) || memcmp(*v8, *v10, v18)))
  {
    v12 = 0;
    if (!v11)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v12 = 1;
  if (v11)
  {
LABEL_10:
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

LABEL_11:
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if (!v12)
  {
    return 0;
  }

  v13 = *(a2 + 40);
  v14 = *(a2 + 48);
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v15 = *(a3 + 40);
  v16 = *(a3 + 48);
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v17 = (v13 != 0) == (v15 != 0) && (!v13 || !v15 || std::operator==[abi:ne200100]<MIL::IRProperty const*,std::allocator<MIL::IRProperty const*>>(v13, v15));
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  if (!v17)
  {
    return 0;
  }
}

void sub_217FE49EC(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRTypeStore<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,MIL::IRCircularBufferValueType const>::Get<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>(void *a1, int a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v13 = a3[1];
  v29 = *a3;
  v30 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v14 = a4[1];
  v27 = *a4;
  v28 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v15 = a5[1];
  v25 = *a5;
  v26 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>::unordered_map(v24, a7);
  v37 = a2;
  v36 = a6;
  _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2ELm3ELm4ELm5EEEEJN3MIL10IRDataTypeENS_10shared_ptrINS_6vectorIPKNS3_11IRDimensionENS_9allocatorIS9_EEEEEENS5_INS6_IPKNS3_10IRPropertyENSA_ISG_EEEEEESJ_SG_NS_13unordered_mapINS_12basic_stringIcNS_11char_traitsIcEENSA_IcEEEENS5_IKNS3_7IRValueEEENS_4hashISP_EENS_8equal_toISP_EENSA_INS_4pairIKSP_SS_EEEEEEEEC2B8ne200100IJLm0ELm1ELm2ELm3ELm4ELm5EEJS4_SD_SJ_SJ_SG_S11_EJEJEJRS4_RSD_RSJ_S16_RSG_S11_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENS19_IJDpT2_EEEDpOT3_(v31, &v37, &v29, &v27, &v25, &v36, v24);
  v36 = 0;
  v16 = std::__hash_table<std::__hash_value_type<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::unique_ptr<MIL::IRCircularBufferValueType const>>,std::__unordered_map_hasher<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::__hash_value_type<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::unique_ptr<MIL::IRCircularBufferValueType const>>,std::hash<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>>,std::equal_to<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>>,true>,std::__unordered_map_equal<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::__hash_value_type<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::unique_ptr<MIL::IRCircularBufferValueType const>>,std::equal_to<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>>,std::hash<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>>,true>,std::allocator<std::__hash_value_type<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::unique_ptr<MIL::IRCircularBufferValueType const>>>>::__emplace_unique_key_args<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,decltype(nullptr)>( a1,  v31);
  v18 = v17;
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&v35);
  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v24);
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  if (v18)
  {
    v19 = *a3;
    *a3 = 0;
    a3[1] = 0;
    v22 = *a4;
    v23 = v19;
    *a4 = 0;
    a4[1] = 0;
    v21 = *a5;
    *a5 = 0;
    a5[1] = 0;
    MIL::IRCircularBufferValueType::Make(a2, &v23, &v22, &v21, a6);
  }

  return v16[15];
}

void sub_217FE4C3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::hash<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>>::operator()(uint64_t a1, int *a2)
{
  v16 = 0;
  MIL::Util::HashCombine(&v16, *a2);
  v3 = *(a2 + 1);
  v4 = *v3;
  v5 = v3[1];
  while (v4 != v5)
  {
    v6 = *v4++;
    MIL::Util::HashCombine(&v16, v6);
  }

  v7 = *(a2 + 3);
  v8 = *v7;
  v9 = v7[1];
  while (v8 != v9)
  {
    v10 = *v8++;
    MIL::Util::HashCombine(&v16, v10);
  }

  v11 = *(a2 + 5);
  v12 = *v11;
  v13 = v11[1];
  while (v12 != v13)
  {
    v14 = *v12++;
    MIL::Util::HashCombine(&v16, v14);
  }

  MIL::Util::HashCombine(&v16, *(a2 + 7));
}

BOOL std::equal_to<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a2 != *a3)
  {
    return 0;
  }

  v5 = *(a2 + 8);
  v6 = *(a3 + 8);
  v7 = *(v5 + 8) - *v5;
  if (v7 != *(v6 + 8) - *v6)
  {
    return 0;
  }

  if (memcmp(*v5, *v6, v7))
  {
    return 0;
  }

  v8 = *(a2 + 24);
  v9 = *(a3 + 24);
  v10 = *(v8 + 8) - *v8;
  if (v10 != *(v9 + 8) - *v9)
  {
    return 0;
  }

  if (memcmp(*v8, *v9, v10))
  {
    return 0;
  }

  v11 = *(a2 + 40);
  v12 = *(a3 + 40);
  v13 = *(v11 + 8) - *v11;
  if (v13 != *(v12 + 8) - *v12 || memcmp(*v11, *v12, v13) || *(a2 + 56) != *(a3 + 56))
  {
    return 0;
  }
}

uint64_t MIL::IRTypeStore<MIL::IRValueType const*,MIL::IRStateValueType const>::Get<MIL::IRValueType const*>(void *a1, MIL::IRStateValueType *a2)
{
  v6 = a2;
  v4 = std::__hash_table<std::__hash_value_type<MIL::IRValueType const*,std::unique_ptr<MIL::IRStateValueType const>>,std::__unordered_map_hasher<MIL::IRValueType const*,std::__hash_value_type<MIL::IRValueType const*,std::unique_ptr<MIL::IRStateValueType const>>,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,true>,std::__unordered_map_equal<MIL::IRValueType const*,std::__hash_value_type<MIL::IRValueType const*,std::unique_ptr<MIL::IRStateValueType const>>,std::equal_to<MIL::IRValueType const*>,std::hash<MIL::IRValueType const*>,true>,std::allocator<std::__hash_value_type<MIL::IRValueType const*,std::unique_ptr<MIL::IRStateValueType const>>>>::__emplace_unique_key_args<MIL::IRValueType const*,MIL::IRValueType const*,decltype(nullptr)>(a1, &v6);
  if (v3)
  {
    MIL::IRStateValueType::Make(a2, v3);
  }

  return v4[3];
}

uint64_t std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*> const>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>::~tuple(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 24);
  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2ELm3ELm4ELm5EEEEJN3MIL10IRDataTypeENS_10shared_ptrINS_6vectorIPKNS3_11IRDimensionENS_9allocatorIS9_EEEEEENS5_INS6_IPKNS3_10IRPropertyENSA_ISG_EEEEEESG_SJ_NS_13unordered_mapINS_12basic_stringIcNS_11char_traitsIcEENSA_IcEEEENS5_IKNS3_7IRValueEEENS_4hashISP_EENS_8equal_toISP_EENSA_INS_4pairIKSP_SS_EEEEEEEEC2B8ne200100IJLm0ELm1ELm2ELm3ELm4ELm5EEJS4_SD_SJ_SG_SJ_S11_EJEJEJRS4_RSD_RSJ_RSG_S16_S11_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENS19_IJDpT2_EEEDpOT3_(uint64_t a1, _DWORD *a2, void *a3, void *a4, void *a5, uint64_t *a6, uint64_t *a7)
{
  *a1 = *a2;
  v8 = a3[1];
  *(a1 + 8) = *a3;
  *(a1 + 16) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = a4[1];
  *(a1 + 24) = *a4;
  *(a1 + 32) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  v11 = *a6;
  v10 = a6[1];
  *(a1 + 40) = *a5;
  *(a1 + 48) = v11;
  *(a1 + 56) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__hash_table(a1 + 64, a7);
  return a1;
}

void *std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>::~tuple(void *a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table((a1 + 8));
  v2 = a1[7];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = a1[4];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = a1[2];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return a1;
}

uint64_t _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2ELm3ELm4EEEEJN3MIL17IRPixelFormatTypeENS_10shared_ptrINS_6vectorIPKNS3_11IRDimensionENS_9allocatorIS9_EEEEEENS5_INS6_IPKNS3_10IRPropertyENSA_ISG_EEEEEESJ_NS_13unordered_mapINS_12basic_stringIcNS_11char_traitsIcEENSA_IcEEEENS5_IKNS3_7IRValueEEENS_4hashISP_EENS_8equal_toISP_EENSA_INS_4pairIKSP_SS_EEEEEEEEC2B8ne200100IJLm0ELm1ELm2ELm3ELm4EEJS4_SD_SJ_SJ_S11_EJEJEJRS4_RSD_RSJ_S16_S11_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENS18_IJDpT2_EEEDpOT3_(uint64_t a1, _DWORD *a2, void *a3, void *a4, void *a5, uint64_t *a6)
{
  *a1 = *a2;
  v7 = a3[1];
  *(a1 + 8) = *a3;
  *(a1 + 16) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v8 = a4[1];
  *(a1 + 24) = *a4;
  *(a1 + 32) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = a5[1];
  *(a1 + 40) = *a5;
  *(a1 + 48) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__hash_table(a1 + 56, a6);
  return a1;
}

void *std::tuple<MIL::IRPixelFormatType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>::~tuple(void *a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table((a1 + 7));
  v2 = a1[6];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = a1[4];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = a1[2];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return a1;
}

uint64_t _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2ELm3ELm4ELm5EEEEJN3MIL10IRDataTypeENS_10shared_ptrINS_6vectorIPKNS3_11IRDimensionENS_9allocatorIS9_EEEEEENS5_INS6_IPKNS3_10IRPropertyENSA_ISG_EEEEEESJ_SG_NS_13unordered_mapINS_12basic_stringIcNS_11char_traitsIcEENSA_IcEEEENS5_IKNS3_7IRValueEEENS_4hashISP_EENS_8equal_toISP_EENSA_INS_4pairIKSP_SS_EEEEEEEEC2B8ne200100IJLm0ELm1ELm2ELm3ELm4ELm5EEJS4_SD_SJ_SJ_SG_S11_EJEJEJRS4_RSD_RSJ_S16_RSG_S11_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENS19_IJDpT2_EEEDpOT3_(uint64_t a1, _DWORD *a2, void *a3, void *a4, void *a5, void *a6, uint64_t *a7)
{
  *a1 = *a2;
  v8 = a3[1];
  *(a1 + 8) = *a3;
  *(a1 + 16) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = a4[1];
  *(a1 + 24) = *a4;
  *(a1 + 32) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  v10 = a5[1];
  *(a1 + 40) = *a5;
  *(a1 + 48) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 56) = *a6;
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__hash_table(a1 + 64, a7);
  return a1;
}

void *std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>::~tuple(void *a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table((a1 + 8));
  v2 = a1[6];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = a1[4];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = a1[2];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return a1;
}

BOOL std::operator==[abi:ne200100]<MIL::IRProperty const*,std::allocator<MIL::IRProperty const*>>(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v4 = *(a1 + 8) - v2;
  v5 = *a2;
  return v4 == *(a2 + 8) - v5 && memcmp(v2, v5, v4) == 0;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<MIL::IRConstantDimension const>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<MIL::IRConstantDimension const>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<MIL::IRConstantDimension const>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<MIL::IRConstantDimension const>>>>::__emplace_unique_key_args<unsigned long long,unsigned long long,decltype(nullptr)>(void *a1, unint64_t *a2)
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

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,std::unique_ptr<MIL::IRConstantDimension const>>,void *>>>::operator()[abi:ne200100](uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[3];
    __p[3] = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void *std::__hash_table<std::__hash_value_type<long long,std::unique_ptr<MIL::IRConstantProperty const>>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,std::unique_ptr<MIL::IRConstantProperty const>>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,std::unique_ptr<MIL::IRConstantProperty const>>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,std::unique_ptr<MIL::IRConstantProperty const>>>>::__emplace_unique_key_args<long long,long long,decltype(nullptr)>(void *a1, unint64_t *a2)
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

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<long long,std::unique_ptr<MIL::IRConstantProperty const>>,void *>>>::operator()[abi:ne200100](uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[3];
    __p[3] = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t **std::__hash_table<std::__hash_value_type<unsigned char,std::unique_ptr<MIL::IRConstantProperty const>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::unique_ptr<MIL::IRConstantProperty const>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::unique_ptr<MIL::IRConstantProperty const>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::unique_ptr<MIL::IRConstantProperty const>>>>::__emplace_unique_key_args<unsigned char,unsigned char,decltype(nullptr)>(void *a1, unsigned __int8 *a2)
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
      v5 = v2 % a1[1];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
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

  if (*(v7 + 16) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<MIL::IRConstantProperty const>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<MIL::IRConstantProperty const>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<MIL::IRConstantProperty const>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<MIL::IRConstantProperty const>>>>::__emplace_unique_key_args<unsigned long long,unsigned long long,decltype(nullptr)>(void *a1, unint64_t *a2)
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

void *std::__hash_table<std::__hash_value_type<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*> const>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::unique_ptr<MIL::IRTensorValueType const>>,std::__unordered_map_hasher<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*> const>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::__hash_value_type<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*> const>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::unique_ptr<MIL::IRTensorValueType const>>,std::hash<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*> const>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>>,std::equal_to<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*> const>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>>,true>,std::__unordered_map_equal<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*> const>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::__hash_value_type<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*> const>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::unique_ptr<MIL::IRTensorValueType const>>,std::equal_to<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*> const>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>>,std::hash<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*> const>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>>,true>,std::allocator<std::__hash_value_type<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*> const>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::unique_ptr<MIL::IRTensorValueType const>>>>::__emplace_unique_key_args<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*> const>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*> const>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,decltype(nullptr)>(void *a1, int *a2)
{
  v4 = std::hash<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*> const>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>>::operator()(a1, a2);
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
    std::__hash_table<std::__hash_value_type<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*> const>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::unique_ptr<MIL::IRTensorValueType const>>,std::__unordered_map_hasher<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*> const>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::__hash_value_type<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*> const>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::unique_ptr<MIL::IRTensorValueType const>>,std::hash<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*> const>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>>,std::equal_to<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*> const>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>>,true>,std::__unordered_map_equal<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*> const>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::__hash_value_type<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*> const>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::unique_ptr<MIL::IRTensorValueType const>>,std::equal_to<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*> const>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>>,std::hash<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*> const>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>>,true>,std::allocator<std::__hash_value_type<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*> const>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::unique_ptr<MIL::IRTensorValueType const>>>>::__construct_node_hash<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*> const>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,decltype(nullptr)>();
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

  LOBYTE(v4) = std::equal_to<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*> const>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>>::operator()(v4, (v11 + 2), a2);
  if ((v4 & 1) == 0)
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_217FE5E74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11)
{
  if (a10)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*> const>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::unique_ptr<MIL::IRTensorValueType const>>,void *>>>::operator()[abi:ne200100](&a11, a10);
  }

  _Unwind_Resume(exception_object);
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*> const>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::unique_ptr<MIL::IRTensorValueType const>>,void *>>>::operator()[abi:ne200100](uint64_t a1, void *a2)
{
  if (*(a1 + 8) == 1)
  {
    v3 = a2[10];
    a2[10] = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table((a2 + 5));
    v4 = a2[4];
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

void *std::__hash_table<std::__hash_value_type<std::pair<MIL::IRValueType const*,MIL::IRDimension const*>,std::unique_ptr<MIL::IRListValueType const>>,std::__unordered_map_hasher<std::pair<MIL::IRValueType const*,MIL::IRDimension const*>,std::__hash_value_type<std::pair<MIL::IRValueType const*,MIL::IRDimension const*>,std::unique_ptr<MIL::IRListValueType const>>,std::hash<std::pair<MIL::IRValueType const*,MIL::IRDimension const*>>,std::equal_to<std::pair<MIL::IRValueType const*,MIL::IRDimension const*>>,true>,std::__unordered_map_equal<std::pair<MIL::IRValueType const*,MIL::IRDimension const*>,std::__hash_value_type<std::pair<MIL::IRValueType const*,MIL::IRDimension const*>,std::unique_ptr<MIL::IRListValueType const>>,std::equal_to<std::pair<MIL::IRValueType const*,MIL::IRDimension const*>>,std::hash<std::pair<MIL::IRValueType const*,MIL::IRDimension const*>>,true>,std::allocator<std::__hash_value_type<std::pair<MIL::IRValueType const*,MIL::IRDimension const*>,std::unique_ptr<MIL::IRListValueType const>>>>::__emplace_unique_key_args<std::pair<MIL::IRValueType const*,MIL::IRDimension const*>,std::pair<MIL::IRValueType const*,MIL::IRDimension const*>,decltype(nullptr)>(void *a1, unint64_t *a2)
{
  v5 = *a2;
  v4 = a2[1];
  v14 = v5;
  MIL::Util::HashCombine(&v14, v4);
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_22;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v14;
    if (v14 >= *&v6)
    {
      v8 = v14 % *&v6;
    }
  }

  else
  {
    v8 = (*&v6 - 1) & v14;
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_22:
    operator new();
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v14)
    {
      break;
    }

    if (v7.u32[0] > 1uLL)
    {
      if (v11 >= *&v6)
      {
        v11 %= *&v6;
      }
    }

    else
    {
      v11 &= *&v6 - 1;
    }

    if (v11 != v8)
    {
      goto LABEL_22;
    }

LABEL_21:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_22;
    }
  }

  if (v10[2] != *a2 || v10[3] != a2[1])
  {
    goto LABEL_21;
  }

  return v10;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::pair<MIL::IRValueType const*,MIL::IRDimension const*>,std::unique_ptr<MIL::IRListValueType const>>,void *>>>::operator()[abi:ne200100](uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[4];
    __p[4] = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

const void ***std::__hash_table<std::__hash_value_type<std::shared_ptr<std::vector<MIL::IRValueType const*>>,std::unique_ptr<MIL::IRTupleValueType const>>,std::__unordered_map_hasher<std::shared_ptr<std::vector<MIL::IRValueType const*>>,std::__hash_value_type<std::shared_ptr<std::vector<MIL::IRValueType const*>>,std::unique_ptr<MIL::IRTupleValueType const>>,std::hash<std::shared_ptr<std::vector<MIL::IRValueType const*>>>,std::equal_to<std::shared_ptr<std::vector<MIL::IRValueType const*>>>,true>,std::__unordered_map_equal<std::shared_ptr<std::vector<MIL::IRValueType const*>>,std::__hash_value_type<std::shared_ptr<std::vector<MIL::IRValueType const*>>,std::unique_ptr<MIL::IRTupleValueType const>>,std::equal_to<std::shared_ptr<std::vector<MIL::IRValueType const*>>>,std::hash<std::shared_ptr<std::vector<MIL::IRValueType const*>>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<std::vector<MIL::IRValueType const*>>,std::unique_ptr<MIL::IRTupleValueType const>>>>::__emplace_unique_key_args<std::shared_ptr<std::vector<MIL::IRValueType const*>>,std::shared_ptr<std::vector<MIL::IRValueType const*>>,decltype(nullptr)>(void *a1, unint64_t ****a2)
{
  v4 = std::hash<std::shared_ptr<std::vector<MIL::IRValueType const*>>>::operator()(a1, a2);
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

  LOBYTE(v4) = std::equal_to<std::shared_ptr<std::vector<MIL::IRValueType const*>>>::operator()(v4, v11 + 2, a2);
  if ((v4 & 1) == 0)
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_217FE651C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::shared_ptr<std::vector<MIL::IRValueType const*>>,std::unique_ptr<MIL::IRTupleValueType const>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::shared_ptr<std::vector<MIL::IRValueType const*>>,std::unique_ptr<MIL::IRTupleValueType const>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::shared_ptr<std::vector<MIL::IRValueType const*>>,std::unique_ptr<MIL::IRTupleValueType const>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::shared_ptr<std::vector<MIL::IRValueType const*>>,std::unique_ptr<MIL::IRTupleValueType const>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::shared_ptr<std::vector<MIL::IRValueType const*>> const,std::unique_ptr<MIL::IRTupleValueType const>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__destroy_at[abi:ne200100]<std::pair<std::shared_ptr<std::vector<MIL::IRValueType const*>> const,std::unique_ptr<MIL::IRTupleValueType const>>,0>(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void *std::__hash_table<std::__hash_value_type<std::pair<MIL::IRValueType const*,MIL::IRValueType const*>,std::unique_ptr<MIL::IRDictionaryValueType const>>,std::__unordered_map_hasher<std::pair<MIL::IRValueType const*,MIL::IRValueType const*>,std::__hash_value_type<std::pair<MIL::IRValueType const*,MIL::IRValueType const*>,std::unique_ptr<MIL::IRDictionaryValueType const>>,std::hash<std::pair<MIL::IRValueType const*,MIL::IRValueType const*>>,std::equal_to<std::pair<MIL::IRValueType const*,MIL::IRValueType const*>>,true>,std::__unordered_map_equal<std::pair<MIL::IRValueType const*,MIL::IRValueType const*>,std::__hash_value_type<std::pair<MIL::IRValueType const*,MIL::IRValueType const*>,std::unique_ptr<MIL::IRDictionaryValueType const>>,std::equal_to<std::pair<MIL::IRValueType const*,MIL::IRValueType const*>>,std::hash<std::pair<MIL::IRValueType const*,MIL::IRValueType const*>>,true>,std::allocator<std::__hash_value_type<std::pair<MIL::IRValueType const*,MIL::IRValueType const*>,std::unique_ptr<MIL::IRDictionaryValueType const>>>>::__emplace_unique_key_args<std::pair<MIL::IRValueType const*,MIL::IRValueType const*>,std::pair<MIL::IRValueType const*,MIL::IRValueType const*>,decltype(nullptr)>(void *a1, unint64_t *a2)
{
  v5 = *a2;
  v4 = a2[1];
  v14 = v5;
  MIL::Util::HashCombine(&v14, v4);
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_22;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v14;
    if (v14 >= *&v6)
    {
      v8 = v14 % *&v6;
    }
  }

  else
  {
    v8 = (*&v6 - 1) & v14;
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_22:
    operator new();
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v14)
    {
      break;
    }

    if (v7.u32[0] > 1uLL)
    {
      if (v11 >= *&v6)
      {
        v11 %= *&v6;
      }
    }

    else
    {
      v11 &= *&v6 - 1;
    }

    if (v11 != v8)
    {
      goto LABEL_22;
    }

LABEL_21:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_22;
    }
  }

  if (v10[2] != *a2 || v10[3] != a2[1])
  {
    goto LABEL_21;
  }

  return v10;
}

void *std::__hash_table<std::__hash_value_type<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::unique_ptr<MIL::IRTensorBufferValueType const>>,std::__unordered_map_hasher<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::__hash_value_type<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::unique_ptr<MIL::IRTensorBufferValueType const>>,std::hash<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>>,std::equal_to<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>>,true>,std::__unordered_map_equal<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::__hash_value_type<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::unique_ptr<MIL::IRTensorBufferValueType const>>,std::equal_to<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>>,std::hash<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>>,true>,std::allocator<std::__hash_value_type<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::unique_ptr<MIL::IRTensorBufferValueType const>>>>::__emplace_unique_key_args<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,decltype(nullptr)>(void *a1, int *a2)
{
  v4 = std::hash<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>>::operator()(a1, a2);
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

  LOBYTE(v4) = std::equal_to<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>>::operator()(v4, (v11 + 2), a2);
  if ((v4 & 1) == 0)
  {
    goto LABEL_17;
  }

  return v11;
}

uint64_t std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul>,MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>::__tuple_impl(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__hash_table(a1 + 64, (a2 + 64));
  return a1;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::unique_ptr<MIL::IRTensorBufferValueType const>>,void *>>>::operator()[abi:ne200100](uint64_t a1, void *a2)
{
  if (*(a1 + 8) == 1)
  {
    v3 = a2[15];
    a2[15] = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table((a2 + 10));
    v4 = a2[9];
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    v5 = a2[6];
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    v6 = a2[4];
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

void *std::__hash_table<std::__hash_value_type<std::tuple<MIL::IRPixelFormatType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::unique_ptr<MIL::IRPixelBufferValueType const>>,std::__unordered_map_hasher<std::tuple<MIL::IRPixelFormatType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::__hash_value_type<std::tuple<MIL::IRPixelFormatType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::unique_ptr<MIL::IRPixelBufferValueType const>>,std::hash<std::tuple<MIL::IRPixelFormatType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>>,std::equal_to<std::tuple<MIL::IRPixelFormatType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>>,true>,std::__unordered_map_equal<std::tuple<MIL::IRPixelFormatType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::__hash_value_type<std::tuple<MIL::IRPixelFormatType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::unique_ptr<MIL::IRPixelBufferValueType const>>,std::equal_to<std::tuple<MIL::IRPixelFormatType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>>,std::hash<std::tuple<MIL::IRPixelFormatType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>>,true>,std::allocator<std::__hash_value_type<std::tuple<MIL::IRPixelFormatType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::unique_ptr<MIL::IRPixelBufferValueType const>>>>::__emplace_unique_key_args<std::tuple<MIL::IRPixelFormatType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::tuple<MIL::IRPixelFormatType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,decltype(nullptr)>(void *a1, void *a2)
{
  v4 = std::hash<std::tuple<MIL::IRPixelFormatType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>>::operator()(a1, a2);
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

  LOBYTE(v4) = std::equal_to<std::tuple<MIL::IRPixelFormatType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>>::operator()(v4, (v11 + 2), a2);
  if ((v4 & 1) == 0)
  {
    goto LABEL_17;
  }

  return v11;
}

uint64_t std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul>,MIL::IRPixelFormatType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>::__tuple_impl(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__hash_table(a1 + 56, (a2 + 56));
  return a1;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::tuple<MIL::IRPixelFormatType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::unique_ptr<MIL::IRPixelBufferValueType const>>,void *>>>::operator()[abi:ne200100](uint64_t a1, void *a2)
{
  if (*(a1 + 8) == 1)
  {
    v3 = a2[14];
    a2[14] = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table((a2 + 9));
    v4 = a2[8];
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    v5 = a2[6];
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    v6 = a2[4];
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

void *std::__hash_table<std::__hash_value_type<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::unique_ptr<MIL::IRCircularBufferValueType const>>,std::__unordered_map_hasher<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::__hash_value_type<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::unique_ptr<MIL::IRCircularBufferValueType const>>,std::hash<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>>,std::equal_to<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>>,true>,std::__unordered_map_equal<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::__hash_value_type<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::unique_ptr<MIL::IRCircularBufferValueType const>>,std::equal_to<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>>,std::hash<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>>,true>,std::allocator<std::__hash_value_type<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::unique_ptr<MIL::IRCircularBufferValueType const>>>>::__emplace_unique_key_args<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,decltype(nullptr)>(void *a1, int *a2)
{
  v4 = std::hash<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>>::operator()(a1, a2);
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

  LOBYTE(v4) = std::equal_to<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>>::operator()(v4, (v11 + 2), a2);
  if ((v4 & 1) == 0)
  {
    goto LABEL_17;
  }

  return v11;
}

uint64_t std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul>,MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>::__tuple_impl(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a1 + 56) = *(a2 + 56);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__hash_table(a1 + 64, (a2 + 64));
  return a1;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::unique_ptr<MIL::IRCircularBufferValueType const>>,void *>>>::operator()[abi:ne200100](uint64_t a1, void *a2)
{
  if (*(a1 + 8) == 1)
  {
    v3 = a2[15];
    a2[15] = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table((a2 + 10));
    v4 = a2[8];
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    v5 = a2[6];
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    v6 = a2[4];
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

void *std::__hash_table<std::__hash_value_type<MIL::IRValueType const*,std::unique_ptr<MIL::IRStateValueType const>>,std::__unordered_map_hasher<MIL::IRValueType const*,std::__hash_value_type<MIL::IRValueType const*,std::unique_ptr<MIL::IRStateValueType const>>,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,true>,std::__unordered_map_equal<MIL::IRValueType const*,std::__hash_value_type<MIL::IRValueType const*,std::unique_ptr<MIL::IRStateValueType const>>,std::equal_to<MIL::IRValueType const*>,std::hash<MIL::IRValueType const*>,true>,std::allocator<std::__hash_value_type<MIL::IRValueType const*,std::unique_ptr<MIL::IRStateValueType const>>>>::__emplace_unique_key_args<MIL::IRValueType const*,MIL::IRValueType const*,decltype(nullptr)>(void *a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != *a2)
  {
    goto LABEL_17;
  }

  return v9;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<MIL::IRValueType const*,std::unique_ptr<MIL::IRStateValueType const>>,void *>>>::operator()[abi:ne200100](uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[3];
    __p[3] = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t MIL::IsEqualOrStrongerType(MIL *this, const MIL::IRValueType *a2, const MIL::IRValueType *a3)
{
  if (this == a2)
  {
    return 1;
  }

  v3 = a2;
  v4 = this;
  while (1)
  {
    v5 = (*(*v4 + 24))(v4);
    if (v5)
    {
      v16 = v5;
      HasEqualOrStrongerShape = (*(*v3 + 24))(v3);
      if (!HasEqualOrStrongerShape)
      {
        return HasEqualOrStrongerShape;
      }

      if ((*(*v16 + 88))(v16) == 18 || (v17 = (*(*v16 + 88))(v16), v17 == (*(*HasEqualOrStrongerShape + 88))(HasEqualOrStrongerShape)))
      {
        v18 = (*(*v16 + 96))(v16);
        v71 = 0;
        v72 = 0;
        v70 = 0;
        std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&v70, *v18, v18[1], (v18[1] - *v18) >> 3);
        v19 = (*(*HasEqualOrStrongerShape + 96))(HasEqualOrStrongerShape);
        v67 = 0;
        v68 = 0;
        v69 = 0;
        std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&v67, *v19, v19[1], (v19[1] - *v19) >> 3);
        v20 = (*(*v16 + 104))(v16);
        v64 = 0;
        v65 = 0;
        v66 = 0;
        std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&v64, v70, v71, (v71 - v70) >> 3);
        v21 = (*(*HasEqualOrStrongerShape + 104))(HasEqualOrStrongerShape);
        __p = 0;
        v62 = 0;
        v63 = 0;
        std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&__p, v67, v68, (v68 - v67) >> 3);
        if (__p)
        {
          v62 = __p;
          operator delete(__p);
        }

        if (v64)
        {
          v65 = v64;
          operator delete(v64);
        }

        if (v67)
        {
          v68 = v67;
          operator delete(v67);
        }

        if (v70)
        {
          v71 = v70;
          operator delete(v70);
        }

        return HasEqualOrStrongerShape;
      }

      return 0;
    }

    v6 = (*(*v4 + 32))(v4);
    if (!v6)
    {
      break;
    }

    v7 = v6;
    HasEqualOrStrongerShape = (*(*v3 + 32))(v3);
    if (!HasEqualOrStrongerShape)
    {
      return HasEqualOrStrongerShape;
    }

    v9 = (*(*v7 + 72))(v7);
    v10 = (*(*v9 + 16))(v9);
    if (v10)
    {
      v11 = v10;
      v12 = (*(*HasEqualOrStrongerShape + 72))(HasEqualOrStrongerShape);
      v13 = (*(*v12 + 16))(v12);
      if (!v13)
      {
        return 0;
      }

      v14 = v13;
      v15 = (*(*v11 + 48))(v11);
      if (v15 != (*(*v14 + 48))(v14))
      {
        return 0;
      }
    }

    v4 = (*(*v7 + 64))(v7);
    v3 = (*(*HasEqualOrStrongerShape + 64))(HasEqualOrStrongerShape);
    if (v4 == v3)
    {
      return 1;
    }
  }

  v22 = (*(*v4 + 40))(v4);
  if (!v22)
  {
    v35 = (*(*v4 + 48))(v4);
    if (v35)
    {
      v36 = v35;
      v37 = (*(*v3 + 48))(v3);
      if (v37)
      {
      }

      return 0;
    }

    v40 = MIL::IRValueType::TryCastAsMemoryLayoutType(v4);
    if (!v40)
    {
      goto LABEL_54;
    }

    v41 = v40;
    v42 = MIL::IRMemoryLayoutValueType::TryAsTensorBufferType(v40);
    v43 = MIL::IRMemoryLayoutValueType::TryAsPixelBufferType(v41);
    if (v42)
    {
      v44 = MIL::IRValueType::TryCastAsMemoryLayoutType(v3);
      if (v44)
      {
        v45 = MIL::IRMemoryLayoutValueType::TryAsTensorBufferType(v44);
        if (v45)
        {
        }
      }

      return 0;
    }

    v47 = v43;
    if (v43)
    {
      v48 = MIL::IRValueType::TryCastAsMemoryLayoutType(v3);
      if (v48)
      {
        v49 = MIL::IRMemoryLayoutValueType::TryAsPixelBufferType(v48);
        if (v49)
        {
        }
      }

      return 0;
    }

    v51 = MIL::IRMemoryLayoutValueType::TryAsCircularBufferType(v41);
    if (v51)
    {
      v52 = v51;
      v53 = MIL::IRValueType::TryCastAsMemoryLayoutType(v3);
      if (v53)
      {
        v54 = MIL::IRMemoryLayoutValueType::TryAsCircularBufferType(v53);
        if (v54)
        {
        }
      }
    }

    else
    {
LABEL_54:
      v56 = MIL::IRValueType::TryCastAsStateType(v4);
      if (!v56)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Unsupported MIL type for comparison.");
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v57 = v56;
      v58 = MIL::IRValueType::TryCastAsStateType(v3);
      if (v58)
      {
      }
    }

    return 0;
  }

  v23 = v22;
  v24 = (*(*v3 + 40))(v3);
  if (!v24)
  {
    return 0;
  }

  v25 = v24;
  v26 = (*(*v23 + 64))(v23);
  v27 = v26[1] - *v26;
  v28 = (*(*v25 + 64))(v25);
  if (v27 != v28[1] - *v28)
  {
    return 0;
  }

  v29 = (*(*v23 + 64))(v23);
  if (v29[1] == *v29)
  {
    return 1;
  }

  v30 = 0;
  do
  {
    v31 = *(*(*(*v23 + 64))(v23) + 8 * v30);
    v32 = (*(*v25 + 64))(v25);
    HasEqualOrStrongerShape = MIL::IsEqualOrStrongerType(v31, *(*v32 + 8 * v30), v33);
    if ((HasEqualOrStrongerShape & 1) == 0)
    {
      break;
    }

    ++v30;
    v34 = (*(*v23 + 64))(v23);
  }

  while (v30 < (v34[1] - *v34) >> 3);
  return HasEqualOrStrongerShape;
}

uint64_t anonymous namespace::IsEqualOrStrongerDictType(_anonymous_namespace_ *this, const MIL::IRDictionaryValueType *a2, const MIL::IRDictionaryValueType *a3)
{
  v5 = (*(*this + 64))(this, a2, a3);
  v6 = (*(*a2 + 64))(a2);
  result = MIL::IsEqualOrStrongerType(v5, v6, v7);
  if (result)
  {
    v9 = (*(*this + 72))(this);
    v10 = (*(*a2 + 72))(a2);

    return MIL::IsEqualOrStrongerType(v9, v10, v11);
  }

  return result;
}

uint64_t anonymous namespace::IsEqualOrStrongerTensorBufferType(_anonymous_namespace_ *this, const MIL::IRTensorBufferValueType *a2, const MIL::IRTensorBufferValueType *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  if (MIL::IRTensorBufferValueType::GetDataType(this) != 18)
  {
    DataType = MIL::IRTensorBufferValueType::GetDataType(this);
    if (DataType != MIL::IRTensorBufferValueType::GetDataType(a2))
    {
      return 0;
    }
  }

  if (!result)
  {
    return result;
  }

  v8 = MIL::IRTensorBufferValueType::TryGetStrides(a2) != 0;
  if (v8 == (MIL::IRTensorBufferValueType::TryGetStrides(this) == 0))
  {
    return 0;
  }

  if (MIL::IRTensorBufferValueType::TryGetStrides(a2) && MIL::IRTensorBufferValueType::TryGetStrides(this))
  {
    Strides = MIL::IRTensorBufferValueType::GetStrides(this);
    v20 = 0;
    v21 = 0;
    v19 = 0;
    std::vector<MIL::IRProperty const*>::__init_with_size[abi:ne200100]<MIL::IRProperty const**,MIL::IRProperty const**>(&v19, *Strides, Strides[1], (Strides[1] - *Strides) >> 3);
    v10 = MIL::IRTensorBufferValueType::GetStrides(a2);
    __p = 0;
    v17 = 0;
    v18 = 0;
    std::vector<MIL::IRProperty const*>::__init_with_size[abi:ne200100]<MIL::IRProperty const**,MIL::IRProperty const**>(&__p, *v10, v10[1], (v10[1] - *v10) >> 3);
    if (__p)
    {
      v17 = __p;
      operator delete(__p);
    }

    if (v19)
    {
      v20 = v19;
      operator delete(v19);
    }

    if (!IsEqualOrStrongerPropertiesVec)
    {
      return 0;
    }
  }

  v12 = MIL::IRTensorBufferValueType::TryGetRowAlignmentInBytes(a2) != 0;
  if (v12 == (MIL::IRTensorBufferValueType::TryGetRowAlignmentInBytes(this) == 0))
  {
    return 0;
  }

  if (!MIL::IRTensorBufferValueType::TryGetRowAlignmentInBytes(a2) || !MIL::IRTensorBufferValueType::TryGetRowAlignmentInBytes(this))
  {
    return 1;
  }

  RowAlignmentInBytes = MIL::IRTensorBufferValueType::TryGetRowAlignmentInBytes(this);
  v14 = MIL::IRTensorBufferValueType::TryGetRowAlignmentInBytes(a2);
  v23 = RowAlignmentInBytes;
  v20 = 0;
  v21 = 0;
  v19 = 0;
  std::vector<MIL::IRProperty const*>::__init_with_size[abi:ne200100]<MIL::IRProperty const* const*,MIL::IRProperty const* const*>(&v19, &v23, &v24, 1uLL);
  v22 = v14;
  v17 = 0;
  v18 = 0;
  __p = 0;
  std::vector<MIL::IRProperty const*>::__init_with_size[abi:ne200100]<MIL::IRProperty const* const*,MIL::IRProperty const* const*>(&__p, &v22, &v23, 1uLL);
  if (__p)
  {
    v17 = __p;
    operator delete(__p);
  }

  if (v19)
  {
    v20 = v19;
    operator delete(v19);
  }

  return v15;
}

void sub_217FE81C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t anonymous namespace::IsEqualOrStrongerPixelBufferType(_anonymous_namespace_ *this, const MIL::IRPixelBufferValueType *a2, const MIL::IRPixelBufferValueType *a3)
{
  if (MIL::IRPixelBufferValueType::GetPixelFormatType(this) != 20)
  {
    PixelFormatType = MIL::IRPixelBufferValueType::GetPixelFormatType(this);
    if (PixelFormatType != MIL::IRPixelBufferValueType::GetPixelFormatType(a2))
    {
      return 0;
    }
  }

  Shape = MIL::IRPixelBufferValueType::GetShape(this);
  v19 = 0;
  v20 = 0;
  v18 = 0;
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&v18, *Shape, Shape[1], (Shape[1] - *Shape) >> 3);
  v7 = MIL::IRPixelBufferValueType::GetShape(a2);
  __p = 0;
  v16 = 0;
  v17 = 0;
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&__p, *v7, v7[1], (v7[1] - *v7) >> 3);
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }

  if (v18)
  {
    v19 = v18;
    operator delete(v18);
  }

  if (!HasEqualOrStrongerShape)
  {
    return 0;
  }

  BytesPerRow = MIL::IRPixelBufferValueType::TryGetBytesPerRow(this);
  v11 = MIL::IRPixelBufferValueType::TryGetBytesPerRow(a2);
  if (!BytesPerRow)
  {
    if (v11)
    {
      return 0;
    }
  }

  if (BytesPerRow && v11)
  {
  }

  if (!BytesPerRow)
  {
    return 1;
  }

  if (v11)
  {
    return 1;
  }

  v13 = *BytesPerRow;
  if (*(BytesPerRow + 8) == *BytesPerRow)
  {
    return 1;
  }

  v14 = 0;
  while (1)
  {
    result = MIL::IRProperty::TryAsUnknown(v13[v14]);
    if (!result)
    {
      break;
    }

    if ((MIL::IRUnknownProperty::IsVariadic(result) & 1) == 0)
    {
      return 0;
    }

    ++v14;
    v13 = *BytesPerRow;
    if (v14 >= (*(BytesPerRow + 8) - *BytesPerRow) >> 3)
    {
      return 1;
    }
  }

  return result;
}

void sub_217FE8360(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

BOOL anonymous namespace::IsEqualOrStrongerCircularBufferType(_anonymous_namespace_ *this, const MIL::IRCircularBufferValueType *a2, const MIL::IRCircularBufferValueType *a3)
{
  if (MIL::IRCircularBufferValueType::GetDataType(this) != 18)
  {
    DataType = MIL::IRCircularBufferValueType::GetDataType(this);
    if (DataType != MIL::IRCircularBufferValueType::GetDataType(a2))
    {
      return 0;
    }
  }

  WrapDim = MIL::IRCircularBufferValueType::GetWrapDim(this);
  if (!MIL::IRProperty::TryAsUnknown(WrapDim))
  {
    v11 = MIL::IRCircularBufferValueType::GetWrapDim(a2);
    if (MIL::IRProperty::TryAsUnknown(v11))
    {
      return 0;
    }

    v12 = MIL::IRCircularBufferValueType::GetWrapDim(this);
    v13 = MIL::IRProperty::TryAsConstant(v12);
    Int64ScalarValue = MIL::IRConstantProperty::GetInt64ScalarValue(v13);
    v15 = MIL::IRCircularBufferValueType::GetWrapDim(a2);
    v16 = MIL::IRProperty::TryAsConstant(v15);
    if (Int64ScalarValue != MIL::IRConstantProperty::GetInt64ScalarValue(v16))
    {
      return 0;
    }
  }

  {
    return 0;
  }

  Strides = MIL::IRCircularBufferValueType::GetStrides(this);
  v22 = 0;
  v23 = 0;
  v21 = 0;
  std::vector<MIL::IRProperty const*>::__init_with_size[abi:ne200100]<MIL::IRProperty const**,MIL::IRProperty const**>(&v21, *Strides, Strides[1], (Strides[1] - *Strides) >> 3);
  v9 = MIL::IRCircularBufferValueType::GetStrides(a2);
  __p = 0;
  v19 = 0;
  v20 = 0;
  std::vector<MIL::IRProperty const*>::__init_with_size[abi:ne200100]<MIL::IRProperty const**,MIL::IRProperty const**>(&__p, *v9, v9[1], (v9[1] - *v9) >> 3);
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

  return IsEqualOrStrongerPropertiesVec;
}

void sub_217FE84D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t anonymous namespace::IsEqualOrStrongerStateType(_anonymous_namespace_ *this, const MIL::IRStateValueType *a2, const MIL::IRStateValueType *a3)
{
  WrappedType = MIL::IRStateValueType::GetWrappedType(this);
  v5 = MIL::IRStateValueType::GetWrappedType(a2);

  return MIL::IsEqualOrStrongerType(WrappedType, v5, v6);
}

const MIL::IRValueType *MIL::GetStrongestCompatibleType(MIL *this, MIL::MILContext *a2, const MIL::IRValueType *a3, const MIL::IRValueType *a4)
{
  v5 = a2;
  if ((MIL::IsEqualOrStrongerType(a2, a3, a3) & 1) == 0)
  {
    if (MIL::IsEqualOrStrongerType(a3, v5, v7))
    {
      return a3;
    }

    else
    {
      v8 = (*(*v5 + 24))(v5);
      v9 = (*(*a3 + 24))(a3);
      if (v8)
      {
        v10 = v9 == 0;
      }

      else
      {
        v10 = 1;
      }

      if (!v10)
      {
        v11 = v9;
        if ((*(*v8 + 104))(v8))
        {
          if ((*(*v11 + 104))(v11))
          {
            v12 = MIL::IRTensorValueType::Rank(v8);
            if (v12 == MIL::IRTensorValueType::Rank(v11))
            {
              v13 = (*(*v8 + 88))(v8);
              if (v13 == (*(*v11 + 88))(v11))
              {
                v14 = (*(*v8 + 96))(v8);
                v15 = (*(*v11 + 96))(v11);
                memset(__p, 0, sizeof(__p));
                std::vector<std::string const*>::reserve(__p, (v14[1] - *v14) >> 3);
                v16 = *v14;
                if (v14[1] != *v14)
                {
                  v17 = 0;
                  do
                  {
                    v18 = (*(**(v16 + 8 * v17) + 16))(*(v16 + 8 * v17));
                    v19 = (*(**(*v15 + 8 * v17) + 16))(*(*v15 + 8 * v17));
                    v20 = v19;
                    if (v18)
                    {
                      v21 = v19 == 0;
                    }

                    else
                    {
                      v21 = 1;
                    }

                    if (v21 || (v22 = (*(*v18 + 48))(v18), v22 != (*(*v20 + 48))(v20)))
                    {
                      v24 = MIL::IRUnknownDimension::Make(this, 0);
                      std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](__p, &v24);
                    }

                    else
                    {
                      v24 = v18;
                      std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](__p, &v24);
                    }

                    ++v17;
                    v16 = *v14;
                  }

                  while (v17 < (v14[1] - *v14) >> 3);
                }

                (*(*v8 + 88))(v8);
                MIL::IRTensorValueType::MakeWithShape();
              }
            }
          }
        }
      }

      return 0;
    }
  }

  return v5;
}

void sub_217FE88D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::string const*>>(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void MIL::GetTensorShapeWithDimensionsAllKnown(MIL *this@<X0>, const MIL::IRTensorValueType *a2@<X1>, const void **a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v4 = (*(*this + 96))(this, a2);
  std::vector<unsigned long long>::reserve(a3, (v4[1] - *v4) >> 3);
  v5 = *v4;
  v6 = v4[1];
  if (*v4 != v6)
  {
    do
    {
      v7 = (*(**v5 + 16))();
      if (!v7)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(exception, "IRTensorValueType contains unknown dimension.");
        exception->__vftable = (MEMORY[0x277D828F8] + 16);
        __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
      }

      v8 = (*(*v7 + 48))(v7);
      v10 = a3[1];
      v9 = a3[2];
      if (v10 >= v9)
      {
        v12 = *a3;
        v13 = v10 - *a3;
        v14 = v13 >> 3;
        v15 = (v13 >> 3) + 1;
        if (v15 >> 61)
        {
          std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
        }

        v16 = v9 - v12;
        if (v16 >> 2 > v15)
        {
          v15 = v16 >> 2;
        }

        if (v16 >= 0x7FFFFFFFFFFFFFF8)
        {
          v17 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v17 = v15;
        }

        if (v17)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(a3, v17);
        }

        *(8 * v14) = v8;
        v11 = 8 * v14 + 8;
        memcpy(0, v12, v13);
        v18 = *a3;
        *a3 = 0;
        a3[1] = v11;
        a3[2] = 0;
        if (v18)
        {
          operator delete(v18);
        }
      }

      else
      {
        *v10 = v8;
        v11 = (v10 + 1);
      }

      a3[1] = v11;
      v5 += 8;
    }

    while (v5 != v6);
  }
}

void sub_217FE8BD0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<unsigned long long>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(result, a2);
    }

    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

uint64_t *MIL::MakeDefaultStrides@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  result = a3;
  v6 = a1[1];
  v7 = (v6 - *a1) >> 3;
  v8 = *a2;
  v9 = a2[1];
  if (v7 != &v9[-*a2])
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "Length of shape and interleaveFactors must be equal.");
LABEL_19:
    __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
  }

  if (*a1 == v6)
  {
    *result = 0;
    result[1] = 0;
    result[2] = 0;
    return result;
  }

  if (v9 == v8)
  {
    v15 = 1;
    goto LABEL_15;
  }

  if (v7 <= 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = (v6 - *a1) >> 3;
  }

  v11 = 1;
  do
  {
    v13 = *v8++;
    v12 = v13;
    if (v13 != 1)
    {
      v14 = v11 == 1;
      v11 = v12;
      if (!v14)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::invalid_argument::invalid_argument[abi:ne200100](exception, "Found multiple interleave factors that are not 1.");
        goto LABEL_19;
      }
    }

    --v10;
  }

  while (v10);
  v15 = v11;
LABEL_15:
  result = std::vector<long long>::vector[abi:ne200100](result, v7);
  v17 = *result;
  v16 = result[1];
  v18 = v16 - *result;
  v19 = v18 >> 3;
  *(v16 - 8) = v15;
  if (v18 >> 3 != 1)
  {
    v20 = v17 - 16;
    v21 = *(v17 + v18 - 8);
    v22 = *a1 - 8;
    v23 = *a2 - 1;
    do
    {
      v21 += v21 * ((*(v22 + 8 * v19) - 1) / *(v23 + v19));
      *(v20 + 8 * v19--) = v21;
    }

    while (v19 != 1);
  }

  return result;
}

void MIL::MakeDefaultStrides(void *a1@<X0>, uint64_t *a2@<X8>)
{
  std::vector<unsigned char>::vector[abi:ne200100](__p, (a1[1] - *a1) >> 3);
  MIL::MakeDefaultStrides(a1, __p, a2);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_217FE8E80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MIL::MakeDefaultStrides(MIL::IRConstantProperty *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  std::vector<unsigned long long>::vector[abi:ne200100](v21, (a2[1] - *a2) >> 3);
  std::vector<unsigned char>::vector[abi:ne200100](__p, (a3[1] - *a3) >> 3);
  v8 = *a2;
  if (a2[1] != *a2)
  {
    v9 = 0;
    do
    {
      v10 = MIL::IRDimension::AsConstant(*(v8 + 8 * v9));
      v11 = (*(*v10 + 48))(v10);
      *(v21[0] + v9++) = v11;
      v8 = *a2;
    }

    while (v9 < (a2[1] - *a2) >> 3);
  }

  v12 = *a3;
  if (a3[1] != *a3)
  {
    v13 = 0;
    do
    {
      v14 = MIL::IRProperty::AsConstant(*(v12 + 8 * v13));
      UInt8ScalarValue = MIL::IRConstantProperty::GetUInt8ScalarValue(v14);
      *(__p[0] + v13++) = UInt8ScalarValue;
      v12 = *a3;
    }

    while (v13 < (a3[1] - *a3) >> 3);
  }

  MIL::MakeDefaultStrides(v21, __p, &v18);
  std::vector<MIL::IRProperty const*>::vector[abi:ne200100](a4, v19 - v18);
  v16 = v18;
  if (v19 != v18)
  {
    v17 = 0;
    do
    {
      *(*a4 + 8 * v17) = MIL::IRConstantProperty::MakeInt64Scalar(a1, v16[v17]);
      ++v17;
      v16 = v18;
    }

    while (v17 < v19 - v18);
  }

  if (v16)
  {
    v19 = v16;
    operator delete(v16);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v21[0])
  {
    v21[1] = v21[0];
    operator delete(v21[0]);
  }
}

void sub_217FE9020(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
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

void MIL::MakeDefaultStrides(MIL::IRConstantProperty *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  std::vector<MIL::IRProperty const*>::vector[abi:ne200100](__p, (a2[1] - *a2) >> 3);
  if (a2[1] != *a2)
  {
    v6 = 0;
    do
    {
      UInt8Scalar = MIL::IRConstantProperty::MakeUInt8Scalar(a1, 1);
      *(__p[0] + v6++) = UInt8Scalar;
    }

    while (v6 < (a2[1] - *a2) >> 3);
  }

  MIL::MakeDefaultStrides(a1, a2, __p, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_217FE9134(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *MIL::IsTensorBuffer(MIL *this, const MIL::IRValueType *a2)
{
  result = MIL::IRValueType::TryCastAsMemoryLayoutType(this);
  if (result)
  {
    v4 = MIL::IRValueType::TryCastAsMemoryLayoutType(this);
    return (MIL::IRMemoryLayoutValueType::TryAsTensorBufferType(v4) != 0);
  }

  return result;
}

void *MIL::IsPixelBuffer(MIL *this, const MIL::IRValueType *a2)
{
  result = MIL::IRValueType::TryCastAsMemoryLayoutType(this);
  if (result)
  {
    v4 = MIL::IRValueType::TryCastAsMemoryLayoutType(this);
    return (MIL::IRMemoryLayoutValueType::TryAsPixelBufferType(v4) != 0);
  }

  return result;
}

void *MIL::IsCircularBuffer(MIL *this, const MIL::IRValueType *a2)
{
  result = MIL::IRValueType::TryCastAsMemoryLayoutType(this);
  if (result)
  {
    v4 = MIL::IRValueType::TryCastAsMemoryLayoutType(this);
    return (MIL::IRMemoryLayoutValueType::TryAsCircularBufferType(v4) != 0);
  }

  return result;
}

uint64_t anonymous namespace::HasEqualOrStrongerShape(int a1, uint64_t *a2, int a3, void *a4)
{
  v7 = a1;
  if (a1)
  {
    result = 0;
    v9 = *a2;
    v10 = a2[1];
    if (v10 - *a2 != a4[1] - *a4 || (a3 & 1) == 0)
    {
      return result;
    }

    goto LABEL_15;
  }

  v11 = *a2;
  v12 = a2[1];
  if (((v12 - *a2) >> 3) - 1 > ((a4[1] - *a4) >> 3))
  {
    return 0;
  }

  if (v12 != v11)
  {
    v13 = 0;
    while ((*(**(v11 + 8 * v13) + 24))(*(v11 + 8 * v13)))
    {
      ++v13;
      v11 = *a2;
      v14 = a2[1] - *a2;
      if (v13 >= v14 >> 3)
      {
        v15 = (v14 >> 3) - 1;
        return v15 <= ((a4[1] - *a4) >> 3) - (a3 ^ 1u);
      }
    }

    v9 = *a2;
    v10 = a2[1];
LABEL_15:
    if (v10 != v9)
    {
      v16 = 0;
      while (((*(**(v9 + 8 * v16) + 32))(*(v9 + 8 * v16)) & 1) == 0)
      {
        v17 = *(*a2 + 8 * v16);
        v18 = *(*a4 + 8 * v16);
        v19 = (*(*v17 + 16))(v17);
        if (v19)
        {
          v20 = v19;
          result = (*(*v18 + 16))(v18);
          if (!result)
          {
            return result;
          }

          v21 = result;
          v22 = (*(*v20 + 48))(v20);
          if (v22 != (*(*v21 + 48))(v21))
          {
            return 0;
          }
        }

        else if ((*(*v17 + 32))(v17) & 1) == 0 && ((*(*v18 + 32))(v18))
        {
          return 0;
        }

        ++v16;
        v9 = *a2;
        if (v16 >= (a2[1] - *a2) >> 3)
        {
          break;
        }
      }
    }

    if ((v7 & 1) == 0)
    {
      v23 = *a2;
      v24 = (a2[1] - *a2) >> 3;
      if (v24 >= 2)
      {
        v25 = -1;
        v26 = 1;
        while (((*(**(v23 + 8 * (v24 + v25)) + 32))(*(v23 + 8 * (v24 + v25))) & 1) == 0)
        {
          v27 = *(*a2 + 8 * (v25 + ((a2[1] - *a2) >> 3)));
          v28 = *(*a4 + 8 * (v25 + ((a4[1] - *a4) >> 3)));
          v29 = (*(*v27 + 16))(v27);
          if (v29)
          {
            v30 = v29;
            result = (*(*v28 + 16))(v28);
            if (!result)
            {
              return result;
            }

            v31 = result;
            v32 = (*(*v30 + 48))(v30);
            if (v32 != (*(*v31 + 48))(v31))
            {
              return 0;
            }
          }

          else if ((*(*v27 + 32))(v27) & 1) == 0 && ((*(*v28 + 32))(v28))
          {
            return 0;
          }

          ++v26;
          v23 = *a2;
          v24 = (a2[1] - *a2) >> 3;
          --v25;
          result = 1;
          if (v26 >= v24)
          {
            return result;
          }
        }
      }
    }

    return 1;
  }

  v15 = -1;
  return v15 <= ((a4[1] - *a4) >> 3) - (a3 ^ 1u);
}

uint64_t anonymous namespace::HasEqualOrStrongerShape(_anonymous_namespace_ *this, const MIL::IRValueType *a2, const MIL::IRValueType *a3)
{
  if ((*(*this + 24))(this, a2, a3) && (*(*a2 + 24))(a2))
  {
    v6 = MIL::IRValueType::AsTensorType(this);
    v7 = (*(*v6 + 104))(v6);
    v8 = MIL::IRValueType::AsTensorType(this);
    v9 = (*(*v8 + 96))(v8);
    memset(v73, 0, sizeof(v73));
    std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(v73, *v9, v9[1], (v9[1] - *v9) >> 3);
    v10 = MIL::IRValueType::AsTensorType(a2);
    v11 = (*(*v10 + 104))(v10);
    v12 = MIL::IRValueType::AsTensorType(a2);
    v13 = (*(*v12 + 96))(v12);
    v70 = 0;
    v71 = 0;
    v72 = 0;
    std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&v70, *v13, v13[1], (v13[1] - *v13) >> 3);
    if (v70)
    {
      v71 = v70;
      operator delete(v70);
    }

    v15 = v73[0];
    if (v73[0])
    {
      v16 = v73;
LABEL_25:
      v16[1] = v15;
      operator delete(v15);
    }
  }

  else if (MIL::IsTensorBuffer(this, v5) && MIL::IsTensorBuffer(a2, v17))
  {
    v18 = MIL::IRValueType::AsMemoryLayoutType(this);
    v19 = MIL::IRMemoryLayoutValueType::AsTensorBufferType(v18);
    IsFixedRank = MIL::IRTensorBufferValueType::IsFixedRank(v19);
    v21 = MIL::IRValueType::AsMemoryLayoutType(this);
    v22 = MIL::IRMemoryLayoutValueType::AsTensorBufferType(v21);
    Shape = MIL::IRTensorBufferValueType::GetShape(v22);
    memset(v69, 0, sizeof(v69));
    std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(v69, *Shape, Shape[1], (Shape[1] - *Shape) >> 3);
    v24 = MIL::IRValueType::AsMemoryLayoutType(a2);
    v25 = MIL::IRMemoryLayoutValueType::AsTensorBufferType(v24);
    v26 = MIL::IRTensorBufferValueType::IsFixedRank(v25);
    v27 = MIL::IRValueType::AsMemoryLayoutType(a2);
    v28 = MIL::IRMemoryLayoutValueType::AsTensorBufferType(v27);
    v29 = MIL::IRTensorBufferValueType::GetShape(v28);
    __p = 0;
    v67 = 0;
    v68 = 0;
    std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&__p, *v29, v29[1], (v29[1] - *v29) >> 3);
    if (__p)
    {
      v67 = __p;
      operator delete(__p);
    }

    v15 = v69[0];
    if (v69[0])
    {
      v16 = v69;
      goto LABEL_25;
    }
  }

  else if (MIL::IsPixelBuffer(this, v17) && MIL::IsPixelBuffer(a2, v30))
  {
    v31 = MIL::IRValueType::AsMemoryLayoutType(this);
    v32 = MIL::IRMemoryLayoutValueType::AsPixelBufferType(v31);
    v33 = MIL::IRPixelBufferValueType::IsFixedRank(v32);
    v34 = MIL::IRValueType::AsMemoryLayoutType(this);
    v35 = MIL::IRMemoryLayoutValueType::AsPixelBufferType(v34);
    v36 = MIL::IRPixelBufferValueType::GetShape(v35);
    memset(v65, 0, sizeof(v65));
    std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(v65, *v36, v36[1], (v36[1] - *v36) >> 3);
    v37 = MIL::IRValueType::AsMemoryLayoutType(a2);
    v38 = MIL::IRMemoryLayoutValueType::AsPixelBufferType(v37);
    v39 = MIL::IRPixelBufferValueType::IsFixedRank(v38);
    v40 = MIL::IRValueType::AsMemoryLayoutType(a2);
    v41 = MIL::IRMemoryLayoutValueType::AsPixelBufferType(v40);
    v42 = MIL::IRPixelBufferValueType::GetShape(v41);
    v62 = 0;
    v63 = 0;
    v64 = 0;
    std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&v62, *v42, v42[1], (v42[1] - *v42) >> 3);
    if (v62)
    {
      v63 = v62;
      operator delete(v62);
    }

    v15 = v65[0];
    if (v65[0])
    {
      v16 = v65;
      goto LABEL_25;
    }
  }

  else
  {
    if (!MIL::IsCircularBuffer(this, v30) || !MIL::IsCircularBuffer(a2, v43))
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::invalid_argument::invalid_argument[abi:ne200100](exception, "HasEqualOrStrongerShape called with unsupported type.");
      __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
    }

    v44 = MIL::IRValueType::AsMemoryLayoutType(this);
    v45 = MIL::IRMemoryLayoutValueType::AsCircularBufferType(v44);
    v46 = MIL::IRCircularBufferValueType::IsFixedRank(v45);
    v47 = MIL::IRValueType::AsMemoryLayoutType(this);
    v48 = MIL::IRMemoryLayoutValueType::AsCircularBufferType(v47);
    v49 = MIL::IRCircularBufferValueType::GetShape(v48);
    memset(v61, 0, sizeof(v61));
    std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(v61, *v49, v49[1], (v49[1] - *v49) >> 3);
    v50 = MIL::IRValueType::AsMemoryLayoutType(a2);
    v51 = MIL::IRMemoryLayoutValueType::AsCircularBufferType(v50);
    v52 = MIL::IRCircularBufferValueType::IsFixedRank(v51);
    v53 = MIL::IRValueType::AsMemoryLayoutType(a2);
    v54 = MIL::IRMemoryLayoutValueType::AsCircularBufferType(v53);
    v55 = MIL::IRCircularBufferValueType::GetShape(v54);
    v58 = 0;
    v59 = 0;
    v60 = 0;
    std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&v58, *v55, v55[1], (v55[1] - *v55) >> 3);
    if (v58)
    {
      v59 = v58;
      operator delete(v58);
    }

    v15 = v61[0];
    if (v61[0])
    {
      v16 = v61;
      goto LABEL_25;
    }
  }

  return HasEqualOrStrongerShape;
}

void sub_217FE9AE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a18)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

BOOL anonymous namespace::IsEqualOrStrongerPropertiesVec(void ***a1, void ***a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = 1;
  while (v4 != v5)
  {
    v7 = MIL::IRProperty::TryAsUnknown(*v4);
    if (v7)
    {
      v8 = MIL::IRUnknownProperty::IsVariadic(v7) ^ 1;
      if (((v8 | v6) & 1) == 0)
      {
LABEL_41:
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "A property vector may contain only one variadic property.");
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v6 &= v8;
    }

    ++v4;
  }

  v9 = *a2;
  v10 = a2[1];
  v11 = 1;
  while (v9 != v10)
  {
    v12 = MIL::IRProperty::TryAsUnknown(*v9);
    if (v12)
    {
      v13 = MIL::IRUnknownProperty::IsVariadic(v12) ^ 1;
      if (((v13 | v11) & 1) == 0)
      {
        goto LABEL_41;
      }

      v11 &= v13;
    }

    ++v9;
  }

  if (v6)
  {
    v14 = *a1;
    v15 = a1[1];
    if (((v15 - *a1 == a2[1] - *a2) & v11) != 0)
    {
LABEL_26:
      if (v15 != v14)
      {
        v22 = 0;
        do
        {
          v23 = MIL::IRProperty::TryAsUnknown(v14[v22]);
          if (v23 && (MIL::IRUnknownProperty::IsVariadic(v23) & 1) != 0)
          {
            break;
          }

          {
            return 0;
          }

          ++v22;
          v14 = *a1;
        }

        while (v22 < a1[1] - *a1);
      }

      if ((v6 & 1) == 0)
      {
        v24 = *a1;
        v25 = a1[1] - *a1;
        if (v25 >= 2)
        {
          v26 = -1;
          v27 = 1;
          while (1)
          {
            v28 = MIL::IRProperty::TryAsUnknown(*(&v24[v25] + v26));
            if (v28)
            {
              if (MIL::IRUnknownProperty::IsVariadic(v28))
              {
                break;
              }
            }

            {
              return 0;
            }

            ++v27;
            v24 = *a1;
            v25 = a1[1] - *a1;
            --v26;
            result = 1;
            if (v27 >= v25)
            {
              return result;
            }
          }
        }
      }

      return 1;
    }

    return 0;
  }

  v16 = *a1;
  v17 = a1[1];
  if (v17 - *a1 - 1 > (a2[1] - *a2))
  {
    return 0;
  }

  if (v17 != v16)
  {
    v19 = 0;
    while (MIL::IRProperty::TryAsUnknown(v16[v19]))
    {
      ++v19;
      v16 = *a1;
      v20 = a1[1] - *a1;
      if (v19 >= v20 >> 3)
      {
        v21 = (v20 >> 3) - 1;
        return v21 <= a2[1] - *a2 - ((v11 & 1) == 0);
      }
    }

    v14 = *a1;
    v15 = a1[1];
    goto LABEL_26;
  }

  v21 = -1;
  return v21 <= a2[1] - *a2 - ((v11 & 1) == 0);
}

uint64_t std::vector<MIL::IRProperty const*>::__init_with_size[abi:ne200100]<MIL::IRProperty const**,MIL::IRProperty const**>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<MIL::IRDimension const*>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_217FE9EA0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t anonymous namespace::IsEqualOrStrongerPropertiesVec(std::vector<MIL::IRProperty const*> const&,std::vector<MIL::IRProperty const*> const&)::$_1::operator()(void *a1, void *a2)
{
  v4 = MIL::IRProperty::TryAsConstant(a1);
  if (!v4)
  {
    v11 = MIL::IRProperty::TryAsUnknown(a1);
    if (!v11)
    {
      return 1;
    }

    if (MIL::IRUnknownProperty::IsVariadic(v11))
    {
      return 1;
    }

    v12 = MIL::IRProperty::TryAsUnknown(a2);
    return !v12 || (MIL::IRUnknownProperty::IsVariadic(v12) & 1) == 0;
  }

  v5 = v4;
  result = MIL::IRProperty::TryAsConstant(a2);
  if (!result)
  {
    return result;
  }

  v7 = result;
  ScalarDataType = MIL::IRConstantProperty::GetScalarDataType(v5);
  if (ScalarDataType != MIL::IRConstantProperty::GetScalarDataType(v7))
  {
    return 0;
  }

  if (MIL::IRConstantProperty::GetScalarDataType(v5) == 12)
  {
    Int64ScalarValue = MIL::IRConstantProperty::GetInt64ScalarValue(v5);
    UInt64ScalarValue = MIL::IRConstantProperty::GetInt64ScalarValue(v7);
    return Int64ScalarValue == UInt64ScalarValue;
  }

  if (MIL::IRConstantProperty::GetScalarDataType(v5) == 14)
  {
    UInt8ScalarValue = MIL::IRConstantProperty::GetUInt8ScalarValue(v5);
    if (UInt8ScalarValue != MIL::IRConstantProperty::GetUInt8ScalarValue(v7))
    {
      return 0;
    }
  }

  else if (MIL::IRConstantProperty::GetScalarDataType(v5) == 17)
  {
    Int64ScalarValue = MIL::IRConstantProperty::GetUInt64ScalarValue(v5);
    UInt64ScalarValue = MIL::IRConstantProperty::GetUInt64ScalarValue(v7);
    return Int64ScalarValue == UInt64ScalarValue;
  }

  return 1;
}

uint64_t std::vector<MIL::IRProperty const*>::__init_with_size[abi:ne200100]<MIL::IRProperty const* const*,MIL::IRProperty const* const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<MIL::IRDimension const*>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_217FEA034(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<long long>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<unsigned long long>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<unsigned long long>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_217FEA0AC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<unsigned long long>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<unsigned long long>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<unsigned long long>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_217FEA124(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_217FEA198(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void OperationNameLocationImpl::~OperationNameLocationImpl(void **this)
{
  *this = &unk_2829E3718;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_2829E3718;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_2829E3718;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x21CEAFEA0);
}

void TextFileLocationImpl::~TextFileLocationImpl(void **this)
{
  *this = &unk_2829E3750;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_2829E3750;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_2829E3750;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x21CEAFEA0);
}

void MIL::Location::GetDescription(MIL::Location *this@<X0>, std::string *a2@<X8>)
{
  if (!this)
  {
    goto LABEL_14;
  }

  if (v4)
  {

    OperationNameLocationImpl::GetDescriptionImpl(v4, a2);
    return;
  }

  if (v5)
  {

    TextFileLocationImpl::GetDescriptionImpl(v5, a2);
    return;
  }

  {
LABEL_14:
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Unknown Location type.");
    __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
  }

  std::string::basic_string[abi:ne200100]<0>(a2, "unknown location");
}

void OperationNameLocationImpl::GetDescriptionImpl(OperationNameLocationImpl *this@<X0>, std::string *a2@<X8>)
{
  v3 = (*(*this + 32))(this);
  if (*(v3 + 23) < 0)
  {
    v5 = *v3;
    v6 = *(v3 + 8);

    std::string::__init_copy_ctor_external(a2, v5, v6);
  }

  else
  {
    v4 = *v3;
    a2->__r_.__value_.__r.__words[2] = *(v3 + 16);
    *&a2->__r_.__value_.__l.__data_ = v4;
  }
}

void TextFileLocationImpl::GetDescriptionImpl(TextFileLocationImpl *this@<X0>, std::string *a2@<X8>)
{
  v4 = (*(*this + 40))(this);
  v5 = *(v4 + 23);
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(v4 + 8);
  }

  if (v5)
  {
    v6 = (*(*this + 40))(this);
    if (*(v6 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v22, *v6, *(v6 + 8));
    }

    else
    {
      v7 = *v6;
      v22.__r_.__value_.__r.__words[2] = *(v6 + 16);
      *&v22.__r_.__value_.__l.__data_ = v7;
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&v22, "(unknown)");
  }

  std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v22.__r_.__value_.__l.__data_, 58, &v19);
  v8 = (*(*this + 48))(this);
  std::to_string(&v18, v8);
  if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = &v18;
  }

  else
  {
    v9 = v18.__r_.__value_.__r.__words[0];
  }

  if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v18.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v18.__r_.__value_.__l.__size_;
  }

  v11 = std::string::append(&v19, v9, size);
  v12 = *&v11->__r_.__value_.__l.__data_;
  v20.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
  *&v20.__r_.__value_.__l.__data_ = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  std::string::push_back(&v20, 58);
  v21 = v20;
  memset(&v20, 0, sizeof(v20));
  v13 = (*(*this + 32))(this);
  std::to_string(&v17, v13);
  if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = &v17;
  }

  else
  {
    v14 = v17.__r_.__value_.__r.__words[0];
  }

  if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v15 = HIBYTE(v17.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v15 = v17.__r_.__value_.__l.__size_;
  }

  v16 = std::string::append(&v21, v14, v15);
  *a2 = *v16;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }
}

void sub_217FEAA10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v33 - 73) < 0)
  {
    operator delete(*(v33 - 96));
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (*(v33 - 41) < 0)
  {
    operator delete(*(v33 - 64));
  }

  _Unwind_Resume(exception_object);
}

void *OperationNameLocationImpl::operator==(uint64_t a1, void *lpsrc)
{
  if (result)
  {
    v4 = result;
    v5 = (*(*a1 + 32))(a1);
    v6 = (*(*v4 + 32))(v4);
    v7 = *(v5 + 23);
    if (v7 >= 0)
    {
      v8 = *(v5 + 23);
    }

    else
    {
      v8 = *(v5 + 8);
    }

    v9 = *(v6 + 23);
    v10 = v9;
    if ((v9 & 0x80u) != 0)
    {
      v9 = *(v6 + 8);
    }

    if (v8 == v9)
    {
      if (v7 >= 0)
      {
        v11 = v5;
      }

      else
      {
        v11 = *v5;
      }

      if (v10 >= 0)
      {
        v12 = v6;
      }

      else
      {
        v12 = *v6;
      }

      return (memcmp(v11, v12, v8) == 0);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void OperationNameLocationImpl::GetReportString(OperationNameLocationImpl *this@<X0>, std::string *a2@<X8>)
{
  OperationNameLocationImpl::GetDescriptionImpl(this, &v4);
  v3 = std::string::insert(&v4, 0, "in operation ");
  *a2 = *v3;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }
}

void sub_217FEAC34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *TextFileLocationImpl::operator==(uint64_t a1, void *lpsrc)
{
  if (result)
  {
    v4 = result;
    v5 = (*(*a1 + 32))(a1);
    if (v5 != (*(*v4 + 32))(v4))
    {
      return 0;
    }

    v6 = (*(*a1 + 48))(a1);
    if (v6 != (*(*v4 + 48))(v4))
    {
      return 0;
    }

    v7 = (*(*a1 + 40))(a1);
    v8 = (*(*v4 + 40))(v4);
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

    if (v10 == v11)
    {
      if (v9 >= 0)
      {
        v13 = v7;
      }

      else
      {
        v13 = *v7;
      }

      if (v12 >= 0)
      {
        v14 = v8;
      }

      else
      {
        v14 = *v8;
      }

      return (memcmp(v13, v14, v10) == 0);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void TextFileLocationImpl::GetReportString(TextFileLocationImpl *this@<X0>, std::string *a2@<X8>)
{
  TextFileLocationImpl::GetDescriptionImpl(this, &v4);
  v3 = std::string::insert(&v4, 0, "at ");
  *a2 = *v3;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }
}

void sub_217FEAEA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MIL::MILContextImpl::~MILContextImpl(MIL::MILContextImpl *this)
{
  v2 = *(this + 80);
  *(this + 80) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 79);
  *(this + 79) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 78);
  *(this + 78) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 77);
  *(this + 77) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(this + 76);
  *(this + 76) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<MIL::IROpset const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<MIL::IROpset const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<MIL::IROpset const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<MIL::IROpset const>>>>::~__hash_table(this + 568);
  std::__hash_table<std::__hash_value_type<MIL::IRValueType const*,std::unique_ptr<MIL::IRStateValueType const>>,std::__unordered_map_hasher<MIL::IRValueType const*,std::__hash_value_type<MIL::IRValueType const*,std::unique_ptr<MIL::IRStateValueType const>>,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,true>,std::__unordered_map_equal<MIL::IRValueType const*,std::__hash_value_type<MIL::IRValueType const*,std::unique_ptr<MIL::IRStateValueType const>>,std::equal_to<MIL::IRValueType const*>,std::hash<MIL::IRValueType const*>,true>,std::allocator<std::__hash_value_type<MIL::IRValueType const*,std::unique_ptr<MIL::IRStateValueType const>>>>::~__hash_table(this + 528);
  std::__hash_table<std::__hash_value_type<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::unique_ptr<MIL::IRCircularBufferValueType const>>,std::__unordered_map_hasher<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::__hash_value_type<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::unique_ptr<MIL::IRCircularBufferValueType const>>,std::hash<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>>,std::equal_to<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>>,true>,std::__unordered_map_equal<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::__hash_value_type<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::unique_ptr<MIL::IRCircularBufferValueType const>>,std::equal_to<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>>,std::hash<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>>,true>,std::allocator<std::__hash_value_type<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::unique_ptr<MIL::IRCircularBufferValueType const>>>>::~__hash_table(this + 488);
  std::__hash_table<std::__hash_value_type<std::tuple<MIL::IRPixelFormatType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::unique_ptr<MIL::IRPixelBufferValueType const>>,std::__unordered_map_hasher<std::tuple<MIL::IRPixelFormatType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::__hash_value_type<std::tuple<MIL::IRPixelFormatType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::unique_ptr<MIL::IRPixelBufferValueType const>>,std::hash<std::tuple<MIL::IRPixelFormatType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>>,std::equal_to<std::tuple<MIL::IRPixelFormatType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>>,true>,std::__unordered_map_equal<std::tuple<MIL::IRPixelFormatType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::__hash_value_type<std::tuple<MIL::IRPixelFormatType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::unique_ptr<MIL::IRPixelBufferValueType const>>,std::equal_to<std::tuple<MIL::IRPixelFormatType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>>,std::hash<std::tuple<MIL::IRPixelFormatType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>>,true>,std::allocator<std::__hash_value_type<std::tuple<MIL::IRPixelFormatType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::unique_ptr<MIL::IRPixelBufferValueType const>>>>::~__hash_table(this + 448);
  std::__hash_table<std::__hash_value_type<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::unique_ptr<MIL::IRTensorBufferValueType const>>,std::__unordered_map_hasher<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::__hash_value_type<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::unique_ptr<MIL::IRTensorBufferValueType const>>,std::hash<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>>,std::equal_to<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>>,true>,std::__unordered_map_equal<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::__hash_value_type<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::unique_ptr<MIL::IRTensorBufferValueType const>>,std::equal_to<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>>,std::hash<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>>,true>,std::allocator<std::__hash_value_type<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::unique_ptr<MIL::IRTensorBufferValueType const>>>>::~__hash_table(this + 408);
  std::__hash_table<std::__hash_value_type<std::pair<MIL::IRValueType const*,MIL::IRValueType const*>,std::unique_ptr<MIL::IRDictionaryValueType const>>,std::__unordered_map_hasher<std::pair<MIL::IRValueType const*,MIL::IRValueType const*>,std::__hash_value_type<std::pair<MIL::IRValueType const*,MIL::IRValueType const*>,std::unique_ptr<MIL::IRDictionaryValueType const>>,std::hash<std::pair<MIL::IRValueType const*,MIL::IRValueType const*>>,std::equal_to<std::pair<MIL::IRValueType const*,MIL::IRValueType const*>>,true>,std::__unordered_map_equal<std::pair<MIL::IRValueType const*,MIL::IRValueType const*>,std::__hash_value_type<std::pair<MIL::IRValueType const*,MIL::IRValueType const*>,std::unique_ptr<MIL::IRDictionaryValueType const>>,std::equal_to<std::pair<MIL::IRValueType const*,MIL::IRValueType const*>>,std::hash<std::pair<MIL::IRValueType const*,MIL::IRValueType const*>>,true>,std::allocator<std::__hash_value_type<std::pair<MIL::IRValueType const*,MIL::IRValueType const*>,std::unique_ptr<MIL::IRDictionaryValueType const>>>>::~__hash_table(this + 368);
  std::__hash_table<std::__hash_value_type<std::pair<MIL::IRValueType const*,MIL::IRValueType const*>,std::unique_ptr<MIL::IRDictionaryValueType const>>,std::__unordered_map_hasher<std::pair<MIL::IRValueType const*,MIL::IRValueType const*>,std::__hash_value_type<std::pair<MIL::IRValueType const*,MIL::IRValueType const*>,std::unique_ptr<MIL::IRDictionaryValueType const>>,std::hash<std::pair<MIL::IRValueType const*,MIL::IRValueType const*>>,std::equal_to<std::pair<MIL::IRValueType const*,MIL::IRValueType const*>>,true>,std::__unordered_map_equal<std::pair<MIL::IRValueType const*,MIL::IRValueType const*>,std::__hash_value_type<std::pair<MIL::IRValueType const*,MIL::IRValueType const*>,std::unique_ptr<MIL::IRDictionaryValueType const>>,std::equal_to<std::pair<MIL::IRValueType const*,MIL::IRValueType const*>>,std::hash<std::pair<MIL::IRValueType const*,MIL::IRValueType const*>>,true>,std::allocator<std::__hash_value_type<std::pair<MIL::IRValueType const*,MIL::IRValueType const*>,std::unique_ptr<MIL::IRDictionaryValueType const>>>>::~__hash_table(this + 328);
  std::__hash_table<std::__hash_value_type<std::shared_ptr<std::vector<MIL::IRValueType const*>>,std::unique_ptr<MIL::IRTupleValueType const>>,std::__unordered_map_hasher<std::shared_ptr<std::vector<MIL::IRValueType const*>>,std::__hash_value_type<std::shared_ptr<std::vector<MIL::IRValueType const*>>,std::unique_ptr<MIL::IRTupleValueType const>>,std::hash<std::shared_ptr<std::vector<MIL::IRValueType const*>>>,std::equal_to<std::shared_ptr<std::vector<MIL::IRValueType const*>>>,true>,std::__unordered_map_equal<std::shared_ptr<std::vector<MIL::IRValueType const*>>,std::__hash_value_type<std::shared_ptr<std::vector<MIL::IRValueType const*>>,std::unique_ptr<MIL::IRTupleValueType const>>,std::equal_to<std::shared_ptr<std::vector<MIL::IRValueType const*>>>,std::hash<std::shared_ptr<std::vector<MIL::IRValueType const*>>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<std::vector<MIL::IRValueType const*>>,std::unique_ptr<MIL::IRTupleValueType const>>>>::~__hash_table(this + 288);
  std::__hash_table<std::__hash_value_type<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*> const>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::unique_ptr<MIL::IRTensorValueType const>>,std::__unordered_map_hasher<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*> const>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::__hash_value_type<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*> const>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::unique_ptr<MIL::IRTensorValueType const>>,std::hash<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*> const>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>>,std::equal_to<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*> const>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>>,true>,std::__unordered_map_equal<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*> const>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::__hash_value_type<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*> const>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::unique_ptr<MIL::IRTensorValueType const>>,std::equal_to<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*> const>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>>,std::hash<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*> const>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>>,true>,std::allocator<std::__hash_value_type<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*> const>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::unique_ptr<MIL::IRTensorValueType const>>>>::~__hash_table(this + 248);
  std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<MIL::IRConstantProperty const>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<MIL::IRConstantProperty const>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<MIL::IRConstantProperty const>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<MIL::IRConstantProperty const>>>>::~__hash_table(this + 208);
  std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<MIL::IRConstantProperty const>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<MIL::IRConstantProperty const>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<MIL::IRConstantProperty const>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<MIL::IRConstantProperty const>>>>::~__hash_table(this + 168);
  std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<MIL::IRConstantProperty const>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<MIL::IRConstantProperty const>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<MIL::IRConstantProperty const>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<MIL::IRConstantProperty const>>>>::~__hash_table(this + 128);
  std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<MIL::IRConstantDimension const>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<MIL::IRConstantDimension const>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<MIL::IRConstantDimension const>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<MIL::IRConstantDimension const>>>>::~__hash_table(this + 88);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(this + 48);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(this + 8);
}

{
  MIL::MILContextImpl::~MILContextImpl(this);

  JUMPOUT(0x21CEAFEA0);
}

void MIL::MILContextImpl::GetAllOpsetNames(MIL::MILContextImpl *this@<X0>, std::vector<std::string> *a2@<X8>)
{
  a2->__begin_ = 0;
  a2->__end_ = 0;
  a2->__end_cap_.__value_ = 0;
  std::vector<std::string>::reserve(a2, *(this + 74));
  for (i = (this + 584); ; std::vector<std::string>::push_back[abi:ne200100](a2, i + 1))
  {
    i = *i;
    if (!i)
    {
      break;
    }
  }

  p_data = &a2->__end_->__r_.__value_.__l.__data_;
  v6 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((p_data - a2->__begin_) >> 3));
  if (p_data == a2->__begin_)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,false>(a2->__begin_, p_data, v8, v7, 1);
}

void sub_217FEB1AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

const void **MIL::MILContextImpl::RegisterOpset(uint64_t a1, const void **a2)
{
  result = std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<MIL::IROpset const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<MIL::IROpset const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<MIL::IROpset const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<MIL::IROpset const>>>>::__emplace_unique_key_args<std::string,std::string const&,std::unique_ptr<MIL::IROpset const>>((a1 + 568), a2);
  if ((v3 & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    v5 = std::string::append(&v7, "'.");
    v6 = *&v5->__r_.__value_.__l.__data_;
    v8.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
    *&v8.__r_.__value_.__l.__data_ = v6;
    v5->__r_.__value_.__l.__size_ = 0;
    v5->__r_.__value_.__r.__words[2] = 0;
    v5->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(exception, &v8);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return result;
}

void sub_217FEB28C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

const void **MIL::MILContextImpl::TryGetOpset(uint64_t a1, const void **a2)
{
  result = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>((a1 + 568), a2);
  if (result)
  {
    return result[5];
  }

  return result;
}

const void **MIL::MILContextImpl::GetOrCreateLegacyStorageReader@<X0>(uint64_t a1@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  result = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>((a1 + 8), a2);
  if (!result)
  {
    std::allocate_shared[abi:ne200100]<MIL::Blob::LegacyStorageReader,std::allocator<MIL::Blob::LegacyStorageReader>,std::string const&,0>();
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

void sub_217FEB394(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

const void **MIL::MILContextImpl::GetOrCreateStorageReader@<X0>(uint64_t a1@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  result = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>((a1 + 48), a2);
  if (!result)
  {
    std::allocate_shared[abi:ne200100]<MIL::Blob::StorageReader,std::allocator<MIL::Blob::StorageReader>,std::string const&,0>();
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

void sub_217FEB430(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

BOOL MIL::MILContextImpl::TypeIsRegistered(MIL::MILContextImpl *this, const MIL::IRValueType *a2)
{
  v4 = (*(*a2 + 24))(a2);
  if (v4)
  {
    v5 = *(this + 33);
    if (v5)
    {
      v6 = v4;
      do
      {
        v7 = v5[10];
        result = v7 == v6;
        if (v7 == v6)
        {
          break;
        }

        v5 = *v5;
      }

      while (v5);
      return result;
    }

    return 0;
  }

  v9 = (*(*a2 + 32))(a2);
  if (v9)
  {
    v10 = *(this + 43);
    if (!v10)
    {
      return 0;
    }

    v11 = v9;
    do
    {
      v12 = v10[4];
      result = v12 == v11;
      if (v12 == v11)
      {
        break;
      }

      v10 = *v10;
    }

    while (v10);
  }

  else
  {
    v13 = (*(*a2 + 40))(a2);
    if (v13)
    {
      v14 = *(this + 38);
      if (!v14)
      {
        return 0;
      }

      v15 = v13;
      do
      {
        v16 = v14[4];
        result = v16 == v15;
        if (v16 == v15)
        {
          break;
        }

        v14 = *v14;
      }

      while (v14);
    }

    else
    {
      v17 = (*(*a2 + 48))(a2);
      if (!v17)
      {
        v21 = MIL::IRValueType::TryCastAsMemoryLayoutType(a2);
        if (v21)
        {
          v22 = v21;
          v23 = MIL::IRMemoryLayoutValueType::TryAsTensorBufferType(v21);
          if (v23)
          {
            v24 = *(this + 53);
            if (!v24)
            {
              return 0;
            }

            v25 = v23;
            do
            {
              v26 = v24[15];
              result = v26 == v25;
              if (v26 == v25)
              {
                break;
              }

              v24 = *v24;
            }

            while (v24);
            return result;
          }

          v27 = MIL::IRMemoryLayoutValueType::TryAsPixelBufferType(v22);
          if (v27)
          {
            v28 = *(this + 58);
            if (!v28)
            {
              return 0;
            }

            v29 = v27;
            do
            {
              v30 = v28[14];
              result = v30 == v29;
              if (v30 == v29)
              {
                break;
              }

              v28 = *v28;
            }

            while (v28);
            return result;
          }

          v31 = MIL::IRMemoryLayoutValueType::TryAsCircularBufferType(v22);
          if (v31)
          {
            v32 = *(this + 63);
            if (!v32)
            {
              return 0;
            }

            v33 = v31;
            do
            {
              v34 = v32[15];
              result = v34 == v33;
              if (v34 == v33)
              {
                break;
              }

              v32 = *v32;
            }

            while (v32);
            return result;
          }
        }

        v35 = MIL::IRValueType::TryCastAsStateType(a2);
        if (!v35)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "Unknown type for TypeIsRegistered.");
          __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }

        v36 = *(this + 68);
        if (!v36)
        {
          return 0;
        }

        v37 = v35;
        do
        {
          v38 = v36[3];
          result = v38 == v37;
          if (v38 == v37)
          {
            break;
          }

          v36 = *v36;
        }

        while (v36);
        return result;
      }

      v18 = *(this + 48);
      if (!v18)
      {
        return 0;
      }

      v19 = v17;
      do
      {
        v20 = v18[4];
        result = v20 == v19;
        if (v20 == v19)
        {
          break;
        }

        v18 = *v18;
      }

      while (v18);
    }
  }

  return result;
}

uint64_t MIL::MILContext::GetOpset(uint64_t a1)
{
  result = (*(*a1 + 16))(a1);
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    v3 = std::string::append(&v5, "' not does not exist.");
    v4 = *&v3->__r_.__value_.__l.__data_;
    v6.__r_.__value_.__r.__words[2] = v3->__r_.__value_.__r.__words[2];
    *&v6.__r_.__value_.__l.__data_ = v4;
    v3->__r_.__value_.__l.__size_ = 0;
    v3->__r_.__value_.__r.__words[2] = 0;
    v3->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(exception, &v6);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return result;
}

void sub_217FEB7F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t MIL::MILContextImpl::RegisterOpConversion(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 608);
  std::__function::__value_func<void ()(MIL::Transform::ProgramTransformer &)>::__value_func[abi:ne200100](v8, a4);
  (*(*v6 + 16))(v6, a2, a3, v8);
  return std::__function::__value_func<void ()(MIL::Transform::ProgramTransformer &)>::~__value_func[abi:ne200100](v8);
}

void sub_217FEB8FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(MIL::Transform::ProgramTransformer &)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t MIL::MILContextImpl::ConvertProgram(uint64_t a1)
{
  return (*(**(a1 + 608) + 32))();
}

{
  return (*(**(a1 + 608) + 24))();
}

uint64_t MIL::MILContextImpl::TryConvertProgram(uint64_t a1)
{
  return (*(**(a1 + 608) + 48))();
}

{
  return (*(**(a1 + 608) + 40))();
}

uint64_t MIL::IRConstantDimension::Make(MIL::IRConstantDimension *this, MIL::MILContext *a2)
{
  if (!v3)
  {
    __cxa_bad_cast();
  }

  v4 = v3 + 88;

  return MIL::IRTypeStore<unsigned long long,MIL::IRConstantDimension const>::Get<unsigned long long>(v4, a2);
}

uint64_t MIL::IRUnknownDimension::Make(MIL::IRUnknownDimension *this, MIL::MILContext *a2)
{
  v2 = a2;
  if (!v2)
  {
    if (v3)
    {
      v4 = 616;
      return *&v3[v4];
    }

LABEL_7:
    __cxa_bad_cast();
  }

  if (!v3)
  {
    goto LABEL_7;
  }

  v4 = 624;
  return *&v3[v4];
}

uint64_t MIL::IRConstantProperty::MakeInt64Scalar(MIL::IRConstantProperty *this, MIL::MILContext *a2)
{
  if (!v3)
  {
    __cxa_bad_cast();
  }

  v4 = v3 + 128;

  return MIL::IRTypeStore<long long,MIL::IRConstantProperty const>::Get<long long>(v4, a2);
}

uint64_t *MIL::IRConstantProperty::MakeUInt8Scalar(MIL::IRConstantProperty *this, MIL::MILContext *a2)
{
  v2 = a2;
  if (!v3)
  {
    __cxa_bad_cast();
  }

  v4 = v3 + 168;

  return MIL::IRTypeStore<unsigned char,MIL::IRConstantProperty const>::Get<unsigned char>(v4, v2);
}

uint64_t MIL::IRConstantProperty::MakeUInt64Scalar(MIL::IRConstantProperty *this, MIL::MILContext *a2)
{
  if (!v3)
  {
    __cxa_bad_cast();
  }

  v4 = v3 + 208;

  return MIL::IRTypeStore<unsigned long long,MIL::IRConstantProperty const>::Get<unsigned long long>(v4, a2);
}

uint64_t MIL::IRUnknownProperty::Make(MIL::IRUnknownProperty *this, MIL::MILContext *a2)
{
  v2 = a2;
  if (!v2)
  {
    if (v3)
    {
      v4 = 632;
      return *&v3[v4];
    }

LABEL_7:
    __cxa_bad_cast();
  }

  if (!v3)
  {
    goto LABEL_7;
  }

  v4 = 640;
  return *&v3[v4];
}

uint64_t MIL::IRTensorValueType::MakeWithShape(const void *a1, int a2, void *a3)
{
  memset(v5, 0, sizeof(v5));
  v6 = 1065353216;
  v3 = MIL::IRTensorValueType::MakeWithShape(a1, a2, a3, v5);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v5);
  return v3;
}

uint64_t MIL::IRTensorValueType::MakeWithShape(const void *a1, int a2, void *a3, uint64_t *a4)
{
  if (!v7)
  {
    __cxa_bad_cast();
  }

  v8 = v7;
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__hash_table(v11, a4);
  v9 = MIL::IRTypeStore<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*> const>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,MIL::IRTensorValueType const>::Get<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>> const&,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>(v8 + 31, a2, a3, v11);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v11);
  return v9;
}

void sub_217FEBE60(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

uint64_t MIL::IRListValueType::MakeWithDimension(MIL::IRListValueType *this, MIL::MILContext *a2, const MIL::IRValueType *a3, const MIL::IRDimension *a4)
{
  if ((*(*a3 + 32))(a3))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Cannot create a list with a variadic length.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (!v7)
  {
    __cxa_bad_cast();
  }

  v8 = v7 + 328;

  return MIL::IRTypeStore<std::pair<MIL::IRValueType const*,MIL::IRDimension const*>,MIL::IRListValueType const>::Get<MIL::IRValueType const*,MIL::IRDimension const*>(v8, a2, a3);
}

void MIL::IRTupleValueType::Make(const void *a1)
{
  {
    operator new();
  }

  __cxa_bad_cast();
}

void sub_217FEC054(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRDictionaryValueType::Make(MIL::IRDictionaryValueType *this, MIL::MILContext *a2, const MIL::IRValueType *a3, const MIL::IRValueType *a4)
{
  if (!v6)
  {
    __cxa_bad_cast();
  }

  v7 = v6 + 368;

  return MIL::IRTypeStore<std::pair<MIL::IRValueType const*,MIL::IRValueType const*>,MIL::IRDictionaryValueType const>::Get<MIL::IRValueType const*,MIL::IRValueType const*>(v7, a2, a3);
}

uint64_t MIL::IRTensorBufferValueType::MakeWithShape(const void *a1, int a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  if (!v11)
  {
    __cxa_bad_cast();
  }

  v12 = v11;
  v13 = a3[1];
  v23 = *a3;
  v24 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v14 = a4[1];
  v21 = *a4;
  v22 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v15 = a5[1];
  v19 = *a5;
  v20 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__hash_table(v18, a6);
  v16 = MIL::IRTypeStore<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,MIL::IRTensorBufferValueType const>::Get<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>(v12 + 51, a2, &v23, &v21, 0, &v19, v18);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v18);
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  return v16;
}

void sub_217FEC238(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&a10);
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  std::make_unique[abi:ne200100]<MIL::IRTensorBufferValueTypeImpl,MIL::IRDataType &,std::shared_ptr<std::vector<MIL::IRDimension const*>> &,std::shared_ptr<std::vector<MIL::IRProperty const*>> &,decltype(nullptr),std::shared_ptr<std::vector<MIL::IRProperty const*>> &,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>,0>(v16 + 8);
  _Unwind_Resume(a1);
}

uint64_t MIL::IRTensorBufferValueType::MakeWithShapeAndRowAlignment(const void *a1, int a2, uint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  if (!v11)
  {
    __cxa_bad_cast();
  }

  v12 = v11;
  v13 = a3[1];
  v22 = *a3;
  v23 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v20 = 0;
  v21 = 0;
  v14 = a5[1];
  v18 = *a5;
  v19 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__hash_table(v17, a6);
  v15 = MIL::IRTypeStore<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,MIL::IRTensorBufferValueType const>::Get<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>(v12 + 51, a2, &v22, &v20, a4, &v18, v17);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v17);
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  return v15;
}

void sub_217FEC390(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, std::__shared_weak_count *);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(va);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  MIL::IRTensorBufferValueType::MakeWithShapeAndRowAlignment(va1, (v2 + 8));
  _Unwind_Resume(a1);
}

uint64_t MIL::IRPixelBufferValueType::MakeWithShape(const void *a1, int a2, uint64_t *a3, uint64_t *a4)
{
  if (!v7)
  {
    __cxa_bad_cast();
  }

  v8 = v7;
  v9 = a3[1];
  v17 = *a3;
  v18 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v15 = 0;
  v16 = 0;
  v13 = 0;
  v14 = 0;
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__hash_table(v12, a4);
  v10 = MIL::IRTypeStore<std::tuple<MIL::IRPixelFormatType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,MIL::IRPixelBufferValueType const>::Get<MIL::IRPixelFormatType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>(v8 + 56, a2, &v17, &v15, &v13, v12);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v12);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  return v10;
}

void sub_217FEC4C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, std::__shared_weak_count *);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(va);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  MIL::IRTensorBufferValueType::MakeWithShapeAndRowAlignment(va1, (v2 + 8));
  _Unwind_Resume(a1);
}

uint64_t MIL::IRPixelBufferValueType::MakeWithShape(const void *a1, int a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  if (!v9)
  {
    __cxa_bad_cast();
  }

  v10 = v9;
  v11 = a3[1];
  v20 = *a3;
  v21 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = a4[1];
  v18 = *a4;
  v19 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v16 = 0;
  v17 = 0;
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__hash_table(v15, a5);
  v13 = MIL::IRTypeStore<std::tuple<MIL::IRPixelFormatType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,MIL::IRPixelBufferValueType const>::Get<MIL::IRPixelFormatType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>(v10 + 56, a2, &v20, &v18, &v16, v15);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v15);
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  return v13;
}

void sub_217FEC614(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&a10);
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  std::make_unique[abi:ne200100]<MIL::IRTensorBufferValueTypeImpl,MIL::IRDataType &,std::shared_ptr<std::vector<MIL::IRDimension const*>> &,std::shared_ptr<std::vector<MIL::IRProperty const*>> &,decltype(nullptr),std::shared_ptr<std::vector<MIL::IRProperty const*>> &,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>,0>(v16 + 8);
  _Unwind_Resume(a1);
}

uint64_t MIL::IRPixelBufferValueType::MakeWithShape(const void *a1, int a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  if (!v11)
  {
    __cxa_bad_cast();
  }

  v12 = v11;
  v13 = a3[1];
  v23 = *a3;
  v24 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v14 = a4[1];
  v21 = *a4;
  v22 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v15 = a5[1];
  v19 = *a5;
  v20 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__hash_table(v18, a6);
  v16 = MIL::IRTypeStore<std::tuple<MIL::IRPixelFormatType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,MIL::IRPixelBufferValueType const>::Get<MIL::IRPixelFormatType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>(v12 + 56, a2, &v23, &v21, &v19, v18);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v18);
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  return v16;
}

void sub_217FEC780(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&a10);
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  std::make_unique[abi:ne200100]<MIL::IRTensorBufferValueTypeImpl,MIL::IRDataType &,std::shared_ptr<std::vector<MIL::IRDimension const*>> &,std::shared_ptr<std::vector<MIL::IRProperty const*>> &,decltype(nullptr),std::shared_ptr<std::vector<MIL::IRProperty const*>> &,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>,0>(v16 + 8);
  _Unwind_Resume(a1);
}

uint64_t MIL::IRCircularBufferValueType::MakeWithShape(const void *a1, int a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  if (!v13)
  {
    __cxa_bad_cast();
  }

  v14 = v13;
  v15 = a3[1];
  v25 = *a3;
  v26 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v16 = a4[1];
  v23 = *a4;
  v24 = v16;
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v17 = a5[1];
  v21 = *a5;
  v22 = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__hash_table(v20, a7);
  v18 = MIL::IRTypeStore<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,MIL::IRCircularBufferValueType const>::Get<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>(v14 + 61, a2, &v25, &v23, &v21, a6, v20);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v20);
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  return v18;
}

void sub_217FEC8FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&a10);
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  std::make_unique[abi:ne200100]<MIL::IRTensorBufferValueTypeImpl,MIL::IRDataType &,std::shared_ptr<std::vector<MIL::IRDimension const*>> &,std::shared_ptr<std::vector<MIL::IRProperty const*>> &,decltype(nullptr),std::shared_ptr<std::vector<MIL::IRProperty const*>> &,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>,0>(v16 + 8);
  _Unwind_Resume(a1);
}

uint64_t MIL::IRStateValueType::Make(MIL::IRStateValueType *this, MIL::MILContext *a2, const MIL::IRValueType *a3)
{
  if (!v4)
  {
    __cxa_bad_cast();
  }

  v5 = v4 + 528;

  return MIL::IRTypeStore<MIL::IRValueType const*,MIL::IRStateValueType const>::Get<MIL::IRValueType const*>(v5, a2);
}

uint64_t std::__hash_table<std::__hash_value_type<MIL::IRValueType const*,std::unique_ptr<MIL::IRStateValueType const>>,std::__unordered_map_hasher<MIL::IRValueType const*,std::__hash_value_type<MIL::IRValueType const*,std::unique_ptr<MIL::IRStateValueType const>>,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,true>,std::__unordered_map_equal<MIL::IRValueType const*,std::__hash_value_type<MIL::IRValueType const*,std::unique_ptr<MIL::IRStateValueType const>>,std::equal_to<MIL::IRValueType const*>,std::hash<MIL::IRValueType const*>,true>,std::allocator<std::__hash_value_type<MIL::IRValueType const*,std::unique_ptr<MIL::IRStateValueType const>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<MIL::IRValueType const*,std::unique_ptr<MIL::IRStateValueType const>>,std::__unordered_map_hasher<MIL::IRValueType const*,std::__hash_value_type<MIL::IRValueType const*,std::unique_ptr<MIL::IRStateValueType const>>,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,true>,std::__unordered_map_equal<MIL::IRValueType const*,std::__hash_value_type<MIL::IRValueType const*,std::unique_ptr<MIL::IRStateValueType const>>,std::equal_to<MIL::IRValueType const*>,std::hash<MIL::IRValueType const*>,true>,std::allocator<std::__hash_value_type<MIL::IRValueType const*,std::unique_ptr<MIL::IRStateValueType const>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<MIL::IRValueType const*,std::unique_ptr<MIL::IRStateValueType const>>,std::__unordered_map_hasher<MIL::IRValueType const*,std::__hash_value_type<MIL::IRValueType const*,std::unique_ptr<MIL::IRStateValueType const>>,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,true>,std::__unordered_map_equal<MIL::IRValueType const*,std::__hash_value_type<MIL::IRValueType const*,std::unique_ptr<MIL::IRStateValueType const>>,std::equal_to<MIL::IRValueType const*>,std::hash<MIL::IRValueType const*>,true>,std::allocator<std::__hash_value_type<MIL::IRValueType const*,std::unique_ptr<MIL::IRStateValueType const>>>>::__deallocate_node(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[3];
      v2[3] = 0;
      if (v4)
      {
        (*(*v4 + 8))(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::unique_ptr<MIL::IRCircularBufferValueType const>>,std::__unordered_map_hasher<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::__hash_value_type<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::unique_ptr<MIL::IRCircularBufferValueType const>>,std::hash<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>>,std::equal_to<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>>,true>,std::__unordered_map_equal<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::__hash_value_type<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::unique_ptr<MIL::IRCircularBufferValueType const>>,std::equal_to<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>>,std::hash<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>>,true>,std::allocator<std::__hash_value_type<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::unique_ptr<MIL::IRCircularBufferValueType const>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::unique_ptr<MIL::IRCircularBufferValueType const>>,std::__unordered_map_hasher<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::__hash_value_type<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::unique_ptr<MIL::IRCircularBufferValueType const>>,std::hash<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>>,std::equal_to<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>>,true>,std::__unordered_map_equal<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::__hash_value_type<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::unique_ptr<MIL::IRCircularBufferValueType const>>,std::equal_to<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>>,std::hash<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>>,true>,std::allocator<std::__hash_value_type<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::unique_ptr<MIL::IRCircularBufferValueType const>>>>::__deallocate_node( a1,  *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::unique_ptr<MIL::IRCircularBufferValueType const>>,std::__unordered_map_hasher<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::__hash_value_type<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::unique_ptr<MIL::IRCircularBufferValueType const>>,std::hash<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>>,std::equal_to<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>>,true>,std::__unordered_map_equal<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::__hash_value_type<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::unique_ptr<MIL::IRCircularBufferValueType const>>,std::equal_to<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>>,std::hash<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>>,true>,std::allocator<std::__hash_value_type<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::unique_ptr<MIL::IRCircularBufferValueType const>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::pair<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>> const,std::unique_ptr<MIL::IRCircularBufferValueType const>>::~pair(v2 + 2);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void *std::pair<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>> const,std::unique_ptr<MIL::IRCircularBufferValueType const>>::~pair(void *a1)
{
  v2 = a1[13];
  a1[13] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table((a1 + 8));
  v3 = a1[6];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = a1[4];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = a1[2];
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<std::tuple<MIL::IRPixelFormatType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::unique_ptr<MIL::IRPixelBufferValueType const>>,std::__unordered_map_hasher<std::tuple<MIL::IRPixelFormatType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::__hash_value_type<std::tuple<MIL::IRPixelFormatType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::unique_ptr<MIL::IRPixelBufferValueType const>>,std::hash<std::tuple<MIL::IRPixelFormatType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>>,std::equal_to<std::tuple<MIL::IRPixelFormatType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>>,true>,std::__unordered_map_equal<std::tuple<MIL::IRPixelFormatType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::__hash_value_type<std::tuple<MIL::IRPixelFormatType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::unique_ptr<MIL::IRPixelBufferValueType const>>,std::equal_to<std::tuple<MIL::IRPixelFormatType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>>,std::hash<std::tuple<MIL::IRPixelFormatType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>>,true>,std::allocator<std::__hash_value_type<std::tuple<MIL::IRPixelFormatType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::unique_ptr<MIL::IRPixelBufferValueType const>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::tuple<MIL::IRPixelFormatType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::unique_ptr<MIL::IRPixelBufferValueType const>>,std::__unordered_map_hasher<std::tuple<MIL::IRPixelFormatType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::__hash_value_type<std::tuple<MIL::IRPixelFormatType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::unique_ptr<MIL::IRPixelBufferValueType const>>,std::hash<std::tuple<MIL::IRPixelFormatType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>>,std::equal_to<std::tuple<MIL::IRPixelFormatType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>>,true>,std::__unordered_map_equal<std::tuple<MIL::IRPixelFormatType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::__hash_value_type<std::tuple<MIL::IRPixelFormatType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::unique_ptr<MIL::IRPixelBufferValueType const>>,std::equal_to<std::tuple<MIL::IRPixelFormatType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>>,std::hash<std::tuple<MIL::IRPixelFormatType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>>,true>,std::allocator<std::__hash_value_type<std::tuple<MIL::IRPixelFormatType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::unique_ptr<MIL::IRPixelBufferValueType const>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::tuple<MIL::IRPixelFormatType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::unique_ptr<MIL::IRPixelBufferValueType const>>,std::__unordered_map_hasher<std::tuple<MIL::IRPixelFormatType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::__hash_value_type<std::tuple<MIL::IRPixelFormatType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::unique_ptr<MIL::IRPixelBufferValueType const>>,std::hash<std::tuple<MIL::IRPixelFormatType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>>,std::equal_to<std::tuple<MIL::IRPixelFormatType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>>,true>,std::__unordered_map_equal<std::tuple<MIL::IRPixelFormatType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::__hash_value_type<std::tuple<MIL::IRPixelFormatType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::unique_ptr<MIL::IRPixelBufferValueType const>>,std::equal_to<std::tuple<MIL::IRPixelFormatType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>>,std::hash<std::tuple<MIL::IRPixelFormatType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>>,true>,std::allocator<std::__hash_value_type<std::tuple<MIL::IRPixelFormatType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::unique_ptr<MIL::IRPixelBufferValueType const>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::pair<std::tuple<MIL::IRPixelFormatType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>> const,std::unique_ptr<MIL::IRPixelBufferValueType const>>::~pair(v2 + 2);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void *std::pair<std::tuple<MIL::IRPixelFormatType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>> const,std::unique_ptr<MIL::IRPixelBufferValueType const>>::~pair(void *a1)
{
  v2 = a1[12];
  a1[12] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table((a1 + 7));
  v3 = a1[6];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = a1[4];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = a1[2];
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::unique_ptr<MIL::IRTensorBufferValueType const>>,std::__unordered_map_hasher<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::__hash_value_type<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::unique_ptr<MIL::IRTensorBufferValueType const>>,std::hash<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>>,std::equal_to<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>>,true>,std::__unordered_map_equal<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::__hash_value_type<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::unique_ptr<MIL::IRTensorBufferValueType const>>,std::equal_to<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>>,std::hash<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>>,true>,std::allocator<std::__hash_value_type<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::unique_ptr<MIL::IRTensorBufferValueType const>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::unique_ptr<MIL::IRTensorBufferValueType const>>,std::__unordered_map_hasher<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::__hash_value_type<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::unique_ptr<MIL::IRTensorBufferValueType const>>,std::hash<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>>,std::equal_to<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>>,true>,std::__unordered_map_equal<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::__hash_value_type<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::unique_ptr<MIL::IRTensorBufferValueType const>>,std::equal_to<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>>,std::hash<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>>,true>,std::allocator<std::__hash_value_type<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::unique_ptr<MIL::IRTensorBufferValueType const>>>>::__deallocate_node( a1,  *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::unique_ptr<MIL::IRTensorBufferValueType const>>,std::__unordered_map_hasher<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::__hash_value_type<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::unique_ptr<MIL::IRTensorBufferValueType const>>,std::hash<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>>,std::equal_to<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>>,true>,std::__unordered_map_equal<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::__hash_value_type<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::unique_ptr<MIL::IRTensorBufferValueType const>>,std::equal_to<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>>,std::hash<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>>,true>,std::allocator<std::__hash_value_type<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::unique_ptr<MIL::IRTensorBufferValueType const>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::pair<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>> const,std::unique_ptr<MIL::IRTensorBufferValueType const>>::~pair(v2 + 2);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void *std::pair<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>> const,std::unique_ptr<MIL::IRTensorBufferValueType const>>::~pair(void *a1)
{
  v2 = a1[13];
  a1[13] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table((a1 + 8));
  v3 = a1[7];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = a1[4];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = a1[2];
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<std::pair<MIL::IRValueType const*,MIL::IRValueType const*>,std::unique_ptr<MIL::IRDictionaryValueType const>>,std::__unordered_map_hasher<std::pair<MIL::IRValueType const*,MIL::IRValueType const*>,std::__hash_value_type<std::pair<MIL::IRValueType const*,MIL::IRValueType const*>,std::unique_ptr<MIL::IRDictionaryValueType const>>,std::hash<std::pair<MIL::IRValueType const*,MIL::IRValueType const*>>,std::equal_to<std::pair<MIL::IRValueType const*,MIL::IRValueType const*>>,true>,std::__unordered_map_equal<std::pair<MIL::IRValueType const*,MIL::IRValueType const*>,std::__hash_value_type<std::pair<MIL::IRValueType const*,MIL::IRValueType const*>,std::unique_ptr<MIL::IRDictionaryValueType const>>,std::equal_to<std::pair<MIL::IRValueType const*,MIL::IRValueType const*>>,std::hash<std::pair<MIL::IRValueType const*,MIL::IRValueType const*>>,true>,std::allocator<std::__hash_value_type<std::pair<MIL::IRValueType const*,MIL::IRValueType const*>,std::unique_ptr<MIL::IRDictionaryValueType const>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::pair<MIL::IRValueType const*,MIL::IRValueType const*>,std::unique_ptr<MIL::IRDictionaryValueType const>>,std::__unordered_map_hasher<std::pair<MIL::IRValueType const*,MIL::IRValueType const*>,std::__hash_value_type<std::pair<MIL::IRValueType const*,MIL::IRValueType const*>,std::unique_ptr<MIL::IRDictionaryValueType const>>,std::hash<std::pair<MIL::IRValueType const*,MIL::IRValueType const*>>,std::equal_to<std::pair<MIL::IRValueType const*,MIL::IRValueType const*>>,true>,std::__unordered_map_equal<std::pair<MIL::IRValueType const*,MIL::IRValueType const*>,std::__hash_value_type<std::pair<MIL::IRValueType const*,MIL::IRValueType const*>,std::unique_ptr<MIL::IRDictionaryValueType const>>,std::equal_to<std::pair<MIL::IRValueType const*,MIL::IRValueType const*>>,std::hash<std::pair<MIL::IRValueType const*,MIL::IRValueType const*>>,true>,std::allocator<std::__hash_value_type<std::pair<MIL::IRValueType const*,MIL::IRValueType const*>,std::unique_ptr<MIL::IRDictionaryValueType const>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::pair<MIL::IRValueType const*,MIL::IRValueType const*>,std::unique_ptr<MIL::IRDictionaryValueType const>>,std::__unordered_map_hasher<std::pair<MIL::IRValueType const*,MIL::IRValueType const*>,std::__hash_value_type<std::pair<MIL::IRValueType const*,MIL::IRValueType const*>,std::unique_ptr<MIL::IRDictionaryValueType const>>,std::hash<std::pair<MIL::IRValueType const*,MIL::IRValueType const*>>,std::equal_to<std::pair<MIL::IRValueType const*,MIL::IRValueType const*>>,true>,std::__unordered_map_equal<std::pair<MIL::IRValueType const*,MIL::IRValueType const*>,std::__hash_value_type<std::pair<MIL::IRValueType const*,MIL::IRValueType const*>,std::unique_ptr<MIL::IRDictionaryValueType const>>,std::equal_to<std::pair<MIL::IRValueType const*,MIL::IRValueType const*>>,std::hash<std::pair<MIL::IRValueType const*,MIL::IRValueType const*>>,true>,std::allocator<std::__hash_value_type<std::pair<MIL::IRValueType const*,MIL::IRValueType const*>,std::unique_ptr<MIL::IRDictionaryValueType const>>>>::__deallocate_node(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[4];
      v2[4] = 0;
      if (v4)
      {
        (*(*v4 + 8))(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<std::shared_ptr<std::vector<MIL::IRValueType const*>>,std::unique_ptr<MIL::IRTupleValueType const>>,std::__unordered_map_hasher<std::shared_ptr<std::vector<MIL::IRValueType const*>>,std::__hash_value_type<std::shared_ptr<std::vector<MIL::IRValueType const*>>,std::unique_ptr<MIL::IRTupleValueType const>>,std::hash<std::shared_ptr<std::vector<MIL::IRValueType const*>>>,std::equal_to<std::shared_ptr<std::vector<MIL::IRValueType const*>>>,true>,std::__unordered_map_equal<std::shared_ptr<std::vector<MIL::IRValueType const*>>,std::__hash_value_type<std::shared_ptr<std::vector<MIL::IRValueType const*>>,std::unique_ptr<MIL::IRTupleValueType const>>,std::equal_to<std::shared_ptr<std::vector<MIL::IRValueType const*>>>,std::hash<std::shared_ptr<std::vector<MIL::IRValueType const*>>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<std::vector<MIL::IRValueType const*>>,std::unique_ptr<MIL::IRTupleValueType const>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::shared_ptr<std::vector<MIL::IRValueType const*>>,std::unique_ptr<MIL::IRTupleValueType const>>,std::__unordered_map_hasher<std::shared_ptr<std::vector<MIL::IRValueType const*>>,std::__hash_value_type<std::shared_ptr<std::vector<MIL::IRValueType const*>>,std::unique_ptr<MIL::IRTupleValueType const>>,std::hash<std::shared_ptr<std::vector<MIL::IRValueType const*>>>,std::equal_to<std::shared_ptr<std::vector<MIL::IRValueType const*>>>,true>,std::__unordered_map_equal<std::shared_ptr<std::vector<MIL::IRValueType const*>>,std::__hash_value_type<std::shared_ptr<std::vector<MIL::IRValueType const*>>,std::unique_ptr<MIL::IRTupleValueType const>>,std::equal_to<std::shared_ptr<std::vector<MIL::IRValueType const*>>>,std::hash<std::shared_ptr<std::vector<MIL::IRValueType const*>>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<std::vector<MIL::IRValueType const*>>,std::unique_ptr<MIL::IRTupleValueType const>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::shared_ptr<std::vector<MIL::IRValueType const*>>,std::unique_ptr<MIL::IRTupleValueType const>>,std::__unordered_map_hasher<std::shared_ptr<std::vector<MIL::IRValueType const*>>,std::__hash_value_type<std::shared_ptr<std::vector<MIL::IRValueType const*>>,std::unique_ptr<MIL::IRTupleValueType const>>,std::hash<std::shared_ptr<std::vector<MIL::IRValueType const*>>>,std::equal_to<std::shared_ptr<std::vector<MIL::IRValueType const*>>>,true>,std::__unordered_map_equal<std::shared_ptr<std::vector<MIL::IRValueType const*>>,std::__hash_value_type<std::shared_ptr<std::vector<MIL::IRValueType const*>>,std::unique_ptr<MIL::IRTupleValueType const>>,std::equal_to<std::shared_ptr<std::vector<MIL::IRValueType const*>>>,std::hash<std::shared_ptr<std::vector<MIL::IRValueType const*>>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<std::vector<MIL::IRValueType const*>>,std::unique_ptr<MIL::IRTupleValueType const>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::shared_ptr<std::vector<MIL::IRValueType const*>> const,std::unique_ptr<MIL::IRTupleValueType const>>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*> const>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::unique_ptr<MIL::IRTensorValueType const>>,std::__unordered_map_hasher<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*> const>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::__hash_value_type<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*> const>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::unique_ptr<MIL::IRTensorValueType const>>,std::hash<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*> const>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>>,std::equal_to<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*> const>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>>,true>,std::__unordered_map_equal<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*> const>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::__hash_value_type<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*> const>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::unique_ptr<MIL::IRTensorValueType const>>,std::equal_to<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*> const>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>>,std::hash<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*> const>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>>,true>,std::allocator<std::__hash_value_type<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*> const>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::unique_ptr<MIL::IRTensorValueType const>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*> const>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::unique_ptr<MIL::IRTensorValueType const>>,std::__unordered_map_hasher<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*> const>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::__hash_value_type<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*> const>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::unique_ptr<MIL::IRTensorValueType const>>,std::hash<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*> const>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>>,std::equal_to<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*> const>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>>,true>,std::__unordered_map_equal<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*> const>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::__hash_value_type<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*> const>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::unique_ptr<MIL::IRTensorValueType const>>,std::equal_to<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*> const>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>>,std::hash<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*> const>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>>,true>,std::allocator<std::__hash_value_type<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*> const>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::unique_ptr<MIL::IRTensorValueType const>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*> const>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::unique_ptr<MIL::IRTensorValueType const>>,std::__unordered_map_hasher<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*> const>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::__hash_value_type<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*> const>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::unique_ptr<MIL::IRTensorValueType const>>,std::hash<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*> const>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>>,std::equal_to<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*> const>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>>,true>,std::__unordered_map_equal<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*> const>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::__hash_value_type<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*> const>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::unique_ptr<MIL::IRTensorValueType const>>,std::equal_to<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*> const>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>>,std::hash<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*> const>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>>,true>,std::allocator<std::__hash_value_type<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*> const>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::unique_ptr<MIL::IRTensorValueType const>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::pair<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*> const>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>> const,std::unique_ptr<MIL::IRTensorValueType const>>::~pair((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t std::pair<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*> const>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>> const,std::unique_ptr<MIL::IRTensorValueType const>>::~pair(uint64_t a1)
{
  v2 = *(a1 + 64);
  *(a1 + 64) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 24);
  v3 = *(a1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<MIL::IRConstantProperty const>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<MIL::IRConstantProperty const>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<MIL::IRConstantProperty const>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<MIL::IRConstantProperty const>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<MIL::IRConstantProperty const>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<MIL::IRConstantProperty const>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<MIL::IRConstantProperty const>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<MIL::IRConstantProperty const>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<MIL::IRConstantProperty const>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<MIL::IRConstantProperty const>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<MIL::IRConstantProperty const>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<MIL::IRConstantProperty const>>>>::__deallocate_node(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[3];
      v2[3] = 0;
      if (v4)
      {
        (*(*v4 + 8))(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<MIL::IRConstantDimension const>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<MIL::IRConstantDimension const>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<MIL::IRConstantDimension const>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<MIL::IRConstantDimension const>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<MIL::IRConstantDimension const>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<MIL::IRConstantDimension const>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<MIL::IRConstantDimension const>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<MIL::IRConstantDimension const>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<MIL::IRConstantDimension const>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<MIL::IRConstantDimension const>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<MIL::IRConstantDimension const>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<MIL::IRConstantDimension const>>>>::__deallocate_node(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[3];
      v2[3] = 0;
      if (v4)
      {
        (*(*v4 + 8))(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<MIL::IROpset const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<MIL::IROpset const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<MIL::IROpset const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<MIL::IROpset const>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<MIL::IROpset const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<MIL::IROpset const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<MIL::IROpset const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<MIL::IROpset const>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<MIL::IROpset const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<MIL::IROpset const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<MIL::IROpset const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<MIL::IROpset const>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unique_ptr<MIL::IROpset const>>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unique_ptr<MIL::IROpset const>>,0>(uint64_t a1)
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

void std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,false>(uint64_t a1, const void **a2, uint64_t a3, uint64_t a4, char a5)
{
LABEL_1:
  v8 = a2 - 3;
  v74 = a2 - 6;
  v9 = a2 - 9;
  v10 = a1;
LABEL_2:
  v11 = 1 - a4;
  while (1)
  {
    a1 = v10;
    v12 = v11;
    v13 = a2 - v10;
    v14 = 0xAAAAAAAAAAAAAAABLL * (a2 - v10);
    if (v14 > 2)
    {
      break;
    }

    if (v14 < 2)
    {
      return;
    }

    if (v14 == 2)
    {
      if (std::less<std::string>::operator()[abi:ne200100](a3, a2 - 3, v10))
      {
LABEL_77:
        v122 = v10[2];
        v98 = *v10;
        v70 = *v8;
        v10[2] = v8[2];
        *v10 = v70;
        *v8 = v98;
        v59 = v122;
        goto LABEL_78;
      }

      return;
    }

LABEL_10:
    if (v13 <= 575)
    {
      if (a5)
      {

        std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *>(v10, a2, a3);
      }

      else
      {

        std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *>(v10, a2, a3);
      }

      return;
    }

    if (v12 == 1)
    {
      if (v10 != a2)
      {

        std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,std::string *>(v10, a2, a2, a3);
      }

      return;
    }

    v15 = v14 >> 1;
    v16 = &v10[3 * (v14 >> 1)];
    if (v13 >= 0xC01)
    {
      v17 = std::less<std::string>::operator()[abi:ne200100](a3, &v10[3 * v15], v10);
      v18 = std::less<std::string>::operator()[abi:ne200100](a3, a2 - 3, (a1 + 24 * v15));
      if (v17)
      {
        if (v18)
        {
          v100 = *(a1 + 16);
          v76 = *a1;
          v19 = *v8;
          *(a1 + 16) = *(a2 - 1);
          *a1 = v19;
          goto LABEL_27;
        }

        v106 = *(a1 + 16);
        v82 = *a1;
        v27 = *v16;
        *(a1 + 16) = v16[2];
        *a1 = v27;
        v16[2] = v106;
        *v16 = v82;
        if (std::less<std::string>::operator()[abi:ne200100](a3, a2 - 3, (a1 + 24 * v15)))
        {
          v100 = v16[2];
          v76 = *v16;
          v28 = *v8;
          v16[2] = *(a2 - 1);
          *v16 = v28;
LABEL_27:
          *v8 = v76;
          *(a2 - 1) = v100;
        }
      }

      else if (v18)
      {
        v102 = v16[2];
        v78 = *v16;
        v23 = *v8;
        v16[2] = *(a2 - 1);
        *v16 = v23;
        *v8 = v78;
        *(a2 - 1) = v102;
        if (std::less<std::string>::operator()[abi:ne200100](a3, (a1 + 24 * v15), a1))
        {
          v103 = *(a1 + 16);
          v79 = *a1;
          v24 = *v16;
          *(a1 + 16) = v16[2];
          *a1 = v24;
          v16[2] = v103;
          *v16 = v79;
        }
      }

      v29 = a1 + 24 * v15 - 24;
      v30 = std::less<std::string>::operator()[abi:ne200100](a3, v29, (a1 + 24));
      v31 = std::less<std::string>::operator()[abi:ne200100](a3, v74, v29);
      if (v30)
      {
        if (v31)
        {
          v32 = *(a1 + 40);
          v33 = *(a1 + 24);
          v34 = *(a2 - 4);
          *(a1 + 24) = *v74;
          *(a1 + 40) = v34;
          *v74 = v33;
          *(a2 - 4) = v32;
        }

        else
        {
          v86 = *(a1 + 24);
          v110 = *(a1 + 40);
          v39 = *(a1 + 24 * v15 - 8);
          *(a1 + 24) = *v29;
          *(a1 + 40) = v39;
          *(a1 + 24 * v15 - 8) = v110;
          *v29 = v86;
          if (std::less<std::string>::operator()[abi:ne200100](a3, v74, v29))
          {
            v111 = *(a1 + 24 * v15 - 8);
            v87 = *v29;
            v40 = *v74;
            *(a1 + 24 * v15 - 8) = *(a2 - 4);
            *v29 = v40;
            *v74 = v87;
            *(a2 - 4) = v111;
          }
        }
      }

      else if (v31)
      {
        v107 = *(a1 + 24 * v15 - 8);
        v83 = *v29;
        v35 = *v74;
        *(a1 + 24 * v15 - 8) = *(a2 - 4);
        *v29 = v35;
        *v74 = v83;
        *(a2 - 4) = v107;
        if (std::less<std::string>::operator()[abi:ne200100](a3, v29, (a1 + 24)))
        {
          v84 = *(a1 + 24);
          v108 = *(a1 + 40);
          v36 = *(a1 + 24 * v15 - 8);
          *(a1 + 24) = *v29;
          *(a1 + 40) = v36;
          *(a1 + 24 * v15 - 8) = v108;
          *v29 = v84;
        }
      }

      v41 = a1 + 24 * v15;
      v42 = std::less<std::string>::operator()[abi:ne200100](a3, (v41 + 24), (a1 + 48));
      v43 = std::less<std::string>::operator()[abi:ne200100](a3, a2 - 9, (v41 + 24));
      if (v42)
      {
        if (v43)
        {
          v44 = *(a1 + 64);
          v45 = *(a1 + 48);
          v46 = *(a2 - 7);
          *(a1 + 48) = *v9;
          *(a1 + 64) = v46;
          *v9 = v45;
          goto LABEL_47;
        }

        v90 = *(a1 + 48);
        v114 = *(a1 + 64);
        v49 = *(v41 + 40);
        *(a1 + 48) = *(v41 + 24);
        *(a1 + 64) = v49;
        *(v41 + 40) = v114;
        *(v41 + 24) = v90;
        if (std::less<std::string>::operator()[abi:ne200100](a3, a2 - 9, (v41 + 24)))
        {
          v115 = *(v41 + 40);
          v91 = *(v41 + 24);
          v50 = *v9;
          *(v41 + 40) = *(a2 - 7);
          *(v41 + 24) = v50;
          *v9 = v91;
          v44 = v115;
LABEL_47:
          *(a2 - 7) = v44;
        }
      }

      else if (v43)
      {
        v112 = *(v41 + 40);
        v88 = *(v41 + 24);
        v47 = *v9;
        *(v41 + 40) = *(a2 - 7);
        *(v41 + 24) = v47;
        *v9 = v88;
        *(a2 - 7) = v112;
        if (std::less<std::string>::operator()[abi:ne200100](a3, (v41 + 24), (a1 + 48)))
        {
          v89 = *(a1 + 48);
          v113 = *(a1 + 64);
          v48 = *(v41 + 40);
          *(a1 + 48) = *(v41 + 24);
          *(a1 + 64) = v48;
          *(v41 + 40) = v113;
          *(v41 + 24) = v89;
        }
      }

      v51 = std::less<std::string>::operator()[abi:ne200100](a3, v16, v29);
      v52 = std::less<std::string>::operator()[abi:ne200100](a3, (v41 + 24), v16);
      if (v51)
      {
        if (v52)
        {
          v116 = *(v29 + 16);
          v92 = *v29;
          *v29 = *(v41 + 24);
          *(v29 + 16) = *(v41 + 40);
          goto LABEL_56;
        }

        v119 = *(v29 + 16);
        v95 = *v29;
        *v29 = *v16;
        *(v29 + 16) = v16[2];
        v16[2] = v119;
        *v16 = v95;
        if (std::less<std::string>::operator()[abi:ne200100](a3, (v41 + 24), v16))
        {
          v116 = v16[2];
          v92 = *v16;
          *v16 = *(v41 + 24);
          v16[2] = *(v41 + 40);
LABEL_56:
          *(v41 + 40) = v116;
          *(v41 + 24) = v92;
        }
      }

      else if (v52)
      {
        v117 = v16[2];
        v93 = *v16;
        *v16 = *(v41 + 24);
        v16[2] = *(v41 + 40);
        *(v41 + 40) = v117;
        *(v41 + 24) = v93;
        if (std::less<std::string>::operator()[abi:ne200100](a3, v16, v29))
        {
          v118 = *(v29 + 16);
          v94 = *v29;
          *v29 = *v16;
          *(v29 + 16) = v16[2];
          v16[2] = v118;
          *v16 = v94;
        }
      }

      v120 = *(a1 + 16);
      v96 = *a1;
      v53 = *v16;
      *(a1 + 16) = v16[2];
      *a1 = v53;
      v16[2] = v120;
      *v16 = v96;
      goto LABEL_58;
    }

    v20 = std::less<std::string>::operator()[abi:ne200100](a3, v10, &v10[3 * v15]);
    v21 = std::less<std::string>::operator()[abi:ne200100](a3, a2 - 3, a1);
    if (v20)
    {
      if (v21)
      {
        v101 = v16[2];
        v77 = *v16;
        v22 = *v8;
        v16[2] = *(a2 - 1);
        *v16 = v22;
LABEL_36:
        *v8 = v77;
        *(a2 - 1) = v101;
        goto LABEL_58;
      }

      v109 = v16[2];
      v85 = *v16;
      v37 = *a1;
      v16[2] = *(a1 + 16);
      *v16 = v37;
      *(a1 + 16) = v109;
      *a1 = v85;
      if (std::less<std::string>::operator()[abi:ne200100](a3, a2 - 3, a1))
      {
        v101 = *(a1 + 16);
        v77 = *a1;
        v38 = *v8;
        *(a1 + 16) = *(a2 - 1);
        *a1 = v38;
        goto LABEL_36;
      }
    }

    else if (v21)
    {
      v104 = *(a1 + 16);
      v80 = *a1;
      v25 = *v8;
      *(a1 + 16) = *(a2 - 1);
      *a1 = v25;
      *v8 = v80;
      *(a2 - 1) = v104;
      if (std::less<std::string>::operator()[abi:ne200100](a3, a1, (a1 + 24 * v15)))
      {
        v105 = v16[2];
        v81 = *v16;
        v26 = *a1;
        v16[2] = *(a1 + 16);
        *v16 = v26;
        *(a1 + 16) = v105;
        *a1 = v81;
      }
    }

LABEL_58:
    if ((a5 & 1) == 0 && !std::less<std::string>::operator()[abi:ne200100](a3, (a1 - 24), a1))
    {
      v10 = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::string *,std::__less<void,void> &>(a1, a2, a3);
      goto LABEL_65;
    }

    v54 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::string *,std::__less<void,void> &>(a1, a2, a3);
    if ((v55 & 1) == 0)
    {
      goto LABEL_63;
    }

    v56 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *>(a1, v54, a3);
    v10 = (v54 + 24);
    if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *>(v54 + 24, a2, a3))
    {
      a4 = -v12;
      a2 = v54;
      if (v56)
      {
        return;
      }

      goto LABEL_1;
    }

    v11 = v12 + 1;
    if (!v56)
    {
LABEL_63:
      std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,false>(a1, v54, a3, -v12, a5 & 1);
      v10 = (v54 + 24);
LABEL_65:
      a5 = 0;
      a4 = -v12;
      goto LABEL_2;
    }
  }

  if (v14 != 3)
  {
    if (v14 == 4)
    {

      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,0>(v10, v10 + 3, v10 + 6, (a2 - 3), a3);
      return;
    }

    if (v14 == 5)
    {
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,0>(v10, v10 + 3, v10 + 6, (v10 + 9), a3);
      if (!std::less<std::string>::operator()[abi:ne200100](a3, a2 - 3, v10 + 9))
      {
        return;
      }

      v62 = v10[11];
      v63 = *(v10 + 9);
      v64 = *(a2 - 1);
      *(v10 + 9) = *v8;
      v10[11] = v64;
      *v8 = v63;
      *(a2 - 1) = v62;
      if (!std::less<std::string>::operator()[abi:ne200100](a3, v10 + 9, v10 + 6))
      {
        return;
      }

      v65 = v10[8];
      v66 = *(v10 + 3);
      *(v10 + 3) = *(v10 + 9);
      v10[8] = v10[11];
      *(v10 + 9) = v66;
      v10[11] = v65;
      if (!std::less<std::string>::operator()[abi:ne200100](a3, v10 + 6, v10 + 3))
      {
        return;
      }

      v67 = v10[5];
      v68 = *(v10 + 3);
      *(v10 + 3) = *(v10 + 3);
      v10[5] = v10[8];
      *(v10 + 3) = v68;
      v10[8] = v67;
      goto LABEL_92;
    }

    goto LABEL_10;
  }

  v57 = std::less<std::string>::operator()[abi:ne200100](a3, v10 + 3, v10);
  v58 = std::less<std::string>::operator()[abi:ne200100](a3, v8, v10 + 3);
  if (!v57)
  {
    if (!v58)
    {
      return;
    }

    v71 = v10[5];
    v72 = *(v10 + 3);
    v73 = v8[2];
    *(v10 + 3) = *v8;
    v10[5] = v73;
    *v8 = v72;
    v8[2] = v71;
LABEL_92:
    if (std::less<std::string>::operator()[abi:ne200100](a3, v10 + 3, v10))
    {
      v123 = v10[2];
      v99 = *v10;
      *v10 = *(v10 + 3);
      v10[2] = v10[5];
      *(v10 + 3) = v99;
      v10[5] = v123;
    }

    return;
  }

  if (v58)
  {
    goto LABEL_77;
  }

  v121 = v10[2];
  v97 = *v10;
  *v10 = *(v10 + 3);
  v10[2] = v10[5];
  *(v10 + 3) = v97;
  v10[5] = v121;
  if (std::less<std::string>::operator()[abi:ne200100](a3, v8, v10 + 3))
  {
    v59 = v10[5];
    v60 = *(v10 + 3);
    v61 = v8[2];
    *(v10 + 3) = *v8;
    v10[5] = v61;
    *v8 = v60;
LABEL_78:
    v8[2] = v59;
  }
}

__n128 std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,0>(const void **a1, const void **a2, const void **a3, __int128 *a4, uint64_t a5)
{
  v10 = std::less<std::string>::operator()[abi:ne200100](a5, a2, a1);
  v11 = std::less<std::string>::operator()[abi:ne200100](a5, a3, a2);
  if (v10)
  {
    if (v11)
    {
      v12 = a1[2];
      v13 = *a1;
      v14 = a3[2];
      *a1 = *a3;
      a1[2] = v14;
LABEL_9:
      *a3 = v13;
      a3[2] = v12;
      goto LABEL_10;
    }

    v21 = a1[2];
    v22 = *a1;
    v23 = a2[2];
    *a1 = *a2;
    a1[2] = v23;
    *a2 = v22;
    a2[2] = v21;
    if (std::less<std::string>::operator()[abi:ne200100](a5, a3, a2))
    {
      v12 = a2[2];
      v13 = *a2;
      v24 = a3[2];
      *a2 = *a3;
      a2[2] = v24;
      goto LABEL_9;
    }
  }

  else if (v11)
  {
    v15 = a2[2];
    v16 = *a2;
    v17 = a3[2];
    *a2 = *a3;
    a2[2] = v17;
    *a3 = v16;
    a3[2] = v15;
    if (std::less<std::string>::operator()[abi:ne200100](a5, a2, a1))
    {
      v18 = a1[2];
      v19 = *a1;
      v20 = a2[2];
      *a1 = *a2;
      a1[2] = v20;
      *a2 = v19;
      a2[2] = v18;
    }
  }

LABEL_10:
  if (std::less<std::string>::operator()[abi:ne200100](a5, a4, a3))
  {
    v26 = a3[2];
    v27 = *a3;
    v28 = *(a4 + 2);
    *a3 = *a4;
    a3[2] = v28;
    *a4 = v27;
    *(a4 + 2) = v26;
    if (std::less<std::string>::operator()[abi:ne200100](a5, a3, a2))
    {
      v29 = a2[2];
      v30 = *a2;
      v31 = a3[2];
      *a2 = *a3;
      a2[2] = v31;
      *a3 = v30;
      a3[2] = v29;
      if (std::less<std::string>::operator()[abi:ne200100](a5, a2, a1))
      {
        v32 = a1[2];
        result = *a1;
        v33 = a2[2];
        *a1 = *a2;
        a1[2] = v33;
        *a2 = result;
        a2[2] = v32;
      }
    }
  }

  return result;
}

void std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *>(uint64_t a1, const void **a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v18 = v3;
    v19 = v4;
    v7 = (a1 + 24);
    if ((a1 + 24) != a2)
    {
      v9 = 0;
      v10 = a1;
      do
      {
        v11 = v10;
        v10 = v7;
        if (std::less<std::string>::operator()[abi:ne200100](a3, v7, v11))
        {
          v16 = *v10;
          v17 = v10[2];
          v10[1] = 0;
          v10[2] = 0;
          *v10 = 0;
          v12 = v9;
          do
          {
            v13 = a1 + v12;
            if (*(a1 + v12 + 47) < 0)
            {
              operator delete(*(v13 + 24));
            }

            *(v13 + 24) = *v13;
            *(v13 + 40) = *(v13 + 16);
            *(v13 + 23) = 0;
            *v13 = 0;
            if (!v12)
            {
              v15 = a1;
              goto LABEL_13;
            }

            v12 -= 24;
          }

          while (std::less<std::string>::operator()[abi:ne200100](a3, &v16, (v12 + a1)));
          v14 = *(a1 + v12 + 47);
          v15 = a1 + v12 + 24;
          if (v14 < 0)
          {
            operator delete(*v15);
          }

LABEL_13:
          *v15 = v16;
          *(v15 + 16) = v17;
        }

        v7 = v10 + 3;
        v9 += 24;
      }

      while (v10 + 3 != a2);
    }
  }
}

void std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *>(const void **a1, const void **a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v15 = v3;
    v16 = v4;
    v6 = a1;
    v7 = a1 + 3;
    if (a1 + 3 != a2)
    {
      v9 = a1 - 3;
      do
      {
        v10 = v6;
        v6 = v7;
        if (std::less<std::string>::operator()[abi:ne200100](a3, v7, v10))
        {
          v13 = *v6;
          v14 = v6[2];
          v6[1] = 0;
          v6[2] = 0;
          *v6 = 0;
          v11 = v9;
          do
          {
            if (*(v11 + 71) < 0)
            {
              operator delete(v11[6]);
            }

            *(v11 + 3) = *(v11 + 3);
            v11[8] = v11[5];
            *(v11 + 47) = 0;
            *(v11 + 24) = 0;
            v12 = std::less<std::string>::operator()[abi:ne200100](a3, &v13, v11);
            v11 -= 3;
          }

          while (v12);
          if (*(v11 + 71) < 0)
          {
            operator delete(v11[6]);
          }

          *(v11 + 3) = v13;
          v11[8] = v14;
        }

        v7 = v6 + 3;
        v9 += 3;
      }

      while (v6 + 3 != a2);
    }
  }
}

const void **std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::string *,std::__less<void,void> &>(const void **a1, unint64_t a2, uint64_t a3)
{
  v4 = a2;
  v16 = *a1;
  v17 = a1[2];
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  if (std::less<std::string>::operator()[abi:ne200100](a3, &v16, (a2 - 24)))
  {
    v6 = a1;
    do
    {
      v6 += 3;
    }

    while (!std::less<std::string>::operator()[abi:ne200100](a3, &v16, v6));
  }

  else
  {
    v7 = a1 + 3;
    do
    {
      v6 = v7;
      if (v7 >= v4)
      {
        break;
      }

      v8 = std::less<std::string>::operator()[abi:ne200100](a3, &v16, v7);
      v7 = v6 + 3;
    }

    while (!v8);
  }

  if (v6 < v4)
  {
    do
    {
      v4 -= 24;
    }

    while (std::less<std::string>::operator()[abi:ne200100](a3, &v16, v4));
  }

  while (v6 < v4)
  {
    v9 = *v6;
    v19 = v6[2];
    v18 = v9;
    v10 = *v4;
    v6[2] = *(v4 + 16);
    *v6 = v10;
    v11 = v18;
    *(v4 + 16) = v19;
    *v4 = v11;
    do
    {
      v6 += 3;
    }

    while (!std::less<std::string>::operator()[abi:ne200100](a3, &v16, v6));
    do
    {
      v4 -= 24;
    }

    while (std::less<std::string>::operator()[abi:ne200100](a3, &v16, v4));
  }

  v12 = (v6 - 3);
  if (v6 - 3 == a1)
  {
    if (*(v6 - 1) < 0)
    {
      operator delete(*v12);
    }
  }

  else
  {
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    v13 = *v12;
    a1[2] = *(v6 - 1);
    *a1 = v13;
    *(v6 - 1) = 0;
    *(v6 - 24) = 0;
  }

  v14 = v16;
  *(v6 - 1) = v17;
  *v12 = v14;
  return v6;
}

unint64_t std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::string *,std::__less<void,void> &>(__int128 *a1, const void **a2, uint64_t a3)
{
  v6 = 0;
  v17 = *a1;
  v18 = *(a1 + 2);
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  *a1 = 0;
  do
  {
    v6 += 24;
  }

  while (std::less<std::string>::operator()[abi:ne200100](a3, (a1 + v6), &v17));
  v7 = a1 + v6;
  if (v6 == 24)
  {
    do
    {
      if (v7 >= a2)
      {
        break;
      }

      a2 -= 3;
    }

    while (!std::less<std::string>::operator()[abi:ne200100](a3, a2, &v17));
  }

  else
  {
    do
    {
      a2 -= 3;
    }

    while (!std::less<std::string>::operator()[abi:ne200100](a3, a2, &v17));
  }

  v8 = a1 + v6;
  if (v7 < a2)
  {
    v9 = a2;
    do
    {
      v19 = *v8;
      v10 = v19;
      v20 = *(v8 + 16);
      v11 = v20;
      v12 = v9[2];
      *v8 = *v9;
      *(v8 + 16) = v12;
      v9[2] = v11;
      *v9 = v10;
      do
      {
        v8 += 24;
      }

      while (std::less<std::string>::operator()[abi:ne200100](a3, v8, &v17));
      do
      {
        v9 -= 3;
      }

      while (!std::less<std::string>::operator()[abi:ne200100](a3, v9, &v17));
    }

    while (v8 < v9);
  }

  v13 = (v8 - 24);
  if ((v8 - 24) == a1)
  {
    if (*(v8 - 1) < 0)
    {
      operator delete(*v13);
    }
  }

  else
  {
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    v14 = *v13;
    *(a1 + 2) = *(v8 - 8);
    *a1 = v14;
    *(v8 - 1) = 0;
    *(v8 - 24) = 0;
  }

  v15 = v17;
  *(v8 - 8) = v18;
  *v13 = v15;
  return v8 - 24;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v7 = a2 - 24;
        v16 = std::less<std::string>::operator()[abi:ne200100](a3, (a1 + 24), a1);
        v17 = std::less<std::string>::operator()[abi:ne200100](a3, v7, (a1 + 24));
        if (v16)
        {
          if (!v17)
          {
            v35 = *(a1 + 16);
            v36 = *a1;
            *a1 = *(a1 + 24);
            *(a1 + 16) = *(a1 + 40);
            *(a1 + 24) = v36;
            *(a1 + 40) = v35;
            if (!std::less<std::string>::operator()[abi:ne200100](a3, v7, (a1 + 24)))
            {
              return 1;
            }

            v18 = *(a1 + 40);
            v19 = *(a1 + 24);
            v37 = *(v7 + 16);
            *(a1 + 24) = *v7;
            *(a1 + 40) = v37;
            goto LABEL_16;
          }

LABEL_15:
          v18 = *(a1 + 16);
          v19 = *a1;
          v20 = *(v7 + 16);
          *a1 = *v7;
          *(a1 + 16) = v20;
LABEL_16:
          *v7 = v19;
          *(v7 + 16) = v18;
          return 1;
        }

        if (!v17)
        {
          return 1;
        }

        v26 = *(a1 + 40);
        v27 = *(a1 + 24);
        v28 = *(v7 + 16);
        *(a1 + 24) = *v7;
        *(a1 + 40) = v28;
        *v7 = v27;
        *(v7 + 16) = v26;
        break;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,0>(a1, (a1 + 24), (a1 + 48), (a2 - 24), a3);
        return 1;
      case 5:
        v8 = a2 - 24;
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,0>(a1, (a1 + 24), (a1 + 48), (a1 + 72), a3);
        if (!std::less<std::string>::operator()[abi:ne200100](a3, v8, (a1 + 72)))
        {
          return 1;
        }

        v9 = *(a1 + 88);
        v10 = *(a1 + 72);
        v11 = *(v8 + 16);
        *(a1 + 72) = *v8;
        *(a1 + 88) = v11;
        *v8 = v10;
        *(v8 + 16) = v9;
        if (!std::less<std::string>::operator()[abi:ne200100](a3, (a1 + 72), (a1 + 48)))
        {
          return 1;
        }

        v12 = *(a1 + 64);
        v13 = *(a1 + 48);
        *(a1 + 48) = *(a1 + 72);
        *(a1 + 64) = *(a1 + 88);
        *(a1 + 72) = v13;
        *(a1 + 88) = v12;
        if (!std::less<std::string>::operator()[abi:ne200100](a3, (a1 + 48), (a1 + 24)))
        {
          return 1;
        }

        v14 = *(a1 + 40);
        v15 = *(a1 + 24);
        *(a1 + 24) = *(a1 + 48);
        *(a1 + 40) = *(a1 + 64);
        *(a1 + 48) = v15;
        *(a1 + 64) = v14;
        break;
      default:
        goto LABEL_17;
    }

    if (std::less<std::string>::operator()[abi:ne200100](a3, (a1 + 24), a1))
    {
      v29 = *(a1 + 16);
      v30 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v30;
      *(a1 + 40) = v29;
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = a2 - 24;
    if (!std::less<std::string>::operator()[abi:ne200100](a3, (a2 - 24), a1))
    {
      return 1;
    }

    goto LABEL_15;
  }

LABEL_17:
  v21 = (a1 + 48);
  v22 = std::less<std::string>::operator()[abi:ne200100](a3, (a1 + 24), a1);
  v23 = std::less<std::string>::operator()[abi:ne200100](a3, (a1 + 48), (a1 + 24));
  if (v22)
  {
    if (v23)
    {
      v24 = *(a1 + 16);
      v25 = *a1;
      *a1 = *v21;
      *(a1 + 16) = *(a1 + 64);
    }

    else
    {
      v38 = *(a1 + 16);
      v39 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v39;
      *(a1 + 40) = v38;
      if (!std::less<std::string>::operator()[abi:ne200100](a3, (a1 + 48), (a1 + 24)))
      {
        goto LABEL_33;
      }

      v24 = *(a1 + 40);
      v25 = *(a1 + 24);
      *(a1 + 24) = *v21;
      *(a1 + 40) = *(a1 + 64);
    }

    *v21 = v25;
    *(a1 + 64) = v24;
  }

  else if (v23)
  {
    v31 = *(a1 + 40);
    v32 = *(a1 + 24);
    *(a1 + 24) = *v21;
    *(a1 + 40) = *(a1 + 64);
    *v21 = v32;
    *(a1 + 64) = v31;
    if (std::less<std::string>::operator()[abi:ne200100](a3, (a1 + 24), a1))
    {
      v33 = *(a1 + 16);
      v34 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v34;
      *(a1 + 40) = v33;
    }
  }

LABEL_33:
  v40 = a1 + 72;
  if (a1 + 72 == a2)
  {
    return 1;
  }

  v41 = 0;
  v42 = 0;
  while (1)
  {
    if (std::less<std::string>::operator()[abi:ne200100](a3, v40, v21))
    {
      v49 = *v40;
      v50 = *(v40 + 16);
      *(v40 + 8) = 0;
      *(v40 + 16) = 0;
      *v40 = 0;
      v43 = v41;
      do
      {
        v44 = a1 + v43;
        if (*(a1 + v43 + 95) < 0)
        {
          operator delete(*(v44 + 72));
        }

        *(v44 + 72) = *(v44 + 48);
        *(v44 + 88) = *(v44 + 64);
        *(v44 + 71) = 0;
        *(v44 + 48) = 0;
        if (v43 == -48)
        {
          v47 = a1;
          goto LABEL_44;
        }

        v45 = std::less<std::string>::operator()[abi:ne200100](a3, &v49, (a1 + v43 + 24));
        v43 -= 24;
      }

      while (v45);
      v46 = *(a1 + v43 + 95);
      v47 = a1 + v43 + 72;
      if (v46 < 0)
      {
        operator delete(*v47);
      }

LABEL_44:
      *v47 = v49;
      *(v47 + 16) = v50;
      if (++v42 == 8)
      {
        return v40 + 24 == a2;
      }
    }

    v21 = v40;
    v41 += 24;
    v40 += 24;
    if (v40 == a2)
    {
      return 1;
    }
  }
}

__int128 *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,std::string *>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v8 = a2 - a1;
    v9 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
    if (a2 - a1 >= 25)
    {
      v10 = (v9 - 2) >> 1;
      v11 = v10 + 1;
      v12 = (a1 + 24 * v10);
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *>(a1, a4, v9, v12);
        v12 = (v12 - 24);
        --v11;
      }

      while (v11);
    }

    v13 = a2;
    if (a2 != a3)
    {
      v13 = a2;
      do
      {
        if (std::less<std::string>::operator()[abi:ne200100](a4, v13, a1))
        {
          v14 = *(v13 + 2);
          v15 = *v13;
          v16 = *(a1 + 16);
          *v13 = *a1;
          *(v13 + 2) = v16;
          *a1 = v15;
          *(a1 + 16) = v14;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *>(a1, a4, v9, a1);
        }

        v13 = (v13 + 24);
      }

      while (v13 != a3);
    }

    if (v8 >= 25)
    {
      v17 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3);
      v18 = a2 - 24;
      do
      {
        v19 = *a1;
        *v27 = *(a1 + 8);
        *&v27[7] = *(a1 + 15);
        v20 = *(a1 + 23);
        *(a1 + 8) = 0;
        *(a1 + 16) = 0;
        *a1 = 0;
        v21 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *>(a1, a4, v17);
        v22 = v21;
        v23 = *(v21 + 23);
        if (v18 == v21)
        {
          if (v23 < 0)
          {
            operator delete(*v21);
          }

          *v22 = v19;
          *(v22 + 1) = *v27;
          *(v22 + 15) = *&v27[7];
          *(v22 + 23) = v20;
        }

        else
        {
          if (v23 < 0)
          {
            operator delete(*v21);
          }

          v24 = *v18;
          *(v22 + 2) = *(v18 + 16);
          *v22 = v24;
          *v18 = v19;
          *(v18 + 8) = *v27;
          *(v18 + 15) = *&v27[7];
          *(v18 + 23) = v20;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *>(a1, v22 + 24, a4, 0xAAAAAAAAAAAAAAABLL * ((v22 - a1 + 24) >> 3));
        }

        v18 -= 24;
      }

      while (v17-- > 2);
    }

    return v13;
  }

  return a3;
}

void sub_217FEEA78(_Unwind_Exception *exception_object)
{
  if (v2 < 0)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *>(uint64_t a1, uint64_t a2, uint64_t a3, __n128 *a4)
{
  v6 = a3 - 2;
  if (a3 >= 2)
  {
    v22 = v4;
    v23 = v5;
    v7 = a4;
    v9 = v6 >> 1;
    if ((v6 >> 1) >= (0xAAAAAAAAAAAAAAABLL * ((a4 - a1) >> 3)))
    {
      v12 = (0x5555555555555556 * ((a4 - a1) >> 3)) | 1;
      v13 = a1 + 24 * v12;
      v14 = 0x5555555555555556 * ((a4 - a1) >> 3) + 2;
      if (v14 < a3 && std::less<std::string>::operator()[abi:ne200100](a2, (a1 + 24 * v12), (v13 + 24)))
      {
        v13 += 24;
        v12 = v14;
      }

      if (!std::less<std::string>::operator()[abi:ne200100](a2, v13, v7))
      {
        v20 = *v7;
        v21 = v7[1].n128_u64[0];
        v7->n128_u64[1] = 0;
        v7[1].n128_u64[0] = 0;
        v7->n128_u64[0] = 0;
        while (1)
        {
          v16 = v13;
          if (v7[1].n128_i8[7] < 0)
          {
            operator delete(v7->n128_u64[0]);
          }

          v17 = *v13;
          v7[1].n128_u64[0] = *(v13 + 16);
          *v7 = v17;
          *(v13 + 23) = 0;
          *v13 = 0;
          if (v9 < v12)
          {
            break;
          }

          v18 = (2 * v12) | 1;
          v13 = a1 + 24 * v18;
          v19 = 2 * v12 + 2;
          if (v19 < a3 && std::less<std::string>::operator()[abi:ne200100](a2, (a1 + 24 * v18), (v13 + 24)))
          {
            v13 += 24;
            v18 = v19;
          }

          v7 = v16;
          v12 = v18;
          if (std::less<std::string>::operator()[abi:ne200100](a2, v13, &v20))
          {
            if (v16[1].n128_i8[7] < 0)
            {
              operator delete(v16->n128_u64[0]);
            }

            break;
          }
        }

        result = v20;
        v16[1].n128_u64[0] = v21;
        *v16 = result;
      }
    }
  }

  return result;
}

__int128 *std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *>(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = a1 + 24 * v6;
    v9 = (v8 + 24);
    v10 = 2 * v6;
    v6 = (2 * v6) | 1;
    v11 = v10 + 2;
    if (v10 + 2 < a3)
    {
      v12 = (v8 + 48);
      if (std::less<std::string>::operator()[abi:ne200100](a2, (v8 + 24), (v8 + 48)))
      {
        v9 = v12;
        v6 = v11;
      }
    }

    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    v13 = *v9;
    *(a1 + 2) = *(v9 + 2);
    *a1 = v13;
    *(v9 + 23) = 0;
    *v9 = 0;
    a1 = v9;
  }

  while (v6 <= v7);
  return v9;
}

double std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v16 = v4;
    v17 = v5;
    v8 = (a4 - 2) >> 1;
    v9 = (a1 + 24 * v8);
    v10 = (a2 - 24);
    if (std::less<std::string>::operator()[abi:ne200100](a3, v9, (a2 - 24)))
    {
      v14 = *v10;
      v15 = *(v10 + 2);
      *(v10 + 1) = 0;
      *(v10 + 2) = 0;
      *v10 = 0;
      while (1)
      {
        v12 = v9;
        if (*(v10 + 23) < 0)
        {
          operator delete(*v10);
        }

        v13 = *v9;
        *(v10 + 2) = *(v9 + 2);
        *v10 = v13;
        *(v9 + 23) = 0;
        *v9 = 0;
        if (!v8)
        {
          break;
        }

        v8 = (v8 - 1) >> 1;
        v9 = (a1 + 24 * v8);
        v10 = v12;
        if (!std::less<std::string>::operator()[abi:ne200100](a3, v9, &v14))
        {
          if (*(v12 + 23) < 0)
          {
            operator delete(*v12);
          }

          break;
        }
      }

      result = *&v14;
      *v12 = v14;
      *(v12 + 2) = v15;
    }
  }

  return result;
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<MIL::IROpset const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<MIL::IROpset const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<MIL::IROpset const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<MIL::IROpset const>>>>::__emplace_unique_key_args<std::string,std::string const&,std::unique_ptr<MIL::IROpset const>>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<MIL::IROpset const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<MIL::IROpset const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<MIL::IROpset const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<MIL::IROpset const>>>>::__construct_node_hash<std::string const&,std::unique_ptr<MIL::IROpset const>>();
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

void sub_217FEF058(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<MIL::IROpset const>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<MIL::IROpset const>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<MIL::IROpset const>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<MIL::IROpset const>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unique_ptr<MIL::IROpset const>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void *std::__shared_ptr_emplace<MIL::Blob::LegacyStorageReader>::__shared_ptr_emplace[abi:ne200100]<std::string const&,std::allocator<MIL::Blob::LegacyStorageReader>,0>(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2829E3A40;
  std::allocator<MIL::Blob::LegacyStorageReader>::construct[abi:ne200100]<MIL::Blob::LegacyStorageReader,std::string const&>(&v4, (a1 + 3), a2);
  return a1;
}

void std::__shared_ptr_emplace<MIL::Blob::LegacyStorageReader>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2829E3A40;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x21CEAFEA0);
}

void std::allocator<MIL::Blob::LegacyStorageReader>::construct[abi:ne200100]<MIL::Blob::LegacyStorageReader,std::string const&>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a3, *(a3 + 8));
  }

  else
  {
    __p = *a3;
  }

  MIL::Blob::LegacyStorageReader::LegacyStorageReader(a2, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_217FEF338(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::Blob::LegacyStorageReader>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::Blob::LegacyStorageReader>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::Blob::LegacyStorageReader>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::Blob::LegacyStorageReader>>>>::__emplace_unique_key_args<std::string,std::string const&,std::shared_ptr<MIL::Blob::LegacyStorageReader>&>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::Blob::LegacyStorageReader>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::Blob::LegacyStorageReader>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::Blob::LegacyStorageReader>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::Blob::LegacyStorageReader>>>>::__construct_node_hash<std::string const&,std::shared_ptr<MIL::Blob::LegacyStorageReader>&>();
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

void sub_217FEF5A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

std::string *std::pair<std::string const,std::shared_ptr<MIL::Blob::LegacyStorageReader>>::pair[abi:ne200100]<std::string const&,std::shared_ptr<MIL::Blob::LegacyStorageReader>&,0>(std::string *this, __int128 *a2, std::string::size_type *a3)
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

  v6 = a3[1];
  this[1].__r_.__value_.__r.__words[0] = *a3;
  this[1].__r_.__value_.__l.__size_ = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

void *std::__shared_ptr_emplace<MIL::Blob::StorageReader>::__shared_ptr_emplace[abi:ne200100]<std::string const&,std::allocator<MIL::Blob::StorageReader>,0>(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2829E3A90;
  std::allocator<MIL::Blob::StorageReader>::construct[abi:ne200100]<MIL::Blob::StorageReader,std::string const&>(&v4, (a1 + 3), a2);
  return a1;
}

void std::__shared_ptr_emplace<MIL::Blob::StorageReader>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2829E3A90;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x21CEAFEA0);
}

void std::allocator<MIL::Blob::StorageReader>::construct[abi:ne200100]<MIL::Blob::StorageReader,std::string const&>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a3, *(a3 + 8));
  }

  else
  {
    __p = *a3;
  }

  MIL::Blob::StorageReader::StorageReader(a2, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_217FEF878(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::Blob::StorageReader>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::Blob::StorageReader>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::Blob::StorageReader>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::Blob::StorageReader>>>>::__emplace_unique_key_args<std::string,std::string const&,std::shared_ptr<MIL::Blob::StorageReader>&>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::Blob::StorageReader>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::Blob::StorageReader>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::Blob::StorageReader>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::Blob::StorageReader>>>>::__construct_node_hash<std::string const&,std::shared_ptr<MIL::Blob::StorageReader>&>();
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

void sub_217FEFAE4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(MIL::Transform::ProgramTransformer &)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(MIL::Transform::ProgramTransformer &)>::~__value_func[abi:ne200100](uint64_t a1)
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

void MIL::MILContextImpl::MILContextImpl(MIL::MILContextImpl *this)
{
  *(this + 8) = 0u;
  *this = &unk_2829E39D8;
  *(this + 24) = 0u;
  *(this + 3) = 0u;
  *(this + 10) = 1065353216;
  *(this + 4) = 0u;
  *(this + 20) = 1065353216;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 30) = 1065353216;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 40) = 1065353216;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 50) = 1065353216;
  *(this + 13) = 0u;
  *(this + 248) = 0u;
  *(this + 14) = 0u;
  *(this + 60) = 1065353216;
  *(this + 264) = 0u;
  *(this + 18) = 0u;
  *(this + 70) = 1065353216;
  *(this + 19) = 0u;
  *(this + 80) = 1065353216;
  *(this + 328) = 0u;
  *(this + 344) = 0u;
  *(this + 90) = 1065353216;
  *(this + 23) = 0u;
  *(this + 24) = 0u;
  *(this + 100) = 1065353216;
  *(this + 408) = 0u;
  *(this + 424) = 0u;
  *(this + 110) = 1065353216;
  *(this + 28) = 0u;
  *(this + 29) = 0u;
  *(this + 120) = 1065353216;
  *(this + 488) = 0u;
  *(this + 504) = 0u;
  *(this + 130) = 1065353216;
  *(this + 33) = 0u;
  *(this + 34) = 0u;
  *(this + 140) = 1065353216;
  *(this + 568) = 0u;
  *(this + 584) = 0u;
  *(this + 150) = 1065353216;
  MIL::Conversion::OpConversion::Make(this);
}

void sub_217FEFE3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v26 = *v22;
  *v22 = 0;
  if (v26)
  {
    MIL::MILContextImpl::MILContextImpl(v26);
  }

  v27 = *v20;
  *v20 = 0;
  if (v27)
  {
    (*(*v27 + 8))(v27);
  }

  v28 = *v19;
  *v19 = 0;
  if (v28)
  {
    (*(*v28 + 8))(v28);
  }

  v29 = *(v21 + 360);
  *(v21 + 360) = 0;
  if (v29)
  {
    (*(*v29 + 8))(v29);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<MIL::IROpset const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<MIL::IROpset const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<MIL::IROpset const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<MIL::IROpset const>>>>::~__hash_table(v21 + 320);
  std::__hash_table<std::__hash_value_type<MIL::IRValueType const*,std::unique_ptr<MIL::IRStateValueType const>>,std::__unordered_map_hasher<MIL::IRValueType const*,std::__hash_value_type<MIL::IRValueType const*,std::unique_ptr<MIL::IRStateValueType const>>,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,true>,std::__unordered_map_equal<MIL::IRValueType const*,std::__hash_value_type<MIL::IRValueType const*,std::unique_ptr<MIL::IRStateValueType const>>,std::equal_to<MIL::IRValueType const*>,std::hash<MIL::IRValueType const*>,true>,std::allocator<std::__hash_value_type<MIL::IRValueType const*,std::unique_ptr<MIL::IRStateValueType const>>>>::~__hash_table(a9);
  std::__hash_table<std::__hash_value_type<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::unique_ptr<MIL::IRCircularBufferValueType const>>,std::__unordered_map_hasher<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::__hash_value_type<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::unique_ptr<MIL::IRCircularBufferValueType const>>,std::hash<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>>,std::equal_to<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>>,true>,std::__unordered_map_equal<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::__hash_value_type<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::unique_ptr<MIL::IRCircularBufferValueType const>>,std::equal_to<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>>,std::hash<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>>,true>,std::allocator<std::__hash_value_type<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::unique_ptr<MIL::IRCircularBufferValueType const>>>>::~__hash_table(v18);
  std::__hash_table<std::__hash_value_type<std::tuple<MIL::IRPixelFormatType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::unique_ptr<MIL::IRPixelBufferValueType const>>,std::__unordered_map_hasher<std::tuple<MIL::IRPixelFormatType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::__hash_value_type<std::tuple<MIL::IRPixelFormatType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::unique_ptr<MIL::IRPixelBufferValueType const>>,std::hash<std::tuple<MIL::IRPixelFormatType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>>,std::equal_to<std::tuple<MIL::IRPixelFormatType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>>,true>,std::__unordered_map_equal<std::tuple<MIL::IRPixelFormatType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::__hash_value_type<std::tuple<MIL::IRPixelFormatType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::unique_ptr<MIL::IRPixelBufferValueType const>>,std::equal_to<std::tuple<MIL::IRPixelFormatType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>>,std::hash<std::tuple<MIL::IRPixelFormatType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>>,true>,std::allocator<std::__hash_value_type<std::tuple<MIL::IRPixelFormatType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::unique_ptr<MIL::IRPixelBufferValueType const>>>>::~__hash_table(v17);
  std::__hash_table<std::__hash_value_type<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::unique_ptr<MIL::IRTensorBufferValueType const>>,std::__unordered_map_hasher<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::__hash_value_type<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::unique_ptr<MIL::IRTensorBufferValueType const>>,std::hash<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>>,std::equal_to<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>>,true>,std::__unordered_map_equal<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::__hash_value_type<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::unique_ptr<MIL::IRTensorBufferValueType const>>,std::equal_to<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>>,std::hash<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>>,true>,std::allocator<std::__hash_value_type<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*>>,std::shared_ptr<std::vector<MIL::IRProperty const*>>,MIL::IRProperty const*,std::shared_ptr<std::vector<MIL::IRProperty const*>>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::unique_ptr<MIL::IRTensorBufferValueType const>>>>::~__hash_table(v16);
  std::__hash_table<std::__hash_value_type<std::pair<MIL::IRValueType const*,MIL::IRValueType const*>,std::unique_ptr<MIL::IRDictionaryValueType const>>,std::__unordered_map_hasher<std::pair<MIL::IRValueType const*,MIL::IRValueType const*>,std::__hash_value_type<std::pair<MIL::IRValueType const*,MIL::IRValueType const*>,std::unique_ptr<MIL::IRDictionaryValueType const>>,std::hash<std::pair<MIL::IRValueType const*,MIL::IRValueType const*>>,std::equal_to<std::pair<MIL::IRValueType const*,MIL::IRValueType const*>>,true>,std::__unordered_map_equal<std::pair<MIL::IRValueType const*,MIL::IRValueType const*>,std::__hash_value_type<std::pair<MIL::IRValueType const*,MIL::IRValueType const*>,std::unique_ptr<MIL::IRDictionaryValueType const>>,std::equal_to<std::pair<MIL::IRValueType const*,MIL::IRValueType const*>>,std::hash<std::pair<MIL::IRValueType const*,MIL::IRValueType const*>>,true>,std::allocator<std::__hash_value_type<std::pair<MIL::IRValueType const*,MIL::IRValueType const*>,std::unique_ptr<MIL::IRDictionaryValueType const>>>>::~__hash_table(v24);
  std::__hash_table<std::__hash_value_type<std::pair<MIL::IRValueType const*,MIL::IRValueType const*>,std::unique_ptr<MIL::IRDictionaryValueType const>>,std::__unordered_map_hasher<std::pair<MIL::IRValueType const*,MIL::IRValueType const*>,std::__hash_value_type<std::pair<MIL::IRValueType const*,MIL::IRValueType const*>,std::unique_ptr<MIL::IRDictionaryValueType const>>,std::hash<std::pair<MIL::IRValueType const*,MIL::IRValueType const*>>,std::equal_to<std::pair<MIL::IRValueType const*,MIL::IRValueType const*>>,true>,std::__unordered_map_equal<std::pair<MIL::IRValueType const*,MIL::IRValueType const*>,std::__hash_value_type<std::pair<MIL::IRValueType const*,MIL::IRValueType const*>,std::unique_ptr<MIL::IRDictionaryValueType const>>,std::equal_to<std::pair<MIL::IRValueType const*,MIL::IRValueType const*>>,std::hash<std::pair<MIL::IRValueType const*,MIL::IRValueType const*>>,true>,std::allocator<std::__hash_value_type<std::pair<MIL::IRValueType const*,MIL::IRValueType const*>,std::unique_ptr<MIL::IRDictionaryValueType const>>>>::~__hash_table(v23);
  std::__hash_table<std::__hash_value_type<std::shared_ptr<std::vector<MIL::IRValueType const*>>,std::unique_ptr<MIL::IRTupleValueType const>>,std::__unordered_map_hasher<std::shared_ptr<std::vector<MIL::IRValueType const*>>,std::__hash_value_type<std::shared_ptr<std::vector<MIL::IRValueType const*>>,std::unique_ptr<MIL::IRTupleValueType const>>,std::hash<std::shared_ptr<std::vector<MIL::IRValueType const*>>>,std::equal_to<std::shared_ptr<std::vector<MIL::IRValueType const*>>>,true>,std::__unordered_map_equal<std::shared_ptr<std::vector<MIL::IRValueType const*>>,std::__hash_value_type<std::shared_ptr<std::vector<MIL::IRValueType const*>>,std::unique_ptr<MIL::IRTupleValueType const>>,std::equal_to<std::shared_ptr<std::vector<MIL::IRValueType const*>>>,std::hash<std::shared_ptr<std::vector<MIL::IRValueType const*>>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<std::vector<MIL::IRValueType const*>>,std::unique_ptr<MIL::IRTupleValueType const>>>>::~__hash_table(a10);
  std::__hash_table<std::__hash_value_type<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*> const>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::unique_ptr<MIL::IRTensorValueType const>>,std::__unordered_map_hasher<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*> const>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::__hash_value_type<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*> const>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::unique_ptr<MIL::IRTensorValueType const>>,std::hash<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*> const>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>>,std::equal_to<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*> const>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>>,true>,std::__unordered_map_equal<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*> const>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::__hash_value_type<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*> const>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::unique_ptr<MIL::IRTensorValueType const>>,std::equal_to<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*> const>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>>,std::hash<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*> const>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>>,true>,std::allocator<std::__hash_value_type<std::tuple<MIL::IRDataType,std::shared_ptr<std::vector<MIL::IRDimension const*> const>,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>>,std::unique_ptr<MIL::IRTensorValueType const>>>>::~__hash_table(v21);
  std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<MIL::IRConstantProperty const>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<MIL::IRConstantProperty const>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<MIL::IRConstantProperty const>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<MIL::IRConstantProperty const>>>>::~__hash_table(a11);
  std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<MIL::IRConstantProperty const>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<MIL::IRConstantProperty const>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<MIL::IRConstantProperty const>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<MIL::IRConstantProperty const>>>>::~__hash_table(a12);
  std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<MIL::IRConstantProperty const>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<MIL::IRConstantProperty const>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<MIL::IRConstantProperty const>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<MIL::IRConstantProperty const>>>>::~__hash_table(a13);
  std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<MIL::IRConstantDimension const>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<MIL::IRConstantDimension const>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<MIL::IRConstantDimension const>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<MIL::IRConstantDimension const>>>>::~__hash_table(a14);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a15);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a16);
  _Unwind_Resume(a1);
}

void sub_217FEFFF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  a10 = 0;
  if (v10)
  {
    std::default_delete<std::vector<MIL::IRDimension const*>>::operator()[abi:ne200100](&a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<std::vector<MIL::IRValueType const*> *,std::shared_ptr<std::vector<MIL::IRValueType const*>>::__shared_ptr_default_delete<std::vector<MIL::IRValueType const*>,std::vector<MIL::IRValueType const*>>,std::allocator<std::vector<MIL::IRValueType const*>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t std::__shared_ptr_pointer<std::vector<MIL::IRValueType const*> *,std::shared_ptr<std::vector<MIL::IRValueType const*>>::__shared_ptr_default_delete<std::vector<MIL::IRValueType const*>,std::vector<MIL::IRValueType const*>>,std::allocator<std::vector<MIL::IRValueType const*>>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *MIL::Attributes::BlobFileMutabilityInfo::BlobFileMutabilityInfo(void *result, uint64_t *a2)
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

void sub_217FF0144(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<MIL::Attributes::BlobFileMutabilityInfo::Impl>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<MIL::Attributes::BlobFileMutabilityInfo::Impl>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(v2);
    MEMORY[0x21CEAFEA0](v3, 0x10A0C408EF24B1CLL);
  }

  return a1;
}

void MIL::Attributes::BlobFileMutabilityInfo::Make(MIL::Attributes::BlobFileMutabilityInfo *this, const MIL::IRValue *a2)
{
  memset(v19, 0, sizeof(v19));
  v20 = 1065353216;
  v2 = MIL::IRValue::AsTuple(this);
  v18[0] = MIL::IRTupleValue::GetValues(v2);
  v18[1] = v3;
  v4 = MIL::Util::Span<std::shared_ptr<MIL::IRValue const> const,18446744073709551615ul>::At(v18, 0);
  MIL::IRValue::GetScalar<std::string>(*v4, &v17);
  size = HIBYTE(v17.__r_.__value_.__r.__words[2]);
  if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v17.__r_.__value_.__l.__size_;
  }

  if (size == 5)
  {
    v6 = &v17;
    if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v6 = v17.__r_.__value_.__r.__words[0];
    }

    data = v6->__r_.__value_.__l.__data_;
    v8 = v6->__r_.__value_.__s.__data_[4];
    if (data == 1752457552 && v8 == 115)
    {
      v10 = MIL::Util::Span<std::shared_ptr<MIL::IRValue const> const,18446744073709551615ul>::At(v18, 1uLL);
      v11 = MIL::IRValue::AsDictionary(*v10);
      memset(v24, 0, sizeof(v24));
      v25 = 1065353216;
      for (i = MIL::IRDictionaryValue::begin(v11); i != MIL::IRDictionaryValue::end(v11); i = *i)
      {
        MIL::IRValue::GetScalar<std::string>(*(i + 16), &__p);
        MIL::IRValue::GetScalar<std::string>(*(i + 32), &__str);
        p_p = &__p;
        v13 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v24, &__p.__r_.__value_.__l.__data_);
        std::string::operator=((v13 + 5), &__str);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__move_assign(v19, v24);
      std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(v24);
      operator new();
    }
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::operator+<char>();
  v15 = std::string::append(&__p, "'.");
  v16 = *&v15->__r_.__value_.__l.__data_;
  *&v24[16] = *(&v15->__r_.__value_.__l + 2);
  *v24 = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  std::runtime_error::runtime_error(exception, v24);
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_217FF0478(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (*(v37 - 73) < 0)
  {
    operator delete(*(v37 - 96));
  }

  if (a35 < 0)
  {
    operator delete(__p);
    if ((v36 & 1) == 0)
    {
LABEL_8:
      if (a15 < 0)
      {
        operator delete(a10);
      }

      std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(&a18);
      _Unwind_Resume(a1);
    }
  }

  else if (!v36)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v35);
  goto LABEL_8;
}

uint64_t MIL::Util::Span<std::shared_ptr<MIL::IRValue const> const,18446744073709551615ul>::At(void *a1, unint64_t a2)
{
  if (a1[1] <= a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::range_error::range_error[abi:ne200100](exception, "index out of bounds");
    __cxa_throw(exception, off_278235F68, MEMORY[0x277D825E0]);
  }

  return *a1 + 16 * a2;
}

void MIL::Attributes::BlobFileMutabilityInfo::Make(MIL::Attributes::BlobFileMutabilityInfo *this, const MIL::IRProgram *a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "BlobFileMutabilityInfo");
  Attribute = MIL::IRObject::TryGetAttribute(this, __p);
  v5 = Attribute;
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  if (v5)
  {
    MIL::Attributes::BlobFileMutabilityInfo::Make(v5, v4);
  }

  MIL::Attributes::BlobFileMutabilityInfo::Make(Attribute);
}

void sub_217FF0650(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_217FF0A8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  std::unique_ptr<MIL::IRDictionaryValue const>::~unique_ptr[abi:ne200100](&a9);
  v37 = v35 - 112;
  v38 = a22;
  a22 = 0;
  if (v38)
  {
    (*(*v38 + 8))(v38);
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  for (; v37 != v35 - 128; v37 -= 16)
  {
    v39 = *(v37 - 8);
    if (v39)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v39);
    }
  }

  std::__hash_table<std::__hash_value_type<std::shared_ptr<MIL::IRValue const>,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::shared_ptr<MIL::IRValue const>,std::__hash_value_type<std::shared_ptr<MIL::IRValue const>,std::shared_ptr<MIL::IRValue const>>,MIL::IRValueMapHasher,MIL::IRValueMapEq,true>,std::__unordered_map_equal<std::shared_ptr<MIL::IRValue const>,std::__hash_value_type<std::shared_ptr<MIL::IRValue const>,std::shared_ptr<MIL::IRValue const>>,MIL::IRValueMapEq,MIL::IRValueMapHasher,true>,std::allocator<std::__hash_value_type<std::shared_ptr<MIL::IRValue const>,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&a30);
  _Unwind_Resume(a1);
}

MIL::IRDictionaryValue **std::unique_ptr<MIL::IRDictionaryValue const>::~unique_ptr[abi:ne200100](MIL::IRDictionaryValue **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    MIL::IRDictionaryValue::~IRDictionaryValue(v2);
    MEMORY[0x21CEAFEA0]();
  }

  return a1;
}

void MIL::Attributes::BlobFileMutabilityInfo::Impl::GetPath(void *a1@<X0>, const void **a2@<X1>, std::string *a3@<X8>)
{
  v4 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a1, a2);
  if (v4)
  {
    if (*(v4 + 63) < 0)
    {
      v6 = v4[5];
      v7 = v4[6];

      std::string::__init_copy_ctor_external(a3, v6, v7);
    }

    else
    {
      v5 = *(v4 + 5);
      a3->__r_.__value_.__r.__words[2] = v4[7];
      *&a3->__r_.__value_.__l.__data_ = v5;
    }
  }

  else
  {

    std::string::basic_string[abi:ne200100]<0>(a3, "");
  }
}

void MIL::Attributes::BlobFileMutabilityInfo::ReplaceModelPaths(uint64_t a1, void *a2)
{
  for (i = *(*a1 + 16); i; i = *i)
  {
    MIL::Util::ReplaceModelPaths((i + 5), a2);
  }
}

uint64_t MIL::Attributes::BlobFileMutabilityInfo::ApplyModelPath(uint64_t result, uint64_t a2, void *a3)
{
  for (i = *(*result + 16); i; i = *i)
  {
    result = MIL::Util::ApplyModelPath((i + 5), a2, a3);
  }

  return result;
}

void MIL::Attributes::BlobFileMutabilityInfo::Replace(MIL::Attributes::BlobFileMutabilityInfo *this, MIL::IRProgram *a2)
{
  v4 = *this;
  v5 = (*(*a2 + 40))(a2);
  if (*(v4 + 24))
  {
    v6 = v5;
    std::string::basic_string[abi:ne200100]<0>(&__p, "BlobFileMutabilityInfo");
    MIL::Attributes::BlobFileMutabilityInfo::GetValue(this, v6);
  }

  std::string::basic_string[abi:ne200100]<0>(v8, "BlobFileMutabilityInfo");
  MIL::IRObject::RemoveAttribute(a2, v8);
  if (v9 < 0)
  {
    operator delete(v8[0]);
  }
}

void sub_217FF0F78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

MIL::IRTupleValue **std::unique_ptr<MIL::IRTupleValue const>::~unique_ptr[abi:ne200100](MIL::IRTupleValue **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    MIL::IRTupleValue::~IRTupleValue(v2);
    MEMORY[0x21CEAFEA0]();
  }

  return a1;
}

void sub_217FF106C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  *v1 = 0;
  if (v3)
  {
    MIL::Attributes::BlobFileMutabilityInfo::Rewrite(v3);
  }

  _Unwind_Resume(exception_object);
}

std::string *MIL::Attributes::BlobFileMutabilityInfo::Impl::UpdateMutabilityPaths(std::string *result, const void **a2, const std::string *a3)
{
  for (i = result->__r_.__value_.__r.__words[2]; i; i = *i)
  {
    v6 = *(i + 63);
    if (v6 >= 0)
    {
      v7 = *(i + 63);
    }

    else
    {
      v7 = i[6];
    }

    v8 = *(a2 + 23);
    v9 = v8;
    if (v8 < 0)
    {
      v8 = a2[1];
    }

    if (v7 == v8)
    {
      if (v6 >= 0)
      {
        v10 = i + 5;
      }

      else
      {
        v10 = i[5];
      }

      if (v9 >= 0)
      {
        v11 = a2;
      }

      else
      {
        v11 = *a2;
      }

      result = memcmp(v10, v11, v7);
      if (!result)
      {
        result = std::string::operator=((i + 5), a3);
      }
    }
  }

  return result;
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
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

void sub_217FF1398(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__erase_unique<std::string>(void *a1, const void **a2)
{
  result = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>(a1, a2);
  if (result)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>>>::remove(a1, result, v4);
    std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](v4);
    return 1;
  }

  return result;
}

void std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__deallocate_node(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

BOOL std::operator==[abi:ne200100]<std::string,std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::pair<std::string const,std::string>>>(uint64_t a1, void *a2)
{
  if (*(a1 + 24) != a2[3])
  {
    return 0;
  }

  v3 = (a1 + 16);
  do
  {
    v3 = *v3;
    v4 = v3 == 0;
    if (!v3)
    {
      break;
    }

    v5 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a2, v3 + 2);
    if (!v5)
    {
      break;
    }

    v6 = v5;
    v7 = *(v3 + 39);
    if (v7 >= 0)
    {
      v8 = *(v3 + 39);
    }

    else
    {
      v8 = v3[3];
    }

    v9 = *(v5 + 39);
    v10 = v9;
    if (v9 < 0)
    {
      v9 = v5[3];
    }

    if (v8 != v9)
    {
      break;
    }

    v11 = v7 >= 0 ? (v3 + 2) : v3[2];
    v12 = v10 >= 0 ? v6 + 2 : v6[2];
    if (memcmp(v11, v12, v8))
    {
      break;
    }

    v13 = *(v3 + 63);
    if (v13 >= 0)
    {
      v14 = *(v3 + 63);
    }

    else
    {
      v14 = v3[6];
    }

    v15 = *(v6 + 63);
    v16 = v15;
    if (v15 < 0)
    {
      v15 = v6[6];
    }

    if (v14 != v15)
    {
      break;
    }

    v17 = v13 >= 0 ? (v3 + 5) : v3[5];
    v20 = v6[5];
    v19 = v6 + 5;
    v18 = v20;
    v21 = v16 >= 0 ? v19 : v18;
  }

  while (!memcmp(v17, v21, v14));
  return v4;
}

void std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__move_assign(uint64_t a1, uint64_t *a2)
{
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::clear(a1);
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    operator delete(v5);
  }

  v8 = a2[2];
  v7 = a2 + 2;
  v6 = v8;
  v9 = *(v7 - 1);
  *(a1 + 16) = v8;
  *(a1 + 8) = v9;
  *(v7 - 1) = 0;
  v10 = v7[1];
  *(a1 + 24) = v10;
  *(a1 + 32) = *(v7 + 4);
  if (v10)
  {
    v11 = *(v6 + 8);
    v12 = *(a1 + 8);
    if ((v12 & (v12 - 1)) != 0)
    {
      if (v11 >= v12)
      {
        v11 %= v12;
      }
    }

    else
    {
      v11 &= v12 - 1;
    }

    *(*a1 + 8 * v11) = a1 + 16;
    *v7 = 0;
    v7[1] = 0;
  }
}

void *std::__hash_table<std::__hash_value_type<std::shared_ptr<MIL::IRValue const>,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::shared_ptr<MIL::IRValue const>,std::__hash_value_type<std::shared_ptr<MIL::IRValue const>,std::shared_ptr<MIL::IRValue const>>,MIL::IRValueMapHasher,MIL::IRValueMapEq,true>,std::__unordered_map_equal<std::shared_ptr<MIL::IRValue const>,std::__hash_value_type<std::shared_ptr<MIL::IRValue const>,std::shared_ptr<MIL::IRValue const>>,MIL::IRValueMapEq,MIL::IRValueMapHasher,true>,std::allocator<std::__hash_value_type<std::shared_ptr<MIL::IRValue const>,std::shared_ptr<MIL::IRValue const>>>>::__emplace_unique_key_args<std::shared_ptr<MIL::IRValue const>,std::piecewise_construct_t const&,std::tuple<std::shared_ptr<MIL::IRValue const>&&>,std::tuple<>>(void *a1, void *a2)
{
  v4 = MIL::IRValueMapHasher::operator()(a1, a2);
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

  if (!MIL::IRValueMapEq::operator()(a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_217FF193C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::shared_ptr<MIL::IRValue const>,std::shared_ptr<MIL::IRValue const>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::shared_ptr<MIL::IRValue const>,std::shared_ptr<MIL::IRValue const>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::shared_ptr<MIL::IRValue const>,std::shared_ptr<MIL::IRValue const>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::shared_ptr<MIL::IRValue const>,std::shared_ptr<MIL::IRValue const>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::shared_ptr<MIL::IRValue const> const,std::shared_ptr<MIL::IRValue const>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::vector<MIL::IRValueType const*>::__init_with_size[abi:ne200100]<MIL::IRValueType const* const*,MIL::IRValueType const* const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<MIL::IRDimension const*>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_217FF19F4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<MIL::IRDictionaryValue const *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x21CEAFEA0);
}

MIL::IRDictionaryValue *std::__shared_ptr_pointer<MIL::IRDictionaryValue const *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    MIL::IRDictionaryValue::~IRDictionaryValue(result);

    JUMPOUT(0x21CEAFEA0);
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<MIL::IRDictionaryValue const *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<MIL::IRTupleValue const *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x21CEAFEA0);
}

MIL::IRTupleValue *std::__shared_ptr_pointer<MIL::IRTupleValue const *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    MIL::IRTupleValue::~IRTupleValue(result);

    JUMPOUT(0x21CEAFEA0);
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<MIL::IRTupleValue const *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *MIL::Attributes::ModelInfoToString@<X0>(void *result@<X0>, _BYTE *a2@<X8>)
{
  v4 = 120;
  while (*v3 != result)
  {
    v3 += 6;
    v4 -= 24;
    if (!v4)
    {
      v3 = off_278236178;
      break;
    }
  }

  v5 = *(v3 + 2);
  if (v5 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v6 = *(v3 + 1);
  if (v5 >= 0x17)
  {
    operator new();
  }

  a2[23] = v5;
  if (v5)
  {
    result = memmove(a2, v6, v5);
  }

  a2[v5] = 0;
  return result;
}

uint64_t *std::unique_ptr<MIL::Attributes::BuildInfo::Impl>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(v2 + 96);
    std::__tree<std::__value_type<std::string,MIL::IRValueType const*>,std::__map_value_compare<std::string,std::__value_type<std::string,MIL::IRValueType const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MIL::IRValueType const*>>>::destroy(v2 + 72, *(v2 + 80));
    if (*(v2 + 71) < 0)
    {
      operator delete(*(v2 + 48));
    }

    if (*(v2 + 47) < 0)
    {
      operator delete(*(v2 + 24));
    }

    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x21CEAFEA0](v2, 0x10B2C40DBD8BC9ALL);
  }

  return a1;
}

void *MIL::Attributes::BuildInfo::BuildInfo(void *result, uint64_t *a2)
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

void sub_217FF1DB4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<MIL::Attributes::BuildInfo::Impl>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void MIL::Attributes::BuildInfo::Make(MIL::Attributes::BuildInfo *this, const MIL::IRProgram *a2)
{
  BYTE7(v36) = 9;
  strcpy(__p, "buildInfo");
  Attribute = MIL::IRObject::TryGetAttribute(this, __p);
  v3 = Attribute;
  if (SBYTE7(v36) < 0)
  {
    operator delete(__p[0]);
    if (!v3)
    {
      goto LABEL_8;
    }
  }

  else if (!Attribute)
  {
LABEL_8:
    MIL::Attributes::BuildInfo::Make(Attribute);
  }

  Attribute = (*(*v3 + 64))(v3);
  if (!Attribute)
  {
    goto LABEL_8;
  }

  v4 = Attribute;
  *(v40 + 3) = 0;
  v40[0] = 0;
  *(v39 + 3) = 0;
  v39[0] = 0;
  memset(v38, 0, 7);
  *__p = 0u;
  v36 = 0u;
  v37 = 1065353216;
  v5 = MIL::IRDictionaryValue::begin(Attribute);
  v6 = MIL::IRDictionaryValue::end(v4);
  if (v5 == v6)
  {
    v7 = 0;
    v8 = 0;
    *(&v28 + 1) = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    goto LABEL_51;
  }

  v30 = 0;
  v31 = 0;
  v29 = 0;
  v28 = 0uLL;
  v10 = 0;
  v11 = 0;
  v15 = 0;
  v14 = 0;
  while (1)
  {
    MIL::IRValue::GetScalar<std::string>(*(v5 + 16), &v34);
    MIL::IRValue::GetScalar<std::string>(*(v5 + 32), &v33);
    size = HIBYTE(v34.__r_.__value_.__r.__words[2]);
    if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v34.__r_.__value_.__l.__size_;
    }

    if (size == 11)
    {
      if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v22 = &v34;
      }

      else
      {
        v22 = v34.__r_.__value_.__r.__words[0];
      }

      v23 = v22->__r_.__value_.__r.__words[0];
      v24 = *(v22->__r_.__value_.__r.__words + 3);
      if (v23 == 0x776F2D6C65646F6DLL && v24 == 0x72656E776F2D6C65)
      {
        if (v10 < 0)
        {
          operator delete(v30);
        }

        v11 = v33.__r_.__value_.__l.__size_;
        v30 = v33.__r_.__value_.__r.__words[0];
        v39[0] = v33.__r_.__value_.__r.__words[2];
        *(v39 + 3) = *(&v33.__r_.__value_.__r.__words[2] + 3);
        v10 = HIBYTE(v33.__r_.__value_.__r.__words[2]);
        goto LABEL_39;
      }
    }

    else if (size == 10)
    {
      if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v17 = &v34;
      }

      else
      {
        v17 = v34.__r_.__value_.__r.__words[0];
      }

      if (v17->__r_.__value_.__r.__words[0] == 0x616E2D6C65646F6DLL && LOWORD(v17->__r_.__value_.__r.__words[1]) == 25965)
      {
        if (v15 < 0)
        {
          operator delete(v31);
        }

        v14 = v33.__r_.__value_.__l.__size_;
        v31 = v33.__r_.__value_.__r.__words[0];
        v40[0] = v33.__r_.__value_.__r.__words[2];
        *(v40 + 3) = *(&v33.__r_.__value_.__r.__words[2] + 3);
        v15 = HIBYTE(v33.__r_.__value_.__r.__words[2]);
        goto LABEL_39;
      }

      v19 = v17->__r_.__value_.__r.__words[0];
      v20 = LOWORD(v17->__r_.__value_.__r.__words[1]);
      if (v19 == 0x61702D6C65646F6DLL && v20 == 26740)
      {
        if (v29 < 0)
        {
          operator delete(v28);
        }

        v28 = *&v33.__r_.__value_.__l.__data_;
        v38[0] = v33.__r_.__value_.__r.__words[2];
        *(v38 + 3) = *(&v33.__r_.__value_.__r.__words[2] + 3);
        v29 = HIBYTE(v33.__r_.__value_.__r.__words[2]);
        goto LABEL_39;
      }
    }

    v32.__r_.__value_.__r.__words[0] = &v34;
    v26 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(__p, &v34.__r_.__value_.__l.__data_);
    v27 = v26;
    if (*(v26 + 63) < 0)
    {
      operator delete(v26[5]);
    }

    *(v27 + 5) = v33;
LABEL_39:
    if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v34.__r_.__value_.__l.__data_);
    }

    v5 = *v5;
    if (v5 == v6)
    {
      v13 = v15;
      if (v15 < 0)
      {
        v12 = v30;
        v9 = v28;
        v8 = v29;
        std::string::__init_copy_ctor_external(&v34, v31, v14);
        if ((v10 & 0x80) == 0)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v12 = v30;
        v7 = v31;
        v9 = v28;
        v8 = v29;
LABEL_51:
        v34.__r_.__value_.__r.__words[0] = v7;
        v34.__r_.__value_.__l.__size_ = v14;
        LODWORD(v34.__r_.__value_.__r.__words[2]) = v40[0];
        *(&v34.__r_.__value_.__r.__words[2] + 3) = *(v40 + 3);
        *(&v34.__r_.__value_.__s + 23) = v13;
        if ((v10 & 0x80) == 0)
        {
LABEL_52:
          v33.__r_.__value_.__r.__words[0] = v12;
          v33.__r_.__value_.__l.__size_ = v11;
          LODWORD(v33.__r_.__value_.__r.__words[2]) = v39[0];
          *(&v33.__r_.__value_.__r.__words[2] + 3) = *(v39 + 3);
          *(&v33.__r_.__value_.__s + 23) = v10;
          goto LABEL_55;
        }
      }

      std::string::__init_copy_ctor_external(&v33, v12, v11);
LABEL_55:
      if (v8 < 0)
      {
        std::string::__init_copy_ctor_external(&v32, v9, *(&v28 + 1));
      }

      else
      {
        v32.__r_.__value_.__r.__words[0] = v9;
        v32.__r_.__value_.__l.__size_ = *(&v28 + 1);
        LODWORD(v32.__r_.__value_.__r.__words[2]) = v38[0];
        *(&v32.__r_.__value_.__r.__words[2] + 3) = *(v38 + 3);
        *(&v32.__r_.__value_.__s + 23) = v8;
      }

      operator new();
    }
  }
}