void std::__tree<int>::__move_assign(uint64_t a1, void *a2)
{
  v4 = (a1 + 8);
  std::__tree<int>::destroy(a1, *(a1 + 8));
  *a1 = *a2;
  v5 = a2 + 1;
  v6 = a2[1];
  *v4 = v6;
  v7 = a2[2];
  *(a1 + 16) = v7;
  if (v7)
  {
    *(v6 + 16) = v4;
    *a2 = v5;
    *v5 = 0;
    a2[2] = 0;
  }

  else
  {
    *a1 = v4;
  }
}

uint64_t OUBox3d::operator=(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v6;
  *a1 = v4;
  *(a1 + 16) = v5;
  v7 = a2[4];
  v8 = a2[5];
  v9 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v9;
  *(a1 + 64) = v7;
  *(a1 + 80) = v8;
  objc_storeStrong((a1 + 128), *(a2 + 16));
  *(a1 + 136) = *(a2 + 34);
  objc_storeStrong((a1 + 144), *(a2 + 18));
  objc_storeStrong((a1 + 152), *(a2 + 19));
  if (a1 != a2)
  {
    std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>((a1 + 160), *(a2 + 20), *(a2 + 21), (*(a2 + 21) - *(a2 + 20)) >> 2);
  }

  std::vector<BOOL>::operator=(a1 + 184, a2 + 184);
  objc_storeStrong((a1 + 208), *(a2 + 26));
  *(a1 + 216) = *(a2 + 108);
  return a1;
}

uint64_t std::vector<BOOL>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a2 + 8);
    if (v4)
    {
      if (v4 > *(a1 + 16) << 6)
      {
        v5 = *a1;
        if (*a1)
        {
          operator delete(v5);
          *a1 = 0;
          *(a1 + 8) = 0;
          *(a1 + 16) = 0;
          v4 = *(a2 + 8);
        }

        std::vector<BOOL>::__vallocate[abi:ne200100](a1, v4);
      }

      memmove(*a1, *a2, (((v4 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8) + 8);
      v6 = *(a2 + 8);
    }

    else
    {
      v6 = 0;
    }

    *(a1 + 8) = v6;
  }

  return a1;
}

void *std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 2)
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

    if (!(a4 >> 62))
    {
      v9 = v7 >> 1;
      if (v7 >> 1 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v10 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<float>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 2)
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

void std::__allocate_at_least[abi:ne200100]<std::allocator<OUBox3d>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x124924924924925)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<OUBox3d>,OUBox3d*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a4;
  v22 = a4;
  v19[0] = a1;
  v19[1] = &v21;
  v19[2] = &v22;
  if (a2 == a3)
  {
    v20 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      v8 = *v7;
      v9 = *(v7 + 16);
      v10 = *(v7 + 48);
      *(a4 + 32) = *(v7 + 32);
      *(a4 + 48) = v10;
      *a4 = v8;
      *(a4 + 16) = v9;
      v11 = *(v7 + 64);
      v12 = *(v7 + 80);
      v13 = *(v7 + 112);
      *(a4 + 96) = *(v7 + 96);
      *(a4 + 112) = v13;
      *(a4 + 64) = v11;
      *(a4 + 80) = v12;
      v14 = *(v7 + 128);
      *(v7 + 128) = 0;
      *(a4 + 128) = v14;
      *(a4 + 136) = *(v7 + 136);
      v15 = *(v7 + 144);
      *(v7 + 144) = 0uLL;
      *(a4 + 144) = v15;
      *(a4 + 160) = 0;
      *(a4 + 168) = 0uLL;
      *(a4 + 160) = *(v7 + 160);
      v16 = *(v7 + 184);
      *(a4 + 176) = *(v7 + 176);
      *(v7 + 176) = 0;
      *(v7 + 160) = 0uLL;
      *(a4 + 184) = v16;
      *(a4 + 192) = *(v7 + 192);
      *(v7 + 184) = 0uLL;
      v17 = *(v7 + 208);
      *(v7 + 200) = 0;
      *(v7 + 208) = 0;
      *(a4 + 208) = v17;
      *(a4 + 216) = *(v7 + 216);
      v7 += 224;
      a4 += 224;
    }

    while (v7 != a3);
    v22 = a4;
    v20 = 1;
    while (v5 != a3)
    {
      std::allocator_traits<std::allocator<OUBox3d>>::destroy[abi:ne200100]<OUBox3d,void,0>(a1, v5);
      v5 += 224;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<OUBox3d>,OUBox3d*>>::~__exception_guard_exceptions[abi:ne200100](v19);
}

void std::allocator_traits<std::allocator<OUBox3d>>::destroy[abi:ne200100]<OUBox3d,void,0>(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 184);
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(a2 + 160);
  if (v4)
  {
    *(a2 + 168) = v4;
    operator delete(v4);
  }

  v5 = *(a2 + 128);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<OUBox3d>,OUBox3d*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<OUBox3d>,OUBox3d*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<OUBox3d>,OUBox3d*>::operator()[abi:ne200100](uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 224;
      std::allocator_traits<std::allocator<OUBox3d>>::destroy[abi:ne200100]<OUBox3d,void,0>(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t std::__split_buffer<OUBox3d>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<OUBox3d>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<OUBox3d>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 224;
    std::allocator_traits<std::allocator<OUBox3d>>::destroy[abi:ne200100]<OUBox3d,void,0>(v5, v4 - 224);
  }
}

uint64_t std::vector<OUBox3d>::__emplace_back_slow_path<OUBox3d const&>(uint64_t *a1, const OUBox3d *a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 5);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x124924924924924)
  {
    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 5) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 5);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 5)) >= 0x92492492492492)
  {
    v6 = 0x124924924924924;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<OUBox3d>>(a1, v6);
  }

  v13 = 0;
  v14 = 224 * v2;
  OUBox3d::OUBox3d((224 * v2), a2);
  v15 = (224 * v2 + 224);
  v7 = a1[1];
  v8 = 224 * v2 + *a1 - v7;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<OUBox3d>,OUBox3d*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<OUBox3d>::~__split_buffer(&v13);
  return v12;
}

void sub_25D1EBB5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<OUBox3d>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::vector<OUBox3d>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<OUBox3d>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<OUBox3d>::__base_destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; std::allocator_traits<std::allocator<OUBox3d>>::destroy[abi:ne200100]<OUBox3d,void,0>(a1, i))
  {
    i -= 224;
  }

  *(a1 + 8) = a2;
}

uint64_t *std::map<int,std::set<int>>::at(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = *(v2 + 8);
      if (v3 >= v4)
      {
        break;
      }

      v2 = *v2;
      if (!v2)
      {
        goto LABEL_8;
      }
    }

    if (v4 >= v3)
    {
      return v2 + 5;
    }

    v2 = v2[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_2799C3FB8, MEMORY[0x277D825F8]);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E8] + 16);
  return result;
}

uint64_t std::deque<OU3DKitchenObject>::~deque[abi:ne200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    v4 = a1 + 5;
    v3 = a1[1];
  }

  else
  {
    v4 = a1 + 5;
    v5 = a1[4];
    v6 = &v2[v5 >> 4];
    v7 = *v6 + 272 * (v5 & 0xF);
    v8 = *(v2 + (((a1[5] + v5) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 272 * ((*(a1 + 10) + v5) & 0xF);
    if (v7 != v8)
    {
      do
      {
        std::allocator_traits<std::allocator<OU3DKitchenObject>>::destroy[abi:ne200100]<OU3DKitchenObject,void,0>(a1, v7);
        v7 += 272;
        if (v7 - *v6 == 4352)
        {
          v9 = v6[1];
          ++v6;
          v7 = v9;
        }
      }

      while (v7 != v8);
      v2 = a1[1];
      v3 = a1[2];
    }
  }

  *v4 = 0;
  v10 = v3 - v2;
  if (v10 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v10 = v3 - v2;
    }

    while (v10 > 2);
  }

  if (v10 == 1)
  {
    v11 = 8;
  }

  else
  {
    if (v10 != 2)
    {
      goto LABEL_16;
    }

    v11 = 16;
  }

  a1[4] = v11;
LABEL_16:
  while (v2 != v3)
  {
    v12 = *v2++;
    operator delete(v12);
  }

  return std::__split_buffer<OU3DKitchenObject *>::~__split_buffer(a1);
}

void std::deque<OU3DKitchenObject>::clear(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    v4 = a1 + 5;
  }

  else
  {
    v4 = a1 + 5;
    v5 = a1[4];
    v6 = &v2[v5 >> 4];
    v7 = *v6 + 272 * (v5 & 0xF);
    v8 = *(v2 + (((a1[5] + v5) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 272 * ((*(a1 + 10) + v5) & 0xF);
    if (v7 != v8)
    {
      do
      {
        std::allocator_traits<std::allocator<OU3DKitchenObject>>::destroy[abi:ne200100]<OU3DKitchenObject,void,0>(a1, v7);
        v7 += 272;
        if (v7 - *v6 == 4352)
        {
          v9 = v6[1];
          ++v6;
          v7 = v9;
        }
      }

      while (v7 != v8);
      v2 = a1[1];
      v3 = a1[2];
    }
  }

  *v4 = 0;
  v10 = v3 - v2;
  if (v10 >= 3)
  {
    do
    {
      operator delete(*v2);
      v11 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v10 = (v11 - v2) >> 3;
    }

    while (v10 > 2);
  }

  if (v10 == 1)
  {
    v12 = 8;
  }

  else
  {
    if (v10 != 2)
    {
      return;
    }

    v12 = 16;
  }

  a1[4] = v12;
}

uint64_t std::__split_buffer<OU3DKitchenObject *>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    operator delete(v4);
  }

  return a1;
}

void *std::deque<OU3DKitchenObject>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x10;
  v3 = v1 - 16;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    std::__allocate_at_least[abi:ne200100]<std::allocator<OU3DKitchenObject *>>(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<OU3DKitchenObject *>::emplace_back<OU3DKitchenObject *&>(a1, &v10);
}

void sub_25D1EC13C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::__split_buffer<OU3DKitchenObject *>::emplace_back<OU3DKitchenObject *&>(void *result, void *a2)
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

      std::__allocate_at_least[abi:ne200100]<std::allocator<OU3DKitchenObject *>>(result, v11);
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

const void **std::__split_buffer<OU3DKitchenObject *>::emplace_front<OU3DKitchenObject *>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<OU3DKitchenObject *>>(result, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void *std::__split_buffer<OU3DKitchenObject *>::emplace_back<OU3DKitchenObject *>(void *result, void *a2)
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

      std::__allocate_at_least[abi:ne200100]<std::allocator<OU3DKitchenObject *>>(result[4], v11);
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

const void **std::__split_buffer<OU3DKitchenObject *>::emplace_front<OU3DKitchenObject *&>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<OU3DKitchenObject *>>(result[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<OU3DKitchenObject *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t *std::__tree<int>::__emplace_unique_key_args<int,int const&>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 28);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t std::deque<OU3DKitchenObject>::__move_assign(void **a1, uint64_t a2)
{
  std::deque<OU3DKitchenObject>::clear(a1);
  std::deque<OU3DKitchenObject>::shrink_to_fit(a1);
  result = std::__split_buffer<OU3DKitchenObject *>::operator=(a1, a2);
  a1[4] = *(a2 + 32);
  a1[5] = *(a2 + 40);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  return result;
}

void std::deque<OU3DKitchenObject>::shrink_to_fit(void **a1)
{
  if (a1[5])
  {
    std::deque<OU3DKitchenObject>::__maybe_remove_front_spare[abi:ne200100](a1, 0);
    std::deque<OU3DKitchenObject>::__maybe_remove_back_spare[abi:ne200100](a1, 0);
  }

  else
  {
    v3 = a1[1];
    for (i = a1[2]; i != v3; a1[2] = i)
    {
      operator delete(*(i - 8));
      v3 = a1[1];
      i = a1[2] - 8;
    }

    a1[4] = 0;
  }

  std::__split_buffer<OU3DKitchenObject *>::shrink_to_fit(a1);
}

uint64_t std::deque<OU3DKitchenObject>::__maybe_remove_front_spare[abi:ne200100](uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x10)
  {
    a2 = 1;
  }

  if (v2 < 0x20)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if ((v4 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 16;
  }

  return v4 ^ 1u;
}

uint64_t std::deque<OU3DKitchenObject>::__maybe_remove_back_spare[abi:ne200100](void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 2 * (v2 - v3) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x10)
  {
    a2 = 1;
  }

  if (v5 < 0x20)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if ((v7 & 1) == 0)
  {
    operator delete(*(v2 - 8));
    a1[2] -= 8;
  }

  return v7 ^ 1u;
}

void std::__split_buffer<OU3DKitchenObject *>::shrink_to_fit(void **a1)
{
  v1 = a1[2];
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[3] - *a1;
  if (v4 > (v1 - v3))
  {
    if (v1 != v3)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<OU3DKitchenObject *>>(a1, (v1 - v3) >> 3);
    }

    v6 = 0;
    if (v4 >> 3)
    {
      v7 = a1[1];
      v8 = a1[2] - v7;
      if (v8)
      {
        v9 = 0;
        do
        {
          v10 = *v7++;
          *v9++ = v10;
          v8 -= 8;
        }

        while (v8);
        v7 = a1[1];
        v11 = a1[2];
        v2 = *a1;
      }

      else
      {
        v11 = a1[1];
      }

      *a1 = 0;
      a1[1] = 0;
      a1[2] = (v11 - v7);
      a1[3] = 0;
      v6 = v2;
    }

    if (v6)
    {

      operator delete(v6);
    }
  }
}

uint64_t std::__split_buffer<OU3DKitchenObject *>::operator=(uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v4 != v5)
  {
    *(a1 + 16) = v4 + ((v5 - v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  std::__split_buffer<OU3DKitchenObject *>::shrink_to_fit(a1);
  *a1 = *a2;
  *(a1 + 16) = a2[1];
  *a2 = 0u;
  a2[1] = 0u;
  return a1;
}

uint64_t std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
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

void std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__rehash<true>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__do_rehash<true>(a1, prime);
    }
  }
}

void std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
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

uint64_t **std::__tree<int>::__assign_multi<std::__tree_const_iterator<int,std::__tree_node<int,void *> *,long>>(uint64_t **result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v12 = result;
    v13 = v8;
    v14 = v8;
    if (v8)
    {
      v13 = std::__tree<int>::_DetachedTreeCache::__detach_next(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          *(v8 + 7) = *(v9 + 7);
          std::__tree<int>::__node_insert_multi(v5, v8);
          v8 = v13;
          v14 = v13;
          if (v13)
          {
            v13 = std::__tree<int>::_DetachedTreeCache::__detach_next(v13);
          }

          v10 = v9[1];
          if (v10)
          {
            do
            {
              a2 = v10;
              v10 = *v10;
            }

            while (v10);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v11 = *a2 == v9;
              v9 = a2;
            }

            while (!v11);
          }

          if (!v8)
          {
            break;
          }

          v9 = a2;
        }

        while (a2 != a3);
      }
    }

    result = std::__tree<int>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](&v12);
  }

  if (a2 != a3)
  {
    std::__tree<int>::__emplace_multi<int const&>();
  }

  return result;
}

void sub_25D1ED080(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__tree<int>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__tree<int>::__node_insert_multi(uint64_t **a1, uint64_t a2)
{
  v3 = a1 + 1;
  v4 = a1[1];
  if (v4)
  {
    do
    {
      while (1)
      {
        v3 = v4;
        if (*(a2 + 28) >= *(v4 + 7))
        {
          break;
        }

        v4 = *v4;
        v5 = v3;
        if (!*v3)
        {
          goto LABEL_8;
        }
      }

      v4 = v4[1];
    }

    while (v4);
    v5 = v3 + 1;
  }

  else
  {
    v5 = a1 + 1;
  }

LABEL_8:
  std::__tree<int>::__insert_node_at(a1, v3, v5, a2);
  return a2;
}

void *std::__tree<int>::_DetachedTreeCache::__detach_next(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    v3 = *result;
    if (*result == a1)
    {
      *result = 0;
      while (1)
      {
        v4 = result[1];
        if (!v4)
        {
          break;
        }

        do
        {
          result = v4;
          v4 = *v4;
        }

        while (v4);
      }
    }

    else
    {
      for (result[1] = 0; v3; v3 = result[1])
      {
        do
        {
          result = v3;
          v3 = *v3;
        }

        while (v3);
      }
    }
  }

  return result;
}

uint64_t std::__tree<int>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](uint64_t a1)
{
  std::__tree<int>::destroy(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = v3[2];
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    std::__tree<int>::destroy(*a1, v2);
  }

  return a1;
}

void std::__tree<std::__value_type<int,std::set<int>>,std::__map_value_compare<int,std::__value_type<int,std::set<int>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::set<int>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<int,std::set<int>>,std::__map_value_compare<int,std::__value_type<int,std::set<int>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::set<int>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<int,std::set<int>>,std::__map_value_compare<int,std::__value_type<int,std::set<int>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::set<int>>>>::destroy(a1, a2[1]);
    std::__tree<int>::destroy((a2 + 5), a2[6]);

    operator delete(a2);
  }
}

uint64_t *std::__tree<std::__value_type<int,std::set<int>>,std::__map_value_compare<int,std::__value_type<int,std::set<int>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::set<int>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 32);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t **std::__tree<int>::__assign_unique<int const*>(uint64_t **result, int *a2, int *a3)
{
  v5 = result;
  if (result[2])
  {
    v12[0] = result;
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    if (!v8)
    {
      v9 = 0;
      goto LABEL_16;
    }

    v9 = std::__tree<int>::_DetachedTreeCache::__detach_next(v8);
    for (i = v9; a2 != a3; ++a2)
    {
      std::__tree<int>::__node_assign_unique(v5, a2, v8);
      if (v11)
      {
        if (!i)
        {
          v9 = 0;
          v8 = 0;
          ++a2;
          break;
        }

        v9 = std::__tree<int>::_DetachedTreeCache::__detach_next(i);
        v8 = i;
        i = v9;
      }

      else
      {
        v9 = i;
      }
    }

LABEL_16:
    v12[1] = v9;
    v12[2] = v8;
    result = std::__tree<int>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](v12);
  }

  while (a2 != a3)
  {
    result = std::__tree<int>::__emplace_unique_key_args<int,int const&>(v5, a2++);
  }

  return result;
}

uint64_t **std::__tree<int>::__node_assign_unique(uint64_t **a1, int *a2, uint64_t a3)
{
  v4 = a1 + 1;
  v5 = a1[1];
  v6 = *a2;
  if (v5)
  {
    while (1)
    {
      while (1)
      {
        v7 = v5;
        v8 = *(v5 + 7);
        if (v6 >= v8)
        {
          break;
        }

        v5 = *v7;
        v4 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if (v8 >= v6)
      {
        return v7;
      }

      v5 = v7[1];
      if (!v5)
      {
        v4 = v7 + 1;
        goto LABEL_9;
      }
    }
  }

  else
  {
    v7 = a1 + 1;
LABEL_9:
    *(a3 + 28) = v6;
    std::__tree<int>::__insert_node_at(a1, v7, v4, a3);
  }

  return a3;
}

uint64_t std::__tree<int>::__erase_unique<int>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = a1 + 8;
  do
  {
    if (*(v2 + 28) >= v3)
    {
      v4 = v2;
    }

    v2 = *(v2 + 8 * (*(v2 + 28) < v3));
  }

  while (v2);
  if (v4 == a1 + 8 || v3 < *(v4 + 28))
  {
    return 0;
  }

  std::__tree<int>::__remove_node_pointer(a1, v4);
  operator delete(v4);
  return 1;
}

uint64_t *std::__tree<int>::__remove_node_pointer(uint64_t **a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  v6 = a1[1];
  a1[2] = (a1[2] - 1);
  std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v6, a2);
  return v3;
}

uint64_t *std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = v7[2];
    v13 = *v12;
    v14 = *(v7 + 24);
    if (*v12 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v15 = v12[1];
      v16 = *v15;
      v12[1] = *v15;
      if (v16)
      {
        *(v16 + 16) = v12;
      }

      v17 = v12[2];
      v15[2] = v17;
      v17[*v17 != v12] = v15;
      *v15 = v12;
      v12[2] = v15;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v18 = *v7;
    if (*v7 && *(v18 + 24) != 1)
    {
      v19 = v7[1];
      if (!v19)
      {
        goto LABEL_55;
      }

LABEL_54:
      if (*(v19 + 24) == 1)
      {
LABEL_55:
        *(v18 + 24) = 1;
        *(v7 + 24) = 0;
        v27 = v18[1];
        *v7 = v27;
        if (v27)
        {
          *(v27 + 16) = v7;
        }

        v28 = v7[2];
        v18[2] = v28;
        v28[*v28 != v7] = v18;
        v18[1] = v7;
        v7[2] = v18;
        v19 = v7;
      }

      else
      {
        v18 = v7;
      }

      v29 = v18[2];
      *(v18 + 24) = *(v29 + 24);
      *(v29 + 24) = 1;
      *(v19 + 24) = 1;
      v30 = *(v29 + 8);
      v31 = *v30;
      *(v29 + 8) = *v30;
      if (v31)
      {
        *(v31 + 16) = v29;
      }

      v32 = *(v29 + 16);
      v30[2] = v32;
      v32[*v32 != v29] = v30;
      *v30 = v29;
      goto LABEL_72;
    }

    v19 = v7[1];
    if (v19 && *(v19 + 24) != 1)
    {
      goto LABEL_54;
    }

    *(v7 + 24) = 0;
    v20 = v7[2];
    if (v20 == result || (v20[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v20[2] + 8 * (*v20[2] == v20));
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v21 = v13[1];
    *v12 = v21;
    if (v21)
    {
      *(v21 + 16) = v12;
    }

    v22 = v12[2];
    v13[2] = v22;
    v22[*v22 != v12] = v13;
    v13[1] = v12;
    v12[2] = v13;
    v23 = v7[1];
    if (result == v23)
    {
      result = v7;
    }

    v7 = *v23;
  }

  v24 = *v7;
  if (*v7 && *(v24 + 24) != 1)
  {
    goto LABEL_68;
  }

  v25 = v7[1];
  if (!v25 || *(v25 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v20 = v7[2];
    if (*(v20 + 24) != 1 || v20 == result)
    {
LABEL_52:
      *(v20 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (!v24)
  {
    goto LABEL_65;
  }

  if (v24[3])
  {
    v25 = v7[1];
LABEL_65:
    *(v25 + 24) = 1;
    *(v7 + 24) = 0;
    v33 = *v25;
    v7[1] = *v25;
    if (v33)
    {
      *(v33 + 16) = v7;
    }

    v34 = v7[2];
    v25[2] = v34;
    v34[*v34 != v7] = v25;
    *v25 = v7;
    v7[2] = v25;
    v24 = v7;
  }

  else
  {
LABEL_68:
    v25 = v7;
  }

  v29 = v25[2];
  *(v25 + 24) = *(v29 + 24);
  *(v29 + 24) = 1;
  *(v24 + 24) = 1;
  v30 = *v29;
  v35 = *(*v29 + 8);
  *v29 = v35;
  if (v35)
  {
    *(v35 + 16) = v29;
  }

  v36 = *(v29 + 16);
  v30[2] = v36;
  v36[*v36 != v29] = v30;
  v30[1] = v29;
LABEL_72:
  *(v29 + 16) = v30;
  return result;
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void _GLOBAL__sub_I_OU3DKitchenObjectMerger_mm()
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = objc_autoreleasePoolPush();
  v4 = @"Refrigerator";
  v5 = @"Oven";
  v6 = @"Dishwasher";
  v7 = @"Stove";
  qword_28155B160 = 0;
  unk_28155B168 = 0;
  for (i = 24; i != -8; i -= 8)
  {
  }

  v4 = @"Stool";
  v5 = @"Chair";
  v6 = @"Bed";
  v7 = @"Washer";
  v8[0] = @"Toilet";
  v8[1] = @"Bathtub";
  v8[2] = @"Fireplace";
  v8[3] = @"Table";
  v8[4] = @"Screen";
  v8[5] = @"Sofa";
  v8[6] = @"Stairs";
  v8[7] = @"Window";
  v8[8] = @"Door";
  qword_28155AA08 = 0;
  unk_28155AA10 = 0;
  for (j = 96; j != -8; j -= 8)
  {
  }

  v4 = @"Sink";
  qword_28155A9D8 = 0;
  unk_28155A9E0 = 0;

  objc_autoreleasePoolPop(v0);
  v3 = *MEMORY[0x277D85DE8];
}

__int128 *ou3dod::HistoryMergeInfo::Get(ou3dod::HistoryMergeInfo *this)
{
  {
    ou3dod::HistoryMergeInfo::Get();
  }

  return &ou3dod::HistoryMergeInfo::Get(void)::history_merge_info;
}

void ou3dor::OU3DLShapeSofaOfflineMerger::MergeLShape(ou3dod::HistoryMergeInfo *a1@<X0>, const OUBox3d **a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = ou3dod::HistoryMergeInfo::Get(a1);
  std::__hash_table<std::__hash_value_type<std::pair<std::string,std::string>,BOOL>,std::__unordered_map_hasher<std::pair<std::string,std::string>,std::__hash_value_type<std::pair<std::string,std::string>,BOOL>,ou3dod::pair_hash,std::equal_to<std::pair<std::string,std::string>>,true>,std::__unordered_map_equal<std::pair<std::string,std::string>,std::__hash_value_type<std::pair<std::string,std::string>,BOOL>,std::equal_to<std::pair<std::string,std::string>>,ou3dod::pair_hash,true>,std::allocator<std::__hash_value_type<std::pair<std::string,std::string>,BOOL>>>::clear(v6 + 40);
  v8 = ou3dod::HistoryMergeInfo::Get(v7);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::clear(v8);
  v79 = 0;
  v80 = 0;
  v81 = 0;
  a4[1] = 0;
  a4[2] = 0;
  *a4 = 0;
  v10 = *a2;
  v9 = a2[1];
  if (*a2 == v9)
  {
    LODWORD(v11) = 0;
  }

  else
  {
    do
    {
      if ([v10[1].var5.var0 isEqualToString:@"Sofa"])
      {
        std::vector<OUBox3d>::push_back[abi:ne200100](&v79, v10);
      }

      else
      {
        std::vector<OUBox3d>::push_back[abi:ne200100](a4, v10);
      }

      v10 = (v10 + 224);
    }

    while (v10 != v9);
    v11 = 0x6DB6DB6DB6DB6DB7 * ((v80 - v79) >> 5);
  }

  std::vector<OUBox3d>::reserve(a4, v11);
  __p = 0;
  v77 = 0;
  v78 = 0;
  v14 = v79;
  v13 = v80;
  if (v79 != v80)
  {
    do
    {
      v15 = ou3dod::ComputeHeadingDirection(v14, v12);
      v16 = v77;
      if (v77 >= v78)
      {
        v18 = (v77 - __p) >> 3;
        if ((v18 + 1) >> 61)
        {
          std::vector<float>::__throw_length_error[abi:ne200100]();
        }

        v19 = (v78 - __p) >> 2;
        if (v19 <= v18 + 1)
        {
          v19 = v18 + 1;
        }

        if (v78 - __p >= 0x7FFFFFFFFFFFFFF8)
        {
          v20 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v20 = v19;
        }

        if (v20)
        {
          _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIDv2_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(&__p, v20);
        }

        *(8 * v18) = v15;
        v17 = 8 * v18 + 8;
        v21 = (8 * v18 - (v77 - __p));
        memcpy(v21, __p, v77 - __p);
        v22 = __p;
        __p = v21;
        v77 = v17;
        v78 = 0;
        if (v22)
        {
          operator delete(v22);
        }
      }

      else
      {
        *v77 = v15;
        v17 = &v16[1];
      }

      v77 = v17;
      v14 += 14;
    }

    while (v14 != v13);
    v14 = v79;
    v13 = v80;
  }

  if (v14 != v13)
  {
    do
    {
      ou3dod::MaybeReorderObjectCorner(v14, v12);
      v14 += 14;
    }

    while (v14 != v13);
    v14 = v79;
    v13 = v80;
  }

  memset(v96, 0, 24);
  if (v14 == v13)
  {
    v23 = v13;
  }

  else
  {
    do
    {
      box3dToCentroidSizeAngle(v14, __dst);
      std::vector<std::vector<float>>::push_back[abi:ne200100](v96, __dst);
      if (__dst[0])
      {
        __dst[1] = __dst[0];
        operator delete(__dst[0]);
      }

      v14 += 14;
    }

    while (v14 != v13);
    v13 = v79;
    v23 = v80;
  }

  v73 = 0u;
  v74 = 0u;
  v75 = 1065353216;
  v24 = 0xB6DB6DB700000000 * ((v23 - v13) >> 5);
  if (v24)
  {
    v25 = 0;
    v26 = v24 >> 32;
    if (v26 <= 1)
    {
      v27 = 1;
    }

    else
    {
      v27 = v26;
    }

    do
    {
      v28 = 0;
      v29 = 0;
      for (i = 0; i != v27; ++i)
      {
        v31 = [v79[v29 + 9].i64[0] UUIDString];
        v32 = [v31 UTF8String];
        v33 = strlen(v32);
        if (v33 >= 0x7FFFFFFFFFFFFFF8)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v34 = v33;
        if (v33 >= 0x17)
        {
          operator new();
        }

        BYTE7(v88) = v33;
        if (v33)
        {
          memmove(__dst, v32, v33);
        }

        *(__dst + v34) = 0;
        v35 = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(a3, __dst);
        if (SBYTE7(v88) < 0)
        {
          operator delete(__dst[0]);
        }

        if (v25 != i)
        {
          if (v35)
          {
            v95[0] = i;
            v95[1] = v25;
            if (!std::__hash_table<std::pair<unsigned long,unsigned long>,ou3dod::pair_hash,std::equal_to<std::pair<unsigned long,unsigned long>>,std::allocator<std::pair<unsigned long,unsigned long>>>::find<std::pair<unsigned long,unsigned long>>(&v73, v95))
            {
              v37 = ou3dod::ComputeHeadingDirection(&v79[14 * v25], v36);
              v39 = ou3dod::ComputeHeadingDirection(&v79[v29], v38);
              v40 = &v79[14 * v25];
              v41 = v40[3];
              v43 = *v40;
              v42 = v40[1];
              v89 = v40[2];
              v90 = v41;
              *__dst = v43;
              v88 = v42;
              v44 = v40[7];
              v46 = v40[4];
              v45 = v40[5];
              v93 = v40[6];
              v94 = v44;
              v91 = v46;
              v92 = v45;
              v47 = v79[v29];
              v48 = v79[v29 + 1];
              v49 = v79[v29 + 3];
              v86[2] = v79[v29 + 2];
              v86[3] = v49;
              v86[0] = v47;
              v86[1] = v48;
              v50 = v79[v29 + 4];
              v51 = v79[v29 + 5];
              v52 = v79[v29 + 7];
              v86[6] = v79[v29 + 6];
              v86[7] = v52;
              v86[4] = v50;
              v86[5] = v51;
              memset(v85, 0, sizeof(v85));
              box3dEnlarge(__dst, 1050253722, 0.1, 0.0, v85);
              memset(v84, 0, sizeof(v84));
              box3dEnlarge(v86, 1050253722, 0.1, 0.0, v84);
              memset(v83, 0, sizeof(v83));
              box3dIou(v85, v84, 0, v83);
              v53 = *(*(v96[0] + 24 * v25) + 8);
              v54 = *(*(v96[0] + v28) + 8);
              v55 = *v83;
              IsBoxSurfaceAttached = ou3dod::IsBoxSurfaceAttached(&v79[14 * v25], &v79[v29], v56);
              v58 = fabsf(vaddv_f32(vmul_f32(v37, v39)));
              v59 = v58 >= 0.173;
              v60 = vabds_f32(v53, v54);
              if (v58 > 0.9848)
              {
                v59 = 0;
              }

              if (v60 >= 0.7)
              {
                v59 = 1;
              }

              if (v55 <= 0.0)
              {
                v59 = 1;
              }

              if (!v59 && !IsBoxSurfaceAttached)
              {
                if (v58 > 0.9848)
                {
                  v61 = boxVolume(&v79[14 * v25]);
                  if (v61 >= boxVolume(&v79[v29]))
                  {
                    v62 = i;
                  }

                  else
                  {
                    v62 = v25;
                  }

                  ou3dod::ShiftBoxCorner(&v79[14 * v62], 1);
                }

                v82[0] = v25;
                v82[1] = i;
                std::__hash_table<std::pair<unsigned long,unsigned long>,ou3dod::pair_hash,std::equal_to<std::pair<unsigned long,unsigned long>>,std::allocator<std::pair<unsigned long,unsigned long>>>::__emplace_unique_key_args<std::pair<unsigned long,unsigned long>,std::pair<unsigned long,unsigned long>>(&v73, v82);
              }
            }
          }
        }

        v29 += 14;
        v28 += 24;
      }

      ++v25;
    }

    while (v25 != v27);
  }

  __dst[0] = v96;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](__dst);
  v63 = _OULoggingGetOSLogForCategoryObjectUnderstanding();
  if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
  {
    ou3dor::OU3DLShapeSofaOfflineMerger::MergeLShape(&v73, v63);
  }

  v86[0].i8[0] = 0;
  std::vector<BOOL>::vector(__dst, v11);
  for (j = v74; j; j = *j)
  {
    v65 = j[2];
    if (((*(__dst[0] + ((v65 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v65) & 1) == 0)
    {
      v66 = j[3];
      if (((*(__dst[0] + ((v66 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v66) & 1) == 0 && ou3dod::MaybeClipExtendLShapeObjects(a4, j[2], j[3], 0, 1, &v79, __dst, 1) == 6)
      {
        ou3dod::MaybeClipExtendLShapeObjects(a4, v66, v65, 0, 1, &v79, __dst, 1);
      }
    }
  }

  if (v11 >= 1)
  {
    v67 = 0;
    v68 = 0;
    v69 = v11 & 0x7FFFFFFF;
    do
    {
      ou3dod::MaybeReorderBackObjectCorner(&v79[v67], *(__p + 8 * v68++));
      v67 += 14;
    }

    while (v69 != v68);
    v70 = 0;
    v71 = 0;
    do
    {
      if (((*(__dst[0] + ((v71 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v71) & 1) == 0)
      {
        std::vector<OUBox3d>::push_back[abi:ne200100](a4, &v79[v70]);
      }

      ++v71;
      v70 += 14;
    }

    while (v69 != v71);
  }

  if (__dst[0])
  {
    operator delete(__dst[0]);
  }

  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(&v73);
  if (__p)
  {
    v77 = __p;
    operator delete(__p);
  }

  __dst[0] = &v79;
  std::vector<OUBox3d>::__destroy_vector::operator()[abi:ne200100](__dst);
}

void sub_25D1EE4A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, char a26)
{
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(&a17);
  if (__p)
  {
    a24 = __p;
    operator delete(__p);
  }

  STACK[0x260] = v26;
  std::vector<OUBox3d>::__destroy_vector::operator()[abi:ne200100](&STACK[0x260]);
  STACK[0x260] = &a26;
  std::vector<OUBox3d>::__destroy_vector::operator()[abi:ne200100](&STACK[0x260]);
  _Unwind_Resume(a1);
}

void ou3dod::HistoryMergeInfo::~HistoryMergeInfo(ou3dod::HistoryMergeInfo *this)
{
  std::__hash_table<std::__hash_value_type<std::pair<std::string,std::string>,BOOL>,std::__unordered_map_hasher<std::pair<std::string,std::string>,std::__hash_value_type<std::pair<std::string,std::string>,BOOL>,ou3dod::pair_hash,std::equal_to<std::pair<std::string,std::string>>,true>,std::__unordered_map_equal<std::pair<std::string,std::string>,std::__hash_value_type<std::pair<std::string,std::string>,BOOL>,std::equal_to<std::pair<std::string,std::string>>,ou3dod::pair_hash,true>,std::allocator<std::__hash_value_type<std::pair<std::string,std::string>,BOOL>>>::~__hash_table(this + 40);

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(this);
}

uint64_t std::__hash_table<std::__hash_value_type<std::pair<std::string,std::string>,BOOL>,std::__unordered_map_hasher<std::pair<std::string,std::string>,std::__hash_value_type<std::pair<std::string,std::string>,BOOL>,ou3dod::pair_hash,std::equal_to<std::pair<std::string,std::string>>,true>,std::__unordered_map_equal<std::pair<std::string,std::string>,std::__hash_value_type<std::pair<std::string,std::string>,BOOL>,std::equal_to<std::pair<std::string,std::string>>,ou3dod::pair_hash,true>,std::allocator<std::__hash_value_type<std::pair<std::string,std::string>,BOOL>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::pair<std::string,std::string>,BOOL>,std::__unordered_map_hasher<std::pair<std::string,std::string>,std::__hash_value_type<std::pair<std::string,std::string>,BOOL>,ou3dod::pair_hash,std::equal_to<std::pair<std::string,std::string>>,true>,std::__unordered_map_equal<std::pair<std::string,std::string>,std::__hash_value_type<std::pair<std::string,std::string>,BOOL>,std::equal_to<std::pair<std::string,std::string>>,ou3dod::pair_hash,true>,std::allocator<std::__hash_value_type<std::pair<std::string,std::string>,BOOL>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::pair<std::string,std::string>,BOOL>,std::__unordered_map_hasher<std::pair<std::string,std::string>,std::__hash_value_type<std::pair<std::string,std::string>,BOOL>,ou3dod::pair_hash,std::equal_to<std::pair<std::string,std::string>>,true>,std::__unordered_map_equal<std::pair<std::string,std::string>,std::__hash_value_type<std::pair<std::string,std::string>,BOOL>,std::equal_to<std::pair<std::string,std::string>>,ou3dod::pair_hash,true>,std::allocator<std::__hash_value_type<std::pair<std::string,std::string>,BOOL>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::pair<std::string,std::string> const,BOOL>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::pair<std::string,std::string> const,BOOL>,0>(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(int a1, void **__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t std::vector<std::vector<float>>::push_back[abi:ne200100](uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (v4 >= v5)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 3);
    v8 = v7 + 1;
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 3);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v8;
    }

    v16[4] = result;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<float>>>(result, v10);
    }

    v11 = 24 * v7;
    *v11 = 0;
    *(v11 + 8) = 0;
    *(v11 + 16) = 0;
    *v11 = *a2;
    *(v11 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = 24 * v7 + 24;
    v12 = *(result + 8) - *result;
    v13 = v11 - v12;
    memcpy((v11 - v12), *result, v12);
    v14 = *v3;
    *v3 = v13;
    v3[1] = v6;
    v15 = v3[2];
    v3[2] = 0;
    v16[2] = v14;
    v16[3] = v15;
    v16[0] = v14;
    v16[1] = v14;
    result = std::__split_buffer<std::vector<float>>::~__split_buffer(v16);
  }

  else
  {
    *v4 = 0;
    v4[1] = 0;
    v4[2] = 0;
    *v4 = *a2;
    v4[2] = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = (v4 + 3);
  }

  v3[1] = v6;
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<float>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
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

const void **std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
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
      if (std::equal_to<std::string>::operator()[abi:ne200100](a1, i + 2, a2))
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

unint64_t std::__string_hash<char>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v3 = v2;
  }

  return std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](&v5, a2, v3);
}

BOOL std::equal_to<std::string>::operator()[abi:ne200100](uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a2 + 23);
  v4 = v3;
  if ((v3 & 0x80u) != 0)
  {
    v3 = a2[1];
  }

  v5 = *(a3 + 23);
  v6 = v5;
  if (v5 < 0)
  {
    v5 = a3[1];
  }

  if (v3 != v5)
  {
    return 0;
  }

  if (v4 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  return memcmp(v7, v8, v3) == 0;
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](uint64_t a1, uint64_t *a2, unint64_t a3)
{
  if (a3 > 0x20)
  {
    if (a3 > 0x40)
    {
      v4 = *(a2 + a3 - 48);
      v5 = *(a2 + a3 - 40);
      v6 = *(a2 + a3 - 24);
      v7 = *(a2 + a3 - 56);
      v8 = *(a2 + a3 - 16);
      v9 = *(a2 + a3 - 8);
      v10 = v7 + v8;
      v11 = 0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))));
      v12 = 0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47));
      v13 = *(a2 + a3 - 64) + a3;
      v14 = v13 + v7 + v4;
      v15 = __ROR8__(v14, 44) + v13;
      v16 = __ROR8__(v5 + v13 + v12, 21);
      v17 = v14 + v5;
      v18 = v15 + v16;
      v19 = v10 + *(a2 + a3 - 32) - 0x4B6D499041670D8DLL;
      v20 = v19 + v6 + v8;
      v21 = v20 + v9;
      v22 = __ROR8__(v20, 44) + v19 + __ROR8__(v19 + v5 + v9, 21);
      v24 = *a2;
      v23 = a2 + 4;
      v25 = v24 - 0x4B6D499041670D8DLL * v5;
      v26 = -((a3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v27 = *(v23 - 3);
        v28 = v25 + v17 + v10 + v27;
        v29 = v23[2];
        v30 = v23[3];
        v31 = v23[1];
        v10 = v31 + v17 - 0x4B6D499041670D8DLL * __ROR8__(v10 + v18 + v29, 42);
        v32 = v12 + v21;
        v33 = *(v23 - 2);
        v34 = *(v23 - 1);
        v35 = *(v23 - 4) - 0x4B6D499041670D8DLL * v18;
        v36 = v35 + v21 + v34;
        v37 = v35 + v27 + v33;
        v17 = v37 + v34;
        v38 = __ROR8__(v37, 44) + v35;
        v39 = (0xB492B66FBE98F273 * __ROR8__(v28, 37)) ^ v22;
        v25 = 0xB492B66FBE98F273 * __ROR8__(v32, 33);
        v18 = v38 + __ROR8__(v36 + v39, 21);
        v40 = v25 + v22 + *v23;
        v21 = v40 + v31 + v29 + v30;
        v22 = __ROR8__(v40 + v31 + v29, 44) + v40 + __ROR8__(v10 + v33 + v40 + v30, 21);
        v23 += 8;
        v12 = v39;
        v26 += 64;
      }

      while (v26);
      v41 = v39 - 0x4B6D499041670D8DLL * (v10 ^ (v10 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) ^ ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) >> 47));
      v42 = v25 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) ^ ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) >> 47));
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) ^ ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) >> 47));
    }

    else
    {
      return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:ne200100](a2, a3);
    }
  }

  else if (a3 > 0x10)
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:ne200100](a2, a3);
  }

  else
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:ne200100](a2, a3);
  }
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:ne200100](_DWORD *a1, unint64_t a2)
{
  if (a2 < 9)
  {
    if (a2 < 4)
    {
      result = 0x9AE16A3B2F90404FLL;
      if (a2)
      {
        v8 = (0xC949D7C7509E6557 * (a2 | (4 * *(a1 + a2 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a1 | (*(a1 + (a2 >> 1)) << 8)));
        return 0x9AE16A3B2F90404FLL * (v8 ^ (v8 >> 47));
      }
    }

    else
    {
      v6 = *(a1 + a2 - 4);
      v7 = 0x9DDFEA08EB382D69 * (((8 * *a1) + a2) ^ v6);
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 47));
    }
  }

  else
  {
    v3 = *(a1 + a2 - 8);
    v4 = __ROR8__(v3 + a2, a2);
    return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) >> 47))) ^ v3;
  }

  return result;
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:ne200100](void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = 0xB492B66FBE98F273 * *a1;
  v4 = __ROR8__(0x9AE16A3B2F90404FLL * *(a1 + a2 - 8), 30) + __ROR8__(v3 - v2, 43);
  v5 = v3 + a2 + __ROR8__(v2 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a1 + a2 - 8);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v4 - 0x3C5A37A36834CED9 * *(a1 + a2 - 16)));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:ne200100](void *a1, uint64_t a2)
{
  v2 = *(a1 + a2 - 16);
  v3 = *a1 - 0x3C5A37A36834CED9 * (v2 + a2);
  v5 = a1[2];
  v4 = a1[3];
  v6 = __ROR8__(v3 + v4, 52);
  v7 = v3 + a1[1];
  v8 = __ROR8__(v7, 7);
  v9 = v7 + v5;
  v10 = *(a1 + a2 - 32) + v5;
  v11 = v8 + __ROR8__(*a1 - 0x3C5A37A36834CED9 * (v2 + a2), 37) + v6 + __ROR8__(v9, 31);
  v12 = *(a1 + a2 - 24) + v10 + v2;
  v13 = 0xC3A5C85C97CB3127 * (v12 + *(a1 + a2 - 8) + v4 + v11) - 0x651E95C4D06FBFB1 * (v9 + v4 + __ROR8__(v10, 37) + __ROR8__(*(a1 + a2 - 24) + v10, 7) + __ROR8__(*(a1 + a2 - 8) + v4 + v10, 52) + __ROR8__(v12, 31));
  return 0x9AE16A3B2F90404FLL * ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) ^ ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) >> 47));
}

void *std::__hash_table<std::pair<unsigned long,unsigned long>,ou3dod::pair_hash,std::equal_to<std::pair<unsigned long,unsigned long>>,std::allocator<std::pair<unsigned long,unsigned long>>>::find<std::pair<unsigned long,unsigned long>>(void *a1, void *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = a2[1];
  v4 = v3 ^ *a2;
  v5 = vcnt_s8(v2);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = v3 ^ *a2;
    if (v4 >= *&v2)
    {
      v6 = v4 % *&v2;
    }
  }

  else
  {
    v6 = (*&v2 - 1) & v4;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7)
  {
    return 0;
  }

  result = *v7;
  if (*v7)
  {
    do
    {
      v9 = result[1];
      if (v9 == v4)
      {
        if (result[2] == *a2 && result[3] == v3)
        {
          return result;
        }
      }

      else
      {
        if (v5.u32[0] > 1uLL)
        {
          if (v9 >= *&v2)
          {
            v9 %= *&v2;
          }
        }

        else
        {
          v9 &= *&v2 - 1;
        }

        if (v9 != v6)
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

void *std::__hash_table<std::pair<unsigned long,unsigned long>,ou3dod::pair_hash,std::equal_to<std::pair<unsigned long,unsigned long>>,std::allocator<std::pair<unsigned long,unsigned long>>>::__emplace_unique_key_args<std::pair<unsigned long,unsigned long>,std::pair<unsigned long,unsigned long>>(void *a1, void *a2)
{
  v2 = a2[1];
  v3 = v2 ^ *a2;
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_22;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = v2 ^ *a2;
    if (v3 >= *&v4)
    {
      v6 = v3 % *&v4;
    }
  }

  else
  {
    v6 = (*&v4 - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_22:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v3)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_22;
    }

LABEL_21:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_22;
    }
  }

  if (v8[2] != *a2 || v8[3] != v2)
  {
    goto LABEL_21;
  }

  return v8;
}

void std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::vector<float>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::vector<float>>::clear[abi:ne200100](uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 24);
      v4 -= 24;
      v5 = v6;
      if (v6)
      {
        *(v2 - 16) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

void *std::__fill_n_BOOL[abi:ne200100]<true,std::vector<BOOL>>(void *result, unint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = *(result + 2);
  v5 = *result;
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

    *v5++ |= (0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4);
    v2 = a2 - v6;
    *result = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    result = memset(v5, 255, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *v3 = v8;
    *v8 |= 0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F);
  }

  return result;
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

uint64_t std::unordered_map<int,NSString * {__strong}>::unordered_map(uint64_t a1, int *a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 16 * a3;
    do
    {
      std::__hash_table<std::__hash_value_type<int,NSString * {__strong}>,std::__unordered_map_hasher<int,std::__hash_value_type<int,NSString * {__strong}>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,NSString * {__strong}>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,NSString * {__strong}>>>::__emplace_unique_key_args<int,std::pair<int const,NSString * {__strong}> const&>(a1, a2);
      a2 += 4;
      v5 -= 16;
    }

    while (v5);
  }

  return a1;
}

uint64_t *std::__hash_table<std::__hash_value_type<int,NSString * {__strong}>,std::__unordered_map_hasher<int,std::__hash_value_type<int,NSString * {__strong}>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,NSString * {__strong}>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,NSString * {__strong}>>>::__emplace_unique_key_args<int,std::pair<int const,NSString * {__strong}> const&>(void *a1, int *a2)
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

void sub_25D1EF83C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<int,NSString * {__strong}>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<int,NSString * {__strong}>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<int,NSString * {__strong}>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<int,NSString * {__strong}>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<int,NSString * {__strong}>,std::__unordered_map_hasher<int,std::__hash_value_type<int,NSString * {__strong}>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,NSString * {__strong}>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,NSString * {__strong}>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<int,NSString * {__strong}>,std::__unordered_map_hasher<int,std::__hash_value_type<int,NSString * {__strong}>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,NSString * {__strong}>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,NSString * {__strong}>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<int,NSString * {__strong}>,std::__unordered_map_hasher<int,std::__hash_value_type<int,NSString * {__strong}>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,NSString * {__strong}>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,NSString * {__strong}>>>::__deallocate_node(uint64_t a1, id *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t std::unordered_map<int,SemanticLabelv5>::unordered_map(uint64_t a1, int *a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 8 * a3;
    do
    {
      std::__hash_table<std::__hash_value_type<int,SemanticLabelv5>,std::__unordered_map_hasher<int,std::__hash_value_type<int,SemanticLabelv5>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,SemanticLabelv5>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,SemanticLabelv5>>>::__emplace_unique_key_args<int,std::pair<int const,SemanticLabelv5> const&>(a1, a2);
      a2 += 2;
      v5 -= 8;
    }

    while (v5);
  }

  return a1;
}

uint64_t *std::__hash_table<std::__hash_value_type<int,SemanticLabelv5>,std::__unordered_map_hasher<int,std::__hash_value_type<int,SemanticLabelv5>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,SemanticLabelv5>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,SemanticLabelv5>>>::__emplace_unique_key_args<int,std::pair<int const,SemanticLabelv5> const&>(void *a1, int *a2)
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

void std::__hash_table<std::__hash_value_type<std::pair<std::string,std::string>,BOOL>,std::__unordered_map_hasher<std::pair<std::string,std::string>,std::__hash_value_type<std::pair<std::string,std::string>,BOOL>,ou3dod::pair_hash,std::equal_to<std::pair<std::string,std::string>>,true>,std::__unordered_map_equal<std::pair<std::string,std::string>,std::__hash_value_type<std::pair<std::string,std::string>,BOOL>,std::equal_to<std::pair<std::string,std::string>>,ou3dod::pair_hash,true>,std::allocator<std::__hash_value_type<std::pair<std::string,std::string>,BOOL>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<std::pair<std::string,std::string>,BOOL>,std::__unordered_map_hasher<std::pair<std::string,std::string>,std::__hash_value_type<std::pair<std::string,std::string>,BOOL>,ou3dod::pair_hash,std::equal_to<std::pair<std::string,std::string>>,true>,std::__unordered_map_equal<std::pair<std::string,std::string>,std::__hash_value_type<std::pair<std::string,std::string>,BOOL>,std::equal_to<std::pair<std::string,std::string>>,ou3dod::pair_hash,true>,std::allocator<std::__hash_value_type<std::pair<std::string,std::string>,BOOL>>>::__deallocate_node(a1, *(a1 + 16));
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

void std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(a1, *(a1 + 16));
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

void _GLOBAL__sub_I_OU3DLShapeSofaOfflineMerger_mm()
{
  v74 = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  LODWORD(v22) = 0;
  *(&v22 + 1) = @"Unknown";
  LODWORD(v23) = 1;
  *(&v23 + 1) = *(&v22 + 1);
  LODWORD(v24) = 2;
  *(&v24 + 1) = *(&v23 + 1);
  LODWORD(v25) = 3;
  *(&v25 + 1) = *(&v24 + 1);
  LODWORD(v26) = 4;
  *(&v26 + 1) = *(&v25 + 1);
  LODWORD(v27) = 5;
  *(&v27 + 1) = *(&v26 + 1);
  LODWORD(v28) = 6;
  v21 = @"Door";
  *(&v28 + 1) = v21;
  LODWORD(v29) = 7;
  v20 = @"Window";
  *(&v29 + 1) = v20;
  LODWORD(v30) = 8;
  *(&v30 + 1) = *(&v27 + 1);
  LODWORD(v31) = 9;
  v18 = @"Fireplace";
  *(&v31 + 1) = v18;
  LODWORD(v32) = 10;
  *(&v32 + 1) = *(&v30 + 1);
  LODWORD(v33) = 11;
  *(&v33 + 1) = *(&v32 + 1);
  LODWORD(v34) = 12;
  v19 = @"Stairs";
  *(&v34 + 1) = v19;
  LODWORD(v35) = 13;
  v14 = @"Bed";
  *(&v35 + 1) = v14;
  LODWORD(v36) = 14;
  v37 = @"Cabinet";
  v38 = 15;
  v17 = @"Chair";
  v39 = v17;
  v40 = 16;
  v41 = v37;
  v42 = 17;
  v43 = v41;
  v44 = 18;
  v16 = @"Sofa";
  v45 = v16;
  v46 = 19;
  v15 = @"Table";
  v47 = v15;
  v48 = 20;
  v13 = @"Toilet";
  v49 = v13;
  v50 = 21;
  v0 = @"Sink";
  v51 = v0;
  v52 = 22;
  v12 = @"Bathtub";
  v53 = v12;
  v54 = 23;
  v55 = *(&v33 + 1);
  v56 = 24;
  v1 = @"Refrigerator";
  v57 = v1;
  v58 = 25;
  v2 = @"Stove";
  v59 = v2;
  v60 = 26;
  v3 = @"Washer";
  v61 = v3;
  v62 = 27;
  v4 = @"Oven";
  v63 = v4;
  v64 = 28;
  v5 = @"Dishwasher";
  v65 = v5;
  v66 = 29;
  v67 = v55;
  v68 = 30;
  v6 = v43;
  v69 = v6;
  v70 = 31;
  v71 = v67;
  v72 = 32;
  v7 = @"Screen";
  v73 = v7;
  std::unordered_map<int,NSString * {__strong}>::unordered_map(&kSemanticsODLabelMap, &v22, 33);
  for (i = 520; i != -8; i -= 16)
  {
  }

  __cxa_atexit(std::unordered_map<int,NSString * {__strong}>::~unordered_map[abi:ne200100], &kSemanticsODLabelMap, &dword_25D1DB000);
  v32 = xmmword_25D277DA0;
  v33 = unk_25D277DB0;
  v34 = xmmword_25D277DC0;
  v35 = unk_25D277DD0;
  v28 = xmmword_25D277D60;
  v29 = unk_25D277D70;
  v30 = xmmword_25D277D80;
  v31 = unk_25D277D90;
  v24 = xmmword_25D277D20;
  v25 = unk_25D277D30;
  v26 = xmmword_25D277D40;
  v27 = unk_25D277D50;
  v22 = xmmword_25D277D00;
  v23 = unk_25D277D10;
  v36 = 28;
  std::unordered_map<int,SemanticLabelv5>::unordered_map(&kSparseSSDSemanticLabels, &v22, 29);
  __cxa_atexit(std::unordered_map<int,SemanticLabelv5>::~unordered_map[abi:ne200100], &kSparseSSDSemanticLabels, &dword_25D1DB000);
  LODWORD(v22) = 0;
  *(&v22 + 1) = v6;
  LODWORD(v23) = 1;
  *(&v23 + 1) = v1;
  LODWORD(v24) = 2;
  *(&v24 + 1) = @"Shelf";
  LODWORD(v25) = 3;
  *(&v25 + 1) = v2;
  LODWORD(v26) = 4;
  *(&v26 + 1) = v14;
  LODWORD(v27) = 5;
  *(&v27 + 1) = v0;
  LODWORD(v28) = 6;
  *(&v28 + 1) = v3;
  LODWORD(v29) = 7;
  *(&v29 + 1) = v13;
  LODWORD(v30) = 8;
  *(&v30 + 1) = v12;
  LODWORD(v31) = 9;
  *(&v31 + 1) = v4;
  LODWORD(v32) = 10;
  *(&v32 + 1) = v5;
  LODWORD(v33) = 11;
  *(&v33 + 1) = v18;
  LODWORD(v34) = 12;
  *(&v34 + 1) = @"Stool";
  LODWORD(v35) = 13;
  *(&v35 + 1) = v17;
  LODWORD(v36) = 14;
  v37 = v15;
  v38 = 15;
  v39 = v7;
  v40 = 16;
  v41 = v16;
  v42 = 17;
  v43 = v19;
  v44 = 18;
  v45 = v20;
  v46 = 19;
  v47 = v21;
  v48 = 20;
  v49 = @"BuildInCabinet";
  std::unordered_map<int,NSString * {__strong}>::unordered_map(&kSparseSSDObjectLabels, &v22, 21);
  for (j = 328; j != -8; j -= 16)
  {
  }

  __cxa_atexit(std::unordered_map<int,NSString * {__strong}>::~unordered_map[abi:ne200100], &kSparseSSDObjectLabels, &dword_25D1DB000);
  objc_autoreleasePoolPop(context);
  v10 = *MEMORY[0x277D85DE8];
}

void sub_25D1F030C(_Unwind_Exception *a1)
{
  for (i = 328; i != -8; i -= 16)
  {
  }

  _Unwind_Resume(a1);
}

void sub_25D1F071C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = OUCVPixelBufferRotate;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

uint64_t _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEED1B8ne200100Ev(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

void ou3dod::PreprocessDense<half,true>(uint64_t a1, int a2, signed int a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, char *a7, unint64_t a8, uint64_t a9, std::vector<int> *a10, float *a11, float32x4_t *a12, char a13, char a14)
{
  v112[2] = *MEMORY[0x277D85DE8];
  utils::Resample(((a4[1] - *a4) >> 4), a2, &v109);
  if ((a14 & 1) == 0)
  {
    std::vector<float>::resize(a10, (v110 - v109) >> 3);
  }

  v20 = v109;
  v21 = v110 - v109;
  if (v110 != v109)
  {
    v22 = v21 >> 3;
    begin = a10->__begin_;
    if ((v21 >> 3) <= 1)
    {
      v22 = 1;
    }

    v24 = *a4 + 8;
    do
    {
      v25 = *v20++;
      *begin++ = *(v24 + 16 * v25);
      --v22;
    }

    while (v22);
  }

  percentile(a10, v21 >> 3, 0.02);
  *a11 = v26.n128_f32[0];
  if ((a14 & 1) == 0)
  {
    a12->i64[0] = v27;
  }

  v103 = a5;
  v28 = *a1;
  if (a13)
  {
    v29 = (*(a1 + 24) + 31) & 0xFFFFFFE0;
  }

  else
  {
    v29 = *(a1 + 24);
  }

  v105 = v29;
  bzero(a7, 2 * a8);
  bzero(*a9, *(a9 + 8) - *a9);
  v30 = v109;
  v31 = v110;
  if (v109 != v110)
  {
    v32 = *a4;
    v33 = *a11;
    v34 = *a9;
    v35 = 2 * a3;
    v36 = *a6;
    v37 = *v103;
    v38 = vdup_n_s32(v28);
    v39 = v109;
    v40 = vdup_n_s32(a3);
    do
    {
      v41 = *v39;
      v42 = *(v32 + 16 * *v39);
      v43 = vsubq_f32(v42, *a12);
      if (a14)
      {
        v44 = -1;
      }

      else
      {
        v44 = 0;
      }

      v45 = vbslq_s8(vdupq_n_s32(v44), v42, v43);
      v47 = *(a1 + 32);
      v46 = *(a1 + 48);
      v48 = *(a1 + 16);
      v49 = vcvt_s32_f32(vrndm_f32(vdiv_f32(vsub_f32(*v45.i8, *&v46), *&v47)));
      v50 = HIDWORD(*(a1 + 16));
      if (v48 > v49.i32[0] && v50 > v49.i32[1])
      {
        v52 = *&v45.i32[2] - v33;
        v53 = vcvtms_s32_f32(((*&v45.i32[2] - v33) - *(&v46 + 2)) / *(&v47 + 2));
        if (DWORD2(v48) > v53)
        {
          v54 = vcltz_s32(v49);
          if ((v54.i8[0] & 1) == 0 && (v54.i8[4] & 1) == 0 && (v53 & 0x80000000) == 0)
          {
            v55 = v53 + (v49.i32[1] + v50 * v49.i32[0]) * v105;
            ++v34[v55];
            _H17 = *&a7[2 * v55];
            __asm { FCVT            S17, H17 }

            _S17 = *v45.i32 + _S17;
            __asm { FCVT            H17, S17 }

            *&a7[2 * v55] = LOWORD(_S17);
            LOWORD(_S17) = *&a7[2 * v55 + 2 * a3];
            __asm { FCVT            S17, H17 }

            _S7 = *&v45.i32[1] + _S17;
            __asm { FCVT            H7, S7 }

            *&a7[2 * v55 + 2 * a3] = LOWORD(_S7);
            LOWORD(_S7) = *&a7[2 * v55 + 2 * v35];
            __asm { FCVT            S7, H7 }

            _S7 = v52 + _S7;
            __asm { FCVT            H7, S7 }

            *&a7[2 * v55 + 2 * v35] = LOWORD(_S7);
            v67 = *(v36 + 8 * v41);
            LOWORD(v52) = vaddv_s16(v67);
            if (v52 != 0.0)
            {
              v68 = LOWORD(v52);
              v69 = v67.u16[0] / v68;
              v70 = v67.u16[1] / v68;
              v71 = v67.u16[2] / v68;
              v72 = (1.0 - (v71 + (v69 + v70))) / (v28 - 3);
              if (v28 >= 1)
              {
                v73 = &a7[6 * a3 + 2 * v55];
                v74 = v28;
                do
                {
                  _H19 = *v73;
                  __asm { FCVT            S19, H19 }

                  _S19 = v72 + _S19;
                  __asm { FCVT            H19, S19 }

                  *v73 = LOWORD(_S19);
                  v73 += 2 * a3;
                  --v74;
                }

                while (v74);
              }

              v49.i32[0] = *(v37 + 4 * v41);
              v78 = vmovl_u8(v49);
              if (v28 <= v78.u8[0])
              {
                v79 = 3;
              }

              else
              {
                v79 = v78.u16[0] + 3;
              }

              v80 = v55 + v79 * a3;
              _H20 = *&a7[2 * v80];
              __asm { FCVT            S20, H20 }

              _S18 = (v69 - v72) + _S20;
              __asm { FCVT            H18, S18 }

              *&a7[2 * v80] = LOWORD(_S18);
              v84.i32[0] = v78.u16[1];
              v84.i32[1] = v78.u16[2];
              _D18 = vand_s8(v84, 0xFF000000FFLL);
              v86 = vmla_s32(vdup_n_s32(v55), vbsl_s8(vcgt_s32(v38, _D18), vadd_s32(_D18, 0x300000003), 0x300000003), v40);
              _D18.i16[0] = *&a7[2 * v86.i32[0]];
              __asm { FCVT            S18, H18 }

              _S17 = (v70 - v72) + *_D18.i32;
              __asm { FCVT            H17, S17 }

              *&a7[2 * v86.i32[0]] = LOWORD(_S17);
              LOWORD(_S17) = *&a7[2 * v86.i32[1]];
              v88 = v71 - v72;
              __asm { FCVT            S16, H17 }

              _S7 = v88 + _S16;
              __asm { FCVT            H7, S7 }

              *&a7[2 * v86.i32[1]] = LOWORD(_S7);
            }
          }
        }
      }

      ++v39;
    }

    while (v39 != v31);
  }

  if (a3 >= 1)
  {
    v91 = 0;
    v92 = *a9;
    v93 = a7;
    do
    {
      v94 = v92[v91];
      if (v94 >= 2)
      {
        v95 = v94;
        v96 = 36;
        v97 = v93;
        do
        {
          _H1 = *v97;
          __asm { FCVT            S1, H1 }

          _S1 = _S1 / v95;
          __asm { FCVT            H1, S1 }

          *v97 = LOWORD(_S1);
          v97 += a3;
          --v96;
        }

        while (v96);
      }

      ++v91;
      ++v93;
    }

    while (v91 != a3);
  }

  if (*(a1 + 64))
  {
    v101 = *(a1 + 16);
    __p = *(a1 + 16);
    LODWORD(v112[0]) = DWORD2(v101);
    v107 = 0;
    v108 = 0;
    v106 = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v106, &__p, v112 + 4, 3uLL);
    __p = 0;
    v112[0] = 0;
    v112[1] = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, v106, v107, (v107 - v106) >> 2);
    *__p = 64;
    ou3dod::J4InputSpecialHandling(36, &v106, &__p, a7, a8);
    if (__p)
    {
      v112[0] = __p;
      operator delete(__p);
    }

    if (v106)
    {
      v107 = v106;
      operator delete(v106);
    }

    v30 = v109;
  }

  if (v30)
  {
    v110 = v30;
    operator delete(v30);
  }

  v102 = *MEMORY[0x277D85DE8];
}

void sub_25D1F0CA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
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

void std::vector<float>::resize(std::vector<int> *this, std::vector<int>::size_type __sz)
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
    std::vector<float>::__append(this, __sz - v2);
  }
}

void ou3dod::anonymous namespace::ComputeMeanXYExcludeOutlier(void *a1, char **a2, __n128 a3)
{
  v114 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v4 = a2[1];
  if (*a2 != v4)
  {
    v5 = (v4 - v3) >> 3;
    if (v5)
    {
      v111 = 0;
      v112 = 0;
      v113 = 0;
      v108 = 0;
      v109 = 0;
      v110 = 0;
      __p = 0;
      v106 = 0;
      v107 = 0;
      v102 = 0;
      v103 = 0;
      v104 = 0;
      v7 = vcvtps_s32_f32((v5 - 1) * 0.05);
      v8 = vcvtpd_s64_f64((v5 - 1) * 0.0500000119);
      a3.n128_u64[0] = 0;
      do
      {
        v96 = a3;
        v9 = (*a1 + 16 * *v3);
        v100 = v9->i32[0];
        std::vector<float>::push_back[abi:ne200100](&v111, &v100);
        std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<float> &,std::__wrap_iter<float *>>(v111, v112, &v101, (v112 - v111) >> 2);
        v100 = v9->i32[0];
        std::vector<float>::push_back[abi:ne200100](&v108, &v100);
        std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::less<float> &,std::__wrap_iter<float *>>(v108, v109, &v101, (v109 - v108) >> 2);
        v100 = v9->i32[1];
        std::vector<float>::push_back[abi:ne200100](&__p, &v100);
        std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<float> &,std::__wrap_iter<float *>>(__p, v106, &v101, (v106 - __p) >> 2);
        v100 = v9->i32[1];
        std::vector<float>::push_back[abi:ne200100](&v102, &v100);
        std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::less<float> &,std::__wrap_iter<float *>>(v102, v103, &v101, (v103 - v102) >> 2);
        v12 = *v9;
        v13 = v111;
        v14 = v112;
        v15 = (v112 - v111) >> 2;
        if (v15 > v7)
        {
          if (v15 >= 2)
          {
            v16 = 0;
            v17 = *v111;
            v18 = v111;
            do
            {
              v19 = v18;
              v18 += v16 + 1;
              v20 = 2 * v16;
              v16 = (2 * v16) | 1;
              v21 = v20 + 2;
              if (v21 < v15 && *v18 > v18[1])
              {
                ++v18;
                v16 = v21;
              }

              *v19 = *v18;
            }

            while (v16 <= ((v15 - 2) >> 1));
            v22 = v14 - 1;
            if (v18 == v14 - 1)
            {
              *v18 = v17;
            }

            else
            {
              *v18 = *v22;
              *v22 = v17;
              std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<float> &,std::__wrap_iter<float *>>(v13, (v18 + 1), &v100, ((v18 + 1) - v13) >> 2);
              v14 = v112;
            }
          }

          v112 = v14 - 1;
        }

        v23 = v108;
        v24 = v109;
        v25 = (v109 - v108) >> 2;
        if (v25 > v8)
        {
          if (v25 >= 2)
          {
            v26 = 0;
            v27 = *v108;
            v28 = v108;
            do
            {
              v29 = v28;
              v28 += v26 + 1;
              v30 = 2 * v26;
              v26 = (2 * v26) | 1;
              v31 = v30 + 2;
              if (v31 < v25 && *v28 < v28[1])
              {
                ++v28;
                v26 = v31;
              }

              *v29 = *v28;
            }

            while (v26 <= ((v25 - 2) >> 1));
            v32 = v24 - 1;
            if (v28 == v24 - 1)
            {
              *v28 = v27;
            }

            else
            {
              *v28 = *v32;
              *v32 = v27;
              std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::less<float> &,std::__wrap_iter<float *>>(v23, (v28 + 1), &v100, ((v28 + 1) - v23) >> 2);
              v24 = v109;
            }
          }

          v109 = v24 - 1;
        }

        v33 = __p;
        v34 = v106;
        v35 = (v106 - __p) >> 2;
        if (v35 > v7)
        {
          if (v35 >= 2)
          {
            v36 = 0;
            v37 = *__p;
            v38 = __p;
            do
            {
              v39 = v38;
              v38 += v36 + 1;
              v40 = 2 * v36;
              v36 = (2 * v36) | 1;
              v41 = v40 + 2;
              if (v41 < v35 && *v38 > v38[1])
              {
                ++v38;
                v36 = v41;
              }

              *v39 = *v38;
            }

            while (v36 <= ((v35 - 2) >> 1));
            v42 = v34 - 1;
            if (v38 == v34 - 1)
            {
              *v38 = v37;
            }

            else
            {
              *v38 = *v42;
              *v42 = v37;
              std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<float> &,std::__wrap_iter<float *>>(v33, (v38 + 1), &v100, ((v38 + 1) - v33) >> 2);
              v34 = v106;
            }
          }

          v106 = v34 - 1;
        }

        v43 = v102;
        v44 = v103;
        v45 = (v103 - v102) >> 2;
        if (v45 > v8)
        {
          if (v45 >= 2)
          {
            v46 = 0;
            v47 = *v102;
            v48 = v102;
            do
            {
              v49 = v48;
              v48 += v46 + 1;
              v50 = 2 * v46;
              v46 = (2 * v46) | 1;
              v51 = v50 + 2;
              if (v51 < v45 && *v48 < v48[1])
              {
                ++v48;
                v46 = v51;
              }

              *v49 = *v48;
            }

            while (v46 <= ((v45 - 2) >> 1));
            v52 = (v44 - 4);
            if (v48 == (v44 - 4))
            {
              *v48 = v47;
            }

            else
            {
              *v48 = *v52;
              *v52 = v47;
              std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::less<float> &,std::__wrap_iter<float *>>(v43, (v48 + 1), &v100, ((v48 + 1) - v43) >> 2);
              v44 = v103;
            }
          }

          v103 = v44 - 4;
        }

        a3.n128_u64[1] = v96.n128_u64[1];
        a3.n128_u64[0] = vadd_f32(v96.n128_u64[0], v12);
        v3 += 8;
      }

      while (v3 != v4);
      v53 = v111;
      v54 = v112;
      v99 = a3.n128_u32[1];
      LODWORD(v10) = a3.n128_u32[0];
      while (v53 != v54)
      {
        v55 = *v53;
        v56 = v54 - v53;
        if (v56 >= 2)
        {
          v57 = 0;
          v58 = v53;
          do
          {
            v59 = v58;
            v58 += v57 + 1;
            v60 = 2 * v57;
            v57 = (2 * v57) | 1;
            v61 = v60 + 2;
            if (v61 < v56 && *v58 > v58[1])
            {
              ++v58;
              v57 = v61;
            }

            *v59 = *v58;
          }

          while (v57 <= ((v56 - 2) >> 1));
          v62 = v54 - 1;
          if (v58 == v54 - 1)
          {
            *v58 = v55;
          }

          else
          {
            v94 = v10;
            *v58 = *v62;
            *v62 = v55;
            std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<float> &,std::__wrap_iter<float *>>(v53, (v58 + 1), &v100, v58 + 1 - v53);
            v53 = v111;
            v54 = v112;
            v10 = v94;
          }
        }

        *&v10 = *&v10 - v55;
        v112 = --v54;
      }

      v63 = v108;
      for (i = v109; v63 != i; v109 = i)
      {
        v65 = *v63;
        v66 = i - v63;
        if (v66 >= 2)
        {
          v67 = 0;
          v68 = v63;
          do
          {
            v69 = v68;
            v68 += v67 + 1;
            v70 = 2 * v67;
            v67 = (2 * v67) | 1;
            v71 = v70 + 2;
            if (v71 < v66 && *v68 < v68[1])
            {
              ++v68;
              v67 = v71;
            }

            *v69 = *v68;
          }

          while (v67 <= ((v66 - 2) >> 1));
          v72 = i - 1;
          if (v68 == i - 1)
          {
            *v68 = v65;
          }

          else
          {
            v95 = v10;
            *v68 = *v72;
            *v72 = v65;
            std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::less<float> &,std::__wrap_iter<float *>>(v63, (v68 + 1), &v100, v68 + 1 - v63);
            v63 = v108;
            i = v109;
            v10 = v95;
          }
        }

        *&v10 = *&v10 - v65;
        --i;
      }

      v73 = __p;
      v74 = v106;
      LODWORD(v11) = v99;
      if (__p != v106)
      {
        do
        {
          v75 = *v73;
          v76 = v74 - v73;
          if (v76 >= 2)
          {
            v77 = 0;
            v78 = v73;
            do
            {
              v79 = v78;
              v78 += v77 + 1;
              v80 = 2 * v77;
              v77 = (2 * v77) | 1;
              v81 = v80 + 2;
              if (v81 < v76 && *v78 > v78[1])
              {
                ++v78;
                v77 = v81;
              }

              *v79 = *v78;
            }

            while (v77 <= ((v76 - 2) >> 1));
            v82 = v74 - 1;
            if (v78 == v74 - 1)
            {
              *v78 = v75;
            }

            else
            {
              v97 = v11;
              *v78 = *v82;
              *v82 = v75;
              std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<float> &,std::__wrap_iter<float *>>(v73, (v78 + 1), &v100, v78 + 1 - v73);
              v73 = __p;
              v74 = v106;
              v11 = v97;
            }
          }

          *&v11 = *&v11 - v75;
          v106 = --v74;
        }

        while (v73 != v74);
      }

      v83 = v102;
      for (j = v103; v83 != j; v103 = j)
      {
        v85 = *v83;
        v86 = (j - v83) >> 2;
        if (v86 >= 2)
        {
          v87 = 0;
          v88 = v83;
          do
          {
            v89 = v88;
            v88 += v87 + 1;
            v90 = 2 * v87;
            v87 = (2 * v87) | 1;
            v91 = v90 + 2;
            if (v91 < v86 && *v88 < v88[1])
            {
              ++v88;
              v87 = v91;
            }

            *v89 = *v88;
          }

          while (v87 <= ((v86 - 2) >> 1));
          v92 = (j - 4);
          if (v88 == (j - 4))
          {
            *v88 = v85;
          }

          else
          {
            v98 = v11;
            *v88 = *v92;
            *v92 = v85;
            std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::less<float> &,std::__wrap_iter<float *>>(v83, (v88 + 1), &v100, v88 + 1 - v83);
            v83 = v102;
            j = v103;
            v11 = v98;
          }
        }

        *&v11 = *&v11 - v85;
        j -= 4;
      }

      if (v83)
      {
        v103 = v83;
        operator delete(v83);
      }

      if (__p)
      {
        v106 = __p;
        operator delete(__p);
      }

      if (v108)
      {
        v109 = v108;
        operator delete(v108);
      }

      if (v111)
      {
        v112 = v111;
        operator delete(v111);
      }
    }
  }

  v93 = *MEMORY[0x277D85DE8];
}

void sub_25D1F1544(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a20)
  {
    operator delete(a20);
  }

  if (a24)
  {
    operator delete(a24);
  }

  v27 = *(v25 - 120);
  if (v27)
  {
    *(v25 - 112) = v27;
    operator delete(v27);
  }

  _Unwind_Resume(exception_object);
}

void ou3dod::J4InputSpecialHandling(int a1, _DWORD **a2, unsigned int **a3, _WORD *a4, unint64_t a5)
{
  v5 = a5;
  v48 = *MEMORY[0x277D85DE8];
  v9 = *a3;
  v10 = 1;
  while (v9 != a3[1])
  {
    v11 = *v9++;
    v10 *= v11;
  }

  if (a5 < v10)
  {
    v34 = v10;
    v35 = _OULoggingGetOSLogForCategoryObjectUnderstanding();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      ou3dod::J4InputSpecialHandling(v34, v35);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, &unk_25D2878C2);
    __cxa_throw(exception, off_2799C3FC0, MEMORY[0x277D82610]);
  }

  v47[0] = a1;
  v12 = *a2;
  v47[1] = **a2;
  v47[2] = v12[1];
  v47[3] = v12[2];
  v43 = 0;
  v44 = 0;
  v45 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v43, v47, &v48, 4uLL);
  v46[0] = a1;
  v13 = *a3;
  v46[1] = **a3;
  v46[2] = v13[1];
  v46[3] = v13[2];
  __p = 0;
  v41 = 0;
  v42 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&__p, v46, v47, 4uLL);
  ou3dod::PaddingOrTrimming(&v43, &__p, a4);
  if (__p)
  {
    v41 = __p;
    operator delete(__p);
  }

  if (v43)
  {
    v44 = v43;
    operator delete(v43);
  }

  if (a3[1] - *a3 != 12)
  {
    v37 = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](v37, "[3DOD] Input vector dimension should be 3.");
    __cxa_throw(v37, off_2799C3FC0, MEMORY[0x277D82610]);
  }

  if (**a3 * a1 * (*a3)[1] * (*a3)[2] != v5)
  {
    v38 = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](v38, "[3DOD] Input size doesn't match with config size.");
    __cxa_throw(v38, off_2799C3FC0, MEMORY[0x277D82610]);
  }

  std::vector<half>::vector[abi:ne200100](&v43, v5);
  v14 = *a3;
  if (a3[1] - *a3 != 12)
  {
    v39 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v39, "[3DOD] Input vector dimension should be 3.");
    goto LABEL_38;
  }

  v15 = *v14;
  v16 = v14[1];
  v17 = v15 * a1 * v16;
  v18 = v14[2];
  if (v17 * v18 != v5)
  {
    v39 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v39, "[3DOD] Input size doesn't match with config size.");
    goto LABEL_38;
  }

  v19 = v43;
  v20 = v44 - v43;
  if ((v44 - v43) >> 1 != v5)
  {
    v39 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v39, "[3DOD] mismatching input and output sizes.");
LABEL_38:
    v39->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(v39, off_2799C3FC0, MEMORY[0x277D82610]);
  }

  v21 = v43;
  if (v18 >= 1)
  {
    v22 = 0;
    for (i = 0; i != v18; ++i)
    {
      if (a1 >= 1)
      {
        v24 = 0;
        v25 = i;
        v26 = v22;
        do
        {
          if (v16 >= 1)
          {
            v27 = 0;
            v28 = v25;
            v29 = v26;
            do
            {
              if (v15 >= 1)
              {
                v30 = &v19[2 * v29];
                v31 = v28;
                v32 = v15;
                do
                {
                  *v30 = a4[v31];
                  v30 += 2;
                  v31 += v16 * v18;
                  --v32;
                }

                while (v32);
              }

              ++v27;
              v29 += v15;
              v28 += v18;
            }

            while (v27 != v16);
          }

          ++v24;
          v26 += v16 * v15;
          v25 += v16 * v18 * v15;
        }

        while (v24 != a1);
      }

      v22 += v17;
    }

    v21 = v43;
  }

  memcpy(a4, v19, v20);
  if (v21)
  {
    v44 = v21;
    operator delete(v21);
  }

  v33 = *MEMORY[0x277D85DE8];
}

void ou3dod::PreprocessDense<half,false>(int8x16_t *a1, int a2, signed int a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, char *a7, uint64_t a8, uint64_t a9, std::vector<int> *a10, float *a11, float32x4_t *a12, char a13, char a14)
{
  utils::Resample(((a4[1] - *a4) >> 4), a2, &v98);
  if ((a14 & 1) == 0)
  {
    std::vector<float>::resize(a10, (v99 - v98) >> 3);
  }

  v21 = v98;
  v22 = v99 - v98;
  if (v99 != v98)
  {
    v23 = v22 >> 3;
    begin = a10->__begin_;
    if ((v22 >> 3) <= 1)
    {
      v23 = 1;
    }

    v25 = *a4 + 8;
    do
    {
      v26 = *v21;
      v21 += 8;
      *begin++ = *(v25 + 16 * v26);
      --v23;
    }

    while (v23);
  }

  percentile(a10, v22 >> 3, 0.02);
  *a11 = v27.n128_f32[0];
  if ((a14 & 1) == 0)
  {
    a12->i64[0] = v28;
  }

  v96 = a5;
  v29 = a1->i32[0];
  if (a13)
  {
    v30 = (a1[1].i32[2] + 31) & 0xFFFFFFE0;
  }

  else
  {
    v30 = a1[1].u32[2];
  }

  v97 = v30;
  bzero(a7, 2 * a8);
  bzero(*a9, *(a9 + 8) - *a9);
  v31 = v98;
  v32 = v99;
  if (v98 != v99)
  {
    v33 = *a4;
    v34 = *a11;
    v35 = *a9;
    v36 = a3 + a3 * v29;
    v37 = *a6;
    v38 = *v96;
    v39 = vdup_n_s32(v29);
    v40 = v98;
    v41 = vdup_n_s32(a3);
    do
    {
      v42 = *v40;
      v43 = *(v33 + 16 * *v40);
      v44 = vsubq_f32(v43, *a12);
      if (a14)
      {
        v45 = -1;
      }

      else
      {
        v45 = 0;
      }

      _Q17 = vbslq_s8(vdupq_n_s32(v45), v43, v44);
      v47 = a1[2];
      v46 = a1[3];
      v48 = vcvtms_s32_f32((*_Q17.i32 - *v46.i32) / *v47.i32);
      _Q17.i32[0] = vdup_lane_s32(*_Q17.i8, 1).u32[0];
      *&_Q17.i32[1] = *&_Q17.i32[2] - v34;
      *_Q17.i8 = vcvt_s32_f32(vrndm_f32(vdiv_f32(vsub_f32(*_Q17.i8, vext_s8(*v46.i8, *&vextq_s8(v46, v46, 8uLL), 4uLL)), vext_s8(*v47.i8, *&vextq_s8(v47, v47, 8uLL), 4uLL))));
      v50 = HIDWORD(a1[1].i64[0]);
      v51 = _Q17.i32[0];
      v52 = *&a1[1] > v48 && v50 > _Q17.i32[0];
      v53 = _Q17.i32[1];
      if (v52 && a1[1].i64[1] > _Q17.i32[1] && (v48 & 0x80000000) == 0)
      {
        v55 = vcltz_s32(*_Q17.i8);
        if ((v55.i8[0] & 1) == 0 && (v55.i8[4] & 1) == 0)
        {
          v56 = v53 + (v51 + v50 * v48) * v97;
          ++v35[v56];
          *&a7[2 * v56] = *&a7[2 * v56] + COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0));
          _Q17.i16[0] = *&a7[2 * v56 + 2 * v36];
          __asm { FCVT            S17, H17 }

          _S16 = (*&_Q17.i32[2] - v34) + *_Q17.i32;
          __asm { FCVT            H16, S16 }

          *&a7[2 * v56 + 2 * v36] = LOWORD(_S16);
          v62 = *(v37 + 8 * v42);
          _Q17.i16[0] = vaddv_s16(v62);
          if (_Q17.i32[0])
          {
            v63 = _Q17.u16[0];
            v64 = v62.u16[0] / v63;
            v65 = v62.u16[1] / v63;
            v66 = v62.u16[2] / v63;
            v67 = (1.0 - (v66 + (v64 + v65))) / (v29 - 3);
            if (v29 >= 1)
            {
              v68 = &a7[2 * a3 + 2 * v56];
              v69 = v29;
              do
              {
                _H20 = *v68;
                __asm { FCVT            S20, H20 }

                _S20 = v67 + _S20;
                __asm { FCVT            H20, S20 }

                *v68 = LOWORD(_S20);
                v68 += 2 * a3;
                --v69;
              }

              while (v69);
            }

            v47.i32[0] = *(v38 + 4 * v42);
            v73 = vmovl_u8(*v47.i8);
            if (v29 > v73.u8[0])
            {
              v74 = v73.u16[0] + 1;
            }

            else
            {
              v74 = 1;
            }

            v75 = v56 + v74 * a3;
            _H21 = *&a7[2 * v75];
            __asm { FCVT            S21, H21 }

            _S19 = (v64 - v67) + _S21;
            __asm { FCVT            H19, S19 }

            *&a7[2 * v75] = LOWORD(_S19);
            v79.i32[0] = v73.u16[1];
            v79.i32[1] = v73.u16[2];
            _D19 = vand_s8(v79, 0xFF000000FFLL);
            v81 = vcgt_s32(v39, _D19);
            v82 = vmla_s32(vdup_n_s32(v56), vsub_s32(vand_s8(vadd_s32(_D19, 0x100000001), v81), vmvn_s8(v81)), v41);
            _D19.i16[0] = *&a7[2 * v82.i32[0]];
            __asm { FCVT            S19, H19 }

            _S18 = (v65 - v67) + *_D19.i32;
            __asm { FCVT            H18, S18 }

            *&a7[2 * v82.i32[0]] = LOWORD(_S18);
            LOWORD(_S18) = *&a7[2 * v82.i32[1]];
            v84 = v66 - v67;
            __asm { FCVT            S17, H18 }

            _S16 = v84 + _S17;
            __asm { FCVT            H16, S16 }

            *&a7[2 * v82.i32[1]] = LOWORD(_S16);
          }
        }
      }

      v40 += 8;
    }

    while (v40 != v32);
  }

  if (a3 >= 1)
  {
    v87 = 0;
    v88 = *a9;
    do
    {
      v89 = v88[v87];
      if (v89 >= 2)
      {
        v90 = v89;
        v91 = 35;
        v92 = a7;
        do
        {
          _H1 = *v92;
          __asm { FCVT            S1, H1 }

          _S1 = _S1 / v90;
          __asm { FCVT            H1, S1 }

          *v92 = LOWORD(_S1);
          v92 += a3;
          --v91;
        }

        while (v91);
      }

      ++v87;
      a7 += 2;
    }

    while (v87 != a3);
  }

  if (v31)
  {
    v99 = v31;
    operator delete(v31);
  }
}

void sub_25D1F1E58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ou3dod::PreprocessDense<float,false>(int8x16_t *a1, int a2, signed int a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, char *a7, uint64_t a8, uint64_t a9, std::vector<int> *a10, float *a11, float32x4_t *a12, char a13, char a14)
{
  utils::Resample(((a4[1] - *a4) >> 4), a2, &v81);
  if ((a14 & 1) == 0)
  {
    std::vector<float>::resize(a10, (v82 - v81) >> 3);
  }

  v21 = v81;
  v22 = v82 - v81;
  if (v82 != v81)
  {
    v23 = v22 >> 3;
    begin = a10->__begin_;
    if ((v22 >> 3) <= 1)
    {
      v23 = 1;
    }

    v25 = *a4 + 8;
    do
    {
      v26 = *v21;
      v21 += 8;
      *begin++ = *(v25 + 16 * v26);
      --v23;
    }

    while (v23);
  }

  percentile(a10, v22 >> 3, 0.02);
  *a11 = v27.n128_f32[0];
  if ((a14 & 1) == 0)
  {
    a12->i64[0] = v28;
  }

  v79 = a5;
  v29 = a1->i32[0];
  if (a13)
  {
    v30 = (a1[1].i32[2] + 31) & 0xFFFFFFE0;
  }

  else
  {
    v30 = a1[1].u32[2];
  }

  v80 = v30;
  bzero(a7, 4 * a8);
  bzero(*a9, *(a9 + 8) - *a9);
  v31 = v81;
  v32 = v82;
  if (v81 != v82)
  {
    v33 = *a4;
    v34 = *a9;
    v35 = a3 + a3 * v29;
    v36 = *a6;
    v37 = *v79;
    v38 = vdup_n_s32(v29);
    v39 = v81;
    v40 = vdup_n_s32(a3);
    do
    {
      v41 = *v39;
      v42 = *(v33 + 16 * *v39);
      v43 = vsubq_f32(v42, *a12);
      if (a14)
      {
        v44 = -1;
      }

      else
      {
        v44 = 0;
      }

      v45 = vbslq_s8(vdupq_n_s32(v44), v42, v43);
      v47 = a1[2];
      v46 = a1[3];
      v48 = vcvtms_s32_f32((*v45.i32 - *v46.i32) / *v47.i32);
      v49 = *&v45.i32[2] - *a11;
      v45.i32[0] = vdup_lane_s32(*v45.i8, 1).u32[0];
      *&v45.i32[1] = v49;
      v50 = vcvt_s32_f32(vrndm_f32(vdiv_f32(vsub_f32(*v45.i8, vext_s8(*v46.i8, *&vextq_s8(v46, v46, 8uLL), 4uLL)), vext_s8(*v47.i8, *&vextq_s8(v47, v47, 8uLL), 4uLL))));
      v51 = HIDWORD(a1[1].i64[0]);
      v52 = v50.i32[0];
      v53 = *&a1[1] > v48 && v51 > v50.i32[0];
      v54 = v50.i32[1];
      if (v53 && a1[1].i64[1] > v50.i32[1] && (v48 & 0x80000000) == 0)
      {
        v56 = vcltz_s32(v50);
        if ((v56.i8[0] & 1) == 0 && (v56.i8[4] & 1) == 0)
        {
          v57 = v54 + (v52 + v51 * v48) * v80;
          ++v34[v57];
          *&a7[4 * v57] = *&a7[4 * v57] + 1.0;
          v59 = *&a7[4 * v57 + 4 * v35];
          *&a7[4 * v57 + 4 * v35] = v49 + v59;
          v58 = *(v36 + 8 * v41);
          LOWORD(v59) = vaddv_s16(v58);
          if (v59 != 0.0)
          {
            v60 = LOWORD(v59);
            v61 = v58.u16[0] / v60;
            v62 = v58.u16[1] / v60;
            v63 = v58.u16[2] / v60;
            v64 = (1.0 - (v63 + (v61 + v62))) / (v29 - 3);
            if (v29 >= 1)
            {
              v65 = &a7[4 * a3 + 4 * v57];
              v66 = v29;
              do
              {
                *v65 = v64 + *v65;
                v65 += a3;
                --v66;
              }

              while (v66);
            }

            v47.i32[0] = *(v37 + 4 * v41);
            v67 = vmovl_u8(*v47.i8);
            if (v29 > v67.u8[0])
            {
              v68 = v67.u16[0] + 1;
            }

            else
            {
              v68 = 1;
            }

            *&a7[4 * v57 + 4 * v68 * a3] = (v61 - v64) + *&a7[4 * v57 + 4 * v68 * a3];
            v69.i32[0] = v67.u16[1];
            v69.i32[1] = v67.u16[2];
            v70 = vand_s8(v69, 0xFF000000FFLL);
            v71 = vcgt_s32(v38, v70);
            v72 = vmla_s32(vdup_n_s32(v57), vsub_s32(vand_s8(vadd_s32(v70, 0x100000001), v71), vmvn_s8(v71)), v40);
            *&a7[4 * v72.i32[0]] = (v62 - v64) + *&a7[4 * v72.i32[0]];
            *&a7[4 * v72.i32[1]] = (v63 - v64) + *&a7[4 * v72.i32[1]];
          }
        }
      }

      v39 += 8;
    }

    while (v39 != v32);
  }

  if (a3 >= 1)
  {
    v73 = 0;
    v74 = *a9;
    do
    {
      v75 = v74[v73];
      if (v75 >= 2)
      {
        v76 = v75;
        v77 = 35;
        v78 = a7;
        do
        {
          *v78 = *v78 / v76;
          v78 += a3;
          --v77;
        }

        while (v77);
      }

      ++v73;
      a7 += 4;
    }

    while (v73 != a3);
  }

  if (v31)
  {
    v82 = v31;
    operator delete(v31);
  }
}

void sub_25D1F226C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ou3dod::PaddingOrTrimming(uint64_t *a1, int **a2, _WORD *a3)
{
  if (a1[1] - *a1 != 16 || (v5 = *a2, v4 = a2[1], v4 - *a2 != 16))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "[3DOD] Input vector dimension should be 4.");
    __cxa_throw(exception, off_2799C3FC0, MEMORY[0x277D82610]);
  }

  v8 = 1;
  while (v5 != v4)
  {
    v9 = *v5++;
    v8 = v9 * v8;
  }

  std::vector<half>::vector[abi:ne200100](v41, v8);
  v38 = 0;
  v39 = 0;
  v40 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v38, *a1, a1[1], (a1[1] - *a1) >> 2);
  v10 = a1[1] - *a1;
  if (v10)
  {
    v11 = v10 >> 2;
    v12 = v38;
    v13 = *a2;
    if (v11 <= 1)
    {
      v11 = 1;
    }

    do
    {
      v15 = *v13++;
      v14 = v15;
      if (v15 >= *v12)
      {
        v14 = *v12;
      }

      *v12++ = v14;
      --v11;
    }

    while (v11);
  }

  LODWORD(__p[0]) = 1;
  std::vector<int>::vector[abi:ne200100](v37, 4uLL);
  std::vector<int>::vector[abi:ne200100](__p, 4uLL);
  v16 = *a1;
  v17 = *a2;
  v18 = __p[0] + 12;
  v19 = v37[0] + 12;
  v20 = 3;
  do
  {
    *(v19 - 1) = *(v16 + 4 * v20) * *v19;
    --v19;
    *(v18 - 1) = v17[v20] * *v18;
    --v18;
    --v20;
  }

  while (v20);
  v21 = v38;
  v22 = *v38;
  if (*v38 >= 1)
  {
    v23 = 0;
    v24 = *(v38 + 1);
    do
    {
      if (v24 >= 1)
      {
        v25 = 0;
        v26 = v21[2];
        do
        {
          if (v26 >= 1)
          {
            v27 = 0;
            v28 = v21[3];
            v29 = v37[0];
            v30 = __p[0];
            v31 = v41[0];
            do
            {
              if (v28 >= 1)
              {
                v32 = v25 * v30[1] + v23 * *v30 + v30[2] * v27;
                v33 = v25 * v29[1] + v23 * *v29 + v29[2] * v27;
                v34 = v28;
                do
                {
                  v31[v32++] = a3[v33++];
                  --v34;
                }

                while (v34);
              }

              ++v27;
            }

            while (v27 != v26);
          }

          ++v25;
        }

        while (v25 != v24);
      }

      ++v23;
    }

    while (v23 != v22);
  }

  memcpy(a3, v41[0], 2 * v8);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v37[0])
  {
    v37[1] = v37[0];
    operator delete(v37[0]);
  }

  if (v38)
  {
    v39 = v38;
    operator delete(v38);
  }

  if (v41[0])
  {
    v41[1] = v41[0];
    operator delete(v41[0]);
  }
}

void ou3dod::J4OutputSpecialHandling(int a1, char **a2, _DWORD **a3, char *a4, unint64_t a5)
{
  v50 = *MEMORY[0x277D85DE8];
  v9 = *a2;
  v10 = a2[1];
  v11 = 1;
  if (*a2 != v10)
  {
    v12 = *a2;
    do
    {
      v13 = *v12;
      v12 += 4;
      v11 *= v13;
    }

    while (v12 != v10);
  }

  v14 = v11 * a1;
  if (a5 < v14)
  {
    v36 = v14;
    v37 = _OULoggingGetOSLogForCategoryObjectUnderstanding();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      ou3dod::J4OutputSpecialHandling(v36, v37);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, &unk_25D2878C2);
    __cxa_throw(exception, off_2799C3FC0, MEMORY[0x277D82610]);
  }

  if (v10 - v9 != 12)
  {
    v39 = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](v39, "[3DOD] Input vector dimension should be 3.");
    goto LABEL_31;
  }

  if (*v9 * a1 * *(v9 + 1) * *(v9 + 2) != a5)
  {
    v39 = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](v39, "[3DOD] Input size doesn't match with config size.");
LABEL_31:
    __cxa_throw(v39, off_2799C3FC0, MEMORY[0x277D82610]);
  }

  std::vector<half>::vector[abi:ne200100](&v46, a5);
  v15 = *a2;
  v16 = *(*a2 + 2);
  if (v16 >= 1)
  {
    v17 = 0;
    for (i = 0; i != v16; ++i)
    {
      if (a1 >= 1)
      {
        v19 = 0;
        v20 = 0;
        v21 = *(v15 + 1);
        v22 = v21 * v17;
        v23 = v16 * v21;
        do
        {
          if (v21 >= 1)
          {
            v24 = 0;
            v25 = *v15;
            v26 = v46;
            v27 = v25 * v22;
            v28 = i + v25 * v19;
            do
            {
              if (v25 >= 1)
              {
                v29 = &a4[2 * v27];
                v30 = v28;
                v31 = v25;
                do
                {
                  v32 = *v29;
                  v29 += 2;
                  v26[v30] = v32;
                  v30 += v23;
                  --v31;
                }

                while (v31);
              }

              ++v24;
              v27 += v25;
              v28 += v16;
            }

            while (v24 != v21);
          }

          ++v20;
          v22 += v21;
          v19 += v23;
        }

        while (v20 != a1);
      }

      v17 += a1;
    }
  }

  memcpy(a4, v46, v47 - v46);
  v49[0] = a1;
  v33 = *a2;
  v49[1] = **a2;
  v49[2] = *(v33 + 1);
  v49[3] = *(v33 + 2);
  v43 = 0;
  v44 = 0;
  v45 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v43, v49, &v50, 4uLL);
  v48[0] = a1;
  v34 = *a3;
  v48[1] = **a3;
  v48[2] = v34[1];
  v48[3] = v34[2];
  __p = 0;
  v41 = 0;
  v42 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&__p, v48, v49, 4uLL);
  ou3dod::PaddingOrTrimming(&v43, &__p, a4);
  if (__p)
  {
    v41 = __p;
    operator delete(__p);
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

  v35 = *MEMORY[0x277D85DE8];
}

void ou3dod::ParseNetOutputAF(uint64_t a1, int a2, unsigned int a3, void *a4, uint64_t *a5, char *a6, unint64_t a7, uint64_t a8, char *a9, unint64_t a10, char *a11, unint64_t a12, uint64_t *a13)
{
  v214 = *MEMORY[0x277D85DE8];
  v211 = a4;
  v185 = a1;
  if (*(a1 + 64) == 1)
  {
    v17 = *(a1 + 16);
    v213.__begin_ = *(a1 + 16);
    LODWORD(v213.__end_) = DWORD2(v17);
    memset(__p, 0, 24);
    std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(__p, &v213, &v213.__end_ + 4, 3uLL);
    memset(&v213, 0, sizeof(v213));
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v213, __p[0], __p[1], (__p[1] - __p[0]) >> 2);
    *v213.__begin_ = 64;
    ou3dod::J4OutputSpecialHandling(1, &v213, __p, a6, a7);
    ou3dod::J4OutputSpecialHandling(a3, &v213, __p, a9, a10);
    ou3dod::J4OutputSpecialHandling(30, &v213, __p, a11, a12);
    if (v213.__begin_)
    {
      v213.__end_ = v213.__begin_;
      operator delete(v213.__begin_);
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  v184 = a5;
  v18 = a3;
  v190 = a3;
  v186 = a2;
  if (a2 < 1)
  {
    v20 = 0;
  }

  else
  {
    v19 = 0;
    v20 = 0;
    v21 = &a9[2 * a2];
    do
    {
      _H0 = *&a6[2 * v19];
      __asm { FCVT            S0, H0 }

      v28 = expf(-_S0);
      _H1 = *&a9[2 * v19];
      __asm { FCVT            S1, H1 }

      v31 = a3 - 1;
      v32 = v21;
      if (a3 >= 2)
      {
        do
        {
          _H2 = *v32;
          __asm { FCVT            S2, H2 }

          if (_S1 < _S2)
          {
            _S1 = _S2;
          }

          v32 += 2 * a2;
          --v31;
        }

        while (v31);
      }

      v35 = 1.0 / (v28 + 1.0);
      v36 = 1.0 / (expf(-_S1) + 1.0);
      v37 = v35 * v36;
      v38 = v20;
      v39 = (v20 >> 3) + 1;
      if (v39 >> 61)
      {
        std::vector<float>::__throw_length_error[abi:ne200100]();
      }

      if (v20 >> 3 != -1)
      {
        if (!(v39 >> 61))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v40 = 8 * (v20 >> 3);
      *v40 = v37;
      *(v40 + 4) = v19;
      v20 = v40 + 8;
      memcpy(0, 0, v38);
      v18 = a3;
      v41 = v20 >> 3;
      std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,ou3dod::ParseNetOutputAF(OU3DSSDConfig const&,int,int,NSString *,std::vector<NSString * {__strong}> const&,std::span<half,18446744073709551615ul>,std::span<half,18446744073709551615ul>,std::span<half,18446744073709551615ul>,std::vector<OUBox3d> &)::$_0 &,std::__wrap_iter<ou3dod::ParseNetOutputAF(OU3DSSDConfig const&,int,int,NSString *,std::vector<NSString * {__strong}> const&,std::span<half,18446744073709551615ul>,std::span<half,18446744073709551615ul>,std::span<half,18446744073709551615ul>,std::vector<OUBox3d> &)::ScoreInfo *>>(0, v20, v20 >> 3);
      if ((v20 >> 3) >= 0x3E9)
      {
        if (v41 >= 2)
        {
          v42 = 0;
          v43 = 0;
          v44 = MEMORY[0];
          do
          {
            v45 = v43;
            v43 += 2 * v42 + 2;
            v46 = 2 * v42;
            v42 = (2 * v42) | 1;
            v47 = v46 + 2;
            if (v47 < v41 && *v43 > v43[2])
            {
              v43 += 2;
              v42 = v47;
            }

            *v45 = *v43;
          }

          while (v42 <= ((v41 - 2) >> 1));
          v48 = (v20 - 8);
          if (v43 == (v20 - 8))
          {
            *v43 = v44;
          }

          else
          {
            *v43 = *v48;
            *v48 = v44;
            std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,ou3dod::ParseNetOutputAF(OU3DSSDConfig const&,int,int,NSString *,std::vector<NSString * {__strong}> const&,std::span<half,18446744073709551615ul>,std::span<half,18446744073709551615ul>,std::span<half,18446744073709551615ul>,std::vector<OUBox3d> &)::$_0 &,std::__wrap_iter<ou3dod::ParseNetOutputAF(OU3DSSDConfig const&,int,int,NSString *,std::vector<NSString * {__strong}> const&,std::span<half,18446744073709551615ul>,std::span<half,18446744073709551615ul>,std::span<half,18446744073709551615ul>,std::vector<OUBox3d> &)::ScoreInfo *>>(0, (v43 + 2), (v43 + 2) >> 3);
          }
        }

        v20 -= 8;
      }

      ++v19;
      v21 += 2;
    }

    while (v19 != a2);
  }

  memset(&v213, 0, sizeof(v213));
  std::vector<int>::reserve(&v213, 0x3E8uLL);
  for (; v20; v20 -= 8)
  {
    end = v213.__end_;
    if (v213.__end_ >= v213.__end_cap_.__value_)
    {
      begin = v213.__begin_;
      v52 = v213.__end_ - v213.__begin_;
      v53 = v213.__end_ - v213.__begin_;
      v54 = v53 + 1;
      if ((v53 + 1) >> 62)
      {
        std::vector<float>::__throw_length_error[abi:ne200100]();
      }

      v55 = v213.__end_cap_.__value_ - v213.__begin_;
      if ((v213.__end_cap_.__value_ - v213.__begin_) >> 1 > v54)
      {
        v54 = v55 >> 1;
      }

      if (v55 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v56 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v56 = v54;
      }

      if (v56)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(&v213, v56);
      }

      *(4 * v53) = MEMORY[4];
      v50 = (4 * v53 + 4);
      memcpy(0, begin, v52);
      v57 = v213.__begin_;
      v213.__begin_ = 0;
      v213.__end_ = v50;
      v213.__end_cap_.__value_ = 0;
      if (v57)
      {
        operator delete(v57);
      }

      v18 = a3;
    }

    else
    {
      *v213.__end_ = MEMORY[4];
      v50 = end + 1;
    }

    v213.__end_ = v50;
    v58 = v20 >> 3;
    if (v20 >> 3 >= 2)
    {
      v59 = 0;
      v60 = MEMORY[0];
      v61 = 0;
      do
      {
        v62 = v61;
        v61 += 2 * v59 + 2;
        v63 = 2 * v59;
        v59 = (2 * v59) | 1;
        v64 = v63 + 2;
        if (v64 < v58 && *v61 > v61[2])
        {
          v61 += 2;
          v59 = v64;
        }

        *v62 = *v61;
      }

      while (v59 <= ((v58 - 2) >> 1));
      v65 = (v20 - 8);
      if (v61 == (v20 - 8))
      {
        *v61 = v60;
      }

      else
      {
        *v61 = *v65;
        *v65 = v60;
        std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,ou3dod::ParseNetOutputAF(OU3DSSDConfig const&,int,int,NSString *,std::vector<NSString * {__strong}> const&,std::span<half,18446744073709551615ul>,std::span<half,18446744073709551615ul>,std::span<half,18446744073709551615ul>,std::vector<OUBox3d> &)::$_0 &,std::__wrap_iter<ou3dod::ParseNetOutputAF(OU3DSSDConfig const&,int,int,NSString *,std::vector<NSString * {__strong}> const&,std::span<half,18446744073709551615ul>,std::span<half,18446744073709551615ul>,std::span<half,18446744073709551615ul>,std::vector<OUBox3d> &)::ScoreInfo *>>(0, (v61 + 2), (v61 + 2) >> 3);
      }
    }
  }

  if (v213.__begin_ != v213.__end_)
  {
    v66 = v213.__end_ - 1;
    if (v213.__end_ - 1 > v213.__begin_)
    {
      v67 = v213.__begin_ + 1;
      do
      {
        v68 = *(v67 - 1);
        *(v67 - 1) = *v66;
        *v66-- = v68;
        _CF = v67++ >= v66;
      }

      while (!_CF);
    }
  }

  std::vector<OUBox3d>::__base_destruct_at_end[abi:ne200100](a13, *a13);
  if (a3 >= 1)
  {
    v192 = 0;
    v69 = 2 * v186;
    v183 = 6 * v186;
    v70 = 0.5;
    do
    {
      v208 = 0;
      v209 = 0;
      v210 = 0;
      v205 = 0;
      v206 = 0;
      v207 = 0;
      v71 = v213.__begin_;
      for (i = v213.__end_; v71 != i; v18 = v190)
      {
        v72 = *v71;
        _H0 = *&a6[2 * v72];
        __asm { FCVT            S0, H0 }

        v75 = expf(-_S0);
        _H0 = *&a9[2 * v192 * v186 + 2 * v72];
        __asm { FCVT            S0, H0 }

        v78 = expf(-_S0);
        memset(&v204, 0, sizeof(v204));
        std::vector<int>::reserve(&v204, v18);
        v81 = 1.0 / (v75 + 1.0);
        *_Q0.i64 = 1.0 / (v78 + 1.0);
        v83 = *_Q0.i64;
        v84 = &a9[2 * v72];
        v85 = v204.__end_;
        do
        {
          _H0 = *v84;
          __asm { FCVT            S12, H0 }

          if (v85 >= v204.__end_cap_.__value_)
          {
            v88 = v204.__begin_;
            v89 = v85 - v204.__begin_;
            v90 = v85 - v204.__begin_;
            v91 = v90 + 1;
            if ((v90 + 1) >> 62)
            {
              std::vector<float>::__throw_length_error[abi:ne200100]();
            }

            v92 = v204.__end_cap_.__value_ - v204.__begin_;
            if ((v204.__end_cap_.__value_ - v204.__begin_) >> 1 > v91)
            {
              v91 = v92 >> 1;
            }

            if (v92 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v93 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v93 = v91;
            }

            if (v93)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(&v204, v93);
            }

            v94 = v85 - v204.__begin_;
            v95 = (4 * v90);
            v96 = (4 * v90 - 4 * v94);
            *v95 = _S12;
            v85 = v95 + 1;
            memcpy(v96, v88, v89);
            v97 = v204.__begin_;
            v204.__begin_ = v96;
            v204.__end_ = v85;
            v204.__end_cap_.__value_ = 0;
            if (v97)
            {
              operator delete(v97);
            }
          }

          else
          {
            *v85++ = _S12;
          }

          v204.__end_ = v85;
          v84 += v69;
          --v18;
        }

        while (v18);
        *&v212 = v81 * v83;
        if ((v81 * v83) >= 0.1)
        {
          v99 = v185[1].i32[1];
          v98 = v185[1].u32[2];
          v101 = v185[2];
          v100 = v185[3];
          v102 = &a11[2 * v72];
          v103 = v185[4].u8[0];
          _Q0.i16[0] = *&v102[2 * v186];
          __asm { FCVT            S0, H0; float }

          v197 = _Q0;
          if (v103 == 1)
          {
            v181 = v185[3];
            v182 = v185[2];
            _S0 = expf(_Q0.f32[0]);
            __asm
            {
              FCVT            H0, S0
              FCVT            S8, H0
            }

            v188 = *v102;
            __asm { FCVT            S0, H0; float }

            _S0 = expf(_S0);
            __asm
            {
              FCVT            H0, S0
              FCVT            S0, H0
            }

            _Q0.f32[0] = (_S8 - _S0) * v70;
            v193 = _Q0;
            _H9 = *&v102[6 * v186];
            __asm { FCVT            S0, H9; float }

            _S0 = expf(_Q0.f32[0]);
            __asm
            {
              FCVT            H0, S0
              FCVT            S8, H0
            }

            v187 = *&v102[4 * v186];
            __asm { FCVT            S0, H0; float }

            _S0 = expf(_S0);
            __asm
            {
              FCVT            H0, S0
              FCVT            S0, H0
            }

            v116 = v193;
            v116.f32[1] = (_S8 - _S0) * v70;
            v194 = v116;
            _H12 = *&v102[10 * v186];
            __asm { FCVT            S0, H12; float }

            _S0 = expf(_S0);
            __asm { FCVT            H8, S0 }

            _H13 = *&v102[8 * v186];
            __asm { FCVT            S0, H13; float }

            _S0 = expf(_S0);
            v80 = v194;
            v100 = v181;
            v101 = v182;
            __asm { FCVT            H0, S0 }
          }

          else
          {
            v79.i16[0] = *v102;
            _H9 = *&v102[6 * v186];
            __asm { FCVT            S3, H9 }

            v187 = *&v102[4 * v186];
            v188 = *v102;
            v79.i16[1] = v187;
            v124 = _Q0;
            v124.i32[1] = _S3;
            *v80.f32 = vmul_f32(vsub_f32(*v124.f32, *&vcvtq_f32_f16(v79)), 0x3F0000003F000000);
            _H8 = *&v102[10 * v186];
            _H0 = *&v102[8 * v186];
            _H12 = _H8;
            _H13 = _H0;
          }

          v127 = 0;
          v128 = v72 % (v98 * v99);
          v129.i64[0] = 0x3F0000003F000000;
          v129.i64[1] = 0x3F0000003F000000;
          v124.f32[0] = (v72 / (v98 * v99)) * v101.f32[0];
          v124.i32[1] = vmuls_lane_f32((v128 / v98), *v101.f32, 1);
          v124.i32[2] = vmuls_lane_f32((v128 % v98), v101, 2);
          v130 = vaddq_f32(vaddq_f32(v100, vmulq_f32(v101, v129)), v124);
          __asm
          {
            FCVT            S2, H8
            FCVT            S0, H0
          }

          v80.f32[2] = (_S2 - _S0) * v70;
          v195 = vaddq_f32(v130, v80);
          v133 = &v102[2 * v183];
          LOWORD(_S0) = *v133;
          __asm { FCVT            S0, H0 }

          v135 = &a11[2 * v183 + 2 * v72 + v69];
          v136 = -11;
          do
          {
            _H1 = *v135;
            __asm { FCVT            S1, H1 }

            if (_S0 < _S1)
            {
              v127 = v136 + 12;
              _S0 = _S1;
            }

            v135 += v69;
            _CF = __CFADD__(v136++, 1);
          }

          while (!_CF);
          _H0 = *&v133[2 * (v127 + 12) * v186];
          __asm { FCVT            S0, H0; float }

          _S8 = expf(_S0);
          if (v103)
          {
            _S0 = expf(v197.f32[0]);
            __asm
            {
              FCVT            H0, S0
              FCVT            S15, H0
            }

            LOWORD(_S0) = v188;
            __asm { FCVT            S0, H0; float }

            _S0 = expf(_S0);
            __asm
            {
              FCVT            H0, S0
              FCVT            S0, H0
            }

            *_Q0.i32 = _S15 + _S0;
            v198 = _Q0;
            _Q0.i16[0] = v187;
            __asm { FCVT            S0, H0; float }

            _S0 = expf(*_Q0.i32);
            __asm
            {
              FCVT            H0, S0
              FCVT            S15, H0
              FCVT            S0, H9; float
            }

            _S0 = expf(_S0);
            __asm
            {
              FCVT            H0, S0
              FCVT            S0, H0
            }

            *&v153 = _S15 + _S0;
            v70 = 0.5;
            v154 = v198;
            v154.i32[1] = v153;
            v199 = v154;
            __asm { FCVT            S0, H13; float }

            _S0 = expf(_S0);
            __asm
            {
              FCVT            H13, S0
              FCVT            S0, H12; float
            }

            _S0 = expf(_S0);
            v159 = v199;
            __asm { FCVT            H12, S0 }
          }

          else
          {
            _H0 = v188;
            __asm { FCVT            S0, H0 }

            v159.i32[3] = v197.i32[3];
            *v159.i32 = v197.f32[0] + _S0;
            LOWORD(_S0) = v187;
            __asm
            {
              FCVT            S0, H0
              FCVT            S2, H9
            }

            *&v159.i32[1] = _S0 + _S2;
          }

          __asm
          {
            FCVT            S0, H13
            FCVT            S2, H12
          }

          *&v159.i32[2] = _S0 + _S2;
          v200 = v159;
          centroidSizeAngleToBox3d(__p, v195, v159, 0.0);
          v166 = *v184;
          v167 = [MEMORY[0x277CCAD78] UUID];
          v168 = (v166 + 8 * v192);
          v202 = v167;
          v169 = v209;
          if (v209 >= v210)
          {
            v170 = std::vector<OUBox3d>::__emplace_back_slow_path<box3d,NSString * const {__strong}&,float const&,NSUUID * {__strong},std::vector<float> const&,NSString * {__strong}&>(&v208, __p, v168, &v212, &v202, &v204, &v211);
          }

          else
          {
            OUBox3d::OUBox3d(v209, __p, v168, v167, &v204, v211, *&v212);
            v170 = v169 + 224;
          }

          v209 = v170;

          __asm
          {
            FCVT            H1, S8
            FCVT            D1, H1
          }

          v173 = (2 * v127) * 3.14159265 / 12.0 + _D1;
          v174 = v173 + floor(v173 / 6.28318531) * -6.28318531;
          centroidSizeAngleToBox3d(__p, v195, v200, -v174);
          v175 = *v184;
          v176 = [MEMORY[0x277CCAD78] UUID];
          v177 = (v175 + 8 * v192);
          v201 = v176;
          v178 = v206;
          if (v206 >= v207)
          {
            v179 = std::vector<OUBox3d>::__emplace_back_slow_path<box3d,NSString * const {__strong}&,float const&,NSUUID * {__strong},std::vector<float> const&,NSString * {__strong}&>(&v205, __p, v177, &v212, &v201, &v204, &v211);
          }

          else
          {
            OUBox3d::OUBox3d(v206, __p, v177, v176, &v204, v211, *&v212);
            v179 = v178 + 224;
          }

          v206 = v179;
        }

        if (v204.__begin_)
        {
          v204.__end_ = v204.__begin_;
          operator delete(v204.__begin_);
        }

        ++v71;
      }

      nmsSameCls(&v208, box3dIouLoose, __p, 0.25);
      select<OUBox3d>(&v205, __p, &v204);
      std::vector<OUBox3d>::__insert_with_size[abi:ne200100]<std::__wrap_iter<OUBox3d const*>,std::__wrap_iter<OUBox3d const*>>(a13, a13[1], v204.__begin_, v204.__end_, 0x6DB6DB6DB6DB6DB7 * ((v204.__end_ - v204.__begin_) >> 5));
      v212 = &v204;
      std::vector<OUBox3d>::__destroy_vector::operator()[abi:ne200100](&v212);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      __p[0] = &v205;
      std::vector<OUBox3d>::__destroy_vector::operator()[abi:ne200100](__p);
      __p[0] = &v208;
      std::vector<OUBox3d>::__destroy_vector::operator()[abi:ne200100](__p);
      ++v192;
    }

    while (v192 != v18);
  }

  if (v213.__begin_)
  {
    v213.__end_ = v213.__begin_;
    operator delete(v213.__begin_);
  }

  v180 = *MEMORY[0x277D85DE8];
}

void sub_25D1F35E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *__p, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

float box3dIouLoose(const box3d *a1, const box3d *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = 1;
  v5 = *a1;
  v6 = *a2;
  do
  {
    v7 = 0;
    v8 = *(a1 + v4);
    v9 = *(a2 + v4);
    do
    {
      v10 = v6;
      v11 = v3;
      v12 = v5;
      v13 = v2.i32[3];
      v14 = (&v47 & 0xFFFFFFFFFFFFFFF3 | (4 * (v7 & 3)));
      v15 = (&v43 & 0xFFFFFFFFFFFFFFF3 | (4 * (v7 & 3)));
      v16 = (&v46 & 0xFFFFFFFFFFFFFFF3 | (4 * (v7 & 3)));
      v17 = (&v48 & 0xFFFFFFFFFFFFFFF3 | (4 * (v7 & 3)));
      v48 = v2;
      v18 = *v17;
      v44 = v8;
      v19 = *(&v44 & 0xFFFFFFFFFFFFFFF3 | (4 * (v7 & 3)));
      if (v19 < v18)
      {
        v18 = *(&v44 & 0xFFFFFFFFFFFFFFF3 | (4 * (v7 & 3)));
      }

      *v17 = v18;
      v20 = v48;
      v2 = v48;
      v2.i32[3] = v13;
      v46 = v11;
      v21 = *v16;
      v43 = v9;
      v22 = *v15;
      if (*v15 < v21)
      {
        v21 = *v15;
      }

      *v16 = v21;
      v23 = v46;
      v3 = v46;
      v3.i32[3] = v11.i32[3];
      v47 = v12;
      if (*v14 >= v19)
      {
        v19 = *v14;
      }

      *v14 = v19;
      v24 = v47;
      v5 = v47;
      v5.i32[3] = v12.i32[3];
      v25 = (&v45 & 0xFFFFFFFFFFFFFFF3 | (4 * (v7 & 3)));
      v45 = v10;
      v26 = *v25;
      if (*v25 < v22)
      {
        v26 = v22;
      }

      *v25 = v26;
      v27 = v45;
      v6 = v45;
      v6.i32[3] = v10.i32[3];
      ++v7;
    }

    while (v7 != 3);
    ++v4;
  }

  while (v4 != 5);
  v28 = 0;
  v29 = 0uLL;
  do
  {
    v41 = v24;
    v30 = (&v38 & 0xFFFFFFFFFFFFFFF3 | (4 * (v28 & 3)));
    v31 = *(&v41 & 0xFFFFFFFFFFFFFFF3 | (4 * (v28 & 3)));
    v40 = v27;
    if (*(&v40 & 0xFFFFFFFFFFFFFFF3 | (4 * (v28 & 3))) < v31)
    {
      v31 = *(&v40 & 0xFFFFFFFFFFFFFFF3 | (4 * (v28 & 3)));
    }

    v39 = v20;
    v32 = *(&v39 & 0xFFFFFFFFFFFFFFF3 | (4 * (v28 & 3)));
    v38 = v23;
    if (v32 < *v30)
    {
      v32 = *v30;
    }

    v42 = v29;
    *(&v42 & 0xFFFFFFFFFFFFFFF3 | (4 * (v28 & 3))) = v31 - v32;
    v29 = v42;
    ++v28;
  }

  while (v28 != 3);
  v33 = vmaxnm_f32(*&v42, 0);
  result = 0.0;
  v35 = fmaxf(*(&v42 + 2), 0.0) * vmul_lane_f32(v33, v33, 1).f32[0];
  if (v35 >= 0.00000001)
  {
    v36 = vsubq_f32(v6, v3);
    v37 = vsubq_f32(v5, v2);
    return v35 / (vaddv_f32(vmul_f32(vzip1_s32(*&vextq_s8(v36, v36, 8uLL), *&vextq_s8(v37, v37, 8uLL)), vmul_f32(vzip1_s32(*v36.i8, *v37.i8), vzip2_s32(*v36.i8, *v37.i8)))) - v35);
  }

  return result;
}

void select<OUBox3d>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  std::vector<OUBox3d>::reserve(a3, (a2[1] - *a2) >> 3);
  v7 = *a2;
  v6 = a2[1];
  memset(v19, 0, sizeof(v19));
  std::vector<OUBox3d>::__init_with_size[abi:ne200100]<OUBox3d*,OUBox3d*>(v19, *a1, a1[1], 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 5));
  for (; v7 != v6; ++v7)
  {
    OUBox3d::OUBox3d(&v20, (v19[0] + 224 * *v7));
    v8 = a3[1];
    if (v8 >= a3[2])
    {
      v18 = std::vector<OUBox3d>::__emplace_back_slow_path<OUBox3d>(a3, &v20);
    }

    else
    {
      v9 = *&v20.var1;
      v10 = *&v20.var3;
      v11 = *&v20.var5.var2;
      *(v8 + 32) = *&v20.var5.var0;
      *(v8 + 48) = v11;
      *v8 = v9;
      *(v8 + 16) = v10;
      v12 = *&v20.var6.var1;
      v13 = *&v20.var7;
      v14 = v22;
      *(v8 + 96) = v21;
      *(v8 + 112) = v14;
      *(v8 + 64) = v12;
      *(v8 + 80) = v13;
      v15 = v23;
      v23 = 0;
      *(v8 + 128) = v15;
      *(v8 + 136) = v24;
      v16 = v25;
      v25 = 0u;
      *(v8 + 176) = 0;
      *(v8 + 144) = v16;
      *(v8 + 160) = 0u;
      *(v8 + 160) = v26;
      *(v8 + 176) = v27;
      v26 = 0u;
      v27 = 0;
      *(v8 + 184) = __p[0];
      *(v8 + 192) = *&__p[1];
      memset(__p, 0, sizeof(__p));
      v17 = v29;
      v29 = 0;
      *(v8 + 208) = v17;
      *(v8 + 216) = v30;
      v18 = v8 + 224;
    }

    a3[1] = v18;

    if (__p[0])
    {
      operator delete(__p[0]);
    }

    if (v26)
    {
      *(&v26 + 1) = v26;
      operator delete(v26);
    }
  }

  v20.var1 = v19;
  std::vector<OUBox3d>::__destroy_vector::operator()[abi:ne200100](&v20);
}

void sub_25D1F3AD8(_Unwind_Exception *a1, char a2, uint64_t a3, uint64_t a4, OUBox3d *a5)
{
  *(v6 - 72) = v5;
  std::vector<OUBox3d>::__destroy_vector::operator()[abi:ne200100]((v6 - 72));
  _Unwind_Resume(a1);
}

uint64_t ou3dod::ParseNetOutputSSD(float a1, uint64_t a2, unsigned int a3, void *a4, float32x4_t *a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  v96 = 0u;
  v97 = 0u;
  v98 = 1065353216;
  v93 = 0;
  v94 = 0;
  v95 = 0;
  v9 = ou3dod::kOfflineSsdTypesLUT;
  for (i = qword_28155A880; v9 != i; ++v9)
  {
    *&v81[0] = *v9;
    v11 = std::map<NSString * {__strong},float,CompareNSString,std::allocator<std::pair<NSString * const {__strong},float>>>::at(&ou3dod::kOfflineSSD3dConfThresholdMap, v81);
    std::vector<float>::push_back[abi:ne200100](&v93, v11);
  }

  std::vector<OUBox3d>::__base_destruct_at_end[abi:ne200100](a8, *a8);
  if (a3 >= 1)
  {
    v12 = 0;
    v13 = 4 * a3;
    v14.i64[0] = 0;
    v15 = a3;
    v16 = (a6 + 196 * a3);
    v17 = (a6 + 20 * a3);
    v18 = a6 + v13;
    v14.i64[1] = LODWORD(a1);
    v69 = v14;
    v19 = 12.0;
    v20 = (a6 + 116 * a3);
    do
    {
      std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::clear(&v96);
      v21 = *(v18 + 4 * v12);
      if (v21 >= -2.1972)
      {
        v22 = expf(-v21);
        v23.i32[0] = *(a6 + 8 * a3 + 4 * v12);
        v23.i32[1] = *(a6 + 12 * a3 + 4 * v12);
        v23.i32[2] = *(a6 + 16 * a3 + 4 * v12);
        v75 = v23;
        v72 = *a5;
        v73 = *(*a4 + 16 * v12);
        std::vector<float>::vector[abi:ne200100](&v91, 5uLL);
        v80 = v17;
        v25 = 0;
        v26 = 1.0 / (v22 + 1.0);
        v27 = vaddq_f32(vaddq_f32(v75, v73), v72);
        v28 = v91;
        v76 = v16;
        v29 = v16;
        do
        {
          v28[v25] = *v29;
          v29 = (v29 + v13);
          ++v25;
        }

        while (v25 != 5);
        v30 = v92;
        if (v28 != v92)
        {
          v74 = v27;
          v31 = 0;
          v32 = v92 - v28;
          v33 = *v28;
          if (v32 <= 1)
          {
            v32 = 1;
          }

          do
          {
            if (v28[v31] > v33)
            {
              v33 = v28[v31];
            }

            ++v31;
          }

          while (v32 != v31);
          v34 = 0.0;
          v35 = v28;
          do
          {
            v36 = *v35++;
            v34 = v34 + expf(v36 - v33);
          }

          while (v35 != v30);
          v27 = v74;
          if (v26 / v34 >= 0.100000001)
          {
            v37 = 0;
            v38 = 0;
            LODWORD(v90[0]) = 0;
            do
            {
              v39 = (expf(v28[v38] - v33) * v26) / v34;
              if (v39 > v93[v38])
              {
                *&v81[0] = v90;
                *(std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v96, v90) + 5) = v39;
                v37 = v90[0];
                v28 = v91;
                v30 = v92;
              }

              LODWORD(v90[0]) = ++v37;
              v38 = v37;
            }

            while (v37 < (v30 - v28));
            v19 = 12.0;
            v27 = v74;
          }
        }

        v40 = 0;
        v41 = 0;
        v42 = *(a6 + 20 * a3 + 4 * v12);
        v43 = v80;
        do
        {
          if (*v43 > v42)
          {
            v42 = *v43;
            v41 = v40;
          }

          ++v40;
          v43 = (v43 + v13);
        }

        while (v40 != 12);
        v44 = 0;
        v45 = 0;
        v46 = *(a6 + 4 * (v12 + (v41 + 17) * a3)) * 3.14159265 / v19;
        v47 = v41;
        v48 = *(a6 + 116 * a3 + 4 * v12);
        v49 = v20;
        do
        {
          if (*v49 > v48)
          {
            v48 = *v49;
            v45 = v44;
          }

          ++v44;
          v49 = (v49 + v13);
        }

        while (v44 != 5);
        v50 = *(ou3dod::kOfflineSSDAnchorSizeList + 16 * v45);
        v24.i32[0] = *(a6 + 4 * (v12 + (3 * v45 + 34) * a3));
        v24.i32[1] = *(a6 + 4 * (v12 + (3 * v45 + 35) * a3));
        *v24.f32 = vmul_f32(*v24.f32, *v50.f32);
        v24.i32[2] = vmuls_lane_f32(*(a6 + 4 * (v12 + (3 * v45 + 36) * a3)), v50, 2);
        v51 = v46;
        memset(v90, 0, sizeof(v90));
        centroidSizeAngleToBox3d(v90, vaddq_f32(v69, v27), vaddq_f32(v50, v24), v51 + (v47 * 0.5236));
        for (j = v97; j; j = *j)
        {
          v53 = *(j + 4);
          v54 = ou3dod::kOfflineSsdTypesLUT;
          v55 = j[5];
          v56 = [MEMORY[0x277CCAD78] UUID];
          OUBox3d::OUBox3d(v81, v90, (v54 + 8 * v53), v56, &v91, @"offline", v55);
          v57 = a8[1];
          if (v57 >= a8[2])
          {
            v67 = std::vector<OUBox3d>::__emplace_back_slow_path<OUBox3d>(a8, v81);
          }

          else
          {
            v58 = v81[0];
            v59 = v81[1];
            v60 = v81[3];
            *(v57 + 32) = v81[2];
            *(v57 + 48) = v60;
            *v57 = v58;
            *(v57 + 16) = v59;
            v61 = v81[4];
            v62 = v81[5];
            v63 = v81[7];
            *(v57 + 96) = v81[6];
            *(v57 + 112) = v63;
            *(v57 + 64) = v61;
            *(v57 + 80) = v62;
            v64 = v82;
            v82 = 0;
            *(v57 + 128) = v64;
            *(v57 + 136) = v83;
            v65 = v84;
            v84 = 0u;
            *(v57 + 176) = 0;
            *(v57 + 144) = v65;
            *(v57 + 160) = 0u;
            *(v57 + 160) = *v85;
            *(v57 + 176) = v86;
            *v85 = 0u;
            v86 = 0;
            *(v57 + 184) = __p[0];
            *(v57 + 192) = *&__p[1];
            memset(__p, 0, sizeof(__p));
            v66 = v88;
            v88 = 0;
            *(v57 + 208) = v66;
            *(v57 + 216) = v89;
            v67 = v57 + 224;
            a8[1] = v57 + 224;
          }

          a8[1] = v67;

          if (__p[0])
          {
            operator delete(__p[0]);
          }

          if (v85[0])
          {
            v85[1] = v85[0];
            operator delete(v85[0]);
          }
        }

        if (v91)
        {
          v92 = v91;
          operator delete(v91);
        }

        v18 = a6 + 4 * a3;
        v15 = a3;
        v16 = v76;
        v17 = v80;
      }

      ++v12;
      ++v16;
      ++v17;
      ++v20;
    }

    while (v12 != v15);
  }

  if (v93)
  {
    v94 = v93;
    operator delete(v93);
  }

  return std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(&v96);
}

void sub_25D1F4104(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, OUBox3d *a25)
{
  v27 = *(v25 - 232);
  if (v27)
  {
    *(v25 - 224) = v27;
    operator delete(v27);
  }

  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v25 - 208);
  _Unwind_Resume(a1);
}

uint64_t std::map<NSString * {__strong},float,CompareNSString,std::allocator<std::pair<NSString * const {__strong},float>>>::at(uint64_t a1, void **a2)
{
  v2 = *std::__tree<std::__value_type<NSString * {__strong},float>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},float>,CompareNSString,true>,std::allocator<std::__value_type<NSString * {__strong},float>>>::__find_equal<NSString * {__strong}>(a1, &v4, a2);
  if (!v2)
  {
    std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
  }

  return v2 + 40;
}

void ou3dod::PostprocessAF(float32x4_t *a1, uint64_t a2, __CFString *a3, float32_t a4)
{
  v6 = -1227133513 * ((a3->info - a3->isa) >> 5);
  v37 = 0;
  v38 = 0;
  v39 = 0;
  std::vector<unsigned long>::reserve(&v37, v6);
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = v6 & 0x7FFFFFFF;
    v9 = 136;
    do
    {
      v10 = (a3->isa + v9);
      v11 = *v10;
      if (v11 >= *std::map<NSString * {__strong},float,CompareNSString,std::allocator<std::pair<NSString * const {__strong},float>>>::at(a2, v10 - 1))
      {
        v12 = v38;
        if (v38 >= v39)
        {
          v14 = v37;
          v15 = v38 - v37;
          v16 = (v38 - v37) >> 3;
          v17 = v16 + 1;
          if ((v16 + 1) >> 61)
          {
            std::vector<float>::__throw_length_error[abi:ne200100]();
          }

          v18 = v39 - v37;
          if ((v39 - v37) >> 2 > v17)
          {
            v17 = v18 >> 2;
          }

          if (v18 >= 0x7FFFFFFFFFFFFFF8)
          {
            v19 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v19 = v17;
          }

          if (v19)
          {
            _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIDv2_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(&v37, v19);
          }

          *(8 * v16) = v7;
          v13 = 8 * v16 + 8;
          memcpy(0, v14, v15);
          v20 = v37;
          v37 = 0;
          v38 = v13;
          v39 = 0;
          if (v20)
          {
            operator delete(v20);
          }
        }

        else
        {
          *v38 = v7;
          v13 = (v12 + 8);
        }

        v38 = v13;
      }

      ++v7;
      v9 += 224;
    }

    while (v8 != v7);
  }

  v21 = v38 - v37;
  if (((v38 - v37) >> 3) >= 1)
  {
    v22 = 0;
    v23 = 0;
    do
    {
      OUBox3d::operator=(a3->isa + v22, a3->isa + 14 * v37[v23++]);
      v22 += 224;
    }

    while (((v21 >> 3) & 0x7FFFFFFF) != v23);
  }

  std::vector<OUBox3d>::resize(a3, (v21 >> 3));
  isa = a3->isa;
  info = a3->info;
  if (a3->isa != info)
  {
    do
    {
      swapCornerGT2QA(isa, v36);
      v26 = v36[0];
      v27 = v36[1];
      v28 = v36[3];
      *(isa + 2) = v36[2];
      *(isa + 3) = v28;
      *isa = v26;
      *(isa + 1) = v27;
      v29 = v36[4];
      v30 = v36[5];
      v31 = v36[7];
      *(isa + 6) = v36[6];
      *(isa + 7) = v31;
      *(isa + 4) = v29;
      *(isa + 5) = v30;
      isa = (isa + 224);
    }

    while (isa != info);
    isa = a3->isa;
    info = a3->info;
  }

  if (isa != info)
  {
    v32 = *a1;
    v32.f32[2] = a4;
    do
    {
      for (i = 0; i != 128; i += 16)
      {
        *(isa + i) = vaddq_f32(v32, *(isa + i));
      }

      isa = (isa + 224);
    }

    while (isa != info);
  }

  if (v37)
  {
    v38 = v37;
    operator delete(v37);
  }
}

void sub_25D1F4428(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 128);
  if (v3)
  {
    *(v1 - 120) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<unsigned long>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIDv2_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(result, a2);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void ou3dod::PostprocessSSD(uint64_t *a1)
{
  nmsSameCls(a1, box3dIouLoose, v18, 0.25);
  select<OUBox3d>(a1, v18, &v10);
  std::vector<OUBox3d>::__vdeallocate(a1);
  *a1 = v10;
  a1[2] = v11;
  *&v11 = 0;
  v10 = 0uLL;
  v19 = &v10;
  std::vector<OUBox3d>::__destroy_vector::operator()[abi:ne200100](&v19);
  v3 = *a1;
  v2 = a1[1];
  while (v3 != v2)
  {
    swapCornerGT2QA(v3, &v10);
    v4 = v10;
    v5 = v11;
    v6 = v13;
    *(v3 + 32) = v12;
    *(v3 + 48) = v6;
    *v3 = v4;
    *(v3 + 16) = v5;
    v7 = v14;
    v8 = v15;
    v9 = v17;
    *(v3 + 96) = v16;
    *(v3 + 112) = v9;
    *(v3 + 64) = v7;
    *(v3 + 80) = v8;
    v3 += 224;
  }

  if (v18[0])
  {
    v18[1] = v18[0];
    operator delete(v18[0]);
  }
}

void sub_25D1F45CC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 48);
  if (v3)
  {
    *(v1 - 40) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPKS1_S7_EEvT_T0_m(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE11__vallocateB8ne200100Em(result, a4);
  }

  return result;
}

void sub_25D1F4644(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE11__vallocateB8ne200100Em(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIDv3_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(a1, a2);
  }

  std::vector<float>::__throw_length_error[abi:ne200100]();
}

void _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIDv3_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<float>::__append(std::vector<int> *this, std::vector<int>::size_type __n)
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
      std::vector<float>::__throw_length_error[abi:ne200100]();
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

uint64_t std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25D1F486C(_Unwind_Exception *exception_object)
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

void sub_25D1F48E8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<float> &,std::__wrap_iter<float *>>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v4 = (a4 - 2) >> 1;
    v5 = (result + 4 * v4);
    v7 = *(a2 - 4);
    v6 = (a2 - 4);
    v8 = v7;
    v9 = *v5;
    if (*v5 > v7)
    {
      do
      {
        *v6 = v9;
        v6 = v5;
        if (!v4)
        {
          break;
        }

        v4 = (v4 - 1) >> 1;
        v5 = (result + 4 * v4);
        v9 = *v5;
      }

      while (*v5 > v8);
      *v6 = v8;
    }
  }

  return result;
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::less<float> &,std::__wrap_iter<float *>>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v4 = (a4 - 2) >> 1;
    v5 = (result + 4 * v4);
    v7 = *(a2 - 4);
    v6 = (a2 - 4);
    v8 = v7;
    v9 = *v5;
    if (*v5 < v7)
    {
      do
      {
        *v6 = v9;
        v6 = v5;
        if (!v4)
        {
          break;
        }

        v4 = (v4 - 1) >> 1;
        v5 = (result + 4 * v4);
        v9 = *v5;
      }

      while (*v5 < v8);
      *v6 = v8;
    }
  }

  return result;
}

void *std::vector<half>::vector[abi:ne200100](void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<half>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<half>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_25D1F4B1C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<half>::__vallocate[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<half>>(a1, a2);
  }

  std::vector<float>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<half>>(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
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

void sub_25D1F4CAC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<OUBox3d>::__emplace_back_slow_path<box3d,NSString * const {__strong}&,float const&,NSUUID * {__strong},std::vector<float> const&,NSString * {__strong}&>(uint64_t *a1, __int128 *a2, id *a3, float *a4, void **a5, uint64_t *a6, void **a7)
{
  v7 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 5);
  v8 = v7 + 1;
  if ((v7 + 1) > 0x124924924924924)
  {
    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 5) > v8)
  {
    v8 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 5);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 5)) >= 0x92492492492492)
  {
    v11 = 0x124924924924924;
  }

  else
  {
    v11 = v8;
  }

  v21 = a1;
  if (v11)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<OUBox3d>>(a1, v11);
  }

  v18 = 0;
  v19 = 224 * v7;
  v20 = (224 * v7);
  OUBox3d::OUBox3d(224 * v7, a2, a3, *a5, a6, *a7, *a4);
  *&v20 = 224 * v7 + 224;
  v12 = a1[1];
  v13 = 224 * v7 + *a1 - v12;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<OUBox3d>,OUBox3d*>(a1, *a1, v12, v13);
  v14 = *a1;
  *a1 = v13;
  v15 = a1[2];
  v17 = v20;
  *(a1 + 1) = v20;
  *&v20 = v14;
  *(&v20 + 1) = v15;
  v18 = v14;
  v19 = v14;
  std::__split_buffer<OUBox3d>::~__split_buffer(&v18);
  return v17;
}

void sub_25D1F4E34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<OUBox3d>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

__n128 std::allocator_traits<std::allocator<OUBox3d>>::construct[abi:ne200100]<OUBox3d,OUBox3d,void,0>(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = a3[3];
  *(a2 + 32) = a3[2];
  *(a2 + 48) = v5;
  *a2 = v3;
  *(a2 + 16) = v4;
  v6 = a3[4];
  v7 = a3[5];
  v8 = a3[7];
  *(a2 + 96) = a3[6];
  *(a2 + 112) = v8;
  *(a2 + 64) = v6;
  *(a2 + 80) = v7;
  v9 = *(a3 + 16);
  *(a3 + 16) = 0;
  *(a2 + 128) = v9;
  *(a2 + 136) = *(a3 + 34);
  v10 = a3[9];
  a3[9] = 0u;
  *(a2 + 144) = v10;
  *(a2 + 160) = 0;
  *(a2 + 168) = 0u;
  *(a2 + 160) = a3[10];
  v11 = *(a3 + 23);
  *(a2 + 176) = *(a3 + 22);
  *(a3 + 22) = 0;
  a3[10] = 0u;
  *(a2 + 184) = v11;
  result = a3[12];
  *(a2 + 192) = result;
  *(a3 + 184) = 0u;
  v13 = *(a3 + 26);
  *(a3 + 25) = 0;
  *(a3 + 26) = 0;
  *(a2 + 208) = v13;
  *(a2 + 216) = *(a3 + 108);
  return result;
}

uint64_t std::vector<OUBox3d>::__insert_with_size[abi:ne200100]<std::__wrap_iter<OUBox3d const*>,std::__wrap_iter<OUBox3d const*>>(uint64_t *a1, uint64_t a2, __int128 *a3, OUBox3d *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if (0x6DB6DB6DB6DB6DB7 * ((v9 - v10) >> 5) >= a5)
    {
      v16 = v10 - a2;
      if (0x6DB6DB6DB6DB6DB7 * ((v10 - a2) >> 5) >= a5)
      {
        v19 = 14 * a5;
        std::vector<OUBox3d>::__move_range(a1, a2, a1[1], a2 + 224 * a5);
        v20 = &v7[v19];
        v21 = v5;
        do
        {
          OUBox3d::operator=(v21, v7);
          v7 += 14;
          v21 += 224;
        }

        while (v7 != v20);
      }

      else
      {
        v17 = (a3 + v16);
        a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<OUBox3d>,OUBox3d const*,OUBox3d const*,OUBox3d*>(a1, (a3 + v16), a4, a1[1]);
        if (v16 >= 1)
        {
          std::vector<OUBox3d>::__move_range(a1, v5, v10, v5 + 224 * a5);
          v18 = v5;
          do
          {
            OUBox3d::operator=(v18, v7);
            v7 += 14;
            v18 += 224;
          }

          while (v7 != v17);
        }
      }
    }

    else
    {
      v11 = *a1;
      v12 = a5 + 0x6DB6DB6DB6DB6DB7 * ((v10 - *a1) >> 5);
      if (v12 > 0x124924924924924)
      {
        std::vector<float>::__throw_length_error[abi:ne200100]();
      }

      v13 = a2 - v11;
      v14 = 0x6DB6DB6DB6DB6DB7 * ((v9 - v11) >> 5);
      if (2 * v14 > v12)
      {
        v12 = 2 * v14;
      }

      if (v14 >= 0x92492492492492)
      {
        v15 = 0x124924924924924;
      }

      else
      {
        v15 = v12;
      }

      v29 = a1;
      if (v15)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<OUBox3d>>(a1, v15);
      }

      v22 = (32 * (v13 >> 5));
      v26[0] = 0;
      v26[1] = v22;
      v27 = v22;
      v28 = 0;
      v23 = 224 * a5;
      v24 = (v22 + 224 * a5);
      do
      {
        OUBox3d::OUBox3d(v22, v7);
        v22 = (v22 + 224);
        v7 += 14;
        v23 -= 224;
      }

      while (v23);
      v27 = v24;
      v5 = std::vector<OUBox3d>::__swap_out_circular_buffer(a1, v26, v5);
      std::__split_buffer<OUBox3d>::~__split_buffer(v26);
    }
  }

  return v5;
}

uint64_t std::vector<OUBox3d>::__move_range(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = a2 + v6 - a4;
  v8 = v6;
  if (v7 < a3)
  {
    v10 = (a2 + v6 - a4);
    v8 = *(a1 + 8);
    do
    {
      std::allocator_traits<std::allocator<OUBox3d>>::construct[abi:ne200100]<OUBox3d,OUBox3d,void,0>(a1, v8, v10);
      v10 += 14;
      v8 += 224;
    }

    while (v10 < a3);
  }

  *(a1 + 8) = v8;
  return std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<OUBox3d *,OUBox3d *,OUBox3d *>(&v12, a2, v7, v6);
}

uint64_t std::vector<OUBox3d>::__swap_out_circular_buffer(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = a2[1];
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<OUBox3d>,OUBox3d*>(a1, a3, a1[1], a2[2]);
  v7 = *a1;
  v8 = a2[1];
  a2[2] += a1[1] - a3;
  a1[1] = a3;
  v9 = v8 + v7 - a3;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<OUBox3d>,OUBox3d*>(a1, v7, a3, v9);
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

OUBox3d *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<OUBox3d>,OUBox3d const*,OUBox3d const*,OUBox3d*>(uint64_t a1, OUBox3d *a2, OUBox3d *a3, OUBox3d *this)
{
  v4 = this;
  v10 = this;
  v11 = this;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      OUBox3d::OUBox3d(v4, v6);
      v6 = (v6 + 224);
      v4 = (v11 + 224);
      v11 = (v11 + 224);
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<OUBox3d>,OUBox3d*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<OUBox3d *,OUBox3d *,OUBox3d *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v7 = 0;
    do
    {
      v8 = a3 + v7;
      v9 = a4 + v7;
      v10 = *(a3 + v7 - 224);
      v11 = *(a3 + v7 - 208);
      v12 = *(a3 + v7 - 176);
      *(v9 - 192) = *(a3 + v7 - 192);
      *(v9 - 176) = v12;
      *(v9 - 224) = v10;
      *(v9 - 208) = v11;
      v13 = *(a3 + v7 - 160);
      v14 = *(a3 + v7 - 144);
      v15 = *(a3 + v7 - 112);
      *(v9 - 128) = *(a3 + v7 - 128);
      *(v9 - 112) = v15;
      *(v9 - 160) = v13;
      *(v9 - 144) = v14;
      v16 = *(a3 + v7 - 96);
      *(a3 + v7 - 96) = 0;
      v17 = *(a4 + v7 - 96);
      *(v9 - 96) = v16;

      *(v9 - 88) = *(a3 + v7 - 88);
      v18 = *(a3 + v7 - 80);
      *(v8 - 80) = 0;
      v19 = *(a4 + v7 - 80);
      *(v9 - 80) = v18;

      v20 = *(a3 + v7 - 72);
      *(v8 - 72) = 0;
      v21 = *(a4 + v7 - 72);
      *(v9 - 72) = v20;

      std::vector<float>::__move_assign(a4 + v7 - 64, (a3 + v7 - 64));
      std::vector<BOOL>::__move_assign(a4 + v7 - 40, a3 + v7 - 40);
      v22 = *(a3 + v7 - 16);
      *(v8 - 16) = 0;
      v23 = *(a4 + v7 - 16);
      *(v9 - 16) = v22;

      *(v9 - 8) = *(a3 + v7 - 8);
      v7 -= 224;
    }

    while (a3 + v7 != a2);
  }

  return a3;
}

uint64_t *std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(void *a1, int *a2)
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

uint64_t std::vector<OUBox3d>::__emplace_back_slow_path<OUBox3d>(uint64_t *a1, __int128 *a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 5);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x124924924924924)
  {
    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 5) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 5);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 5)) >= 0x92492492492492)
  {
    v6 = 0x124924924924924;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<OUBox3d>>(a1, v6);
  }

  v13 = 0;
  v14 = 224 * v2;
  std::allocator_traits<std::allocator<OUBox3d>>::construct[abi:ne200100]<OUBox3d,OUBox3d,void,0>(a1, 224 * v2, a2);
  v15 = (224 * v2 + 224);
  v7 = a1[1];
  v8 = 224 * v2 + *a1 - v7;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<OUBox3d>,OUBox3d*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<OUBox3d>::~__split_buffer(&v13);
  return v12;
}

void sub_25D1F5784(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<OUBox3d>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t OUBox3d::OUBox3d(uint64_t a1, __int128 *a2, id *a3, void *a4, uint64_t *a5, void *a6, float a7)
{
  v13 = a4;
  v14 = a6;
  v15 = a2[3];
  v17 = *a2;
  v16 = a2[1];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v15;
  *a1 = v17;
  *(a1 + 16) = v16;
  v18 = a2[7];
  v20 = a2[4];
  v19 = a2[5];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v18;
  *(a1 + 64) = v20;
  *(a1 + 80) = v19;
  *(a1 + 128) = *a3;
  *(a1 + 136) = a7;
  *(a1 + 144) = [v13 copy];
  v21 = v14;
  *(a1 + 160) = 0;
  *(a1 + 152) = v21;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a1 + 160, *a5, a5[1], (a5[1] - *a5) >> 2);
  *(a1 + 200) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 216) = -1;

  return a1;
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

void *std::map<NSString * {__strong},float,CompareNSString,std::allocator<std::pair<NSString * const {__strong},float>>>::map[abi:ne200100](void *a1, void **a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 16 * a3;
    do
    {
      std::__tree<std::__value_type<NSString * {__strong},float>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},float>,CompareNSString,true>,std::allocator<std::__value_type<NSString * {__strong},float>>>::__emplace_hint_unique_key_args<NSString * {__strong},std::pair<NSString * const {__strong},float> const&>(a1, v4, a2);
      a2 += 2;
      v6 -= 16;
    }

    while (v6);
  }

  return a1;
}

uint64_t std::__tree<std::__value_type<NSString * {__strong},float>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},float>,CompareNSString,true>,std::allocator<std::__value_type<NSString * {__strong},float>>>::__emplace_hint_unique_key_args<NSString * {__strong},std::pair<NSString * const {__strong},float> const&>(void *a1, uint64_t a2, void **a3)
{
  v3 = *std::__tree<std::__value_type<NSString * {__strong},float>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},float>,CompareNSString,true>,std::allocator<std::__value_type<NSString * {__strong},float>>>::__find_equal<NSString * {__strong}>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t std::__tree<std::__value_type<NSString * {__strong},float>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},float>,CompareNSString,true>,std::allocator<std::__value_type<NSString * {__strong},float>>>::__find_equal<NSString * {__strong}>(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void **a5)
{
  v9 = a1 + 1;
  if (a1 + 1 != a2 && !CompareNSString::operator()(a1, *a5, *(a2 + 32)))
  {
    if (!CompareNSString::operator()(a1, *(a2 + 32), *a5))
    {
      *a3 = a2;
      *a4 = a2;
      return a4;
    }

    a4 = (a2 + 8);
    v13 = *(a2 + 8);
    if (v13)
    {
      v14 = *(a2 + 8);
      do
      {
        v15 = v14;
        v14 = *v14;
      }

      while (v14);
    }

    else
    {
      v18 = a2;
      do
      {
        v15 = v18[2];
        v17 = *v15 == v18;
        v18 = v15;
      }

      while (!v17);
    }

    if (v15 != v9)
    {
      if (!CompareNSString::operator()(a1, *a5, v15[4]))
      {
        goto LABEL_28;
      }

      v13 = *a4;
    }

    if (v13)
    {
      *a3 = v15;
      return v15;
    }

    else
    {
      *a3 = a2;
    }

    return a4;
  }

  if (*a1 == a2)
  {
    v12 = a2;
LABEL_16:
    if (*a2)
    {
      *a3 = v12;
      return v12 + 8;
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  v11 = *a2;
  if (*a2)
  {
    do
    {
      v12 = v11;
      v11 = *(v11 + 8);
    }

    while (v11);
  }

  else
  {
    v16 = a2;
    do
    {
      v12 = *(v16 + 16);
      v17 = *v12 == v16;
      v16 = v12;
    }

    while (v17);
  }

  if (CompareNSString::operator()(a1, *(v12 + 32), *a5))
  {
    goto LABEL_16;
  }

LABEL_28:

  return std::__tree<std::__value_type<NSString * {__strong},float>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},float>,CompareNSString,true>,std::allocator<std::__value_type<NSString * {__strong},float>>>::__find_equal<NSString * {__strong}>(a1, a3, a5);
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<NSString * {__strong},float>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<NSString * {__strong},float>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::__tree<std::__value_type<NSString * {__strong},float>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},float>,CompareNSString,true>,std::allocator<std::__value_type<NSString * {__strong},float>>>::__find_equal<NSString * {__strong}>(uint64_t a1, uint64_t *a2, void **a3)
{
  v5 = a1 + 8;
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v8 = v4;
        if (!CompareNSString::operator()(a1, *a3, *(v4 + 32)))
        {
          break;
        }

        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_9;
        }
      }

      if (!CompareNSString::operator()(a1, *(v8 + 32), *a3))
      {
        break;
      }

      v5 = v8 + 8;
      v4 = *(v8 + 8);
    }

    while (v4);
  }

  else
  {
    v8 = a1 + 8;
  }

LABEL_9:
  *a2 = v8;
  return v5;
}

BOOL CompareNSString::operator()(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if (v5)
  {
    if (v4)
    {
      v6 = [v4 compare:v5] == -1;
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void std::__tree<std::__value_type<NSString * {__strong},float>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},float>,CompareNSString,true>,std::allocator<std::__value_type<NSString * {__strong},float>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<NSString * {__strong},float>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},float>,CompareNSString,true>,std::allocator<std::__value_type<NSString * {__strong},float>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<NSString * {__strong},float>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},float>,CompareNSString,true>,std::allocator<std::__value_type<NSString * {__strong},float>>>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

void sub_25D1F5DF4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,ou3dod::ParseNetOutputAF(OU3DSSDConfig const&,int,int,NSString *,std::vector<NSString * {__strong}> const&,std::span<half,18446744073709551615ul>,std::span<half,18446744073709551615ul>,std::span<half,18446744073709551615ul>,std::vector<OUBox3d> &)::$_0 &,std::__wrap_iter<ou3dod::ParseNetOutputAF(OU3DSSDConfig const&,int,int,NSString *,std::vector<NSString * {__strong}> const&,std::span<half,18446744073709551615ul>,std::span<half,18446744073709551615ul>,std::span<half,18446744073709551615ul>,std::vector<OUBox3d> &)::ScoreInfo *>>(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - 2;
  if (a3 >= 2)
  {
    v4 = v3 >> 1;
    v5 = (result + 8 * (v3 >> 1));
    v6 = (a2 - 8);
    v7 = *(a2 - 8);
    if (*v5 > v7)
    {
      v8 = *(a2 - 4);
      do
      {
        v9 = v6;
        v6 = v5;
        *v9 = *v5;
        if (!v4)
        {
          break;
        }

        v4 = (v4 - 1) >> 1;
        v5 = (result + 8 * v4);
      }

      while (*v5 > v7);
      *v6 = v7;
      *(v6 + 1) = v8;
    }
  }

  return result;
}

uint64_t std::vector<OUBox3d>::__init_with_size[abi:ne200100]<OUBox3d*,OUBox3d*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<OUBox3d>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25D1F5ED8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<OUBox3d>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<OUBox3d>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x124924924924925)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<OUBox3d>>(a1, a2);
  }

  std::vector<float>::__throw_length_error[abi:ne200100]();
}

OUBox3d *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<OUBox3d>,OUBox3d*,OUBox3d*,OUBox3d*>(uint64_t a1, OUBox3d *a2, OUBox3d *a3, OUBox3d *this)
{
  v4 = this;
  v10 = this;
  v11 = this;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      OUBox3d::OUBox3d(v4, v6);
      v6 = (v6 + 224);
      v4 = (v11 + 224);
      v11 = (v11 + 224);
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<OUBox3d>,OUBox3d*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

void *std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::clear(void *result)
{
  if (result[3])
  {
    v1 = result;
    result = result[2];
    if (result)
    {
      do
      {
        v2 = *result;
        operator delete(result);
        result = v2;
      }

      while (v2);
    }

    v1[2] = 0;
    v3 = v1[1];
    if (v3)
    {
      for (i = 0; i != v3; ++i)
      {
        *(*v1 + 8 * i) = 0;
      }
    }

    v1[3] = 0;
  }

  return result;
}

void std::vector<OUBox3d>::resize(__CFString *a1, unint64_t a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1->info - a1->isa) >> 5);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<OUBox3d>::__append(a1, v4);
  }

  else if (!v3)
  {
    std::vector<OUBox3d>::__base_destruct_at_end[abi:ne200100](a1, a1->isa + 224 * a2);
  }
}

__CFString *std::vector<OUBox3d>::__append(__CFString *a1, unint64_t a2)
{
  info = a1->info;
  data = a1->data;
  if (0x6DB6DB6DB6DB6DB7 * (&data[-info] >> 5) >= a2)
  {

    return std::vector<OUBox3d>::__construct_at_end(a1, a2);
  }

  else
  {
    v6 = 0x6DB6DB6DB6DB6DB7 * ((info - a1->isa) >> 5);
    if (v6 + a2 > 0x124924924924924)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v7 = 0x6DB6DB6DB6DB6DB7 * ((data - a1->isa) >> 5);
    v8 = 2 * v7;
    if (2 * v7 <= v6 + a2)
    {
      v8 = v6 + a2;
    }

    if (v7 >= 0x92492492492492)
    {
      v9 = 0x124924924924924;
    }

    else
    {
      v9 = v8;
    }

    v21 = a1;
    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<OUBox3d>>(a1, v9);
    }

    v11 = 224 * v6;
    v18 = 0;
    v19 = v11;
    *(&v20 + 1) = 0;
    v12 = v11 + 224 * a2;
    v13 = v11;
    do
    {
      *(v13 + 192) = 0u;
      *(v13 + 208) = 0u;
      *(v13 + 160) = 0u;
      *(v13 + 176) = 0u;
      *(v13 + 128) = 0u;
      *(v13 + 144) = 0u;
      *(v13 + 96) = 0u;
      *(v13 + 112) = 0u;
      *(v13 + 64) = 0u;
      *(v13 + 80) = 0u;
      *(v13 + 32) = 0u;
      *(v13 + 48) = 0u;
      *v13 = 0u;
      *(v13 + 16) = 0u;
      *(v13 + 152) = @"unknown";
      *(v13 + 160) = 0u;
      *(v13 + 176) = 0u;
      *(v13 + 192) = 0u;
      *(v13 + 208) = 0;
      *(v13 + 216) = -1;
      v13 += 224;
    }

    while (v13 != v12);
    *&v20 = v12;
    v14 = a1->info;
    v15 = a1->isa + v11 - v14;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<OUBox3d>,OUBox3d*>(a1, a1->isa, v14, v15);
    isa = a1->isa;
    a1->isa = v15;
    v17 = a1->data;
    *&a1->info = v20;
    *&v20 = isa;
    *(&v20 + 1) = v17;
    v18 = isa;
    v19 = isa;
    return std::__split_buffer<OUBox3d>::~__split_buffer(&v18);
  }
}

void sub_25D1F625C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<OUBox3d>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

__CFString *std::vector<OUBox3d>::__construct_at_end(__CFString *result, uint64_t a2)
{
  v2 = result;
  info = result->info;
  if (a2)
  {
    v4 = info + 224 * a2;
    do
    {
      *(info + 192) = 0u;
      *(info + 208) = 0u;
      *(info + 160) = 0u;
      *(info + 176) = 0u;
      *(info + 128) = 0u;
      *(info + 144) = 0u;
      *(info + 96) = 0u;
      *(info + 112) = 0u;
      *(info + 64) = 0u;
      *(info + 80) = 0u;
      *(info + 32) = 0u;
      *(info + 48) = 0u;
      *info = 0u;
      *(info + 16) = 0u;
      result = @"unknown";
      *(info + 152) = result;
      *(info + 160) = 0u;
      *(info + 176) = 0u;
      *(info + 192) = 0u;
      *(info + 208) = 0;
      *(info + 216) = -1;
      info += 224;
    }

    while (info != v4);
    info = v4;
  }

  v2->info = info;
  return result;
}

void _GLOBAL__sub_I_OU3DODProcessUtils_mm()
{
  v22 = *MEMORY[0x277D85DE8];
  v0 = objc_autoreleasePoolPush();
  v1 = @"Cabinet";
  *&v16 = v1;
  *(&v16 + 1) = @"Refrigerator";
  *&v17 = @"Shelf";
  *(&v17 + 1) = @"Stove";
  v2 = @"Bed";
  *&v18 = v2;
  *(&v18 + 1) = @"Sink";
  *&v19 = @"Washer";
  *(&v19 + 1) = @"Toilet";
  v3 = @"Bathtub";
  *&v20 = v3;
  *(&v20 + 1) = @"Oven";
  v21[0] = @"Dishwasher";
  v21[1] = @"Fireplace";
  v21[2] = @"Stool";
  v21[3] = @"Chair";
  v4 = @"Table";
  v21[4] = v4;
  v21[5] = @"Screen";
  v5 = @"Sofa";
  v21[6] = v5;
  v21[7] = @"Stairs";
  v21[8] = @"Window";
  v21[9] = @"Door";
  v21[10] = @"BuildInCabinet";
  qword_28155A918 = 0;
  unk_28155A920 = 0;
  ou3dod::kObjectTypesLUT = 0;
  std::vector<NSString * {__strong}>::__init_with_size[abi:ne200100]<NSString * const {__strong}*,NSString * const {__strong}>(&ou3dod::kObjectTypesLUT, &v16, &v22, 0x15uLL);
  for (i = 160; i != -8; i -= 8)
  {
  }

  __cxa_atexit(std::vector<NSString * {__strong}>::~vector[abi:ne200100], &ou3dod::kObjectTypesLUT, &dword_25D1DB000);
  v7 = v1;
  *&v16 = v7;
  qword_28155A758 = 0;
  unk_28155A760 = 0;
  ou3dod::kAFClassIdToObjectTypeOffline = 0;
  std::vector<NSString * {__strong}>::__init_with_size[abi:ne200100]<NSString * const {__strong}*,NSString * const {__strong}>(&ou3dod::kAFClassIdToObjectTypeOffline, &v16, &v16 + 8, 1uLL);

  __cxa_atexit(std::vector<NSString * {__strong}>::~vector[abi:ne200100], &ou3dod::kAFClassIdToObjectTypeOffline, &dword_25D1DB000);
  v8 = v7;
  *&v16 = v8;
  v9 = v2;
  *(&v16 + 1) = v9;
  v10 = v3;
  *&v17 = v10;
  v11 = v4;
  *(&v17 + 1) = v11;
  v12 = v5;
  *&v18 = v12;
  qword_28155A880 = 0;
  unk_28155A888 = 0;
  ou3dod::kOfflineSsdTypesLUT = 0;
  std::vector<NSString * {__strong}>::__init_with_size[abi:ne200100]<NSString * const {__strong}*,NSString * const {__strong}>(&ou3dod::kOfflineSsdTypesLUT, &v16, &v18 + 8, 5uLL);
  for (j = 32; j != -8; j -= 8)
  {
  }

  __cxa_atexit(std::vector<NSString * {__strong}>::~vector[abi:ne200100], &ou3dod::kOfflineSsdTypesLUT, &dword_25D1DB000);
  v18 = xmmword_25D277E90;
  v19 = unk_25D277EA0;
  v20 = xmmword_25D277EB0;
  v16 = xmmword_25D277E70;
  v17 = unk_25D277E80;
  qword_28155A7F0 = 0;
  unk_28155A7F8 = 0;
  ou3dod::kOfflineSSDAnchorSizeList = 0;
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPKS1_S7_EEvT_T0_m(&ou3dod::kOfflineSSDAnchorSizeList, &v16, v21, 5uLL);
  __cxa_atexit(_ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEED1B8ne200100Ev, &ou3dod::kOfflineSSDAnchorSizeList, &dword_25D1DB000);
  *&v16 = v8;
  DWORD2(v16) = 1055286886;
  *&v17 = v9;
  DWORD2(v17) = 1039516303;
  *&v18 = v10;
  DWORD2(v18) = 1045220557;
  *&v19 = v11;
  DWORD2(v19) = 1050253722;
  *&v20 = v12;
  DWORD2(v20) = 1047904911;
  std::map<NSString * {__strong},float,CompareNSString,std::allocator<std::pair<NSString * const {__strong},float>>>::map[abi:ne200100](ou3dod::kOfflineSSD3dConfThresholdMap, &v16, 5);
  for (k = 64; k != -16; k -= 16)
  {
  }

  __cxa_atexit(std::map<NSString * {__strong},float,CompareNSString,std::allocator<std::pair<NSString * const {__strong},float>>>::~map[abi:ne200100], ou3dod::kOfflineSSD3dConfThresholdMap, &dword_25D1DB000);
  objc_autoreleasePoolPop(v0);
  v15 = *MEMORY[0x277D85DE8];
}

void sub_25D1F67C4(_Unwind_Exception *a1)
{
  for (i = 64; i != -16; i -= 16)
  {
  }

  _Unwind_Resume(a1);
}

double ComputePointCloudOrigin(float32x4_t **a1)
{
  v1 = *a1;
  v2 = a1[1] - *a1;
  if ((v2 >> 4))
  {
    v3 = *v1;
    if ((v2 >> 4) >= 1)
    {
      v4 = (v2 >> 4) & 0x7FFFFFFF;
      do
      {
        v5 = *v1++;
        v6 = v5;
        v3.i32[3] = 0;
        v6.i32[3] = 0;
        v3 = vminnmq_f32(v3, v6);
        --v4;
      }

      while (v4);
    }
  }

  else
  {
    v3.i64[0] = 0;
  }

  return *v3.i64;
}

uint64_t ou3dor::OU3DOROfflineEspressoV2::GetOutputInternal<float>@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v13 = *MEMORY[0x277D85DE8];
  if (*(result + 232) == 1 && (*(result + 235) & 1) != 0)
  {
    v3 = *(*(result + 160) + 40);
    Width = CVPixelBufferGetWidth(v3);
    v5 = CVPixelBufferGetHeight(v3) * Width;
    v6 = _OULoggingGetOSLogForCategoryObjectUnderstanding();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      LODWORD(v11) = 134217984;
      *(&v11 + 4) = v5;
      _os_log_impl(&dword_25D1DB000, v6, OS_LOG_TYPE_INFO, "[3DOR] output image number of elements %lu", &v11, 0xCu);
    }

    CVPixelBufferLockBaseAddress(v3, 1uLL);
    BaseAddress = CVPixelBufferGetBaseAddress(v3);
    std::vector<float>::vector[abi:ne200100](&v11, v5);
    if (v5)
    {
      v8 = v11;
      do
      {
        v9 = *BaseAddress++;
        *v8++ = v9;
        --v5;
      }

      while (v5);
    }

    result = CVPixelBufferUnlockBaseAddress(v3, 1uLL);
    *a2 = v11;
    *(a2 + 16) = v12;
    *(a2 + 24) = 1;
  }

  else
  {
    *a2 = 0;
    *(a2 + 24) = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25D1F69D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ou3dor::OU3DOROfflineEspressoV2::GetOutputInternal<half>@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v19 = *MEMORY[0x277D85DE8];
  if (*(result + 232) == 1 && (*(result + 235) & 1) != 0)
  {
    v3 = *(*(result + 160) + 40);
    Width = CVPixelBufferGetWidth(v3);
    v5 = CVPixelBufferGetHeight(v3) * Width;
    v6 = _OULoggingGetOSLogForCategoryObjectUnderstanding();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      LODWORD(v17) = 134217984;
      *(&v17 + 4) = v5;
      _os_log_impl(&dword_25D1DB000, v6, OS_LOG_TYPE_INFO, "[3DOR] output image number of elements %lu", &v17, 0xCu);
    }

    CVPixelBufferLockBaseAddress(v3, 1uLL);
    BaseAddress = CVPixelBufferGetBaseAddress(v3);
    std::vector<float>::vector[abi:ne200100](&v17, v5);
    if (v5)
    {
      v8 = v17;
      do
      {
        v9 = *BaseAddress++;
        _H0 = v9;
        __asm { FCVT            S0, H0 }

        *v8++ = _S0;
        --v5;
      }

      while (v5);
    }

    result = CVPixelBufferUnlockBaseAddress(v3, 1uLL);
    *a2 = v17;
    *(a2 + 16) = v18;
    *(a2 + 24) = 1;
  }

  else
  {
    *a2 = 0;
    *(a2 + 24) = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25D1F6B44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ou3dor::OU3DOROfflineEspressoV2::SetEmbedding<float>(uint64_t a1, int **a2)
{
  v16 = 8;
  strcpy(__p, "rgb_feat");
  v4 = std::__hash_table<std::__hash_value_type<std::string,__CVBuffer *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,__CVBuffer *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,__CVBuffer *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,__CVBuffer *>>>::find<std::string>((a1 + 104), __p);
  v5 = v4;
  if ((v16 & 0x80000000) == 0)
  {
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_11:
    v14 = _OULoggingGetOSLogForCategoryObjectUnderstanding();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      ou3dor::OU3DOROfflineEspressoV2::SetEmbedding<float>();
    }

    goto LABEL_15;
  }

  operator delete(__p[0]);
  if (!v5)
  {
    goto LABEL_11;
  }

LABEL_3:
  v16 = 8;
  strcpy(__p, "rgb_feat");
  v17 = __p;
  v6 = std::__hash_table<std::__hash_value_type<std::string,__CVBuffer *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,__CVBuffer *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,__CVBuffer *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,__CVBuffer *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((a1 + 104), __p)[5];
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  CVPixelBufferLockBaseAddress(v6, 0);
  BaseAddress = CVPixelBufferGetBaseAddress(v6);
  v8 = a2[1] - *a2;
  Width = CVPixelBufferGetWidth(v6);
  if (CVPixelBufferGetHeight(v6) * Width != v8 >> 2)
  {
    v14 = _OULoggingGetOSLogForCategoryObjectUnderstanding();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      ou3dor::OU3DOROfflineEspressoV2::SetEmbedding<float>();
    }

LABEL_15:

    return 0;
  }

  if ((v8 >> 2) >= 1)
  {
    v10 = *a2;
    v11 = (v8 >> 2) & 0x7FFFFFFF;
    do
    {
      v12 = *v10++;
      *BaseAddress++ = v12;
      --v11;
    }

    while (v11);
  }

  CVPixelBufferUnlockBaseAddress(v6, 0);
  return 1;
}

void sub_25D1F6CFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ou3dor::OU3DOROfflineEspressoV2::SetEmbedding<half>(uint64_t a1, int **a2)
{
  v21 = 8;
  strcpy(__p, "rgb_feat");
  v4 = std::__hash_table<std::__hash_value_type<std::string,__CVBuffer *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,__CVBuffer *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,__CVBuffer *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,__CVBuffer *>>>::find<std::string>((a1 + 104), __p);
  v5 = v4;
  if ((v21 & 0x80000000) == 0)
  {
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_11:
    v19 = _OULoggingGetOSLogForCategoryObjectUnderstanding();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      ou3dor::OU3DOROfflineEspressoV2::SetEmbedding<float>();
    }

    goto LABEL_15;
  }

  operator delete(__p[0]);
  if (!v5)
  {
    goto LABEL_11;
  }

LABEL_3:
  v21 = 8;
  strcpy(__p, "rgb_feat");
  v22 = __p;
  v6 = std::__hash_table<std::__hash_value_type<std::string,__CVBuffer *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,__CVBuffer *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,__CVBuffer *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,__CVBuffer *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((a1 + 104), __p)[5];
  if (v21 < 0)
  {
    operator delete(__p[0]);
  }

  CVPixelBufferLockBaseAddress(v6, 0);
  BaseAddress = CVPixelBufferGetBaseAddress(v6);
  v8 = a2[1] - *a2;
  Width = CVPixelBufferGetWidth(v6);
  if (CVPixelBufferGetHeight(v6) * Width != v8 >> 2)
  {
    v19 = _OULoggingGetOSLogForCategoryObjectUnderstanding();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      ou3dor::OU3DOROfflineEspressoV2::SetEmbedding<float>();
    }

LABEL_15:

    return 0;
  }

  if ((v8 >> 2) >= 1)
  {
    v10 = *a2;
    v11 = (v8 >> 2) & 0x7FFFFFFF;
    do
    {
      v12 = *v10++;
      _S0 = v12;
      __asm { FCVT            H0, S0 }

      *BaseAddress++ = _S0;
      --v11;
    }

    while (v11);
  }

  CVPixelBufferUnlockBaseAddress(v6, 0);
  return 1;
}

void sub_25D1F6EB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

size_t ou3dor::OU3DOROfflineEspressoV2::SetVoxelFeatures<float>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v51 = 8;
  strcpy(__p, "rgb_feat");
  v8 = std::__hash_table<std::__hash_value_type<std::string,__CVBuffer *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,__CVBuffer *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,__CVBuffer *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,__CVBuffer *>>>::find<std::string>((a1 + 104), __p);
  v9 = v8;
  if (v51 < 0)
  {
    operator delete(__p[0]);
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else if (v8)
  {
LABEL_3:
    *v10.i64 = ComputePointCloudOrigin(a2);
    v49 = v10;
    v51 = 6;
    strcpy(__p, "points");
    v52 = __p;
    v11 = std::__hash_table<std::__hash_value_type<std::string,__CVBuffer *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,__CVBuffer *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,__CVBuffer *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,__CVBuffer *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((a1 + 104), __p)[5];
    if (v51 < 0)
    {
      operator delete(__p[0]);
    }

    result = CVPixelBufferGetBytesPerRow(v11);
    if (result)
    {
      utils::Resample(((*(a2 + 8) - *a2) >> 4), 0xDBBA0uLL, __p);
      CVPixelBufferLockBaseAddress(v11, 0);
      BaseAddress = CVPixelBufferGetBaseAddress(v11);
      bzero(BaseAddress, 0x440000uLL);
      bzero(*(a1 + 240), *(a1 + 248) - *(a1 + 240));
      v15 = __p[0];
      v16 = __p[1];
      if (__p[0] != __p[1])
      {
        v17 = *a2;
        v18 = *a4;
        v19 = vextq_s8(v49, v49, 4uLL).u64[0];
        v20 = vdup_n_s32(0x3D4CCCCDu);
        v21 = *a3;
        do
        {
          v22 = *v15;
          v23 = v17[*v15];
          v24 = (*v23.i32 - *v49.i32) / 0.05;
          v25 = vcvtms_s32_f32(v24);
          v26 = vcvt_s32_f32(vrndm_f32(vdiv_f32(vsub_f32(vext_s8(*v23.i8, *&vextq_s8(v23, v23, 8uLL), 4uLL), v19), v20)));
          if (v25 <= 31 && v26.i32[0] <= 31 && v26.i32[1] <= 31 && (v25 & 0x80000000) == 0)
          {
            v29 = vcltz_s32(v26);
            if ((v29.i8[0] & 1) == 0 && (v29.i8[4] & 1) == 0)
            {
              v33 = v26.u32[1] + (v26.i32[0] * 32.0);
              v30 = (v33 + ((floorf(v24) * 32.0) * 32.0));
              ++*(*(a1 + 240) + 4 * v30);
              v31 = &BaseAddress[4 * v30];
              *v31 = *v31 + 1.0;
              v32 = *(v18 + 8 * v22);
              LOWORD(v33) = vaddv_s16(v32);
              if (v33 != 0.0)
              {
                v34 = LOWORD(v33);
                v35 = v32.u16[0] / v34;
                v36 = v32.u16[1] / v34;
                v37 = v32.u16[2] / v34;
                v38 = (1.0 - (v37 + (v35 + v36))) / 30.0;
                for (i = 0x8000; i != 1114112; i += 0x8000)
                {
                  v31[i] = v38 + v31[i];
                }

                v14.i32[0] = *(v21 + 4 * v22);
                v40 = vmovl_u8(v14);
                if (v40.u16[0] <= 0x20u)
                {
                  v41 = (v40.i8[0] + 1) << 15;
                }

                else
                {
                  v41 = 0x8000;
                }

                *&BaseAddress[4 * v41 + 4 * v30] = (v35 - v38) + *&BaseAddress[4 * v41 + 4 * v30];
                v42.i32[0] = v40.u16[1];
                v42.i32[1] = v40.u16[2];
                v14 = vdup_n_s32(v30);
                v43 = vadd_s32(vbsl_s8(vcgt_u32(vand_s8(v42, 0xFF000000FFLL), 0x2000000020), 0x800000008000, vshl_n_s32(vand_s8(vadd_s32(v42, 0x100000001), 0xFF000000FFLL), 0xFuLL)), v14);
                *&BaseAddress[4 * v43.i32[0]] = (v36 - v38) + *&BaseAddress[4 * v43.i32[0]];
                *&BaseAddress[4 * v43.i32[1]] = (v37 - v38) + *&BaseAddress[4 * v43.i32[1]];
              }
            }
          }

          ++v15;
        }

        while (v15 != v16);
      }

      v44 = 0;
      v45 = *(a1 + 240);
      do
      {
        v46 = *(v45 + 4 * v44);
        if (v46 >= 2)
        {
          for (j = 0; j != 4456448; j += 0x20000)
          {
            *&BaseAddress[j] = *&BaseAddress[j] / v46;
          }
        }

        ++v44;
        BaseAddress += 4;
      }

      while (v44 != 0x8000);
      CVPixelBufferUnlockBaseAddress(v11, 0);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      return 1;
    }

    return result;
  }

  v48 = _OULoggingGetOSLogForCategoryObjectUnderstanding();
  if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
  {
    ou3dor::OU3DOROfflineEspressoV2::SetEmbedding<float>();
  }

  return 0;
}

void sub_25D1F72B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

size_t ou3dor::OU3DOROfflineEspressoV2::SetVoxelFeatures<half>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v70 = 8;
  strcpy(__p, "rgb_feat");
  v8 = std::__hash_table<std::__hash_value_type<std::string,__CVBuffer *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,__CVBuffer *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,__CVBuffer *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,__CVBuffer *>>>::find<std::string>((a1 + 104), __p);
  v9 = v8;
  if (v70 < 0)
  {
    operator delete(__p[0]);
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else if (v8)
  {
LABEL_3:
    *v10.i64 = ComputePointCloudOrigin(a2);
    v68 = v10;
    v70 = 6;
    strcpy(__p, "points");
    v71 = __p;
    v11 = std::__hash_table<std::__hash_value_type<std::string,__CVBuffer *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,__CVBuffer *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,__CVBuffer *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,__CVBuffer *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((a1 + 104), __p)[5];
    if (v70 < 0)
    {
      operator delete(__p[0]);
    }

    result = CVPixelBufferGetBytesPerRow(v11);
    if (result)
    {
      utils::Resample(((*(a2 + 8) - *a2) >> 4), 0xDBBA0uLL, __p);
      CVPixelBufferLockBaseAddress(v11, 0);
      BaseAddress = CVPixelBufferGetBaseAddress(v11);
      bzero(BaseAddress, 0x220000uLL);
      bzero(*(a1 + 240), *(a1 + 248) - *(a1 + 240));
      v15 = __p[0];
      v16 = __p[1];
      if (__p[0] != __p[1])
      {
        v17 = *a2;
        v18 = *a4;
        v19 = vextq_s8(v68, v68, 4uLL).u64[0];
        v20 = vdup_n_s32(0x3D4CCCCDu);
        v21 = *a3;
        do
        {
          v22 = *v15;
          v23 = v17[*v15];
          v24 = (*v23.i32 - *v68.i32) / 0.05;
          v25 = vcvtms_s32_f32(v24);
          v26 = vcvt_s32_f32(vrndm_f32(vdiv_f32(vsub_f32(vext_s8(*v23.i8, *&vextq_s8(v23, v23, 8uLL), 4uLL), v19), v20)));
          if (v25 <= 31 && v26.i32[0] <= 31 && v26.i32[1] <= 31 && (v25 & 0x80000000) == 0)
          {
            v29 = vcltz_s32(v26);
            if ((v29.i8[0] & 1) == 0 && (v29.i8[4] & 1) == 0)
            {
              v33 = v26.u32[1] + (v26.i32[0] * 32.0);
              v30 = (v33 + ((floorf(v24) * 32.0) * 32.0));
              ++*(*(a1 + 240) + 4 * v30);
              v31 = &BaseAddress[2 * v30];
              *v31 = *v31 + COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0));
              v32 = *(v18 + 8 * v22);
              LOWORD(v33) = vaddv_s16(v32);
              if (v33 != 0.0)
              {
                v34 = LOWORD(v33);
                v35 = v32.u16[0] / v34;
                v36 = v32.u16[1] / v34;
                v37 = v32.u16[2] / v34;
                v38 = (1.0 - (v37 + (v35 + v36))) / 30.0;
                for (i = 0x8000; i != 1114112; i += 0x8000)
                {
                  _H23 = v31[i];
                  __asm { FCVT            S23, H23 }

                  _S23 = v38 + _S23;
                  __asm { FCVT            H23, S23 }

                  v31[i] = *&_S23;
                }

                v14.i32[0] = *(v21 + 4 * v22);
                v47 = vmovl_u8(v14);
                if (v47.u16[0] <= 0x20u)
                {
                  v48 = (v47.i8[0] + 1) << 15;
                }

                else
                {
                  v48 = 0x8000;
                }

                v49 = v48 + v30;
                _H24 = *&BaseAddress[2 * v49];
                __asm { FCVT            S24, H24 }

                _S22 = (v35 - v38) + _S24;
                __asm { FCVT            H22, S22 }

                *&BaseAddress[2 * v49] = LOWORD(_S22);
                v53.i32[0] = v47.u16[1];
                v53.i32[1] = v47.u16[2];
                v14 = vdup_n_s32(v30);
                _D22 = vadd_s32(vbsl_s8(vcgt_u32(vand_s8(v53, 0xFF000000FFLL), 0x2000000020), 0x800000008000, vshl_n_s32(vand_s8(vadd_s32(v53, 0x100000001), 0xFF000000FFLL), 0xFuLL)), v14);
                v55 = _D22.i32[0];
                _D22.i16[0] = *&BaseAddress[2 * _D22.i32[0]];
                __asm { FCVT            S22, H22 }

                _S21 = (v36 - v38) + *_D22.i32;
                __asm { FCVT            H21, S21 }

                *&BaseAddress[2 * v55] = LOWORD(_S21);
                LOWORD(_S21) = *&BaseAddress[2 * _D22.i32[1]];
                v57 = v37 - v38;
                __asm { FCVT            S20, H21 }

                _S19 = v57 + _S20;
                __asm { FCVT            H19, S19 }

                *&BaseAddress[2 * _D22.i32[1]] = LOWORD(_S19);
              }
            }
          }

          ++v15;
        }

        while (v15 != v16);
      }

      v60 = 0;
      v61 = *(a1 + 240);
      do
      {
        v62 = *(v61 + 4 * v60);
        if (v62 >= 2)
        {
          for (j = 0; j != 2228224; j += 0x10000)
          {
            _H1 = *&BaseAddress[j];
            __asm { FCVT            S1, H1 }

            _S1 = _S1 / v62;
            __asm { FCVT            H1, S1 }

            *&BaseAddress[j] = LOWORD(_S1);
          }
        }

        ++v60;
        BaseAddress += 2;
      }

      while (v60 != 0x8000);
      CVPixelBufferUnlockBaseAddress(v11, 0);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      return 1;
    }

    return result;
  }

  v67 = _OULoggingGetOSLogForCategoryObjectUnderstanding();
  if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
  {
    ou3dor::OU3DOROfflineEspressoV2::SetEmbedding<float>();
  }

  return 0;
}

void sub_25D1F76F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ou3dor::OU3DOROfflineEspressoV2::SetContextFeaturesAndPadding<float>(uint64_t a1, int a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  if (*a3 != v4)
  {
    v54 = a3[1];
    v55 = *a3;
    v8 = -1227133513 * ((v4 - v3) >> 5);
    memset(v66, 0, sizeof(v66));
    std::vector<std::vector<float>>::reserve(v66, v8);
    v9 = (*a3 + 224 * a2);
    v57 = v9[6];
    v59 = *v9;
    __p = 0;
    v64 = 0;
    v65 = 0;
    std::vector<unsigned long>::reserve(&__p, v8);
    if (v8 >= 1)
    {
      v10 = 0;
      v11 = 0;
      v12.i64[0] = 0x3F0000003F000000;
      v12.i64[1] = 0x3F0000003F000000;
      v13 = vmulq_f32(vaddq_f32(v59, v57), v12);
      v14 = v13.f32[2];
      v60 = v13;
      do
      {
        v15 = (*a3 + v10);
        v56 = v15[6];
        v58 = *v15;
        box3dToCentroidSizeAngle(v15, v61);
        v16 = v61[0];
        *v61[0] = vsub_f32(*v61[0], *v60.f32);
        v16[2] = v16[2] - v14;
        std::vector<std::vector<float>>::push_back[abi:ne200100](v66, v61);
        v17.i64[0] = 0xBF000000BF000000;
        v17.i64[1] = 0xBF000000BF000000;
        v18 = vaddq_f32(v60, vmulq_f32(vaddq_f32(v58, v56), v17));
        v19 = vmulq_f32(v18, v18);
        v20 = sqrtf(v19.f32[2] + vaddv_f32(*v19.f32));
        v21 = v64;
        if (v64 >= v65)
        {
          v23 = (v64 - __p) >> 3;
          v24 = v23 + 1;
          if ((v23 + 1) >> 61)
          {
            std::vector<float>::__throw_length_error[abi:ne200100]();
          }

          v25 = v65 - __p;
          if ((v65 - __p) >> 2 > v24)
          {
            v24 = v25 >> 2;
          }

          if (v25 >= 0x7FFFFFFFFFFFFFF8)
          {
            v26 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v26 = v24;
          }

          if (v26)
          {
            _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIDv2_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(&__p, v26);
          }

          v27 = 8 * v23;
          *v27 = v20;
          *(v27 + 4) = v11;
          v22 = (8 * v23 + 8);
          v28 = (8 * v23 - (v64 - __p));
          memcpy((v27 - (v64 - __p)), __p, v64 - __p);
          v29 = __p;
          __p = v28;
          v64 = v22;
          v65 = 0;
          if (v29)
          {
            operator delete(v29);
          }
        }

        else
        {
          *v64 = v20;
          *(v21 + 1) = v11;
          v22 = v21 + 2;
        }

        v64 = v22;
        if (v61[0])
        {
          v61[1] = v61[0];
          operator delete(v61[0]);
        }

        ++v11;
        v10 += 224;
      }

      while ((v8 & 0x7FFFFFFF) != v11);
    }

    v30 = 126 - 2 * __clz((v64 - __p) >> 3);
    if (v64 == __p)
    {
      v31 = 0;
    }

    else
    {
      v31 = v30;
    }

    _ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZN6ou3dor23OU3DOROfflineEspressoV228SetContextFeaturesAndPaddingIfEEbiRKNS_6vectorI7OUBox3dNS_9allocatorIS6_EEEEEUlRKT_RKT0_E_PZNS4_IfEEbiSB_E12DistanceInfoLb0EEEvT1_SM_SF_NS_15iterator_traitsISM_E15difference_typeEb(__p, v64, v61, v31, 1);
    v62 = 7;
    strcpy(v61, "context");
    v67 = v61;
    v32 = std::__hash_table<std::__hash_value_type<std::string,__CVBuffer *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,__CVBuffer *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,__CVBuffer *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,__CVBuffer *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((a1 + 104), v61)[5];
    if (v62 < 0)
    {
      operator delete(v61[0]);
    }

    CVPixelBufferLockBaseAddress(v32, 0);
    BaseAddress = CVPixelBufferGetBaseAddress(v32);
    BaseAddress[27] = 0u;
    BaseAddress[28] = 0u;
    BaseAddress[25] = 0u;
    BaseAddress[26] = 0u;
    BaseAddress[23] = 0u;
    BaseAddress[24] = 0u;
    BaseAddress[21] = 0u;
    BaseAddress[22] = 0u;
    BaseAddress[19] = 0u;
    BaseAddress[20] = 0u;
    BaseAddress[17] = 0u;
    BaseAddress[18] = 0u;
    BaseAddress[15] = 0u;
    BaseAddress[16] = 0u;
    BaseAddress[13] = 0u;
    BaseAddress[14] = 0u;
    BaseAddress[11] = 0u;
    BaseAddress[12] = 0u;
    BaseAddress[9] = 0u;
    BaseAddress[10] = 0u;
    BaseAddress[7] = 0u;
    BaseAddress[8] = 0u;
    BaseAddress[5] = 0u;
    BaseAddress[6] = 0u;
    BaseAddress[3] = 0u;
    BaseAddress[4] = 0u;
    BaseAddress[1] = 0u;
    BaseAddress[2] = 0u;
    *BaseAddress = 0u;
    if (v8 >= 1)
    {
      v34 = 0;
      if (v8 >= 4)
      {
        v35 = 4;
      }

      else
      {
        v35 = v8;
      }

      v36 = __p;
      v37 = v66[0];
      v38 = ou3dod::kObjectTypesLUT;
      v39 = (qword_28155A930 - ou3dod::kObjectTypesLUT) >> 3;
      v40 = *a3;
      do
      {
        v41 = &v36[8 * v34];
        v42 = *(v41 + 1);
        v43 = *(v37 + 24 * v42);
        *BaseAddress = *v43;
        *(BaseAddress + 1) = v43[1];
        *(BaseAddress + 2) = v43[2];
        *(BaseAddress + 3) = *v41;
        *(BaseAddress + 4) = v43[3];
        *(BaseAddress + 5) = v43[4];
        *(BaseAddress + 6) = v43[5];
        *(BaseAddress + 7) = v43[6];
        if (v39 < 1)
        {
LABEL_33:
          v48 = 7;
        }

        else
        {
          v44 = *(v40 + 224 * v42 + 128);
          v45 = 0x800000000;
          v46 = v38;
          v47 = v39 & 0x7FFFFFFF;
          while (*v46 != v44)
          {
            v45 += 0x100000000;
            ++v46;
            if (!--v47)
            {
              goto LABEL_33;
            }
          }

          v48 = v45 >> 32;
        }

        *(BaseAddress + v48) = 1065353216;
        ++v34;
        BaseAddress = (BaseAddress + 116);
      }

      while (v34 != v35);
    }

    CVPixelBufferUnlockBaseAddress(v32, 0);
    v62 = 12;
    strcpy(v61, "context_mask");
    v67 = v61;
    v49 = std::__hash_table<std::__hash_value_type<std::string,__CVBuffer *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,__CVBuffer *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,__CVBuffer *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,__CVBuffer *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((a1 + 104), v61)[5];
    if (v62 < 0)
    {
      operator delete(v61[0]);
    }

    CVPixelBufferLockBaseAddress(v49, 0);
    v50 = CVPixelBufferGetBaseAddress(v49);
    v51 = vdupq_n_s64(v8);
    v52.i64[0] = 0x7F0000007FLL;
    v52.i64[1] = 0x7F0000007FLL;
    *v50 = vbicq_s8(v52, vuzp1q_s32(vcgtq_s64(v51, xmmword_25D277E60), vcgtq_s64(v51, xmmword_25D277E50)));
    CVPixelBufferUnlockBaseAddress(v49, 0);
    if (__p)
    {
      v64 = __p;
      operator delete(__p);
    }

    __p = v66;
    std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&__p);
    v4 = v54;
    v3 = v55;
  }

  return v3 != v4;
}

void sub_25D1F7C20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char *__p, char *a26, uint64_t a27, char a28)
{
  if (__p)
  {
    a26 = __p;
    operator delete(__p);
  }

  __p = &a28;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void *std::vector<std::vector<float>>::reserve(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      v2 = result[1] - *result;
      v3 = result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<float>>>(result, a2);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

uint64_t ou3dor::OU3DOROfflineEspressoV2::ComputeObjectIdx(uint64_t a1, void *a2)
{
  if (((qword_28155A930 - ou3dod::kObjectTypesLUT) >> 3) < 1)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  while (*(ou3dod::kObjectTypesLUT + 8 * result) != *a2)
  {
    if ((((qword_28155A930 - ou3dod::kObjectTypesLUT) >> 3) & 0x7FFFFFFF) == ++result)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

BOOL ou3dor::OU3DOROfflineEspressoV2::SetContextFeaturesAndPadding<half>(uint64_t a1, int a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  if (*a3 != v4)
  {
    v54 = a3[1];
    v55 = *a3;
    v8 = -1227133513 * ((v4 - v3) >> 5);
    memset(v66, 0, sizeof(v66));
    std::vector<std::vector<float>>::reserve(v66, v8);
    v9 = (*a3 + 224 * a2);
    v57 = v9[6];
    v59 = *v9;
    __p = 0;
    v64 = 0;
    v65 = 0;
    std::vector<unsigned long>::reserve(&__p, v8);
    if (v8 >= 1)
    {
      v10 = 0;
      v11 = 0;
      v12.i64[0] = 0x3F0000003F000000;
      v12.i64[1] = 0x3F0000003F000000;
      v13 = vmulq_f32(vaddq_f32(v59, v57), v12);
      v14 = v13.f32[2];
      v60 = v13;
      do
      {
        v15 = (*a3 + v10);
        v56 = v15[6];
        v58 = *v15;
        box3dToCentroidSizeAngle(v15, v61);
        v16 = v61[0];
        *v61[0] = vsub_f32(*v61[0], *v60.f32);
        v16[2] = v16[2] - v14;
        std::vector<std::vector<float>>::push_back[abi:ne200100](v66, v61);
        v17.i64[0] = 0xBF000000BF000000;
        v17.i64[1] = 0xBF000000BF000000;
        v18 = vaddq_f32(v60, vmulq_f32(vaddq_f32(v58, v56), v17));
        v19 = vmulq_f32(v18, v18);
        v20 = sqrtf(v19.f32[2] + vaddv_f32(*v19.f32));
        v21 = v64;
        if (v64 >= v65)
        {
          v23 = (v64 - __p) >> 3;
          v24 = v23 + 1;
          if ((v23 + 1) >> 61)
          {
            std::vector<float>::__throw_length_error[abi:ne200100]();
          }

          v25 = v65 - __p;
          if ((v65 - __p) >> 2 > v24)
          {
            v24 = v25 >> 2;
          }

          if (v25 >= 0x7FFFFFFFFFFFFFF8)
          {
            v26 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v26 = v24;
          }

          if (v26)
          {
            _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIDv2_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(&__p, v26);
          }

          v27 = 8 * v23;
          *v27 = v20;
          *(v27 + 4) = v11;
          v22 = (8 * v23 + 8);
          v28 = (8 * v23 - (v64 - __p));
          memcpy((v27 - (v64 - __p)), __p, v64 - __p);
          v29 = __p;
          __p = v28;
          v64 = v22;
          v65 = 0;
          if (v29)
          {
            operator delete(v29);
          }
        }

        else
        {
          *v64 = v20;
          *(v21 + 1) = v11;
          v22 = v21 + 2;
        }

        v64 = v22;
        if (v61[0])
        {
          v61[1] = v61[0];
          operator delete(v61[0]);
        }

        ++v11;
        v10 += 224;
      }

      while ((v8 & 0x7FFFFFFF) != v11);
    }

    v30 = 126 - 2 * __clz((v64 - __p) >> 3);
    if (v64 == __p)
    {
      v31 = 0;
    }

    else
    {
      v31 = v30;
    }

    _ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZN6ou3dor23OU3DOROfflineEspressoV228SetContextFeaturesAndPaddingIfEEbiRKNS_6vectorI7OUBox3dNS_9allocatorIS6_EEEEEUlRKT_RKT0_E_PZNS4_IfEEbiSB_E12DistanceInfoLb0EEEvT1_SM_SF_NS_15iterator_traitsISM_E15difference_typeEb(__p, v64, v61, v31, 1);
    v62 = 7;
    strcpy(v61, "context");
    v67 = v61;
    v32 = std::__hash_table<std::__hash_value_type<std::string,__CVBuffer *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,__CVBuffer *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,__CVBuffer *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,__CVBuffer *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((a1 + 104), v61)[5];
    if (v62 < 0)
    {
      operator delete(v61[0]);
    }

    CVPixelBufferLockBaseAddress(v32, 0);
    BaseAddress = CVPixelBufferGetBaseAddress(v32);
    BaseAddress[28] = 0;
    *(BaseAddress + 12) = 0u;
    *(BaseAddress + 13) = 0u;
    *(BaseAddress + 10) = 0u;
    *(BaseAddress + 11) = 0u;
    *(BaseAddress + 8) = 0u;
    *(BaseAddress + 9) = 0u;
    *(BaseAddress + 6) = 0u;
    *(BaseAddress + 7) = 0u;
    *(BaseAddress + 4) = 0u;
    *(BaseAddress + 5) = 0u;
    *(BaseAddress + 2) = 0u;
    *(BaseAddress + 3) = 0u;
    *BaseAddress = 0u;
    *(BaseAddress + 1) = 0u;
    if (v8 >= 1)
    {
      v34 = 0;
      if (v8 >= 4)
      {
        v35 = 4;
      }

      else
      {
        v35 = v8;
      }

      v36 = __p;
      v37 = v66[0];
      v38 = ou3dod::kObjectTypesLUT;
      v39 = (qword_28155A930 - ou3dod::kObjectTypesLUT) >> 3;
      v40 = *a3;
      do
      {
        v41 = &v36[8 * v34];
        v42 = v41[1];
        v43 = *(v37 + 24 * v42);
        v44.i64[0] = v43[1].i64[0];
        v44.i32[2] = v43[1].i32[2];
        v44.i32[3] = *v41;
        *BaseAddress = vqtbl1q_s8(vcvt_hight_f16_f32(vcvt_f16_f32(*v43), v44), xmmword_25D277ED0);
        if (v39 < 1)
        {
LABEL_33:
          v49 = 7;
        }

        else
        {
          v45 = *(v40 + 224 * v42 + 128);
          v46 = 0x800000000;
          v47 = v38;
          v48 = v39 & 0x7FFFFFFF;
          while (*v47 != v45)
          {
            v46 += 0x100000000;
            ++v47;
            if (!--v48)
            {
              goto LABEL_33;
            }
          }

          v49 = v46 >> 32;
        }

        *(BaseAddress + v49) = COERCE_UNSIGNED_INT(1.0);
        ++v34;
        BaseAddress = (BaseAddress + 58);
      }

      while (v34 != v35);
    }

    CVPixelBufferUnlockBaseAddress(v32, 0);
    v62 = 12;
    strcpy(v61, "context_mask");
    v67 = v61;
    v50 = std::__hash_table<std::__hash_value_type<std::string,__CVBuffer *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,__CVBuffer *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,__CVBuffer *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,__CVBuffer *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((a1 + 104), v61)[5];
    if (v62 < 0)
    {
      operator delete(v61[0]);
    }

    CVPixelBufferLockBaseAddress(v50, 0);
    v51 = CVPixelBufferGetBaseAddress(v50);
    v52 = vdupq_n_s64(v8);
    *v51 = vbic_s8(0xFC00FC00FC00FC00, vmovn_s32(vuzp1q_s32(vcgtq_s64(v52, xmmword_25D277E60), vcgtq_s64(v52, xmmword_25D277E50))));
    CVPixelBufferUnlockBaseAddress(v50, 0);
    if (__p)
    {
      v64 = __p;
      operator delete(__p);
    }

    __p = v66;
    std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&__p);
    v4 = v54;
    v3 = v55;
  }

  return v3 != v4;
}

void sub_25D1F8278(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char *__p, char *a26, uint64_t a27, char a28)
{
  if (__p)
  {
    a26 = __p;
    operator delete(__p);
  }

  __p = &a28;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void ou3dor::OU3DOROfflineEspressoV2::~OU3DOROfflineEspressoV2(ou3dor::OU3DOROfflineEspressoV2 *this)
{
  *this = &unk_286EBBD00;
  v2 = *(this + 30);
  if (v2)
  {
    *(this + 31) = v2;
    operator delete(v2);
  }

  ou3dor::OU3DOREspressoV2Interface::~OU3DOREspressoV2Interface(this);
}

{
  ou3dor::OU3DOROfflineEspressoV2::~OU3DOROfflineEspressoV2(this);

  JUMPOUT(0x25F894DE0);
}

ou3dor::OU3DOROfflineEspressoV2 *ou3dor::OU3DOROfflineEspressoV2::OU3DOROfflineEspressoV2(ou3dor::OU3DOROfflineEspressoV2 *this)
{
  v2 = ou3dor::OU3DOREspressoV2Interface::OU3DOREspressoV2Interface(this, v4);
  *v2 = &unk_286EBBD00;
  LODWORD(v4[0]) = 0;
  std::vector<int>::vector[abi:ne200100](v2 + 30, 0x8000uLL);
  return this;
}

uint64_t ou3dor::OU3DOROfflineEspressoV2::GetOutput@<X0>(uint64_t this@<X0>, _BYTE *a2@<X8>)
{
  if (*(this + 232) == 1 && (*(this + 235) & 1) != 0)
  {
    if (CVPixelBufferGetPixelFormatType(*(*(this + 160) + 40)) == 1278226534)
    {

      ou3dor::OU3DOROfflineEspressoV2::GetOutputInternal<float>();
    }

    ou3dor::OU3DOROfflineEspressoV2::GetOutputInternal<half>();
  }

  *a2 = 0;
  a2[24] = 0;
  return this;
}

uint64_t ou3dor::OU3DOROfflineEspressoV2::SetInputs(uint64_t a1)
{
  if (*(a1 + 233))
  {
    if (CVPixelBufferGetPixelFormatType(*(*(a1 + 120) + 40)) == 1278226534)
    {
      ou3dor::OU3DOROfflineEspressoV2::SetEmbedding<float>();
    }

    ou3dor::OU3DOROfflineEspressoV2::SetEmbedding<half>();
  }

  v1 = _OULoggingGetOSLogForCategoryObjectUnderstanding();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    ou3dor::OU3DOROfflineEspressoV2::SetInputs();
  }

  return 0;
}

float *_ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZN6ou3dor23OU3DOROfflineEspressoV228SetContextFeaturesAndPaddingIfEEbiRKNS_6vectorI7OUBox3dNS_9allocatorIS6_EEEEEUlRKT_RKT0_E_PZNS4_IfEEbiSB_E12DistanceInfoLb0EEEvT1_SM_SF_NS_15iterator_traitsISM_E15difference_typeEb(float *result, float *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = v8;
LABEL_3:
  v10 = 1 - a4;
  while (1)
  {
    v8 = v9;
    v11 = v10;
    v12 = (a2 - v9) >> 3;
    if (v12 <= 2)
    {
      if (v12 < 2)
      {
        return result;
      }

      if (v12 == 2)
      {
        if (*(a2 - 2) >= *v9)
        {
          return result;
        }

        v49 = *v9;
LABEL_81:
        *v9 = *(a2 - 1);
        goto LABEL_82;
      }

      goto LABEL_11;
    }

    if (v12 == 3)
    {
      break;
    }

    if (v12 == 4)
    {
      v50 = *(v9 + 8);
      v51 = *v9;
      v52 = *(v9 + 16);
      if (v50 >= *v9)
      {
        if (v52 < v50)
        {
          v57 = *(v9 + 8);
          v56 = *(v9 + 16);
          *(v9 + 8) = v56;
          *(v9 + 16) = v57;
          v52 = *&v57;
          if (v51 > *&v56)
          {
            v58 = *v9;
            *v9 = v56;
            *(v9 + 8) = v58;
          }
        }
      }

      else
      {
        v53 = *v9;
        LODWORD(v54) = *v9;
        if (v52 < v50)
        {
          *v9 = *(v9 + 16);
          goto LABEL_110;
        }

        *v9 = *(v9 + 8);
        *(v9 + 8) = v53;
        if (v52 < v54)
        {
          *(v9 + 8) = *(v9 + 16);
LABEL_110:
          *(v9 + 16) = v53;
          v52 = v54;
        }
      }

      if (*(a2 - 2) < v52)
      {
        v66 = *(v9 + 16);
        *(v9 + 16) = *(a2 - 1);
        *(a2 - 1) = v66;
        if (*(v9 + 16) < *(v9 + 8))
        {
          v68 = *(v9 + 8);
          v67 = *(v9 + 16);
          *(v9 + 8) = v67;
          *(v9 + 16) = v68;
          if (*v9 > *&v67)
          {
            v69 = *v9;
            *v9 = v67;
            *(v9 + 8) = v69;
          }
        }
      }

      return result;
    }

    if (v12 == 5)
    {

      return _ZNSt3__17__sort5B8ne200100INS_17_ClassicAlgPolicyERZN6ou3dor23OU3DOROfflineEspressoV228SetContextFeaturesAndPaddingIfEEbiRKNS_6vectorI7OUBox3dNS_9allocatorIS6_EEEEEUlRKT_RKT0_E_PZNS4_IfEEbiSB_E12DistanceInfoLi0EEEvT1_SM_SM_SM_SM_SF_(v9, (v9 + 8), (v9 + 16), (v9 + 24), a2 - 1);
    }

LABEL_11:
    if (v12 <= 23)
    {
      if (a5)
      {

        return _ZNSt3__116__insertion_sortB8ne200100INS_17_ClassicAlgPolicyERZN6ou3dor23OU3DOROfflineEspressoV228SetContextFeaturesAndPaddingIfEEbiRKNS_6vectorI7OUBox3dNS_9allocatorIS6_EEEEEUlRKT_RKT0_E_PZNS4_IfEEbiSB_E12DistanceInfoEEvT1_SM_SF_(v9, a2);
      }

      else if (v9 != a2)
      {
        v59 = (v9 + 8);
        while (v59 != a2)
        {
          v60 = v59;
          v61 = v8[2];
          if (v61 < *v8)
          {
            v62 = *(v8 + 3);
            v63 = v60;
            do
            {
              v64 = v63;
              v65 = *(v63 - 1);
              v63 -= 2;
              *v64 = v65;
            }

            while (*(v64 - 4) > v61);
            *v63 = v61;
            *(v63 + 1) = v62;
          }

          v59 = v60 + 2;
          v8 = v60;
        }
      }

      return result;
    }

    if (v10 == 1)
    {
      if (v9 != a2)
      {

        return _ZNSt3__119__partial_sort_implB8ne200100INS_17_ClassicAlgPolicyERZN6ou3dor23OU3DOROfflineEspressoV228SetContextFeaturesAndPaddingIfEEbiRKNS_6vectorI7OUBox3dNS_9allocatorIS6_EEEEEUlRKT_RKT0_E_PZNS4_IfEEbiSB_E12DistanceInfoSL_EET1_SM_SM_T2_OSF_(v9, a2, a2, a3);
      }

      return result;
    }

    v13 = (v9 + 8 * (v12 >> 1));
    v14 = v13;
    v15 = *(a2 - 2);
    if (v12 >= 0x81)
    {
      v16 = *v13;
      if (*v13 >= *v9)
      {
        if (v15 < v16)
        {
          v20 = *v13;
          *v13 = *(a2 - 1);
          *(a2 - 1) = v20;
          if (*v13 < *v9)
          {
            v21 = *v9;
            *v9 = *v13;
            *v13 = v21;
          }
        }
      }

      else
      {
        v17 = *v9;
        if (v15 < v16)
        {
          *v9 = *(a2 - 1);
          goto LABEL_29;
        }

        *v9 = *v13;
        *v13 = v17;
        if (*(a2 - 2) < *&v17)
        {
          *v13 = *(a2 - 1);
LABEL_29:
          *(a2 - 1) = v17;
        }
      }

      v24 = v13 - 2;
      v25 = *(v13 - 2);
      v26 = *(a2 - 4);
      if (v25 >= *(v9 + 8))
      {
        if (v26 < v25)
        {
          v28 = *v24;
          *v24 = *(a2 - 2);
          *(a2 - 2) = v28;
          if (*v24 < *(v9 + 8))
          {
            v29 = *(v9 + 8);
            *(v9 + 8) = *v24;
            *v24 = v29;
          }
        }
      }

      else
      {
        v27 = *(v9 + 8);
        if (v26 < v25)
        {
          *(v9 + 8) = *(a2 - 2);
          goto LABEL_43;
        }

        *(v9 + 8) = *v24;
        *v24 = v27;
        if (*(a2 - 4) < *&v27)
        {
          *v24 = *(a2 - 2);
LABEL_43:
          *(a2 - 2) = v27;
        }
      }

      v31 = v13[2];
      v30 = (v13 + 2);
      v32 = v31;
      v33 = *(a2 - 6);
      if (v31 >= *(v9 + 16))
      {
        if (v33 < v32)
        {
          v35 = *v30;
          *v30 = *(a2 - 3);
          *(a2 - 3) = v35;
          if (*v30 < *(v9 + 16))
          {
            v36 = *(v9 + 16);
            *(v9 + 16) = *v30;
            *v30 = v36;
          }
        }
      }

      else
      {
        v34 = *(v9 + 16);
        if (v33 < v32)
        {
          *(v9 + 16) = *(a2 - 3);
          goto LABEL_52;
        }

        *(v9 + 16) = *v30;
        *v30 = v34;
        if (*(a2 - 6) < *&v34)
        {
          *v30 = *(a2 - 3);
LABEL_52:
          *(a2 - 3) = v34;
        }
      }

      v37 = *v14;
      v38 = *v24;
      v39 = *v30;
      if (*v14 >= *v24)
      {
        v40 = *v14;
        if (v39 < v37)
        {
          v41 = *v30;
          *v14 = *v30;
          *v30 = v40;
          if (v38 <= *&v41)
          {
            v40 = v41;
          }

          else
          {
            v40 = *v24;
            *v24 = v41;
            *v14 = v40;
          }
        }
      }

      else
      {
        v40 = *v24;
        if (v39 >= v37)
        {
          *v24 = *v14;
          *v14 = v40;
          if (v39 < *&v40)
          {
            v42 = *v30;
            *v14 = *v30;
            *v30 = v40;
            v40 = v42;
          }
        }

        else
        {
          *v24 = *v30;
          *v30 = v40;
          v40 = *v14;
        }
      }

      v43 = *v9;
      *v9 = v40;
      *v14 = v43;
      if (a5)
      {
        goto LABEL_64;
      }

      goto LABEL_63;
    }

    v18 = *v9;
    if (*v9 < *v13)
    {
      v19 = *v13;
      if (v15 < v18)
      {
        *v14 = *(a2 - 1);
        goto LABEL_38;
      }

      *v14 = *v9;
      *v9 = v19;
      if (*(a2 - 2) < *&v19)
      {
        *v9 = *(a2 - 1);
LABEL_38:
        *(a2 - 1) = v19;
      }

LABEL_39:
      if (a5)
      {
        goto LABEL_64;
      }

      goto LABEL_63;
    }

    if (v15 >= v18)
    {
      goto LABEL_39;
    }

    v22 = *v9;
    *v9 = *(a2 - 1);
    *(a2 - 1) = v22;
    if (*v9 >= *v14)
    {
      goto LABEL_39;
    }

    v23 = *v14;
    *v14 = *v9;
    *v9 = v23;
    if (a5)
    {
      goto LABEL_64;
    }

LABEL_63:
    if (*(v9 - 8) >= *v9)
    {
      result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,BOOL ou3dor::OU3DOROfflineEspressoV2::SetContextFeaturesAndPadding<float>(int,std::vector<OUBox3d> const&)::DistanceInfo *,BOOL ou3dor::OU3DOROfflineEspressoV2::SetContextFeaturesAndPadding<float>(int,std::vector<OUBox3d> const&)::{lambda(std::_ClassicAlgPolicy const&,BOOL ou3dor::OU3DOROfflineEspressoV2::SetContextFeaturesAndPadding<float>(int,std::vector<OUBox3d> const&)::DistanceInfo * const&)#1} &>(v9, a2);
      v9 = result;
      goto LABEL_69;
    }

LABEL_64:
    v44 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,BOOL ou3dor::OU3DOROfflineEspressoV2::SetContextFeaturesAndPadding<float>(int,std::vector<OUBox3d> const&)::DistanceInfo *,BOOL ou3dor::OU3DOROfflineEspressoV2::SetContextFeaturesAndPadding<float>(int,std::vector<OUBox3d> const&)::{lambda(std::_ClassicAlgPolicy const&,BOOL ou3dor::OU3DOROfflineEspressoV2::SetContextFeaturesAndPadding<float>(int,std::vector<OUBox3d> const&)::DistanceInfo * const&)#1} &>(v9, a2);
    if ((v45 & 1) == 0)
    {
      goto LABEL_67;
    }

    v46 = _ZNSt3__127__insertion_sort_incompleteB8ne200100INS_17_ClassicAlgPolicyERZN6ou3dor23OU3DOROfflineEspressoV228SetContextFeaturesAndPaddingIfEEbiRKNS_6vectorI7OUBox3dNS_9allocatorIS6_EEEEEUlRKT_RKT0_E_PZNS4_IfEEbiSB_E12DistanceInfoEEbT1_SM_SF_(v9, v44);
    v9 = (v44 + 2);
    result = _ZNSt3__127__insertion_sort_incompleteB8ne200100INS_17_ClassicAlgPolicyERZN6ou3dor23OU3DOROfflineEspressoV228SetContextFeaturesAndPaddingIfEEbiRKNS_6vectorI7OUBox3dNS_9allocatorIS6_EEEEEUlRKT_RKT0_E_PZNS4_IfEEbiSB_E12DistanceInfoEEbT1_SM_SF_((v44 + 2), a2);
    if (result)
    {
      a4 = -v11;
      a2 = v44;
      if (v46)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v46)
    {
LABEL_67:
      result = _ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZN6ou3dor23OU3DOROfflineEspressoV228SetContextFeaturesAndPaddingIfEEbiRKNS_6vectorI7OUBox3dNS_9allocatorIS6_EEEEEUlRKT_RKT0_E_PZNS4_IfEEbiSB_E12DistanceInfoLb0EEEvT1_SM_SF_NS_15iterator_traitsISM_E15difference_typeEb(v8, v44, a3, -v11, a5 & 1);
      v9 = (v44 + 2);
LABEL_69:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }
  }

  v47 = *(v9 + 8);
  v48 = *(a2 - 2);
  if (v47 < *v9)
  {
    v49 = *v9;
    if (v48 < v47)
    {
      goto LABEL_81;
    }

    *v9 = *(v9 + 8);
    *(v9 + 8) = v49;
    if (*(a2 - 2) >= *&v49)
    {
      return result;
    }

    *(v9 + 8) = *(a2 - 1);
LABEL_82:
    *(a2 - 1) = v49;
    return result;
  }

  if (v48 < v47)
  {
    v55 = *(v9 + 8);
    *(v9 + 8) = *(a2 - 1);
    *(a2 - 1) = v55;
    if (*(v9 + 8) < *v9)
    {
      *v9 = vextq_s8(*v9, *v9, 8uLL);
    }
  }

  return result;
}