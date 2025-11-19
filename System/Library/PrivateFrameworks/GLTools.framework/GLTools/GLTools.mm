void GPUTools::Playback::GL::ContextInfo::~ContextInfo(id *this)
{
  *this = &unk_285FA4860;

  std::stack<std::unique_ptr<GPUTools::VMBuffer>>::~stack((this + 1));
}

{
  *this = &unk_285FA4860;

  std::stack<std::unique_ptr<GPUTools::VMBuffer>>::~stack((this + 1));
}

{
  *this = &unk_285FA4860;

  std::stack<std::unique_ptr<GPUTools::VMBuffer>>::~stack((this + 1));

  JUMPOUT(0x24C2553C0);
}

void sub_24C0EB2F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a11)
  {
    [DYGLFunctionPlayer updateCurrentStateWithNewContext:a11 contextID:? sharegroupID:?];
  }

  _Unwind_Resume(exception_object);
}

void sub_24C0EBF44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  std::unique_ptr<GPUTools::VMBuffer>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_24C0EBF8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<GPUTools::VMBuffer>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

GPUTools::VMBuffer **std::unique_ptr<GPUTools::VMBuffer>::~unique_ptr[abi:ne200100](GPUTools::VMBuffer **a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    GPUTools::VMBuffer::~VMBuffer(v2);
    MEMORY[0x24C2553C0]();
    return v3;
  }

  return v1;
}

uint64_t std::stack<std::unique_ptr<GPUTools::VMBuffer>>::~stack(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3 == v2)
  {
    *(a1 + 40) = 0;
    v11 = 0;
  }

  else
  {
    v4 = *(a1 + 32);
    v5 = &v2[v4 >> 9];
    v6 = *v5;
    v7 = (*v5 + 8 * (v4 & 0x1FF));
    v8 = *(v2 + (((*(a1 + 40) + v4) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(a1 + 40) + v4) & 0x1FF);
    if (v7 != v8)
    {
      do
      {
        v9 = *v7;
        *v7 = 0;
        if (v9)
        {
          GPUTools::VMBuffer::~VMBuffer(v9);
          MEMORY[0x24C2553C0]();
          v6 = *v5;
        }

        if (++v7 - v6 == 4096)
        {
          v10 = v5[1];
          ++v5;
          v6 = v10;
          v7 = v10;
        }
      }

      while (v7 != v8);
      v2 = *(a1 + 8);
      v3 = *(a1 + 16);
    }

    *(a1 + 40) = 0;
    v11 = v3 - v2;
    if (v11 >= 3)
    {
      do
      {
        operator delete(*v2);
        v3 = *(a1 + 16);
        v2 = (*(a1 + 8) + 8);
        *(a1 + 8) = v2;
        v11 = v3 - v2;
      }

      while (v11 > 2);
    }
  }

  if (v11 == 1)
  {
    v12 = 256;
    goto LABEL_17;
  }

  if (v11 == 2)
  {
    v12 = 512;
LABEL_17:
    *(a1 + 32) = v12;
  }

  if (v2 != v3)
  {
    do
    {
      v13 = *v2++;
      operator delete(v13);
    }

    while (v2 != v3);
    v15 = *(a1 + 8);
    v14 = *(a1 + 16);
    if (v14 != v15)
    {
      *(a1 + 16) = v14 + ((v15 - v14 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<GPUTools::Playback::GL::ContextInfo>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<GPUTools::Playback::GL::ContextInfo>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<GPUTools::Playback::GL::ContextInfo>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<GPUTools::Playback::GL::ContextInfo>>>>::__emplace_unique_key_args<unsigned long long,unsigned long long &,std::unique_ptr<GPUTools::Playback::GL::ContextInfo>>(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_23;
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
LABEL_23:
    operator new();
  }

  if (v4.u32[0] < 2uLL)
  {
    while (1)
    {
      v9 = v7[1];
      if (v9 == v2)
      {
        if (v7[2] == v2)
        {
          return v7;
        }
      }

      else if ((v9 & (*&v3 - 1)) != v5)
      {
        goto LABEL_23;
      }

      v7 = *v7;
      if (!v7)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }

    if (v8 != v5)
    {
      goto LABEL_23;
    }

LABEL_12:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_23;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_12;
  }

  return v7;
}

void sub_24C0EC620(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,std::unique_ptr<GPUTools::Playback::GL::ContextInfo>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,std::unique_ptr<GPUTools::Playback::GL::ContextInfo>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void **std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,std::unique_ptr<GPUTools::Playback::GL::ContextInfo>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,std::unique_ptr<GPUTools::Playback::GL::ContextInfo>>,void *>>>>::~unique_ptr[abi:ne200100](void **a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    if (*(v1 + 16) == 1)
    {
      v4 = v2[3];
      v2[3] = 0;
      if (v4)
      {
        v5 = v2;
        (*(*v4 + 8))(v4);
        v2 = v5;
      }
    }

    operator delete(v2);
    return v3;
  }

  return v1;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

void std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<GPUTools::Playback::GL::ContextInfo>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<GPUTools::Playback::GL::ContextInfo>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<GPUTools::Playback::GL::ContextInfo>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<GPUTools::Playback::GL::ContextInfo>>>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
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

uint64_t *std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<GPUTools::Playback::GL::ContextInfo>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<GPUTools::Playback::GL::ContextInfo>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<GPUTools::Playback::GL::ContextInfo>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<GPUTools::Playback::GL::ContextInfo>>>>::remove@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  v6 = *result;
  v7 = *(*result + 8 * v4);
  do
  {
    v8 = v7;
    v7 = *v7;
  }

  while (v7 != a2);
  if (v8 == result + 2)
  {
    goto LABEL_18;
  }

  v9 = v8[1];
  if (v5.u32[0] > 1uLL)
  {
    if (v9 >= *&v3)
    {
      v9 %= *&v3;
    }
  }

  else
  {
    v9 &= *&v3 - 1;
  }

  if (v9 != v4)
  {
LABEL_18:
    if (!*a2)
    {
      goto LABEL_19;
    }

    v10 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v10 >= *&v3)
      {
        v10 %= *&v3;
      }
    }

    else
    {
      v10 &= *&v3 - 1;
    }

    if (v10 != v4)
    {
LABEL_19:
      *(v6 + 8 * v4) = 0;
    }
  }

  v11 = *a2;
  if (*a2)
  {
    v12 = *(v11 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v12 >= *&v3)
      {
        v12 %= *&v3;
      }
    }

    else
    {
      v12 &= *&v3 - 1;
    }

    if (v12 != v4)
    {
      *(v6 + 8 * v12) = v8;
      v11 = *a2;
    }
  }

  *v8 = v11;
  *a2 = 0;
  --result[3];
  *a3 = a2;
  *(a3 + 8) = result;
  *(a3 + 16) = 1;
  *(a3 + 17) = 0;
  *(a3 + 20) = 0;
  return result;
}

void *std::deque<std::unique_ptr<GPUTools::VMBuffer>>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
  if (!v2)
  {
    v7 = a1[2];
    v6 = a1[3];
    v8 = v6 - *a1;
    if (v7 - a1[1] < v8)
    {
      if (v6 != v7)
      {
        operator new();
      }

      operator new();
    }

    v9 = v8 >> 2;
    if (v6 == *a1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9;
    }

    if (!(v10 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  a1[4] = v3;
  v4 = a1[1];
  v11 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<std::unique_ptr<GPUTools::VMBuffer> *,std::allocator<std::unique_ptr<GPUTools::VMBuffer> *>>::emplace_back<std::unique_ptr<GPUTools::VMBuffer> *&>(a1, &v11);
}

void sub_24C0ECD24(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void *std::__split_buffer<std::unique_ptr<GPUTools::VMBuffer> *,std::allocator<std::unique_ptr<GPUTools::VMBuffer> *>>::emplace_back<std::unique_ptr<GPUTools::VMBuffer> *&>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      v11 = &v4[-*result] >> 2;
      if (v4 == *result)
      {
        v11 = 1;
      }

      if (!(v11 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v7 = ((v6 >> 3) + 1) / 2;
    v8 = ((v6 >> 3) + 1) / -2;
    v9 = &v5[-8 * v7];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v7], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v8];
  }

  *v4 = *a2;
  v3[2] = v4 + 8;
  return result;
}

const void **std::__split_buffer<std::unique_ptr<GPUTools::VMBuffer> *,std::allocator<std::unique_ptr<GPUTools::VMBuffer> *>>::emplace_front<std::unique_ptr<GPUTools::VMBuffer> *>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      v9 = (v7 - v4) >> 2;
      if (v7 == v4)
      {
        v9 = 1;
      }

      if (!(v9 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v5 - 8;
  return result;
}

void std::deque<std::unique_ptr<GPUTools::VMBuffer>>::shrink_to_fit(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    v3 = a1[4];
    v4 = a1[1];
    if (v3 >= 0x200)
    {
      operator delete(*v4);
      v4 = (a1[1] + 8);
      a1[1] = v4;
      v2 = a1[5];
      v3 = a1[4] - 512;
      a1[4] = v3;
    }

    v5 = a1[2];
    if (v5 == v4)
    {
      v6 = 0;
    }

    else
    {
      v6 = ((v5 - v4) << 6) - 1;
    }

    if (v6 - (v2 + v3) >= 0x200)
    {
      operator delete(*(v5 - 1));
      a1[2] -= 8;
    }

    v7 = a1;
  }

  else
  {
    v8 = a1[2];
    if (v8 != a1[1])
    {
      do
      {
        operator delete(*(v8 - 8));
        v9 = a1[1];
        v8 = a1[2] - 8;
        a1[2] = v8;
      }

      while (v8 != v9);
    }

    a1[4] = 0;
    v7 = a1;
  }

  std::__split_buffer<std::unique_ptr<GPUTools::VMBuffer> *,std::allocator<std::unique_ptr<GPUTools::VMBuffer> *>>::shrink_to_fit(v7);
}

void std::__split_buffer<std::unique_ptr<GPUTools::VMBuffer> *,std::allocator<std::unique_ptr<GPUTools::VMBuffer> *>>::shrink_to_fit(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = v3 - v4;
  v7 = v2 - v5;
  if (v6 > v2 - v5)
  {
    v8 = v7 >> 3;
    if (v2 != v5)
    {
      if (!(v8 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    if (v7 < v6)
    {
      v9 = *(a1 + 8);
      v10 = (*(a1 + 16) - v9);
      v11 = v10;
      if (!v10)
      {
        goto LABEL_16;
      }

      v12 = (v10 - 1);
      if ((v10 - 1) < 0x18)
      {
        v13 = 0;
      }

      else
      {
        v13 = 0;
        if (-v9 >= 0x20)
        {
          v14 = (v12 >> 3) + 1;
          v13 = (8 * (v14 & 0x3FFFFFFFFFFFFFFCLL));
          v15 = (v13 + v9);
          v16 = (v9 + 16);
          v17 = 16;
          v18 = v14 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v19 = *v16;
            *(v17 - 16) = *(v16 - 1);
            *v17 = v19;
            v16 += 2;
            v17 += 32;
            v18 -= 4;
          }

          while (v18);
          v9 = v15;
          if (v14 == (v14 & 0x3FFFFFFFFFFFFFFCLL))
          {
LABEL_16:
            *a1 = 0;
            *(a1 + 8) = 0;
            *(a1 + 16) = v11;
            *(a1 + 24) = 8 * v8;
            if (v4)
            {

              operator delete(v4);
            }

            return;
          }
        }
      }

      do
      {
        v20 = *v9;
        v9 += 8;
        *v13++ = v20;
      }

      while (v13 != v11);
      goto LABEL_16;
    }
  }
}

uint64_t GPUTools::GL::WireframeRenderer::IsBadDrawCall(GPUTools::GL::WireframeRenderer *this, int a2, int a3)
{
  if (a3 < 1)
  {
    return 0;
  }

  if ((this - 1) < 3)
  {
    return a2 < 2;
  }

  else if ((this - 4) >= 3)
  {
    if (this)
    {
      v5 = dy_abort();
      return GPUTools::GL::WireframeRenderer::CreateLineListFromIndexedTriList(v5, v6, v7, v8, v9, v10);
    }

    return a2 < 1;
  }

  else
  {
    return a2 < 3;
  }
}

uint64_t GPUTools::GL::WireframeRenderer::CreateLineListFromIndexedTriList(GPUTools::GL::WireframeRenderer *this, void *a2, void **a3, int a4, int a5)
{
  v7 = a3;
  v10 = malloc_type_malloc(6 * a3 / 3 * a4, 0xDAD33C09uLL);
  *a2 = v10;
  switch(a4)
  {
    case 4:
      v11 = GPUTools::GL::CopyTriIndicesToLineList<unsigned int>(v7, v10, this, a5, &__block_literal_global_13);
      return (2 * v11);
    case 2:
      v11 = GPUTools::GL::CopyTriIndicesToLineList<unsigned short>(v7, v10, this, a5, &__block_literal_global_10);
      return (2 * v11);
    case 1:
      v11 = GPUTools::GL::CopyTriIndicesToLineList<unsigned char>(v7, v10, this, a5, &__block_literal_global);
      return (2 * v11);
  }

  v13 = dy_abort();
  return GPUTools::GL::WireframeRenderer::CreateLineListFromTriList(v13, v14, v15, v16, v17);
}

uint64_t GPUTools::GL::WireframeRenderer::CreateLineListFromTriList(GPUTools::GL::WireframeRenderer *this, void **a2, unsigned int a3, int a4)
{
  v6 = a2;
  v8 = a3 / 3;
  v9 = 6 * (a3 / 3);
  v10 = malloc_type_malloc((v9 * a4), 0xD836EBEAuLL);
  *this = v10;
  switch(a4)
  {
    case 4:
      if (a3 >= 3)
      {
        do
        {
          v20.val[0] = vadd_s32(vdup_n_s32(v6), 0x200000001);
          v20.val[1] = v20.val[0];
          v12 = (v10 + 4);
          vst2_f32(v12, v20);
          *v10 = v6;
          *(v10 + 5) = v6;
          v10 += 24;
          v6 += 3;
          --v8;
        }

        while (v8);
      }

      return v9;
    case 2:
      if (a3 >= 3)
      {
        do
        {
          *v10 = v6;
          v11 = vuzp1_s16(vadd_s32(vdup_n_s32(v6), 0x200000001), 0x200000001);
          *(v10 + 2) = vzip1_s16(v11, v11);
          *(v10 + 5) = v6;
          v10 += 12;
          v6 += 3;
          --v8;
        }

        while (v8);
      }

      return v9;
    case 1:
      if (a3 >= 3)
      {
        do
        {
          *v10 = v6;
          v10[1] = v6 + 1;
          v10[2] = v6 + 1;
          v10[3] = v6 + 2;
          v10[4] = v6 + 2;
          v10[5] = v6;
          v10 += 6;
          v6 += 3;
          --v8;
        }

        while (v8);
      }

      return v9;
  }

  v14 = dy_abort();
  return GPUTools::GL::WireframeRenderer::CreateLineListFromIndexedTriStrip(v14, v15, v16, v17, v18, v19);
}

uint64_t GPUTools::GL::WireframeRenderer::CreateLineListFromIndexedTriStrip(GPUTools::GL::WireframeRenderer *this, void *a2, void **a3, int a4, int a5)
{
  v7 = a3;
  v10 = malloc_type_malloc(((6 * a3 - 12) * a4), 0x9140CBBAuLL);
  *a2 = v10;
  switch(a4)
  {
    case 4:
      v11 = GPUTools::GL::CopyTriIndicesToLineList<unsigned int>(v7, v10, this, a5, &__block_literal_global_19);
      return (2 * v11);
    case 2:
      v11 = GPUTools::GL::CopyTriIndicesToLineList<unsigned short>(v7, v10, this, a5, &__block_literal_global_17);
      return (2 * v11);
    case 1:
      v11 = GPUTools::GL::CopyTriIndicesToLineList<unsigned char>(v7, v10, this, a5, &__block_literal_global_15);
      return (2 * v11);
  }

  v13 = dy_abort();
  return GPUTools::GL::WireframeRenderer::CreateLineListFromTriStrip(v13, v14, v15, v16, v17);
}

uint64_t GPUTools::GL::WireframeRenderer::CreateLineListFromTriStrip(GPUTools::GL::WireframeRenderer *this, void **a2, int a3, int a4)
{
  v5 = a2;
  v7 = a3 - 2;
  v8 = (6 * (a3 - 2));
  v9 = malloc_type_malloc((v8 * a4), 0x301356A3uLL);
  *this = v9;
  switch(a4)
  {
    case 4:
      for (; v7; --v7)
      {
        *v9 = v5;
        *(v9 + 5) = v5;
        v21.val[0] = vadd_s32(vdup_n_s32(v5), 0x200000001);
        v21.val[1] = v21.val[0];
        v13 = (v9 + 4);
        vst2_f32(v13, v21);
        v9 += 24;
        v5 = v21.val[0].i32[0];
      }

      return v8;
    case 2:
      for (; v7; --v7)
      {
        *v9 = v5;
        v11 = vadd_s32(vdup_n_s32(v5), 0x200000001);
        v12 = vuzp1_s16(v11, 0x200000001);
        *(v9 + 5) = v5;
        v5 = v11.i32[0];
        *(v9 + 2) = vzip1_s16(v12, v12);
        v9 += 12;
      }

      return v8;
    case 1:
      for (; v7; --v7)
      {
        *v9 = v5;
        v10 = v5 + 2;
        v9[5] = v5++;
        v9[1] = v5;
        v9[2] = v5;
        v9[3] = v10;
        v9[4] = v10;
        v9 += 6;
      }

      return v8;
  }

  v15 = dy_abort();
  return GPUTools::GL::WireframeRenderer::CreateLineListFromIndexedTriFan(v15, v16, v17, v18, v19, v20);
}

uint64_t GPUTools::GL::WireframeRenderer::CreateLineListFromIndexedTriFan(GPUTools::GL::WireframeRenderer *this, void *a2, void **a3, int a4, int a5)
{
  v7 = a3;
  v10 = malloc_type_malloc(((6 * a3 - 12) * a4), 0x64D3FE91uLL);
  *a2 = v10;
  switch(a4)
  {
    case 4:
      v11 = GPUTools::GL::CopyTriIndicesToLineList<unsigned int>(v7, v10, this, a5, &__block_literal_global_25);
      return (2 * v11);
    case 2:
      v11 = GPUTools::GL::CopyTriIndicesToLineList<unsigned short>(v7, v10, this, a5, &__block_literal_global_23);
      return (2 * v11);
    case 1:
      v11 = GPUTools::GL::CopyTriIndicesToLineList<unsigned char>(v7, v10, this, a5, &__block_literal_global_21);
      return (2 * v11);
  }

  v13 = dy_abort();
  return GPUTools::GL::WireframeRenderer::CreateLineListFromTriFan(v13, v14, v15, v16, v17);
}

uint64_t GPUTools::GL::WireframeRenderer::CreateLineListFromTriFan(GPUTools::GL::WireframeRenderer *this, void **a2, int a3, int a4)
{
  v5 = a2;
  v7 = a3 - 2;
  v8 = (6 * (a3 - 2));
  v9 = malloc_type_malloc((v8 * a4), 0x5CDD58CBuLL);
  *this = v9;
  switch(a4)
  {
    case 4:
      if (v7)
      {
        v15 = v5;
        do
        {
          v23.val[0] = vadd_s32(vdup_n_s32(v15), 0x200000001);
          v23.val[1] = v23.val[0];
          v16 = (v9 + 4);
          vst2_f32(v16, v23);
          *v9 = v5;
          *(v9 + 5) = v5;
          v9 += 24;
          v15 = v23.val[0].i32[0];
          --v7;
        }

        while (v7);
      }

      return v8;
    case 2:
      if (v7)
      {
        v12 = v5;
        do
        {
          *v9 = v5;
          v13 = vadd_s32(vdup_n_s32(v12), 0x200000001);
          v14 = vuzp1_s16(v13, 0x200000001);
          v12 = v13.i32[0];
          *(v9 + 2) = vzip1_s16(v14, v14);
          *(v9 + 5) = v5;
          v9 += 12;
          --v7;
        }

        while (v7);
      }

      return v8;
    case 1:
      if (v7)
      {
        v10 = v5;
        do
        {
          *v9 = v5;
          v11 = v10++ + 2;
          v9[1] = v10;
          v9[2] = v10;
          v9[3] = v11;
          v9[4] = v11;
          v9[5] = v5;
          v9 += 6;
          --v7;
        }

        while (v7);
      }

      return v8;
  }

  v18 = dy_abort();
  return GPUTools::GL::CopyTriIndicesToLineList<unsigned char>(v18, v19, v20, v21, v22);
}

uint64_t GPUTools::GL::CopyTriIndicesToLineList<unsigned char>(unsigned int a1, _BYTE *a2, unsigned __int8 *a3, int a4, uint64_t a5)
{
  v18 = 0;
  if (!a1)
  {
    return 0;
  }

  v9 = 0;
  v10 = a1;
  do
  {
    v12 = *a3++;
    v11 = v12;
    v13 = v18;
    *(&v19 + v18) = v12;
    if (a4 && v11 == 255)
    {
      v18 = 0;
    }

    else if (v13 == 2)
    {
      if (v19 != v20 && v19 != v21 && v20 != v21)
      {
        *a2 = v19;
        v15 = v20;
        a2[1] = v20;
        a2[2] = v15;
        v16 = v21;
        a2[3] = v21;
        a2[4] = v16;
        a2[5] = v19;
        a2 += 6;
        v9 = (v9 + 3);
      }

      (*(a5 + 16))(a5, &v19, &v18);
    }

    else
    {
      v18 = v13 + 1;
    }

    --v10;
  }

  while (v10);
  return v9;
}

uint64_t GPUTools::GL::CopyTriIndicesToLineList<unsigned short>(unsigned int a1, _WORD *a2, unsigned __int16 *a3, int a4, uint64_t a5)
{
  v18 = 0;
  if (!a1)
  {
    return 0;
  }

  v9 = 0;
  v10 = 2 * a1;
  do
  {
    v12 = *a3++;
    v11 = v12;
    v13 = v18;
    *(&v19 + v18) = v12;
    if (a4 && v11 == 0xFFFF)
    {
      v18 = 0;
    }

    else if (v13 == 2)
    {
      if (v19 != v20 && v19 != v21 && v20 != v21)
      {
        *a2 = v19;
        v15 = v20;
        a2[1] = v20;
        a2[2] = v15;
        v16 = v21;
        a2[3] = v21;
        a2[4] = v16;
        a2[5] = v19;
        a2 += 6;
        v9 = (v9 + 3);
      }

      (*(a5 + 16))(a5, &v19, &v18);
    }

    else
    {
      v18 = v13 + 1;
    }

    v10 -= 2;
  }

  while (v10);
  return v9;
}

uint64_t GPUTools::GL::CopyTriIndicesToLineList<unsigned int>(unsigned int a1, _DWORD *a2, int *a3, int a4, uint64_t a5)
{
  v24 = *MEMORY[0x277D85DE8];
  v20 = 0;
  if (a1)
  {
    v9 = 0;
    v10 = 4 * a1;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = v20;
      *(&v21 + v20) = v12;
      if (a4 && v11 == -1)
      {
        v20 = 0;
      }

      else if (v13 == 2)
      {
        if (v21 != v22 && v21 != v23 && v22 != v23)
        {
          *a2 = v21;
          v16 = v21;
          v15 = v22;
          a2[1] = v22;
          a2[2] = v15;
          v17 = v23;
          a2[3] = v23;
          a2[4] = v17;
          a2[5] = v16;
          a2 += 6;
          v9 = (v9 + 3);
        }

        (*(a5 + 16))(a5, &v21, &v20);
      }

      else
      {
        v20 = v13 + 1;
      }

      v10 -= 4;
    }

    while (v10);
  }

  else
  {
    v9 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v9;
}

double ___ZN8GPUTools2GL29CopyTriStripIndicesToLineListIjEEjjPT_S3_b_block_invoke(uint64_t a1, double *a2)
{
  result = *(a2 + 4);
  *a2 = result;
  return result;
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}