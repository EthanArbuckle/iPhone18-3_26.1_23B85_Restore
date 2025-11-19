void sub_257BC9A74(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::vector<float>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__split_buffer<std::vector<float>>::__construct_at_end(uint64_t result, uint64_t a2, uint64_t *a3)
{
  v3 = result;
  v4 = *(result + 16);
  if (a2)
  {
    v6 = &v4[3 * a2];
    v7 = 24 * a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      result = std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v4, *a3, a3[1], (a3[1] - *a3) >> 2);
      v4 += 3;
      v7 -= 24;
    }

    while (v7);
    v4 = v6;
  }

  *(v3 + 16) = v4;
  return result;
}

uint64_t std::__split_buffer<std::vector<float>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::vector<float>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::vector<float>>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    v5 = *(v2 - 24);
    *(a1 + 16) = v2 - 24;
    if (v5)
    {
      *(v2 - 16) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 24;
    }
  }
}

uint64_t std::unordered_set<int>::unordered_set<std::__wrap_iter<int const*>>(uint64_t a1, int *a2, int *a3)
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

uint64_t *std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>(void *a1, int *a2)
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

__n128 std::vector<float>::__move_assign(uint64_t a1, __n128 *a2)
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

void *std::vector<int>::vector[abi:ne200100](void *result, unint64_t a2)
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

void sub_257BC9E2C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_279853FD8, MEMORY[0x277D825F8]);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E8] + 16);
  return result;
}

void std::vector<OUBox3d>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<OUBox3d>::__base_destruct_at_end[abi:ne200100](a1, *a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t std::vector<std::vector<float>>::__init_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::vector<float>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_257BC9F98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<float>>,std::vector<float>*,std::vector<float>*,std::vector<float>*>(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
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
      std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v4, *v6, v6[1], (v6[1] - *v6) >> 2);
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<float>>,std::vector<float>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<float>>,std::vector<float>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<int>>,std::vector<int>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void *std::set<int>::set[abi:ne200100]<std::__wrap_iter<int *>>(void *a1, int *a2, int *a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      std::__tree<int>::__emplace_hint_unique_key_args<int,int const&>(a1, v4, v6++);
    }

    while (v6 != a3);
  }

  return a1;
}

uint64_t std::__tree<int>::__emplace_hint_unique_key_args<int,int const&>(void *a1, uint64_t *a2, int *a3)
{
  v3 = *std::__tree<int>::__find_equal<int>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t *std::__tree<int>::__find_equal<int>(void *a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, int *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 7), *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (*(v10 + 7) < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = *(v16 + 28);
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= *(a4 + 7))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 28);
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

uint64_t *std::__tree<int>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

void std::__tree<int>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<int>::destroy(a1, *a2);
    std::__tree<int>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

size_t *std::vector<std::vector<int>>::__append(size_t *result, unint64_t a2, uint64_t *a3)
{
  v5 = result;
  v7 = result[1];
  v6 = result[2];
  if (0xAAAAAAAAAAAAAAABLL * ((v6 - v7) >> 3) >= a2)
  {
    if (a2)
    {
      v12 = &v7[3 * a2];
      v13 = 24 * a2;
      do
      {
        *v7 = 0;
        v7[1] = 0;
        v7[2] = 0;
        result = std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v7, *a3, a3[1], (a3[1] - *a3) >> 2);
        v7 += 3;
        v13 -= 24;
      }

      while (v13);
      v7 = v12;
    }

    v5[1] = v7;
  }

  else
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *result) >> 3);
    v9 = v8 + a2;
    if (v8 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *result) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    v21 = result;
    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<int>>>(result, v11);
    }

    v18 = 0;
    v19 = 24 * v8;
    v20 = 24 * v8;
    std::__split_buffer<std::vector<int>>::__construct_at_end(&v18, a2, a3);
    v14 = v5[1] - *v5;
    v15 = v19 - v14;
    memcpy((v19 - v14), *v5, v14);
    v16 = *v5;
    *v5 = v15;
    v17 = v5[2];
    *(v5 + 1) = v20;
    *&v20 = v16;
    *(&v20 + 1) = v17;
    v18 = v16;
    v19 = v16;
    return std::__split_buffer<std::vector<float>>::~__split_buffer(&v18);
  }

  return result;
}

void sub_257BCA728(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::vector<float>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__split_buffer<std::vector<int>>::__construct_at_end(uint64_t result, uint64_t a2, uint64_t *a3)
{
  v3 = result;
  v4 = *(result + 16);
  if (a2)
  {
    v6 = &v4[3 * a2];
    v7 = 24 * a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      result = std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v4, *a3, a3[1], (a3[1] - *a3) >> 2);
      v4 += 3;
      v7 -= 24;
    }

    while (v7);
    v4 = v6;
  }

  *(v3 + 16) = v4;
  return result;
}

void OUTLINED_FUNCTION_1_1(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

uint64_t sub_257BCC4FC()
{
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_257ECF4C0();

  v3 = sub_257ECF4C0();
  v4 = [v1 localizedStringForKey:v2 value:0 table:v3];

  v5 = sub_257ECF500();
  return v5;
}

uint64_t _s16MagnifierSupport14MAGOutputEventV23UserCoachingInstructionO9hashValueSivg_0()
{
  v1 = *v0;
  sub_257ED07B0();
  MEMORY[0x259C732E0](v1);
  return sub_257ED0800();
}

uint64_t sub_257BCC68C()
{
  v1 = *v0;
  sub_257ED07B0();
  MEMORY[0x259C732E0](v1);
  return sub_257ED0800();
}

void sub_257BCC7E0(unsigned __int8 a1)
{
  if (a1 <= 1u)
  {
    if (!a1)
    {
      return;
    }

LABEL_7:
    type metadata accessor for MAGUtilities();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v5 = [objc_opt_self() bundleForClass_];
    v6 = sub_257ECF4C0();
    v7 = sub_257ECF4C0();
    v8 = [v5 localizedStringForKey:v6 value:0 table:v7];

    sub_257ECF500();
    return;
  }

  if (a1 != 2)
  {
    goto LABEL_7;
  }

  v1 = sub_257ECF4C0();
  v9[4] = sub_257E5BD88;
  v9[5] = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_257E5BE70;
  v9[3] = &block_descriptor;
  v2 = _Block_copy(v9);
  v3 = AXLocStringForDeviceVariant();
  _Block_release(v2);

  if (v3)
  {
    sub_257ECF500();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_257BCCA6C(unsigned __int8 a1)
{
  if (a1 > 2u)
  {
    return 0;
  }

  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_257ECF4C0();
  v4 = sub_257ECF4C0();
  v5 = [v2 localizedStringForKey:v3 value:0 table:v4];

  v6 = sub_257ECF500();
  return v6;
}

id sub_257BCCBB4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DB0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v26 - v4;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F54C0);
  v6 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v8 = &v26 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DC0);
  v27 = *(v9 - 8);
  v28 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v26 - v10;
  v30.receiver = v1;
  v30.super_class = ObjectType;
  objc_msgSendSuper2(&v30, sel_viewDidLoad);
  v12 = *&v1[OBJC_IVAR____TtC16MagnifierSupport41ObjectUnderstandingSettingsViewController_tableView];
  [v12 setDataSource_];
  [v12 setDelegate_];
  sub_257BD2C2C(0, &qword_27F8F5560);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v14 = sub_257ECF4C0();
  [v12 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v14];

  type metadata accessor for UIStepperLengthCell();
  v15 = swift_getObjCClassFromMetadata();
  v16 = sub_257ECF4C0();
  [v12 registerClass:v15 forCellReuseIdentifier:v16];

  v17 = sub_257ECF4C0();
  [v12 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v17];

  [v12 setTranslatesAutoresizingMaskIntoConstraints_];
  result = [v1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v19 = result;
  [result addSubview_];

  result = [v1 view];
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v20 = result;
  sub_257EB6FD8(result, *MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24));

  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DD0);
  sub_257ECDD30();
  swift_endAccess();
  v21 = [objc_opt_self() mainRunLoop];
  v29 = v21;
  v22 = sub_257ED0080();
  (*(*(v22 - 8) + 56))(v5, 1, 1, v22);
  sub_257BD2C2C(0, &unk_281543D40);
  sub_257BD2D4C(&unk_281544140, &unk_27F8F54C0);
  sub_257BD2C74();
  v23 = v26;
  sub_257ECDDF0();
  sub_257BD2CDC(v5);

  (*(v6 + 8))(v8, v23);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_257BD2D4C(&unk_281544230, &unk_27F8F4DC0);
  v24 = v28;
  v25 = sub_257ECDE50();

  (*(v27 + 8))(v11, v24);
  *&v1[OBJC_IVAR____TtC16MagnifierSupport41ObjectUnderstandingSettingsViewController_speechFeedbackSubscription] = v25;
}

void sub_257BCD148()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (v3 == 1)
    {
      [v1 beginUpdates];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5570);
      sub_257ECCEB0();
      *(swift_allocObject() + 16) = xmmword_257ED6D30;
      MEMORY[0x259C6F970](1, 2);
      v2 = sub_257ECF7F0();

      [v1 reloadRowsAtIndexPaths:v2 withRowAnimation:100];

      [v1 endUpdates];
    }
  }
}

void sub_257BCD368(char a1)
{
  v9.receiver = v1;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, sel_viewWillAppear_, a1 & 1);
  v3 = [v1 navigationItem];
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  v6 = sub_257ECF4C0();
  v7 = sub_257ECF4C0();
  v8 = [v5 localizedStringForKey:v6 value:0 table:v7];

  if (!v8)
  {
    sub_257ECF500();
    v8 = sub_257ECF4C0();
  }

  [v3 setTitle_];
}

id sub_257BCD51C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  do
  {
    v10 = byte_286903AE0[v6 + 32];
    if (v10 != 3)
    {
      goto LABEL_10;
    }

    if (qword_27F8F4670 != -1)
    {
      swift_once();
    }

    if (byte_27F8F8D89 == 1)
    {
LABEL_10:
      v21 = v7;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_257BF25C4(0, *(v7 + 16) + 1, 1);
        v7 = v21;
      }

      v9 = *(v7 + 16);
      v8 = *(v7 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_257BF25C4((v8 > 1), v9 + 1, 1);
        v7 = v21;
      }

      *(v7 + 16) = v9 + 1;
      *(v7 + v9 + 32) = v10;
    }

    ++v6;
  }

  while (v6 != 4);
  *&v4[OBJC_IVAR____TtC16MagnifierSupport41ObjectUnderstandingSettingsViewController_availableDetectionFeedbacks] = v7;
  v11 = OBJC_IVAR____TtC16MagnifierSupport41ObjectUnderstandingSettingsViewController_tableView;
  v12 = [objc_allocWithZone(MEMORY[0x277D75B40]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  [v12 setClipsToBounds_];
  v13 = [objc_opt_self() systemYellowColor];
  [v12 setTintColor_];

  *&v4[v11] = v12;
  *&v4[OBJC_IVAR____TtC16MagnifierSupport41ObjectUnderstandingSettingsViewController_speechFeedbackSubscription] = 0;
  if (a2)
  {
    v14 = sub_257ECF4C0();
  }

  else
  {
    v14 = 0;
  }

  v20.receiver = v4;
  v20.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v20, sel_initWithNibName_bundle_, v14, a3, a1);

  return v15;
}

id sub_257BCD7BC(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = 0;
  v5 = MEMORY[0x277D84F90];
  do
  {
    v8 = byte_286903B08[v4 + 32];
    if (v8 != 3)
    {
      goto LABEL_10;
    }

    if (qword_27F8F4670 != -1)
    {
      swift_once();
    }

    if (byte_27F8F8D89 == 1)
    {
LABEL_10:
      v16 = v5;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_257BF25C4(0, *(v5 + 16) + 1, 1);
        v5 = v16;
      }

      v7 = *(v5 + 16);
      v6 = *(v5 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_257BF25C4((v6 > 1), v7 + 1, 1);
        v5 = v16;
      }

      *(v5 + 16) = v7 + 1;
      *(v5 + v7 + 32) = v8;
    }

    ++v4;
  }

  while (v4 != 4);
  *&v2[OBJC_IVAR____TtC16MagnifierSupport41ObjectUnderstandingSettingsViewController_availableDetectionFeedbacks] = v5;
  v9 = OBJC_IVAR____TtC16MagnifierSupport41ObjectUnderstandingSettingsViewController_tableView;
  v10 = [objc_allocWithZone(MEMORY[0x277D75B40]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  [v10 setClipsToBounds_];
  v11 = [objc_opt_self() systemYellowColor];
  [v10 setTintColor_];

  *&v2[v9] = v10;
  *&v2[OBJC_IVAR____TtC16MagnifierSupport41ObjectUnderstandingSettingsViewController_speechFeedbackSubscription] = 0;
  v15.receiver = v2;
  v15.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v15, sel_initWithCoder_, a1);

  if (v12)
  {
  }

  return v12;
}

id sub_257BCDA00()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_257BCDA9C(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DA0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v80[-1] - v6;
  v8 = sub_257ECCEA0();
  v9 = 0;
  v10 = 1;
  if (v8 > 1)
  {
    if (v8 != 2)
    {
      if (v8 != 3)
      {
        goto LABEL_16;
      }

      v9 = 1;
    }

    v10 = 0;
LABEL_16:
    v30 = sub_257ECF4C0();
    v31 = sub_257ECCE30();
    v13 = [a1 dequeueReusableCellWithIdentifier:v30 forIndexPath:v31];

    if (v10)
    {
      return v13;
    }

    v32 = &unk_279854000;
    v33 = [v13 textLabel];
    if (v9)
    {
      if (v33)
      {
        v34 = v33;
        [v33 setLineBreakMode_];
      }

      v35 = [v13 textLabel];
      if (v35)
      {
        v36 = v35;
        [v35 setNumberOfLines_];
      }

      v37 = [v13 textLabel];
      if (v37)
      {
        v38 = v37;
        type metadata accessor for MAGUtilities();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v40 = [objc_opt_self() bundleForClass_];
        v41 = sub_257ECF4C0();
        v42 = sub_257ECF4C0();
        v43 = [v40 localizedStringForKey:v41 value:0 table:v42];

        if (!v43)
        {
          sub_257ECF500();
          v43 = sub_257ECF4C0();
        }

        [v38 setText_];
      }

      v44 = [objc_allocWithZone(MEMORY[0x277D75AE8]) init];
      [v44 setTag_];
      if (qword_281544FE0 != -1)
      {
        swift_once();
      }

      v45 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__objectUnderstandingSeatOccupancy;
      swift_beginAccess();
      v46 = *(v45 + 8);
      v47 = *(v45 + 16);
      v81 = *v45;
      v82 = v46;
      LOBYTE(v83) = v47;
      v48 = qword_2815447E0;

      if (v48 != -1)
      {
        v49 = swift_once();
      }

      MEMORY[0x28223BE20](v49);
      *(&v79 - 2) = &v81;
      sub_257ECFD50();

      [v44 setOn_];
      [v44 addTarget:v2 action:sel_toggleSeatOccupancySwitch_ forControlEvents:4096];
      [v13 setAccessoryView_];
      [v13 setAccessoryType_];

      return v13;
    }

    if (v33)
    {
      v54 = v33;
      [v33 setLineBreakMode_];
    }

    v55 = [v13 textLabel];
    if (v55)
    {
      v56 = v55;
      [v55 setNumberOfLines_];
    }

    v57 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport41ObjectUnderstandingSettingsViewController_availableDetectionFeedbacks);
    v58 = sub_257ECCE60();
    if ((v58 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v58 < *(v57 + 16))
    {
      v31 = *(v57 + v58 + 32);
      v59 = [v13 textLabel];
      if (v59)
      {
        v60 = v59;
        sub_257BCC4FC();
        v61 = sub_257ECF4C0();

        [v60 setText_];
      }

      v32 = [objc_allocWithZone(MEMORY[0x277D75AE8]) init];
      if (qword_281544FE0 == -1)
      {
        goto LABEL_43;
      }

      goto LABEL_59;
    }

    __break(1u);
LABEL_59:
    swift_once();
LABEL_43:
    v62 = (qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedObjectUnderstandingFeedbacks);
    swift_beginAccess();
    v63 = v62[1];
    v64 = v62[2];
    v81 = *v62;
    v82 = v63;
    v83 = v64;
    v65 = qword_2815447E0;

    if (v65 != -1)
    {
      v66 = swift_once();
    }

    MEMORY[0x28223BE20](v66);
    *(&v79 - 2) = &v81;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F4B90);
    sub_257ECFD50();

    v67 = sub_257C592D0(v31, v80[0]);

    [v32 setOn_];
    v68 = v32;
    [v68 setTag_];
    [v68 addTarget:v2 action:sel_toggleFeedbackSwitch_ forControlEvents:4096];
    [v13 setAccessoryView_];

    return v13;
  }

  if (v8)
  {
    if (v8 == 1)
    {
      v11 = sub_257ECF4C0();
      v12 = sub_257ECCE30();
      v13 = [a1 dequeueReusableCellWithIdentifier:v11 forIndexPath:v12];

      type metadata accessor for UIStepperLengthCell();
      v14 = swift_dynamicCastClass();
      if (v14)
      {
        v79 = v14;
        v15 = qword_281544FE0;
        v13 = v13;
        if (v15 != -1)
        {
          swift_once();
        }

        v16 = qword_281548348;
        v17 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__detectionUnit;
        swift_beginAccess();
        v18 = *(v17 + 8);
        v19 = *(v17 + 16);
        v81 = *v17;
        v82 = v18;
        LOBYTE(v83) = v19;
        v20 = qword_2815447E0;

        if (v20 != -1)
        {
          v21 = swift_once();
        }

        MEMORY[0x28223BE20](v21);
        *(&v79 - 2) = &v81;
        sub_257ECFD50();

        v22 = LOBYTE(v80[0]);
        v23 = (v16 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__objectUnderstandingPitchThreshold);
        v24 = swift_beginAccess();
        v25 = v23[1];
        v26 = v23[2];
        v80[0] = *v23;
        v80[1] = v25;
        v80[2] = v26;
        MEMORY[0x28223BE20](v24);
        *(&v79 - 2) = v80;

        sub_257ECFD50();

        v27 = objc_opt_self();
        v28 = &selRef_feet;
        if (!v22)
        {
          v28 = &selRef_meters;
        }

        v29 = [v27 *v28];
        sub_257BD2C2C(0, &qword_27F8F58F0);
        sub_257ECC740();
        sub_257D3DB54(v7, sub_257BCE694, 0);

        (*(v5 + 8))(v7, v4);
      }

      return v13;
    }

    goto LABEL_16;
  }

  v50 = sub_257ECF4C0();
  v51 = sub_257ECCE30();
  v13 = [a1 dequeueReusableCellWithIdentifier:v50 forIndexPath:v51];

  [v13 setAccessoryView_];
  v52 = sub_257ECCE60();
  if (v52)
  {
    if (v52 != 1)
    {
      return v13;
    }

    v53 = 1;
  }

  else
  {
    v53 = 0;
  }

  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v69 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__detectionUnit;
  swift_beginAccess();
  v70 = *(v69 + 8);
  v71 = *(v69 + 16);
  v81 = *v69;
  v82 = v70;
  LOBYTE(v83) = v71;
  v72 = qword_2815447E0;

  if (v72 != -1)
  {
    v73 = swift_once();
  }

  MEMORY[0x28223BE20](v73);
  *(&v79 - 2) = &v81;
  sub_257ECFD50();

  if ((v53 ^ LOBYTE(v80[0])))
  {
    v74 = 0;
  }

  else
  {
    v74 = 3;
  }

  [v13 setAccessoryType_];
  v75 = [v13 textLabel];
  if (v75)
  {
    v76 = v75;
    sub_257C69A6C();
    v77 = sub_257ECF4C0();

    [v76 setText_];
  }

  return v13;
}

uint64_t sub_257BCE694(double a1)
{
  v2 = sub_257ECF120();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v6 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__objectUnderstandingPitchThreshold;
  swift_beginAccess();
  v10 = a1;
  if (qword_2815447E0 != -1)
  {
    swift_once();
  }

  v7 = sub_257ECF110();
  MEMORY[0x28223BE20](v7);
  *&v9[-16] = &v10;
  *&v9[-8] = v6;
  sub_257ECFD40();
  (*(v3 + 8))(v5, v2);
  return swift_endAccess();
}

id sub_257BCEAD0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t (*a5)(unint64_t, void))
{
  sub_257BD0A14(a4, a5);
  if (v5)
  {
    v6 = sub_257ECF4C0();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t sub_257BCED08(uint64_t a1, id *a2)
{
  result = sub_257ECF4E0();
  *a2 = 0;
  return result;
}

uint64_t sub_257BCED80(uint64_t a1, id *a2)
{
  v3 = sub_257ECF4F0();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_257BCEE00()
{
  sub_257ECF500();
  v0 = sub_257ECF4C0();

  v1 = sub_257ECF500();
  v2 = MEMORY[0x259C72200](v1);

  return v2;
}

uint64_t sub_257BCEE64()
{
  sub_257ECF500();
  v0 = sub_257ECF4C0();

  sub_257ECF500();
  sub_257ECF5D0();
}

uint64_t sub_257BCEEE0()
{
  sub_257ECF500();
  v0 = sub_257ECF4C0();

  sub_257ECF500();
  sub_257ED07B0();
  sub_257ECF5D0();
  v1 = sub_257ED0800();

  return v1;
}

uint64_t sub_257BCEF74(uint64_t a1)
{
  v2 = sub_257BD212C(&qword_27F8F4FA0, type metadata accessor for AVError);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_257BCEFE0(uint64_t a1)
{
  v2 = sub_257BD212C(&qword_27F8F4FA0, type metadata accessor for AVError);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_257BCF050(uint64_t a1)
{
  v2 = sub_257BD212C(&unk_27F8F4FD8, type metadata accessor for AVError);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_257BCF180@<X0>(uint64_t *a1@<X8>)
{
  sub_257ECF500();
  v2 = sub_257ECF4C0();

  *a1 = v2;
  return result;
}

uint64_t sub_257BCF280()
{
  sub_257ED07B0();
  swift_getWitnessTable();
  sub_257ECD1F0();
  return sub_257ED0800();
}

uint64_t sub_257BCF2E4()
{
  swift_getWitnessTable();

  return sub_257ECD1E0();
}

uint64_t sub_257BCF350()
{
  sub_257ECF500();
  v0 = sub_257ECF4C0();

  sub_257ECF500();
  v1 = sub_257ECF4C0();

  v2 = sub_257ECF500();
  v4 = v3;
  if (v2 == sub_257ECF500() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_257ED0640();
  }

  return v7 & 1;
}

uint64_t sub_257BCF430(uint64_t a1)
{
  v2 = sub_257BD212C(&unk_27F8F4FD8, type metadata accessor for AVError);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_257BCF49C(uint64_t a1)
{
  v2 = sub_257BD212C(&unk_27F8F4FD8, type metadata accessor for AVError);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_257BCF508(void *a1, uint64_t a2)
{
  v4 = sub_257BD212C(&unk_27F8F4FD8, type metadata accessor for AVError);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_257BCF5BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_257BD212C(&unk_27F8F4FD8, type metadata accessor for AVError);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_257BCF638()
{
  sub_257ED07B0();
  sub_257ECF400();
  return sub_257ED0800();
}

uint64_t sub_257BCF698()
{
  swift_getWitnessTable();

  return sub_257ECD1E0();
}

uint64_t sub_257BCF704(uint64_t a1)
{
  v2 = sub_257BD212C(&qword_27F8F5098, type metadata accessor for OptionsKey);
  v3 = sub_257BD212C(&unk_27F8F50A0, type metadata accessor for OptionsKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_257BCF7C0(uint64_t a1)
{
  v2 = sub_257BD212C(&qword_27F8F5078, type metadata accessor for ActivityType);
  v3 = sub_257BD212C(&qword_27F8F5080, type metadata accessor for ActivityType);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_257BCF87C(uint64_t a1)
{
  v2 = sub_257BD212C(&qword_27F8F4D00, type metadata accessor for URLResourceKey);
  v3 = sub_257BD212C(&qword_27F8F4D08, type metadata accessor for URLResourceKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_257BCF938(uint64_t a1)
{
  v2 = sub_257BD212C(&qword_27F8F8300, _s3__C3KeyVMa_0);
  v3 = sub_257BD212C(&qword_27F8F50B0, _s3__C3KeyVMa_0);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_257BCF9F4(uint64_t a1)
{
  v2 = sub_257BD212C(&qword_27F8F5018, type metadata accessor for LaunchOptionsKey);
  v3 = sub_257BD212C(&qword_27F8F5020, type metadata accessor for LaunchOptionsKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_257BCFAB0(uint64_t a1)
{
  v2 = sub_257BD212C(&qword_27F8F4CD8, type metadata accessor for VNImageOption);
  v3 = sub_257BD212C(&unk_27F8F4CE0, type metadata accessor for VNImageOption);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_257BCFB78@<X0>(uint64_t *a1@<X8>)
{
  sub_257ECF500();
  v2 = sub_257ECF4C0();

  *a1 = v2;
  return result;
}

uint64_t sub_257BCFBC0(uint64_t a1)
{
  v2 = sub_257BD212C(&qword_27F8F5038, type metadata accessor for JointName);
  v3 = sub_257BD212C(&qword_27F8F5040, type metadata accessor for JointName);
  v4 = sub_257BD212C(&qword_27F8F5028, type metadata accessor for VNRecognizedPointKey);

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_257BCFCB0(uint64_t a1)
{
  v2 = sub_257BD212C(&qword_27F8F4C88, type metadata accessor for UIContentSizeCategory);
  v3 = sub_257BD212C(&qword_27F8F4C90, type metadata accessor for UIContentSizeCategory);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_257BCFD6C(uint64_t a1)
{
  v2 = sub_257BD212C(&qword_27F8F4C98, type metadata accessor for OU3DObjectType);
  v3 = sub_257BD212C(&qword_27F8F4CA0, type metadata accessor for OU3DObjectType);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_257BCFE28(uint64_t a1)
{
  v2 = sub_257BD212C(&qword_27F8F6400, type metadata accessor for TestOption);
  v3 = sub_257BD212C(&qword_27F8F4CF0, type metadata accessor for TestOption);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_257BCFEE4(uint64_t a1)
{
  v2 = sub_257BD212C(&qword_27F8F4C78, type metadata accessor for Identifier);
  v3 = sub_257BD212C(&qword_27F8F4C80, type metadata accessor for Identifier);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_257BCFFA0(uint64_t a1)
{
  v2 = sub_257BD212C(&qword_27F8F50B8, type metadata accessor for DeviceType);
  v3 = sub_257BD212C(&qword_27F8F50C0, type metadata accessor for DeviceType);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_257BD005C(uint64_t a1)
{
  v2 = sub_257BD212C(&qword_281543E68, type metadata accessor for AttributeName);
  v3 = sub_257BD212C(&qword_27F8F5070, type metadata accessor for AttributeName);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_257BD0118(uint64_t a1)
{
  v2 = sub_257BD212C(&qword_27F8F5058, type metadata accessor for FeatureKey);
  v3 = sub_257BD212C(&unk_27F8F5060, type metadata accessor for FeatureKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_257BD01D4(uint64_t a1)
{
  v2 = sub_257BD212C(&qword_27F8F4FF8, type metadata accessor for AXMFeatureDescriptionOption);
  v3 = sub_257BD212C(&qword_27F8F5000, type metadata accessor for AXMFeatureDescriptionOption);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_257BD0290(uint64_t a1)
{
  v2 = sub_257BD212C(&qword_27F8F4CC8, type metadata accessor for Key);
  v3 = sub_257BD212C(&qword_27F8F4CD0, type metadata accessor for Key);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_257BD034C(uint64_t a1)
{
  v2 = sub_257BD212C(&qword_27F8F4CB8, type metadata accessor for EventType);
  v3 = sub_257BD212C(&qword_27F8F4CC0, type metadata accessor for EventType);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_257BD0408(uint64_t a1)
{
  v2 = sub_257BD212C(&qword_27F8F4CA8, type metadata accessor for ParameterID);
  v3 = sub_257BD212C(&qword_27F8F4CB0, type metadata accessor for ParameterID);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_257BD04C4(uint64_t a1)
{
  v2 = sub_257BD212C(&qword_27F8F5088, type metadata accessor for AVVideoCodecType);
  v3 = sub_257BD212C(&qword_27F8F5090, type metadata accessor for AVVideoCodecType);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_257BD0580(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_257BD212C(&unk_27F8F4FD8, type metadata accessor for AVError);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

uint64_t sub_257BD0604(uint64_t a1)
{
  v2 = sub_257BD212C(&qword_27F8F5048, type metadata accessor for MatteType);
  v3 = sub_257BD212C(&qword_27F8F5050, type metadata accessor for MatteType);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_257BD06C0(uint64_t a1)
{
  v2 = sub_257BD212C(&qword_27F8F5028, type metadata accessor for VNRecognizedPointKey);
  v3 = sub_257BD212C(&qword_27F8F5030, type metadata accessor for VNRecognizedPointKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_257BD077C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_257ECF4C0();

  *a1 = v2;
  return result;
}

uint64_t sub_257BD07C4(uint64_t a1)
{
  v2 = sub_257BD212C(&qword_27F8F5008, type metadata accessor for OpenExternalURLOptionsKey);
  v3 = sub_257BD212C(&qword_27F8F5010, type metadata accessor for OpenExternalURLOptionsKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_257BD0880(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v4 = sub_257ECF500();
  v5 = a3(v4);

  return v5;
}

uint64_t sub_257BD08C4()
{
  sub_257ECF500();
  sub_257ECF5D0();
}

uint64_t sub_257BD0918()
{
  sub_257ECF500();
  sub_257ED07B0();
  sub_257ECF5D0();
  v0 = sub_257ED0800();

  return v0;
}

uint64_t sub_257BD098C()
{
  v0 = sub_257ECF500();
  v2 = v1;
  if (v0 == sub_257ECF500() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_257ED0640();
  }

  return v5 & 1;
}

uint64_t sub_257BD0A14(unint64_t a1, uint64_t (*a2)(unint64_t, void))
{
  if (a1 > 3)
  {
    return 0;
  }

  else
  {
    return a2(a1, a2);
  }
}

id sub_257BD0A48(id result)
{
  if (result)
  {
    v1 = result;
    result = [result tag];
    if (result <= 3)
    {
      v2 = result;
      if ([v1 isOn])
      {
        if (qword_281544FE0 != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        v3 = qword_2815447E0;

        if (v3 != -1)
        {
          v4 = swift_once();
        }

        MEMORY[0x28223BE20](v4);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F4B90);
        sub_257ECFD50();

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5D00);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_257ED6D30;
        *(inited + 32) = v2;
        sub_257EB04EC(inited);
        sub_257D4F488(v15, 1);
      }

      else
      {
        if (qword_281544FE0 != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        v6 = qword_2815447E0;

        if (v6 != -1)
        {
          v7 = swift_once();
        }

        MEMORY[0x28223BE20](v7);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F4B90);
        sub_257ECFD50();

        v8 = *(v15 + 16);
        if (v8)
        {
          v9 = (v15 + 32);
          v10 = MEMORY[0x277D84F90];
          do
          {
            v14 = *v9++;
            v13 = v14;
            if (v14 != v2)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_257BF25C4(0, *(v10 + 16) + 1, 1);
              }

              v12 = *(v10 + 16);
              v11 = *(v10 + 24);
              if (v12 >= v11 >> 1)
              {
                sub_257BF25C4((v11 > 1), v12 + 1, 1);
              }

              *(v10 + 16) = v12 + 1;
              *(v10 + v12 + 32) = v13;
            }

            --v8;
          }

          while (v8);
        }

        else
        {
          v10 = MEMORY[0x277D84F90];
        }

        sub_257D4F488(v10, 1);
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_257BD0E30(void *a1)
{
  v3 = sub_257ECF120();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_281544FE0 == -1)
  {
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  swift_once();
  if (!a1)
  {
    goto LABEL_6;
  }

LABEL_3:
  v7 = qword_281548348;
  v8 = [a1 isOn];
  v1 = v7 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__objectUnderstandingSeatOccupancy;
  swift_beginAccess();
  v12 = v8;
  if (qword_2815447E0 != -1)
  {
LABEL_7:
    swift_once();
  }

  v9 = sub_257ECF110();
  MEMORY[0x28223BE20](v9);
  *&v11[-16] = &v12;
  *&v11[-8] = v1;
  sub_257ECFD40();
  (*(v4 + 8))(v6, v3);
  return swift_endAccess();
}

void sub_257BD101C(void *a1)
{
  v2 = sub_257ECCDF0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_257ECCEB0();
  v72 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_257ECF120();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v73 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_257ECCE30();
  [a1 deselectRowAtIndexPath:v12 animated:1];

  v13 = sub_257ECCE30();
  v74 = [a1 cellForRowAtIndexPath_];

  if (!v74)
  {
    return;
  }

  v14 = sub_257ECCE60();
  if (!v14)
  {
    v71 = 0;
    goto LABEL_6;
  }

  if (v14 == 1)
  {
    v71 = 1;
LABEL_6:
    v66 = v5;
    v67 = v3;
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v69 = v9;
    v68 = v2;
    v65 = qword_281548348;
    v15 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__detectionUnit;
    swift_beginAccess();
    v16 = *(v15 + 8);
    v17 = *(v15 + 16);
    v78 = *v15;
    v79 = v16;
    LOBYTE(v80) = v17;
    v18 = qword_2815447E0;

    if (v18 != -1)
    {
      v19 = swift_once();
    }

    v20 = qword_2815447E8;
    MEMORY[0x28223BE20](v19);
    *(&v61 - 2) = &v78;
    v70 = v20;
    sub_257ECFD50();

    if (v71 != v82)
    {
      v21 = sub_257ECCEA0();
      if ((v21 - 1) >= 3 && !v21)
      {
        swift_beginAccess();
        v82 = v71;
        v22 = v73;
        v23 = sub_257ECF110();
        MEMORY[0x28223BE20](v23);
        *(&v61 - 2) = &v82;
        *(&v61 - 1) = v15;
        sub_257ECFD40();
        v24 = *(v10 + 8);
        v64 = v10 + 8;
        v63 = v24;
        v24(v22, v69);
        swift_endAccess();
        v25 = v65;
        v26 = swift_beginAccess();
        v27 = v25[16];
        v28 = v25[17];
        v29 = v25[18];
        v78 = v25[15];
        v79 = v27;
        v80 = v28;
        v81 = v29;
        MEMORY[0x28223BE20](v26);
        *(&v61 - 2) = &v78;

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D70);
        sub_257ECFD50();

        v30 = v76;
        if (v76)
        {
          v61 = v75;
          v31 = swift_beginAccess();
          v32 = v25[12];
          v33 = v25[13];
          v78 = v25[11];
          v79 = v32;
          v80 = v33;
          MEMORY[0x28223BE20](v31);
          *(&v61 - 2) = &v78;

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D90);
          sub_257ECFD50();

          v34 = v77;
          v35 = *(*&v77 + 16);
          v62 = 0;
          if (v35)
          {
            v36 = sub_257C03F6C(v61, v30);
            v38 = v37;

            v39 = &unk_279854000;
            if (v38)
            {
              v40 = *(*(*&v34 + 56) + 296 * v36 + 78);

              if (v71 != v40)
              {
                swift_getKeyPath();
                swift_getKeyPath();
                LOBYTE(v78) = 1;
                sub_257ECC3F0();
                sub_257ECDD70();
              }
            }

            else
            {
            }
          }

          else
          {

            v39 = &unk_279854000;
          }
        }

        else
        {
          v62 = 0;
          v39 = &unk_279854000;
        }

        v42 = (v72 + 8);
        MEMORY[0x259C6F970](0, 0);
        v43 = sub_257ECCE30();
        v44 = [a1 v39[455]];

        if (v44)
        {
          [v44 setAccessoryType_];
        }

        v45 = *v42;
        (*v42)(v8, v6);
        MEMORY[0x259C6F970](1, 0);
        v46 = sub_257ECCE30();
        v47 = [a1 v39[455]];

        if (v47)
        {
          [v47 setAccessoryType_];
        }

        v45(v8, v6);
        [v74 setAccessoryType_];
        if (v71)
        {
          v48 = 6.0;
        }

        else
        {
          v48 = 2.0;
        }

        v49 = v25 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__detectionPitchThreshold;
        swift_beginAccess();
        v77 = v48;
        v50 = v73;
        v51 = sub_257ECF110();
        MEMORY[0x28223BE20](v51);
        *(&v61 - 2) = &v77;
        *(&v61 - 1) = v49;
        sub_257ECFD40();
        v52 = v69;
        v53 = v63;
        v63(v50, v69);
        swift_endAccess();
        v54 = v25 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__doorDetectionPitchThreshold;
        swift_beginAccess();
        v77 = v48;
        v55 = sub_257ECF110();
        MEMORY[0x28223BE20](v55);
        *(&v61 - 2) = &v77;
        *(&v61 - 1) = v54;
        sub_257ECFD40();
        v53(v50, v52);
        swift_endAccess();
        v56 = v25 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__objectUnderstandingPitchThreshold;
        swift_beginAccess();
        v77 = v48;
        v57 = sub_257ECF110();
        MEMORY[0x28223BE20](v57);
        *(&v61 - 2) = &v77;
        *(&v61 - 1) = v56;
        sub_257ECFD40();
        v53(v50, v52);
        swift_endAccess();
        [a1 beginUpdates];
        v78 = &unk_286903B30;
        sub_257BD212C(&qword_27F8F58A0, MEMORY[0x277CC9A28]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D80);
        sub_257BD2D4C(&qword_27F8F58B0, &unk_27F8F4D80);
        v58 = v66;
        v59 = v68;
        sub_257ED0180();
        v60 = sub_257ECCDE0();
        (*(v67 + 8))(v58, v59);
        [a1 reloadSections:v60 withRowAnimation:100];

        [a1 endUpdates];
      }
    }

    return;
  }

  v41 = v74;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_257BD1B90(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return sub_257ECC3F0();
  }

  else
  {
  }
}

unint64_t sub_257BD1BA0()
{
  result = qword_27F8F4970;
  if (!qword_27F8F4970)
  {
    sub_257ECE1A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F4970);
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_257BD1CAC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_257BD1CCC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 48) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for MAGThermalMonitor.ThermalLevel(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MAGThermalMonitor.ThermalLevel(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 __swift_memcpy64_16(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_257BD1EC4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_257BD1EE4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 64) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for ObjectUnderstandingFeedback(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ObjectUnderstandingFeedback(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_257BD212C(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_257BD2204()
{
  result = qword_27F8F4B80;
  if (!qword_27F8F4B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F4B80);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_257BD2AC4()
{
  result = qword_27F8F4CF8;
  if (!qword_27F8F4CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F4CF8);
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_257ECC3F0();
}

uint64_t sub_257BD2C2C(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_257BD2C74()
{
  result = qword_281543D50;
  if (!qword_281543D50)
  {
    sub_257BD2C2C(255, &unk_281543D40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281543D50);
  }

  return result;
}

uint64_t sub_257BD2CDC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_257BD2D4C(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_257BD3AC0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

unint64_t sub_257BD3B58()
{
  result = qword_27F8F4FC8;
  if (!qword_27F8F4FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F4FC8);
  }

  return result;
}

uint64_t sub_257BD3DB0(uint64_t a1, uint64_t a2)
{
  v2[67] = a2;
  v2[66] = a1;
  v2[68] = type metadata accessor for MAGOutputEvent.EventType(0);
  v2[69] = swift_task_alloc();
  v2[70] = type metadata accessor for MAGOutputEvent(0);
  v2[71] = swift_task_alloc();
  v3 = sub_257ECF120();
  v2[72] = v3;
  v2[73] = *(v3 - 8);
  v2[74] = swift_task_alloc();
  v4 = sub_257ECF190();
  v2[75] = v4;
  v2[76] = *(v4 - 8);
  v2[77] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5250);
  v2[78] = swift_task_alloc();
  v5 = type metadata accessor for SpatialTextBlock();
  v2[79] = v5;
  v2[80] = *(v5 - 8);
  v2[81] = swift_task_alloc();
  v2[82] = swift_task_alloc();
  v6 = type metadata accessor for DetectedTextBlock();
  v2[83] = v6;
  v2[84] = *(v6 - 8);
  v2[85] = swift_task_alloc();
  v2[86] = swift_task_alloc();
  v2[87] = swift_task_alloc();
  v2[88] = type metadata accessor for MAGPointAndSpeakEvent.PointAndSpeakEventType(0);
  v2[89] = swift_task_alloc();
  sub_257ECF900();
  v2[90] = sub_257ECF8F0();
  v8 = sub_257ECF8B0();

  return MEMORY[0x2822009F8](sub_257BD40A8, v8, v7);
}

uint64_t sub_257BD40A8()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_43;
  }

  v2 = Strong;
  sub_257BD5724(*(v0 + 528), *(v0 + 712), type metadata accessor for MAGPointAndSpeakEvent.PointAndSpeakEventType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload <= 5)
    {
      if (EnumCaseMultiPayload == 4)
      {
        v24 = *(v0 + 712);
        v25 = *(v0 + 616);
        v139 = *(v0 + 608);
        v145 = *(v0 + 600);
        v26 = *(v0 + 592);
        v27 = *(v0 + 584);
        v28 = *(v0 + 576);
        v29 = v2;
        v31 = *v24;
        v30 = v24[1];
        sub_257BD52CC();
        v133 = sub_257ECFD30();
        v32 = swift_allocObject();
        v32[2] = v29;
        v32[3] = v31;
        v32[4] = v30;
        *(v0 + 96) = sub_257BD57C4;
        *(v0 + 104) = v32;
        *(v0 + 64) = MEMORY[0x277D85DD0];
        *(v0 + 72) = 1107296256;
        *(v0 + 80) = sub_257D231C0;
        *(v0 + 88) = &block_descriptor_6;
        v33 = _Block_copy((v0 + 64));
        v34 = v29;

        sub_257ECF150();
        *(v0 + 520) = MEMORY[0x277D84F90];
        sub_257BD5668();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480);
        sub_257BD56C0();
        sub_257ED0180();
        MEMORY[0x259C72880](0, v25, v26, v33);
        _Block_release(v33);

        (*(v27 + 8))(v26, v28);
        (*(v139 + 8))(v25, v145);
      }

      else
      {
        sub_257CEBD80();
      }
    }

    else if (EnumCaseMultiPayload == 6)
    {
      sub_257CEC1E8();
    }

    else if (EnumCaseMultiPayload == 7)
    {
      sub_257CEC4E0();
    }

    else
    {
      type metadata accessor for MAGUtilities();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v67 = [objc_opt_self() bundleForClass_];
      v68 = sub_257ECF4C0();
      v69 = sub_257ECF4C0();
      v70 = [v67 localizedStringForKey:v68 value:0 table:v69];

      v71 = sub_257ECF500();
      v73 = v72;

      v74 = objc_opt_self();

      v75 = [v74 currentLanguageCode];
      v76 = sub_257ECF500();
      v78 = v77;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5258);
      v79 = swift_allocObject();
      *(v79 + 16) = xmmword_257ED6D30;
      v118 = v71;
      *(v79 + 32) = v71;
      *(v79 + 40) = v73;
      v141 = v73;
      *(v79 + 48) = v76;
      *(v79 + 56) = v78;
      v80 = MEMORY[0x277CBF3A0];
      if (qword_281544FE0 != -1)
      {
        swift_once();
      }

      v147 = v2;
      v121 = v80[1];
      v122 = *v80;
      v129 = qword_281548348;
      v81 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__detectLanguages;
      swift_beginAccess();
      v82 = *(v81 + 8);
      v83 = *(v81 + 16);
      *(v0 + 472) = *v81;
      *(v0 + 480) = v82;
      *(v0 + 488) = v83;
      v84 = qword_2815447E0;

      if (v84 != -1)
      {
        swift_once();
      }

      v85 = *(v0 + 680);
      v86 = *(v0 + 664);
      v87 = v0;
      v88 = *(v0 + 568);
      v123 = *(v0 + 560);
      v119 = *(v0 + 672);
      v120 = *(v0 + 552);
      *(swift_task_alloc() + 16) = v0 + 472;
      sub_257ECFD50();

      v89 = *(v0 + 489);
      sub_257ECCCE0();
      v90 = v86[9];
      *(v85 + v86[5]) = v79;
      v91 = (v85 + v86[6]);
      *v91 = v122;
      v91[1] = v121;
      *(v85 + v86[7]) = 0;
      *(v85 + v86[8]) = v89;
      *(v85 + v90) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5260);
      v92 = (*(v119 + 80) + 32) & ~*(v119 + 80);
      v93 = swift_allocObject();
      *(v93 + 16) = xmmword_257ED6D30;
      sub_257BD5724(v85, v93 + v92, type metadata accessor for DetectedTextBlock);
      *v120 = v93;
      swift_storeEnumTagMultiPayload();
      sub_257ECCCE0();
      sub_257BD5724(v120, v88 + v123[5], type metadata accessor for MAGOutputEvent.EventType);
      *(v88 + v123[6]) = 1;
      *(v88 + v123[7]) = 0;
      sub_257ECC3F0();
      sub_257BD57EC(v120, type metadata accessor for MAGOutputEvent.EventType);
      *(v88 + v123[8]) = v129;
      sub_257CBBC80(v88);
      sub_257BD57EC(v88, type metadata accessor for MAGOutputEvent);
      if (_s16MagnifierSupport013MAGAutomationB0V17automationEnabledSbvgZ_0())
      {
        v94 = qword_281548358;
        v125 = qword_281548358 + 48;
        swift_beginAccess();
        v95 = *(v94 + 56);
        *(v87 + 304) = *(v94 + 48);
        *(v87 + 312) = v95;
        *(swift_task_alloc() + 16) = v87 + 304;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9D90);
        sub_257ECFD50();

        v96 = *(v87 + 504);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v96 = sub_257BFCB3C(0, *(v96 + 2) + 1, 1, v96);
        }

        v98 = *(v96 + 2);
        v97 = *(v96 + 3);
        if (v98 >= v97 >> 1)
        {
          v96 = sub_257BFCB3C((v97 > 1), v98 + 1, 1, v96);
        }

        v135 = *(v87 + 680);
        v99 = *(v87 + 592);
        v100 = *(v87 + 584);
        v101 = *(v87 + 576);
        *(v96 + 2) = v98 + 1;
        v102 = &v96[16 * v98];
        *(v102 + 4) = v118;
        *(v102 + 5) = v141;
        *(v87 + 512) = v96;
        sub_257ECF110();
        v103 = swift_task_alloc();
        *(v103 + 16) = v87 + 512;
        *(v103 + 24) = v125;
        sub_257ECFD40();

        v0 = v87;
        (*(v100 + 8))(v99, v101);

        swift_endAccess();

        sub_257BD57EC(v135, type metadata accessor for DetectedTextBlock);
      }

      else
      {
        sub_257BD57EC(*(v87 + 680), type metadata accessor for DetectedTextBlock);

        v0 = v87;
      }
    }

    goto LABEL_43;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      sub_257CECE74(**(v0 + 712));

      goto LABEL_43;
    }

    v12 = *(v0 + 648);
    v13 = *(v0 + 632);
    sub_257BD584C(*(v0 + 712), v12, type metadata accessor for SpatialTextBlock);
    v14 = *(v12 + *(v13 + 20));
    v15 = (v12 + *(v13 + 36));
    v138 = v15[1];
    v144 = *v15;
    v127 = v15[3];
    v132 = v15[2];
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v16 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__pointSpeakColor;
    swift_beginAccess();
    v17 = *(v16 + 8);
    v18 = *(v16 + 32);
    v19 = *(v16 + 16);
    *(v0 + 112) = *v16;
    *(v0 + 120) = v17;
    *(v0 + 128) = v19;
    *(v0 + 144) = v18;
    v20 = qword_2815447E0;

    if (v20 != -1)
    {
      swift_once();
    }

    v21 = *(v0 + 648);
    *(swift_task_alloc() + 16) = v0 + 112;
    sub_257ECFD50();

    v22 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:*(v0 + 352) green:*(v0 + 360) blue:*(v0 + 368) alpha:1.0];
    sub_257CEC88C(v22, v14, *&v144, *&v138, *&v132, *&v127);

    v23 = type metadata accessor for SpatialTextBlock;
LABEL_29:
    sub_257BD57EC(v21, v23);
    goto LABEL_43;
  }

  if (!EnumCaseMultiPayload)
  {
    v4 = *(v0 + 616);
    v5 = *(v0 + 608);
    v143 = *(v0 + 600);
    v6 = *(v0 + 592);
    v7 = *(v0 + 584);
    v8 = *(v0 + 576);
    v131 = **(v0 + 712);
    sub_257BD52CC();
    v137 = sub_257ECFD30();
    v9 = swift_allocObject();
    *(v9 + 16) = v2;
    *(v9 + 32) = v131;
    *(v0 + 48) = sub_257BD5644;
    *(v0 + 56) = v9;
    *(v0 + 16) = MEMORY[0x277D85DD0];
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_257D231C0;
    *(v0 + 40) = &block_descriptor_0;
    v10 = _Block_copy((v0 + 16));
    v11 = v2;

    sub_257ECF150();
    *(v0 + 496) = MEMORY[0x277D84F90];
    sub_257BD5668();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480);
    sub_257BD56C0();
    sub_257ED0180();
    MEMORY[0x259C72880](0, v4, v6, v10);
    _Block_release(v10);

    (*(v7 + 8))(v6, v8);
    (*(v5 + 8))(v4, v143);
    goto LABEL_43;
  }

  v35 = *(v0 + 712);
  v36 = *(v0 + 696);
  v37 = *v35;
  v38 = v35[1];
  v39 = v35[2];
  v40 = v35[3];
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F8F5268);
  v42 = *(v35 + v41[16]);
  v43 = *(v35 + v41[20]);
  v44 = *(v35 + v41[24]);
  v45 = *(v35 + v41[28]);
  sub_257BD584C(v35 + v41[12], v36, type metadata accessor for DetectedTextBlock);
  if (!v43 || !v42 || !v44)
  {
LABEL_24:
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v60 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__pointSpeakColor;
    swift_beginAccess();
    v61 = *(v60 + 8);
    v62 = *(v60 + 32);
    v63 = *(v60 + 16);
    *(v0 + 152) = *v60;
    *(v0 + 160) = v61;
    *(v0 + 168) = v63;
    *(v0 + 184) = v62;
    v64 = qword_2815447E0;

    if (v64 != -1)
    {
      swift_once();
    }

    v21 = *(v0 + 696);
    *(swift_task_alloc() + 16) = v0 + 152;
    sub_257ECFD50();

    v65 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:*(v0 + 400) green:*(v0 + 408) blue:*(v0 + 416) alpha:1.0];
    sub_257CECAF4(v65, 0, v37, v38, v39, v40);

    v23 = type metadata accessor for DetectedTextBlock;
    goto LABEL_29;
  }

  v146 = v2;
  v46 = *(v0 + 696);
  v47 = v42;
  v48 = *(v0 + 688);
  v49 = *(v0 + 640);
  v140 = *(v0 + 632);
  v50 = v44;
  v51 = v0;
  v52 = *(v0 + 624);
  sub_257BD5724(v46, v48, type metadata accessor for DetectedTextBlock);
  v53 = v43;
  v128 = v47;
  v54 = v47;
  v134 = v50;
  v55 = v50;
  v56 = v53;
  v57 = v54;
  v58 = v55;
  sub_257EACA08(v48, v57, v56, v58, v45, v52);
  if ((*(v49 + 48))(v52, 1, v140) == 1)
  {
    v59 = *(v51 + 624);

    sub_257BD58B4(v59);
    v0 = v51;
    v2 = v146;
    v44 = v134;
    v42 = v128;
    goto LABEL_24;
  }

  v106 = v57;
  v107 = *(v51 + 656);
  v108 = *(v51 + 632);
  sub_257BD584C(*(v51 + 624), v107, type metadata accessor for SpatialTextBlock);
  v109 = *(v107 + *(v108 + 20));
  v110 = (v107 + *(v108 + 36));
  v136 = v110[1];
  v142 = *v110;
  v126 = v110[3];
  v130 = v110[2];
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v111 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__pointSpeakColor;
  swift_beginAccess();
  v112 = *(v111 + 8);
  v113 = *(v111 + 32);
  v114 = *(v111 + 16);
  *(v51 + 192) = *v111;
  *(v51 + 200) = v112;
  *(v51 + 208) = v114;
  *(v51 + 224) = v113;
  v115 = qword_2815447E0;

  if (v115 != -1)
  {
    swift_once();
  }

  v124 = *(v51 + 696);
  v116 = *(v51 + 656);
  *(swift_task_alloc() + 16) = v51 + 192;
  sub_257ECFD50();

  v117 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:*(v51 + 448) green:*(v51 + 456) blue:*(v51 + 464) alpha:1.0];
  sub_257CEC88C(v117, v109, *&v142, *&v136, *&v130, *&v126);

  v0 = v51;
  sub_257BD57EC(v116, type metadata accessor for SpatialTextBlock);
  sub_257BD57EC(v124, type metadata accessor for DetectedTextBlock);
LABEL_43:

  v104 = *(v0 + 8);

  return v104();
}

void sub_257BD5258(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_257E003E8();
  v6 = sub_257E00504();
  sub_257DFD370(a2, a3, v5, v6);
}

unint64_t sub_257BD52CC()
{
  result = qword_281543F10;
  if (!qword_281543F10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281543F10);
  }

  return result;
}

void sub_257BD5318(uint64_t a1, __n128 a2)
{
  v3 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_fingerTipScene;
  if (!*(a1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_fingerTipScene))
  {
    v4 = [objc_allocWithZone(MEMORY[0x277CDBAF8]) init];
    v5 = [objc_opt_self() sphereWithRadius_];
    v6 = [v5 firstMaterial];
    if (v6)
    {
      v7 = v6;
      v8 = [v6 diffuse];

      v9 = [objc_opt_self() redColor];
      [v8 setContents_];
    }

    v10 = [objc_opt_self() nodeWithGeometry_];

    [v10 setHidden_];
    v11 = *(a1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_fingerTip);
    *(a1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_fingerTip) = v10;
    v12 = v10;

    v13 = [v4 rootNode];
    [v13 addChildNode_];

    v14 = *(a1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_arOverlayView);
    [v14 setScene_];

    v15 = *(a1 + v3);
    *(a1 + v3) = v4;
  }

  v16 = *(a1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_fingerTip);
  if (v16)
  {
    v17 = *(a1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_arOverlayView);
    if (v17)
    {
      v30 = v16;
      v18 = [v17 session];
      v19 = [v18 currentFrame];

      if (v19)
      {
        v20 = [v19 camera];

        [v20 transform];
        v25 = v21;
        v26 = v22;
        v27 = v24;
        v28 = v23;

        [v30 setSimdWorldPosition_];
        [v30 setHidden_];
      }
    }
  }
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_257ECC3F0();
}

unint64_t sub_257BD5668()
{
  result = qword_281544090;
  if (!qword_281544090)
  {
    sub_257ECF120();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281544090);
  }

  return result;
}

unint64_t sub_257BD56C0()
{
  result = qword_281543FB0;
  if (!qword_281543FB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F8F5480);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281543FB0);
  }

  return result;
}

uint64_t sub_257BD5724(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_257BD57EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_257BD584C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_257BD58B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5250);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_257BD5944()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_257BD59C4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 16) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 16) & ~v6);
      }

      v15 = *(a1 + 1);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_257BD5B48(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 16) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 16] & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

uint64_t sub_257BD5DB0()
{
  v0 = sub_257ECFD20();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_257ECF190();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_257ECFCB0();
  MEMORY[0x28223BE20](v5 - 8);
  sub_257BD52CC();
  sub_257ECFCA0();
  sub_257ECF150();
  (*(v1 + 104))(v3, *MEMORY[0x277D85260], v0);
  result = sub_257ECFD80();
  qword_2815447E8 = result;
  return result;
}

uint64_t sub_257BD5F90()
{
  v1[16] = v0;
  v2 = sub_257ECF120();
  v1[17] = v2;
  v1[18] = *(v2 - 8);
  v1[19] = swift_task_alloc();
  v3 = sub_257ECF190();
  v1[20] = v3;
  v1[21] = *(v3 - 8);
  v1[22] = swift_task_alloc();
  v4 = type metadata accessor for MAGOutputEngine.Event(0);
  v1[23] = v4;
  v1[24] = *(v4 - 8);
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F52F0);
  v1[29] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F52F8);
  v1[30] = v5;
  v1[31] = *(v5 - 8);
  v1[32] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5300);
  v1[33] = v6;
  v1[34] = *(v6 - 8);
  v1[35] = swift_task_alloc();
  v1[36] = sub_257ECF900();
  v1[37] = sub_257ECF8F0();
  v8 = sub_257ECF8B0();
  v1[38] = v8;
  v1[39] = v7;

  return MEMORY[0x2822009F8](sub_257BD626C, v8, v7);
}

uint64_t sub_257BD626C()
{
  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[30];
  sub_257ECD300();
  sub_257ECF970();
  (*(v2 + 8))(v1, v3);
  v4 = sub_257ECF8F0();
  v0[40] = v4;
  v5 = swift_task_alloc();
  v0[41] = v5;
  *v5 = v0;
  v5[1] = sub_257BD6394;
  v6 = v0[33];
  v7 = v0[29];
  v8 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v7, v4, v8, v6);
}

uint64_t sub_257BD6394()
{
  v1 = *v0;

  v2 = *(v1 + 312);
  v3 = *(v1 + 304);

  return MEMORY[0x2822009F8](sub_257BD64D8, v3, v2);
}

uint64_t sub_257BD64D8()
{
  v1 = v0[29];
  if ((*(v0[24] + 48))(v1, 1, v0[23]) == 1)
  {
    (*(v0[34] + 8))(v0[35], v0[33]);

    v2 = v0[1];

    return v2();
  }

  v5 = v0[27];
  v4 = v0[28];
  sub_257BDAB5C(v1, v4);
  sub_257BDABC0(v4, v5, type metadata accessor for MAGOutputEngine.Event);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v7 = v0[27];
  v8 = v0[28];
  if (EnumCaseMultiPayload != 2)
  {
    v18 = v0[26];
    sub_257BDAC28(v7, type metadata accessor for MAGOutputEngine.Event);
    sub_257BDABC0(v8, v18, type metadata accessor for MAGOutputEngine.Event);
    v19 = swift_getEnumCaseMultiPayload();
    v20 = v0[28];
    v21 = v0[26];
    if (v19 == 3)
    {
      sub_257BDAC28(v0[28], type metadata accessor for MAGOutputEngine.Event);
      v22 = v21;
    }

    else
    {
      v23 = v0[25];
      sub_257BDAC28(v0[26], type metadata accessor for MAGOutputEngine.Event);
      sub_257BDABC0(v20, v23, type metadata accessor for MAGOutputEngine.Event);
      v24 = swift_getEnumCaseMultiPayload();
      v25 = v0[25];
      if (v24 == 4)
      {
        v41 = v0[22];
        v26 = v0[19];
        v47 = v0[21];
        v49 = v0[20];
        v28 = v0[17];
        v27 = v0[18];
        v29 = v0[16];
        v31 = *v25;
        v30 = v25[1];
        v45 = v0[28];
        sub_257BD52CC();
        v43 = sub_257ECFD30();
        v32 = swift_allocObject();
        v32[2] = v31;
        v32[3] = v30;
        v32[4] = v29;
        v0[6] = sub_257BDAC88;
        v0[7] = v32;
        v0[2] = MEMORY[0x277D85DD0];
        v0[3] = 1107296256;
        v0[4] = sub_257D231C0;
        v0[5] = &block_descriptor_27;
        v33 = _Block_copy(v0 + 2);
        v34 = v29;
        sub_257ECF150();
        v0[14] = MEMORY[0x277D84F90];
        sub_257BD5668();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480);
        sub_257BD56C0();
        sub_257ED0180();
        MEMORY[0x259C72880](0, v41, v26, v33);
        _Block_release(v33);

        (*(v27 + 8))(v26, v28);
        (*(v47 + 8))(v41, v49);
        sub_257BDAC28(v45, type metadata accessor for MAGOutputEngine.Event);
        goto LABEL_7;
      }

      sub_257BDAC28(v0[28], type metadata accessor for MAGOutputEngine.Event);
      v22 = v25;
    }

    sub_257BDAC28(v22, type metadata accessor for MAGOutputEngine.Event);
    goto LABEL_14;
  }

  v40 = v0[22];
  v9 = v0[19];
  v44 = v0[21];
  v46 = v0[20];
  v48 = v0[28];
  v11 = v0[17];
  v10 = v0[18];
  v12 = v0[16];
  v14 = *v7;
  v13 = v7[1];
  sub_257BD52CC();
  v42 = sub_257ECFD30();
  v15 = swift_allocObject();
  v15[2] = v12;
  v15[3] = v14;
  v15[4] = v13;
  v0[12] = sub_257BDAC94;
  v0[13] = v15;
  v0[8] = MEMORY[0x277D85DD0];
  v0[9] = 1107296256;
  v0[10] = sub_257D231C0;
  v0[11] = &block_descriptor_33;
  v16 = _Block_copy(v0 + 8);
  v17 = v12;
  sub_257ECF150();
  v0[15] = MEMORY[0x277D84F90];
  sub_257BD5668();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480);
  sub_257BD56C0();
  sub_257ED0180();
  MEMORY[0x259C72880](0, v40, v9, v16);
  _Block_release(v16);

  (*(v10 + 8))(v9, v11);
  (*(v44 + 8))(v40, v46);
  sub_257BDAC28(v48, type metadata accessor for MAGOutputEngine.Event);
LABEL_7:

LABEL_14:
  v35 = sub_257ECF8F0();
  v0[40] = v35;
  v36 = swift_task_alloc();
  v0[41] = v36;
  *v36 = v0;
  v36[1] = sub_257BD6394;
  v37 = v0[33];
  v38 = v0[29];
  v39 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v38, v35, v39, v37);
}

void sub_257BD6B1C(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_detectionLabel;
  [*(a1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_detectionLabel) setHidden_];
  v3 = *(a1 + v2);
  v4 = sub_257ECF4C0();
  [v3 setText_];
}

id sub_257BD6BBC(uint64_t a1, uint64_t a2, char *a3)
{
  v6 = sub_257ECF100();
  v42 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = (&v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_257ECF1B0();
  v43 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v39 - v13;
  v15 = sub_257ECF120();
  MEMORY[0x28223BE20](v15);
  if (!a1 && a2 == 0xE000000000000000 || (sub_257ED0640() & 1) != 0)
  {
    v16 = *&a3[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_documentDialogView];

    return [v16 setHidden_];
  }

  else
  {
    v40 = v6;
    v41 = v9;
    [*&a3[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_detectionLabel] setHidden_];
    v18 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_documentDialogView;
    [*&a3[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_documentDialogView] setHidden_];
    v19 = *&a3[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_documentResponseLabel];
    v20 = sub_257ECF4C0();
    [v19 setText_];

    v21 = [*&a3[v18] layer];
    [*&a3[v18] frame];
    v23 = v22 * 0.5;
    [*&a3[v18] frame];
    if (v24 * 0.5 >= v23)
    {
      v25 = v23;
    }

    else
    {
      v25 = v24 * 0.5;
    }

    v26 = [objc_opt_self() preferredFontForTextStyle_];
    [v26 lineHeight];
    v28 = v27;

    v29 = (v28 + 40.0) * 0.5;
    if (v25 > v29)
    {
      v29 = v25;
    }

    [v21 setCornerRadius_];

    v30 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_documentDialogWorkItem;
    if (*&a3[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_documentDialogWorkItem])
    {
      sub_257ECC3F0();
      sub_257ECF1E0();
    }

    v31 = swift_allocObject();
    *(v31 + 16) = a3;
    aBlock[4] = sub_257BDACA0;
    aBlock[5] = v31;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_257D231C0;
    aBlock[3] = &block_descriptor_39;
    _Block_copy(aBlock);
    v44 = MEMORY[0x277D84F90];
    sub_257BD5668();
    v32 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480);
    sub_257BD56C0();
    sub_257ED0180();
    sub_257ECF1F0();
    swift_allocObject();
    v33 = sub_257ECF1D0();

    *&a3[v30] = v33;
    sub_257ECC3F0();

    sub_257BD52CC();
    v34 = sub_257ECFD30();
    sub_257ECF1A0();
    *v8 = 10;
    v35 = v42;
    v36 = v40;
    (*(v42 + 104))(v8, *MEMORY[0x277D85188], v40);
    MEMORY[0x259C71D30](v12, v8);
    (*(v35 + 8))(v8, v36);
    v37 = *(v43 + 8);
    v38 = v41;
    v37(v12, v41);
    sub_257ECFCD0();

    return (v37)(v14, v38);
  }
}

uint64_t sub_257BD7140(void *a1, _BYTE *a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  *v96 = 0;
  sub_257BD7E34(a1, &v96[1], v96);
  swift_beginAccess();
  if (byte_27F8F87B0 == 1)
  {
    result = 1;
    *a2 = 1;
    return result;
  }

  if (v96[1] == 1)
  {
    v10 = v96[0];
    *a2 = v96[0];
    if (v10 != 1)
    {
      goto LABEL_24;
    }

    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v11 = qword_281548348;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if ((aBlock[0] & 1) != 0 || (swift_getKeyPath(), swift_getKeyPath(), sub_257ECDD60(), , , LOBYTE(aBlock[0]) == 1))
    {

      type metadata accessor for MAGUtilities();
      v86 = v11;
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v13 = objc_opt_self();
      v14 = [v13 bundleForClass_];
      v15 = sub_257ECF4C0();
      v16 = sub_257ECF4C0();
      v17 = [v14 localizedStringForKey:v15 value:0 table:v16];

      v18 = sub_257ECF500();
      v20 = v19;

      *a4 = v18;
      a4[1] = v20;
      v21 = [v13 bundleForClass_];
      v22 = sub_257ECF4C0();
      v23 = sub_257ECF4C0();
      v24 = [v21 localizedStringForKey:v22 value:0 table:v23];

      v25 = sub_257ECF500();
      v27 = v26;

      *a3 = v25;
      a3[1] = v27;
      v28 = v86 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__pointSpeakFlashlightEnabled;
      swift_beginAccess();
      v29 = *(v28 + 8);
      v30 = *(v28 + 16);
      v93[0] = *v28;
      v93[1] = v29;
      v94 = v30;
      v31 = qword_2815447E0;

      if (v31 != -1)
      {
        v32 = swift_once();
      }

      MEMORY[0x28223BE20](v32);
      sub_257ECFD50();

      if (v90 == 1 && (swift_getKeyPath(), swift_getKeyPath(), sub_257ECDD60(), , , (v93[0] & 1) != 0) || (v33 = v86 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__textDetectionFlashlightEnabled, v34 = swift_beginAccess(), v35 = *(v33 + 8), v36 = *(v33 + 16), v90 = *v33, v91 = v35, v92 = v36, MEMORY[0x28223BE20](v34), , sub_257ECFD50(), , v87 == 1) && (swift_getKeyPath(), swift_getKeyPath(), sub_257ECDD60(), , , v90 == 1))
      {
        if ((*(v5 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_toggledDetectionModeFlashlightOff) & 1) == 0)
        {

          v37 = [v13 bundleForClass_];
          v38 = sub_257ECF4C0();
          v39 = sub_257ECF4C0();
          v40 = [v37 localizedStringForKey:v38 value:0 table:v39];

          v41 = sub_257ECF500();
          v43 = v42;

          v90 = v41;
          v91 = v43;
          v88 = sub_257ECF710();
          v89 = v44;
          sub_257ECF620();

          *a4 = v88;
          a4[1] = v89;
          sub_257BD7F48();
          return 0;
        }
      }
    }

    else
    {
LABEL_24:
      if (qword_281544FE0 != -1)
      {
        swift_once();
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_257ECDD60();

      if ((aBlock[0] & 1) == 0)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        sub_257ECDD60();

        type metadata accessor for MAGUtilities();
        v70 = swift_getObjCClassFromMetadata();
        v71 = objc_opt_self();
        v72 = [v71 bundleForClass_];
        v73 = sub_257ECF4C0();
        v74 = sub_257ECF4C0();
        v75 = [v72 localizedStringForKey:v73 value:0 table:v74];

        v76 = sub_257ECF500();
        v78 = v77;

        *a4 = v76;
        a4[1] = v78;
        v79 = [v71 bundleForClass_];
        v80 = sub_257ECF4C0();
        v81 = sub_257ECF4C0();
        v82 = [v79 localizedStringForKey:v80 value:0 table:v81];

        v83 = sub_257ECF500();
        v85 = v84;

        result = 0;
        *a3 = v83;
        a3[1] = v85;
        return result;
      }
    }

    return 0;
  }

  else
  {

    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if ((aBlock[0] & 1) != 0 || (swift_getKeyPath(), swift_getKeyPath(), sub_257ECDD60(), , , LOBYTE(aBlock[0]) == 1))
    {
      *(v4 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_detectionModeTooDarkToDetect) = 0;
    }

    LOBYTE(v93[0]) = 0;
    LOBYTE(v90) = 0;
    sub_257BD8568(v93, &v90);
    if (LOBYTE(v93[0]) == 1)
    {
      type metadata accessor for MAGUtilities();
      v45 = swift_getObjCClassFromMetadata();
      v46 = objc_opt_self();
      v47 = [v46 bundleForClass_];
      v48 = sub_257ECF4C0();
      v49 = sub_257ECF4C0();
      v50 = [v47 localizedStringForKey:v48 value:0 table:v49];

      v51 = sub_257ECF500();
      v53 = v52;

      *a4 = v51;
      a4[1] = v53;
      v54 = [v46 bundleForClass_];
      v55 = sub_257ECF4C0();
      v56 = sub_257ECF4C0();
      v57 = [v54 localizedStringForKey:v55 value:0 table:v56];

      v58 = sub_257ECF500();
      v60 = v59;

      result = 0;
      *a3 = v58;
      a3[1] = v60;
      *a2 = v90;
    }

    else
    {
      v61 = v96[0] | v90;
      *a2 = (v96[0] | v90) & 1;

      *a4 = 0;
      a4[1] = 0;
      *a3 = 0;
      a3[1] = 0;
      if (v61)
      {
        v62 = sub_257E003E8();
        v63 = sub_257E00504();
        *(v5 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_isInformationLabelVisible) = 0;
        v64 = objc_opt_self();
        v65 = swift_allocObject();
        *(v65 + 16) = v62;
        *(v65 + 24) = v63;
        aBlock[4] = sub_257BDAD38;
        aBlock[5] = v65;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_257D231C0;
        aBlock[3] = &block_descriptor_57;
        v66 = _Block_copy(aBlock);
        v67 = v62;
        v68 = v63;

        v69 = [v64 runningPropertyAnimatorWithDuration:0x20000 delay:v66 options:0 animations:0.2 completion:0.0];
        _Block_release(v66);
      }

      return 1;
    }
  }

  return result;
}

void sub_257BD7E34(void *a1, char *a2, _BYTE *a3)
{
  *a3 = 0;
  v6 = *(v3 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_luminanceManager);
  if (v6 && ((v8 = v6, v9 = [a1 capturedImage], objc_msgSend(v8, sel_computeLuminanceFromPixelBuffer_, v9), v11 = v10, v8, v9, v11 / 96.0 > 0.0) ? (v12 = v11 / 96.0 < 0.3) : (v12 = 0), v12))
  {
    v13 = 1;
    if ((*(v3 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_wasTooDarkToDetect) & 1) == 0)
    {
      *(v3 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_wasTooDarkToDetect) = 1;
      goto LABEL_11;
    }
  }

  else
  {
    if (*(v3 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_wasTooDarkToDetect) == 1)
    {
      v13 = 0;
      *(v3 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_wasTooDarkToDetect) = 0;
LABEL_11:
      *a3 = 1;
      goto LABEL_12;
    }

    v13 = 0;
  }

LABEL_12:
  *a2 = v13;
}

uint64_t sub_257BD7F48()
{
  v1 = sub_257ECF100();
  v50 = *(v1 - 8);
  v51 = v1;
  MEMORY[0x28223BE20](v1);
  v49 = (&v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v48 = sub_257ECF120();
  v46 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_257ECF190();
  v43 = *(v5 - 8);
  v44 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_257ECF1B0();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v34 - v13;
  v47 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_detectionModeFlashlightDispatchItem;
  if (*&v0[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_detectionModeFlashlightDispatchItem])
  {
    sub_257ECC3F0();
    sub_257ECF1E0();
  }

  v45 = sub_257BD52CC();
  v37 = sub_257ECFD30();
  sub_257ECF1A0();
  sub_257ECF220();
  v38 = *(v9 + 8);
  v38(v12, v8);
  v15 = swift_allocObject();
  *(v15 + 16) = v0;
  v57 = sub_257BDA96C;
  v58 = v15;
  aBlock = MEMORY[0x277D85DD0];
  v54 = 1107296256;
  v55 = sub_257D231C0;
  v56 = &block_descriptor_1;
  v16 = _Block_copy(&aBlock);
  v42 = v0;
  v17 = v0;
  v40 = v8;
  v35 = v17;

  sub_257ECF150();
  aBlock = MEMORY[0x277D84F90];
  sub_257BD5668();
  v39 = v9 + 8;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480);
  v41 = v12;
  v36 = v18;
  sub_257BD56C0();
  v19 = v48;
  sub_257ED0180();
  v20 = v37;
  MEMORY[0x259C727E0](v14, v7, v4, v16);
  _Block_release(v16);

  (*(v46 + 8))(v4, v19);
  (*(v43 + 8))(v7, v44);
  v21 = v8;
  v22 = v38;
  v38(v14, v21);
  v23 = swift_allocObject();
  v24 = v35;
  *(v23 + 16) = v35;
  v57 = sub_257BDAAE4;
  v58 = v23;
  aBlock = MEMORY[0x277D85DD0];
  v54 = 1107296256;
  v55 = sub_257D231C0;
  v56 = &block_descriptor_6_0;
  _Block_copy(&aBlock);
  v52 = MEMORY[0x277D84F90];
  v25 = v24;
  sub_257ED0180();
  sub_257ECF1F0();
  swift_allocObject();
  v26 = sub_257ECF1D0();

  *&v42[v47] = v26;
  sub_257ECC3F0();

  v27 = sub_257ECFD30();
  v28 = v41;
  sub_257ECF1A0();
  v30 = v49;
  v29 = v50;
  *v49 = 10;
  v31 = v51;
  (*(v29 + 104))(v30, *MEMORY[0x277D85188], v51);
  MEMORY[0x259C71D30](v28, v30);
  (*(v29 + 8))(v30, v31);
  v32 = v40;
  v22(v28, v40);
  sub_257ECFCD0();

  return (v22)(v14, v32);
}

uint64_t sub_257BD8568(char *a1, _BYTE *a2)
{
  v5 = sub_257ECCC80();
  v6 = *(v5 - 8);
  result = MEMORY[0x28223BE20](v5);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a2 = 0;
  v10 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_rotationRateManager);
  if (!v10)
  {
    goto LABEL_11;
  }

  v11 = *(v10 + 16);
  sub_257ECC3F0();
  v12 = [v11 deviceMotion];
  if (!v12 || (v13 = v12, [v12 rotationRate], v15 = v14, v17 = v16, v19 = v18, v13, sqrt(v19 * v19 + v15 * v15 + v17 * v17) <= 5.0))
  {
    v22 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_wasTooFastToDetect;
    if (*(v2 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_wasTooFastToDetect) == 1)
    {
      v23 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_tooFastLastDate;
      swift_beginAccess();
      (*(v6 + 16))(v9, v2 + v23, v5);
      sub_257ECCC10();
      v25 = v24;

      result = (*(v6 + 8))(v9, v5);
      v21 = 1;
      if (v25 > -1.0)
      {
        goto LABEL_12;
      }

      *(v2 + v22) = 0;
      *a2 = 1;
    }

    else
    {
    }

LABEL_11:
    v21 = 0;
    goto LABEL_12;
  }

  if ((*(v2 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_wasTooFastToDetect) & 1) == 0)
  {
    *(v2 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_wasTooFastToDetect) = 1;
    *a2 = 1;
  }

  sub_257ECCC70();

  v20 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_tooFastLastDate;
  swift_beginAccess();
  (*(v6 + 40))(v2 + v20, v9, v5);
  result = swift_endAccess();
  v21 = 1;
LABEL_12:
  *a1 = v21;
  return result;
}

uint64_t sub_257BD87F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v59 = a5;
  v60 = a4;
  v58 = a3;
  v54 = type metadata accessor for MAGOutputEvent.EventType(0);
  MEMORY[0x28223BE20](v54);
  v57 = v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for MAGOutputEvent(0);
  MEMORY[0x28223BE20](v56);
  v55 = v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_257ECF120();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_257ECF190();
  v15 = *(v14 - 8);
  result = MEMORY[0x28223BE20](v14);
  v18 = v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    if (v60)
    {
      sub_257BD52CC();

      v53 = sub_257ECFD30();
      v19 = swift_allocObject();
      v19[2] = v5;
      v19[3] = a1;
      v19[4] = a2;
      aBlock[4] = sub_257BDAD04;
      aBlock[5] = v19;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_257D231C0;
      aBlock[3] = &block_descriptor_45;
      v20 = _Block_copy(aBlock);
      v52[1] = v5;

      sub_257ECF150();
      aBlock[0] = MEMORY[0x277D84F90];
      sub_257BD5668();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480);
      sub_257BD56C0();
      sub_257ED0180();
      v21 = v53;
      MEMORY[0x259C72880](0, v18, v13, v20);
      _Block_release(v20);

      (*(v11 + 8))(v13, v10);
      result = (*(v15 + 8))(v18, v14);
      if (v59)
      {
        if (qword_281544FE0 != -1)
        {
          swift_once();
        }

        v22 = qword_281548348;
        v23 = (qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedPauseDetectionModeFeedbacks);
        swift_beginAccess();
        v24 = v23[1];
        v25 = v23[2];
        v61[0] = *v23;
        v61[1] = v24;
        v61[2] = v25;
        v26 = qword_2815447E0;

        if (v26 != -1)
        {
          v27 = swift_once();
        }

        MEMORY[0x28223BE20](v27);
        v52[-2] = v61;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7080);
        sub_257ECFD50();

        v28 = sub_257C592D0(0, v61[3]);

        if (v28)
        {
          type metadata accessor for MAGUtilities();
          ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
          v30 = objc_opt_self();
          v31 = [v30 bundleForClass_];
          v32 = sub_257ECF4C0();
          v33 = sub_257ECF4C0();
          v34 = [v31 localizedStringForKey:v32 value:0 table:v33];

          v35 = sub_257ECF500();
          v37 = v36;

          v38 = v58;
          if (v35 == v58 && v37 == v60)
          {
            v39 = 3;
LABEL_12:

LABEL_15:
            v41 = v57;
            *v57 = v39;
            swift_storeEnumTagMultiPayload();
            v42 = v55;
            sub_257ECCCE0();
            v43 = v56;
            sub_257BDABC0(v41, v42 + *(v56 + 20), type metadata accessor for MAGOutputEvent.EventType);
            *(v42 + v43[6]) = 0;
            *(v42 + v43[7]) = 0;
            sub_257ECC3F0();
            sub_257BDAC28(v41, type metadata accessor for MAGOutputEvent.EventType);
            *(v42 + v43[8]) = v22;
            sub_257CBBC80(v42);
            return sub_257BDAC28(v42, type metadata accessor for MAGOutputEvent);
          }

          v40 = sub_257ED0640();

          if (v40)
          {
            v39 = 3;
            goto LABEL_15;
          }

          v44 = [v30 bundleForClass_];
          v45 = sub_257ECF4C0();
          v46 = sub_257ECF4C0();
          v47 = [v44 localizedStringForKey:v45 value:0 table:v46];

          v48 = sub_257ECF500();
          v50 = v49;

          if (v48 == v38 && v50 == v60)
          {
            v39 = 2;
            goto LABEL_12;
          }

          v51 = sub_257ED0640();

          if (v51)
          {
            v39 = 2;
            goto LABEL_15;
          }
        }
      }
    }
  }

  return result;
}

void sub_257BD8F60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15[6] = a2;
  v15[7] = a3;
  sub_257BDAB08();
  v4 = sub_257ED0100();
  v6 = v5;
  v7 = sub_257E003E8();
  v8 = sub_257E00504();
  *(a1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_isInformationLabelVisible) = 1;
  v9 = sub_257ECF4C0();
  [v7 setText_];

  [v7 sizeToFit];
  [v7 setNeedsLayout];
  v10 = objc_opt_self();
  v11 = swift_allocObject();
  v11[2] = v7;
  v11[3] = v8;
  v11[4] = v4;
  v11[5] = v6;
  v15[4] = sub_257BDAD2C;
  v15[5] = v11;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 1107296256;
  v15[2] = sub_257D231C0;
  v15[3] = &block_descriptor_51;
  v12 = _Block_copy(v15);
  v13 = v7;
  v14 = v8;

  _Block_release(v12);
}

uint64_t sub_257BD9120()
{
  if (*(v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_usePointSpeakSpeechFeedback) == 1)
  {
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (v2)
    {
      return 1;
    }
  }

  if (*(v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_useTextDetectionSpeechFeedback) != 1)
  {
    return 0;
  }

  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  return v3;
}

void sub_257BD9290(uint64_t a1)
{
  v2 = v1;
  v72 = *MEMORY[0x277D85DE8];
  v4 = type metadata accessor for MAGOutputEvent.EventType(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MAGOutputEvent(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_opt_self() defaultDeviceWithMediaType_];
  if (v10)
  {
    v11 = v10;
    if ([v10 torchMode] == 1 && a1 == 0)
    {
      v68 = v4;
      type metadata accessor for MAGUtilities();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v31 = [objc_opt_self() bundleForClass_];
      v32 = sub_257ECF4C0();
      v69 = a1;
      v33 = v32;
      v34 = sub_257ECF4C0();
      v35 = [v31 localizedStringForKey:v33 value:0 table:v34];

      v36 = sub_257ECF500();
      v38 = v37;

      v70 = v36;
      v71 = v38;
      sub_257BDAB08();
      v39 = sub_257ED0100();
      v41 = v40;

      v42 = v2;
      v43 = sub_257E003E8();
      v44 = sub_257E00504();
      sub_257DFD370(v39, v41, v43, v44);

      a1 = v69;
      v2 = v42;
      if (sub_257BD9120())
      {
        *v6 = 5;
        swift_storeEnumTagMultiPayload();
        sub_257ECCCE0();
        sub_257BDABC0(v6, &v9[v7[5]], type metadata accessor for MAGOutputEvent.EventType);
        v9[v7[6]] = 0;
        v9[v7[7]] = 0;
        if (qword_281544FE0 != -1)
        {
          swift_once();
        }

        v45 = qword_281548348;
        sub_257ECC3F0();
        sub_257BDAC28(v6, type metadata accessor for MAGOutputEvent.EventType);
        *&v9[v7[8]] = v45;
        sub_257CBBC80(v9);
        sub_257BDAC28(v9, type metadata accessor for MAGOutputEvent);
      }
    }

    else
    {
      if ([v11 torchMode])
      {
        v13 = 0;
      }

      else
      {
        v13 = a1 == 1;
      }

      if (v13)
      {
        type metadata accessor for MAGUtilities();
        v14 = swift_getObjCClassFromMetadata();
        v15 = [objc_opt_self() bundleForClass_];
        v16 = sub_257ECF4C0();
        v17 = v2;
        v18 = sub_257ECF4C0();
        v19 = a1;
        v20 = [v15 localizedStringForKey:v16 value:0 table:v18];

        v21 = sub_257ECF500();
        v23 = v22;

        v70 = v21;
        v71 = v23;
        sub_257BDAB08();
        v24 = sub_257ED0100();
        v26 = v25;

        v27 = sub_257E003E8();
        v28 = sub_257E00504();
        v29 = v24;
        v2 = v17;
        sub_257DFD370(v29, v26, v27, v28);
        a1 = v19;
      }
    }

    v70 = 0;
    if ([v11 lockForConfiguration_])
    {
      v46 = v70;
      if ([v11 isTorchModeSupported_])
      {
        [v11 setTorchMode_];
        v47 = [v11 torchMode];
        *(v2 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_globalTorchMode) = v47;
        if (qword_281544FE0 != -1)
        {
          swift_once();
        }

        if (a1 == 1)
        {
          v48 = 1.0;
        }

        else
        {
          v48 = 0.0;
        }

        swift_getKeyPath();
        swift_getKeyPath();
        *&v70 = v48;
        sub_257ECC3F0();
        sub_257ECDD70();
      }

      [v11 unlockForConfiguration];
      v49 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_flashlightBarButtonItem;
      v50 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_flashlightBarButtonItem);
      if (v50)
      {
        type metadata accessor for MAGUtilities();
        v51 = swift_getObjCClassFromMetadata();
        v52 = v2;
        v53 = objc_opt_self();
        v54 = v50;
        v55 = [v53 bundleForClass_];
        v56 = sub_257ECF4C0();
        v57 = sub_257ECF4C0();
        v58 = [v55 localizedStringForKey:v56 value:0 table:v57];

        sub_257ECF500();
        v59 = sub_257ECF4C0();

        [v54 setAccessibilityValue_];

        v60 = *(v52 + v49);
        if (v60)
        {
          v61 = v60;
          v62 = sub_257ECF4C0();
          v65 = [objc_opt_self() systemImageNamed_];

          if (v65)
          {
            v66 = [objc_opt_self() configurationWithPointSize:4 weight:-1 scale:25.0];
            v67 = [v65 imageByApplyingSymbolConfiguration_];
          }

          else
          {
            v67 = 0;
          }

          [v61 setImage_];
        }
      }
    }

    else
    {
      v63 = v70;
      v64 = sub_257ECC9F0();

      swift_willThrow();
    }
  }
}

void sub_257BD9B44()
{
  v8[1] = *MEMORY[0x277D85DE8];
  v1 = [objc_opt_self() defaultDeviceWithMediaType_];
  if (v1)
  {
    v2 = v1;
    v8[0] = 0;
    if ([v1 lockForConfiguration_])
    {
      v3 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_globalTorchMode;
      v4 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_globalTorchMode);
      v5 = v8[0];
      if ([v2 isTorchModeSupported_])
      {
        [v2 setTorchMode_];
      }

      [v2 unlockForConfiguration];
    }

    else
    {
      v6 = v8[0];
      v7 = sub_257ECC9F0();

      swift_willThrow();
    }
  }
}

void sub_257BD9C78(char a1)
{
  v2 = v1;
  v83 = *MEMORY[0x277D85DE8];
  v4 = type metadata accessor for MAGOutputEvent.EventType(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MAGOutputEvent(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_opt_self() defaultDeviceWithMediaType_];
  if (v10)
  {
    v11 = v10;
    v81 = 0;
    if (![v10 lockForConfiguration_])
    {
      v30 = v81;
      v31 = sub_257ECC9F0();

      swift_willThrow();
      return;
    }

    v12 = v81;
    v13 = &unk_279854000;
    v14 = [v11 torchMode];
    if (v14 == 1)
    {
      if ([v11 isTorchModeSupported_])
      {
        [v11 setTorchMode_];
      }

      if ((a1 & 1) == 0)
      {
        *(v2 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_toggledDetectionModeFlashlightOff) = 1;
      }

      v80 = v7;
      v32 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_flashlightBarButtonItem;
      v33 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_flashlightBarButtonItem);
      if (v33)
      {
        type metadata accessor for MAGUtilities();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v35 = objc_opt_self();
        v79 = v33;
        v36 = [v35 bundleForClass_];
        v37 = sub_257ECF4C0();
        v38 = sub_257ECF4C0();
        v39 = [v36 localizedStringForKey:v37 value:0 table:v38];

        if (!v39)
        {
          sub_257ECF500();
          v39 = sub_257ECF4C0();
        }

        v40 = v79;
        [v79 setAccessibilityValue_];

        v41 = *(v2 + v32);
        if (v41)
        {
          v42 = v41;
          v43 = sub_257ECF4C0();
          v44 = [objc_opt_self() systemImageNamed_];

          if (v44)
          {
            v45 = [objc_opt_self() configurationWithPointSize:4 weight:-1 scale:25.0];
            v46 = [v44 imageByApplyingSymbolConfiguration_];
          }

          else
          {
            v46 = 0;
          }

          [v42 setImage_];
        }
      }

      type metadata accessor for MAGUtilities();
      v63 = swift_getObjCClassFromMetadata();
      v64 = [objc_opt_self() bundleForClass_];
      v65 = sub_257ECF4C0();
      v66 = sub_257ECF4C0();
      v67 = [v64 localizedStringForKey:v65 value:0 table:v66];

      v68 = sub_257ECF500();
      v70 = v69;

      v81 = v68;
      v82 = v70;
      sub_257BDAB08();
      v71 = sub_257ED0100();
      v73 = v72;

      v74 = sub_257E003E8();
      v75 = sub_257E00504();
      sub_257DFD370(v71, v73, v74, v75);

      v13 = &unk_279854000;
      if ((sub_257BD9120() & 1) != 0 && !UIAccessibilityIsVoiceOverRunning())
      {
        *v6 = 7;
        swift_storeEnumTagMultiPayload();
        sub_257ECCCE0();
        v76 = v80;
        sub_257BDABC0(v6, &v9[v80[5]], type metadata accessor for MAGOutputEvent.EventType);
        v9[v76[6]] = 0;
        v9[v76[7]] = 0;
        if (qword_281544FE0 != -1)
        {
          swift_once();
        }

        v77 = qword_281548348;
        sub_257ECC3F0();
        sub_257BDAC28(v6, type metadata accessor for MAGOutputEvent.EventType);
        *&v9[v76[8]] = v77;
        sub_257CBBC80(v9);
        sub_257BDAC28(v9, type metadata accessor for MAGOutputEvent);
      }

      if (qword_281544FE0 != -1)
      {
        swift_once();
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_257ECDD60();

      if (v81 == 1)
      {
        *(v2 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pointSpeakToggledDetectionModeFlashlightOn) = 0;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_257ECDD60();

      if (v81 != 1)
      {
        goto LABEL_51;
      }

      v62 = 0;
    }

    else
    {
      if (v14)
      {
        goto LABEL_51;
      }

      if ([v11 isTorchModeSupported_])
      {
        [v11 setTorchMode_];
      }

      v80 = v7;
      *(v2 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_toggledDetectionModeFlashlightOff) = 0;
      v15 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_flashlightBarButtonItem;
      v16 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_flashlightBarButtonItem);
      if (v16)
      {
        type metadata accessor for MAGUtilities();
        v17 = swift_getObjCClassFromMetadata();
        v18 = objc_opt_self();
        v79 = v16;
        v19 = [v18 bundleForClass_];
        v20 = sub_257ECF4C0();
        v21 = sub_257ECF4C0();
        v22 = [v19 localizedStringForKey:v20 value:0 table:v21];

        if (!v22)
        {
          sub_257ECF500();
          v22 = sub_257ECF4C0();
        }

        v23 = v79;
        [v79 setAccessibilityValue_];

        v24 = *(v2 + v15);
        if (v24)
        {
          v25 = v24;
          v26 = sub_257ECF4C0();
          v27 = [objc_opt_self() systemImageNamed_];

          if (v27)
          {
            v28 = [objc_opt_self() configurationWithPointSize:4 weight:-1 scale:25.0];
            v29 = [v27 imageByApplyingSymbolConfiguration_];
          }

          else
          {
            v29 = 0;
          }

          [v25 setImage_];
        }
      }

      type metadata accessor for MAGUtilities();
      v47 = swift_getObjCClassFromMetadata();
      v48 = [objc_opt_self() bundleForClass_];
      v49 = sub_257ECF4C0();
      v50 = sub_257ECF4C0();
      v51 = [v48 localizedStringForKey:v49 value:0 table:v50];

      v52 = sub_257ECF500();
      v54 = v53;

      v81 = v52;
      v82 = v54;
      sub_257BDAB08();
      v55 = sub_257ED0100();
      v57 = v56;

      v58 = sub_257E003E8();
      v59 = sub_257E00504();
      sub_257DFD370(v55, v57, v58, v59);

      if ((sub_257BD9120() & 1) != 0 && !UIAccessibilityIsVoiceOverRunning())
      {
        *v6 = 6;
        swift_storeEnumTagMultiPayload();
        sub_257ECCCE0();
        v60 = v80;
        sub_257BDABC0(v6, &v9[v80[5]], type metadata accessor for MAGOutputEvent.EventType);
        v9[v60[6]] = 0;
        v9[v60[7]] = 0;
        if (qword_281544FE0 != -1)
        {
          swift_once();
        }

        v61 = qword_281548348;
        sub_257ECC3F0();
        sub_257BDAC28(v6, type metadata accessor for MAGOutputEvent.EventType);
        *&v9[v60[8]] = v61;
        sub_257CBBC80(v9);
        sub_257BDAC28(v9, type metadata accessor for MAGOutputEvent);
      }

      if (qword_281544FE0 != -1)
      {
        swift_once();
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_257ECDD60();

      if (v81 == 1)
      {
        *(v2 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pointSpeakToggledDetectionModeFlashlightOn) = 1;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_257ECDD60();

      v13 = &unk_279854000;
      if ((v81 & 1) == 0)
      {
        goto LABEL_51;
      }

      v62 = 1;
    }

    *(v2 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_textDetectionToggledDetectionModeFlashlightOn) = v62;
LABEL_51:
    v78 = [v11 v13[504]];
    *(v2 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_globalTorchMode) = v78;
    [v11 unlockForConfiguration];
  }
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_257ECC3F0();
}

uint64_t sub_257BDA9A8(uint64_t a1, uint64_t a2, char a3)
{
  sub_257BD9290(a2);
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v7 == 1)
  {
    *(a1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pointSpeakToggledDetectionModeFlashlightOn) = a3;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v6 == 1)
  {
    *(a1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_textDetectionToggledDetectionModeFlashlightOn) = a3;
  }

  return result;
}

unint64_t sub_257BDAB08()
{
  result = qword_281544080;
  if (!qword_281544080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281544080);
  }

  return result;
}

uint64_t sub_257BDAB5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MAGOutputEngine.Event(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_257BDABC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_257BDAC28(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroy_29Tm()
{

  return swift_deallocObject();
}

void sub_257BDAF44()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController_activePageIndexPath;
  swift_beginAccess();
  v3 = sub_257ECCEB0();
  if (!(*(*(v3 - 8) + 48))(&v1[v2], 1, v3))
  {
    v4 = sub_257ECCE80();
    swift_endAccess();
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (v22 != 1)
    {
      goto LABEL_15;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (v22 && v22 == 1)
    {
    }

    else
    {
      v5 = sub_257ED0640();

      if ((v5 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    v6 = [v1 parentViewController];
    if (!v6)
    {
      return;
    }

    v7 = v6;
    v8 = [v6 navigationItem];

    type metadata accessor for MAGUtilities();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = [objc_opt_self() bundleForClass_];
    v11 = sub_257ECF4C0();
    v12 = sub_257ECF4C0();
    v13 = [v10 localizedStringForKey:v11 value:0 table:v12];

    sub_257ECF500();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F58E0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_257ED9BD0;
    v15 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
    }

    else
    {
      v12 = v14;
      v4 = MEMORY[0x277D83B88];
      v13 = MEMORY[0x277D83C10];
      *(v14 + 56) = MEMORY[0x277D83B88];
      *(v14 + 64) = v13;
      *(v14 + 32) = v15;
      v16 = OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController_pages;
      swift_beginAccess();
      v17 = *&v1[v16];
      if (!(v17 >> 62))
      {
        v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_14:
        v12[12] = v4;
        v12[13] = v13;
        v12[9] = v18;
        sub_257ECF540();

        v19 = sub_257ECF4C0();

        [v8 setTitle_];

        goto LABEL_17;
      }
    }

    v18 = sub_257ED0210();
    goto LABEL_14;
  }

  swift_endAccess();
LABEL_15:
  v20 = [v1 parentViewController];
  if (!v20)
  {
    return;
  }

  v21 = v20;
  v19 = [v20 navigationItem];

  [v19 setTitle_];
LABEL_17:
}

uint64_t sub_257BDB398()
{
  v1 = sub_257BDB500();
  v2 = [v1 viewControllers];

  if (!v2)
  {
    return 0;
  }

  sub_257BD2C2C(0, &unk_281543F40);
  v3 = sub_257ECF810();

  if (v3 >> 62)
  {
    result = sub_257ED0210();
    if (result)
    {
      goto LABEL_4;
    }

LABEL_12:

    return 0;
  }

  result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_4:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x259C72E20](0, v3);
  }

  else
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v5 = *(v3 + 32);
  }

  v6 = v5;

  type metadata accessor for FreezeFramePageContentViewController();
  v7 = swift_dynamicCastClass();
  if (v7)
  {
    v8 = v7;
    v9 = OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController_pages;
    swift_beginAccess();
    v10 = *(v0 + v9);

    v11 = sub_257DB83B8(v8, v10);
    LOBYTE(v9) = v12;

    if ((v9 & 1) == 0)
    {
      return v11;
    }
  }

  else
  {
  }

  return 0;
}

id sub_257BDB500()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController____lazy_storage___pageController;
  v2 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController____lazy_storage___pageController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController____lazy_storage___pageController);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5438);
    inited = swift_initStackObject();
    v5 = *MEMORY[0x277D76DB0];
    *(inited + 32) = *MEMORY[0x277D76DB0];
    *(inited + 16) = xmmword_257ED6D30;
    *(inited + 64) = MEMORY[0x277D85048];
    *(inited + 40) = 0x4030000000000000;
    v6 = v5;
    sub_257BE8540(inited);
    swift_setDeallocating();
    sub_257BE4084(inited + 32, &unk_27F8F5440);
    v7 = objc_allocWithZone(type metadata accessor for MFPageViewController());
    type metadata accessor for OptionsKey(0);
    sub_257BE3CDC(&qword_27F8F5098, type metadata accessor for OptionsKey);
    v8 = sub_257ECF3C0();

    v9 = [v7 initWithTransitionStyle:1 navigationOrientation:0 options:v8];

    v10 = *(v0 + v1);
    *(v0 + v1) = v9;
    v3 = v9;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

void *sub_257BDB690()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController____lazy_storage___assetURLs;
  if (*(v0 + OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController____lazy_storage___assetURLs))
  {
    v2 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController____lazy_storage___assetURLs);
  }

  else
  {
    v3 = v0;
    if (qword_27F8F46D8 != -1)
    {
      swift_once();
    }

    v2 = sub_257C73204();
    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t sub_257BDB730()
{
  v0 = sub_257BDB500();
  v1 = [v0 viewControllers];

  if (!v1)
  {
    return 0;
  }

  sub_257BD2C2C(0, &unk_281543F40);
  v2 = sub_257ECF810();

  if (!(v2 >> 62))
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_4;
    }

LABEL_10:

    return 0;
  }

  result = sub_257ED0210();
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_4:
  if ((v2 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x259C72E20](0, v2);
  }

  else
  {
    if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v4 = *(v2 + 32);
  }

  v5 = v4;

  type metadata accessor for FreezeFramePageContentViewController();
  result = swift_dynamicCastClass();
  if (!result)
  {

    return 0;
  }

  return result;
}

void sub_257BDB830()
{
  v1 = v0;
  v2 = objc_opt_self();
  v3 = OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController_pageControlConstraints;
  sub_257BD2C2C(0, &qword_281543EF0);

  v4 = sub_257ECF7F0();

  [v2 deactivateConstraints_];

  if (!swift_unknownObjectWeakLoadStrong())
  {
    return;
  }

  sub_257E287A0();
  v6 = v5;
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_257ED9BE0;
  v8 = OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController_pageControl;
  v9 = [*&v1[OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController_pageControl] bottomAnchor];
  v10 = [v1 view];
  if (!v10)
  {
    __break(1u);
    goto LABEL_9;
  }

  v11 = v10;
  v12 = [v10 bottomAnchor];

  v13 = [v9 constraintEqualToAnchor:v12 constant:v6];
  *(v7 + 32) = v13;
  v14 = [*&v1[v8] centerXAnchor];
  v15 = sub_257BDB500();
  v16 = [v15 view];

  if (!v16)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v17 = [v16 centerXAnchor];

  v18 = [v14 constraintEqualToAnchor:v17 constant:0.0];
  *(v7 + 40) = v18;
  *&v1[v3] = v7;

  v19 = sub_257ECF7F0();

  [v2 activateConstraints_];
}

id sub_257BDBBA8()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController_freezeFrameDisplayAppearanceSubscription] = 0;
  v2 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62 && sub_257ED0210())
  {
    v3 = sub_257BF2CF8(MEMORY[0x277D84F90]);
  }

  else
  {
    v3 = MEMORY[0x277D84FA0];
  }

  *&v0[OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController_cancellables] = v3;
  *&v0[OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController_pages] = v2;
  v4 = OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController_activePageIndexPath;
  MEMORY[0x259C6F990](0, 0);
  v5 = sub_257ECCEB0();
  (*(*(v5 - 8) + 56))(&v0[v4], 0, 1, v5);
  *&v0[OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController_pageSpacing] = 0x4030000000000000;
  *&v0[OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController____lazy_storage___pageController] = 0;
  *&v0[OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController____lazy_storage___assetURLs] = 0;
  *&v0[OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController_pageControlPositionDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v6 = OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController_pageControl;
  *&v0[v6] = [objc_allocWithZone(MEMORY[0x277D757E0]) init];
  *&v0[OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController_pageControlConstraints] = v2;
  *&v0[OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController_textOverlayDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController____lazy_storage___textReaderModeButtonItem] = 0;
  v8.receiver = v0;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_initWithNibName_bundle_, 0, 0);
}

uint64_t sub_257BDBD68(uint64_t a1)
{
  v42 = a1;
  v2 = type metadata accessor for Asset();
  v3 = MEMORY[0x28223BE20](v2);
  v5 = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v34 - v6;
  v8 = sub_257ECCB70();
  v43 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v34 - v12;
  v35 = v1;
  v14 = sub_257BDB690();
  v15 = v14[2];
  if (v15)
  {
    v44 = MEMORY[0x277D84F90];
    v16 = v14;
    sub_257ED0360();
    v17 = *(v43 + 16);
    v18 = (*(v43 + 80) + 32) & ~*(v43 + 80);
    v34[1] = v16;
    v19 = v16 + v18;
    v38 = *(v43 + 72);
    v39 = v17;
    v43 += 16;
    v36 = (v43 - 8);
    v37 = (v43 + 40);
    v40 = v2;
    v41 = v5;
    do
    {
      v20 = v39;
      v39(v13, v19, v8);
      v20(v11, v13, v8);
      v20(v7, v11, v8);
      (*v37)(v7, 0, 1, v8);
      *&v7[*(v2 + 20)] = 0;
      sub_257BE3098(v7, v5);
      v21 = objc_allocWithZone(type metadata accessor for FreezeFramePageContentViewController());
      v22 = v42;
      sub_257ECC3F0();
      sub_257DD9568(v5, v22);
      sub_257BE30FC(v7);
      v23 = *v36;
      (*v36)(v11, v8);
      v23(v13, v8);
      sub_257ED0330();
      sub_257ED0370();
      v2 = v40;
      v5 = v41;
      sub_257ED0380();
      sub_257ED0340();
      v19 += v38;
      --v15;
    }

    while (v15);

    v24 = v44;
  }

  else
  {

    v24 = MEMORY[0x277D84F90];
  }

  v25 = OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController_pages;
  v26 = v35;
  swift_beginAccess();
  *(v26 + v25) = v24;

  v27 = *(v26 + v25);
  if (v27 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_257ED0210())
  {

    if (!i)
    {
      break;
    }

    for (j = 0; ; ++j)
    {
      if ((v27 & 0xC000000000000001) != 0)
      {
        v30 = MEMORY[0x259C72E20](j, v27);
      }

      else
      {
        if (j >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v30 = *(v27 + 8 * j + 32);
      }

      v31 = v30;
      v32 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      *&v30[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_pageSelectionDelegate + 8] = &off_2869076B0;
      swift_unknownObjectWeakAssign();

      if (v32 == i)
      {
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }
}

uint64_t sub_257BDC14C(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Asset();
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_257ED9BF0;
  v11 = sub_257ECCB70();
  (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  *&v9[*(v7 + 28)] = a1;
  objc_allocWithZone(type metadata accessor for FreezeFramePageContentViewController());
  v12 = a1;
  sub_257ECC3F0();
  *(v10 + 32) = sub_257DD9568(v9, a2);
  v13 = OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController_pages;
  swift_beginAccess();
  *(v3 + v13) = v10;

  v14 = *(v3 + v13);
  if (v14 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_257ED0210())
  {

    if (!i)
    {
      break;
    }

    for (j = 0; ; ++j)
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x259C72E20](j, v14);
      }

      else
      {
        if (j >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v17 = *(v14 + 8 * j + 32);
      }

      v18 = v17;
      v19 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      *&v17[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_pageSelectionDelegate + 8] = &off_2869076B0;
      swift_unknownObjectWeakAssign();

      if (v19 == i)
      {
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }
}

uint64_t sub_257BDC378(void *a1, uint64_t a2, int a3)
{
  v4 = v3;
  v8 = type metadata accessor for Asset();
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_257ED9BF0;
  v13 = sub_257ECCB70();
  (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  *&v11[*(v9 + 28)] = a1;
  objc_allocWithZone(type metadata accessor for FreezeFramePageContentViewController());
  v14 = a1;
  sub_257ECC3F0();
  *(v12 + 32) = sub_257DD99DC(v11, a2, a3);
  v15 = OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController_pages;
  swift_beginAccess();
  *(v4 + v15) = v12;

  v16 = *(v4 + v15);
  if (v16 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_257ED0210())
  {

    if (!i)
    {
      break;
    }

    for (j = 0; ; ++j)
    {
      if ((v16 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x259C72E20](j, v16);
      }

      else
      {
        if (j >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v19 = *(v16 + 8 * j + 32);
      }

      v20 = v19;
      v21 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      *&v19[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_pageSelectionDelegate + 8] = &off_2869076B0;
      swift_unknownObjectWeakAssign();

      if (v21 == i)
      {
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }
}

void sub_257BDC5D4()
{
  v1 = objc_opt_self();
  v2 = [v1 mainScreen];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v58.origin.x = v4;
  v58.origin.y = v6;
  v58.size.width = v8;
  v58.size.height = v10;
  v11 = CGRectGetMaxY(v58) + -50.0;
  v12 = [v1 mainScreen];
  [v12 bounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v59.origin.x = v14;
  v59.origin.y = v16;
  v59.size.width = v18;
  v59.size.height = v20;
  v21 = [objc_allocWithZone(MEMORY[0x277D757E0]) initWithFrame_];
  v22 = OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController_pageControl;
  v23 = *&v0[OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController_pageControl];
  *&v0[OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController_pageControl] = v21;
  v24 = v21;

  v25 = OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController_pages;
  swift_beginAccess();
  v26 = *&v0[v25];
  if (v26 >> 62)
  {
    v27 = sub_257ED0210();
  }

  else
  {
    v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  [v24 setNumberOfPages_];

  [*&v0[v22] setCurrentPage_];
  [*&v0[v22] setAlpha_];
  v28 = *&v0[v22];
  v29 = objc_opt_self();
  v30 = v28;
  v31 = [v29 blackColor];
  [v30 setTintColor_];

  v32 = *&v0[v22];
  v33 = [v29 whiteColor];
  [v32 setPageIndicatorTintColor_];

  v34 = *&v0[v22];
  v35 = [v29 blackColor];
  [v34 setCurrentPageIndicatorTintColor_];

  [*&v0[v22] addTarget:v0 action:sel_didTapPageControl_ forControlEvents:4096];
  [*&v0[v22] setTranslatesAutoresizingMaskIntoConstraints_];
  [*&v0[v22] setBackgroundStyle_];
  v36 = [v0 view];
  if (v36)
  {
    v37 = v36;
    [v36 addSubview_];

    v38 = *&v0[v22];
    v39 = *&v0[v25];
    if (v39 >> 62)
    {
      v51 = *&v0[v22];
      v40 = sub_257ED0210();
      v38 = v51;
    }

    else
    {
      v40 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v41 = 0.0;
    if (v40 > 1)
    {
      v41 = 1.0;
    }

    [v38 setAlpha_];
    v42 = *&v0[v22];
    v43 = swift_allocObject();
    *(v43 + 16) = v0;
    v56 = sub_257BE41E4;
    v57 = v43;
    aBlock = MEMORY[0x277D85DD0];
    v53 = 1107296256;
    v54 = sub_257D231C0;
    v55 = &block_descriptor_96;
    v44 = _Block_copy(&aBlock);
    v45 = v42;
    v46 = v0;

    [v45 _setAccessibilityIncrementBlock_];
    _Block_release(v44);

    v47 = *&v0[v22];
    v48 = swift_allocObject();
    *(v48 + 16) = v46;
    v56 = sub_257BE41EC;
    v57 = v48;
    aBlock = MEMORY[0x277D85DD0];
    v53 = 1107296256;
    v54 = sub_257D231C0;
    v55 = &block_descriptor_102;
    v49 = _Block_copy(&aBlock);
    v46;
    v50 = v47;

    [v50 _setAccessibilityDecrementBlock_];
    _Block_release(v49);

    sub_257BDB830();
  }

  else
  {
    __break(1u);
  }
}

void sub_257BDCAC4(uint64_t a1)
{
  v2 = sub_257ECCEB0();
  v3 = *(v2 - 1);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_257BDB398();
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
    goto LABEL_9;
  }

  MEMORY[0x259C6F990](v8, 0);
  sub_257BDCCF8(v5);
  (*(v3 + 8))(v5, v2);
  v3 = OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController_pageControl;
  v2 = *(a1 + OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController_pageControl);
  v9 = sub_257BDB398();
  if (__OFADD__(v9, 1))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  [v2 setCurrentPage_];

  v2 = sub_257BDB500();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430);
  v5 = swift_allocObject();
  *(v5 + 1) = xmmword_257ED9BF0;
  v3 = [*(a1 + v3) currentPage];
  v10 = OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController_pages;
  swift_beginAccess();
  v11 = *(a1 + v10);
  if ((v11 & 0xC000000000000001) != 0)
  {
LABEL_10:
    v12 = MEMORY[0x259C72E20](v3);
    goto LABEL_7;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v3 < *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v12 = *(v11 + 8 * v3 + 32);
LABEL_7:
    v13 = v12;
    swift_endAccess();
    *(v5 + 4) = v13;
    sub_257BD2C2C(0, &unk_281543F40);
    v14 = sub_257ECF7F0();

    [v2 setViewControllers:v14 direction:0 animated:1 completion:0];

    return;
  }

  __break(1u);
}

uint64_t sub_257BDCCF8(unint64_t a1)
{
  v2 = v1;
  v4 = sub_257ECCEB0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v42 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_257ECDA30();
  v44 = *(v7 - 1);
  MEMORY[0x28223BE20](v7);
  v43 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F30);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v40 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v39 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5460);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v39 - v15;
  v17 = OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController_activePageIndexPath;
  swift_beginAccess();
  if (!(*(v5 + 48))(&v1[v17], 1, v4))
  {
    v18 = sub_257ECCE80();
    swift_endAccess();
    v19 = OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController_pages;
    swift_beginAccess();
    v20 = *&v2[v19];
    if (v20 >> 62)
    {
      goto LABEL_23;
    }

    v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_5;
  }

  swift_endAccess();
  while (1)
  {
    v41 = v7;
    v7 = *(v5 + 16);
    (v7)(v16, a1, v4);
    (*(v5 + 56))(v16, 0, 1, v4);
    swift_beginAccess();
    sub_257BE40FC(v16, &v2[v17]);
    swift_endAccess();
    sub_257BDAF44();
    sub_257BE4084(v16, &unk_27F8F5460);
    v17 = sub_257BDB690()[2];

    v26 = sub_257ECCE80();
    if (v26 < 0 || v26 >= v17)
    {
      break;
    }

    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v19 = *(qword_281548340 + 16);
    sub_257ECC3F0();
    v18 = a1;
    v27 = sub_257ECCE80();
    if ((v27 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v18 = v27;
      v4 = *&v2[OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController____lazy_storage___assetURLs];
      if (v27 < *(v4 + 16))
      {
        v28 = sub_257ECCB70();
        v29 = *(v28 - 8);
        (*(v29 + 16))(v13, v4 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v18, v28);
        (*(v29 + 56))(v13, 0, 1, v28);
        swift_getKeyPath();
        swift_getKeyPath();
        sub_257BE401C(v13, v40, &qword_27F8F5F30);
        sub_257ECDD70();
        return sub_257BE4084(v13, &qword_27F8F5F30);
      }
    }

    __break(1u);
LABEL_23:
    v21 = sub_257ED0210();
    if ((v21 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_25:
      v24 = MEMORY[0x259C72E20](v18);
      goto LABEL_9;
    }

LABEL_5:
    if (v18 < v21)
    {
      result = swift_beginAccess();
      v23 = *&v2[v19];
      if ((v23 & 0xC000000000000001) != 0)
      {
        goto LABEL_25;
      }

      if (v18 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return result;
      }

      v24 = *(v23 + 8 * v18 + 32);
LABEL_9:
      v25 = v24;
      swift_endAccess();
      sub_257DD6114();
      sub_257DD643C();
      sub_257DD65E0();
    }
  }

  v30 = v43;
  sub_257ECD400();
  v31 = v42;
  (v7)(v42, a1, v4);
  v32 = v2;
  v33 = sub_257ECDA20();
  v34 = sub_257ECFBD0();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 134218240;
    v36 = sub_257ECCE80();
    (*(v5 + 8))(v31, v4);
    *(v35 + 4) = v36;
    *(v35 + 12) = 2048;
    v37 = sub_257BDB690()[2];

    *(v35 + 14) = v37;

    _os_log_impl(&dword_257BAC000, v33, v34, "Requested active page %ld exceeds asset count %ld", v35, 0x16u);
    MEMORY[0x259C74820](v35, -1, -1);
  }

  else
  {
    (*(v5 + 8))(v31, v4);

    v33 = v32;
  }

  v38 = v41;

  return (*(v44 + 8))(v30, v38);
}

void sub_257BDD38C(uint64_t a1)
{
  v2 = sub_257ECCEB0();
  v3 = *(v2 - 1);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_257BDB398();
  v7 = __OFSUB__(v6, 1);
  v8 = v6 - 1;
  if (v7)
  {
    __break(1u);
    goto LABEL_9;
  }

  MEMORY[0x259C6F990](v8, 0);
  sub_257BDCCF8(v5);
  (*(v3 + 8))(v5, v2);
  v3 = OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController_pageControl;
  v2 = *(a1 + OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController_pageControl);
  v9 = sub_257BDB398();
  if (__OFSUB__(v9, 1))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  [v2 setCurrentPage_];

  v2 = sub_257BDB500();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430);
  v5 = swift_allocObject();
  *(v5 + 1) = xmmword_257ED9BF0;
  v3 = [*(a1 + v3) currentPage];
  v10 = OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController_pages;
  swift_beginAccess();
  v11 = *(a1 + v10);
  if ((v11 & 0xC000000000000001) != 0)
  {
LABEL_10:
    v12 = MEMORY[0x259C72E20](v3);
    goto LABEL_7;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v3 < *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v12 = *(v11 + 8 * v3 + 32);
LABEL_7:
    v13 = v12;
    swift_endAccess();
    *(v5 + 4) = v13;
    sub_257BD2C2C(0, &unk_281543F40);
    v14 = sub_257ECF7F0();

    [v2 setViewControllers:v14 direction:1 animated:1 completion:0];

    return;
  }

  __break(1u);
}

void sub_257BDD5C0(uint64_t a1)
{
  sub_257BE41F4(a1, v14);
  sub_257BD2C2C(0, &unk_27F8F5500);
  if (swift_dynamicCast())
  {
    v2 = [v13 currentPage];
    v3 = OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController_pages;
    swift_beginAccess();
    v4 = *(v1 + v3);
    if ((v4 & 0xC000000000000001) == 0)
    {
      if ((v2 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v2 < *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v5 = *(v4 + 8 * v2 + 32);
LABEL_6:
        v6 = v5;
        swift_endAccess();
        v7 = [v13 currentPage];
        v8 = v7 < sub_257BDB398();
        v9 = sub_257BDB500();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430);
        v10 = swift_allocObject();
        *(v10 + 16) = xmmword_257ED9BF0;
        *(v10 + 32) = v6;
        sub_257BD2C2C(0, &unk_281543F40);
        v11 = v6;
        v12 = sub_257ECF7F0();

        [v9 setViewControllers:v12 direction:v8 animated:1 completion:0];

        return;
      }

      __break(1u);
      return;
    }

    v5 = MEMORY[0x259C72E20](v2);
    goto LABEL_6;
  }
}

void sub_257BDD7E0()
{
  v1 = [objc_opt_self() mainScreen];
  [v1 bounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v11 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  [v11 setAutoresizingMask_];
  v10 = [objc_opt_self() systemBackgroundColor];
  [v11 setBackgroundColor_];

  [v11 setUserInteractionEnabled_];
  [v0 setView_];
}

void sub_257BDD954()
{
  v15.receiver = v0;
  v15.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v15, sel_viewDidLoad);
  v1 = sub_257BDB500();
  [v1 setDelegate_];

  v2 = OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController____lazy_storage___pageController;
  [*&v0[OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController____lazy_storage___pageController] setDataSource_];
  [v0 addChildViewController_];
  v3 = [v0 view];
  if (!v3)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v4 = v3;
  v5 = [*&v0[v2] view];
  if (v5)
  {
    v6 = v5;
    [v4 addSubview_];

    [*&v0[v2] didMoveToParentViewController_];
    v7 = OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController_pages;
    swift_beginAccess();
    v8 = *&v0[v7];
    if (v8 >> 62)
    {
      if (sub_257ED0210())
      {
LABEL_5:
        if ((v8 & 0xC000000000000001) == 0)
        {
          if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v9 = *(v8 + 32);
LABEL_8:
            v10 = *&v0[v2];
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430);
            v11 = swift_allocObject();
            *(v11 + 16) = xmmword_257ED9BF0;
            *(v11 + 32) = v9;
            sub_257BD2C2C(0, &unk_281543F40);
            v12 = v10;
            v13 = v9;
            v14 = sub_257ECF7F0();

            [v12 setViewControllers:v14 direction:0 animated:1 completion:0];

            sub_257BDC5D4();
            return;
          }

          __break(1u);
          goto LABEL_13;
        }

LABEL_11:

        v9 = MEMORY[0x259C72E20](0, v8);

        goto LABEL_8;
      }
    }

    else if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

    sub_257ED0410();
    __break(1u);
    goto LABEL_11;
  }

LABEL_14:
  __break(1u);
}

id sub_257BDDC34(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = &selRef_imageByApplyingSymbolConfiguration_;
  if (a1)
  {
    goto LABEL_15;
  }

  v17 = ObjectType;
  v5 = OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController_pages;
  swift_beginAccess();
  v15 = v5;
  v16 = v1;
  v6 = *&v1[v5];
  if (v6 >> 62)
  {
LABEL_18:
    v7 = sub_257ED0210();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v7)
  {
LABEL_14:

    v1 = v16;
    *&v16[v15] = MEMORY[0x277D84F90];

    a1 = 0;
    ObjectType = v17;
LABEL_15:
    v18.receiver = v1;
    v18.super_class = ObjectType;
    return objc_msgSendSuper2(&v18, v4[19], a1);
  }

  v8 = 0;
  while (1)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x259C72E20](v8, v6);
    }

    else
    {
      if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v9 = *(v6 + 8 * v8 + 32);
    }

    v10 = v9;
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    v12 = v4;
    [v9 v4[19]];
    result = [v10 view];
    if (!result)
    {
      break;
    }

    v14 = result;
    [result removeFromSuperview];

    [v10 removeFromParentViewController];
    ++v8;
    v4 = v12;
    if (v11 == v7)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_257BDDE4C()
{
  v37 = sub_257ECF130();
  v35 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v34 = &v26 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_257ECFD10();
  v38 = *(v2 - 8);
  v39 = v2;
  MEMORY[0x28223BE20](v2);
  v36 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F54C0);
  MEMORY[0x28223BE20](v29);
  v28 = &v26 - v4;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F84F0);
  MEMORY[0x28223BE20](v27);
  v26 = &v26 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F54D0);
  v7 = MEMORY[0x28223BE20](v6);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9E60);
  v30 = *(v8 - 8);
  v31 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F54E0);
  v32 = *(v11 - 8);
  v33 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v26 - v12;
  v40 = v0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController_cancellables) = MEMORY[0x277D84FA0];

  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_257ECC3F0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F9350);
  sub_257ECDD30();
  swift_endAccess();

  swift_beginAccess();
  sub_257ECC3F0();
  sub_257ECDD30();
  swift_endAccess();

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F54F0);
  sub_257ECDD30();
  swift_endAccess();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DD0);
  sub_257ECDD30();
  swift_endAccess();
  sub_257BD2D4C(&unk_281544190, &unk_27F8F54D0);
  sub_257BD2D4C(&unk_281544170, &qword_27F8F84F0);
  sub_257BD2D4C(&unk_281544140, &unk_27F8F54C0);
  sub_257ECDC60();
  v14 = v36;
  sub_257ECFD00();
  sub_257BD2C2C(0, &qword_281543F10);
  v16 = v34;
  v15 = v35;
  v17 = v37;
  (*(v35 + 104))(v34, *MEMORY[0x277D851C0], v37);
  v18 = sub_257ECFD90();
  (*(v15 + 8))(v16, v17);
  v41 = v18;
  sub_257BD2D4C(&unk_281544490, &qword_27F8F9E60);
  sub_257BE416C();
  v19 = v31;
  sub_257ECDE00();

  (*(v38 + 8))(v14, v39);
  (*(v30 + 8))(v10, v19);
  v20 = swift_allocObject();
  v21 = v40;
  swift_unknownObjectWeakInit();
  v22 = swift_allocObject();
  *(v22 + 16) = sub_257BE41D4;
  *(v22 + 24) = v20;
  sub_257BD2D4C(&unk_2815442A8, &unk_27F8F54E0);
  v23 = v33;
  v24 = sub_257ECDE50();

  (*(v32 + 8))(v13, v23);
  *(v21 + OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController_freezeFrameDisplayAppearanceSubscription) = v24;
}

void sub_257BDE660(char *a1, char a2, double a3, double a4)
{
  v7 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = a3 + -0.5;
    if (a3 + -0.5 > 0.5)
    {
      v10 = 0.5;
    }

    if (v10 <= -0.5)
    {
      v10 = -0.5;
    }

    if (a4 <= 0.5)
    {
      v12 = 2.5;
      if (a4 * 1.4 + 0.3 <= 2.5)
      {
        v12 = a4 * 1.4 + 0.3;
      }
    }

    else
    {
      v11 = (a4 + -0.5) * 3.0 + 1.0;
      v12 = 2.5;
      if (v11 <= 2.5)
      {
        if ((a2 & 1) == 0)
        {
LABEL_9:
          if (v11 <= 0.3)
          {
            v11 = 0.3;
          }

          v13 = v7;
          sub_257BDEC34(&v13, v10, v11);
        }

LABEL_12:

        return;
      }
    }

    v11 = v12;
    if ((a2 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }
}

uint64_t sub_257BDE770(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_257ECCEB0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_257ECDA30();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17.receiver = v2;
  v17.super_class = ObjectType;
  objc_msgSendSuper2(&v17, sel_viewWillAppear_, a1 & 1);
  sub_257ECD400();
  v13 = sub_257ECDA20();
  v14 = sub_257ECFBD0();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_257BAC000, v13, v14, "viewWillAppear", v15, 2u);
    MEMORY[0x259C74820](v15, -1, -1);
  }

  (*(v10 + 8))(v12, v9);
  MEMORY[0x259C6F990](0, 0);
  sub_257BDCCF8(v8);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_257BDEC34(_BYTE *a1, double a2, double a3)
{
  v4 = v3;
  v8 = sub_257ECF120();
  v20 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_257ECF190();
  v11 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v12) = *a1;
  *&v4[OBJC_IVAR____TtC16MagnifierSupport27LensFilteringViewController_brightness] = a2;
  *&v4[OBJC_IVAR____TtC16MagnifierSupport27LensFilteringViewController_contrast] = a3;
  v4[OBJC_IVAR____TtC16MagnifierSupport27LensFilteringViewController_colorFilter] = v12;
  sub_257BD2C2C(0, &qword_281543F10);
  v14 = sub_257ECFD30();
  v15 = swift_allocObject();
  *(v15 + 16) = v4;
  aBlock[4] = sub_257BE4014;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_257D231C0;
  aBlock[3] = &block_descriptor_72;
  v16 = _Block_copy(aBlock);
  v17 = v4;

  sub_257ECF150();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_257BE3CDC(&qword_281544090, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480);
  sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480);
  sub_257ED0180();
  MEMORY[0x259C72880](0, v13, v10, v16);
  _Block_release(v16);

  (*(v20 + 8))(v10, v8);
  return (*(v11 + 8))(v13, v19);
}

uint64_t sub_257BDEF64(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController_pages;
  swift_beginAccess();
  v3 = *(a1 + v2);
  if (v3 >> 62)
  {
    goto LABEL_44;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_257ED0210())
  {

    if (!i)
    {
      break;
    }

    v5 = 0;
    v27 = v3 & 0xFFFFFFFFFFFFFF8;
    v28 = v3 & 0xC000000000000001;
    v25 = i;
    v26 = v3;
    while (1)
    {
      if (v28)
      {
        v9 = MEMORY[0x259C72E20](v5, v3);
      }

      else
      {
        if (v5 >= *(v27 + 16))
        {
          goto LABEL_43;
        }

        v9 = *(v3 + 8 * v5 + 32);
      }

      v10 = v9;
      v11 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v12 = *(a1 + OBJC_IVAR____TtC16MagnifierSupport27LensFilteringViewController_brightness);
      if (vabdd_f64(0.0, v12) <= 0.01)
      {
        v13 = 0.0;
        v38 = 0u;
        v37 = 0u;
      }

      else
      {
        *&v38 = &type metadata for DisplayFilter;
        *(&v38 + 1) = &off_28690CEA0;
        v13 = v12;
        LOBYTE(v37) = 0;
      }

      v36 = v13;
      v14 = *(a1 + OBJC_IVAR____TtC16MagnifierSupport27LensFilteringViewController_contrast);
      if (vabdd_f64(1.0, v14) <= 0.01)
      {
        v15 = 0.0;
        v40 = 0u;
        v41 = 0u;
      }

      else
      {
        *&v41 = &type metadata for DisplayFilter;
        *(&v41 + 1) = &off_28690CEA0;
        v15 = v14;
        LOBYTE(v40) = 1;
      }

      v39 = v15;
      v16 = *(a1 + OBJC_IVAR____TtC16MagnifierSupport27LensFilteringViewController_colorFilter);
      if (v16 == 12)
      {
        v44 = 0;
        v42 = 0u;
        v43 = 0u;
      }

      else
      {
        *(&v43 + 1) = &type metadata for ColorFilter;
        v44 = &off_28690CD28;
        LOBYTE(v42) = v16;
      }

      sub_257BE401C(&v36, &v33, &qword_27F8F54B8);
      v29 = v33;
      v30 = v34;
      v31 = v35;
      if (*(&v34 + 1))
      {
        sub_257BE40E4(&v29, v32);
        v17 = MEMORY[0x277D84F90];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_257BFCD80(0, *(MEMORY[0x277D84F90] + 16) + 1, 1, MEMORY[0x277D84F90]);
        }

        v19 = v17[2];
        v18 = v17[3];
        if (v19 >= v18 >> 1)
        {
          v17 = sub_257BFCD80((v18 > 1), v19 + 1, 1, v17);
        }

        v17[2] = v19 + 1;
        sub_257BE40E4(v32, &v17[5 * v19 + 4]);
      }

      else
      {
        sub_257BE4084(&v29, &qword_27F8F54B8);
        v17 = MEMORY[0x277D84F90];
      }

      sub_257BE401C(&v39, &v33, &qword_27F8F54B8);
      v29 = v33;
      v30 = v34;
      v31 = v35;
      if (*(&v34 + 1))
      {
        sub_257BE40E4(&v29, v32);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_257BFCD80(0, v17[2] + 1, 1, v17);
        }

        v21 = v17[2];
        v20 = v17[3];
        if (v21 >= v20 >> 1)
        {
          v17 = sub_257BFCD80((v20 > 1), v21 + 1, 1, v17);
        }

        v17[2] = v21 + 1;
        sub_257BE40E4(v32, &v17[5 * v21 + 4]);
      }

      else
      {
        sub_257BE4084(&v29, &qword_27F8F54B8);
      }

      sub_257BE401C(&v42, &v33, &qword_27F8F54B8);
      v29 = v33;
      v30 = v34;
      v31 = v35;
      if (*(&v34 + 1))
      {
        sub_257BE40E4(&v29, v32);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_257BFCD80(0, v17[2] + 1, 1, v17);
        }

        v23 = v17[2];
        v22 = v17[3];
        if (v23 >= v22 >> 1)
        {
          v17 = sub_257BFCD80((v22 > 1), v23 + 1, 1, v17);
        }

        v17[2] = v23 + 1;
        sub_257BE40E4(v32, &v17[5 * v23 + 4]);
      }

      else
      {
        sub_257BE4084(&v29, &qword_27F8F54B8);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F54B8);
      swift_arrayDestroy();
      *&v10[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_filterSet] = v17;

      v6 = [*&v10[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_imageView] layer];
      v7 = sub_257D18590(v17);

      sub_257EB7394(v7);

      v8 = sub_257ECF7F0();

      [v6 setFilters_];

      ++v5;
      v3 = v26;
      if (v11 == v25)
      {
      }
    }

    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    ;
  }
}

void sub_257BDF500()
{

  sub_257BE4084(v0 + OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController_activePageIndexPath, &unk_27F8F5460);

  sub_257BB000C(v0 + OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController_pageControlPositionDelegate);

  sub_257BB000C(v0 + OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController_textOverlayDelegate);
  v1 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController____lazy_storage___textReaderModeButtonItem);
}

uint64_t type metadata accessor for FreezeFramePageFlippingController()
{
  result = qword_27F8F5410;
  if (!qword_27F8F5410)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_257BDF720()
{
  sub_257BDF800();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_257BDF800()
{
  if (!qword_27F8F5420)
  {
    sub_257ECCEB0();
    v0 = sub_257ED00C0();
    if (!v1)
    {
      atomic_store(v0, &qword_27F8F5420);
    }
  }
}

void sub_257BDF858(double a1, double a2, double a3, double a4)
{
  v9 = swift_allocObject();
  *(v9 + 16) = v4;
  *(v9 + 24) = a1;
  *(v9 + 32) = a2;
  *(v9 + 40) = a3;
  *(v9 + 48) = a4;
  v10 = v4;
  if (sub_257D71788())
  {
    v11 = objc_opt_self();
    v12 = swift_allocObject();
    *(v12 + 16) = sub_257BE3158;
    *(v12 + 24) = v9;
    v14[4] = sub_257BE3C8C;
    v14[5] = v12;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 1107296256;
    v14[2] = sub_257DFE438;
    v14[3] = &block_descriptor_2;
    v13 = _Block_copy(v14);
    sub_257ECC3F0();

    [v11 sbs:v13 unlockDeviceIfNeededAndPerform:?];

    _Block_release(v13);
  }

  else
  {
    sub_257BE2818(v10, a1, a2, a3, a4);
  }
}

void sub_257BDF9F4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_257BDFC18();
  if (v4)
  {
    v5 = v4;
    [v5 setModalPresentationStyle_];
    sub_257BD2C2C(0, &unk_27F8F5450);
    sub_257BE401C(a1, &v12, &unk_27F8F62F0);
    v6 = swift_allocObject();
    v7 = v13;
    *(v6 + 16) = v12;
    *(v6 + 32) = v7;
    v8 = sub_257ECFE80();

    [v5 setPreferredTransition_];

    if (qword_27F8F4668 != -1)
    {
      swift_once();
    }

    v9 = v5;
    if (byte_27F8F8D88 == 1)
    {
      v10 = [v5 popoverPresentationController];

      if (!v10)
      {
LABEL_13:
        [v2 presentViewController:v5 animated:1 completion:0];

        return;
      }

      sub_257BE401C(a1, &v12, &unk_27F8F62F0);
      if (*(&v13 + 1))
      {
        sub_257BD2C2C(0, &unk_281543E00);
        if (swift_dynamicCast())
        {
          v9 = v11;
        }

        else
        {
          v9 = 0;
        }
      }

      else
      {
        sub_257BE4084(&v12, &unk_27F8F62F0);
        v9 = 0;
      }

      [v10 setSourceView_];
    }

    goto LABEL_13;
  }
}

id sub_257BDFC18()
{
  v1 = v0;
  v2 = sub_257ECDA30();
  v95 = *(v2 - 8);
  *&v96 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v86 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F30);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v91 = &v86 - v9;
  v10 = sub_257ECCB70();
  v93 = *(v10 - 8);
  v94 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v90 = &v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v92 = &v86 - v13;
  v14 = &unk_27F8F5460;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5460);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v86 - v16;
  v18 = sub_257ECCEB0();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v86 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController_activePageIndexPath;
  swift_beginAccess();
  sub_257BE401C(v1 + v22, v17, &unk_27F8F5460);
  if (v19[6](v17, 1, v18) == 1)
  {
    v23 = &unk_27F8F5460;
    v24 = v17;
LABEL_3:
    sub_257BE4084(v24, v23);
LABEL_16:
    sub_257ECD400();
    v37 = sub_257ECDA20();
    v38 = sub_257ECFBD0();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_257BAC000, v37, v38, "Unable to share image", v39, 2u);
      MEMORY[0x259C74820](v39, -1, -1);
    }

    (*(v95 + 8))(v4, v96);
    return 0;
  }

  v19[4](v21, v17, v18);
  KeyPath = OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController_pages;
  swift_beginAccess();
  v26 = *(v1 + KeyPath);
  v27 = v21;
  if (v26 >> 62)
  {
    v50 = sub_257ED0210();
    if ((v50 & 0x8000000000000000) == 0)
    {
      goto LABEL_41;
    }

    __break(1u);
    goto LABEL_33;
  }

  for (i = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = v50)
  {
    if (sub_257ECCE80() >= i)
    {
      (v19[1])(v27, v18);
      goto LABEL_16;
    }

    v14 = sub_257ECCE80();
    swift_beginAccess();
    v29 = *(v1 + KeyPath);
    v89 = v18;
    v87 = KeyPath;
    if ((v29 & 0xC000000000000001) != 0)
    {
LABEL_33:
      v30 = MEMORY[0x259C72E20](v14);
    }

    else
    {
      if ((v14 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        swift_once();
        goto LABEL_13;
      }

      if (v14 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_35;
      }

      v30 = *(v29 + 8 * v14 + 32);
    }

    v31 = v30;
    swift_endAccess();
    v32 = OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_asset;
    swift_beginAccess();
    sub_257BE401C(v31 + v32, v8, &qword_27F8F5F30);

    KeyPath = v93;
    v33 = v94;
    v18 = *(v93 + 48);
    v34 = (v18)(v8, 1, v94);
    v88 = v19;
    if (v34 != 1)
    {
      v35 = v91;
      (*(KeyPath + 32))(v91, v8, v33);
      (*(KeyPath + 56))(v35, 0, 1, v33);
      goto LABEL_20;
    }

    if (qword_281544FE0 != -1)
    {
      goto LABEL_36;
    }

LABEL_13:
    KeyPath = swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECC3F0();
    v35 = v91;
    sub_257ECDD60();

    v33 = v94;
    v36 = (v18)(v8, 1, v94);
    v19 = v88;
    if (v36 != 1)
    {
      sub_257BE4084(v8, &qword_27F8F5F30);
    }

LABEL_20:
    if ((v18)(v35, 1, v33) == 1)
    {
      (v19[1])(v27, v89);
      v23 = &qword_27F8F5F30;
      v24 = v35;
      goto LABEL_3;
    }

    (*(v93 + 32))(v92, v35, v33);
    type metadata accessor for MAGUtilities();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v42 = [objc_opt_self() bundleForClass_];
    v43 = sub_257ECF4C0();
    v44 = sub_257ECF4C0();
    v19 = [v42 localizedStringForKey:v43 value:0 table:v44];

    sub_257ECF500();
    v4 = v45;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F58E0);
    v18 = swift_allocObject();
    v96 = xmmword_257ED6D30;
    *(v18 + 16) = xmmword_257ED6D30;
    v46 = sub_257ECCE80();
    if (__OFADD__(v46, 1))
    {
      break;
    }

    v47 = MEMORY[0x277D83C10];
    *(v18 + 56) = MEMORY[0x277D83B88];
    *(v18 + 64) = v47;
    *(v18 + 32) = v46 + 1;
    v18 = sub_257ECF540();
    v8 = v48;

    v95 = v27;
    v27 = sub_257ECCE80();
    v49 = v87;
    v50 = swift_beginAccess();
    v51 = *(v1 + v49);
    v91 = v8;
    if ((v51 & 0xC000000000000001) != 0)
    {
      goto LABEL_38;
    }

    if ((v27 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v27 < *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v52 = *(v51 + 8 * v27 + 32);
      goto LABEL_27;
    }

    __break(1u);
LABEL_41:
    ;
  }

  __break(1u);
LABEL_38:
  v52 = MEMORY[0x259C72E20](v27);
LABEL_27:
  v53 = v52;
  swift_endAccess();
  v54 = &v53[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_asset];
  swift_beginAccess();
  v55 = *&v54[*(type metadata accessor for Asset() + 20)];
  v56 = v55;

  v57 = v93;
  v58 = *(v93 + 16);
  v59 = v90;
  v60 = v94;
  v58(v90, v92, v94);
  v61 = type metadata accessor for MFSnapshotProvider();
  v62 = objc_allocWithZone(v61);
  v63 = &v62[OBJC_IVAR____TtC16MagnifierSupport18MFSnapshotProvider_title];
  v64 = v91;
  *v63 = v18;
  v63[1] = v64;
  v58(&v62[OBJC_IVAR____TtC16MagnifierSupport18MFSnapshotProvider_url], v59, v60);
  *&v62[OBJC_IVAR____TtC16MagnifierSupport18MFSnapshotProvider_image] = v55;
  v65 = v56;
  v66 = sub_257ECCAE0();
  v97.receiver = v62;
  v97.super_class = v61;
  v67 = objc_msgSendSuper2(&v97, sel_initWithPlaceholderItem_, v66);

  v68 = *(v57 + 8);
  v68(v59, v60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5470);
  v69 = swift_allocObject();
  *(v69 + 16) = v96;
  *(v69 + 56) = v61;
  *(v69 + 32) = v67;
  v70 = objc_allocWithZone(type metadata accessor for MFActivityViewController());
  v71 = v67;
  v72 = sub_257ECF7F0();

  v73 = [v70 initWithActivityItems:v72 applicationActivities:0];

  v74 = [objc_opt_self() standardUserDefaults];
  v75 = sub_257ECF4C0();
  v76 = [v74 BOOLForKey_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5478);
  v77 = swift_allocObject();
  if (v76)
  {
    *(v77 + 16) = xmmword_257ED9BD0;
    v78 = *MEMORY[0x277D54740];
    v79 = *MEMORY[0x277D54788];
    *(v77 + 32) = *MEMORY[0x277D54740];
    *(v77 + 40) = v79;
    type metadata accessor for ActivityType(0);
    v80 = v73;
    v81 = v78;
    v82 = v79;
  }

  else
  {
    *(v77 + 16) = v96;
    v83 = *MEMORY[0x277D54740];
    *(v77 + 32) = *MEMORY[0x277D54740];
    type metadata accessor for ActivityType(0);
    v80 = v73;
    v84 = v83;
  }

  v85 = sub_257ECF7F0();

  [v80 setExcludedActivityTypes_];

  v68(v92, v60);
  (v88[1])(v95, v89);
  return v80;
}

uint64_t sub_257BE07DC(uint64_t a1, uint64_t a2)
{
  sub_257BE401C(a2, v4, &unk_27F8F62F0);
  if (v5)
  {
    sub_257BD2C2C(0, &unk_281543E00);
    if (swift_dynamicCast())
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_257BE4084(v4, &unk_27F8F62F0);
    return 0;
  }
}

uint64_t sub_257BE0880(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &aBlock[-1] - v4;
  swift_beginAccess();
  v6 = qword_27F8FA070;
  if (qword_27F8FA070)
  {
    v7 = sub_257ECF930();
    (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
    sub_257ECF900();
    swift_retain_n();
    v8 = v1;
    v9 = sub_257ECF8F0();
    v10 = swift_allocObject();
    v11 = MEMORY[0x277D85700];
    v10[2] = v9;
    v10[3] = v11;
    v10[4] = v8;
    v10[5] = v6;
    sub_257C3FBD4(0, 0, v5, &unk_257ED9DD8, v10);
  }

  else
  {
    sub_257BE401C(a1, v22, &unk_27F8F62F0);
    sub_257BE401C(v22, v21, &unk_27F8F62F0);
    v13 = swift_allocObject();
    *(v13 + 16) = v1;
    v14 = v22[1];
    *(v13 + 24) = v22[0];
    *(v13 + 40) = v14;
    v15 = v1;
    if (sub_257D71788())
    {
      v16 = objc_opt_self();
      v17 = swift_allocObject();
      *(v17 + 16) = sub_257BE3ED4;
      *(v17 + 24) = v13;
      aBlock[4] = sub_257BE429C;
      aBlock[5] = v17;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_257DFE438;
      aBlock[3] = &block_descriptor_55;
      v18 = _Block_copy(aBlock);
      sub_257ECC3F0();

      [v16 sbs:v18 unlockDeviceIfNeededAndPerform:?];

      _Block_release(v18);
    }

    else
    {
      sub_257BE1A74(v15, v21);
    }

    return sub_257BE4084(v21, &unk_27F8F62F0);
  }
}

uint64_t sub_257BE0B68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[42] = a4;
  v5[43] = a5;
  v6 = sub_257ECDA30();
  v5[44] = v6;
  v5[45] = *(v6 - 8);
  v5[46] = swift_task_alloc();
  v5[47] = swift_task_alloc();
  v7 = sub_257ECD720();
  v5[48] = v7;
  v5[49] = *(v7 - 8);
  v5[50] = swift_task_alloc();
  v5[51] = swift_task_alloc();
  v5[52] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F30);
  v5[53] = swift_task_alloc();
  v8 = sub_257ECCB70();
  v5[54] = v8;
  v5[55] = *(v8 - 8);
  v5[56] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5460);
  v5[57] = swift_task_alloc();
  v9 = sub_257ECCEB0();
  v5[58] = v9;
  v5[59] = *(v9 - 8);
  v5[60] = swift_task_alloc();
  sub_257ECF900();
  v5[61] = sub_257ECF8F0();
  v11 = sub_257ECF8B0();
  v5[62] = v11;
  v5[63] = v10;

  return MEMORY[0x2822009F8](sub_257BE0E04, v11, v10);
}

uint64_t sub_257BE0E04()
{
  v1 = v0[58];
  v2 = v0[59];
  v3 = v0[57];
  v4 = v0[42];
  v5 = OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController_activePageIndexPath;
  swift_beginAccess();
  sub_257BE401C(v4 + v5, v3, &unk_27F8F5460);
  if ((*(v2 + 48))(v3, 1, v1) != 1)
  {
    v9 = v0[42];
    (*(v0[59] + 32))(v0[60], v0[57], v0[58]);
    v10 = sub_257ECCE80();
    v11 = OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController_pages;
    v12 = swift_beginAccess();
    v13 = *(v9 + v11);
    if ((v13 & 0xC000000000000001) == 0)
    {
      if ((v10 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v10 < *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v14 = *(v13 + 8 * v10 + 32);
LABEL_7:
        v15 = v14;
        v16 = v0[54];
        v17 = v0[55];
        v18 = v0[53];
        swift_endAccess();
        v19 = OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_asset;
        swift_beginAccess();
        sub_257BE401C(v15 + v19, v18, &qword_27F8F5F30);

        if ((*(v17 + 48))(v18, 1, v16) == 1)
        {
          v20 = v0[53];
          (*(v0[59] + 8))(v0[60], v0[58]);

          v7 = &qword_27F8F5F30;
          v8 = v20;
          goto LABEL_9;
        }

        (*(v0[55] + 32))(v0[56], v0[53], v0[54]);
        v23 = [objc_allocWithZone(MEMORY[0x277CCAE58]) initWithActivityType_];
        v0[64] = v23;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8FB2D0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_257ED9BD0;
        v0[36] = 0xD000000000000017;
        v0[37] = 0x8000000257EF8B40;
        v25 = MEMORY[0x277D837D0];
        sub_257ED0280();
        *(inited + 96) = v25;
        *(inited + 72) = 0xD000000000000011;
        *(inited + 80) = 0x8000000257EF8B60;
        v0[38] = 0xD000000000000014;
        v0[39] = 0x8000000257EF8B80;
        sub_257ED0280();
        v26 = sub_257ECCAD0();
        *(inited + 168) = v25;
        *(inited + 144) = v26;
        *(inited + 152) = v27;
        sub_257BE88A0(inited);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F54A0);
        swift_arrayDestroy();
        v28 = sub_257ECF3C0();

        [v23 setUserInfo_];

        v29 = swift_task_alloc();
        v0[65] = v29;
        *v29 = v0;
        v29[1] = sub_257BE1298;
        v12 = v23;

        return MEMORY[0x282123370](v12);
      }

      __break(1u);
      return MEMORY[0x282123370](v12);
    }

    v14 = MEMORY[0x259C72E20](v10);
    goto LABEL_7;
  }

  v6 = v0[57];

  v7 = &unk_27F8F5460;
  v8 = v6;
LABEL_9:
  sub_257BE4084(v8, v7);

  v21 = v0[1];

  return v21();
}

uint64_t sub_257BE1298()
{
  v2 = *v1;
  *(*v1 + 528) = v0;

  v3 = *(v2 + 504);
  v4 = *(v2 + 496);
  if (v0)
  {
    v5 = sub_257BE14E8;
  }

  else
  {
    v5 = sub_257BE13D4;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_257BE13D4()
{
  v1 = v0[64];
  v2 = v0[60];
  v3 = v0[58];
  v4 = v0[59];
  v6 = v0[55];
  v5 = v0[56];
  v7 = v0[54];

  (*(v6 + 8))(v5, v7);
  (*(v4 + 8))(v2, v3);

  v8 = v0[1];

  return v8();
}

uint64_t sub_257BE14E8()
{
  v64 = v0;
  v1 = *(v0 + 528);
  v2 = *(v0 + 512);

  *(v0 + 320) = v1;
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F65B0);
  v4 = swift_dynamicCast();
  v5 = *(v0 + 528);
  if (v4)
  {
    v6 = *(v0 + 408);
    v7 = *(v0 + 416);
    v9 = *(v0 + 392);
    v8 = *(v0 + 400);
    v10 = *(v0 + 384);

    (*(v9 + 32))(v7, v8, v10);
    sub_257ECD400();
    (*(v9 + 16))(v6, v7, v10);
    v11 = sub_257ECDA20();
    v12 = sub_257ECFBE0();
    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v0 + 472);
    v15 = *(v0 + 480);
    v16 = *(v0 + 464);
    v59 = *(v0 + 448);
    v61 = *(v0 + 440);
    v17 = *(v0 + 408);
    v55 = *(v0 + 416);
    v57 = *(v0 + 432);
    v19 = *(v0 + 384);
    v18 = *(v0 + 392);
    v20 = *(v0 + 360);
    v52 = *(v0 + 352);
    v53 = *(v0 + 376);
    if (v13)
    {
      v47 = v12;
      v21 = swift_slowAlloc();
      v50 = v14;
      v22 = swift_slowAlloc();
      v63 = v22;
      *v21 = 136315138;
      sub_257BE3CDC(&qword_27F8F54B0, MEMORY[0x277CD4890]);
      v48 = v16;
      v49 = v15;
      v23 = sub_257ED0720();
      v25 = v24;
      v26 = *(v18 + 8);
      v26(v17, v19);
      v27 = sub_257BF1FC8(v23, v25, &v63);

      *(v21 + 4) = v27;
      _os_log_impl(&dword_257BAC000, v11, v47, "Unable to open app - ApplicationLaunchError - %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x259C74820](v22, -1, -1);
      MEMORY[0x259C74820](v21, -1, -1);

      (*(v20 + 8))(v53, v52);
      v26(v55, v19);
      (*(v61 + 8))(v59, v57);
      v50[1](v49, v48);
    }

    else
    {

      v44 = *(v18 + 8);
      v44(v17, v19);
      (*(v20 + 8))(v53, v52);
      v44(v55, v19);
      (*(v61 + 8))(v59, v57);
      v14[1](v15, v16);
    }
  }

  else
  {

    sub_257ECD400();
    v28 = v5;
    v29 = sub_257ECDA20();
    v30 = sub_257ECFBE0();

    v31 = os_log_type_enabled(v29, v30);
    v32 = *(v0 + 528);
    v34 = *(v0 + 472);
    v33 = *(v0 + 480);
    v35 = *(v0 + 464);
    v37 = *(v0 + 440);
    v36 = *(v0 + 448);
    v38 = *(v0 + 360);
    v60 = *(v0 + 368);
    v62 = *(v0 + 432);
    v58 = *(v0 + 352);
    if (v31)
    {
      v56 = *(v0 + 464);
      v39 = swift_slowAlloc();
      v54 = v36;
      v40 = swift_slowAlloc();
      v63 = v40;
      *v39 = 136315138;
      v51 = v32;
      swift_getErrorValue();
      v41 = sub_257ED0720();
      v43 = sub_257BF1FC8(v41, v42, &v63);

      *(v39 + 4) = v43;
      _os_log_impl(&dword_257BAC000, v29, v30, "Unable to open app - unknown error type - %s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v40);
      MEMORY[0x259C74820](v40, -1, -1);
      MEMORY[0x259C74820](v39, -1, -1);

      (*(v38 + 8))(v60, v58);
      (*(v37 + 8))(v54, v62);
      (*(v34 + 8))(v33, v56);
    }

    else
    {

      (*(v38 + 8))(v60, v58);
      (*(v37 + 8))(v36, v62);
      (*(v34 + 8))(v33, v35);
    }
  }

  v45 = *(v0 + 8);

  return v45();
}

void sub_257BE1A74(void *a1, uint64_t a2)
{
  v4 = sub_257ECF120();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_257ECF190();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([objc_opt_self() isMainThread])
  {
    sub_257BDF9F4(a2);
  }

  else
  {
    sub_257BD2C2C(0, &qword_281543F10);
    v18 = v8;
    v17 = sub_257ECFD30();
    sub_257BE401C(a2, v20, &unk_27F8F62F0);
    v12 = swift_allocObject();
    v13 = v20[1];
    *(v12 + 24) = v20[0];
    *(v12 + 16) = a1;
    *(v12 + 40) = v13;
    aBlock[4] = sub_257BE3FE8;
    aBlock[5] = v12;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_257D231C0;
    aBlock[3] = &block_descriptor_66;
    v14 = _Block_copy(aBlock);
    v15 = a1;

    sub_257ECF150();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_257BE3CDC(&qword_281544090, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480);
    sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480);
    sub_257ED0180();
    v16 = v17;
    MEMORY[0x259C72880](0, v11, v7, v14);
    _Block_release(v14);

    (*(v5 + 8))(v7, v4);
    (*(v9 + 8))(v11, v18);
  }
}

uint64_t sub_257BE1DC0()
{
  v1 = sub_257ECF120();
  v13 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_257ECF190();
  v4 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257BD2C2C(0, &qword_281543F10);
  v7 = sub_257ECFD30();
  v8 = swift_allocObject();
  *(v8 + 16) = v0;
  aBlock[4] = sub_257BE3D24;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_257D231C0;
  aBlock[3] = &block_descriptor_39_0;
  v9 = _Block_copy(aBlock);
  v10 = v0;

  sub_257ECF150();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_257BE3CDC(&qword_281544090, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480);
  sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480);
  sub_257ED0180();
  MEMORY[0x259C72880](0, v6, v3, v9);
  _Block_release(v9);

  (*(v13 + 8))(v3, v1);
  return (*(v4 + 8))(v6, v12);
}

void sub_257BE20B4(void *a1)
{
  v2 = sub_257ECDA30();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v28 - v7;
  v9 = sub_257BDB500();
  v10 = [v9 viewControllers];

  if (!v10)
  {
    goto LABEL_12;
  }

  sub_257BD2C2C(0, &unk_281543F40);
  v11 = sub_257ECF810();

  if (v11 >> 62)
  {
    if (sub_257ED0210())
    {
      goto LABEL_4;
    }

LABEL_11:

    goto LABEL_12;
  }

  if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_11;
  }

LABEL_4:
  if ((v11 & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x259C72E20](0, v11);
  }

  else
  {
    if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v12 = *(v11 + 32);
  }

  v13 = v12;

  type metadata accessor for FreezeFramePageContentViewController();
  v14 = swift_dynamicCastClass();
  if (v14)
  {
    v15 = v14;
    v16 = sub_257ECF930();
    (*(*(v16 - 8) + 56))(v8, 1, 1, v16);
    sub_257ECF900();
    v17 = v13;
    v18 = sub_257ECF8F0();
    v19 = swift_allocObject();
    v20 = MEMORY[0x277D85700];
    v19[2] = v18;
    v19[3] = v20;
    v19[4] = v15;
    sub_257E81524(0, 0, v8, &unk_257ED9DC8, v19);

    return;
  }

LABEL_12:
  sub_257ECD400();
  v21 = a1;
  v22 = sub_257ECDA20();
  v23 = sub_257ECFBD0();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v24 = 138412290;
    v26 = *&v21[OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController____lazy_storage___pageController];
    *(v24 + 4) = v26;
    *v25 = v26;
    v27 = v26;
    _os_log_impl(&dword_257BAC000, v22, v23, "Could not load view controllers of pageController: %@", v24, 0xCu);
    sub_257BE4084(v25, &unk_27F8F5490);
    MEMORY[0x259C74820](v25, -1, -1);
    MEMORY[0x259C74820](v24, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
}

uint64_t sub_257BE2440()
{
  v0[2] = sub_257ECF900();
  v0[3] = sub_257ECF8F0();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_257BE24EC;

  return sub_257DD6750();
}

uint64_t sub_257BE24EC()
{
  *(*v1 + 40) = v0;

  v3 = sub_257ECF8B0();
  if (v0)
  {
    v4 = sub_257BE26AC;
  }

  else
  {
    v4 = sub_257BE2648;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

uint64_t sub_257BE2648()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_257BE26AC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_257BE2710(void *a1, uint64_t a2, uint64_t a3, void (*a4)(_OWORD *))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_257ED0160();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    v7 = a1;
  }

  a4(v9);

  return sub_257BE4084(v9, &unk_27F8F62F0);
}

void sub_257BE2818(void *a1, double a2, double a3, double a4, double a5)
{
  v10 = sub_257ECF120();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_257ECF190();
  v15 = *(v14 - 1);
  MEMORY[0x28223BE20](v14);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([objc_opt_self() isMainThread])
  {
    v18 = sub_257BDFC18();
    if (v18)
    {
      v30 = v18;
      [v30 setModalPresentationStyle_];
      v19 = [v30 popoverPresentationController];
      if (v19)
      {
        v20 = v19;
        v21 = [a1 view];
        [v20 setSourceView_];
      }

      v22 = [v30 popoverPresentationController];
      [v22 setSourceRect_];

      v23 = [v30 popoverPresentationController];
      if (v23)
      {
        [v23 setPermittedArrowDirections_];
      }

      [a1 presentViewController:v30 animated:1 completion:0];
      v24 = v30;
    }
  }

  else
  {
    sub_257BD2C2C(0, &qword_281543F10);
    v30 = v14;
    v29 = sub_257ECFD30();
    v25 = swift_allocObject();
    *(v25 + 16) = a1;
    *(v25 + 24) = a2;
    *(v25 + 32) = a3;
    *(v25 + 40) = a4;
    *(v25 + 48) = a5;
    aBlock[4] = sub_257BE3CAC;
    aBlock[5] = v25;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_257D231C0;
    aBlock[3] = &block_descriptor_33_0;
    v26 = _Block_copy(aBlock);
    v27 = a1;

    sub_257ECF150();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_257BE3CDC(&qword_281544090, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480);
    sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480);
    sub_257ED0180();
    v28 = v29;
    MEMORY[0x259C72880](0, v17, v13, v26);
    _Block_release(v26);

    (*(v11 + 8))(v13, v10);
    (*(v15 + 8))(v17, v30);
  }
}

void sub_257BE2C98(void *a1, double a2, double a3, double a4, double a5)
{
  v10 = sub_257BDFC18();
  if (v10)
  {
    v16 = v10;
    [v16 setModalPresentationStyle_];
    v11 = [v16 popoverPresentationController];
    if (v11)
    {
      v12 = v11;
      v13 = [a1 view];
      [v12 setSourceView_];
    }

    v14 = [v16 popoverPresentationController];
    [v14 setSourceRect_];

    v15 = [v16 popoverPresentationController];
    if (v15)
    {
      [v15 setPermittedArrowDirections_];
    }

    [a1 presentViewController:v16 animated:1 completion:0];
  }
}

uint64_t sub_257BE2E98()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();
}

uint64_t sub_257BE2F14(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F30);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v9 - v6;
  sub_257BE401C(a1, &v9 - v6, &qword_27F8F5F30);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257BE401C(v7, v5, &qword_27F8F5F30);
  sub_257ECC3F0();
  sub_257ECDD70();
  return sub_257BE4084(v7, &qword_27F8F5F30);
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_257BE3098(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Asset();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_257BE30FC(uint64_t a1)
{
  v2 = type metadata accessor for Asset();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_257BE3170()
{
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController_freezeFrameDisplayAppearanceSubscription) = 0;
  v1 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62 && sub_257ED0210())
  {
    v2 = sub_257BF2CF8(MEMORY[0x277D84F90]);
  }

  else
  {
    v2 = MEMORY[0x277D84FA0];
  }

  *(v0 + OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController_cancellables) = v2;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController_pages) = v1;
  v3 = OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController_activePageIndexPath;
  MEMORY[0x259C6F990](0, 0);
  v4 = sub_257ECCEB0();
  (*(*(v4 - 8) + 56))(v0 + v3, 0, 1, v4);
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController_pageSpacing) = 0x4030000000000000;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController____lazy_storage___pageController) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController____lazy_storage___assetURLs) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController_pageControlPositionDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v5 = OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController_pageControl;
  *(v0 + v5) = [objc_allocWithZone(MEMORY[0x277D757E0]) init];
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController_pageControlConstraints) = v1;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController_textOverlayDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController____lazy_storage___textReaderModeButtonItem) = 0;
  sub_257ED0410();
  __break(1u);
}

uint64_t sub_257BE331C(unint64_t a1)
{
  v18 = MEMORY[0x277D84F90];
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (!(a1 >> 62))
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_20:
    v5 = MEMORY[0x277D84F90];
    goto LABEL_21;
  }

LABEL_19:
  v3 = sub_257ED0210();
  if (!v3)
  {
    goto LABEL_20;
  }

LABEL_3:
  v4 = 0;
  v5 = MEMORY[0x277D84F90];
  do
  {
    v6 = v4;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x259C72E20](v6, a1);
      }

      else
      {
        if (v6 >= *(v2 + 16))
        {
          goto LABEL_18;
        }

        v7 = *(a1 + 8 * v6 + 32);
      }

      v8 = v7;
      v4 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      type metadata accessor for FreezeFramePageContentViewController();
      if (swift_dynamicCastClass())
      {
        break;
      }

      ++v6;
      if (v4 == v3)
      {
        goto LABEL_21;
      }
    }

    MEMORY[0x259C72300]();
    if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_257ECF830();
    }

    sub_257ECF860();
    v5 = v18;
  }

  while (v4 != v3);
LABEL_21:
  if (v5 >> 62)
  {
    goto LABEL_39;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_257ED0210())
  {
    for (j = 0; ; ++j)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x259C72E20](j, v5);
      }

      else
      {
        if (j >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_38;
        }

        v11 = *(v5 + 8 * j + 32);
      }

      v12 = v11;
      v13 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_257DD6114();
      sub_257DD643C();
      if (qword_281544FE0 != -1)
      {
        swift_once();
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_257ECDD60();

      if (v17)
      {
        v14 = sub_257ED0640();

        if ((v14 & 1) == 0)
        {
          v15 = [*&v12[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_scrollView] panGestureRecognizer];
          [v15 setEnabled_];
        }
      }

      else
      {
      }

      if (v13 == i)
      {
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    ;
  }
}

void sub_257BE3668(void *a1, char a2, char a3)
{
  v7 = sub_257ECCEB0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a3 & 1) == 0)
  {
    return;
  }

  v11 = [a1 viewControllers];
  if (!v11)
  {
    return;
  }

  v12 = v11;
  sub_257BD2C2C(0, &unk_281543F40);
  v13 = sub_257ECF810();

  if (v13 >> 62)
  {
    v14 = sub_257ED0210();
    if (v14)
    {
      goto LABEL_5;
    }

LABEL_22:

    return;
  }

  v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v14)
  {
    goto LABEL_22;
  }

LABEL_5:
  if ((v13 & 0xC000000000000001) != 0)
  {
    v15 = MEMORY[0x259C72E20](0, v13);
  }

  else
  {
    if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_27;
    }

    v15 = *(v13 + 32);
  }

  v29 = v15;

  type metadata accessor for FreezeFramePageContentViewController();
  v16 = swift_dynamicCastClass();
  if (v16)
  {
    v17 = v16;
    v18 = OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController_pages;
    swift_beginAccess();
    v19 = *(v3 + v18);

    v20 = sub_257DB83B8(v17, v19);
    v22 = v21;

    if ((v22 & 1) != 0 || (a2 & 1) == 0)
    {
LABEL_16:

      return;
    }

    MEMORY[0x259C6F990](v20, 0);
    sub_257BDCCF8(v10);
    (*(v8 + 8))(v10, v7);
    v23 = OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController_pageControl;
    [*(v3 + OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController_pageControl) setCurrentPage_];
    v14 = *(v3 + v23);
    v24 = *(v3 + v18);
    if (!(v24 >> 62))
    {
      v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_13:
      v26 = 0.0;
      if (v25 > 1)
      {
        v26 = 1.0;
      }

      [v14 setAlpha_];
      goto LABEL_16;
    }

LABEL_27:
    v28 = v14;
    v25 = sub_257ED0210();
    v14 = v28;
    goto LABEL_13;
  }

  v27 = v29;
}

uint64_t sub_257BE3960(void *a1)
{
  v3 = [v1 traitCollection];
  v4 = [v3 layoutDirection];

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = -1;
  }

  type metadata accessor for FreezeFramePageContentViewController();
  result = swift_dynamicCastClass();
  if (!result)
  {
    return result;
  }

  v7 = result;
  v8 = OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController_pages;
  swift_beginAccess();
  v9 = *&v1[v8];
  v10 = a1;

  v11 = sub_257DB83B8(v7, v9);
  v13 = v12;

  if (v13)
  {
LABEL_15:

    return 0;
  }

  v14 = *&v1[v8];
  if (v14 >> 62)
  {
    v15 = sub_257ED0210();
    if ((v15 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_19;
    }
  }

  else
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v16 = __OFADD__(v11, v5);
  v11 += v5;
  if (v16)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if ((v11 & 0x8000000000000000) != 0 || v11 >= v15)
  {
    goto LABEL_15;
  }

  result = swift_beginAccess();
  v17 = *&v1[v8];
  if ((v17 & 0xC000000000000001) != 0)
  {
LABEL_20:
    v18 = MEMORY[0x259C72E20](v11);
    goto LABEL_14;
  }

  if (v11 < *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v18 = *(v17 + 8 * v11 + 32);
LABEL_14:
    v19 = v18;
    swift_endAccess();

    return v19;
  }

  __break(1u);
  return result;
}

uint64_t sub_257BE3AF4(void *a1)
{
  v3 = [v1 traitCollection];
  v4 = [v3 layoutDirection];

  if (v4 == 1)
  {
    v5 = -1;
  }

  else
  {
    v5 = 1;
  }

  type metadata accessor for FreezeFramePageContentViewController();
  result = swift_dynamicCastClass();
  if (!result)
  {
    return result;
  }

  v7 = result;
  v8 = OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController_pages;
  swift_beginAccess();
  v9 = *&v1[v8];
  v10 = a1;

  v11 = sub_257DB83B8(v7, v9);
  v13 = v12;

  if (v13)
  {
LABEL_15:

    return 0;
  }

  v14 = *&v1[v8];
  if (v14 >> 62)
  {
    v15 = sub_257ED0210();
    if ((v15 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_19;
    }
  }

  else
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v16 = __OFADD__(v11, v5);
  v11 += v5;
  if (v16)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if ((v11 & 0x8000000000000000) != 0 || v11 >= v15)
  {
    goto LABEL_15;
  }

  result = swift_beginAccess();
  v17 = *&v1[v8];
  if ((v17 & 0xC000000000000001) != 0)
  {
LABEL_20:
    v18 = MEMORY[0x259C72E20](v11);
    goto LABEL_14;
  }

  if (v11 < *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v18 = *(v17 + 8 * v11 + 32);
LABEL_14:
    v19 = v18;
    swift_endAccess();

    return v19;
  }

  __break(1u);
  return result;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_257ECC3F0();
}

uint64_t sub_257BE3CDC(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_257BE3D2C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_257BE3DE0;

  return sub_257BE2440();
}

uint64_t sub_257BE3DE0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_257BE3EE0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_257BE3DE0;

  return sub_257BE0B68(a1, v4, v5, v7, v6);
}

uint64_t objectdestroy_47Tm()
{
  if (*(v0 + 48))
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 24);
  }

  return swift_deallocObject();
}

uint64_t sub_257BE401C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_257BE4084(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_257BE40E4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_257BE40FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5460);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_257BE416C()
{
  result = qword_281543F20;
  if (!qword_281543F20)
  {
    sub_257BD2C2C(255, &qword_281543F10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281543F20);
  }

  return result;
}

uint64_t sub_257BE41F4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_257BE42A0()
{
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_257ECF4C0();

  v3 = sub_257ECF4C0();
  v4 = [v1 localizedStringForKey:v2 value:0 table:v3];

  v5 = sub_257ECF500();
  return v5;
}

uint64_t sub_257BE44C8()
{
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_257ECF4C0();
  v3 = sub_257ECF4C0();
  v4 = [v1 localizedStringForKey:v2 value:0 table:v3];

  v5 = sub_257ECF500();
  return v5;
}

id sub_257BE45D8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DB0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v23 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F54C0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DC0);
  v25 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v23 - v11;
  v27.receiver = v1;
  v27.super_class = ObjectType;
  objc_msgSendSuper2(&v27, sel_viewDidLoad);
  v13 = *&v1[OBJC_IVAR____TtC16MagnifierSupport35TextDetectionSettingsViewController_tableView];
  [v13 setDataSource_];
  [v13 setDelegate_];
  sub_257BD2C2C(0, &qword_27F8F5560);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = sub_257ECF4C0();
  [v13 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v15];

  [v13 setTranslatesAutoresizingMaskIntoConstraints_];
  result = [v1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v17 = result;
  [result addSubview_];

  result = [v1 view];
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v18 = result;
  v24 = v10;
  sub_257EB6FD8(result, *MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24));

  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DD0);
  sub_257ECDD30();
  swift_endAccess();
  v19 = [objc_opt_self() mainRunLoop];
  v26 = v19;
  v20 = sub_257ED0080();
  (*(*(v20 - 8) + 56))(v5, 1, 1, v20);
  sub_257BD2C2C(0, &unk_281543D40);
  sub_257BD2D4C(&unk_281544140, &unk_27F8F54C0);
  sub_257BD2C74();
  sub_257ECDDF0();
  sub_257BD2CDC(v5);

  (*(v7 + 8))(v9, v6);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_257BD2D4C(&unk_281544230, &unk_27F8F4DC0);
  v21 = v24;
  v22 = sub_257ECDE50();

  (*(v25 + 8))(v12, v21);
  *&v1[OBJC_IVAR____TtC16MagnifierSupport35TextDetectionSettingsViewController_speechFeedbackSubscription] = v22;
}

void sub_257BE4AE8()
{
  v0 = sub_257ECCEB0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (v9[7] == 1)
    {
      [v5 beginUpdates];
      MEMORY[0x259C6F970](1, 0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5570);
      v6 = (*(v1 + 80) + 32) & ~*(v1 + 80);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_257ED6D30;
      (*(v1 + 16))(v7 + v6, v3, v0);
      v8 = sub_257ECF7F0();

      [v5 reloadRowsAtIndexPaths:v8 withRowAnimation:100];

      [v5 endUpdates];
      (*(v1 + 8))(v3, v0);
    }

    else
    {
    }
  }
}

void sub_257BE4D7C(char a1)
{
  v9.receiver = v1;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, sel_viewWillAppear_, a1 & 1);
  v3 = [v1 navigationItem];
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  v6 = sub_257ECF4C0();
  v7 = sub_257ECF4C0();
  v8 = [v5 localizedStringForKey:v6 value:0 table:v7];

  if (!v8)
  {
    sub_257ECF500();
    v8 = sub_257ECF4C0();
  }

  [v3 setTitle_];
}

id sub_257BE4F38(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC16MagnifierSupport35TextDetectionSettingsViewController_availableTextDetectionFeedbacks] = &unk_286903BE0;
  v7 = OBJC_IVAR____TtC16MagnifierSupport35TextDetectionSettingsViewController_tableView;
  v8 = [objc_allocWithZone(MEMORY[0x277D75B40]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  v9 = objc_opt_self();
  v10 = v8;
  v11 = [v9 systemYellowColor];
  [v10 setTintColor_];

  [v10 setClipsToBounds_];
  *&v3[v7] = v10;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport35TextDetectionSettingsViewController_speechFeedbackSubscription] = 0;
  if (a2)
  {
    v12 = sub_257ECF4C0();
  }

  else
  {
    v12 = 0;
  }

  v15.receiver = v3;
  v15.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v15, sel_initWithNibName_bundle_, v12, a3);

  return v13;
}

id sub_257BE50FC(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC16MagnifierSupport35TextDetectionSettingsViewController_availableTextDetectionFeedbacks] = &unk_286903C08;
  v4 = OBJC_IVAR____TtC16MagnifierSupport35TextDetectionSettingsViewController_tableView;
  v5 = [objc_allocWithZone(MEMORY[0x277D75B40]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 systemYellowColor];
  [v7 setTintColor_];

  [v7 setClipsToBounds_];
  *&v1[v4] = v7;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport35TextDetectionSettingsViewController_speechFeedbackSubscription] = 0;
  v11.receiver = v1;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, sel_initWithCoder_, a1);

  if (v9)
  {
  }

  return v9;
}

id sub_257BE5310(void *a1)
{
  v2 = v1;
  v4 = 0xD000000000000011;
  v5 = sub_257ECF4C0();
  v6 = sub_257ECCE30();
  v7 = [a1 dequeueReusableCellWithIdentifier:v5 forIndexPath:v6];

  v8 = sub_257ECCEA0();
  if (v8 == 1)
  {
    v18 = [v7 textLabel];
    if (v18)
    {
      v19 = v18;
      type metadata accessor for MAGUtilities();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v21 = [objc_opt_self() bundleForClass_];
      v22 = sub_257ECF4C0();
      v23 = sub_257ECF4C0();
      v24 = [v21 localizedStringForKey:v22 value:0 table:v23];

      if (!v24)
      {
        sub_257ECF500();
        v24 = sub_257ECF4C0();
      }

      [v19 setText_];
    }

    v25 = [v7 textLabel];
    if (v25)
    {
      v26 = v25;
      [v25 setNumberOfLines_];
    }

    v27 = [v7 textLabel];
    if (v27)
    {
      v28 = v27;
      [v27 setLineBreakMode_];
    }

    v4 = [objc_allocWithZone(MEMORY[0x277D75AE8]) init];
    if (qword_281544FE0 == -1)
    {
      goto LABEL_20;
    }

    goto LABEL_26;
  }

  if (!v8)
  {
    v9 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport35TextDetectionSettingsViewController_availableTextDetectionFeedbacks);
    v10 = sub_257ECCE60();
    if ((v10 & 0x8000000000000000) == 0)
    {
      if (v10 >= *(v9 + 16))
      {
        __break(1u);
      }

      else
      {
        v6 = *(v9 + v10 + 32);
        v11 = [v7 textLabel];
        if (v11)
        {
          v12 = v11;
          sub_257BE42A0();
          v13 = sub_257ECF4C0();

          [v12 setText_];
        }

        v4 = [objc_allocWithZone(MEMORY[0x277D75AE8]) init];
        if (qword_281544FE0 == -1)
        {
          goto LABEL_8;
        }
      }

      swift_once();
LABEL_8:
      v14 = (qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedTextDetectionFeedbacks);
      swift_beginAccess();
      v33 = *v14;
      v35 = v14[1];
      v38 = v14[2];
      v15 = qword_2815447E0;

      if (v15 != -1)
      {
        v16 = swift_once();
      }

      MEMORY[0x28223BE20](v16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5540);
      sub_257ECFD50();

      v17 = sub_257C592E8(v6, v39);

      [v4 setOn_];
      v4 = v4;
      [v4 setTag_];
      [v4 addTarget:v2 action:sel_didToggleFeedbackSwitch_ forControlEvents:4096];
      [v7 setAccessoryView_];

LABEL_23:
      [v7 setAccessoryType_];

      return v7;
    }

    __break(1u);
LABEL_26:
    swift_once();
LABEL_20:
    v29 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__textDetectionFlashlightEnabled;
    swift_beginAccess();
    v34 = *v29;
    v36 = *(v29 + 8);
    LOBYTE(v37) = *(v29 + 16);
    v30 = qword_2815447E0;

    if (v30 != -1)
    {
      v31 = swift_once();
    }

    MEMORY[0x28223BE20](v31);
    sub_257ECFD50();

    [v4 setOn_];
    [v4 addTarget:v2 action:sel_didToggleFlashlightSwitch_ forControlEvents:4096];
    [v7 setAccessoryView_];
    goto LABEL_23;
  }

  return v7;
}

uint64_t getEnumTagSinglePayload for TextDetectionFeedback(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TextDetectionFeedback(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_257BE5EDC()
{
  result = qword_27F8F5530;
  if (!qword_27F8F5530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F5530);
  }

  return result;
}

unint64_t sub_257BE5F74()
{
  result = qword_2815446A8;
  if (!qword_2815446A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815446A8);
  }

  return result;
}

id sub_257BE5FC8(void *a1)
{
  result = [a1 tag];
  if (result)
  {
    if (result != 1)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  if ([a1 isOn])
  {
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v4 = qword_2815447E0;

    if (v4 != -1)
    {
      v5 = swift_once();
    }

    MEMORY[0x28223BE20](v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5540);
    sub_257ECFD50();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5550);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_257ED6D30;
    *(inited + 32) = v3;
    sub_257EB05F8(inited);
    sub_257D519D8(v15, 1);
  }

  else
  {
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v7 = qword_2815447E0;

    if (v7 != -1)
    {
      v8 = swift_once();
    }

    MEMORY[0x28223BE20](v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5540);
    sub_257ECFD50();

    v9 = *(v15 + 16);
    if (v9)
    {
      v10 = (v15 + 32);
      v11 = MEMORY[0x277D84F90];
      do
      {
        v14 = *v10;
        if (v3 != v14)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_257BF2704(0, *(v11 + 16) + 1, 1);
          }

          v13 = *(v11 + 16);
          v12 = *(v11 + 24);
          if (v13 >= v12 >> 1)
          {
            sub_257BF2704((v12 > 1), v13 + 1, 1);
          }

          *(v11 + 16) = v13 + 1;
          *(v11 + v13 + 32) = v14;
        }

        ++v10;
        --v9;
      }

      while (v9);
    }

    else
    {
      v11 = MEMORY[0x277D84F90];
    }

    sub_257D519D8(v11, 1);
  }
}

uint64_t sub_257BE63B8(void *a1)
{
  v2 = sub_257ECF120();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v6 = qword_281548348;
  v7 = [a1 isOn];
  v8 = v6 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__textDetectionFlashlightEnabled;
  swift_beginAccess();
  v12 = v7;
  if (qword_2815447E0 != -1)
  {
    swift_once();
  }

  v9 = sub_257ECF110();
  MEMORY[0x28223BE20](v9);
  *&v11[-16] = &v12;
  *&v11[-8] = v8;
  sub_257ECFD40();
  (*(v3 + 8))(v5, v2);
  return swift_endAccess();
}

uint64_t sub_257BE659C(uint64_t a1)
{
  if (a1)
  {
    return 0;
  }

  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_257ECF4C0();
  v5 = sub_257ECF4C0();
  v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

  v7 = sub_257ECF500();
  return v7;
}

id MAGAdvancedEvent.eventType.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + 16);
  *(a1 + 16) = v4;
  return sub_257BE66F0(v2, v3, v4);
}

id sub_257BE66F0(id result, id a2, char a3)
{
  if (a3 == 1)
  {
    return result;
  }

  if (!a3)
  {
  }

  return result;
}

uint64_t static MAGAdvancedEvent.didGenerateFramingGuidance(guidance:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
}

void static MAGAdvancedEvent.didCompleteFraming()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 2;
}

id static MAGAdvancedEvent.didGenerateDocumentObservation(observation:)@<X0>(id a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  return a1;
}

double static MAGAdvancedEvent.didGenerateEmptyDocumentObservation()@<D0>(uint64_t a1@<X8>)
{
  *&result = 1;
  *a1 = xmmword_257EDA120;
  *(a1 + 16) = 2;
  return result;
}

unint64_t MAGAdvancedEvent.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_257ED02D0();

  if (v3)
  {
    if (v3 == 1)
    {
      v4 = "ty Document Observation";
      v5 = 0xD000000000000021;
    }

    else
    {
      if (v1 | v2)
      {
        v5 = 0xD000000000000027;
      }

      else
      {
        v5 = 0xD00000000000001DLL;
      }

      if (v1 | v2)
      {
        v4 = "Did Generate Framing Guidance";
      }

      else
      {
        v4 = "Advanced Event: ";
      }
    }
  }

  else
  {
    v5 = 0xD000000000000022;
    v4 = "ument Observation";
  }

  MEMORY[0x259C72150](v5, v4 | 0x8000000000000000);

  return 0xD000000000000010;
}