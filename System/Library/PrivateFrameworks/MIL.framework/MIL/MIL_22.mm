uint64_t std::vector<MIL::Fp16>::__init_with_size[abi:ne200100]<std::__wrap_iter<MIL::Fp16 const*>,std::__wrap_iter<MIL::Fp16 const*>>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<MIL::Fp16>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_21810C970(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<MIL::IRTypedTensorValue<float>>::__shared_ptr_emplace[abi:ne200100]<MIL::IRTensorValueType const*&,std::vector<float>,std::allocator<MIL::IRTypedTensorValue<float>>,0>(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2829E9D68;
  MIL::IRTypedTensorValue<float>::IRTypedTensorValue();
}

void std::__shared_ptr_emplace<MIL::IRTypedTensorValue<float>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2829E9D68;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t std::function<float ()(float)>::operator()(uint64_t a1, float a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::unordered_set<unsigned long long>::unordered_set<std::__wrap_iter<unsigned long long const*>>(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&>(a1, v5++);
    }

    while (v5 != a3);
  }

  return a1;
}

void *std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&>(void *a1, unint64_t *a2)
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

void *std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::find<unsigned long long>(void *a1, unint64_t *a2)
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
    if (v3 >= *&v2)
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

  result = *v6;
  if (*v6)
  {
    do
    {
      v8 = result[1];
      if (v3 == v8)
      {
        if (result[2] == v3)
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

      result = *result;
    }

    while (result);
  }

  return result;
}

uint64_t std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned long long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_21810CF88(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<MIL::IRTypedTensorValue<double>>::__shared_ptr_emplace[abi:ne200100]<MIL::IRTensorValueType const*&,std::vector<double>,std::allocator<MIL::IRTypedTensorValue<double>>,0>(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2829E9DB8;
  MIL::IRTypedTensorValue<double>::IRTypedTensorValue();
}

void std::__shared_ptr_emplace<MIL::IRTypedTensorValue<double>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2829E9DB8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x21CEAFEA0);
}

void sub_21810D1B4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::function<double ()(double)>::operator()(uint64_t a1, double a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t std::__function::__value_func<double ()(double)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<double ()(double)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::vector<double>::__init_with_size[abi:ne200100]<std::__wrap_iter<double const*>,std::__wrap_iter<double const*>>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned long long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_21810D394(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<MIL::IRTypedTensorValue<unsigned char>>::__shared_ptr_emplace[abi:ne200100]<MIL::IRTensorValueType const*&,std::vector<unsigned char>,std::allocator<MIL::IRTypedTensorValue<unsigned char>>,0>(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2829E9E08;
  MIL::IRTypedTensorValue<unsigned char>::IRTypedTensorValue();
}

void std::__shared_ptr_emplace<MIL::IRTypedTensorValue<unsigned char>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2829E9E08;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t std::function<unsigned char ()(unsigned char)>::operator()(uint64_t a1, char a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t std::__function::__value_func<unsigned char ()(unsigned char)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<unsigned char ()(unsigned char)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short *,unsigned short *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<MIL::Fp16>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_21810D6D0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<MIL::IRTypedTensorValue<unsigned short>>::__shared_ptr_emplace[abi:ne200100]<MIL::IRTensorValueType const*&,std::vector<unsigned short>,std::allocator<MIL::IRTypedTensorValue<unsigned short>>,0>(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2829E9E58;
  MIL::IRTypedTensorValue<unsigned short>::IRTypedTensorValue();
}

void std::__shared_ptr_emplace<MIL::IRTypedTensorValue<unsigned short>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2829E9E58;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x21CEAFEA0);
}

void *std::vector<unsigned short>::vector[abi:ne200100](void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<MIL::Fp16>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<MIL::Fp16>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_21810D9C0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::function<unsigned short ()(unsigned short)>::operator()(uint64_t a1, __int16 a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t std::__function::__value_func<unsigned short ()(unsigned short)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<unsigned short ()(unsigned short)>::~__value_func[abi:ne200100](uint64_t a1)
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

void sub_21810DBA4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_21810DC20(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<MIL::IRTypedTensorValue<unsigned int>>::__shared_ptr_emplace[abi:ne200100]<MIL::IRTensorValueType const*&,std::vector<unsigned int>,std::allocator<MIL::IRTypedTensorValue<unsigned int>>,0>(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2829E9EA8;
  MIL::IRTypedTensorValue<unsigned int>::IRTypedTensorValue();
}

void std::__shared_ptr_emplace<MIL::IRTypedTensorValue<unsigned int>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2829E9EA8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x21CEAFEA0);
}

void *std::vector<unsigned int>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_21810DE88(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::function<unsigned int ()(unsigned int)>::operator()(uint64_t a1, int a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t std::__function::__value_func<unsigned int ()(unsigned int)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<unsigned int ()(unsigned int)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::vector<unsigned int>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned int const*>,std::__wrap_iter<unsigned int const*>>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_21810E068(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_21810E0E0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<MIL::IRTypedTensorValue<unsigned long long>>::__shared_ptr_emplace[abi:ne200100]<MIL::IRTensorValueType const*&,std::vector<unsigned long long>,std::allocator<MIL::IRTypedTensorValue<unsigned long long>>,0>(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2829E9EF8;
  MIL::IRTypedTensorValue<unsigned long long>::IRTypedTensorValue();
}

void std::__shared_ptr_emplace<MIL::IRTypedTensorValue<unsigned long long>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2829E9EF8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t std::function<unsigned long long ()(unsigned long long)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t std::__function::__value_func<unsigned long long ()(unsigned long long)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<unsigned long long ()(unsigned long long)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::vector<signed char>::__init_with_size[abi:ne200100]<signed char *,signed char *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_21810E41C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<MIL::IRTypedTensorValue<signed char>>::__shared_ptr_emplace[abi:ne200100]<MIL::IRTensorValueType const*&,std::vector<signed char>,std::allocator<MIL::IRTypedTensorValue<signed char>>,0>(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2829E9F48;
  MIL::IRTypedTensorValue<signed char>::IRTypedTensorValue();
}

void std::__shared_ptr_emplace<MIL::IRTypedTensorValue<signed char>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2829E9F48;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x21CEAFEA0);
}

void *std::vector<signed char>::vector[abi:ne200100](void *result, uint64_t a2)
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

void sub_21810E5F0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::function<signed char ()(signed char)>::operator()(uint64_t a1, char a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t std::__function::__value_func<signed char ()(signed char)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<signed char ()(signed char)>::~__value_func[abi:ne200100](uint64_t a1)
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

void sub_21810E7D0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<short>::__init_with_size[abi:ne200100]<short *,short *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<MIL::Fp16>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_21810E84C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<MIL::IRTypedTensorValue<short>>::__shared_ptr_emplace[abi:ne200100]<MIL::IRTensorValueType const*&,std::vector<short>,std::allocator<MIL::IRTypedTensorValue<short>>,0>(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2829E9F98;
  MIL::IRTypedTensorValue<short>::IRTypedTensorValue();
}

void std::__shared_ptr_emplace<MIL::IRTypedTensorValue<short>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2829E9F98;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x21CEAFEA0);
}

void *std::vector<short>::vector[abi:ne200100](void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<MIL::Fp16>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<MIL::Fp16>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_21810EB3C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::function<short ()(short)>::operator()(uint64_t a1, __int16 a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t std::__function::__value_func<short ()(short)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<short ()(short)>::~__value_func[abi:ne200100](uint64_t a1)
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

void sub_21810ED20(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_21810ED9C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<MIL::IRTypedTensorValue<int>>::__shared_ptr_emplace[abi:ne200100]<MIL::IRTensorValueType const*&,std::vector<int>,std::allocator<MIL::IRTypedTensorValue<int>>,0>(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2829E9FE8;
  MIL::IRTypedTensorValue<int>::IRTypedTensorValue();
}

void std::__shared_ptr_emplace<MIL::IRTypedTensorValue<int>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2829E9FE8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t std::function<int ()(int)>::operator()(uint64_t a1, int a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t std::__function::__value_func<int ()(int)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<int ()(int)>::~__value_func[abi:ne200100](uint64_t a1)
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

void sub_21810F0D4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<MIL::IRTypedTensorValue<long long>>::__shared_ptr_emplace[abi:ne200100]<MIL::IRTensorValueType const*&,std::vector<long long>,std::allocator<MIL::IRTypedTensorValue<long long>>,0>(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2829EA038;
  MIL::IRTypedTensorValue<long long>::IRTypedTensorValue();
}

void std::__shared_ptr_emplace<MIL::IRTypedTensorValue<long long>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2829EA038;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x21CEAFEA0);
}

void sub_21810F300(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::function<long long ()(long long)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t std::__function::__value_func<long long ()(long long)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<long long ()(long long)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::vector<long long>::__init_with_size[abi:ne200100]<std::__wrap_iter<long long const*>,std::__wrap_iter<long long const*>>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned long long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_21810F4E0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<MIL::IRTypedTensorValue<BOOL>>::__shared_ptr_emplace[abi:ne200100]<MIL::IRTensorValueType const*&,std::vector<unsigned char>,std::allocator<MIL::IRTypedTensorValue<BOOL>>,0>(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2829EA088;
  MIL::IRTypedTensorValue<BOOL>::IRTypedTensorValue();
}

void std::__shared_ptr_emplace<MIL::IRTypedTensorValue<BOOL>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2829EA088;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t std::vector<MIL::Bf16>::__init_with_size[abi:ne200100]<MIL::Bf16*,MIL::Bf16*>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<MIL::Fp16>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_21810F6B0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<MIL::IRTypedTensorValue<MIL::Bf16>>::__shared_ptr_emplace[abi:ne200100]<MIL::IRTensorValueType const*&,std::vector<MIL::Bf16>,std::allocator<MIL::IRTypedTensorValue<MIL::Bf16>>,0>(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2829EA0D8;
  MIL::IRTypedTensorValue<MIL::Bf16>::IRTypedTensorValue();
}

void std::__shared_ptr_emplace<MIL::IRTypedTensorValue<MIL::Bf16>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2829EA0D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t std::vector<MIL::Fp16>::__init_with_size[abi:ne200100]<MIL::Fp16*,MIL::Fp16*>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<MIL::Fp16>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_21810F880(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<MIL::IRTypedTensorValue<MIL::Fp16>>::__shared_ptr_emplace[abi:ne200100]<MIL::IRTensorValueType const*&,std::vector<MIL::Fp16>,std::allocator<MIL::IRTypedTensorValue<MIL::Fp16>>,0>(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2829EA128;
  MIL::IRTypedTensorValue<MIL::Fp16>::IRTypedTensorValue();
}

void std::__shared_ptr_emplace<MIL::IRTypedTensorValue<MIL::Fp16>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2829EA128;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x21CEAFEA0);
}

void MIL::ValueTypeInference::CopyFromInput(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a1, *(a1 + 8));
  }

  else
  {
    __p = *a1;
  }

  *(a2 + 24) = 0;
  operator new();
}

void sub_21810FAB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  operator delete(v14);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::ValueTypeInference::BroadcastFromInputs(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  memset(v3, 0, sizeof(v3));
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v3, *a1, a1[1], 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3));
  *(a2 + 24) = 0;
  operator new();
}

void sub_21810FBA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t *a12)
{
  operator delete(v12);
  a12 = &a9;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<MIL::ValueTypeInference::CopyFromInput(std::string const&)::$_0,std::allocator<MIL::ValueTypeInference::CopyFromInput(std::string const&)::$_0>,std::vector<MIL::IRValueType const*> ()(std::shared_ptr<MIL::MILContext> const&,std::shared_ptr<MIL::Location const>,std::unordered_map<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>> const&,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>> const&,std::vector<std::vector<MIL::IRValueType const*>> const&)>::~__func(uint64_t a1)
{
  *a1 = &unk_2829EA178;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void std::__function::__func<MIL::ValueTypeInference::CopyFromInput(std::string const&)::$_0,std::allocator<MIL::ValueTypeInference::CopyFromInput(std::string const&)::$_0>,std::vector<MIL::IRValueType const*> ()(std::shared_ptr<MIL::MILContext> const&,std::shared_ptr<MIL::Location const>,std::unordered_map<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>> const&,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>> const&,std::vector<std::vector<MIL::IRValueType const*>> const&)>::~__func(uint64_t a1)
{
  *a1 = &unk_2829EA178;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x21CEAFEA0);
}

void std::__function::__func<MIL::ValueTypeInference::CopyFromInput(std::string const&)::$_0,std::allocator<MIL::ValueTypeInference::CopyFromInput(std::string const&)::$_0>,std::vector<MIL::IRValueType const*> ()(std::shared_ptr<MIL::MILContext> const&,std::shared_ptr<MIL::Location const>,std::unordered_map<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>> const&,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>> const&,std::vector<std::vector<MIL::IRValueType const*>> const&)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_2829EA178;
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

void std::__function::__func<MIL::ValueTypeInference::CopyFromInput(std::string const&)::$_0,std::allocator<MIL::ValueTypeInference::CopyFromInput(std::string const&)::$_0>,std::vector<MIL::IRValueType const*> ()(std::shared_ptr<MIL::MILContext> const&,std::shared_ptr<MIL::Location const>,std::unordered_map<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>> const&,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>> const&,std::vector<std::vector<MIL::IRValueType const*>> const&)>::destroy(uint64_t a1)
{
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }
}

void std::__function::__func<MIL::ValueTypeInference::CopyFromInput(std::string const&)::$_0,std::allocator<MIL::ValueTypeInference::CopyFromInput(std::string const&)::$_0>,std::vector<MIL::IRValueType const*> ()(std::shared_ptr<MIL::MILContext> const&,std::shared_ptr<MIL::Location const>,std::unordered_map<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>> const&,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>> const&,std::vector<std::vector<MIL::IRValueType const*>> const&)>::destroy_deallocate(void **__p)
{
  if (*(__p + 31) < 0)
  {
    operator delete(__p[1]);
  }

  operator delete(__p);
}

void std::__function::__func<MIL::ValueTypeInference::CopyFromInput(std::string const&)::$_0,std::allocator<MIL::ValueTypeInference::CopyFromInput(std::string const&)::$_0>,std::vector<MIL::IRValueType const*> ()(std::shared_ptr<MIL::MILContext> const&,std::shared_ptr<MIL::Location const>,std::unordered_map<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>> const&,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>> const&,std::vector<std::vector<MIL::IRValueType const*>> const&)>::operator()(uint64_t a1@<X0>, void *a2@<X2>, void *a3@<X3>, const void **a4@<X8>)
{
  v5 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  v6 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, (a1 + 8));
  if (!v6)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v23 = 0;
  v24 = 0;
  v25 = 0;
  std::vector<std::shared_ptr<MIL::IRTypedArgument>>::__init_with_size[abi:ne200100]<std::shared_ptr<MIL::IRTypedArgument>*,std::shared_ptr<MIL::IRTypedArgument>*>(&v23, v6[5], v6[6], (v6[6] - v6[5]) >> 4);
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  std::vector<std::string const*>::reserve(a4, (v24 - v23) >> 4);
  v7 = v23;
  for (i = v24; v7 != i; v7 += 16)
  {
    v9 = *v7;
    v10 = *(v7 + 8);
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    ValueType = MIL::IRTypedArgument::GetValueType(v9);
    v13 = a4[1];
    v12 = a4[2];
    if (v13 >= v12)
    {
      v15 = (v13 - *a4) >> 3;
      if ((v15 + 1) >> 61)
      {
        std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
      }

      v16 = v12 - *a4;
      v17 = v16 >> 2;
      if (v16 >> 2 <= (v15 + 1))
      {
        v17 = v15 + 1;
      }

      if (v16 >= 0x7FFFFFFFFFFFFFF8)
      {
        v18 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v18 = v17;
      }

      if (v18)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::string const*>>(a4, v18);
      }

      v19 = (8 * v15);
      *v19 = ValueType;
      v14 = 8 * v15 + 8;
      v20 = a4[1] - *a4;
      v21 = v19 - v20;
      memcpy(v19 - v20, *a4, v20);
      v22 = *a4;
      *a4 = v21;
      a4[1] = v14;
      a4[2] = 0;
      if (v22)
      {
        operator delete(v22);
      }
    }

    else
    {
      *v13 = ValueType;
      v14 = (v13 + 1);
    }

    a4[1] = v14;
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }
  }

  v26 = &v23;
  std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](&v26);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void sub_21810FF74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, char a11, uint64_t a12, uint64_t a13, void **a14)
{
  v16 = *v14;
  if (*v14)
  {
    *(v14 + 8) = v16;
    operator delete(v16);
  }

  a14 = &a11;
  std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](&a14);
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<MIL::ValueTypeInference::CopyFromInput(std::string const&)::$_0,std::allocator<MIL::ValueTypeInference::CopyFromInput(std::string const&)::$_0>,std::vector<MIL::IRValueType const*> ()(std::shared_ptr<MIL::MILContext> const&,std::shared_ptr<MIL::Location const>,std::unordered_map<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>> const&,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>> const&,std::vector<std::vector<MIL::IRValueType const*>> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::ValueTypeInference::BroadcastFromInputs(std::vector<std::string> const&)::$_0,std::allocator<MIL::ValueTypeInference::BroadcastFromInputs(std::vector<std::string> const&)::$_0>,std::vector<MIL::IRValueType const*> ()(std::shared_ptr<MIL::MILContext> const&,std::shared_ptr<MIL::Location const>,std::unordered_map<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>> const&,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>> const&,std::vector<std::vector<MIL::IRValueType const*>> const&)>::~__func(uint64_t a1)
{
  *a1 = &unk_2829EA208;
  v3 = (a1 + 8);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  return a1;
}

{
  *a1 = &unk_2829EA208;
  v3 = (a1 + 8);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  return MEMORY[0x21CEAFEA0](a1, 0xA1C4030951706);
}

uint64_t std::__function::__func<MIL::ValueTypeInference::BroadcastFromInputs(std::vector<std::string> const&)::$_0,std::allocator<MIL::ValueTypeInference::BroadcastFromInputs(std::vector<std::string> const&)::$_0>,std::vector<MIL::IRValueType const*> ()(std::shared_ptr<MIL::MILContext> const&,std::shared_ptr<MIL::Location const>,std::unordered_map<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>> const&,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>> const&,std::vector<std::vector<MIL::IRValueType const*>> const&)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_2829EA208;
  a2[2] = 0;
  a2[3] = 0;
  a2[1] = 0;
  return std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>((a2 + 1), *(a1 + 8), *(a1 + 16), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *(a1 + 8)) >> 3));
}

void std::__function::__func<MIL::ValueTypeInference::BroadcastFromInputs(std::vector<std::string> const&)::$_0,std::allocator<MIL::ValueTypeInference::BroadcastFromInputs(std::vector<std::string> const&)::$_0>,std::vector<MIL::IRValueType const*> ()(std::shared_ptr<MIL::MILContext> const&,std::shared_ptr<MIL::Location const>,std::unordered_map<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>> const&,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>> const&,std::vector<std::vector<MIL::IRValueType const*>> const&)>::destroy_deallocate(void **a1)
{
  v2 = a1 + 1;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  operator delete(a1);
}

void std::__function::__func<MIL::ValueTypeInference::BroadcastFromInputs(std::vector<std::string> const&)::$_0,std::allocator<MIL::ValueTypeInference::BroadcastFromInputs(std::vector<std::string> const&)::$_0>,std::vector<MIL::IRValueType const*> ()(std::shared_ptr<MIL::MILContext> const&,std::shared_ptr<MIL::Location const>,std::unordered_map<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>> const&,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>> const&,std::vector<std::vector<MIL::IRValueType const*>> const&)>::operator()(uint64_t a1, MIL::IRUnknownDimension **a2, void *a3, void *a4)
{
  v40[4] = *MEMORY[0x277D85DE8];
  *a3 = 0;
  a3[1] = 0;
  memset(v40, 0, 24);
  std::vector<std::vector<float>>::reserve(v40, a4[3]);
  v37 = a2;
  memset(&v39, 0, sizeof(v39));
  std::vector<int>::reserve(&v39, a4[3]);
  v7 = *(a1 + 8);
  for (i = *(a1 + 16); v7 != i; v7 = (v7 + 24))
  {
    if (*(v7 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v38, *v7, *(v7 + 1));
    }

    else
    {
      v9 = *v7;
      v38.__r_.__value_.__r.__words[2] = *(v7 + 2);
      *&v38.__r_.__value_.__l.__data_ = v9;
    }

    SingleValueType = MIL::ValueTypeInferenceUtils::GetSingleValueType(a4, &v38);
    v11 = MIL::IRValueType::AsTensorType(SingleValueType);
    v12 = (*(*v11 + 96))(v11);
    std::vector<std::vector<MIL::IRDimension const*>>::push_back[abi:ne200100](v40, v12);
    v13 = (*(*v11 + 88))(v11);
    end = v39.__end_;
    if (v39.__end_ >= v39.__end_cap_.__value_)
    {
      begin = v39.__begin_;
      v17 = v39.__end_ - v39.__begin_;
      v18 = v39.__end_ - v39.__begin_;
      v19 = v18 + 1;
      if ((v18 + 1) >> 62)
      {
        std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
      }

      v20 = v39.__end_cap_.__value_ - v39.__begin_;
      if ((v39.__end_cap_.__value_ - v39.__begin_) >> 1 > v19)
      {
        v19 = v20 >> 1;
      }

      if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v21 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v21 = v19;
      }

      if (v21)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(&v39, v21);
      }

      *(4 * v18) = v13;
      v15 = (4 * v18 + 4);
      memcpy(0, begin, v17);
      v22 = v39.__begin_;
      v39.__begin_ = 0;
      v39.__end_ = v15;
      v39.__end_cap_.__value_ = 0;
      if (v22)
      {
        operator delete(v22);
      }
    }

    else
    {
      *v39.__end_ = v13;
      v15 = end + 1;
    }

    v39.__end_ = v15;
    if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v38.__r_.__value_.__l.__data_);
    }
  }

  v24 = v39.__begin_;
  v23 = v39.__end_;
  if (v39.__end_ == v39.__begin_)
  {
    std::vector<MIL::IRDimension const*>::__throw_out_of_range[abi:ne200100]();
  }

  v25 = *v39.__begin_;
  while (v25 != 18)
  {
    v26 = *v24;
    if (v26 == 18)
    {
      break;
    }

    if (v25 == 3 && v26 == 3)
    {
      v25 = 3;
    }

    else
    {
      if (v25 == 3 || v26 == 3)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(exception, "String dtype cannot be promoted to any other dtype.");
LABEL_70:
        exception->__vftable = (MEMORY[0x277D828F8] + 16);
        __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
      }

      if (MIL::IsFloat(v25) || MIL::IsFloat(v26))
      {
        v25 = 6;
        if (v27 != 6 && v28 != 6)
        {
          v25 = 5;
          if (v27 != 5 && v28 != 5)
          {
            if (v28 == 7 || v27 == 7)
            {
              v25 = 7;
            }

            else
            {
              v25 = 4;
            }
          }
        }
      }

      else if (MIL::IsSignedInt(v25) || MIL::IsSignedInt(v26))
      {
        v25 = 12;
        if (v30 != 12 && v31 != 12)
        {
          v25 = 11;
          if (v30 != 11 && v31 != 11)
          {
            if (v31 == 10 || v30 == 10)
            {
              v25 = 10;
            }

            else
            {
              v25 = 9;
            }
          }
        }
      }

      else if (MIL::IsUnsignedInt(v25) || MIL::IsUnsignedInt(v26))
      {
        v25 = 17;
        if (v33 != 17 && v34 != 17)
        {
          v25 = 16;
          if (v33 != 16 && v34 != 16)
          {
            if (v34 == 15 || v33 == 15)
            {
              v25 = 15;
            }

            else
            {
              v25 = 14;
            }
          }
        }
      }

      else
      {
        v25 = 2;
      }
    }

    if (++v24 == v23)
    {
      MIL::ValueTypeInferenceUtils::BroadcastShape(*v37, v40, &v38);
      MIL::IRTensorValueType::MakeWithShape();
    }
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::logic_error::logic_error(exception, "Any dtype is not valid for dtype promotion.");
  goto LABEL_70;
}

void sub_2181106EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char *__p, char *a19, uint64_t a20, char a21)
{
  if (__p)
  {
    a19 = __p;
    operator delete(__p);
  }

  __p = &a21;
  std::vector<std::vector<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<MIL::ValueTypeInference::BroadcastFromInputs(std::vector<std::string> const&)::$_0,std::allocator<MIL::ValueTypeInference::BroadcastFromInputs(std::vector<std::string> const&)::$_0>,std::vector<MIL::IRValueType const*> ()(std::shared_ptr<MIL::MILContext> const&,std::shared_ptr<MIL::Location const>,std::unordered_map<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>> const&,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>> const&,std::vector<std::vector<MIL::IRValueType const*>> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::vector<std::vector<MIL::IRDimension const*>>::push_back[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::vector<MIL::IRDimension const*>>::__emplace_back_slow_path<std::vector<MIL::IRDimension const*> const&>(a1, a2);
  }

  else
  {
    std::vector<std::vector<MIL::IRDimension const*>>::__construct_one_at_end[abi:ne200100]<std::vector<MIL::IRDimension const*> const&>(a1, a2);
    result = v3 + 24;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t std::vector<std::vector<MIL::IRDimension const*>>::__construct_one_at_end[abi:ne200100]<std::vector<MIL::IRDimension const*> const&>(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(v3, *a2, a2[1], (a2[1] - *a2) >> 3);
  *(a1 + 8) = v3 + 3;
  return result;
}

uint64_t std::vector<std::vector<MIL::IRDimension const*>>::__emplace_back_slow_path<std::vector<MIL::IRDimension const*> const&>(uint64_t a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<float>>>(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(24 * v2, *a2, a2[1], (a2[1] - *a2) >> 3);
  v8 = v16 + 24;
  v9 = *(a1 + 8) - *a1;
  v10 = &v15[-v9];
  memcpy(&v15[-v9], *a1, v9);
  v11 = *a1;
  *a1 = v10;
  *(a1 + 8) = v8;
  v12 = *(a1 + 16);
  *(a1 + 16) = v17;
  v16 = v11;
  v17 = v12;
  v14 = v11;
  v15 = v11;
  std::__split_buffer<std::vector<float>>::~__split_buffer(&v14);
  return v8;
}

void sub_218110988(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::vector<float>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t MIL::ValueTypeInference::anonymous namespace::CastToFloat(uint64_t a1)
{
  v1 = a1;
  if (!MIL::IsFloat(a1))
  {
    v2 = &dword_21858CBC8;
    v3 = 72;
    while (*(v2 - 1) != v1)
    {
      v2 += 2;
      v3 -= 8;
      if (!v3)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        MIL::IRDataTypeToString(v1, &v8);
        v5 = std::string::insert(&v8, 0, "Invalid inputDtype ");
        v6 = *&v5->__r_.__value_.__l.__data_;
        v9.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
        *&v9.__r_.__value_.__l.__data_ = v6;
        v5->__r_.__value_.__l.__size_ = 0;
        v5->__r_.__value_.__r.__words[2] = 0;
        v5->__r_.__value_.__r.__words[0] = 0;
        std::logic_error::logic_error(exception, &v9);
        exception->__vftable = (MEMORY[0x277D828F8] + 16);
        __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
      }
    }

    return *v2;
  }

  return v1;
}

void sub_218110A98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t MIL::ValueTypeInference::anonymous namespace::CastToInt(uint64_t a1)
{
  v1 = a1;
  if (!MIL::IsSignedInt(a1))
  {
    v2 = &dword_21858CC10;
    v3 = 40;
    while (*(v2 - 1) != v1)
    {
      v2 += 2;
      v3 -= 8;
      if (!v3)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        MIL::IRDataTypeToString(v1, &v8);
        v5 = std::string::insert(&v8, 0, "Invalid inputDtype ");
        v6 = *&v5->__r_.__value_.__l.__data_;
        v9.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
        *&v9.__r_.__value_.__l.__data_ = v6;
        v5->__r_.__value_.__l.__size_ = 0;
        v5->__r_.__value_.__r.__words[2] = 0;
        v5->__r_.__value_.__r.__words[0] = 0;
        std::logic_error::logic_error(exception, &v9);
        exception->__vftable = (MEMORY[0x277D828F8] + 16);
        __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
      }
    }

    return *v2;
  }

  return v1;
}

void sub_218110BF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t MIL::ValueTypeInference::anonymous namespace::CastToUInt(uint64_t a1)
{
  v1 = a1;
  if (!MIL::IsUnsignedInt(a1))
  {
    if (v1 != 2)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MIL::IRDataTypeToString(v1, &v6);
      v4 = std::string::insert(&v6, 0, "Invalid inputDtype ");
      v5 = *&v4->__r_.__value_.__l.__data_;
      v7.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
      *&v7.__r_.__value_.__l.__data_ = v5;
      v4->__r_.__value_.__l.__size_ = 0;
      v4->__r_.__value_.__r.__words[2] = 0;
      v4->__r_.__value_.__r.__words[0] = 0;
      std::logic_error::logic_error(exception, &v7);
      exception->__vftable = (MEMORY[0x277D828F8] + 16);
      __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
    }

    return 14;
  }

  return v1;
}

void sub_218110D34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void MIL::ValueTypeInferenceUtils::BroadcastShape(MIL::IRUnknownDimension *a1@<X0>, uint64_t **a2@<X1>, unint64_t *a3@<X8>)
{
  v37 = 0;
  v38 = 0;
  v39 = 0;
  std::vector<std::vector<float>>::reserve(&v37, 0xAAAAAAAAAAAAAAABLL * (a2[1] - *a2));
  v6 = *a2;
  v7 = a2[1];
  if (*a2 == v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = 0;
    do
    {
      if (v8 <= (v6[1] - *v6) >> 3)
      {
        v8 = (v6[1] - *v6) >> 3;
      }

      __p = 0;
      v35 = 0;
      v36 = 0;
      std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&__p, *v6, v6[1], (v6[1] - *v6) >> 3);
      v9 = v35 - 8;
      if (__p != v35 && v9 > __p)
      {
        v11 = __p + 8;
        do
        {
          v12 = *(v11 - 1);
          *(v11 - 1) = *v9;
          *v9 = v12;
          v9 -= 8;
          v13 = v11 >= v9;
          v11 += 8;
        }

        while (!v13);
      }

      std::vector<std::vector<float>>::push_back[abi:ne200100](&v37, &__p);
      if (__p)
      {
        v35 = __p;
        operator delete(__p);
      }

      v6 += 3;
    }

    while (v6 != v7);
  }

  __p = 0;
  v35 = 0;
  v36 = 0;
  std::vector<std::string const*>::reserve(&__p, v8);
  if (v8)
  {
    v14 = 0;
    while (1)
    {
      v15 = v37;
      v16 = v38;
      if (v37 == v38)
      {
        break;
      }

      v17 = 0;
      v18 = 0;
      v19 = 1;
      do
      {
        if (v14 < (v15[1] - *v15) >> 3)
        {
          v20 = *(*v15 + 8 * v14);
          v21 = (*(*v20 + 16))(v20);
          if (v21)
          {
            v22 = (*(*v21 + 48))(v21);
            if (v22 != 1 && v19 != 1 && v22 != v19)
            {
              exception = __cxa_allocate_exception(0x10uLL);
              std::logic_error::logic_error(exception, "Shapes are not compatible for broadcasting.");
              exception->__vftable = (MEMORY[0x277D828F8] + 16);
              __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
            }

            if (v22 > v19)
            {
              v19 = v22;
            }
          }

          else
          {
            v25 = (*(*v20 + 24))(v20);
            v18 = (*(*v25 + 32))(v25);
            v17 = 1;
          }
        }

        v15 += 3;
      }

      while (v15 != v16);
      if (((v19 < 2) & v17) == 0)
      {
        goto LABEL_40;
      }

      v26 = MIL::IRUnknownDimension::Make(a1, (v18 & 1));
LABEL_41:
      v33 = v26;
      std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](&__p, &v33);
      if (++v14 == v8)
      {
        goto LABEL_42;
      }
    }

    v19 = 1;
LABEL_40:
    v26 = MIL::IRConstantDimension::Make(a1, v19);
    goto LABEL_41;
  }

LABEL_42:
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(a3, __p, v35, (v35 - __p) >> 3);
  v28 = *a3;
  v27 = a3[1];
  if (*a3 != v27)
  {
    v29 = (v27 - 8);
    if (v29 > v28)
    {
      v30 = v28 + 8;
      do
      {
        v31 = *(v30 - 8);
        *(v30 - 8) = *v29;
        *v29-- = v31;
        v13 = v30 >= v29;
        v30 += 8;
      }

      while (!v13);
    }
  }

  if (__p)
  {
    v35 = __p;
    operator delete(__p);
  }

  __p = &v37;
  std::vector<std::vector<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&__p);
}

void sub_2181110E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *__p, uint64_t a12, uint64_t a13, char a14)
{
  __p = &a14;
  std::vector<std::vector<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

uint64_t MIL::ValueTypeInferenceUtils::GetVariadicValueTypes@<X0>(void *a1@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  v4 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a1, a2);
  if (!v4)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v5 = v4;
  result = std::vector<MIL::IRValueType const*>::vector[abi:ne200100](a3, (v4[6] - v4[5]) >> 4);
  v7 = v5[5];
  if (v5[6] != v7)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      result = MIL::IRTypedArgument::GetValueType(*&v7[v8]);
      *(*a3 + 8 * v9++) = result;
      v7 = v5[5];
      v8 += 16;
    }

    while (v9 < (v5[6] - v7) >> 4);
  }

  return result;
}

void sub_2181111CC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::ValueTypeInferenceUtils::GetSingleValueType(void *a1, uint64_t a2)
{
  v3 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a1, a2);
  if (!v3)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v4 = v3;
  v5 = v3[5];
  if (v3[6] - v5 != 16)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](v17);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "Inputs must not be variadic. But size of input ", 47);
    v9 = *(a2 + 23);
    if (v9 >= 0)
    {
      v10 = a2;
    }

    else
    {
      v10 = *a2;
    }

    if (v9 >= 0)
    {
      v11 = *(a2 + 23);
    }

    else
    {
      v11 = *(a2 + 8);
    }

    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, v10, v11);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " is ", 4);
    v14 = MEMORY[0x21CEAFB40](v13, (v4[6] - v4[5]) >> 4);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, ".", 1);
    exception = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str();
    std::logic_error::logic_error(exception, &v16);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
  }

  v6 = *v5;

  return MIL::IRTypedArgument::GetValueType(v6);
}

void sub_21811132C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a15);
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

uint64_t MIL::ValueTypeInferenceUtils::TryGetSingleValue(void *a1, uint64_t a2)
{
  v3 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a1, a2);
  if (!v3)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v4 = v3;
  v5 = v3[5];
  if (v3[6] - v5 != 16)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](v17);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "Inputs must not be variadic. But size of input ", 47);
    v9 = *(a2 + 23);
    if (v9 >= 0)
    {
      v10 = a2;
    }

    else
    {
      v10 = *a2;
    }

    if (v9 >= 0)
    {
      v11 = *(a2 + 23);
    }

    else
    {
      v11 = *(a2 + 8);
    }

    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, v10, v11);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " is ", 4);
    v14 = MEMORY[0x21CEAFB40](v13, (v4[6] - v4[5]) >> 4);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, ".", 1);
    exception = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str();
    std::logic_error::logic_error(exception, &v16);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
  }

  v6 = *v5;

  return MIL::IRTypedArgument::TryGetValue(v6);
}

void sub_2181114B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a15);
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

uint64_t MIL::ValueTypeInferenceUtils::GetSingleValue(void *a1, uint64_t a2)
{
  result = MIL::ValueTypeInferenceUtils::TryGetSingleValue(a1, a2);
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "The single input must store a Value.");
    __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
  }

  return result;
}

void MIL::ValueTypeInferenceUtils::ConvertAxesToNonNeg(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, const void **a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  if (a2)
  {
    v7 = 4 * a2;
    do
    {
      v8 = *a1;
      if (!MIL::Validation::IsAxisValidForRank(v8, a3))
      {
        std::ostringstream::basic_ostringstream[abi:ne200100](v24);
        v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, "Axis must be within range (-input_ndim - 1, input_ndim) (exclusive). Invalid axis: ", 83);
        v21 = MEMORY[0x21CEAFB20](v20, v8);
        v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, " for input_ndim: ", 17);
        MEMORY[0x21CEAFB40](v22, a3);
        exception = __cxa_allocate_exception(0x48uLL);
        MIL::UnknownLocation::Make(exception);
      }

      if (v8 >= 0)
      {
        v9 = v8;
      }

      else
      {
        v9 = (v8 + a3);
      }

      v11 = a4[1];
      v10 = a4[2];
      if (v11 >= v10)
      {
        v13 = *a4;
        v14 = v11 - *a4;
        v15 = v14 >> 3;
        v16 = (v14 >> 3) + 1;
        if (v16 >> 61)
        {
          std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
        }

        v17 = v10 - v13;
        if (v17 >> 2 > v16)
        {
          v16 = v17 >> 2;
        }

        if (v17 >= 0x7FFFFFFFFFFFFFF8)
        {
          v18 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v18 = v16;
        }

        if (v18)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(a4, v18);
        }

        *(8 * v15) = v9;
        v12 = 8 * v15 + 8;
        memcpy(0, v13, v14);
        v19 = *a4;
        *a4 = 0;
        a4[1] = v12;
        a4[2] = 0;
        if (v19)
        {
          operator delete(v19);
        }
      }

      else
      {
        *v11 = v9;
        v12 = (v11 + 8);
      }

      a4[1] = v12;
      ++a1;
      v7 -= 4;
    }

    while (v7);
  }
}

void sub_2181117A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  if (a15)
  {
    (*(*a15 + 8))(a15);
  }

  __cxa_free_exception(v19);
  std::ostringstream::~ostringstream(&a18);
  v21 = *v18;
  if (*v18)
  {
    *(v18 + 8) = v21;
    operator delete(v21);
  }

  _Unwind_Resume(a1);
}

uint64_t MIL::ValueTypeInferenceUtils::SliceShape@<X0>(uint64_t *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  if (a2 > a3 || (v4 = *a1, a3 > (a1[1] - *a1) >> 3))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "invalid index");
    __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
  }

  v5 = 8 * a3;
  v6 = v4 + 8 * a3;
  v7 = (v5 - 8 * a2) >> 3;
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v8 = v4 + 8 * a2;

  return std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<std::__wrap_iter<MIL::IRDimension const* const*>,std::__wrap_iter<MIL::IRDimension const* const*>>(a4, v8, v6, v7);
}

void MIL::ValueTypeInferenceUtils::GetSpatialDimensionsOutShape(MIL::IRConstantDimension *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, void *a4@<X3>, void *a5@<X4>, int **a6@<X5>, uint64_t *a7@<X6>, int a8@<W7>, void *a9@<X8>)
{
  *a9 = 0;
  a9[1] = 0;
  a9[2] = 0;
  v79 = *a3;
  v80 = a3[1];
  v16 = v80 - *a3;
  v17 = v16 >> 3;
  if (a8 && v17 >= 3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "ceil_mode must be False when there are 3 spatial dimensions (3D pool)");
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
  }

  v78 = v16 >> 3;
  std::vector<std::string const*>::reserve(a9, v17);
  v19 = *a3;
  v18 = a3[1];
  v83 = a3;
  v84 = 0;
  v20 = (v18 - v19) >> 3;
  v85 = 0;
  v86 = 0;
  std::vector<std::string const*>::reserve(&v84, v20);
  if (*(a6 + 23) < 0)
  {
    v23 = a6[1];
    if (v23 > 5)
    {
      if (v23 == 6)
      {
        v27 = *a6;
LABEL_55:
        v41 = *v27;
        v42 = *(v27 + 2);
        if (v41 == 1953723747 && v42 == 28015)
        {
          __p = 0;
          v89 = 0;
          v90 = 0;
          std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *a7, a7[1], (a7[1] - *a7) >> 2);
          v40 = __p;
          if (v89 - __p != v18 - v19)
          {
            v77 = __cxa_allocate_exception(0x10uLL);
            std::logic_error::logic_error(v77, "Attribute 'pad' invalid: should be length of 2 * num_spatial_dims");
            v77->__vftable = (MEMORY[0x277D828F8] + 16);
            __cxa_throw(v77, off_278235F80, MEMORY[0x277D82610]);
          }

          v25 = a8;
          v26 = a5;
          if (v18 != v19 && a8)
          {
            if (v20 <= 1)
            {
              v44 = 1;
            }

            else
            {
              v44 = (v18 - v19) >> 3;
            }

            v45 = __p + 4;
            do
            {
              if (*(v45 - 1) != *v45)
              {
                v68 = __cxa_allocate_exception(0x10uLL);
                std::logic_error::logic_error(v68, "Padding must be symmetric if ceil_mode is True");
                v68->__vftable = (MEMORY[0x277D828F8] + 16);
                __cxa_throw(v68, off_278235F80, MEMORY[0x277D82610]);
              }

              v45 += 2;
              --v44;
            }

            while (v44);
          }

          if (v18 != v19)
          {
            v46 = 0;
            if (v20 <= 1)
            {
              v47 = 1;
            }

            else
            {
              v47 = (v18 - v19) >> 3;
            }

            do
            {
              v48 = (v89 - __p) >> 2;
              if (v48 <= v46 || v48 <= v46 + 1)
              {
                std::vector<MIL::IRDimension const*>::__throw_out_of_range[abi:ne200100]();
              }

              v87.__r_.__value_.__r.__words[0] = MIL::IRConstantDimension::Make(a1, (*(__p + v46 + 1) + *(__p + v46)));
              std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](&v84, &v87);
              v46 += 2;
              --v47;
            }

            while (v47);
            v40 = __p;
            v26 = a5;
          }

          goto LABEL_80;
        }

        goto LABEL_124;
      }

      if (v23 == 10 && **a6 == 0x776F6C5F656D6173 && *(*a6 + 4) == 29285)
      {
        goto LABEL_38;
      }
    }

    else
    {
      if (v23 == 4)
      {
        v30 = **a6;
LABEL_37:
        if (v30 != 1701667187)
        {
          goto LABEL_124;
        }

        goto LABEL_38;
      }

      if (v23 == 5 && **a6 == 1768710518 && *(*a6 + 4) == 100)
      {
LABEL_20:
        __p = MIL::IRConstantDimension::Make(a1, 0);
        std::vector<MIL::IRDimension const*>::assign(&v84, (v18 - v19) >> 3, &__p);
        v25 = a8;
        v26 = a5;
        goto LABEL_82;
      }
    }

LABEL_124:
    std::ostringstream::basic_ostringstream[abi:ne200100](&__p);
    v70 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Invalid padding type ", 21);
    v71 = *(a6 + 23);
    if (v71 >= 0)
    {
      v72 = a6;
    }

    else
    {
      v72 = *a6;
    }

    if (v71 >= 0)
    {
      v73 = *(a6 + 23);
    }

    else
    {
      v73 = a6[1];
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v70, v72, v73);
    v74 = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str();
    std::logic_error::logic_error(v74, &v87);
    v74->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(v74, off_278235F80, MEMORY[0x277D82610]);
  }

  v21 = *(a6 + 23);
  if (v21 <= 5)
  {
    if (v21 != 4)
    {
      if (v21 != 5)
      {
        goto LABEL_124;
      }

      if (*a6 != 1768710518 || *(a6 + 4) != 100)
      {
        goto LABEL_124;
      }

      goto LABEL_20;
    }

    v30 = *a6;
    goto LABEL_37;
  }

  v27 = a6;
  if (v21 == 6)
  {
    goto LABEL_55;
  }

  if (v21 != 10)
  {
    goto LABEL_124;
  }

  if (*a6 != 0x776F6C5F656D6173 || *(a6 + 4) != 29285)
  {
    goto LABEL_124;
  }

LABEL_38:
  v25 = a8;
  if (a8)
  {
    v76 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v76, "ceil_mode must be False when pad_type is equal to 'same'");
    v76->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(v76, off_278235F80, MEMORY[0x277D82610]);
  }

  v26 = a5;
  if (v18 != v19)
  {
    v31 = 0;
    if (v20 <= 1)
    {
      v32 = 1;
    }

    else
    {
      v32 = v20;
    }

    do
    {
      if (v31 >= (a2[1] - *a2) >> 3)
      {
        std::vector<MIL::IRDimension const*>::__throw_out_of_range[abi:ne200100]();
      }

      v33 = (*(**(*a2 + 8 * v31) + 24))(*(*a2 + 8 * v31));
      if (v33)
      {
        v87.__r_.__value_.__r.__words[0] = v33;
        std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](&v84, &v87);
      }

      else
      {
        if (v31 >= (a2[1] - *a2) >> 3)
        {
          std::vector<MIL::IRDimension const*>::__throw_out_of_range[abi:ne200100]();
        }

        v34 = MIL::IRDimension::AsConstant(*(*a2 + 8 * v31));
        v35 = (*(*v34 + 48))(v34);
        if (v31 >= (v89 - __p) >> 3)
        {
          std::vector<MIL::IRDimension const*>::__throw_out_of_range[abi:ne200100]();
        }

        v36 = v35;
        v37 = MIL::IRDimension::AsConstant(*(__p + v31));
        v38 = (*(*v37 + 48))(v37);
        if (v31 >= (a4[1] - *a4) >> 2)
        {
          std::vector<MIL::IRDimension const*>::__throw_out_of_range[abi:ne200100]();
        }

        v39 = v38 - (v36 - *(*a4 + 4 * v31) * ceil(v36 / *(*a4 + 4 * v31))) - *(*a4 + 4 * v31);
        if (v39 < 0.0)
        {
          v39 = 0.0;
        }

        v87.__r_.__value_.__r.__words[0] = MIL::IRConstantDimension::Make(a1, v39);
        std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](&v84, &v87);
      }

      ++v31;
    }

    while (v32 != v31);
  }

  v40 = __p;
LABEL_80:
  if (v40)
  {
    v89 = v40;
    operator delete(v40);
  }

LABEL_82:
  if (v80 != v79)
  {
    v50 = 0;
    if (v78 <= 1)
    {
      v51 = 1;
    }

    else
    {
      v51 = v78;
    }

    do
    {
      if (v50 >= (a2[1] - *a2) >> 3)
      {
        std::vector<MIL::IRDimension const*>::__throw_out_of_range[abi:ne200100]();
      }

      v52 = (*(**(*a2 + 8 * v50) + 24))(*(*a2 + 8 * v50));
      if (v52)
      {
        v87.__r_.__value_.__r.__words[0] = v52;
        std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](a9, &v87);
      }

      else
      {
        if (v50 >= (a2[1] - *a2) >> 3)
        {
          std::vector<MIL::IRDimension const*>::__throw_out_of_range[abi:ne200100]();
        }

        v53 = MIL::IRDimension::AsConstant(*(*a2 + 8 * v50));
        v54 = (*(*v53 + 48))(v53);
        if (v50 >= (v85 - v84) >> 3)
        {
          std::vector<MIL::IRDimension const*>::__throw_out_of_range[abi:ne200100]();
        }

        v55 = v54;
        v56 = MIL::IRDimension::AsConstant(*(v84 + v50));
        v57 = (*(*v56 + 48))(v56);
        if (v50 >= (v89 - __p) >> 3)
        {
          std::vector<MIL::IRDimension const*>::__throw_out_of_range[abi:ne200100]();
        }

        v58 = v57;
        v59 = MIL::IRDimension::AsConstant(*(__p + v50));
        v60 = (*(*v59 + 48))(v59);
        if (v25)
        {
          if (v50 >= (a4[1] - *a4) >> 2)
          {
            std::vector<MIL::IRDimension const*>::__throw_out_of_range[abi:ne200100]();
          }

          v61 = v58 + v55 - v60;
          v62 = *(*a4 + 4 * v50);
          v63 = __OFADD__(v61, v62);
          v64 = v61 + v62;
          if ((v64 < 0) ^ v63 | (v64 == 0))
          {
LABEL_123:
            v69 = __cxa_allocate_exception(0x10uLL);
            std::logic_error::logic_error(v69, "output size is too small.");
            v69->__vftable = (MEMORY[0x277D828F8] + 16);
            __cxa_throw(v69, off_278235F80, MEMORY[0x277D82610]);
          }

          v65 = floor((v64 - 1) / v62) + 1.0;
          v67 = ((v65 - 1) * v62) >= (v58 / 2 + v55) && v58 > 0;
          v87.__r_.__value_.__r.__words[0] = MIL::IRConstantDimension::Make(a1, (v65 - v67));
          std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](a9, &v87);
        }

        else
        {
          if (v58 + v55 - v60 < 0)
          {
            goto LABEL_123;
          }

          if (v50 >= (a4[1] - *a4) >> 2)
          {
            std::vector<MIL::IRDimension const*>::__throw_out_of_range[abi:ne200100]();
          }

          v87.__r_.__value_.__r.__words[0] = MIL::IRConstantDimension::Make(a1, (floor((v58 + v55 - v60) / *(*a4 + 4 * v50)) + 1.0));
          std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](a9, &v87);
        }
      }

      ++v50;
    }

    while (v51 != v50);
  }

  if (__p)
  {
    v89 = __p;
    operator delete(__p);
  }

  if (v84)
  {
    v85 = v84;
    operator delete(v84);
  }
}

void sub_2181122B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25)
{
  if (a23 < 0)
  {
    operator delete(__p);
    if ((v27 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a24);
      if (a15)
      {
        operator delete(a15);
      }

      v29 = *v25;
      if (*v25)
      {
        *(v25 + 8) = v29;
        operator delete(v29);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v27)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v26);
  goto LABEL_6;
}

void MIL::ValueTypeInferenceUtils::anonymous namespace::GetEffectiveKernelShape(MIL::IRConstantDimension *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v9 = *a2;
  v8 = a2[1];
  v10 = (v8 - *a2) >> 3;
  std::vector<std::string const*>::reserve(a4, v10);
  if (v8 != v9)
  {
    v11 = 0;
    if (v10 <= 1)
    {
      v10 = 1;
    }

    do
    {
      if (v11 >= (a2[1] - *a2) >> 3)
      {
        std::vector<MIL::IRDimension const*>::__throw_out_of_range[abi:ne200100]();
      }

      v12 = MIL::IRDimension::AsConstant(*(*a2 + 8 * v11));
      v13 = (*(*v12 + 48))(v12);
      if (v11 >= (a3[1] - *a3) >> 2)
      {
        std::vector<MIL::IRDimension const*>::__throw_out_of_range[abi:ne200100]();
      }

      v14 = MIL::IRConstantDimension::Make(a1, ((v13 - 1) * *(*a3 + 4 * v11) + 1));
      std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](a4, &v14);
      ++v11;
    }

    while (v10 != v11);
  }
}

void sub_218112508(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ValueTypeInferenceUtils::ConvTransposeSpatialDimensionsOutShape(MIL::IRConstantDimension *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, void *a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, void *a8@<X8>)
{
  *a8 = 0;
  a8[1] = 0;
  a8[2] = 0;
  v15 = *a3;
  v16 = a3[1];
  v49 = v16 - *a3;
  std::vector<std::string const*>::reserve(a8, v49 >> 3);
  v17 = *(a6 + 23);
  if (v17 < 0)
  {
    if (*(a6 + 8) != 6)
    {
      goto LABEL_12;
    }

    v18 = *a6;
  }

  else
  {
    v18 = a6;
    if (v17 != 6)
    {
      goto LABEL_12;
    }
  }

  v19 = *v18;
  v20 = *(v18 + 2);
  v21 = v19 == 1953723747 && v20 == 28015;
  if (v21 && a7[1] - *a7 != v49)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Attribute 'pad' invalid: should be length of 2 * num_spatial_dims");
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
  }

LABEL_12:
  if (v16 != v15)
  {
    v22 = 0;
    v23 = 0;
    if ((v49 >> 3) <= 1)
    {
      v24 = 1;
    }

    else
    {
      v24 = v49 >> 3;
    }

    do
    {
      if (v23 >= (a2[1] - *a2) >> 3)
      {
        std::vector<MIL::IRDimension const*>::__throw_out_of_range[abi:ne200100]();
      }

      v25 = (*(**(*a2 + 8 * v23) + 24))(*(*a2 + 8 * v23));
      if (v25)
      {
        v52[0] = v25;
        std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](a8, v52);
      }

      else
      {
        if (v23 >= (a2[1] - *a2) >> 3)
        {
          std::vector<MIL::IRDimension const*>::__throw_out_of_range[abi:ne200100]();
        }

        v26 = MIL::IRDimension::AsConstant(*(*a2 + 8 * v23));
        v27 = (*(*v26 + 48))(v26);
        if (v23 >= v54 - v53)
        {
          std::vector<MIL::IRDimension const*>::__throw_out_of_range[abi:ne200100]();
        }

        v28 = v27;
        v29 = MIL::IRDimension::AsConstant(v53[v23]);
        v30 = (*(*v29 + 48))(v29);
        if (*(a6 + 23) < 0)
        {
          v33 = *(a6 + 8);
          if (v33 == 4 && **a6 == 1701667187)
          {
            goto LABEL_64;
          }

          if (v33 == 10 && **a6 == 0x776F6C5F656D6173 && *(*a6 + 8) == 29285)
          {
            goto LABEL_64;
          }

          v35 = *(a6 + 8);
          if (v35 != 6)
          {
            if (v35 != 5 || (**a6 == 1768710518 ? (v36 = *(*a6 + 4) == 100) : (v36 = 0), !v36))
            {
LABEL_71:
              std::ostringstream::basic_ostringstream[abi:ne200100](v52);
              v43 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v52, "Invalid padding type ", 21);
              v44 = *(a6 + 23);
              if (v44 >= 0)
              {
                v45 = a6;
              }

              else
              {
                v45 = *a6;
              }

              if (v44 >= 0)
              {
                v46 = *(a6 + 23);
              }

              else
              {
                v46 = *(a6 + 8);
              }

              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v43, v45, v46);
              v47 = __cxa_allocate_exception(0x10uLL);
              std::stringbuf::str();
              std::logic_error::logic_error(v47, &v51);
              v47->__vftable = (MEMORY[0x277D828F8] + 16);
              __cxa_throw(v47, off_278235F80, MEMORY[0x277D82610]);
            }

LABEL_61:
            if (v23 >= (a4[1] - *a4) >> 2)
            {
              std::vector<MIL::IRDimension const*>::__throw_out_of_range[abi:ne200100]();
            }

            v52[0] = MIL::IRConstantDimension::Make(a1, (v30 + (v28 - 1) * *(*a4 + 4 * v23)));
            std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](a8, v52);
            goto LABEL_66;
          }

          v37 = *a6;
        }

        else
        {
          v31 = *(a6 + 23);
          if (v31 <= 5)
          {
            if (v31 == 4)
            {
              if (*a6 != 1701667187)
              {
                goto LABEL_71;
              }

LABEL_64:
              if (v23 >= (a4[1] - *a4) >> 2)
              {
                std::vector<MIL::IRDimension const*>::__throw_out_of_range[abi:ne200100]();
              }

              v52[0] = MIL::IRConstantDimension::Make(a1, (v28 * *(*a4 + 4 * v23)));
              std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](a8, v52);
              goto LABEL_66;
            }

            if (v31 != 5)
            {
              goto LABEL_71;
            }

            if (*a6 != 1768710518 || *(a6 + 4) != 100)
            {
              goto LABEL_71;
            }

            goto LABEL_61;
          }

          v37 = a6;
          if (v31 != 6)
          {
            if (v31 != 10)
            {
              goto LABEL_71;
            }

            if (*a6 != 0x776F6C5F656D6173 || *(a6 + 8) != 29285)
            {
              goto LABEL_71;
            }

            goto LABEL_64;
          }
        }

        v39 = *v37;
        v40 = *(v37 + 4);
        if (v39 != 1953723747 || v40 != 28015)
        {
          goto LABEL_71;
        }

        if (v23 >= (a4[1] - *a4) >> 2 || (v42 = (a7[1] - *a7) >> 2, v42 <= v22) || v42 <= v22 + 1)
        {
          std::vector<MIL::IRDimension const*>::__throw_out_of_range[abi:ne200100]();
        }

        v52[0] = MIL::IRConstantDimension::Make(a1, (v30 + (v28 - 1) * *(*a4 + 4 * v23) - (*(*a7 + 4 * v22 + 4) + *(*a7 + 4 * v22))));
        std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](a8, v52);
      }

LABEL_66:
      ++v23;
      v22 += 2;
    }

    while (v24 != v23);
  }

  if (v53)
  {
    v54 = v53;
    operator delete(v53);
  }
}

void sub_218112A98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  v22 = *(v20 - 112);
  if (v22)
  {
    *(v20 - 104) = v22;
    operator delete(v22);
  }

  v23 = *v19;
  if (*v19)
  {
    *(v19 + 8) = v23;
    operator delete(v23);
  }

  _Unwind_Resume(exception_object);
}

BOOL MIL::ValueTypeInferenceUtils::ShapeHasUnknownDims(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1 != v2)
  {
    while (!(*(**v1 + 24))())
    {
      v1 += 8;
      if (v1 == v2)
      {
        v1 = v2;
        break;
      }
    }

    v2 = a1[1];
  }

  return v1 != v2;
}

BOOL MIL::ValueTypeInferenceUtils::ShapeHasVariadicUnknownDims(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1 != v2)
  {
    while (((*(**v1 + 32))() & 1) == 0)
    {
      v1 += 8;
      if (v1 == v2)
      {
        v1 = v2;
        break;
      }
    }

    v2 = a1[1];
  }

  return v1 != v2;
}

uint64_t MIL::ValueTypeInferenceUtils::FindVariadicUnknownDimIndex(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1 != v3)
  {
    while (((*(**v2 + 32))() & 1) == 0)
    {
      v2 += 8;
      if (v2 == v3)
      {
        v2 = v3;
        break;
      }
    }

    v3 = a1[1];
  }

  if (v2 == v3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "input shape does not have any unknown variadic dimension.");
    __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
  }

  return (v2 - *a1) >> 3;
}

float MIL::ValueTypeInferenceUtils::GetFloatScalarValue(MIL::ValueTypeInferenceUtils *this, const MIL::IRTensorValue *a2)
{
  v3 = MIL::IRValue::TryGetScalar<int>(this);
  if (v3)
  {
    return *v3;
  }

  v5 = MIL::IRValue::TryGetScalar<float>(this);
  if (v5)
  {
    return *v5;
  }

  v6 = MIL::IRValue::TryGetScalar<MIL::Fp16>(this);
  if (v6)
  {

    return MIL::Fp16::GetFloat(v6);
  }

  else
  {
    v7 = MIL::IRValue::TryGetScalar<MIL::Bf16>(this);
    if (v7)
    {

      return MIL::Bf16::GetFloat(v7);
    }

    else
    {
      v8 = MIL::IRValue::TryGetScalar<BOOL>(this);
      if (v8)
      {
        LOBYTE(v9) = *v8;
        return v9;
      }

      else
      {
        v10 = MIL::IRValue::TryGetScalar<long long>(this);
        if (!v10)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "Cannot extract scalar from value.");
          __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }

        return *v10;
      }
    }
  }
}

void MIL::ValueTypeInferenceUtils::GetTopkOutShape(MIL::IRUnknownDimension **a1@<X0>, char **a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  *a6 = 0;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  if (!MIL::ValueTypeInferenceUtils::ShapeHasVariadicUnknownDims(a2))
  {
    std::vector<MIL::IRDimension const*>::__insert_with_size[abi:ne200100]<std::__wrap_iter<MIL::IRDimension const* const*>,std::__wrap_iter<MIL::IRDimension const* const*>>(a6, 0, *a2, a2[1], (a2[1] - *a2) >> 3);
    if ((a3 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v16 = a5 + a3;
    goto LABEL_10;
  }

  VariadicUnknownDimIndex = MIL::ValueTypeInferenceUtils::FindVariadicUnknownDimIndex(a2);
  v13 = VariadicUnknownDimIndex;
  if ((a3 & 0x80000000) != 0)
  {
    v14 = a2[1];
    v15 = (v14 - *a2) >> 3;
    if (VariadicUnknownDimIndex - v15 >= a3)
    {
      v20 = MIL::IRUnknownDimension::Make(*a1, 1);
      std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](a6, &v20);
      for (i = 8 * v13 + 8; ++v13 < (a2[1] - *a2) >> 3; i = v19)
      {
        v19 = i + 8;
        std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](a6, &(*a2)[i]);
      }

      return;
    }

    std::vector<MIL::IRDimension const*>::__insert_with_size[abi:ne200100]<std::__wrap_iter<MIL::IRDimension const* const*>,std::__wrap_iter<MIL::IRDimension const* const*>>(a6, *(a6 + 8), *a2, v14, (v14 - *a2) >> 3);
    v16 = v15 + a3;
LABEL_10:
    *(*a6 + 8 * v16) = a4;
    return;
  }

  if (VariadicUnknownDimIndex > a3)
  {
    std::vector<MIL::IRDimension const*>::__insert_with_size[abi:ne200100]<std::__wrap_iter<MIL::IRDimension const* const*>,std::__wrap_iter<MIL::IRDimension const* const*>>(a6, *(a6 + 8), *a2, a2[1], (a2[1] - *a2) >> 3);
LABEL_6:
    *(*a6 + 8 * a3) = a4;
    return;
  }

  for (j = *a2; !(*(**j + 32))(); j += 8)
  {
    std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](a6, j);
  }

  v20 = MIL::IRUnknownDimension::Make(*a1, 1);
  std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](a6, &v20);
}

void sub_218112FEC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ValueTypeInferenceUtils::InferShapeForDynamicReshape(MIL::ValueTypeInferenceUtils *this@<X0>, MIL::MILContext *a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v6 = (*(*a2 + 96))(a2);
  v7 = (*(***v6 + 16))(**v6);
  if (v7)
  {
    v8 = (*(*v7 + 48))(v7);
    MIL::IRUnknownDimension::Make(this, 0);
    std::vector<MIL::IRDimension const*>::vector[abi:ne200100](&v10, v8);
    v9 = v11;
    *a3 = v10;
    a3[2] = v9;
  }

  else
  {
    *&v10 = MIL::IRUnknownDimension::Make(this, 1);
    std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](a3, &v10);
  }
}

void MIL::ValueTypeInferenceUtils::ValueTypeInferenceReshapeCommon(MIL::IRConstantDimension **a1, void *a2, void *a3)
{
  v86 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(__p, "x");
  SingleValueType = MIL::ValueTypeInferenceUtils::GetSingleValueType(a3, __p);
  v7 = MIL::IRValueType::AsTensorType(SingleValueType);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  (*(*v7 + 88))(v7);
  memset(&v84, 0, sizeof(v84));
  std::string::basic_string[abi:ne200100]<0>(__p, "shape");
  v8 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, &__p[0].__r_.__value_.__l.__data_);
  if (!v8)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  IsValue = MIL::IRTypedArgument::IsValue(*v8[5]);
  v10 = IsValue;
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
    if (v10)
    {
LABEL_6:
      std::string::basic_string[abi:ne200100]<0>(__p, "shape");
      SingleValue = MIL::ValueTypeInferenceUtils::GetSingleValue(a3, __p);
      v12 = MIL::IRValue::AsTensor(SingleValue);
      if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p[0].__r_.__value_.__l.__data_);
      }

      Data = MIL::IRTensorValue::GetDataView<int>(v12);
      v81 = 0;
      v82 = 0;
      v83 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v81, Data, Data + 4 * v14, (4 * v14) >> 2);
      v15 = v81;
      if (v81 == v82)
      {
        v16 = 0;
      }

      else
      {
        v16 = 0;
        do
        {
          v17 = *v15++;
          if (v17 == -1)
          {
            ++v16;
          }
        }

        while (v15 != v82);
        if (v16 >= 2)
        {
          exception = __cxa_allocate_exception(0x48uLL);
          v19 = a2[1];
          *&v80 = *a2;
          *(&v80 + 1) = v19;
          if (v19)
          {
            atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
          }

          std::string::basic_string[abi:ne200100]<0>(v79, "Only one dimension can be set to -1 (infer size from other dims based off of the # of elements in the input tensor).");
          MIL::ValidationError::ValidationError(exception, &v80, v79, 315);
        }
      }

      if ((*(*v7 + 104))(v7))
      {
        v24 = v81;
        if (v82 != v81)
        {
          v25 = 0;
          do
          {
            if (!v24[v25])
            {
              if (MIL::IRTensorValueType::Rank(v7) <= v25)
              {
                v46 = __cxa_allocate_exception(0x48uLL);
                v47 = a2[1];
                *&v78 = *a2;
                *(&v78 + 1) = v47;
                if (v47)
                {
                  atomic_fetch_add_explicit((v47 + 8), 1uLL, memory_order_relaxed);
                }

                std::to_string(&v72, v25 + 1);
                v48 = std::string::insert(&v72, 0, "Input shape must be at least rank ");
                v49 = *&v48->__r_.__value_.__l.__data_;
                v73.__r_.__value_.__r.__words[2] = v48->__r_.__value_.__r.__words[2];
                *&v73.__r_.__value_.__l.__data_ = v49;
                v48->__r_.__value_.__l.__size_ = 0;
                v48->__r_.__value_.__r.__words[2] = 0;
                v48->__r_.__value_.__r.__words[0] = 0;
                v50 = std::string::append(&v73, " for target dim ");
                v51 = *&v50->__r_.__value_.__l.__data_;
                v74.__r_.__value_.__r.__words[2] = v50->__r_.__value_.__r.__words[2];
                *&v74.__r_.__value_.__l.__data_ = v51;
                v50->__r_.__value_.__l.__size_ = 0;
                v50->__r_.__value_.__r.__words[2] = 0;
                v50->__r_.__value_.__r.__words[0] = 0;
                std::to_string(&v71, v25);
                if ((v71.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v52 = &v71;
                }

                else
                {
                  v52 = v71.__r_.__value_.__r.__words[0];
                }

                if ((v71.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  size = HIBYTE(v71.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  size = v71.__r_.__value_.__l.__size_;
                }

                v54 = std::string::append(&v74, v52, size);
                v55 = *&v54->__r_.__value_.__l.__data_;
                v75.__r_.__value_.__r.__words[2] = v54->__r_.__value_.__r.__words[2];
                *&v75.__r_.__value_.__l.__data_ = v55;
                v54->__r_.__value_.__l.__size_ = 0;
                v54->__r_.__value_.__r.__words[2] = 0;
                v54->__r_.__value_.__r.__words[0] = 0;
                v56 = std::string::append(&v75, " to be set to 0 ");
                v57 = *&v56->__r_.__value_.__l.__data_;
                __p[0].__r_.__value_.__r.__words[2] = v56->__r_.__value_.__r.__words[2];
                *&__p[0].__r_.__value_.__l.__data_ = v57;
                v56->__r_.__value_.__l.__size_ = 0;
                v56->__r_.__value_.__r.__words[2] = 0;
                v56->__r_.__value_.__r.__words[0] = 0;
                v58 = std::string::append(__p, "(copy the dim at the same index from x's shape).");
                v59 = *&v58->__r_.__value_.__l.__data_;
                v77 = v58->__r_.__value_.__r.__words[2];
                v76 = v59;
                v58->__r_.__value_.__l.__size_ = 0;
                v58->__r_.__value_.__r.__words[2] = 0;
                v58->__r_.__value_.__r.__words[0] = 0;
                MIL::ValidationError::ValidationError(v46, &v78, &v76, 315);
              }

              v26 = (*(*v7 + 96))(v7);
              v27 = (*(**(*v26 + 8 * v25) + 16))(*(*v26 + 8 * v25));
              if (v27)
              {
                v28 = (*(*v27 + 48))(v27);
                v24 = v81;
                v81[v25] = v28;
              }

              else
              {
                v24 = v81;
              }
            }

            ++v25;
          }

          while (v25 < v82 - v24);
        }
      }

      v29 = (*(*v7 + 96))(v7);
      if (MIL::ValueTypeInferenceUtils::ShapeHasUnknownDims(v29))
      {
        v30 = 0;
        v31 = v81;
        v32 = v82;
      }

      else
      {
        v33 = (*(*v7 + 16))(v7);
        v34 = v33;
        v31 = v81;
        v32 = v82;
        v35 = 1;
        if (v81 != v82)
        {
          v36 = v81;
          do
          {
            v37 = *v36++;
            v35 *= v37;
          }

          while (v36 != v82);
        }

        if (v16)
        {
          if (v33 % v35)
          {
            std::ostringstream::basic_ostringstream[abi:ne200100](__p);
            v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "cannot reshape tensor of size ", 30);
            v39 = MEMORY[0x21CEAFB80](v38, v34);
            v40 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, " into shape ", 12);
            (*(*v12 + 72))(&v75, v12);
            if ((v75.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v41 = &v75;
            }

            else
            {
              v41 = v75.__r_.__value_.__r.__words[0];
            }

            if ((v75.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v42 = HIBYTE(v75.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v42 = v75.__r_.__value_.__l.__size_;
            }

            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, v41, v42);
            if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v75.__r_.__value_.__l.__data_);
            }

            v43 = __cxa_allocate_exception(0x48uLL);
            v44 = a2[1];
            *&v70 = *a2;
            *(&v70 + 1) = v44;
            if (v44)
            {
              atomic_fetch_add_explicit((v44 + 8), 1uLL, memory_order_relaxed);
            }

            std::stringbuf::str();
            MIL::ValidationError::ValidationError(v43, &v70, v69, 315);
          }
        }

        else if (v33 != v35)
        {
          std::ostringstream::basic_ostringstream[abi:ne200100](__p);
          v60 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "cannot reshape tensor of size ", 30);
          v61 = MEMORY[0x21CEAFB80](v60, v34);
          v62 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v61, " into shape ", 12);
          (*(*v12 + 72))(&v75, v12);
          if ((v75.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v63 = &v75;
          }

          else
          {
            v63 = v75.__r_.__value_.__r.__words[0];
          }

          if ((v75.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v64 = HIBYTE(v75.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v64 = v75.__r_.__value_.__l.__size_;
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v62, v63, v64);
          if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v75.__r_.__value_.__l.__data_);
          }

          v65 = __cxa_allocate_exception(0x48uLL);
          v66 = a2[1];
          *&v68 = *a2;
          *(&v68 + 1) = v66;
          if (v66)
          {
            atomic_fetch_add_explicit((v66 + 8), 1uLL, memory_order_relaxed);
          }

          std::stringbuf::str();
          MIL::ValidationError::ValidationError(v65, &v68, &v67, 315);
        }

        v30 = -(v33 / v35);
      }

      if (v31 != v32)
      {
        do
        {
          v45 = *v31;
          if (*v31 == -1)
          {
            v45 = v30;
          }

          if (v45)
          {
            __p[0].__r_.__value_.__r.__words[0] = MIL::IRConstantDimension::Make(*a1, v45);
          }

          else
          {
            __p[0].__r_.__value_.__r.__words[0] = MIL::IRUnknownDimension::Make(*a1, 0);
          }

          std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](&v84, __p);
          ++v31;
        }

        while (v31 != v32);
        v31 = v81;
      }

      if (v31)
      {
        v82 = v31;
        v23 = v31;
        goto LABEL_62;
      }

      goto LABEL_63;
    }
  }

  else if (IsValue)
  {
    goto LABEL_6;
  }

  v20 = *a1;
  std::string::basic_string[abi:ne200100]<0>(&v81, "shape");
  v21 = MIL::ValueTypeInferenceUtils::GetSingleValueType(a3, &v81);
  v22 = MIL::IRValueType::AsTensorType(v21);
  MIL::ValueTypeInferenceUtils::InferShapeForDynamicReshape(v20, v22, __p);
  if (v84.__r_.__value_.__r.__words[0])
  {
    v84.__r_.__value_.__l.__size_ = v84.__r_.__value_.__r.__words[0];
    operator delete(v84.__r_.__value_.__l.__data_);
  }

  v84 = __p[0];
  memset(__p, 0, 24);
  if (SHIBYTE(v83) < 0)
  {
    v23 = v81;
LABEL_62:
    operator delete(v23);
  }

LABEL_63:
  MIL::IRTensorValueType::MakeWithShape();
}

void sub_2181139D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::__shared_weak_count *a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, void *a54, uint64_t a55, uint64_t a56, uint64_t a57, void *a58)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  if (v59)
  {
    __cxa_free_exception(v58);
  }

  std::ostringstream::~ostringstream(&a58);
  if (a51)
  {
    operator delete(a51);
  }

  if (a54)
  {
    operator delete(a54);
  }

  _Unwind_Resume(a1);
}

void MIL::ValueTypeInferenceUtils::ValueTypeInferenceBaseArgReductionCommon(MIL::IRConstantDimension **a1, uint64_t a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  memset(v22, 0, sizeof(v22));
  std::string::basic_string[abi:ne200100]<0>(__p, "x");
  SingleValueType = MIL::ValueTypeInferenceUtils::GetSingleValueType(a3, __p);
  v6 = MIL::IRValueType::AsTensorType(SingleValueType);
  v7 = (*(*v6 + 96))(v6);
  if (v25 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "keep_dims");
  v8 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, __p);
  v9 = v8;
  if (v25 < 0)
  {
    operator delete(__p[0]);
    if (!v9)
    {
      goto LABEL_9;
    }
  }

  else if (!v8)
  {
    goto LABEL_9;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "keep_dims");
  SingleValue = MIL::ValueTypeInferenceUtils::GetSingleValue(a3, __p);
  LODWORD(v9) = MIL::IRValue::GetScalar<BOOL>(SingleValue);
  if (v25 < 0)
  {
    operator delete(__p[0]);
  }

LABEL_9:
  std::string::basic_string[abi:ne200100]<0>(__p, "axis");
  v11 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, __p);
  v12 = v11;
  if (v25 < 0)
  {
    operator delete(__p[0]);
    if (v12)
    {
      goto LABEL_11;
    }
  }

  else if (v11)
  {
LABEL_11:
    std::string::basic_string[abi:ne200100]<0>(__p, "axis");
    v13 = MIL::ValueTypeInferenceUtils::GetSingleValue(a3, __p);
    v14 = MIL::IRValue::GetScalar<int>(v13);
    if (v25 < 0)
    {
      operator delete(__p[0]);
    }

    if (!MIL::Validation::IsAxisValidForRank(v14, (v7[1] - *v7) >> 3))
    {
      std::ostringstream::basic_ostringstream[abi:ne200100](__p);
      v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Axis must be within range (-input_ndim - 1, input_ndim) (exclusive). Invalid axis: ", 83);
      v19 = MEMORY[0x21CEAFB20](v18, v14);
      v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, " for input_ndim: ", 17);
      MEMORY[0x21CEAFB40](v20, (v7[1] - *v7) >> 3);
      exception = __cxa_allocate_exception(0x10uLL);
      std::stringbuf::str();
      std::logic_error::logic_error(exception, &v23);
      exception->__vftable = (MEMORY[0x277D828F8] + 16);
      __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
    }

    v15 = *v7;
    if ((v14 & 0x80000000) != 0)
    {
      LODWORD(v14) = v14 + ((v7[1] - v15) >> 3);
    }

LABEL_18:
    if (v7[1] != v15)
    {
      v16 = 0;
      v17 = 0;
      do
      {
        if (v14 == v17)
        {
          if (v9)
          {
            __p[0] = MIL::IRConstantDimension::Make(v4, 1);
            std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](v22, __p);
          }
        }

        else
        {
          std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](v22, (v15 + v16));
        }

        ++v17;
        v15 = *v7;
        v16 += 8;
      }

      while (v17 < (v7[1] - *v7) >> 3);
    }

    MIL::IRTensorValueType::MakeWithShape();
  }

  LODWORD(v14) = 0;
  v15 = *v7;
  goto LABEL_18;
}

void sub_218113F90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((v24 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a18);
      if (a9)
      {
        operator delete(a9);
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

void MIL::ValueTypeInferenceUtils::GetMatmulOutShape(MIL::IRConstantDimension **a1@<X0>, MIL::IRTensorValueType *a2@<X1>, MIL::IRTensorValueType *a3@<X2>, int a4@<W3>, int a5@<W4>, void **a6@<X8>)
{
  v53 = *MEMORY[0x277D85DE8];
  if (!(*(*a2 + 104))(a2) || ((*(*a3 + 104))(a3) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "cannot do type inference if x or y have variadic shapes");
    goto LABEL_41;
  }

  if (MIL::IRTensorValueType::Rank(a2) == 1 && a4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "transpose_x can't be true if x's rank is 1");
LABEL_41:
    __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
  }

  v12 = (*(*a2 + 96))(a2);
  v47 = 0;
  v48 = 0;
  v46 = 0;
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&v46, *v12, v12[1], (v12[1] - *v12) >> 3);
  if (a4)
  {
    v13 = *(v47 - 2);
    *(v47 - 2) = *(v47 - 1);
    *(v47 - 1) = v13;
  }

  v14 = (*(*a3 + 96))(a3);
  v43 = 0;
  v44 = 0;
  v45 = 0;
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&v43, *v14, v14[1], (v14[1] - *v14) >> 3);
  if (a5)
  {
    v15 = *(v44 - 2);
    *(v44 - 2) = *(v44 - 1);
    *(v44 - 1) = v15;
  }

  if (MIL::IRTensorValueType::Rank(a2) == 1)
  {
    v16 = v46;
    v50[0] = MIL::IRConstantDimension::Make(*a1, 1);
    std::vector<MIL::IRDimension const*>::insert(&v46, v16, v50);
  }

  if (MIL::IRTensorValueType::Rank(a3) == 1)
  {
    v17 = v44;
    v50[0] = MIL::IRConstantDimension::Make(*a1, 1);
    std::vector<MIL::IRDimension const*>::insert(&v43, v17, v50);
  }

  if (!(*(**(v47 - 1) + 24))(*(v47 - 1)) && !(*(**(v44 - 2) + 24))(*(v44 - 2)))
  {
    v18 = MIL::IRDimension::AsConstant(*(v47 - 1));
    v19 = (*(*v18 + 48))(v18);
    v20 = MIL::IRDimension::AsConstant(*(v44 - 2));
    if (v19 != (*(*v20 + 48))(v20))
    {
      v32 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v32, "shapes of x and y are not broadcastable");
      v32->__vftable = (MEMORY[0x277D828F8] + 16);
      __cxa_throw(v32, off_278235F80, MEMORY[0x277D82610]);
    }
  }

  v41 = 0;
  v42 = 0;
  v40 = 0;
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<std::__wrap_iter<MIL::IRDimension const**>,std::__wrap_iter<MIL::IRDimension const**>>(&v40, v46, (v47 - 2), ((v47 - 2) - v46) >> 3);
  v38 = 0;
  v39 = 0;
  v37 = 0;
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<std::__wrap_iter<MIL::IRDimension const**>,std::__wrap_iter<MIL::IRDimension const**>>(&v37, v43, (v44 - 16), (v44 - 16 - v43) >> 3);
  v21 = *a1;
  memset(v50, 0, sizeof(v50));
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(v50, v40, v41, (v41 - v40) >> 3);
  v51 = 0;
  v52[0] = 0;
  v52[1] = 0;
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&v51, v37, v38, (v38 - v37) >> 3);
  memset(v33, 0, sizeof(v33));
  std::vector<std::vector<MIL::IRDimension const*>>::__init_with_size[abi:ne200100]<std::vector<MIL::IRDimension const*> const*,std::vector<MIL::IRDimension const*> const*>(v33, v50, &v53, 2uLL);
  MIL::ValueTypeInferenceUtils::BroadcastShape(v21, v33, &__p);
  v49 = v33;
  std::vector<std::vector<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&v49);
  for (i = 0; i != -6; i -= 3)
  {
    v23 = v50[i + 3];
    if (v23)
    {
      v52[i] = v23;
      operator delete(v23);
    }
  }

  std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](&__p, v47 - 2);
  std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](&__p, v44 - 1);
  if (MIL::IRTensorValueType::Rank(a2) == 1)
  {
    if (MIL::IRTensorValueType::Rank(a3) == 1)
    {
      *a6 = 0;
      a6[1] = 0;
      a6[2] = 0;
      if (__p)
      {
        v35 = __p;
        operator delete(__p);
      }

      goto LABEL_30;
    }

    v24 = __p;
    v25 = &v24[8 * MIL::IRTensorValueType::Rank(a3)];
    v26 = v25 - 16;
    v27 = (v35 - (v25 - 8));
    if (v35 != v25 - 8)
    {
      memmove(v26, v25 - 8, v35 - (v25 - 8));
    }

    v35 = &v27[v26];
  }

  v28 = MIL::IRTensorValueType::Rank(a3);
  v29 = v35;
  if (v28 == 1)
  {
    v29 = v35 - 8;
    v35 -= 8;
  }

  v30 = v36;
  *a6 = __p;
  a6[1] = v29;
  a6[2] = v30;
LABEL_30:
  if (v37)
  {
    v38 = v37;
    operator delete(v37);
  }

  if (v40)
  {
    v41 = v40;
    operator delete(v40);
  }

  if (v43)
  {
    v44 = v43;
    operator delete(v43);
  }

  if (v46)
  {
    v47 = v46;
    operator delete(v46);
  }
}

void sub_2181145A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, uint64_t a23, void *a24, uint64_t a25)
{
  __cxa_free_exception(v25);
  if (__p)
  {
    operator delete(__p);
  }

  if (a24)
  {
    operator delete(a24);
  }

  _Unwind_Resume(a1);
}

char *std::vector<MIL::IRDimension const*>::insert(void *a1, char *__src, void *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = (&v6[-*a1] >> 3) + 1;
    if (v11 >> 61)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v12 = __src - v10;
    v13 = v7 - v10;
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

    v15 = v12 >> 3;
    v27 = a1;
    if (v14)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::string const*>>(a1, v14);
    }

    v24 = 0;
    v25 = 8 * v15;
    v26 = (8 * v15);
    std::__split_buffer<MIL::IRDimension const*>::emplace_back<MIL::IRDimension const*>(&v24, a3);
    v16 = v25;
    memcpy(v26, v4, a1[1] - v4);
    v17 = *a1;
    v18 = v25;
    *&v26 = v26 + a1[1] - v4;
    a1[1] = v4;
    v19 = v4 - v17;
    v20 = (v18 - (v4 - v17));
    memcpy(v20, v17, v19);
    v21 = *a1;
    *a1 = v20;
    v22 = a1[2];
    *(a1 + 1) = v26;
    *&v26 = v21;
    *(&v26 + 1) = v22;
    v24 = v21;
    v25 = v21;
    if (v21)
    {
      operator delete(v21);
    }

    return v16;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 8;
  }

  else
  {
    v8 = __src + 8;
    if (v6 < 8)
    {
      v9 = a1[1];
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = v6 + 8;
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 8, __src, v6 - v8);
    }

    *v4 = *a3;
  }

  return v4;
}

void sub_218114844(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ValueTypeInferenceUtils::GetRandomCategoricalOutShape(MIL::IRConstantDimension **a1@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, int a4@<W3>, void *a5@<X8>)
{
  v7 = *a3;
  if ((a3[1] - *a3) <= 8)
  {
    exception = __cxa_allocate_exception(0x48uLL);
    v14 = a2[1];
    *&v21 = *a2;
    *(&v21 + 1) = v14;
    if (v14)
    {
      atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v20, "Parameter x must have a minimum rank of 2. The last dimension represents vector of probabilities and remaining dimensions represent specific distributions.");
    MIL::ValidationError::ValidationError(exception, &v21, v20, 315);
  }

  v11 = 0;
  v12 = 0;
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  do
  {
    std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](a5, (v7 + v11));
    ++v12;
    v7 = *a3;
    v11 += 8;
  }

  while (v12 < ((a3[1] - *a3) >> 3) - 1);
  if (a4 < 1)
  {
    v15 = __cxa_allocate_exception(0x48uLL);
    v16 = a2[1];
    *&v19 = *a2;
    *(&v19 + 1) = v16;
    if (v16)
    {
      atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v18, "Parameter size must be positive.");
    MIL::ValidationError::ValidationError(v15, &v19, v18, 315);
  }

  v17 = MIL::IRConstantDimension::Make(*a1, a4);
  std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](a5, &v17);
}

void sub_218114A24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, std::__shared_weak_count *a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  if (v28)
  {
    __cxa_free_exception(v27);
  }

  v30 = *v26;
  if (*v26)
  {
    *(v26 + 8) = v30;
    operator delete(v30);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ValueTypeInferenceUtils::EnsureShapeIsConstant(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X3>, MIL::ValidationResult *a4@<X8>)
{
  if (MIL::ValueTypeInferenceUtils::ShapeHasUnknownDims(a1))
  {
    v7 = a3[1];
    v19 = *a3;
    v20 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::operator+<char>();
    v8 = std::string::append(&v15, " in op ");
    v9 = *&v8->__r_.__value_.__l.__data_;
    v16.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
    *&v16.__r_.__value_.__l.__data_ = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    v10 = *(a2 + 23);
    if (v10 >= 0)
    {
      v11 = a2;
    }

    else
    {
      v11 = *a2;
    }

    if (v10 >= 0)
    {
      v12 = *(a2 + 23);
    }

    else
    {
      v12 = *(a2 + 8);
    }

    v13 = std::string::append(&v16, v11, v12);
    v14 = *&v13->__r_.__value_.__l.__data_;
    v18 = v13->__r_.__value_.__r.__words[2];
    *__p = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    MIL::ValidationResult::ValidationResult(a4, &v19, 304, __p);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v15.__r_.__value_.__l.__data_);
    }

    if (v20)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v20);
    }
  }

  else
  {

    MIL::ValidationResult::ValidationResult(a4);
  }
}

void sub_218114C04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
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
  }

  v30 = *(v28 - 40);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ValueTypeInferenceUtils::GetRandomOpOutShape(MIL::IRValue *this@<X1>, MIL::IRConstantDimension **a2@<X0>, MIL::IRDimension ***a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  if (this)
  {
    v8 = MIL::IRValue::AsTensor(this);
    Data = MIL::IRTensorValue::GetDataView<int>(v8);
    v11 = v10;
    std::vector<std::string const*>::reserve(a5, v10);
    if (v11)
    {
      v12 = 4 * v11;
      do
      {
        v13 = *Data;
        if (v13 <= 0)
        {
          exception = __cxa_allocate_exception(0x48uLL);
          v17 = a4[1];
          *&v20 = *a4;
          *(&v20 + 1) = v17;
          if (v17)
          {
            atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
          }

          std::string::basic_string[abi:ne200100]<0>(v19, "Shape parameter must have positive values only");
          MIL::ValidationError::ValidationError(exception, &v20, v19, 315);
        }

        v18 = MIL::IRConstantDimension::Make(*a2, v13);
        std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](a5, &v18);
        ++Data;
        v12 -= 4;
      }

      while (v12);
    }
  }

  else
  {
    v14 = MIL::IRDimension::AsConstant(**a3);
    v15 = (*(*v14 + 48))(v14);
    v18 = MIL::IRUnknownDimension::Make(*a2, 0);
    std::vector<MIL::IRDimension const*>::assign(a5, v15, &v18);
  }
}

void sub_218114DD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17)
{
  v19 = *v17;
  if (*v17)
  {
    *(v17 + 8) = v19;
    operator delete(v19);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<MIL::IRDimension const*>::assign(void *a1, unint64_t a2, uint64_t *a3)
{
  v5 = a1[2];
  result = *a1;
  if (a2 > (v5 - result) >> 3)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v5 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a2 >> 61))
    {
      v7 = v5 >> 2;
      if (v5 >> 2 <= a2)
      {
        v7 = a2;
      }

      if (v5 >= 0x7FFFFFFFFFFFFFF8)
      {
        v8 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v8 = v7;
      }

      std::vector<MIL::IRDimension const*>::__vallocate[abi:ne200100](a1, v8);
    }

    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  v9 = a1[1];
  v10 = (v9 - result) >> 3;
  if (v10 >= a2)
  {
    v11 = a2;
  }

  else
  {
    v11 = (v9 - result) >> 3;
  }

  if (v11)
  {
    v12 = 0;
    v13 = *a3;
    v14 = (v11 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v15 = vdupq_n_s64(v11 - 1);
    v16 = result + 1;
    do
    {
      v17 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v12), xmmword_218583C30)));
      if (v17.i8[0])
      {
        *(v16 - 1) = v13;
      }

      if (v17.i8[4])
      {
        *v16 = v13;
      }

      v12 += 2;
      v16 += 2;
    }

    while (v14 != v12);
  }

  v18 = a2 - v10;
  if (a2 <= v10)
  {
    a1[1] = *a1 + 8 * a2;
  }

  else
  {
    v19 = 0;
    v20 = a1[1];
    v21 = v20 + 8 * v18;
    v22 = *a3;
    v23 = (8 * a2 - (v9 - result) - 8) >> 3;
    v24 = vdupq_n_s64(v23);
    v25 = (v20 + 8);
    do
    {
      v26 = vmovn_s64(vcgeq_u64(v24, vorrq_s8(vdupq_n_s64(v19), xmmword_218583C30)));
      if (v26.i8[0])
      {
        *(v25 - 1) = v22;
      }

      if (v26.i8[4])
      {
        *v25 = v22;
      }

      v19 += 2;
      v25 += 2;
    }

    while (((v23 + 2) & 0x3FFFFFFFFFFFFFFELL) != v19);
    a1[1] = v21;
  }

  return result;
}

void MIL::ValueTypeInferenceUtils::GetOperatorType(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  if (std::string::find(a1, 46, 0) == -1)
  {
    if (*(a1 + 23) < 0)
    {
      v5 = *a1;
      v6 = *(a1 + 8);

      std::string::__init_copy_ctor_external(a2, v5, v6);
    }

    else
    {
      *&a2->__r_.__value_.__l.__data_ = *a1;
      a2->__r_.__value_.__r.__words[2] = *(a1 + 16);
    }
  }

  else
  {
    v4 = std::string::find(a1, 46, 0);
    std::string::basic_string(a2, a1, v4 + 1, 0xFFFFFFFFFFFFFFFFLL, &v7);
  }
}

void MIL::ValueTypeInferenceUtils::MixedOpTypeinference(uint64_t a1, uint64_t a2, void *a3, void *a4, int a5)
{
  v338[0] = *MEMORY[0x277D85DE8];
  Operator = MIL::Builder::OperationBuilder::GetOperator(*a2);
  v7 = (*(*Operator + 16))(Operator);
  MIL::ValueTypeInferenceUtils::GetOperatorType(v7, __p);
  if ((SBYTE7(v322) & 0x80000000) == 0)
  {
    if (SBYTE7(v322) != 6)
    {
      goto LABEL_23;
    }

    if (LODWORD(__p[0]) != 1752457575 || WORD2(__p[0]) != 29285)
    {
      goto LABEL_23;
    }

LABEL_17:
    MIL::Builder::FunctionBuilder::GetContext(a1, &__sz);
    v11 = __sz.__r_.__value_.__r.__words[0];
    std::string::basic_string[abi:ne200100]<0>(__p, "axis");
    v12 = *a2;
    LODWORD(v330) = 0;
    memset(&v333, 0, sizeof(v333));
    std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v333, &v330, &v330 + 4, 1uLL);
    if (v333.__r_.__value_.__r.__words[0])
    {
      v333.__r_.__value_.__l.__size_ = v333.__r_.__value_.__r.__words[0];
      operator delete(v333.__r_.__value_.__l.__data_);
    }

    if (SBYTE7(v322) < 0)
    {
      operator delete(__p[0]);
      if (!v13)
      {
LABEL_279:
        p_sz = 0;
        goto LABEL_447;
      }
    }

    else if (!v13)
    {
      goto LABEL_279;
    }

    v72 = MIL::Builder::OperationBuilder::GetOperator(*a2);
    v73 = (*(*v72 + 64))(v72);
    std::string::basic_string[abi:ne200100]<0>(__p, "batch_dims");
    if (std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(v73, __p))
    {
      v74 = *a2;
      std::string::basic_string[abi:ne200100]<0>(&v333, "batch_dims");
      v75 = MIL::Builder::OperationBuilder::GetNumArguments(v74, &v333.__r_.__value_.__l.__data_) != 0;
      if (SHIBYTE(v333.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v333.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v75 = 0;
    }

    if (SBYTE7(v322) < 0)
    {
      operator delete(__p[0]);
      if (!v75)
      {
        goto LABEL_265;
      }
    }

    else if (!v75)
    {
      goto LABEL_265;
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "batch_dims");
    v148 = *a2;
    LODWORD(v330) = 0;
    memset(&v333, 0, sizeof(v333));
    std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v333, &v330, &v330 + 4, 1uLL);
    if (v333.__r_.__value_.__r.__words[0])
    {
      v333.__r_.__value_.__l.__size_ = v333.__r_.__value_.__r.__words[0];
      operator delete(v333.__r_.__value_.__l.__data_);
    }

    if (SBYTE7(v322) < 0)
    {
      operator delete(__p[0]);
    }

    if (!v149)
    {
      goto LABEL_279;
    }

LABEL_265:
    std::string::basic_string[abi:ne200100]<0>(__p, "x");
    if (SBYTE7(v322) < 0)
    {
      operator delete(__p[0]);
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "indices");
    if (SBYTE7(v322) < 0)
    {
      operator delete(__p[0]);
    }

    if (!v330)
    {
      goto LABEL_443;
    }

    if (!(*(*v330 + 40))(v330))
    {
      goto LABEL_443;
    }

    if (!__src.__r_.__value_.__r.__words[0])
    {
      goto LABEL_443;
    }

    if (!(*(*__src.__r_.__value_.__l.__data_ + 40))(__src.__r_.__value_.__r.__words[0]))
    {
      goto LABEL_443;
    }

    v150 = (*(*v330 + 40))(v330);
    v151 = (*(*v150 + 32))(v150);
    if (MIL::IRTensorValueType::Rank(v151) != 1)
    {
      goto LABEL_443;
    }

    v152 = (*(*__src.__r_.__value_.__l.__data_ + 40))(__src.__r_.__value_.__r.__words[0]);
    v153 = (*(*v152 + 32))(v152);
    if ((*(*v153 + 16))(v153) != 1)
    {
      goto LABEL_443;
    }

    v154 = (*(*__src.__r_.__value_.__l.__data_ + 40))(__src.__r_.__value_.__r.__words[0]);
    v155 = (*(*v154 + 32))(v154);
    v156 = (*(*v155 + 88))(v155);
    switch(v156)
    {
      case 10:
        v268 = (*(*__src.__r_.__value_.__l.__data_ + 40))(__src.__r_.__value_.__r.__words[0]);
        v267 = *MIL::IRTensorValue::GetDataView<short>(v268);
        break;
      case 11:
        v266 = (*(*__src.__r_.__value_.__l.__data_ + 40))(__src.__r_.__value_.__r.__words[0]);
        v267 = *MIL::IRTensorValue::GetDataView<int>(v266);
        break;
      case 15:
        v157 = (*(*__src.__r_.__value_.__l.__data_ + 40))(__src.__r_.__value_.__r.__words[0]);
        MIL::IRTensorValue::GetDataView<unsigned short>(v157);
LABEL_439:
        v271 = (*(*v330 + 40))(v330);
        v272 = (*(*v271 + 32))(v271);
        v273 = (*(*v272 + 88))(v272);
        switch(v273)
        {
          case 15:
            v305 = (*(*v330 + 40))(v330);
            MIL::IRTensorValue::GetDataView<unsigned short>(v305);
            v306 = (*(*__src.__r_.__value_.__l.__data_ + 40))(__src.__r_.__value_.__r.__words[0]);
            v307 = (*(*v306 + 32))(v306);
            v308 = MIL::IRTensorValueType::Rank(v307);
            v328 = 1;
            std::vector<unsigned long long>::vector[abi:ne200100](__p, v308);
            MIL::IRTensorValueType::Make(v11, 15, __p);
          case 11:
            v301 = (*(*v330 + 40))(v330);
            MIL::IRTensorValue::GetDataView<int>(v301);
            v302 = (*(*__src.__r_.__value_.__l.__data_ + 40))(__src.__r_.__value_.__r.__words[0]);
            v303 = (*(*v302 + 32))(v302);
            v304 = MIL::IRTensorValueType::Rank(v303);
            v328 = 1;
            std::vector<unsigned long long>::vector[abi:ne200100](__p, v304);
            MIL::IRTensorValueType::Make(v11, 11, __p);
          case 10:
            v274 = (*(*v330 + 40))(v330);
            MIL::IRTensorValue::GetDataView<short>(v274);
            v275 = (*(*__src.__r_.__value_.__l.__data_ + 40))(__src.__r_.__value_.__r.__words[0]);
            v276 = (*(*v275 + 32))(v275);
            v277 = MIL::IRTensorValueType::Rank(v276);
            v328 = 1;
            std::vector<unsigned long long>::vector[abi:ne200100](__p, v277);
            MIL::IRTensorValueType::Make(v11, 10, __p);
        }

        goto LABEL_443;
      default:
LABEL_443:
        p_sz = 0;
        if (__src.__r_.__value_.__l.__size_)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](__src.__r_.__value_.__l.__size_);
        }

        if (*(&v330 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v330 + 1));
        }

LABEL_447:
        if (__sz.__r_.__value_.__l.__size_)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](__sz.__r_.__value_.__l.__size_);
        }

        v25 = p_sz != 0;
        if (!p_sz)
        {
          goto LABEL_452;
        }

        __p[0] = MIL::Builder::OperationBuilder::GetOutputName(*a2, 0);
        v278 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a4, __p[0]);
        std::shared_ptr<MIL::IRValue const>::operator=[abi:ne200100]<MIL::IRTensorValue const,std::default_delete<MIL::IRTensorValue const>,0>(v278 + 5, &p_sz);
        v109 = p_sz;
        p_sz = 0;
        if (!v109)
        {
          goto LABEL_452;
        }

        goto LABEL_451;
    }

    if (v267 < 0)
    {
      v269 = (*(*v330 + 40))(v330);
      v270 = (*(*v269 + 32))(v269);
      (*(*v270 + 16))(v270);
    }

    goto LABEL_439;
  }

  if (__p[1] != 6)
  {
    operator delete(__p[0]);
    goto LABEL_23;
  }

  v10 = *__p[0] != 1752457575 || *(__p[0] + 2) != 29285;
  operator delete(__p[0]);
  if (!v10)
  {
    goto LABEL_17;
  }

LABEL_23:
  v14 = MIL::Builder::OperationBuilder::GetOperator(*a2);
  v15 = (*(*v14 + 16))(v14);
  MIL::ValueTypeInferenceUtils::GetOperatorType(v15, __p);
  if ((SBYTE7(v322) & 0x80000000) == 0)
  {
    if (SBYTE7(v322) != 6)
    {
      goto LABEL_45;
    }

    if (LODWORD(__p[0]) != 1668181859 || WORD2(__p[0]) != 29793)
    {
      goto LABEL_45;
    }

    goto LABEL_39;
  }

  if (__p[1] != 6)
  {
    operator delete(__p[0]);
    goto LABEL_45;
  }

  v18 = *__p[0] != 1668181859 || *(__p[0] + 2) != 29793;
  operator delete(__p[0]);
  if (!v18)
  {
LABEL_39:
    MIL::Builder::FunctionBuilder::GetContext(a1, &__src);
    v19 = __src.__r_.__value_.__r.__words[0];
    std::string::basic_string[abi:ne200100]<0>(__p, "axis");
    v20 = *a2;
    LODWORD(v330) = 0;
    memset(&v333, 0, sizeof(v333));
    std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v333, &v330, &v330 + 4, 1uLL);
    if (v333.__r_.__value_.__r.__words[0])
    {
      v333.__r_.__value_.__l.__size_ = v333.__r_.__value_.__r.__words[0];
      operator delete(v333.__r_.__value_.__l.__data_);
    }

    if (SBYTE7(v322) < 0)
    {
      operator delete(__p[0]);
      if (!v21)
      {
LABEL_211:
        __sz.__r_.__value_.__r.__words[0] = 0;
        goto LABEL_212;
      }
    }

    else if (!v21)
    {
      goto LABEL_211;
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "interleave");
    v106 = MIL::IRValue::AsTensor(v333.__r_.__value_.__l.__data_);
    v107 = *MIL::IRTensorValue::GetDataView<BOOL>(v106);
    if (v333.__r_.__value_.__l.__size_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v333.__r_.__value_.__l.__size_);
    }

    if (SBYTE7(v322) < 0)
    {
      operator delete(__p[0]);
    }

    if (v107)
    {
      goto LABEL_211;
    }

    v117 = 0;
    __p[0] = 0;
    __p[1] = 0;
    *&v322 = 0;
    while (1)
    {
      v118 = *a2;
      std::string::basic_string[abi:ne200100]<0>(&v333, "values");
      NumArguments = MIL::Builder::OperationBuilder::GetNumArguments(v118, &v333.__r_.__value_.__l.__data_);
      if (SHIBYTE(v333.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v333.__r_.__value_.__l.__data_);
      }

      if (v117 >= NumArguments)
      {
        *&v330 = (__p[1] - __p[0]) >> 2;
        memset(&v333, 0, sizeof(v333));
        std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v333, &v330, &v330 + 8, 1uLL);
        MIL::IRTensorValueType::Make(v19, 11, &v333);
      }

      v120 = *a2;
      std::string::basic_string[abi:ne200100]<0>(&v333, "values");
      ArgumentForParameter = MIL::Builder::OperationBuilder::GetArgumentForParameter(v120, &v333, v117);
      Value = MIL::Builder::Variable::TryGetValue(ArgumentForParameter);
      v123 = Value;
      if (SHIBYTE(v333.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v333.__r_.__value_.__l.__data_);
        if (v123)
        {
LABEL_230:
          v124 = *a2;
          std::string::basic_string[abi:ne200100]<0>(&v333, "values");
          v125 = MIL::Builder::OperationBuilder::GetArgumentForParameter(v124, &v333, v117);
          MIL::Builder::Variable::TryGetValueSharedPtr(v125, &v330);
          v126 = *(&v330 + 1);
          v127 = v330;
          v330 = 0uLL;
          goto LABEL_238;
        }
      }

      else if (Value)
      {
        goto LABEL_230;
      }

      v128 = *a2;
      std::string::basic_string[abi:ne200100]<0>(&v333, "values");
      v129 = MIL::Builder::OperationBuilder::GetArgumentForParameter(v128, &v333, v117);
      Name = MIL::Builder::Variable::GetName(v129);
      v131 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a4, Name);
      if (SHIBYTE(v333.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v333.__r_.__value_.__l.__data_);
      }

      if (!v131)
      {
        __sz.__r_.__value_.__r.__words[0] = 0;
        goto LABEL_421;
      }

      v132 = *a2;
      std::string::basic_string[abi:ne200100]<0>(&v333, "values");
      v133 = MIL::Builder::OperationBuilder::GetArgumentForParameter(v132, &v333, v117);
      v134 = MIL::Builder::Variable::GetName(v133);
      v135 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a4, v134);
      if (!v135)
      {
        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      v127 = v135[5];
      v126 = v135[6];
      if (v126)
      {
        atomic_fetch_add_explicit(&v126->__shared_owners_, 1uLL, memory_order_relaxed);
      }

LABEL_238:
      if (SHIBYTE(v333.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v333.__r_.__value_.__l.__data_);
      }

      if (!v127 || !(*(*v127 + 40))(v127) || (v136 = (*(*v127 + 40))(v127), v137 = (*(*v136 + 32))(v136), v138 = (*(*v137 + 96))(v137), v138[1] - *v138 > 8uLL))
      {
        __sz.__r_.__value_.__r.__words[0] = 0;
        if (v126)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v126);
        }

LABEL_421:
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

LABEL_212:
        if (__src.__r_.__value_.__l.__size_)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](__src.__r_.__value_.__l.__size_);
        }

        v25 = __sz.__r_.__value_.__r.__words[0] != 0;
        if (!__sz.__r_.__value_.__r.__words[0] || (__p[0] = MIL::Builder::OperationBuilder::GetOutputName(*a2, 0), v108 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a4, __p[0]), std::shared_ptr<MIL::IRValue const>::operator=[abi:ne200100]<MIL::IRTensorValue const,std::default_delete<MIL::IRTensorValue const>,0>(v108 + 5, &__sz), v109 = __sz.__r_.__value_.__r.__words[0], __sz.__r_.__value_.__r.__words[0] = 0, !v109))
        {
LABEL_452:
          if (v25 && a5)
          {
            OwningBlock = MIL::Builder::OperationBuilder::GetOwningBlock(*a2);
            MIL::Builder::BlockBuilder::GetOutputNames(OwningBlock, &v330);
            for (i = 0; i < MIL::Builder::OperationBuilder::GetNumOutputs(*a2); ++i)
            {
              Output = MIL::Builder::OperationBuilder::GetOutput(*a2, i);
              v282 = MIL::Builder::Variable::GetName(Output);
              if (*(v282 + 23) < 0)
              {
                std::string::__init_copy_ctor_external(&__src, *v282, *(v282 + 1));
              }

              else
              {
                v283 = *v282;
                __src.__r_.__value_.__r.__words[2] = *(v282 + 2);
                *&__src.__r_.__value_.__l.__data_ = v283;
              }

              if ((__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                size = HIBYTE(__src.__r_.__value_.__r.__words[2]);
              }

              else
              {
                size = __src.__r_.__value_.__l.__size_;
              }

              std::string::basic_string[abi:ne200100](__p, size + 1);
              if ((SBYTE7(v322) & 0x80u) == 0)
              {
                v285 = __p;
              }

              else
              {
                v285 = __p[0];
              }

              if (size)
              {
                if ((__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  p_src = &__src;
                }

                else
                {
                  p_src = __src.__r_.__value_.__r.__words[0];
                }

                memmove(v285, p_src, size);
              }

              *(v285 + size) = 95;
              std::to_string(&v333, 0);
              if ((v333.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v287 = &v333;
              }

              else
              {
                v287 = v333.__r_.__value_.__r.__words[0];
              }

              if ((v333.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v288 = HIBYTE(v333.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v288 = v333.__r_.__value_.__l.__size_;
              }

              v289 = std::string::append(__p, v287, v288);
              v290 = *&v289->__r_.__value_.__l.__data_;
              __sz.__r_.__value_.__r.__words[2] = v289->__r_.__value_.__r.__words[2];
              *&__sz.__r_.__value_.__l.__data_ = v290;
              v289->__r_.__value_.__l.__size_ = 0;
              v289->__r_.__value_.__r.__words[2] = 0;
              v289->__r_.__value_.__r.__words[0] = 0;
              if (SHIBYTE(v333.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v333.__r_.__value_.__l.__data_);
              }

              if (SBYTE7(v322) < 0)
              {
                operator delete(__p[0]);
              }

              v291 = 1;
              while (MIL::Builder::BlockBuilder::TryGetVariable(OwningBlock, &__sz))
              {
                std::to_string(__p, v291);
                if ((__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v292 = &__src;
                }

                else
                {
                  v292 = __src.__r_.__value_.__r.__words[0];
                }

                if ((__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v293 = HIBYTE(__src.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v293 = __src.__r_.__value_.__l.__size_;
                }

                v294 = std::string::insert(__p, 0, v292, v293);
                v295 = v294->__r_.__value_.__r.__words[0];
                v333.__r_.__value_.__r.__words[0] = v294->__r_.__value_.__l.__size_;
                *(v333.__r_.__value_.__r.__words + 7) = *(&v294->__r_.__value_.__r.__words[1] + 7);
                v296 = HIBYTE(v294->__r_.__value_.__r.__words[2]);
                v294->__r_.__value_.__l.__size_ = 0;
                v294->__r_.__value_.__r.__words[2] = 0;
                v294->__r_.__value_.__r.__words[0] = 0;
                if (SHIBYTE(__sz.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__sz.__r_.__value_.__l.__data_);
                }

                __sz.__r_.__value_.__r.__words[0] = v295;
                __sz.__r_.__value_.__l.__size_ = v333.__r_.__value_.__r.__words[0];
                *(&__sz.__r_.__value_.__r.__words[1] + 7) = *(v333.__r_.__value_.__r.__words + 7);
                *(&__sz.__r_.__value_.__s + 23) = v296;
                if (SBYTE7(v322) < 0)
                {
                  operator delete(__p[0]);
                }

                ++v291;
              }

              __p[0] = &__src;
              v297 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a4, &__src.__r_.__value_.__l.__data_);
              v299 = v297[5];
              v298 = v297[6];
              if (v298)
              {
                atomic_fetch_add_explicit(&v298->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              if (v299)
              {
                std::string::basic_string[abi:ne200100]<0>(__p, "const");
                v300 = *(a2 + 8);
                v320[0] = *a2;
                v320[1] = v300;
                if (v300)
                {
                  atomic_fetch_add_explicit((v300 + 8), 1uLL, memory_order_relaxed);
                }

                MIL::Builder::BlockBuilder::AddOperation(OwningBlock, __p, v320);
              }

              if (v298)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v298);
              }

              if (SHIBYTE(__sz.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__sz.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__src.__r_.__value_.__l.__data_);
              }
            }

            MIL::Builder::FunctionBuilder::GetContext(a1, __p);
            MIL::IRTensorValueType::MakeScalar();
          }

          return;
        }

LABEL_451:
        (*(*v109 + 8))(v109);
        goto LABEL_452;
      }

      v139 = (*(*v127 + 40))(v127);
      Data = MIL::IRTensorValue::GetDataView<int>(v139);
      if (v141)
      {
        v142 = Data;
        v143 = 4 * v141;
        do
        {
          LODWORD(v333.__r_.__value_.__l.__data_) = *v142;
          std::vector<int>::push_back[abi:ne200100](__p, &v333);
          ++v142;
          v143 -= 4;
        }

        while (v143);
      }

      if (v126)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v126);
      }

      ++v117;
    }
  }

LABEL_45:
  v22 = MIL::Builder::OperationBuilder::GetOperator(*a2);
  v23 = (*(*v22 + 16))(v22);
  MIL::ValueTypeInferenceUtils::GetOperatorType(v23, __p);
  if (SBYTE7(v322) < 0)
  {
    if (__p[1] != 4)
    {
      operator delete(__p[0]);
      goto LABEL_72;
    }

    v24 = *__p[0];
    operator delete(__p[0]);
    if (v24 != 1819044198)
    {
      goto LABEL_72;
    }

LABEL_51:
    std::string::basic_string[abi:ne200100]<0>(__p, "shape");
    if (SBYTE7(v322) < 0)
    {
      operator delete(__p[0]);
    }

    if (v25)
    {
      v26 = 0;
      __p[0] = 0;
      __p[1] = 0;
      *&v322 = 0;
      while (1)
      {
        v27 = (*(*v333.__r_.__value_.__l.__data_ + 40))(v333.__r_.__value_.__r.__words[0]);
        MIL::IRTensorValue::GetDataView<int>(v27);
        if (v26 >= v28)
        {
          break;
        }

        MIL::Builder::FunctionBuilder::GetContext(a1, &v330);
        v29 = v330;
        v30 = (*(*v333.__r_.__value_.__l.__data_ + 40))(v333.__r_.__value_.__r.__words[0]);
        v31 = MIL::IRTensorValue::GetDataView<int>(v30);
        v32 = MIL::IRConstantDimension::Make(v29, *(v31 + 4 * v26));
        v33 = __p[1];
        if (__p[1] >= v322)
        {
          v35 = (__p[1] - __p[0]) >> 3;
          if ((v35 + 1) >> 61)
          {
            std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
          }

          v36 = (v322 - __p[0]) >> 2;
          if (v36 <= v35 + 1)
          {
            v36 = v35 + 1;
          }

          if (v322 - __p[0] >= 0x7FFFFFFFFFFFFFF8)
          {
            v37 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v37 = v36;
          }

          if (v37)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<std::string const*>>(__p, v37);
          }

          *(8 * v35) = v32;
          v34 = (8 * v35 + 8);
          v38 = (8 * v35 - (__p[1] - __p[0]));
          memcpy(v38, __p[0], __p[1] - __p[0]);
          v39 = __p[0];
          __p[0] = v38;
          __p[1] = v34;
          *&v322 = 0;
          if (v39)
          {
            operator delete(v39);
          }
        }

        else
        {
          *__p[1] = v32;
          v34 = v33 + 8;
        }

        __p[1] = v34;
        if (*(&v330 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v330 + 1));
        }

        ++v26;
      }

      MIL::Builder::FunctionBuilder::GetContext(a1, &v330);
      v68 = MIL::Builder::OperationBuilder::GetOutput(*a2, 0);
      Type = MIL::Builder::Variable::TryGetType(v68);
      v70 = (*(*Type + 24))(Type);
      (*(*v70 + 88))(v70);
      MIL::IRTensorValueType::MakeWithShape();
    }

    goto LABEL_154;
  }

  if (SBYTE7(v322) == 4 && LODWORD(__p[0]) == 1819044198)
  {
    goto LABEL_51;
  }

LABEL_72:
  v40 = MIL::Builder::OperationBuilder::GetOperator(*a2);
  v41 = (*(*v40 + 16))(v40);
  MIL::ValueTypeInferenceUtils::GetOperatorType(v41, __p);
  if ((SBYTE7(v322) & 0x80000000) == 0)
  {
    if (SBYTE7(v322) != 11)
    {
      goto LABEL_94;
    }

    if (__p[0] != 0x705F656375646572 || *(__p + 3) != 0x646F72705F656375)
    {
      goto LABEL_94;
    }

    goto LABEL_88;
  }

  if (__p[1] != 11)
  {
    operator delete(__p[0]);
    goto LABEL_94;
  }

  v44 = *__p[0] != 0x705F656375646572 || *(__p[0] + 3) != 0x646F72705F656375;
  operator delete(__p[0]);
  if (!v44)
  {
LABEL_88:
    std::string::basic_string[abi:ne200100]<0>(__p, "keep_dims");
    v45 = MIL::IRValue::AsTensor(v333.__r_.__value_.__l.__data_);
    v46 = *MIL::IRTensorValue::GetDataView<BOOL>(v45);
    if (v333.__r_.__value_.__l.__size_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v333.__r_.__value_.__l.__size_);
    }

    if (SBYTE7(v322) < 0)
    {
      operator delete(__p[0]);
      if (v46)
      {
        return;
      }
    }

    else if (v46)
    {
      return;
    }

    v144 = *a2;
    std::string::basic_string[abi:ne200100]<0>(__p, "axes");
    if (MIL::Builder::OperationBuilder::GetNumArguments(v144, __p))
    {
      std::string::basic_string[abi:ne200100]<0>(&v333, "axes");
      v145 = *a2;
      LODWORD(__src.__r_.__value_.__l.__data_) = 0;
      *&v331 = 0;
      v330 = 0uLL;
      std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v330, &__src, __src.__r_.__value_.__r.__words + 4, 1uLL);
      if (v330)
      {
        *(&v330 + 1) = v330;
        operator delete(v330);
      }

      v147 = !v146;
      if (SHIBYTE(v333.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v333.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v147 = 0;
    }

    if (SBYTE7(v322) < 0)
    {
      operator delete(__p[0]);
    }

    if (v147)
    {
      return;
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "x");
    if (SBYTE7(v322) < 0)
    {
      operator delete(__p[0]);
    }

    if (v25)
    {
      v202 = (*(*v333.__r_.__value_.__l.__data_ + 40))(v333.__r_.__value_.__r.__words[0]);
      v203 = MIL::IRTensorValue::GetDataView<int>(v202);
      if (v204)
      {
        v205 = 4 * v204;
        v206 = 1;
        do
        {
          v207 = *v203++;
          v206 *= v207;
          v205 -= 4;
        }

        while (v205);
      }

      else
      {
        v206 = 1;
      }

      OutputType = MIL::Builder::OperationBuilder::GetOutputType(*a2, 0);
      MIL::IRValueType::AsTensorType(OutputType);
      LODWORD(__sz.__r_.__value_.__l.__data_) = v206;
      __p[1] = 0;
      *&v322 = 0;
      __p[0] = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(__p, &__sz, __sz.__r_.__value_.__r.__words + 4, 1uLL);
      MIL::IRTensorValueType::MakeInt32Value();
    }

LABEL_154:
    v71 = v333.__r_.__value_.__l.__size_;
    if (!v333.__r_.__value_.__l.__size_)
    {
      goto LABEL_452;
    }

    goto LABEL_302;
  }

LABEL_94:
  v47 = MIL::Builder::OperationBuilder::GetOperator(*a2);
  v48 = (*(*v47 + 16))(v47);
  MIL::ValueTypeInferenceUtils::GetOperatorType(v48, __p);
  if ((SBYTE7(v322) & 0x80000000) == 0)
  {
    if (SBYTE7(v322) != 7)
    {
      goto LABEL_124;
    }

    if (LODWORD(__p[0]) != 1752393074 || *(__p + 3) != 1701863784)
    {
      goto LABEL_124;
    }

LABEL_110:
    std::string::basic_string[abi:ne200100]<0>(__p, "shape");
    if (SBYTE7(v322) < 0)
    {
      operator delete(__p[0]);
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "x");
    if (SBYTE7(v322) < 0)
    {
      operator delete(__p[0]);
    }

    __p[0] = 0;
    __p[1] = 0;
    *&v322 = 0;
    {
      v52 = (*(*__src.__r_.__value_.__l.__data_ + 40))(__src.__r_.__value_.__r.__words[0]);
      v53 = MIL::IRTensorValue::GetDataView<int>(v52);
      if (!v54)
      {
        goto LABEL_304;
      }

      v55 = &v53[v54];
      v56 = 1;
      v57 = 1;
      do
      {
        while (1)
        {
          v58 = *v53;
          if (v58 > 0)
          {
            break;
          }

          if (v58 != -1)
          {
            goto LABEL_417;
          }

          v56 = 0;
          if (++v53 == v55)
          {
            goto LABEL_397;
          }
        }

        v57 *= v58;
        ++v53;
      }

      while (v53 != v55);
      if (v56)
      {
LABEL_304:
        v172 = 0;
LABEL_305:
        v173 = (*(*__src.__r_.__value_.__l.__data_ + 40))(__src.__r_.__value_.__r.__words[0]);
        v174 = MIL::IRTensorValue::GetDataView<int>(v173);
        if (!v175)
        {
LABEL_333:
          MIL::Builder::FunctionBuilder::GetContext(a1, &v333);
          v189 = MIL::Builder::OperationBuilder::GetOutput(*a2, 0);
          v190 = MIL::Builder::Variable::TryGetType(v189);
          v191 = (*(*v190 + 24))(v190);
          (*(*v191 + 88))(v191);
          MIL::IRTensorValueType::MakeWithShape();
        }

        v176 = v174;
        v177 = 4 * v175;
        while (1)
        {
          v178 = *v176;
          if (v178 >= 1)
          {
            break;
          }

          if (v178 == -1)
          {
            MIL::Builder::FunctionBuilder::GetContext(a1, &v333);
            v179 = MIL::IRConstantDimension::Make(v333.__r_.__value_.__l.__data_, v172);
            v180 = __p[1];
            if (__p[1] >= v322)
            {
              v182 = (__p[1] - __p[0]) >> 3;
              if ((v182 + 1) >> 61)
              {
                std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
              }

              v183 = (v322 - __p[0]) >> 2;
              if (v183 <= v182 + 1)
              {
                v183 = v182 + 1;
              }

              if (v322 - __p[0] >= 0x7FFFFFFFFFFFFFF8)
              {
                v184 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v184 = v183;
              }

              if (v184)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<std::string const*>>(__p, v184);
              }

LABEL_328:
              v186 = 8 * v184;
              *(8 * v182) = v179;
              v181 = (8 * v182 + 8);
              v187 = (8 * v182 - (__p[1] - __p[0]));
              memcpy(v187, __p[0], __p[1] - __p[0]);
              v188 = __p[0];
              __p[0] = v187;
              __p[1] = v181;
              *&v322 = v186;
              if (v188)
              {
                operator delete(v188);
              }

LABEL_330:
              __p[1] = v181;
              if (v333.__r_.__value_.__l.__size_)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v333.__r_.__value_.__l.__size_);
              }

              goto LABEL_332;
            }

LABEL_309:
            *v180 = v179;
            v181 = v180 + 1;
            goto LABEL_330;
          }

LABEL_332:
          ++v176;
          v177 -= 4;
          if (!v177)
          {
            goto LABEL_333;
          }
        }

        MIL::Builder::FunctionBuilder::GetContext(a1, &v333);
        v179 = MIL::IRConstantDimension::Make(v333.__r_.__value_.__l.__data_, v178);
        v180 = __p[1];
        if (__p[1] >= v322)
        {
          v182 = (__p[1] - __p[0]) >> 3;
          if ((v182 + 1) >> 61)
          {
            std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
          }

          v185 = (v322 - __p[0]) >> 2;
          if (v185 <= v182 + 1)
          {
            v185 = v182 + 1;
          }

          if (v322 - __p[0] >= 0x7FFFFFFFFFFFFFF8)
          {
            v184 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v184 = v185;
          }

          if (v184)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<std::string const*>>(__p, v184);
          }

          goto LABEL_328;
        }

        goto LABEL_309;
      }

LABEL_397:
      v237 = *a2;
      std::string::basic_string[abi:ne200100]<0>(&v333, "x");
      v238 = MIL::Builder::OperationBuilder::GetArgumentForParameter(v237, &v333, 0);
      v239 = MIL::Builder::Variable::GetName(v238);
      if (std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, v239))
      {
        v240 = *a2;
        std::string::basic_string[abi:ne200100]<0>(&v330, "x");
        v241 = MIL::Builder::OperationBuilder::GetArgumentForParameter(v240, &v330, 0);
        v328 = MIL::Builder::Variable::GetName(v241);
        v242 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRTypedArgument>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRTypedArgument>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRTypedArgument>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRTypedArgument>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a3, v328)[5] != 0;
        if (SBYTE7(v331) < 0)
        {
          operator delete(v330);
        }
      }

      else
      {
        v242 = 0;
      }

      if (SHIBYTE(v333.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v333.__r_.__value_.__l.__data_);
      }

      if (v242)
      {
        v252 = *a2;
        std::string::basic_string[abi:ne200100]<0>(&v333, "x");
        v253 = MIL::Builder::OperationBuilder::GetArgumentForParameter(v252, &v333, 0);
        *&v330 = MIL::Builder::Variable::GetName(v253);
        v254 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRTypedArgument>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRTypedArgument>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRTypedArgument>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRTypedArgument>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a3, v330);
        ValueType = MIL::IRTypedArgument::GetValueType(v254[5]);
        v256 = MIL::IRValueType::AsTensorType(ValueType);
        if (SHIBYTE(v333.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v333.__r_.__value_.__l.__data_);
        }

        v257 = (*(*v256 + 96))(v256);
        if (!MIL::ValueTypeInferenceUtils::ShapeHasUnknownDims(v257))
        {
          v172 = (*(*v256 + 16))(v256) / v57;
          goto LABEL_305;
        }
      }

LABEL_417:
      v201 = 0;
      v25 = 0;
    }

    else
    {
      {
        v192 = (*(*__src.__r_.__value_.__l.__data_ + 32))(__src.__r_.__value_.__r.__words[0]);
        if ((*(*v192 + 16))(v192) == 1)
        {
          v193 = (*(*__sz.__r_.__value_.__l.__data_ + 40))(__sz.__r_.__value_.__r.__words[0]);
          MIL::IRTensorValue::GetDataView<int>(v193);
          if (v194 <= 0xA)
          {
            v195 = (*(*__sz.__r_.__value_.__l.__data_ + 40))(__sz.__r_.__value_.__r.__words[0]);
            v196 = MIL::IRTensorValue::GetDataView<int>(v195);
            v197 = (*(*__sz.__r_.__value_.__l.__data_ + 40))(__sz.__r_.__value_.__r.__words[0]);
            v198 = MIL::IRTensorValue::GetDataView<int>(v197);
            memset(&v333, 0, sizeof(v333));
            std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v333, v196, v198 + 4 * v199, (v198 + 4 * v199 - v196) >> 2);
            MIL::Builder::FunctionBuilder::GetContext(a1, &v328);
            v200 = v328;
            v337 = (v333.__r_.__value_.__l.__size_ - v333.__r_.__value_.__r.__words[0]) >> 2;
            *&v331 = 0;
            v330 = 0uLL;
            std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v330, &v337, v338, 1uLL);
            MIL::IRTensorValueType::Make(v200, 11, &v330);
          }
        }
      }

      v25 = 0;
      v201 = 1;
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (__sz.__r_.__value_.__l.__size_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](__sz.__r_.__value_.__l.__size_);
    }

    if (__src.__r_.__value_.__l.__size_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](__src.__r_.__value_.__l.__size_);
    }

    if (v201)
    {
      goto LABEL_452;
    }

    return;
  }

  if (__p[1] != 7)
  {
    operator delete(__p[0]);
    goto LABEL_124;
  }

  v51 = *__p[0] != 1752393074 || *(__p[0] + 3) != 1701863784;
  operator delete(__p[0]);
  if (!v51)
  {
    goto LABEL_110;
  }

LABEL_124:
  v59 = MIL::Builder::OperationBuilder::GetOperator(*a2);
  v60 = (*(*v59 + 16))(v59);
  MIL::ValueTypeInferenceUtils::GetOperatorType(v60, __p);
  if ((SBYTE7(v322) & 0x80000000) == 0)
  {
    if (SBYTE7(v322) != 14)
    {
      goto LABEL_161;
    }

    if (__p[0] != 0x79625F6563696C73 || *(__p + 6) != 0x7865646E695F7962)
    {
      goto LABEL_161;
    }

LABEL_140:
    std::string::basic_string[abi:ne200100]<0>(__p, "begin");
    if (SBYTE7(v322) < 0)
    {
      operator delete(__p[0]);
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "end");
    if (SBYTE7(v322) < 0)
    {
      operator delete(__p[0]);
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "x");
    if (SBYTE7(v322) < 0)
    {
      operator delete(__p[0]);
    }

    MIL::Builder::OperationBuilder::GetParameterNames(*a2, __p);
    std::string::basic_string[abi:ne200100]<0>(&v333, "squeeze_mask");
    v64 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>(__p, &v333.__r_.__value_.__l.__data_);
    if (SHIBYTE(v333.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v333.__r_.__value_.__l.__data_);
    }

    if (v64)
    {
      v65 = std::string::basic_string[abi:ne200100]<0>(&v333, "squeeze_mask");
      if (SHIBYTE(v333.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v333.__r_.__value_.__l.__data_);
      }

      v66 = (*(*v330 + 40))(v330);
      v67 = *MIL::IRTensorValue::GetDataView<BOOL>(v66);
      if (*(&v330 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v330 + 1));
      }
    }

    else
    {
      v67 = 0;
    }

    {
      {
        {
          v168 = (*(*v328 + 40))(v328);
          v169 = (*(*v168 + 32))(v168);
          if (MIL::IRTensorValueType::Rank(v169) == 1)
          {
            if (v67)
            {
              v170 = (*(*__src.__r_.__value_.__l.__data_ + 40))(__src.__r_.__value_.__r.__words[0]);
              MIL::IRTensorValue::GetDataView<int>(v170);
              v171 = (*(*v328 + 40))(v328);
              MIL::IRTensorValue::GetDataView<int>(v171);
              MIL::Builder::FunctionBuilder::GetContext(a1, &v333);
              MIL::IRTensorValueType::MakeScalar();
            }

            memset(&v333, 0, sizeof(v333));
            v259 = (*(*__src.__r_.__value_.__l.__data_ + 40))(__src.__r_.__value_.__r.__words[0]);
            v260 = *MIL::IRTensorValue::GetDataView<int>(v259);
            for (j = 4 * v260; ; j += 4)
            {
              v262 = (*(*__sz.__r_.__value_.__l.__data_ + 40))(__sz.__r_.__value_.__r.__words[0]);
              if (v260 >= *MIL::IRTensorValue::GetDataView<int>(v262))
              {
                break;
              }

              v263 = (*(*v328 + 40))(v328);
              v264 = MIL::IRTensorValue::GetDataView<int>(v263);
              std::vector<int>::push_back[abi:ne200100](&v333.__r_.__value_.__l.__data_, (v264 + j));
              ++v260;
            }

            MIL::Builder::FunctionBuilder::GetContext(a1, &p_sz);
            v265 = p_sz;
            v334 = (v333.__r_.__value_.__l.__size_ - v333.__r_.__value_.__r.__words[0]) >> 2;
            *&v331 = 0;
            v330 = 0uLL;
            std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v330, &v334, &p_sz, 1uLL);
            MIL::IRTensorValueType::Make(v265, 11, &v330);
          }
        }
      }
    }

    v25 = 0;
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(__p);
    if (v329)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v329);
    }

    if (__sz.__r_.__value_.__l.__size_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](__sz.__r_.__value_.__l.__size_);
    }

    v71 = __src.__r_.__value_.__l.__size_;
    if (!__src.__r_.__value_.__l.__size_)
    {
      goto LABEL_452;
    }

LABEL_302:
    std::__shared_weak_count::__release_shared[abi:ne200100](v71);
    goto LABEL_452;
  }

  if (__p[1] == 14)
  {
    v63 = *__p[0] != 0x79625F6563696C73 || *(__p[0] + 6) != 0x7865646E695F7962;
    operator delete(__p[0]);
    if (v63)
    {
      goto LABEL_161;
    }

    goto LABEL_140;
  }

  operator delete(__p[0]);
LABEL_161:
  v76 = MIL::Builder::OperationBuilder::GetOperator(*a2);
  v77 = (*(*v76 + 16))(v76);
  MIL::ValueTypeInferenceUtils::GetOperatorType(v77, __p);
  v78 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, "slice_by_size");
  v79 = v78;
  if (SBYTE7(v322) < 0)
  {
    operator delete(__p[0]);
    if (v79)
    {
LABEL_163:
      std::string::basic_string[abi:ne200100]<0>(__p, "begin");
      if (SBYTE7(v322) < 0)
      {
        operator delete(__p[0]);
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "size");
      if (SBYTE7(v322) < 0)
      {
        operator delete(__p[0]);
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "x");
      if (SBYTE7(v322) < 0)
      {
        operator delete(__p[0]);
      }

      {
        __p[0] = 0;
        __p[1] = 0;
        *&v322 = 0;
        v80 = (*(*v330 + 40))(v330);
        v81 = *MIL::IRTensorValue::GetDataView<int>(v80);
        v82 = (*(*__src.__r_.__value_.__l.__data_ + 40))(__src.__r_.__value_.__r.__words[0]);
        v83 = *MIL::IRTensorValue::GetDataView<int>(v82);
        v84 = (*(*__sz.__r_.__value_.__l.__data_ + 40))(__sz.__r_.__value_.__r.__words[0]);
        MIL::IRTensorValue::GetDataView<int>(v84);
        v86 = v83 + v81;
        if (v83 == -1)
        {
          v86 = v85;
        }

        if (v86 > v81)
        {
          v87 = 4 * v81;
          v88 = v86 - v81;
          do
          {
            v89 = (*(*__sz.__r_.__value_.__l.__data_ + 40))(__sz.__r_.__value_.__r.__words[0]);
            v90 = MIL::IRTensorValue::GetDataView<int>(v89);
            std::vector<int>::push_back[abi:ne200100](__p, (v90 + v87));
            v87 += 4;
            --v88;
          }

          while (v88);
        }

        MIL::Builder::FunctionBuilder::GetContext(a1, &v328);
        v91 = v328;
        v337 = (__p[1] - __p[0]) >> 2;
        memset(&v333, 0, sizeof(v333));
        std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v333, &v337, v338, 1uLL);
        MIL::IRTensorValueType::Make(v91, 11, &v333);
      }

      v25 = 0;
      if (__sz.__r_.__value_.__l.__size_)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](__sz.__r_.__value_.__l.__size_);
      }

      if (__src.__r_.__value_.__l.__size_)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](__src.__r_.__value_.__l.__size_);
      }

      v71 = *(&v330 + 1);
      if (!*(&v330 + 1))
      {
        goto LABEL_452;
      }

      goto LABEL_302;
    }
  }

  else if (v78)
  {
    goto LABEL_163;
  }

  v92 = MIL::Builder::OperationBuilder::GetOperator(*a2);
  v93 = (*(*v92 + 16))(v92);
  MIL::ValueTypeInferenceUtils::GetOperatorType(v93, __p);
  v94 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, "range_1d");
  v95 = v94;
  if (SBYTE7(v322) < 0)
  {
    operator delete(__p[0]);
    if (v95)
    {
LABEL_187:
      std::string::basic_string[abi:ne200100]<0>(__p, "step");
      v96 = *a2;
      LODWORD(v330) = 1;
      memset(&v333, 0, sizeof(v333));
      std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v333, &v330, &v330 + 4, 1uLL);
      if (v333.__r_.__value_.__r.__words[0])
      {
        v333.__r_.__value_.__l.__size_ = v333.__r_.__value_.__r.__words[0];
        operator delete(v333.__r_.__value_.__l.__data_);
      }

      if (SBYTE7(v322) < 0)
      {
        operator delete(__p[0]);
      }

      if (!v97)
      {
        return;
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "start");
      if (SBYTE7(v322) < 0)
      {
        operator delete(__p[0]);
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "end");
      if (SBYTE7(v322) < 0)
      {
        operator delete(__p[0]);
      }

      {
        v98 = (*(*v330 + 40))(v330);
        v99 = *MIL::IRTensorValue::GetDataView<int>(v98);
        v100 = (*(*v333.__r_.__value_.__l.__data_ + 40))(v333.__r_.__value_.__r.__words[0]);
        v101 = *MIL::IRTensorValue::GetDataView<int>(v100);
        __p[0] = 0;
        __p[1] = 0;
        *&v322 = 0;
        MIL::Builder::FunctionBuilder::GetContext(a1, &__src);
        __sz.__r_.__value_.__r.__words[0] = MIL::IRConstantDimension::Make(__src.__r_.__value_.__l.__data_, (v99 - v101));
        std::vector<MIL::IRDimension const*>::emplace_back<MIL::IRConstantDimension const*>(__p, &__sz);
        if (__src.__r_.__value_.__l.__size_)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](__src.__r_.__value_.__l.__size_);
        }

        MIL::Builder::FunctionBuilder::GetContext(a1, &__src);
        v102 = MIL::Builder::OperationBuilder::GetOutput(*a2, 0);
        v103 = MIL::Builder::Variable::TryGetType(v102);
        v104 = (*(*v103 + 24))(v103);
        (*(*v104 + 88))(v104);
        MIL::IRTensorValueType::MakeWithShape();
      }

      if (*(&v330 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v330 + 1));
      }

      v105 = v333.__r_.__value_.__l.__size_;
      if (!v333.__r_.__value_.__l.__size_)
      {
        return;
      }

LABEL_223:
      std::__shared_weak_count::__release_shared[abi:ne200100](v105);
      return;
    }
  }

  else if (v94)
  {
    goto LABEL_187;
  }

  v110 = MIL::Builder::OperationBuilder::GetOperator(*a2);
  v111 = (*(*v110 + 16))(v110);
  MIL::ValueTypeInferenceUtils::GetOperatorType(v111, __p);
  v112 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, "const");
  if (SBYTE7(v322) < 0)
  {
    operator delete(__p[0]);
  }

  if (v112)
  {
    v113 = MIL::Builder::OperationBuilder::GetOutput(*a2, 0);
    MIL::Builder::Variable::TryGetValueSharedPtr(v113, __p);
    v333.__r_.__value_.__r.__words[0] = MIL::Builder::OperationBuilder::GetOutputName(*a2, 0);
    v114 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a4, v333.__r_.__value_.__l.__data_);
    v115 = *__p;
    __p[0] = 0;
    __p[1] = 0;
    v116 = v114[6];
    *(v114 + 5) = v115;
    if (!v116)
    {
      return;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v116);
    v105 = __p[1];
    if (!__p[1])
    {
      return;
    }

    goto LABEL_223;
  }

  v158 = MIL::Builder::OperationBuilder::GetOperator(*a2);
  v159 = (*(*v158 + 16))(v158);
  MIL::ValueTypeInferenceUtils::GetOperatorType(v159, __p);
  v160 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, "shape");
  if (SBYTE7(v322) < 0)
  {
    operator delete(__p[0]);
  }

  v161 = *a2;
  if (v160)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "x");
    v162 = MIL::Builder::OperationBuilder::GetArgumentForParameter(v161, __p, 0);
    v163 = MIL::Builder::Variable::GetName(v162);
    if (SBYTE7(v322) < 0)
    {
      operator delete(__p[0]);
    }

    if (std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, v163) && (__p[0] = v163, v164 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRTypedArgument>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRTypedArgument>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRTypedArgument>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRTypedArgument>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a3, v163), v165 = MIL::IRTypedArgument::GetValueType(v164[5]), (*(*v165 + 24))(v165)))
    {
      __p[0] = v163;
      v166 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRTypedArgument>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRTypedArgument>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRTypedArgument>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRTypedArgument>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a3, v163);
      v167 = MIL::IRTypedArgument::GetValueType(v166[5]);
    }

    else
    {
      if (!std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a4, v163))
      {
        return;
      }

      __p[0] = v163;
      v243 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a4, v163);
      v244 = (*(*v243[5] + 32))(v243[5]);
      if (!(*(*v244 + 24))(v244))
      {
        return;
      }

      __p[0] = v163;
      v245 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a4, v163);
      v167 = (*(*v245[5] + 32))(v245[5]);
    }

    v246 = (*(*v167 + 24))(v167);
    if (v246)
    {
      v247 = (*(*v246 + 96))(v246);
      __p[0] = 0;
      __p[1] = 0;
      *&v322 = 0;
      std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(__p, *v247, v247[1], (v247[1] - *v247) >> 3);
      memset(&v333, 0, sizeof(v333));
      v248 = __p[0];
      v249 = __p[1];
      while (1)
      {
        if (v248 == v249)
        {
          MIL::Builder::FunctionBuilder::GetContext(a1, &__src);
          v251 = __src.__r_.__value_.__r.__words[0];
          p_sz = (__p[1] - __p[0]) >> 3;
          *&v331 = 0;
          v330 = 0uLL;
          std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v330, &p_sz, &v336, 1uLL);
          MIL::IRTensorValueType::Make(v251, 11, &v330);
        }

        if (!(*(**v248 + 16))(*v248))
        {
          break;
        }

        v250 = MIL::IRDimension::AsConstant(*v248);
        LODWORD(v330) = (*(*v250 + 48))(v250);
        std::vector<int>::emplace_back<int>(&v333.__r_.__value_.__l.__data_, &v330);
        ++v248;
      }

      if (v333.__r_.__value_.__r.__words[0])
      {
        v333.__r_.__value_.__l.__size_ = v333.__r_.__value_.__r.__words[0];
        operator delete(v333.__r_.__value_.__l.__data_);
      }

      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }
    }
  }

  else
  {
    v208 = MIL::Builder::OperationBuilder::GetOperator(*a2);
    if ((*(*v208 + 224))(v208))
    {
      MIL::Builder::OperationBuilder::GetParameterNames(*a2, &v333);
      v330 = 0u;
      v331 = 0u;
      v332 = 1065353216;
      v209 = v333.__r_.__value_.__r.__words[2];
      if (v333.__r_.__value_.__r.__words[2])
      {
        while (1)
        {
          memset(&__src, 0, sizeof(__src));
          v210 = MIL::Builder::OperationBuilder::GetNumArguments(*a2, v209 + 2);
          if (v210)
          {
            v211 = 0;
            v212 = 1;
            do
            {
              v213 = __sz.__r_.__value_.__r.__words[0];
              if (__sz.__r_.__value_.__r.__words[0])
              {
                v214 = __src.__r_.__value_.__l.__size_;
                if (__src.__r_.__value_.__l.__size_ >= __src.__r_.__value_.__r.__words[2])
                {
                  v217 = (__src.__r_.__value_.__l.__size_ - __src.__r_.__value_.__r.__words[0]) >> 4;
                  v218 = v217 + 1;
                  if ((v217 + 1) >> 60)
                  {
                    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
                  }

                  v219 = __src.__r_.__value_.__r.__words[2] - __src.__r_.__value_.__r.__words[0];
                  if ((__src.__r_.__value_.__r.__words[2] - __src.__r_.__value_.__r.__words[0]) >> 3 > v218)
                  {
                    v218 = v219 >> 3;
                  }

                  if (v219 >= 0x7FFFFFFFFFFFFFF0)
                  {
                    v220 = 0xFFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v220 = v218;
                  }

                  v323 = &__src;
                  if (v220)
                  {
                    std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<MIL::Validation::Constraints const>>>(&__src, v220);
                  }

                  v221 = (16 * v217);
                  *v221 = __sz.__r_.__value_.__r.__words[0];
                  v222 = __sz.__r_.__value_.__l.__size_;
                  v221[1] = __sz.__r_.__value_.__l.__size_;
                  if (v222)
                  {
                    atomic_fetch_add_explicit((v222 + 8), 1uLL, memory_order_relaxed);
                  }

                  v216 = (v221 + 2);
                  v223 = v221 - (__src.__r_.__value_.__l.__size_ - __src.__r_.__value_.__r.__words[0]);
                  memcpy(v223, __src.__r_.__value_.__l.__data_, __src.__r_.__value_.__l.__size_ - __src.__r_.__value_.__r.__words[0]);
                  v224 = __src.__r_.__value_.__r.__words[0];
                  v225 = __src.__r_.__value_.__r.__words[2];
                  __src.__r_.__value_.__r.__words[0] = v223;
                  *&__src.__r_.__value_.__r.__words[1] = v216;
                  *&v322 = v224;
                  *(&v322 + 1) = v225;
                  __p[0] = v224;
                  __p[1] = v224;
                  std::__split_buffer<std::shared_ptr<MIL::IRBlock>>::~__split_buffer(__p);
                }

                else
                {
                  *__src.__r_.__value_.__l.__size_ = __sz.__r_.__value_.__r.__words[0];
                  v215 = __sz.__r_.__value_.__l.__size_;
                  *(v214 + 8) = __sz.__r_.__value_.__l.__size_;
                  if (v215)
                  {
                    atomic_fetch_add_explicit((v215 + 8), 1uLL, memory_order_relaxed);
                  }

                  v216 = v214 + 16;
                }

                __src.__r_.__value_.__l.__size_ = v216;
              }

              else
              {
                v211 = 1;
              }

              if (__sz.__r_.__value_.__l.__size_)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](__sz.__r_.__value_.__l.__size_);
              }

              if (!v213)
              {
                break;
              }

              v226 = v212++;
            }

            while (v210 > v226);
            if (v211)
            {
              break;
            }
          }

          __p[0] = v209 + 2;
          v227 = std::__hash_table<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRValue const>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRValue const>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRValue const>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRValue const>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v330, v209 + 2);
          std::vector<std::shared_ptr<MIL::IRNamedValueType>>::__vdeallocate(v227 + 5);
          *(v227 + 5) = __src;
          memset(&__src, 0, sizeof(__src));
          __p[0] = &__src;
          std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](__p);
          v209 = *v209;
          if (!v209)
          {
            goto LABEL_386;
          }
        }

        __p[0] = &__src;
        std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](__p);
        v25 = 0;
      }

      else
      {
LABEL_386:
        v228 = MIL::Builder::OperationBuilder::GetOperator(*a2);
        MIL::Builder::FunctionBuilder::GetContext(a1, &v328);
        LocationPtr = MIL::Builder::OperationBuilder::GetLocationPtr(*a2);
        v230 = LocationPtr[1];
        v325 = *LocationPtr;
        v326 = v230;
        if (v230)
        {
          atomic_fetch_add_explicit(&v230->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        *__p = 0u;
        v322 = 0u;
        LODWORD(v323) = 1065353216;
        memset(&__sz, 0, sizeof(__sz));
        (*(*v228 + 208))(&__src, v228, &v328, &v325, &v330, __p, &__sz, 0xFFFFFFFFLL);
        p_sz = &__sz;
        std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](&p_sz);
        std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(__p);
        if (v326)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v326);
        }

        if (v329)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v329);
        }

        NumOutputs = MIL::Builder::OperationBuilder::GetNumOutputs(*a2);
        v232 = NumOutputs;
        if (NumOutputs != (__src.__r_.__value_.__l.__size_ - __src.__r_.__value_.__r.__words[0]) >> 4)
        {
          std::ostringstream::basic_ostringstream[abi:ne200100](__p);
          v309 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Output count does not match: ", 29);
          OutputName = MIL::Builder::OperationBuilder::GetOutputName(*a2, 0);
          v311 = *(OutputName + 23);
          if (v311 >= 0)
          {
            v312 = OutputName;
          }

          else
          {
            v312 = *OutputName;
          }

          if (v311 >= 0)
          {
            v313 = *(OutputName + 23);
          }

          else
          {
            v313 = *(OutputName + 8);
          }

          v314 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v309, v312, v313);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v314, ".", 1);
          exception = __cxa_allocate_exception(0x10uLL);
          std::stringbuf::str();
          std::logic_error::logic_error(exception, &__sz);
          exception->__vftable = (MEMORY[0x277D828F8] + 16);
          __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
        }

        if (NumOutputs)
        {
          v233 = 0;
          v234 = 0;
          do
          {
            v235 = __src.__r_.__value_.__r.__words[0];
            __sz.__r_.__value_.__r.__words[0] = MIL::Builder::OperationBuilder::GetOutputName(*a2, v234);
            v236 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a4, __sz.__r_.__value_.__l.__data_);
            std::shared_ptr<MIL::Location const>::operator=[abi:ne200100](v236 + 5, (v235 + v233));
            ++v234;
            v233 += 16;
          }

          while (v232 != v234);
        }

        __p[0] = &__src;
        std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](__p);
        v25 = 1;
      }

      std::__hash_table<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>>>::~__hash_table(&v330);
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&v333);
      goto LABEL_452;
    }
  }
}

void sub_218119020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, void *a62, uint64_t a63)
{
  if (SLOBYTE(STACK[0x307]) < 0)
  {
    operator delete(STACK[0x2F0]);
    if ((v70 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a69);
      a69 = &STACK[0x320];
      std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](&a69);
      std::__hash_table<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>>>::~__hash_table(v71 - 224);
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v71 - 176);
      _Unwind_Resume(a1);
    }
  }

  else if (!v70)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v69);
  goto LABEL_6;
}

void anonymous namespace::GetValueHelper(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  ArgumentForParameter = MIL::Builder::OperationBuilder::GetArgumentForParameter(a2, a1, 0);
  Value = MIL::Builder::Variable::TryGetValue(ArgumentForParameter);
  v10 = MIL::Builder::OperationBuilder::GetArgumentForParameter(a2, a1, 0);
  if (Value)
  {

    MIL::Builder::Variable::TryGetValueSharedPtr(v10, a4);
  }

  else
  {
    Name = MIL::Builder::Variable::GetName(v10);
    if (std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, Name))
    {
      v12 = MIL::Builder::OperationBuilder::GetArgumentForParameter(a2, a1, 0);
      v13 = MIL::Builder::Variable::GetName(v12);
      v14 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, v13);
      if (!v14)
      {
        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      v15 = v14[6];
      *a4 = v14[5];
      a4[1] = v15;
      if (v15)
      {
        atomic_fetch_add_explicit(v15 + 1, 1uLL, memory_order_relaxed);
      }
    }

    else
    {
      *a4 = 0;
      a4[1] = 0;
    }
  }
}

uint64_t anonymous namespace::VerifyInt32TensorType(uint64_t *a1)
{
  result = *a1;
  if (result)
  {
    result = (*(*result + 40))(result);
    if (result)
    {
      v3 = (*(**a1 + 40))();
      v4 = (*(*v3 + 32))(v3);
      return (*(*v4 + 88))(v4) == 11;
    }
  }

  return result;
}

uint64_t std::vector<MIL::IRDimension const*>::emplace_back<MIL::IRConstantDimension const*>(uint64_t a1, void *a2)
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
  return v6 - 8;
}

BOOL anonymous namespace::VerifyInt32TensorValue(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  {
    v7 = 0;
    do
    {
      v8 = (*(*v15 + 40))(v15);
      MIL::IRTensorValue::GetDataView<int>(v8);
      v10 = v7 >= v9;
      if (v7 >= v9)
      {
        break;
      }

      v11 = *(*a4 + 4 * v7);
      v12 = (*(*v15 + 40))(v15);
      v13 = *(MIL::IRTensorValue::GetDataView<int>(v12) + 4 * v7++);
    }

    while (v11 == v13);
  }

  else
  {
    v10 = 0;
  }

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  return v10;
}

void sub_218119F90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::ValueTypeInferenceUtils::OpOutputsContainsUnknownShape(MIL::Builder::OperationBuilder::OperationBuilderImpl ***a1, void *a2)
{
  MIL::Builder::OperationBuilder::GetOutputs(*a1, &__p);
  v3 = __p;
  if (v31 == __p)
  {
    v28 = 0;
    if (__p)
    {
      goto LABEL_23;
    }

    return v28;
  }

  v4 = 0;
  while (1)
  {
    Name = MIL::Builder::Variable::GetName(v3[v4]);
    v32 = Name;
    v6 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRTypedArgument>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRTypedArgument>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRTypedArgument>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRTypedArgument>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a2, Name);
    if (!MIL::IRTypedArgument::TryGetValueType(v6[5]))
    {
      goto LABEL_19;
    }

    v32 = Name;
    v7 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRTypedArgument>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRTypedArgument>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRTypedArgument>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRTypedArgument>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a2, Name);
    ValueType = MIL::IRTypedArgument::TryGetValueType(v7[5]);
    if ((*(*ValueType + 32))(ValueType))
    {
      break;
    }

    v32 = Name;
    v20 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRTypedArgument>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRTypedArgument>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRTypedArgument>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRTypedArgument>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a2, Name);
    v21 = MIL::IRTypedArgument::TryGetValueType(v20[5]);
    if ((*(*v21 + 24))(v21))
    {
      v32 = Name;
      v22 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRTypedArgument>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRTypedArgument>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRTypedArgument>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRTypedArgument>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a2, Name);
      v23 = MIL::IRTypedArgument::TryGetValueType(v22[5]);
      v24 = (*(*v23 + 24))(v23);
      if (((*(*v24 + 104))(v24) & 1) == 0)
      {
        goto LABEL_21;
      }

      v25 = (*(*v24 + 96))(v24);
      v26 = *v25;
      v27 = v25[1];
      while (v26 != v27)
      {
        if ((*(**v26 + 24))())
        {
          goto LABEL_21;
        }

        v26 += 8;
      }
    }

LABEL_19:
    ++v4;
    v3 = __p;
    if (v4 >= (v31 - __p) >> 3)
    {
      v28 = 0;
      goto LABEL_22;
    }
  }

  v32 = Name;
  v9 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRTypedArgument>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRTypedArgument>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRTypedArgument>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRTypedArgument>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a2, Name);
  v10 = MIL::IRTypedArgument::TryGetValueType(v9[5]);
  v11 = (*(*v10 + 32))(v10);
  v12 = (*(*v11 + 64))(v11);
  v13 = (*(*v11 + 72))(v11);
  if (!(*(*v13 + 24))(v13))
  {
    v14 = (*(*v11 + 72))(v11);
    if (((*(*v14 + 32))(v14) & 1) == 0)
    {
      if ((*(*v12 + 24))(v12))
      {
        v15 = (*(*v12 + 24))(v12);
        if (!(*(*v15 + 104))(v15))
        {
          goto LABEL_21;
        }

        v16 = (*(*v12 + 24))(v12);
        v17 = (*(*v16 + 96))(v16);
        v18 = *v17;
        v19 = v17[1];
        while (v18 != v19)
        {
          if ((*(**v18 + 24))())
          {
            goto LABEL_21;
          }

          v18 += 8;
        }
      }

      goto LABEL_19;
    }
  }

LABEL_21:
  v28 = 1;
LABEL_22:
  v3 = __p;
  if (__p)
  {
LABEL_23:
    v31 = v3;
    operator delete(v3);
  }

  return v28;
}

void sub_21811A414(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<MIL::IRValueType const*>::vector[abi:ne200100](void *result, unint64_t a2)
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

void sub_21811A4A8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<std::__wrap_iter<MIL::IRDimension const* const*>,std::__wrap_iter<MIL::IRDimension const* const*>>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<MIL::IRDimension const*>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_21811A51C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

char *std::vector<MIL::IRDimension const*>::__insert_with_size[abi:ne200100]<std::__wrap_iter<MIL::IRDimension const* const*>,std::__wrap_iter<MIL::IRDimension const* const*>>(void *a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = a1[1];
  v9 = a1[2];
  if (a5 > (v9 - v10) >> 3)
  {
    v11 = *a1;
    v12 = a5 + (&v10[-*a1] >> 3);
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
    memcpy((v33 + 8 * a5), v5, a1[1] - v5);
    v37 = *a1;
    v38 = v33 + 8 * a5 + a1[1] - v5;
    a1[1] = v5;
    v39 = v5 - v37;
    v40 = (v33 - (v5 - v37));
    memcpy(v40, v37, v39);
    v41 = *a1;
    *a1 = v40;
    a1[1] = v38;
    a1[2] = 0;
    if (v41)
    {
      operator delete(v41);
    }

    return (8 * v16);
  }

  v17 = (v10 - __dst) >> 3;
  if (v17 >= a5)
  {
    v22 = &__dst[8 * a5];
    v23 = &v10[-8 * a5];
    v24 = a1[1];
    while (v23 < v10)
    {
      v25 = *v23;
      v23 += 8;
      *v24++ = v25;
    }

    a1[1] = v24;
    if (v10 != v22)
    {
      memmove(&__dst[8 * a5], __dst, v10 - v22);
    }

    v30 = 8 * a5;
    v31 = v5;
    v32 = v7;
    goto LABEL_34;
  }

  v18 = &__src[v10 - __dst];
  v19 = a1[1];
  v20 = v19;
  while (v18 != a4)
  {
    v21 = *v18;
    v18 += 8;
    *v20 = v21;
    v20 += 8;
    v19 += 8;
  }

  a1[1] = v19;
  if (v17 >= 1)
  {
    v26 = &__dst[8 * a5];
    v27 = &v19[-8 * a5];
    v28 = v19;
    while (v27 < v10)
    {
      v29 = *v27;
      v27 += 8;
      *v28 = v29;
      v28 += 8;
    }

    a1[1] = v28;
    if (v20 != v26)
    {
      memmove(&__dst[8 * a5], __dst, v19 - v26);
    }

    if (v10 != v5)
    {
      v31 = v5;
      v32 = v7;
      v30 = v10 - v5;
LABEL_34:
      memmove(v31, v32, v30);
    }
  }

  return v5;
}

void sub_21811A7F4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::__split_buffer<MIL::IRDimension const*>::emplace_back<MIL::IRDimension const*>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<std::string const*>>(result[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

uint64_t std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<std::__wrap_iter<MIL::IRDimension const**>,std::__wrap_iter<MIL::IRDimension const**>>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<MIL::IRDimension const*>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_21811A978(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<std::vector<MIL::IRDimension const*>>::__init_with_size[abi:ne200100]<std::vector<MIL::IRDimension const*> const*,std::vector<MIL::IRDimension const*> const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::vector<float>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_21811A9FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::vector<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<MIL::IRDimension const*>>,std::vector<MIL::IRDimension const*> const*,std::vector<MIL::IRDimension const*> const*,std::vector<MIL::IRDimension const*>*>(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(v4, *v6, v6[1], (v6[1] - *v6) >> 3);
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<MIL::IRDimension const*>>,std::vector<MIL::IRDimension const*>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<MIL::IRDimension const*>>,std::vector<MIL::IRDimension const*>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<float>>,std::vector<float>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

_DWORD *std::vector<int>::emplace_back<int>(const void **a1, _DWORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
  return v6 - 1;
}

uint64_t MIL::Operators::Common::Shared::MatchesExpectedShape(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = a1[1];
  if (a3 != (v4 - *a1) >> 3)
  {
    return 0;
  }

  if (v4 == v3)
  {
    return 1;
  }

  v7 = 0;
  while (1)
  {
    result = (*(**(v3 + 8 * v7) + 16))(*(v3 + 8 * v7));
    if (!result)
    {
      break;
    }

    v9 = MIL::IRDimension::AsConstant(*(*a1 + 8 * v7));
    if ((*(*v9 + 48))(v9) != *(a2 + 4 * v7))
    {
      return 0;
    }

    ++v7;
    v3 = *a1;
    if (v7 >= (a1[1] - *a1) >> 3)
    {
      return 1;
    }
  }

  return result;
}

void MIL::Operators::Common::Shared::ValidateExistenceAndGetAttributeSharedPtr(MIL::IRObject *a1@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  MIL::IRObject::TryGetAttributeSharedPtr(a1, a2, &lpsrc);
  {
    size = lpsrc.__r_.__value_.__l.__size_;
    *a3 = v5;
    a3[1] = size;
    v7 = 0;
    if (size)
    {
      atomic_fetch_add_explicit((size + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    v7 = 1;
  }

  if (lpsrc.__r_.__value_.__l.__size_)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](lpsrc.__r_.__value_.__l.__size_);
  }

  if (v7)
  {
    exception = __cxa_allocate_exception(0x48uLL);
    LocationPtr = MIL::IRObject::GetLocationPtr(a1);
    v10 = LocationPtr[1];
    *&v23 = *LocationPtr;
    *(&v23 + 1) = v10;
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    }

    std::operator+<char>();
    v11 = std::string::append(&v19, " is undefined for ");
    v12 = *&v11->__r_.__value_.__l.__data_;
    lpsrc.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
    *&lpsrc.__r_.__value_.__l.__data_ = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    v13 = (*(*a1 + 56))(a1);
    v14 = *(v13 + 23);
    if (v14 >= 0)
    {
      v15 = v13;
    }

    else
    {
      v15 = *v13;
    }

    if (v14 >= 0)
    {
      v16 = *(v13 + 23);
    }

    else
    {
      v16 = *(v13 + 8);
    }

    v17 = std::string::append(&lpsrc, v15, v16);
    v18 = *&v17->__r_.__value_.__l.__data_;
    v22 = v17->__r_.__value_.__r.__words[2];
    v21 = v18;
    v17->__r_.__value_.__l.__size_ = 0;
    v17->__r_.__value_.__r.__words[2] = 0;
    v17->__r_.__value_.__r.__words[0] = 0;
    MIL::ValidationError::ValidationError(exception, &v23, &v21, 321);
  }
}

void sub_21811AEA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
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
  }

  v33 = *(v31 - 56);
  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
    if ((v29 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else if (!v29)
  {
LABEL_12:
    if (v28)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v28);
    }

    _Unwind_Resume(exception_object);
  }

  __cxa_free_exception(v30);
  goto LABEL_12;
}

void MIL::Operators::Common::Shared::ValidateExistenceAndGetInputSharedPtr(MIL::IRObject *a1@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  MIL::IROperation::TryGetParameterValueSharedPtr(a1, a2, 0, &lpsrc);
  {
    size = lpsrc.__r_.__value_.__l.__size_;
    *a3 = v6;
    a3[1] = size;
    v8 = 0;
    if (size)
    {
      atomic_fetch_add_explicit((size + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    v8 = 1;
  }

  if (lpsrc.__r_.__value_.__l.__size_)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](lpsrc.__r_.__value_.__l.__size_);
  }

  if (v8)
  {
    v9 = a1;
    MIL::IRObject::TryGetAttributeSharedPtr(a1, a2, &lpsrc);
    v10 = lpsrc.__r_.__value_.__r.__words[0];
    if (lpsrc.__r_.__value_.__l.__size_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](lpsrc.__r_.__value_.__l.__size_);
    }

    exception = __cxa_allocate_exception(0x48uLL);
    if (!v10)
    {
      LocationPtr = MIL::IRObject::GetLocationPtr(v9);
      v13 = LocationPtr[1];
      *&v36 = *LocationPtr;
      *(&v36 + 1) = v13;
      if (v13)
      {
        atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
      }

      std::operator+<char>();
      v14 = std::string::append(&v38, " is undefined for ");
      v15 = *&v14->__r_.__value_.__l.__data_;
      lpsrc.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
      *&lpsrc.__r_.__value_.__l.__data_ = v15;
      v14->__r_.__value_.__l.__size_ = 0;
      v14->__r_.__value_.__r.__words[2] = 0;
      v14->__r_.__value_.__r.__words[0] = 0;
      v16 = (*(*v9 + 56))(v9);
      v17 = *(v16 + 23);
      if (v17 >= 0)
      {
        v18 = v16;
      }

      else
      {
        v18 = *v16;
      }

      if (v17 >= 0)
      {
        v19 = *(v16 + 23);
      }

      else
      {
        v19 = *(v16 + 8);
      }

      v20 = std::string::append(&lpsrc, v18, v19);
      v21 = *&v20->__r_.__value_.__l.__data_;
      v35 = v20->__r_.__value_.__r.__words[2];
      v34 = v21;
      v20->__r_.__value_.__l.__size_ = 0;
      v20->__r_.__value_.__r.__words[2] = 0;
      v20->__r_.__value_.__r.__words[0] = 0;
      MIL::ValidationError::ValidationError(exception, &v36, &v34, 305);
    }

    v22 = MIL::IRObject::GetLocationPtr(v9);
    v23 = v22[1];
    *&v42 = *v22;
    *(&v42 + 1) = v23;
    if (v23)
    {
      atomic_fetch_add_explicit((v23 + 8), 1uLL, memory_order_relaxed);
    }

    std::operator+<char>();
    v24 = std::string::append(&v37, " is undefined for ");
    v25 = *&v24->__r_.__value_.__l.__data_;
    v38.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
    *&v38.__r_.__value_.__l.__data_ = v25;
    v24->__r_.__value_.__l.__size_ = 0;
    v24->__r_.__value_.__r.__words[2] = 0;
    v24->__r_.__value_.__r.__words[0] = 0;
    v26 = (*(*v9 + 56))(v9);
    v27 = *(v26 + 23);
    if (v27 >= 0)
    {
      v28 = v26;
    }

    else
    {
      v28 = *v26;
    }

    if (v27 >= 0)
    {
      v29 = *(v26 + 23);
    }

    else
    {
      v29 = *(v26 + 8);
    }

    v30 = std::string::append(&v38, v28, v29);
    v31 = *&v30->__r_.__value_.__l.__data_;
    lpsrc.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
    *&lpsrc.__r_.__value_.__l.__data_ = v31;
    v30->__r_.__value_.__l.__size_ = 0;
    v30->__r_.__value_.__r.__words[2] = 0;
    v30->__r_.__value_.__r.__words[0] = 0;
    v32 = std::string::append(&lpsrc, ", but it is defined as an attribute, please fix.");
    v33 = *&v32->__r_.__value_.__l.__data_;
    v41 = v32->__r_.__value_.__r.__words[2];
    v40 = v33;
    v32->__r_.__value_.__l.__size_ = 0;
    v32->__r_.__value_.__r.__words[2] = 0;
    v32->__r_.__value_.__r.__words[0] = 0;
    MIL::ValidationError::ValidationError(exception, &v42, &v40, 305);
  }
}

void sub_21811B268(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (*(v38 - 73) < 0)
  {
    operator delete(*(v38 - 96));
  }

  if (a35 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  v40 = *(v38 - 56);
  if (v40)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v40);
    if ((v36 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if (!v36)
  {
LABEL_14:
    if (v35)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v35);
    }

    _Unwind_Resume(exception_object);
  }

  __cxa_free_exception(v37);
  goto LABEL_14;
}

uint64_t MIL::Operators::Common::Shared::ValidateAndGetShape@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  MIL::IRTensorValue::TryGetDataView<unsigned int>(&v8, *a1);
  if ((v8 & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Shape must have dtype uint32.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v3 = v9;
  v4 = v10;
  v5 = v9 + 4 * v10;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  return std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(a2, v3, v5, v4);
}

uint64_t MIL::Operators::Common::Shared::ValidateAndGetAxis(void *a1)
{
  v1 = MIL::IRValue::TryGetScalar<int>(*a1);
  if (!v1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Axis must be a scalar int32 value.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return *v1;
}

uint64_t MIL::Operators::Common::Shared::HasSameConstantShape(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (v3 - *a1 != a2[1] - *a2)
  {
    return 0;
  }

  if (v3 == v2)
  {
    return 1;
  }

  v6 = 0;
  while (1)
  {
    result = (*(**(v2 + 8 * v6) + 16))(*(v2 + 8 * v6));
    if (!result)
    {
      break;
    }

    result = (*(**(*a2 + 8 * v6) + 16))(*(*a2 + 8 * v6));
    if (!result)
    {
      break;
    }

    v8 = MIL::IRDimension::AsConstant(*(*a1 + 8 * v6));
    v9 = (*(*v8 + 48))(v8);
    v10 = MIL::IRDimension::AsConstant(*(*a2 + 8 * v6));
    if (v9 != (*(*v10 + 48))(v10))
    {
      return 0;
    }

    ++v6;
    v2 = *a1;
    if (v6 >= (a1[1] - *a1) >> 3)
    {
      return 1;
    }
  }

  return result;
}

BOOL MIL::Operators::Common::Shared::IsShapeConstant(uint64_t *a1)
{
  v1 = *a1;
  if (a1[1] == *a1)
  {
    return 1;
  }

  v3 = 0;
  do
  {
    v4 = (*(**(v1 + 8 * v3) + 16))(*(v1 + 8 * v3));
    result = v4 != 0;
    if (!v4)
    {
      break;
    }

    ++v3;
    v1 = *a1;
  }

  while (v3 < (a1[1] - *a1) >> 3);
  return result;
}

uint64_t MIL::Operators::Common::Shared::ConstExprs::DequantizeExpression(__int16 a1, float a2, float a3)
{
  v8 = a1;
  Float = MIL::Fp16::GetFloat(&v8);
  return MIL::Fp16::FromFloat(v6, (a2 - a3) * Float);
}

void *MIL::Operators::Common::Shared::ConstExprs::ShapeToVector@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = std::vector<unsigned long>::vector[abi:ne200100](a2, (a1[1] - *a1) >> 3);
  v5 = *a1;
  if (a1[1] != *a1)
  {
    v6 = 0;
    do
    {
      v7 = MIL::IRDimension::AsConstant(*(v5 + 8 * v6));
      result = (*(*v7 + 48))(v7);
      *(*a2 + 8 * v6++) = result;
      v5 = *a1;
    }

    while (v6 < (a1[1] - *a1) >> 3);
  }

  return result;
}

void sub_21811B758(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

unint64_t **MIL::Operators::Common::Shared::ConstExprs::GetBlockSizes@<X0>(uint64_t **a1@<X0>, unint64_t **a2@<X1>, void *a3@<X8>)
{
  result = std::vector<unsigned long>::vector[abi:ne200100](a3, a1[1] - *a1);
  v6 = *a1;
  v7 = a1[1] - *a1;
  if (v7)
  {
    v8 = v7 >> 3;
    v9 = *a2;
    v10 = *result;
    if (v8 <= 1)
    {
      v8 = 1;
    }

    do
    {
      v12 = *v6++;
      v11 = v12;
      v13 = *v9++;
      *v10++ = v11 / v13;
      --v8;
    }

    while (v8);
  }

  return result;
}

void *MIL::Operators::Common::Shared::ConstExprs::GetStrides@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = std::vector<unsigned long long>::vector[abi:ne200100](a2, (a1[1] - *a1) >> 3);
  v4 = a1[1] - *a1;
  if (v4)
  {
    v5 = v4 >> 3;
    if ((v4 >> 3) <= 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = v4 >> 3;
    }

    v7 = 8 * v5 - 8;
    v8 = (*a1 + v7);
    v9 = (*result + v7);
    v10 = 1;
    do
    {
      *v9-- = v10;
      v11 = *v8--;
      v10 *= v11;
      --v6;
    }

    while (v6);
  }

  return result;
}

unint64_t **MIL::Operators::Common::Shared::ConstExprs::UnravelIndex@<X0>(unint64_t a1@<X0>, unint64_t **a2@<X1>, void *a3@<X8>)
{
  result = std::vector<unsigned long>::vector[abi:ne200100](a3, a2[1] - *a2);
  v6 = *a2;
  v7 = a2[1] - *a2;
  if (v7)
  {
    v8 = v7 >> 3;
    v9 = *result;
    if (v8 <= 1)
    {
      v8 = 1;
    }

    do
    {
      v10 = *v6++;
      *v9++ = a1 / v10;
      a1 %= v10;
      --v8;
    }

    while (v8);
  }

  return result;
}

unint64_t MIL::Operators::Common::Shared::ConstExprs::UnravelIndex(unint64_t result, uint64_t a2, unint64_t **a3)
{
  v3 = *a2;
  v4 = *(a2 + 8) - *a2;
  if (v4)
  {
    v5 = v4 >> 3;
    v6 = *a3;
    if (v5 <= 1)
    {
      v5 = 1;
    }

    do
    {
      v7 = *v3++;
      *v6++ = result / v7;
      result %= v7;
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t MIL::Operators::Common::Shared::ConstExprs::RavelIndex(uint64_t **a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8) - *a2;
  if (!v3)
  {
    return 0;
  }

  result = 0;
  v6 = v3 >> 3;
  v7 = *a1;
  if (v6 <= 1)
  {
    v6 = 1;
  }

  do
  {
    v9 = *v7++;
    v8 = v9;
    v10 = *v2++;
    result += v10 * v8;
    --v6;
  }

  while (v6);
  return result;
}

void MIL::Operators::Common::Shared::ConstExprs::AssertIsShapeConstant(uint64_t a1, uint64_t a2)
{
  v3 = (*(*a1 + 96))(a1);
  v21 = 0;
  v22 = 0;
  v20 = 0;
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&v20, *v3, v3[1], (v3[1] - *v3) >> 3);
  v4 = v20;
  v5 = v21;
  if (v20 != v21)
  {
    do
    {
      if (!(*(**v4 + 16))())
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::operator+<char>();
        v7 = std::string::append(&v16, ", shape of ");
        v8 = *&v7->__r_.__value_.__l.__data_;
        v17.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
        *&v17.__r_.__value_.__l.__data_ = v8;
        v7->__r_.__value_.__l.__size_ = 0;
        v7->__r_.__value_.__r.__words[2] = 0;
        v7->__r_.__value_.__r.__words[0] = 0;
        v9 = *(a2 + 23);
        if (v9 >= 0)
        {
          v10 = a2;
        }

        else
        {
          v10 = *a2;
        }

        if (v9 >= 0)
        {
          v11 = *(a2 + 23);
        }

        else
        {
          v11 = *(a2 + 8);
        }

        v12 = std::string::append(&v17, v10, v11);
        v13 = *&v12->__r_.__value_.__l.__data_;
        v18.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
        *&v18.__r_.__value_.__l.__data_ = v13;
        v12->__r_.__value_.__l.__size_ = 0;
        v12->__r_.__value_.__r.__words[2] = 0;
        v12->__r_.__value_.__r.__words[0] = 0;
        v14 = std::string::append(&v18, " needs to be constant");
        v15 = *&v14->__r_.__value_.__l.__data_;
        v19.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
        *&v19.__r_.__value_.__l.__data_ = v15;
        v14->__r_.__value_.__l.__size_ = 0;
        v14->__r_.__value_.__r.__words[2] = 0;
        v14->__r_.__value_.__r.__words[0] = 0;
        std::runtime_error::runtime_error(exception, &v19);
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v4 += 8;
    }

    while (v4 != v5);
    v4 = v20;
  }

  if (v4)
  {
    v21 = v4;
    operator delete(v4);
  }
}

void sub_21811BAF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (*(v30 - 57) < 0)
  {
    operator delete(*(v30 - 80));
  }

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
LABEL_12:
      v32 = *(v30 - 56);
      if (v32)
      {
        *(v30 - 48) = v32;
        operator delete(v32);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v29)
  {
    goto LABEL_12;
  }

  __cxa_free_exception(v28);
  goto LABEL_12;
}

uint64_t MIL::Operators::Common::Shared::ConstExprs::AssertIsVector(MIL::IRTensorValueType *a1, uint64_t a2)
{
  result = MIL::IRTensorValueType::Rank(a1);
  if (result != 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    v5 = std::string::append(&v14, ", rank of ");
    v6 = *&v5->__r_.__value_.__l.__data_;
    v15.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
    *&v15.__r_.__value_.__l.__data_ = v6;
    v5->__r_.__value_.__l.__size_ = 0;
    v5->__r_.__value_.__r.__words[2] = 0;
    v5->__r_.__value_.__r.__words[0] = 0;
    v7 = *(a2 + 23);
    if (v7 >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    if (v7 >= 0)
    {
      v9 = *(a2 + 23);
    }

    else
    {
      v9 = *(a2 + 8);
    }

    v10 = std::string::append(&v15, v8, v9);
    v11 = *&v10->__r_.__value_.__l.__data_;
    v16.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
    *&v16.__r_.__value_.__l.__data_ = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    v12 = std::string::append(&v16, " needs to be 1");
    v13 = *&v12->__r_.__value_.__l.__data_;
    v17.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
    *&v17.__r_.__value_.__l.__data_ = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(exception, &v17);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return result;
}

void sub_21811BCC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (*(v30 - 41) < 0)
  {
    operator delete(*(v30 - 64));
  }

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
LABEL_12:
      _Unwind_Resume(a1);
    }
  }

  else if (!v29)
  {
    goto LABEL_12;
  }

  __cxa_free_exception(v28);
  goto LABEL_12;
}

uint64_t MIL::Operators::Common::Shared::ConstExprs::AssertExpectedOutputDType(uint64_t a1, uint64_t a2)
{
  v3 = (*(*a1 + 88))(a1);
  result = (*(*a2 + 88))(a2);
  if (v3 != result)
  {
    v18 = result;
    std::operator+<char>();
    v5 = std::string::append(&v23, ", cannot output tensor value of dtype ");
    v6 = *&v5->__r_.__value_.__l.__data_;
    v24.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
    *&v24.__r_.__value_.__l.__data_ = v6;
    v5->__r_.__value_.__l.__size_ = 0;
    v5->__r_.__value_.__r.__words[2] = 0;
    v5->__r_.__value_.__r.__words[0] = 0;
    MIL::IRDataTypeToString(v18, v21);
    if ((v22 & 0x80u) == 0)
    {
      v7 = v21;
    }

    else
    {
      v7 = v21[0];
    }

    if ((v22 & 0x80u) == 0)
    {
      v8 = v22;
    }

    else
    {
      v8 = v21[1];
    }

    v9 = std::string::append(&v24, v7, v8);
    v10 = *&v9->__r_.__value_.__l.__data_;
    v25.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
    *&v25.__r_.__value_.__l.__data_ = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    v11 = std::string::append(&v25, ". Expected output dtype is ");
    v12 = *&v11->__r_.__value_.__l.__data_;
    v26.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
    *&v26.__r_.__value_.__l.__data_ = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    MIL::IRDataTypeToString(v3, __p);
    if ((v20 & 0x80u) == 0)
    {
      v13 = __p;
    }

    else
    {
      v13 = __p[0];
    }

    if ((v20 & 0x80u) == 0)
    {
      v14 = v20;
    }

    else
    {
      v14 = __p[1];
    }

    v15 = std::string::append(&v26, v13, v14);
    v16 = *&v15->__r_.__value_.__l.__data_;
    v27.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
    *&v27.__r_.__value_.__l.__data_ = v16;
    v15->__r_.__value_.__l.__size_ = 0;
    v15->__r_.__value_.__r.__words[2] = 0;
    v15->__r_.__value_.__r.__words[0] = 0;
    if (v20 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v26.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v25.__r_.__value_.__l.__data_);
    }

    if (v22 < 0)
    {
      operator delete(v21[0]);
    }

    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v24.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__r_.__value_.__l.__data_);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, &v27);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return result;
}

void sub_21811BF78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (*(v40 - 41) < 0)
  {
    operator delete(*(v40 - 64));
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::Operators::Common::Shared::ConstExprs::AssertSameRank(MIL::IRTensorValueType *a1, MIL::IRTensorValueType *a2, uint64_t a3, uint64_t a4)
{
  v8 = MIL::IRTensorValueType::Rank(a1);
  result = MIL::IRTensorValueType::Rank(a2);
  if (v8 != result)
  {
    std::operator+<char>();
    v10 = std::string::append(&v45, ": Rank of ");
    v11 = *&v10->__r_.__value_.__l.__data_;
    v46.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
    *&v46.__r_.__value_.__l.__data_ = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    v12 = *(a3 + 23);
    if (v12 >= 0)
    {
      v13 = a3;
    }

    else
    {
      v13 = *a3;
    }

    if (v12 >= 0)
    {
      v14 = *(a3 + 23);
    }

    else
    {
      v14 = *(a3 + 8);
    }

    v15 = std::string::append(&v46, v13, v14);
    v16 = *&v15->__r_.__value_.__l.__data_;
    v47.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
    *&v47.__r_.__value_.__l.__data_ = v16;
    v15->__r_.__value_.__l.__size_ = 0;
    v15->__r_.__value_.__r.__words[2] = 0;
    v15->__r_.__value_.__r.__words[0] = 0;
    v17 = std::string::append(&v47, " (");
    v18 = *&v17->__r_.__value_.__l.__data_;
    v48.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
    *&v48.__r_.__value_.__l.__data_ = v18;
    v17->__r_.__value_.__l.__size_ = 0;
    v17->__r_.__value_.__r.__words[2] = 0;
    v17->__r_.__value_.__r.__words[0] = 0;
    v19 = MIL::IRTensorValueType::Rank(a1);
    std::to_string(&v44, v19);
    if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v20 = &v44;
    }

    else
    {
      v20 = v44.__r_.__value_.__r.__words[0];
    }

    if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v44.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v44.__r_.__value_.__l.__size_;
    }

    v22 = std::string::append(&v48, v20, size);
    v23 = *&v22->__r_.__value_.__l.__data_;
    v49.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
    *&v49.__r_.__value_.__l.__data_ = v23;
    v22->__r_.__value_.__l.__size_ = 0;
    v22->__r_.__value_.__r.__words[2] = 0;
    v22->__r_.__value_.__r.__words[0] = 0;
    v24 = std::string::append(&v49, ") ");
    v25 = *&v24->__r_.__value_.__l.__data_;
    v50.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
    *&v50.__r_.__value_.__l.__data_ = v25;
    v24->__r_.__value_.__l.__size_ = 0;
    v24->__r_.__value_.__r.__words[2] = 0;
    v24->__r_.__value_.__r.__words[0] = 0;
    v26 = std::string::append(&v50, " is not equal to rank of ");
    v27 = *&v26->__r_.__value_.__l.__data_;
    v51.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
    *&v51.__r_.__value_.__l.__data_ = v27;
    v26->__r_.__value_.__l.__size_ = 0;
    v26->__r_.__value_.__r.__words[2] = 0;
    v26->__r_.__value_.__r.__words[0] = 0;
    v28 = *(a4 + 23);
    if (v28 >= 0)
    {
      v29 = a4;
    }

    else
    {
      v29 = *a4;
    }

    if (v28 >= 0)
    {
      v30 = *(a4 + 23);
    }

    else
    {
      v30 = *(a4 + 8);
    }

    v31 = std::string::append(&v51, v29, v30);
    v32 = *&v31->__r_.__value_.__l.__data_;
    v52.__r_.__value_.__r.__words[2] = v31->__r_.__value_.__r.__words[2];
    *&v52.__r_.__value_.__l.__data_ = v32;
    v31->__r_.__value_.__l.__size_ = 0;
    v31->__r_.__value_.__r.__words[2] = 0;
    v31->__r_.__value_.__r.__words[0] = 0;
    v33 = std::string::append(&v52, " (");
    v34 = *&v33->__r_.__value_.__l.__data_;
    v53.__r_.__value_.__r.__words[2] = v33->__r_.__value_.__r.__words[2];
    *&v53.__r_.__value_.__l.__data_ = v34;
    v33->__r_.__value_.__l.__size_ = 0;
    v33->__r_.__value_.__r.__words[2] = 0;
    v33->__r_.__value_.__r.__words[0] = 0;
    v35 = MIL::IRTensorValueType::Rank(a2);
    std::to_string(&v43, v35);
    if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v36 = &v43;
    }

    else
    {
      v36 = v43.__r_.__value_.__r.__words[0];
    }

    if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v37 = HIBYTE(v43.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v37 = v43.__r_.__value_.__l.__size_;
    }

    v38 = std::string::append(&v53, v36, v37);
    v39 = *&v38->__r_.__value_.__l.__data_;
    v54.__r_.__value_.__r.__words[2] = v38->__r_.__value_.__r.__words[2];
    *&v54.__r_.__value_.__l.__data_ = v39;
    v38->__r_.__value_.__l.__size_ = 0;
    v38->__r_.__value_.__r.__words[2] = 0;
    v38->__r_.__value_.__r.__words[0] = 0;
    v40 = std::string::append(&v54, ") ");
    v41 = *&v40->__r_.__value_.__l.__data_;
    v55.__r_.__value_.__r.__words[2] = v40->__r_.__value_.__r.__words[2];
    *&v55.__r_.__value_.__l.__data_ = v41;
    v40->__r_.__value_.__l.__size_ = 0;
    v40->__r_.__value_.__r.__words[2] = 0;
    v40->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v54.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v43.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v53.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v52.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v51.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v50.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v49.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v44.__r_.__value_.__l.__data_);
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

    if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v45.__r_.__value_.__l.__data_);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, &v55);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return result;
}

void sub_21811C3A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54, uint64_t a55, void *a56, uint64_t a57, int a58, __int16 a59, char a60, char a61)
{
  if (*(v61 - 73) < 0)
  {
    operator delete(*(v61 - 96));
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::Shared::ConstExprs::AssertConstantAndSameShape(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(*a1 + 96))(a1);
  v24 = 0;
  v25 = 0;
  v23 = 0;
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&v23, *v5, v5[1], (v5[1] - *v5) >> 3);
  v6 = (*(*a2 + 96))(a2);
  v20 = 0;
  v21 = 0;
  v22 = 0;
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&v20, *v6, v6[1], (v6[1] - *v6) >> 3);
  if ((MIL::Operators::Common::Shared::HasSameConstantShape(&v23, &v20) & 1) == 0)
  {
    std::operator+<char>();
    v7 = std::string::append(&v16, ", shape of ");
    v8 = *&v7->__r_.__value_.__l.__data_;
    v17.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
    *&v17.__r_.__value_.__l.__data_ = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    v9 = *(a3 + 23);
    if (v9 >= 0)
    {
      v10 = a3;
    }

    else
    {
      v10 = *a3;
    }

    if (v9 >= 0)
    {
      v11 = *(a3 + 23);
    }

    else
    {
      v11 = *(a3 + 8);
    }

    v12 = std::string::append(&v17, v10, v11);
    v13 = *&v12->__r_.__value_.__l.__data_;
    v18.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
    *&v18.__r_.__value_.__l.__data_ = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    v14 = std::string::append(&v18, ": ");
    v15 = *&v14->__r_.__value_.__l.__data_;
    v19.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
    *&v19.__r_.__value_.__l.__data_ = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
  }

  if (v20)
  {
    v21 = v20;
    operator delete(v20);
  }

  if (v23)
  {
    v24 = v23;
    operator delete(v23);
  }
}

void sub_21811C870(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54, uint64_t a55, void *a56, uint64_t a57, int a58, __int16 a59, char a60, char a61)
{
  if (*(v61 - 105) < 0)
  {
    operator delete(*(v61 - 128));
  }

  v63 = *(v61 - 96);
  if (v63)
  {
    *(v61 - 88) = v63;
    operator delete(v63);
  }

  v64 = *(v61 - 72);
  if (v64)
  {
    *(v61 - 64) = v64;
    operator delete(v64);
  }

  _Unwind_Resume(exception_object);
}

void sub_21811CA50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a9)
  {
    MIL::IRProgram::ToString(a9);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::Shared::ConstExprs::AssertExpectedOutputShape(uint64_t a1, uint64_t a2)
{
  v3 = (*(*a1 + 96))(a1);
  v13 = 0;
  v14 = 0;
  v12 = 0;
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&v12, *v3, v3[1], (v3[1] - *v3) >> 3);
  v4 = (*(*a2 + 96))(a2);
  v9 = 0;
  v10 = 0;
  v11 = 0;
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&v9, *v4, v4[1], (v4[1] - *v4) >> 3);
  if ((MIL::Operators::Common::Shared::HasSameConstantShape(&v12, &v9) & 1) == 0)
  {
    std::operator+<char>();
    v5 = std::string::append(&v7, ", cannot output tensor value of shape ");
    v6 = *&v5->__r_.__value_.__l.__data_;
    v8.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
    *&v8.__r_.__value_.__l.__data_ = v6;
    v5->__r_.__value_.__l.__size_ = 0;
    v5->__r_.__value_.__r.__words[2] = 0;
    v5->__r_.__value_.__r.__words[0] = 0;
  }

  if (v9)
  {
    v10 = v9;
    operator delete(v9);
  }

  if (v12)
  {
    v13 = v12;
    operator delete(v12);
  }
}

void sub_21811CCF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  if (*(v47 - 89) < 0)
  {
    operator delete(*(v47 - 112));
  }

  v49 = *(v47 - 80);
  if (v49)
  {
    *(v47 - 72) = v49;
    operator delete(v49);
  }

  v50 = *(v47 - 56);
  if (v50)
  {
    *(v47 - 48) = v50;
    operator delete(v50);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::Operators::Common::Shared::ConstExprs::AssertIsScalarOrVector(MIL::IRTensorValueType *a1, uint64_t a2)
{
  result = MIL::IRTensorValueType::Rank(a1);
  if (result)
  {
    result = MIL::IRTensorValueType::Rank(a1);
    if (result != 1)
    {
      std::operator+<char>();
      v5 = std::string::append(&v21, ", parameter ");
      v6 = *&v5->__r_.__value_.__l.__data_;
      v22.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
      *&v22.__r_.__value_.__l.__data_ = v6;
      v5->__r_.__value_.__l.__size_ = 0;
      v5->__r_.__value_.__r.__words[2] = 0;
      v5->__r_.__value_.__r.__words[0] = 0;
      v7 = *(a2 + 23);
      if (v7 >= 0)
      {
        v8 = a2;
      }

      else
      {
        v8 = *a2;
      }

      if (v7 >= 0)
      {
        v9 = *(a2 + 23);
      }

      else
      {
        v9 = *(a2 + 8);
      }

      v10 = std::string::append(&v22, v8, v9);
      v11 = *&v10->__r_.__value_.__l.__data_;
      v23.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
      *&v23.__r_.__value_.__l.__data_ = v11;
      v10->__r_.__value_.__l.__size_ = 0;
      v10->__r_.__value_.__r.__words[2] = 0;
      v10->__r_.__value_.__r.__words[0] = 0;
      v12 = std::string::append(&v23, " should have rank equals to either 0 or 1 but provided rank is ");
      v13 = *&v12->__r_.__value_.__l.__data_;
      v24.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
      *&v24.__r_.__value_.__l.__data_ = v13;
      v12->__r_.__value_.__l.__size_ = 0;
      v12->__r_.__value_.__r.__words[2] = 0;
      v12->__r_.__value_.__r.__words[0] = 0;
      v14 = MIL::IRTensorValueType::Rank(a1);
      std::to_string(&__p, v14);
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

      v17 = std::string::append(&v24, p_p, size);
      v18 = *&v17->__r_.__value_.__l.__data_;
      v25.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
      *&v25.__r_.__value_.__l.__data_ = v18;
      v17->__r_.__value_.__l.__size_ = 0;
      v17->__r_.__value_.__r.__words[2] = 0;
      v17->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v24.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v23.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v22.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v21.__r_.__value_.__l.__data_);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, &v25);
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  return result;
}

void sub_21811CFA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v33 - 41) < 0)
  {
    operator delete(*(v33 - 64));
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::Operators::Common::Shared::ConstExprs::AssertVectorSizeSameAsDimension(MIL::IRTensorValueType *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  result = MIL::IRTensorValueType::Rank(a1);
  if (result == 1)
  {
    result = (*(*a1 + 16))(a1);
    if (result != a2)
    {
      __val = result;
      std::operator+<char>();
      v9 = std::string::append(&v41, ", number of elements in ");
      v10 = *&v9->__r_.__value_.__l.__data_;
      v42.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
      *&v42.__r_.__value_.__l.__data_ = v10;
      v9->__r_.__value_.__l.__size_ = 0;
      v9->__r_.__value_.__r.__words[2] = 0;
      v9->__r_.__value_.__r.__words[0] = 0;
      v11 = *(a3 + 23);
      if (v11 >= 0)
      {
        v12 = a3;
      }

      else
      {
        v12 = *a3;
      }

      if (v11 >= 0)
      {
        v13 = *(a3 + 23);
      }

      else
      {
        v13 = *(a3 + 8);
      }

      v14 = std::string::append(&v42, v12, v13);
      v15 = *&v14->__r_.__value_.__l.__data_;
      v43.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
      *&v43.__r_.__value_.__l.__data_ = v15;
      v14->__r_.__value_.__l.__size_ = 0;
      v14->__r_.__value_.__r.__words[2] = 0;
      v14->__r_.__value_.__r.__words[0] = 0;
      v16 = std::string::append(&v43, "(=");
      v17 = *&v16->__r_.__value_.__l.__data_;
      v44.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
      *&v44.__r_.__value_.__l.__data_ = v17;
      v16->__r_.__value_.__l.__size_ = 0;
      v16->__r_.__value_.__r.__words[2] = 0;
      v16->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v40, __val);
      if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v18 = &v40;
      }

      else
      {
        v18 = v40.__r_.__value_.__r.__words[0];
      }

      if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v40.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v40.__r_.__value_.__l.__size_;
      }

      v20 = std::string::append(&v44, v18, size);
      v21 = *&v20->__r_.__value_.__l.__data_;
      v45.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
      *&v45.__r_.__value_.__l.__data_ = v21;
      v20->__r_.__value_.__l.__size_ = 0;
      v20->__r_.__value_.__r.__words[2] = 0;
      v20->__r_.__value_.__r.__words[0] = 0;
      v22 = std::string::append(&v45, ") should be same as the dimension size of ");
      v23 = *&v22->__r_.__value_.__l.__data_;
      v46.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
      *&v46.__r_.__value_.__l.__data_ = v23;
      v22->__r_.__value_.__l.__size_ = 0;
      v22->__r_.__value_.__r.__words[2] = 0;
      v22->__r_.__value_.__r.__words[0] = 0;
      v24 = *(a4 + 23);
      if (v24 >= 0)
      {
        v25 = a4;
      }

      else
      {
        v25 = *a4;
      }

      if (v24 >= 0)
      {
        v26 = *(a4 + 23);
      }

      else
      {
        v26 = *(a4 + 8);
      }

      v27 = std::string::append(&v46, v25, v26);
      v28 = *&v27->__r_.__value_.__l.__data_;
      v47.__r_.__value_.__r.__words[2] = v27->__r_.__value_.__r.__words[2];
      *&v47.__r_.__value_.__l.__data_ = v28;
      v27->__r_.__value_.__l.__size_ = 0;
      v27->__r_.__value_.__r.__words[2] = 0;
      v27->__r_.__value_.__r.__words[0] = 0;
      v29 = std::string::append(&v47, "(=");
      v30 = *&v29->__r_.__value_.__l.__data_;
      v48.__r_.__value_.__r.__words[2] = v29->__r_.__value_.__r.__words[2];
      *&v48.__r_.__value_.__l.__data_ = v30;
      v29->__r_.__value_.__l.__size_ = 0;
      v29->__r_.__value_.__r.__words[2] = 0;
      v29->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v39, a2);
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
      v49.__r_.__value_.__r.__words[2] = v33->__r_.__value_.__r.__words[2];
      *&v49.__r_.__value_.__l.__data_ = v34;
      v33->__r_.__value_.__l.__size_ = 0;
      v33->__r_.__value_.__r.__words[2] = 0;
      v33->__r_.__value_.__r.__words[0] = 0;
      v35 = std::string::append(&v49, ")");
      v36 = *&v35->__r_.__value_.__l.__data_;
      v50.__r_.__value_.__r.__words[2] = v35->__r_.__value_.__r.__words[2];
      *&v50.__r_.__value_.__l.__data_ = v36;
      v35->__r_.__value_.__l.__size_ = 0;
      v35->__r_.__value_.__r.__words[2] = 0;
      v35->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v49.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v39.__r_.__value_.__l.__data_);
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

      if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v45.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v40.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v44.__r_.__value_.__l.__data_);
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

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, &v50);
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  return result;
}

void sub_21811D390(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54, uint64_t a55, void *a56, uint64_t a57, int a58, __int16 a59, char a60, char a61)
{
  if (*(v61 - 57) < 0)
  {
    operator delete(*(v61 - 80));
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::Shared::ValidateConvolution(MIL::Operators::Common::Shared *this@<X0>, const MIL::IROperation *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = a2;
  std::string::basic_string[abi:ne200100]<0>(&__p, "x");
  ParameterType = MIL::IROperation::GetParameterType(this);
  v9 = MIL::IRValueType::AsTensorType(ParameterType);
  if (SHIBYTE(v105.__locale_) < 0)
  {
    operator delete(__p);
  }

  v10 = (*(*v9 + 96))(v9);
  std::string::basic_string[abi:ne200100]<0>(&__p, "weight");
  v11 = MIL::IROperation::GetParameterType(this);
  v12 = MIL::IRValueType::AsTensorType(v11);
  if (SHIBYTE(v105.__locale_) < 0)
  {
    operator delete(__p);
  }

  v13 = (*(*v12 + 96))(v12);
  if (!(*(*v9 + 104))(v9) || ((*(*v12 + 104))(v12) & 1) == 0)
  {
    LocationPtr = MIL::IRObject::GetLocationPtr(this);
    v16 = LocationPtr[1];
    v99 = *LocationPtr;
    v100 = v16;
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v97, "Variadic input/weights not supported");
    MIL::ValidationResult::ValidationResult(a4, &v99, 315, v97);
    if (v98 < 0)
    {
      operator delete(v97[0]);
    }

    v17 = v100;
    if (!v100)
    {
      return;
    }

LABEL_18:
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    return;
  }

  v14 = MIL::IRTensorValueType::Rank(v9);
  if (v14 == MIL::IRTensorValueType::Rank(v12))
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "weight");
    ParameterValue = MIL::IROperation::TryGetParameterValue(this, &__p, 0);
    if (SHIBYTE(v105.__locale_) < 0)
    {
      operator delete(__p);
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "bias");
    if (MIL::IROperation::IsParameterSet(this, &__p))
    {
      std::string::basic_string[abi:ne200100]<0>(v86, "bias");
      v74 = MIL::IROperation::TryGetParameterValue(this, v86, 0) != 0;
      if (SHIBYTE(v86[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v86[0].__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v74 = 1;
    }

    if (SHIBYTE(v105.__locale_) < 0)
    {
      operator delete(__p);
    }

    v75 = a3;
    v77 = a4;
    memset(&v92, 0, sizeof(v92));
    std::vector<int>::reserve(&v92, 5uLL);
    v21 = *v13;
    v20 = *(v13 + 8);
    if (*v13 != v20)
    {
      while ((*(**v21 + 16))())
      {
        v22 = MIL::IRDimension::AsConstant(*v21);
        v23 = (*(*v22 + 48))(v22);
        end = v92.__end_;
        if (v92.__end_ >= v92.__end_cap_.__value_)
        {
          begin = v92.__begin_;
          v27 = v92.__end_ - v92.__begin_;
          v28 = v92.__end_ - v92.__begin_;
          v29 = v28 + 1;
          if ((v28 + 1) >> 62)
          {
            std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
          }

          v30 = v92.__end_cap_.__value_ - v92.__begin_;
          if ((v92.__end_cap_.__value_ - v92.__begin_) >> 1 > v29)
          {
            v29 = v30 >> 1;
          }

          if (v30 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v31 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v31 = v29;
          }

          if (v31)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(&v92, v31);
          }

          *(4 * v28) = v23;
          v25 = (4 * v28 + 4);
          memcpy(0, begin, v27);
          v32 = v92.__begin_;
          v92.__begin_ = 0;
          v92.__end_ = v25;
          v92.__end_cap_.__value_ = 0;
          if (v32)
          {
            operator delete(v32);
          }
        }

        else
        {
          *v92.__end_ = v23;
          v25 = end + 1;
        }

        v92.__end_ = v25;
        if (++v21 == v20)
        {
          goto LABEL_44;
        }
      }

      v42 = MIL::IRObject::GetLocationPtr(this);
      v43 = v42[1];
      v90 = *v42;
      v91 = v43;
      if (v43)
      {
        atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      std::string::basic_string[abi:ne200100]<0>(v88, "Unexpected non-constant dimension in weights shape");
      MIL::ValidationResult::ValidationResult(v77, &v90, 315, v88);
      if (v89 < 0)
      {
        operator delete(v88[0]);
      }

      if (v91)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v91);
      }

      goto LABEL_148;
    }

LABEL_44:
    std::string::basic_string[abi:ne200100]<0>(&__p, "groups");
    v33 = v5;
    if (MIL::IROperation::IsParameterSet(this, &__p))
    {
      std::string::basic_string[abi:ne200100]<0>(&v110, "groups");
      v34 = MIL::IROperation::GetParameterValue(this);
      v35 = MIL::IRValue::GetScalar<int>(v34);
      if (v112 < 0)
      {
        operator delete(v110);
      }
    }

    else
    {
      v35 = 1;
    }

    if (SHIBYTE(v105.__locale_) < 0)
    {
      operator delete(__p);
    }

    if (v5)
    {
      v36 = *v92.__begin_;
      v37 = v92.__begin_[1] * v35;
    }

    else
    {
      v37 = *v92.__begin_;
      v36 = v92.__begin_[1] * v35;
    }

    if ((*(**(*v10 + 8) + 16))(*(*v10 + 8)) && (v38 = (*(**(*v10 + 8) + 16))(*(*v10 + 8)), v39 = (*(*v38 + 48))(v38), v36 != v39))
    {
      std::ostringstream::basic_ostringstream[abi:ne200100](&__p);
      if (v33)
      {
        v46 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "KernelChannels(", 15);
        v47 = MEMORY[0x21CEAFB20](v46, *v92.__begin_);
        v48 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v47, ") != InputChannels(", 19);
      }

      else
      {
        v49 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "KernelChannels (", 16);
        v50 = MEMORY[0x21CEAFB20](v49, v92.__begin_[1]);
        v51 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, ") != InputChannels (", 20);
        v52 = MEMORY[0x21CEAFB20](v51, v39);
        v48 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v52, ") / Group (", 11);
        v39 = v35;
      }

      v53 = MEMORY[0x21CEAFB20](v48, v39);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v53, ")", 1);
      v54 = MIL::IRObject::GetLocationPtr(this);
      v55 = v54[1];
      v101 = *v54;
      v102 = v55;
      if (v55)
      {
        atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      std::stringbuf::str();
      MIL::ValidationResult::ValidationResult(v86, &v101, 315, &v110);
      if (v112 < 0)
      {
        operator delete(v110);
      }

      v56 = MEMORY[0x277D82828];
      if (v102)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v102);
      }

      __p = *v56;
      *(&__p + *(__p - 3)) = *(v56 + 24);
      v104 = MEMORY[0x277D82878] + 16;
      if (v108 < 0)
      {
        operator delete(v107);
      }

      v104 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(&v105);
      std::ostream::~ostream();
      MEMORY[0x21CEAFDA0](&v109);
    }

    else
    {
      if (v36 && v37)
      {
        if (!(v37 % v35) && !(v36 % v35))
        {
          MIL::ValidationResult::ValidationResult(v86);
          goto LABEL_87;
        }

        v40 = MIL::IRObject::GetLocationPtr(this);
        v41 = *(v40 + 8);
        v110 = *v40;
        v111 = v41;
        if (v41)
        {
          atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        std::string::basic_string[abi:ne200100]<0>(&__p, "Both the number of input and output channels must be divisble by # of groups");
        MIL::ValidationResult::ValidationResult(v86, &v110, 315, &__p);
      }

      else
      {
        v44 = MIL::IRObject::GetLocationPtr(this);
        v45 = *(v44 + 8);
        v110 = *v44;
        v111 = v45;
        if (v45)
        {
          atomic_fetch_add_explicit(&v45->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        std::string::basic_string[abi:ne200100]<0>(&__p, "Could not infer number of input/output channels");
        MIL::ValidationResult::ValidationResult(v86, &v110, 315, &__p);
      }

      if (SHIBYTE(v105.__locale_) < 0)
      {
        operator delete(__p);
      }

      if (v111)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v111);
      }
    }

LABEL_87:
    if (((*(v86[0].__r_.__value_.__r.__words[0] + 16))(v86) & 1) == 0)
    {
      MIL::MILResult::MILResult(v77, v86);
      *v77 = &unk_2829E9B70;
      *(v77 + 48) = v87;
      MIL::ValidationResult::~ValidationResult(v86);
      goto LABEL_148;
    }

    MIL::ValidationResult::~ValidationResult(v86);
    v57 = MIL::IRTensorValueType::Rank(v9);
    v58 = v57 - 2;
    if (v57 == 5)
    {
      v59 = 0;
    }

    else
    {
      v59 = v33 ^ 1 | v75;
    }

    if (!ParameterValue && (v59 & 1) == 0)
    {
      if (v33)
      {
        v60 = "Deconvolution ";
      }

      else
      {
        v60 = "3D Convolution";
      }

      std::string::basic_string[abi:ne200100]<0>(&__p, v60);
      v61 = MIL::IRObject::GetLocationPtr(this);
      v62 = v61[1];
      v84 = *v61;
      v85 = v62;
      if (v62)
      {
        atomic_fetch_add_explicit(&v62->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (SHIBYTE(v105.__locale_) >= 0)
      {
        locale_high = HIBYTE(v105.__locale_);
      }

      else
      {
        locale_high = v104;
      }

      std::string::basic_string[abi:ne200100](v82, locale_high + 33);
      if (v83 >= 0)
      {
        v64 = v82;
      }

      else
      {
        v64 = v82[0];
      }

      if (locale_high)
      {
        if (SHIBYTE(v105.__locale_) >= 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        memmove(v64, p_p, locale_high);
      }

      strcpy(v64 + locale_high, " does not support dynamic weights");
      MIL::ValidationResult::ValidationResult(v77, &v84, 315, v82);
      if (v83 < 0)
      {
        operator delete(v82[0]);
      }

      v66 = v85;
      if (!v85)
      {
        goto LABEL_114;
      }

      goto LABEL_113;
    }

    if (((v74 | v59) & 1) == 0)
    {
      if (v33)
      {
        v71 = "Deconvolution ";
      }

      else
      {
        v71 = "3D Convolution";
      }

      std::string::basic_string[abi:ne200100]<0>(&__p, v71);
      v72 = MIL::IRObject::GetLocationPtr(this);
      v73 = v72[1];
      v80 = *v72;
      v81 = v73;
      if (v73)
      {
        atomic_fetch_add_explicit(&v73->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(" does not support dynamic bias", &__p, v78);
      MIL::ValidationResult::ValidationResult(v77, &v80, 315, v78);
      if (v79 < 0)
      {
        operator delete(v78[0]);
      }

      v66 = v81;
      if (!v81)
      {
        goto LABEL_114;
      }

LABEL_113:
      std::__shared_weak_count::__release_shared[abi:ne200100](v66);
LABEL_114:
      if ((SHIBYTE(v105.__locale_) & 0x80000000) == 0)
      {
        goto LABEL_148;
      }

      v67 = __p;
      goto LABEL_147;
    }

    v101 = this;
    std::string::basic_string[abi:ne200100]<0>(&__p, "pad_type");
    v68 = MIL::IROperation::GetParameterValue(this);
    MIL::IRValue::GetScalar<std::string>(v68, v86);
    if (SHIBYTE(v105.__locale_) < 0)
    {
      operator delete(__p);
    }

    if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v86, "custom"))
    {
      std::string::basic_string[abi:ne200100]<0>(&v110, "pad");
      MIL::Operators::Common::Shared::ValidateConvolution(MIL::IROperation const&,BOOL,BOOL)::$_0::operator()(&v101, &v110, 2 * v58, &__p);
      if (v112 < 0)
      {
        operator delete(v110);
      }

      if (((*(__p + 2))(&__p) & 1) == 0)
      {
        goto LABEL_144;
      }

      MIL::ValidationResult::~ValidationResult(&__p);
    }

    std::string::basic_string[abi:ne200100]<0>(&v110, "dilations");
    MIL::Operators::Common::Shared::ValidateConvolution(MIL::IROperation const&,BOOL,BOOL)::$_0::operator()(&v101, &v110, v58, &__p);
    if (v112 < 0)
    {
      operator delete(v110);
    }

    if ((*(__p + 2))(&__p))
    {
      MIL::ValidationResult::~ValidationResult(&__p);
      std::string::basic_string[abi:ne200100]<0>(&v110, "strides");
      MIL::Operators::Common::Shared::ValidateConvolution(MIL::IROperation const&,BOOL,BOOL)::$_0::operator()(&v101, &v110, v58, &__p);
      if (v112 < 0)
      {
        operator delete(v110);
      }

      if ((*(__p + 2))(&__p))
      {
        MIL::ValidationResult::~ValidationResult(&__p);
        if (v33)
        {
          std::string::basic_string[abi:ne200100]<0>(&__p, "groups");
          if (MIL::IROperation::IsParameterSet(this, &__p))
          {
            std::string::basic_string[abi:ne200100]<0>(&v110, "groups");
            v69 = MIL::IROperation::GetParameterValue(this);
            v70 = MIL::IRValue::GetScalar<int>(v69);
            if (v112 < 0)
            {
              operator delete(v110);
            }
          }

          else
          {
            v70 = 1;
          }

          if (SHIBYTE(v105.__locale_) < 0)
          {
            operator delete(__p);
          }

          std::string::basic_string[abi:ne200100]<0>(&v110, "bias");
          MIL::Operators::Common::Shared::ValidateConvolution(MIL::IROperation const&,BOOL,BOOL)::$_0::operator()(&v101, &v110, *(v92.__begin_ + 1) * v70, &__p);
          if (v112 < 0)
          {
            operator delete(v110);
          }

          if ((*(__p + 2))(&__p))
          {
            MIL::ValidationResult::~ValidationResult(&__p);
            std::string::basic_string[abi:ne200100]<0>(&v110, "output_shape");
            MIL::Operators::Common::Shared::ValidateConvolution(MIL::IROperation const&,BOOL,BOOL)::$_0::operator()(&v101, &v110, v57, &__p);
            if (v112 < 0)
            {
              operator delete(v110);
            }

            if ((*(__p + 2))(&__p))
            {
LABEL_163:
              MIL::ValidationResult::~ValidationResult(&__p);
              MIL::ValidationResult::ValidationResult(v77);
              goto LABEL_145;
            }
          }
        }

        else
        {
          std::string::basic_string[abi:ne200100]<0>(&v110, "bias");
          MIL::Operators::Common::Shared::ValidateConvolution(MIL::IROperation const&,BOOL,BOOL)::$_0::operator()(&v101, &v110, *v92.__begin_, &__p);
          if (v112 < 0)
          {
            operator delete(v110);
          }

          if ((*(__p + 2))(&__p))
          {
            goto LABEL_163;
          }
        }
      }
    }

LABEL_144:
    MIL::MILResult::MILResult(v77, &__p);
    *v77 = &unk_2829E9B70;
    *(v77 + 48) = v106;
    MIL::ValidationResult::~ValidationResult(&__p);
LABEL_145:
    if ((SHIBYTE(v86[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_148;
    }

    v67 = v86[0].__r_.__value_.__r.__words[0];
LABEL_147:
    operator delete(v67);
LABEL_148:
    if (v92.__begin_)
    {
      v92.__end_ = v92.__begin_;
      operator delete(v92.__begin_);
    }

    return;
  }

  v18 = MIL::IRObject::GetLocationPtr(this);
  v19 = v18[1];
  v95 = *v18;
  v96 = v19;
  if (v19)
  {
    atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(v93, "Weight must be the a compatible dimensionality for x");
  MIL::ValidationResult::ValidationResult(a4, &v95, 315, v93);
  if (v94 < 0)
  {
    operator delete(v93[0]);
  }

  v17 = v96;
  if (v96)
  {
    goto LABEL_18;
  }
}