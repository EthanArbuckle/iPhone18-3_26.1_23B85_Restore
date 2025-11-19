void *std::__hash_table<std::__hash_value_type<objc_object  {objcproto15EQKitLayoutNode13EQKitOperator}*,EQKitLayoutStretchedOperator>,std::__unordered_map_hasher<objc_object  {objcproto15EQKitLayoutNode13EQKitOperator},EQKitLayoutStretchedOperator,std::hash<objc_object  {objcproto15EQKitLayoutNode13EQKitOperator}>,std::equal_to<objc_object  {objcproto15EQKitLayoutNode13EQKitOperator}>,true>,std::__unordered_map_equal<objc_object  {objcproto15EQKitLayoutNode13EQKitOperator},EQKitLayoutStretchedOperator,std::equal_to,std::hash,true>,std::allocator<EQKitLayoutStretchedOperator>>::find<objc_object  {objcproto15EQKitLayoutNode13EQKitOperator}>(void *a1, void *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v5;
    if (v5 >= *&v2)
    {
      v7 = v5 % *&v2;
    }
  }

  else
  {
    v7 = v5 & (*&v2 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  result = *v8;
  if (*v8)
  {
    do
    {
      v10 = result[1];
      if (v10 == v5)
      {
        if (result[2] == *a2)
        {
          return result;
        }
      }

      else
      {
        if (v6.u32[0] > 1uLL)
        {
          if (v10 >= *&v2)
          {
            v10 %= *&v2;
          }
        }

        else
        {
          v10 &= *&v2 - 1;
        }

        if (v10 != v7)
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

{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v5;
    if (v5 >= *&v2)
    {
      v7 = v5 % *&v2;
    }
  }

  else
  {
    v7 = v5 & (*&v2 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  result = *v8;
  if (*v8)
  {
    do
    {
      v10 = result[1];
      if (v5 == v10)
      {
        if (result[2] == *a2)
        {
          return result;
        }
      }

      else
      {
        if (v6.u32[0] > 1uLL)
        {
          if (v10 >= *&v2)
          {
            v10 %= *&v2;
          }
        }

        else
        {
          v10 &= *&v2 - 1;
        }

        if (v10 != v7)
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

void *std::__hash_table<std::__hash_value_type<objc_object  {objcproto15EQKitLayoutNode13EQKitOperator}*,EQKitLayoutStretchedOperator>,std::__unordered_map_hasher<objc_object  {objcproto15EQKitLayoutNode13EQKitOperator},EQKitLayoutStretchedOperator,std::hash<objc_object  {objcproto15EQKitLayoutNode13EQKitOperator}>,std::equal_to<objc_object  {objcproto15EQKitLayoutNode13EQKitOperator}>,true>,std::__unordered_map_equal<objc_object  {objcproto15EQKitLayoutNode13EQKitOperator},EQKitLayoutStretchedOperator,std::equal_to,std::hash,true>,std::allocator<EQKitLayoutStretchedOperator>>::__emplace_unique_key_args<objc_object  {objcproto15EQKitLayoutNode13EQKitOperator},objc_object  {objcproto15EQKitLayoutNode13EQKitOperator} const&,objc_object  {objcproto15EQKitLayoutNode13EQKitOperator}* const&>(void *a1, void *a2)
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

void *std::deque<void({block_pointer})(objc_object  {objcproto15EQKitLayoutNode}*,EQKit::Layout::Schemata const&),std::allocator<void ()(objc_object  {objcproto15EQKitLayoutNode}*,EQKit::Layout::Schemata const&)>>::push_back(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  v5 = result[1];
  v6 = ((v4 - v5) << 6) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = result[5] + result[4];
  if (v6 == v7)
  {
    result = std::deque<void({block_pointer})(objc_object  {objcproto15EQKitLayoutNode}*,EQKit::Layout::Schemata const&),std::allocator<void ()(objc_object  {objcproto15EQKitLayoutNode}*,EQKit::Layout::Schemata const&)>>::__add_back_capacity(result);
    v5 = v3[1];
    v7 = v3[5] + v3[4];
  }

  *(*(v5 + ((v7 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v7 & 0x1FF)) = *a2;
  ++v3[5];
  return result;
}

void *std::deque<void({block_pointer})(objc_object  {objcproto15EQKitLayoutNode}*,EQKit::Layout::Schemata const&),std::allocator<void ()(objc_object  {objcproto15EQKitLayoutNode}*,EQKit::Layout::Schemata const&)>>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<objc_object  {objcproto15EQKitLayoutNode}*>>(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<void({block_pointer}*)(objc_object  {objcproto15EQKitLayoutNode}*,EQKit::Layout::Schemata const&),std::allocator<void({block_pointer})(objc_object  {objcproto15EQKitLayoutNode}*,EQKit::Layout::Schemata const&)>>::emplace_back<void({block_pointer}&)(objc_object  {objcproto15EQKitLayoutNode}*,EQKit::Layout::Schemata const&)>(a1, &v10);
}

void sub_258270BE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::__split_buffer<void({block_pointer}*)(objc_object  {objcproto15EQKitLayoutNode}*,EQKit::Layout::Schemata const&),std::allocator<void({block_pointer})(objc_object  {objcproto15EQKitLayoutNode}*,EQKit::Layout::Schemata const&)>>::emplace_back<void({block_pointer}&)(objc_object  {objcproto15EQKitLayoutNode}*,EQKit::Layout::Schemata const&)>(void *result, void *a2)
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

      std::__allocate_at_least[abi:ne200100]<std::allocator<objc_object  {objcproto15EQKitLayoutNode}*>>(result, v11);
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

const void **std::__split_buffer<void({block_pointer}*)(objc_object  {objcproto15EQKitLayoutNode}*,EQKit::Layout::Schemata const&),std::allocator<void({block_pointer})(objc_object  {objcproto15EQKitLayoutNode}*,EQKit::Layout::Schemata const&)>>::emplace_front<void({block_pointer})(objc_object  {objcproto15EQKitLayoutNode}*,EQKit::Layout::Schemata const&)>(const void **result, void *a2)
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

      std::__allocate_at_least[abi:ne200100]<std::allocator<objc_object  {objcproto15EQKitLayoutNode}*>>(result, v9);
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

void *std::__split_buffer<void({block_pointer}*)(objc_object  {objcproto15EQKitLayoutNode}*,EQKit::Layout::Schemata const&),std::allocator<void({block_pointer})(objc_object  {objcproto15EQKitLayoutNode}*,EQKit::Layout::Schemata const&)> &>::emplace_back<void({block_pointer})(objc_object  {objcproto15EQKitLayoutNode}*,EQKit::Layout::Schemata const&)>(void *result, void *a2)
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

      std::__allocate_at_least[abi:ne200100]<std::allocator<objc_object  {objcproto15EQKitLayoutNode}*>>(result[4], v11);
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

const void **std::__split_buffer<void({block_pointer}*)(objc_object  {objcproto15EQKitLayoutNode}*,EQKit::Layout::Schemata const&),std::allocator<void({block_pointer})(objc_object  {objcproto15EQKitLayoutNode}*,EQKit::Layout::Schemata const&)> &>::emplace_front<void({block_pointer}&)(objc_object  {objcproto15EQKitLayoutNode}*,EQKit::Layout::Schemata const&)>(const void **result, void *a2)
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

      std::__allocate_at_least[abi:ne200100]<std::allocator<objc_object  {objcproto15EQKitLayoutNode}*>>(result[4], v9);
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

void *std::deque<objc_object  {objcproto15EQKitLayoutNode}*>::push_back(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  v5 = result[1];
  v6 = ((v4 - v5) << 6) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = result[5] + result[4];
  if (v6 == v7)
  {
    result = std::deque<objc_object  {objcproto15EQKitLayoutNode}*>::__add_back_capacity(result);
    v5 = v3[1];
    v7 = v3[5] + v3[4];
  }

  *(*(v5 + ((v7 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v7 & 0x1FF)) = *a2;
  ++v3[5];
  return result;
}

void *std::deque<objc_object  {objcproto15EQKitLayoutNode}*>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<objc_object  {objcproto15EQKitLayoutNode}*>>(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<void({block_pointer}*)(objc_object  {objcproto15EQKitLayoutNode}*,EQKit::Layout::Schemata const&),std::allocator<void({block_pointer})(objc_object  {objcproto15EQKitLayoutNode}*,EQKit::Layout::Schemata const&)>>::emplace_back<void({block_pointer}&)(objc_object  {objcproto15EQKitLayoutNode}*,EQKit::Layout::Schemata const&)>(a1, &v10);
}

void sub_258271270(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::deque<objc_object  {objcproto15EQKitLayoutNode}*>::__maybe_remove_back_spare[abi:ne200100](void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = ((v2 - v3) << 6) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x200)
  {
    a2 = 1;
  }

  if (v5 < 0x400)
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

uint64_t std::__hash_table<std::__hash_value_type<objc_object  {objcproto15EQKitLayoutNode13EQKitOperator}*,EQKitLayoutStretchedOperator>,std::__unordered_map_hasher<objc_object  {objcproto15EQKitLayoutNode13EQKitOperator},EQKitLayoutStretchedOperator,std::hash<objc_object  {objcproto15EQKitLayoutNode13EQKitOperator}>,std::equal_to<objc_object  {objcproto15EQKitLayoutNode13EQKitOperator}>,true>,std::__unordered_map_equal<objc_object  {objcproto15EQKitLayoutNode13EQKitOperator},EQKitLayoutStretchedOperator,std::equal_to,std::hash,true>,std::allocator<EQKitLayoutStretchedOperator>>::erase(void *a1, uint64_t *a2)
{
  v2 = *a2;
  std::__hash_table<std::__hash_value_type<EQKit::OpticalKern::Glyph::Key,std::pair<std::shared_ptr<EQKit::OpticalKern::Edge::Path>,unsigned long>>,std::__unordered_map_hasher<EQKit::OpticalKern::Glyph::Key,std::__hash_value_type<EQKit::OpticalKern::Glyph::Key,std::pair<std::shared_ptr<EQKit::OpticalKern::Edge::Path>,unsigned long>>,std::hash<EQKit::OpticalKern::Glyph::Key>,std::equal_to<EQKit::OpticalKern::Glyph::Key>,true>,std::__unordered_map_equal<EQKit::OpticalKern::Glyph::Key,std::__hash_value_type<EQKit::OpticalKern::Glyph::Key,std::pair<std::shared_ptr<EQKit::OpticalKern::Edge::Path>,unsigned long>>,std::equal_to<EQKit::OpticalKern::Glyph::Key>,std::hash<EQKit::OpticalKern::Glyph::Key>,true>,std::allocator<std::__hash_value_type<EQKit::OpticalKern::Glyph::Key,std::pair<std::shared_ptr<EQKit::OpticalKern::Edge::Path>,unsigned long>>>>::remove(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return v2;
}

EQKitLayoutElementaryStack *std::deque<EQKitLayoutElementaryStack>::push_back(void *a1, const EQKitLayoutElementaryStack *a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = 24 * ((v5 - v4) >> 3) - 1;
  if (v5 == v4)
  {
    v6 = 0;
  }

  if (v6 == a1[5] + a1[4])
  {
    std::deque<EQKitLayoutElementaryStack>::__add_back_capacity(a1);
    v4 = a1[1];
    v5 = a1[2];
  }

  if (v5 == v4)
  {
    v8 = 0;
  }

  else
  {
    v7 = a1[5] + a1[4];
    v8 = (*(v4 + 8 * (v7 / 0x18)) + 168 * (v7 % 0x18));
  }

  result = EQKitLayoutElementaryStack::EQKitLayoutElementaryStack(v8, a2);
  ++a1[5];
  return result;
}

void *std::deque<EQKitLayoutElementaryStack>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x18;
  v3 = v1 - 24;
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<EQKitLayoutContext *>>(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<EQKitLayoutContext *>::emplace_back<EQKitLayoutContext *&>(a1, &v10);
}

void sub_2582715A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::deque<EQKitLayoutElementaryStack>::pop_back(void *a1)
{
  v2 = a1[5] + a1[4] - 1;
  EQKitLayoutElementaryStack::~EQKitLayoutElementaryStack((*(a1[1] + 8 * (v2 / 0x18)) + 168 * (v2 % 0x18)));
  --a1[5];

  return std::deque<EQKitLayoutElementaryStack>::__maybe_remove_back_spare[abi:ne200100](a1, 1);
}

uint64_t std::deque<EQKitLayoutElementaryStack>::__maybe_remove_back_spare[abi:ne200100](void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 24 * ((v2 - v3) >> 3) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x18)
  {
    a2 = 1;
  }

  if (v5 < 0x30)
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

const void **EQKit::AutoCFType<__CTFont const*>::~AutoCFType(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **EQKit::AutoCFType<CGPath const*>::~AutoCFType(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

double std::deque<EQKitLayoutTable>::push_back(void *a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = 42 * ((v5 - v4) >> 3) - 1;
  if (v5 == v4)
  {
    v6 = 0;
  }

  if (v6 == a1[5] + a1[4])
  {
    std::deque<EQKitLayoutTable>::__add_back_capacity(a1);
    v4 = a1[1];
    v5 = a1[2];
  }

  if (v5 == v4)
  {
    v8 = 0;
  }

  else
  {
    v7 = a1[5] + a1[4];
    v8 = *(v4 + 8 * (v7 / 0x2A)) + 96 * (v7 % 0x2A);
  }

  v9 = *(a2 + 8);
  *v8 = &unk_28696A928;
  *(v8 + 8) = v9;
  *(v8 + 80) = 0;
  result = 0.0;
  *(v8 + 48) = 0u;
  *(v8 + 64) = 0u;
  *(v8 + 16) = 0u;
  *(v8 + 32) = 0u;
  *(v8 + 88) = *(a2 + 88);
  ++a1[5];
  return result;
}

void *std::deque<EQKitLayoutTable>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x2A;
  v3 = v1 - 42;
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<EQKitLayoutContext *>>(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<EQKitLayoutContext *>::emplace_back<EQKitLayoutContext *&>(a1, &v10);
}

void sub_2582719C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::deque<EQKitLayoutTable>::pop_back(void *a1)
{
  v2 = a1[5] + a1[4] - 1;
  (**(*(a1[1] + 8 * (v2 / 0x2A)) + 96 * (v2 % 0x2A)))();
  --a1[5];

  return std::deque<EQKitLayoutTable>::__maybe_remove_back_spare[abi:ne200100](a1, 1);
}

uint64_t std::deque<EQKitLayoutTable>::__maybe_remove_back_spare[abi:ne200100](void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 42 * ((v2 - v3) >> 3) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x2A)
  {
    a2 = 1;
  }

  if (v5 < 0x54)
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

void *std::deque<unsigned long>::push_back(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  v5 = result[1];
  v6 = ((v4 - v5) << 6) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = result[5] + result[4];
  if (v6 == v7)
  {
    result = std::deque<unsigned long>::__add_back_capacity(result);
    v5 = v3[1];
    v7 = v3[5] + v3[4];
  }

  *(*(v5 + ((v7 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v7 & 0x1FF)) = *a2;
  ++v3[5];
  return result;
}

void *std::deque<unsigned long>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long *>>(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<unsigned long *>::emplace_back<unsigned long *&>(a1, &v10);
}

void sub_258271D58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::__split_buffer<unsigned long *>::emplace_back<unsigned long *&>(void *result, void *a2)
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

      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long *>>(result, v11);
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

const void **std::__split_buffer<unsigned long *>::emplace_front<unsigned long *>(const void **result, void *a2)
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

      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long *>>(result, v9);
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

void *std::__split_buffer<unsigned long *>::emplace_back<unsigned long *>(void *result, void *a2)
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

      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long *>>(result[4], v11);
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

const void **std::__split_buffer<unsigned long *>::emplace_front<unsigned long *&>(const void **result, void *a2)
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

      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long *>>(result[4], v9);
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

void std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

EQKitLayoutRow *std::deque<EQKitLayoutRow>::push_back(void *a1, EQKitLayoutRow *a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = 25 * ((v5 - v4) >> 3) - 1;
  if (v5 == v4)
  {
    v6 = 0;
  }

  if (v6 == a1[5] + a1[4])
  {
    std::deque<EQKitLayoutRow>::__add_back_capacity(a1);
    v4 = a1[1];
    v5 = a1[2];
  }

  if (v5 == v4)
  {
    v8 = 0;
  }

  else
  {
    v7 = a1[5] + a1[4];
    v8 = (*(v4 + 8 * (v7 / 0x19)) + 160 * (v7 % 0x19));
  }

  result = EQKitLayoutRow::EQKitLayoutRow(v8, a2);
  ++a1[5];
  return result;
}

void *std::deque<EQKitLayoutRow>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x19;
  v3 = v1 - 25;
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<EQKitLayoutContext *>>(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<EQKitLayoutContext *>::emplace_back<EQKitLayoutContext *&>(a1, &v10);
}

void sub_25827245C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::deque<EQKitLayoutRow>::pop_back(void *a1)
{
  v2 = a1[5] + a1[4] - 1;
  EQKitLayoutRow::~EQKitLayoutRow((*(a1[1] + 8 * (v2 / 0x19)) + 160 * (v2 % 0x19)));
  --a1[5];

  return std::deque<EQKitLayoutRow>::__maybe_remove_back_spare[abi:ne200100](a1, 1);
}

uint64_t std::deque<EQKitLayoutRow>::__maybe_remove_back_spare[abi:ne200100](void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 25 * ((v2 - v3) >> 3) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x19)
  {
    a2 = 1;
  }

  if (v5 < 0x32)
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

void sub_258272ED0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  a29 = &a43;
  std::vector<EQKit::OpticalKern::Spec::Entry>::__destroy_vector::operator()[abi:ne200100](&a29);
  a29 = &a47;
  std::vector<EQKit::OpticalKern::Spec::Entry>::__destroy_vector::operator()[abi:ne200100](&a29);
  _Unwind_Resume(a1);
}

uint64_t _pathBoxForCompositeEdge(const EQKit::OpticalKern::Edge::Composite *a1, double a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = EQKit::OpticalKern::Edge::Composite::newPathForEdge(a1);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v10 = xmmword_2582D07C0;
  v11 = unk_2582D07D0;
  v5 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF458]);
  v6 = CGColorCreate(v5, &v10);
  CGColorSpaceRelease(v5);
  v7 = [EQKitPathBox alloc];
  v8 = [(EQKitPathBox *)v7 initWithCGPath:v4 height:v6 cgColor:2 drawingMode:0.0 lineWidth:1.0 / a2, v10, v11];
  CGColorRelease(v6);
  CFRelease(v4);
  return v8;
}

void sub_2582732C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char *__p, char *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  MEMORY[0x259C7CB70](v20, 0x10C402FEFCB83);
  if (__p)
  {
    a15 = __p;
    operator delete(__p);
  }

  __p = &a20;
  std::vector<EQKit::OpticalKern::Spec::Entry>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void std::vector<EQKit::OpticalKern::Spec::Entry>::resize(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = 0x8E38E38E38E38E39 * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    std::vector<EQKit::OpticalKern::Spec::Entry>::__append(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 72 * a2;
    while (v3 != v7)
    {
      EQKit::OpticalKern::Spec::Entry::~Entry((v3 - 72));
    }

    a1[1] = v7;
  }
}

uint64_t std::vector<EQKit::OpticalKern::Spec::Entry>::__append(uint64_t result, unint64_t a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (0x8E38E38E38E38E39 * ((v5 - v4) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = v4 + 72 * a2;
      v11 = MEMORY[0x277CBF348];
      do
      {
        *v4 = 0;
        *(v4 + 8) = *v11;
        *(v4 + 24) = 0;
        *(v4 + 32) = 0;
        *(v4 + 40) = -1;
        *(v4 + 56) = 0;
        *(v4 + 64) = 0;
        *(v4 + 48) = 0;
        v4 += 72;
      }

      while (v4 != v10);
      v4 = v10;
    }

    *(result + 8) = v4;
  }

  else
  {
    v6 = 0x8E38E38E38E38E39 * ((v4 - *result) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0x38E38E38E38E38ELL)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0x8E38E38E38E38E39 * ((v5 - *result) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x1C71C71C71C71C7)
    {
      v9 = 0x38E38E38E38E38ELL;
    }

    else
    {
      v9 = v7;
    }

    v22 = result;
    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<EQKit::OpticalKern::Spec::Entry>>(result, v9);
    }

    v12 = 72 * v6;
    v19 = 0;
    v20 = 72 * v6;
    *(&v21 + 1) = 0;
    v13 = MEMORY[0x277CBF348];
    v14 = 72 * v6;
    do
    {
      *v14 = 0;
      *(v14 + 8) = *v13;
      *(v14 + 24) = 0;
      *(v14 + 32) = 0;
      *(v14 + 40) = -1;
      *(v14 + 56) = 0;
      *(v14 + 64) = 0;
      *(v14 + 48) = 0;
      v14 += 72;
    }

    while (v14 != 72 * v6 + 72 * a2);
    *&v21 = v12 + 72 * a2;
    v15 = *(result + 8);
    v16 = (v12 + *result - v15);
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<EQKit::OpticalKern::Spec::Entry>,EQKit::OpticalKern::Spec::Entry*>(result, *result, v15, v16);
    v17 = *v3;
    *v3 = v16;
    v18 = *(v3 + 16);
    *(v3 + 8) = v21;
    *&v21 = v17;
    *(&v21 + 1) = v18;
    v19 = v17;
    v20 = v17;
    return std::__split_buffer<EQKit::OpticalKern::Spec::Entry>::~__split_buffer(&v19);
  }

  return result;
}

void sub_2582735B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<EQKit::OpticalKern::Spec::Entry>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void sub_25827363C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  a10 = 0;
  if (v10)
  {
    std::default_delete<std::vector<unsigned long>>::operator()[abi:ne200100](&a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<std::vector<unsigned long> *,std::shared_ptr<std::vector<unsigned long> const>::__shared_ptr_default_delete<std::vector<unsigned long> const,std::vector<unsigned long>>,std::allocator<std::vector<unsigned long>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C7CB70);
}

uint64_t std::__shared_ptr_pointer<std::vector<unsigned long> *,std::shared_ptr<std::vector<unsigned long> const>::__shared_ptr_default_delete<std::vector<unsigned long> const,std::vector<unsigned long>>,std::allocator<std::vector<unsigned long>>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::default_delete<std::vector<unsigned long>>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *a2;
    if (*a2)
    {
      *(a2 + 8) = v2;
      operator delete(v2);
    }

    JUMPOUT(0x259C7CB70);
  }
}

void EQKitLayoutContext::EQKitLayoutContext(EQKitLayoutContext *this, double a2, const Collection *a3, NSString *a4, double a5, char a6)
{
  *this = &unk_28696A9D0;
  *(this + 1) = 0;
  *(this + 16) = a6;
  *(this + 17) = 0;
  *(this + 5) = 1;
  *(this + 3) = a2;
  *(this + 8) = 0;
  *(this + 5) = a4;
  *(this + 6) = a2;
  *(this + 7) = 0;
  *(this + 9) = 0;
  *(this + 10) = a5;
  *(this + 11) = a3;
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 14) = 0;
  v7 = (*(*a3 + 8))(a3, 2);
  if (*(this + 6) < v7)
  {
    v7 = *(this + 6);
  }

  *(this + 8) = v7;
  *(this + 120) = 0;
  *(this + 17) = 0;
  *(this + 18) = 0;
  *(this + 16) = 0;
}

void EQKitLayoutContext::EQKitLayoutContext(EQKitLayoutContext *this, const EQKitLayoutContext *a2)
{
  v4 = *(a2 + 1);
  *this = &unk_28696A9D0;
  *(this + 1) = v4;
  *(this + 16) = *(a2 + 16);
  *(this + 17) = *(a2 + 17);
  *(this + 5) = *(a2 + 5);
  *(this + 3) = *(a2 + 3);
  *(this + 8) = *(a2 + 8);
  *(this + 5) = *(a2 + 5);
  *(this + 3) = *(a2 + 3);
  *(this + 8) = *(a2 + 8);
  *(this + 9) = *(a2 + 9);
  *(this + 10) = *(a2 + 10);
  *(this + 11) = *(a2 + 11);
  v5 = *(a2 + 12);
  if (v5)
  {
    v5 = CFRetain(v5);
  }

  *(this + 12) = v5;
  *(this + 13) = 0;
  v6 = *(a2 + 14);
  if (v6)
  {
    v6 = CFRetain(v6);
  }

  *(this + 14) = v6;
  *(this + 120) = *(a2 + 120);
  v7 = *(a2 + 8);
  *(this + 18) = *(a2 + 18);
  *(this + 8) = v7;
}

void EQKitLayoutContext::EQKitLayoutContext(uint64_t a1, EQKitLayoutContext *this, uint64_t a3, void *a4, uint64_t a5, char a6, int a7)
{
  *a1 = &unk_28696A9D0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 18) = 0;
  *(a1 + 20) = 1;
  *(a1 + 24) = 0x4028000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = *(a3 + 24);
  *(a1 + 56) = *(a3 + 56);
  v13 = (a1 + 56);
  *(a1 + 72) = a4;
  *(a1 + 80) = *(a3 + 80);
  v14 = EQKitLayoutManager::fontCollection(this);
  *(a1 + 96) = 0;
  *(a1 + 88) = v14;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  v43 = 0;
  v44 = 1;
  v15 = *(this + 77);
  v45 = a4;
  v46 = 9;
  v16 = EQKit::AttributeCollection::getValueForKey<std::map<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,EQKit::ScriptLevel>>(v15, v15 + 296, &v45, &v43);
  v17 = *(a3 + 8);
  if (v16)
  {
    v18 = EQKit::ScriptLevel::resolveWithBase(&v43, *(a3 + 8));
    v17 = *(a3 + 8);
  }

  else
  {
    v18 = v17 + a5;
  }

  v19 = *(this + 77);
  v45 = a4;
  v46 = 42;
  EQKit::AttributeCollection::getValueForKey<std::map<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,double>>(v19, v19 + 440, &v45, v13);
  LODWORD(v42[0]) = 1;
  v42[1] = 0;
  v20 = *(this + 77);
  v45 = a4;
  v46 = 43;
  if (EQKit::AttributeCollection::getValueForKey<std::map<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,EQKitLength>>(v20, v20 + 32, &v45, v42))
  {
    v21 = (*(**(a1 + 88) + 64))(*(a1 + 88), 2);
    if (*(a1 + 48) < v21)
    {
      v21 = *(a1 + 48);
    }

    *(a1 + 64) = EQKitLength::resolveToAbsoluteWithUnitProviderAndDefault(v42, a3, v21);
  }

  v42[0] = 0;
  v22 = *(this + 77);
  v45 = a4;
  v46 = 44;
  v23 = EQKit::AttributeCollection::getValueForKey<std::map<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::CFRetainRelease>>(v22, v22 + 536, &v45, v42);
  v24 = (a3 + 112);
  if (v23)
  {
    v24 = v42;
  }

  v25 = *v24;
  *(a1 + 112) = *v24;
  if (v25)
  {
    CFRetain(v25);
  }

  EQKitTypes::CFRetainRelease::~CFRetainRelease(v42);
  LODWORD(v42[0]) = 0;
  if ([*(a1 + 72) conformsToProtocol:&unk_286975AB8])
  {
    v26 = *(a1 + 72);
  }

  else
  {
    v26 = 0;
  }

  v27 = *(this + 77);
  v45 = a4;
  v46 = 17;
  v28 = EQKit::AttributeCollection::getValueForKey<std::map<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum>>(v27, v27 + 368, &v45, v42);
  if (v26)
  {
    v30 = v28;
  }

  else
  {
    v30 = 1;
  }

  if (v30)
  {
    if (!v26)
    {
      goto LABEL_23;
    }
  }

  else
  {
    LODWORD(v42[0]) = [v26 scriptVariant];
  }

  LODWORD(v26) = [v26 scriptContext];
LABEL_23:
  if (*v13 != 0.0 || (v18 - 1) > 1 || (v18 == 1 ? (v31 = 3) : (v31 = 4), v32 = *(this + 1), v29.n128_f64[0] = *v13, v33 = v32 * (*(**(a1 + 88) + 64))(*(a1 + 88), v31, v29), v33 == 0.0))
  {
    v33 = *(a1 + 48);
    if (v18 != v17)
    {
      v34 = *v13;
      if (*v13 == 0.0)
      {
        v34 = 0.71;
      }

      v33 = v33 * pow(v34, (v18 - v17));
    }
  }

  if (v33 < *(a1 + 64))
  {
    v33 = *(a1 + 64);
  }

  v35 = [a4 operatorCore];
  if (v35 == a4)
  {
    isOperatorLargeOp = EQKitLayoutManager::isOperatorLargeOp(this, v35);
  }

  else
  {
    isOperatorLargeOp = 0;
  }

  if (a7 == 2)
  {
    v37 = 0;
  }

  else if (a7 == 1)
  {
    v37 = 1;
  }

  else
  {
    v37 = *(a3 + 17);
  }

  v38 = v42[0];
  v39 = *(a3 + 40);
  *(a1 + 8) = v18;
  *(a1 + 16) = a6;
  *(a1 + 17) = v37 & 1;
  *(a1 + 18) = isOperatorLargeOp;
  *(a1 + 20) = v38;
  *(a1 + 24) = v33;
  *(a1 + 32) = v26;
  *(a1 + 40) = v39;
  if (v33 == *(a3 + 24) && v38 == *(a3 + 20))
  {
    v40 = *(a3 + 96);
    if (v40)
    {
      v40 = CFRetain(v40);
    }

    *(a1 + 96) = v40;
  }

  *(a1 + 120) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 128) = 0;
}

void EQKitLayoutContext::~EQKitLayoutContext(CGColorRef *this)
{
  *this = &unk_28696A9D0;
  EQKitLayoutContext::pInvalidateFonts(this);
  CGColorRelease(this[14]);
}

{
  EQKitLayoutContext::~EQKitLayoutContext(this);

  JUMPOUT(0x259C7CB70);
}

void EQKitLayoutContext::pInvalidateFonts(EQKitLayoutContext *this)
{
  v2 = *(this + 12);
  if (v2)
  {
    CFRelease(v2);
    *(this + 12) = 0;
  }

  v3 = *(this + 13);
  if (v3)
  {
    CFRelease(v3);
    *(this + 13) = 0;
  }
}

uint64_t EQKitLayoutContext::font(EQKitLayoutContext *this)
{
  result = *(this + 12);
  if (!result)
  {
    result = (*(**(this + 11) + 72))(*(this + 11), this + 8);
    *(this + 12) = result;
  }

  return result;
}

const __CTFont *EQKitLayoutContext::textFont(EQKitLayoutContext *this)
{
  v13[3] = *MEMORY[0x277D85DE8];
  result = *(this + 13);
  if (!result)
  {
    *(this + 13) = CTFontCreateWithName(*(this + 5), *(this + 10), 0);
    v3 = EQKit::Script::Info::symbolicFontTraits((this + 8));
    result = *(this + 13);
    if (v3)
    {
      v4 = CTFontCopyTraits(result);
      v5 = *MEMORY[0x277CC4948];
      if ([(__CFDictionary *)v4 objectForKeyedSubscript:*MEMORY[0x277CC4948]]!= v3)
      {
        v6 = CTFontCopyFamilyName(*(this + 13));
        v7 = *MEMORY[0x277CC48B8];
        v13[0] = v6;
        v8 = *MEMORY[0x277CC4938];
        v12[0] = v7;
        v12[1] = v8;
        v13[1] = [MEMORY[0x277CCABB0] numberWithDouble:*(this + 10)];
        v12[2] = *MEMORY[0x277CC4950];
        v10 = v5;
        v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v3];
        v13[2] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
        v9 = CTFontDescriptorCreateWithAttributes([MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:3]);
        CFRelease(*(this + 13));
        *(this + 13) = CTFontCreateWithFontDescriptor(v9, *(this + 10), 0);
        CFRelease(v9);
        CFRelease(v6);
      }

      CFRelease(v4);
      return *(this + 13);
    }
  }

  return result;
}

uint64_t EQKit::Script::Info::symbolicFontTraits(EQKit::Script::Info *this)
{
  v1 = *(this + 3) - 2;
  if (v1 > 0xC)
  {
    return 0;
  }

  else
  {
    return dword_2582D094C[v1];
  }
}

double EQKitLayoutContext::pComputeMathAxis(EQKitLayoutContext *this)
{
  v2 = (*(**(this + 11) + 56))(*(this + 11), 33, this + 8, 0.0);
  if (v2 == 0.0)
  {
    v4 = *(this + 12);
    if (v4 || (v4 = (*(**(this + 11) + 72))(*(this + 11), this + 8), (*(this + 12) = v4) != 0))
    {
      v5 = objc_alloc(MEMORY[0x277CBEAC0]);
      v4 = [v5 initWithObjectsAndKeys:{v4, *MEMORY[0x277CC4838], 0}];
    }

    v6 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:@"−" attributes:v4];
    v7 = CTLineCreateWithAttributedString(v6);
    FakeContext = EQKitUtilGetFakeContext();
    ImageBounds = CTLineGetImageBounds(v7, FakeContext);
    x = ImageBounds.origin.x;
    y = ImageBounds.origin.y;
    width = ImageBounds.size.width;
    height = ImageBounds.size.height;
    CFRelease(v7);

    v15.origin.x = x;
    v15.origin.y = y;
    v15.size.width = width;
    v15.size.height = height;
    *(this + 17) = CGRectGetMidY(v15);
    v16.origin.x = x;
    v16.origin.y = y;
    v16.size.width = width;
    v16.size.height = height;
    v3 = CGRectGetHeight(v16);
  }

  else
  {
    *(this + 17) = v2;
    (*(**(this + 11) + 56))(*(this + 11), 35, this + 8, 0.0);
  }

  *(this + 16) = v3;
  *(this + 120) |= 3u;
  return *(this + 17);
}

CGFloat EQKitLayoutContext::pComputeSlantAngle(EQKitLayoutContext *this)
{
  *(this + 120) |= 4u;
  v2 = *(this + 12);
  if (!v2)
  {
    v2 = (*(**(this + 11) + 72))(*(this + 11), this + 8);
    *(this + 12) = v2;
  }

  SlantAngle = CTFontGetSlantAngle(v2);
  result = (SlantAngle + SlantAngle) * 3.14159265 / 360.0;
  *(this + 18) = result;
  return result;
}

CGFloat EQKitLayoutContext::unitValue(const __CTFont **this, int a2)
{
  v3 = 1.0;
  if (a2 != 2)
  {
    if (a2 == 5)
    {
      if ((this[15] & 1) == 0)
      {
        EQKitLayoutContext::pComputeMathAxis(this);
      }

      return *(this + 16);
    }

    else if (a2 == 3)
    {
      return *(this + 3);
    }

    return v3;
  }

  v5 = this[12];
  if (!v5)
  {
    v5 = (*(*this[11] + 72))(this[11], this + 8);
    this[12] = v5;
    if (!v5)
    {
      return v3;
    }
  }

  return CTFontGetXHeight(v5);
}

uint64_t EQKit::AttributeCollection::getValueForKey<std::map<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,EQKit::ScriptLevel>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum>,std::__map_value_compare<EQKitTypes::Attributes::Enum,objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum,std::less<EQKitTypes::Attributes::Enum>,true>,std::allocator<objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum>>::find<EQKitTypes::Attributes::Enum>(a2, a3);
  v8 = v7;
  if (a2 + 8 != v7)
  {
    v9 = *(v7 + 48);
    v10 = *(v7 + 56);
LABEL_3:
    *(a4 + 8) = v10;
    *a4 = v9;
    return 1;
  }

  result = [*a3 isAttributeDefaultInheritableFromStyle:*(a3 + 8)];
  if (result)
  {
    result = [*a3 parent];
    if (result)
    {
      v12 = result;
      while (1)
      {
        v13 = [v12 layoutStyleNode];
        if (v13)
        {
          v15 = v13;
          v16 = *(a3 + 8);
          v14 = std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum>,std::__map_value_compare<EQKitTypes::Attributes::Enum,objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum,std::less<EQKitTypes::Attributes::Enum>,true>,std::allocator<objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum>>::find<EQKitTypes::Attributes::Enum>(a2, &v15);
          if (v8 != v14)
          {
            break;
          }
        }

        result = [v12 parent];
        v12 = result;
        if (!result)
        {
          return result;
        }
      }

      v9 = *(v14 + 48);
      v10 = *(v14 + 56);
      goto LABEL_3;
    }
  }

  return result;
}

uint64_t EQKit::AttributeCollection::getValueForKey<std::map<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,double>>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum>,std::__map_value_compare<EQKitTypes::Attributes::Enum,objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum,std::less<EQKitTypes::Attributes::Enum>,true>,std::allocator<objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum>>::find<EQKitTypes::Attributes::Enum>(a2, a3);
  v8 = v7;
  if (a2 + 8 != v7)
  {
    v9 = *(v7 + 48);
LABEL_3:
    *a4 = v9;
    return 1;
  }

  result = [*a3 isAttributeDefaultInheritableFromStyle:*(a3 + 8)];
  if (result)
  {
    result = [*a3 parent];
    if (result)
    {
      v11 = result;
      while (1)
      {
        v12 = [v11 layoutStyleNode];
        if (v12)
        {
          v14 = v12;
          v15 = *(a3 + 8);
          v13 = std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum>,std::__map_value_compare<EQKitTypes::Attributes::Enum,objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum,std::less<EQKitTypes::Attributes::Enum>,true>,std::allocator<objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum>>::find<EQKitTypes::Attributes::Enum>(a2, &v14);
          if (v8 != v13)
          {
            break;
          }
        }

        result = [v11 parent];
        v11 = result;
        if (!result)
        {
          return result;
        }
      }

      v9 = *(v13 + 48);
      goto LABEL_3;
    }
  }

  return result;
}

uint64_t EQKit::AttributeCollection::getValueForKey<std::map<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::CFRetainRelease>>(uint64_t a1, uint64_t a2, uint64_t a3, const void **a4)
{
  v7 = std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum>,std::__map_value_compare<EQKitTypes::Attributes::Enum,objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum,std::less<EQKitTypes::Attributes::Enum>,true>,std::allocator<objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum>>::find<EQKitTypes::Attributes::Enum>(a2, a3);
  v8 = v7;
  if (a2 + 8 != v7)
  {
    v9 = (v7 + 48);
LABEL_3:
    EQKitTypes::CFRetainRelease::operator=(a4, v9);
    return 1;
  }

  result = [*a3 isAttributeDefaultInheritableFromStyle:*(a3 + 8)];
  if (result)
  {
    result = [*a3 parent];
    if (result)
    {
      v11 = result;
      while (1)
      {
        v12 = [v11 layoutStyleNode];
        if (v12)
        {
          v14 = v12;
          v15 = *(a3 + 8);
          v13 = std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum>,std::__map_value_compare<EQKitTypes::Attributes::Enum,objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum,std::less<EQKitTypes::Attributes::Enum>,true>,std::allocator<objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum>>::find<EQKitTypes::Attributes::Enum>(a2, &v14);
          if (v8 != v13)
          {
            break;
          }
        }

        result = [v11 parent];
        v11 = result;
        if (!result)
        {
          return result;
        }
      }

      v9 = (v13 + 48);
      goto LABEL_3;
    }
  }

  return result;
}

const void **EQKitTypes::CFRetainRelease::operator=(const void **a1, CFTypeRef *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *a2;
  if (*a2)
  {
    v5 = CFRetain(v5);
  }

  *a1 = v5;
  return a1;
}

void EQKitTypes::CFRetainRelease::~CFRetainRelease(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

double EQKitLayoutElementaryStack::EQKitLayoutElementaryStack(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = a5;
  *(a1 + 32) = a6;
  result = 0.0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  return result;
}

uint64_t EQKitLayoutElementaryStack::EQKitLayoutElementaryStack(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = [*(a2 + 40) mutableCopy];
  *(a1 + 48) = [*(a2 + 48) mutableCopy];
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 152) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 72) = 0u;
  return a1;
}

EQKit::ILayout *EQKitLayoutElementaryStack::layout@<X0>(id *this@<X0>, EQKit::ILayout *a2@<X8>)
{
  v51 = *MEMORY[0x277D85DE8];
  EQKitLayoutElementaryStack::collectRows(this);
  if ([this[5] count])
  {
    if (!this[6])
    {
      this[6] = objc_alloc_init(MEMORY[0x277CBEB18]);
    }

    std::vector<double>::vector[abi:ne200100](&__p, this[7] + this[8]);
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v4 = this[5];
    v5 = [v4 countByEnumeratingWithState:&v43 objects:v50 count:16];
    if (v5)
    {
      v6 = *v44;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v44 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = *(*(&v43 + 1) + 8 * i);
          [v8 setFirstColumnIndex:{this[7] + objc_msgSend(v8, "alignmentShift")}];
          [v8 populateMaxColumnWidths:{__p + 8 * objc_msgSend(v8, "firstColumnIndex")}];
        }

        v5 = [v4 countByEnumeratingWithState:&v43 objects:v50 count:16];
      }

      while (v5);
    }

    v9 = __p;
    if (__p == v48)
    {
      v12 = 0.0;
    }

    else
    {
      v10 = 0.0;
      do
      {
        v11 = *v9++;
        v10 = v11 + v10;
      }

      while (v9 != v48);
      v12 = v10;
    }

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v14 = this[5];
    v15 = [v14 countByEnumeratingWithState:&v39 objects:v49 count:16];
    v34 = a2;
    v16 = 0;
    if (v15)
    {
      v17 = 0;
      v18 = 0;
      v19 = *v40;
      do
      {
        v20 = 0;
        v35 = &v17[v15];
        v21 = v18;
        do
        {
          if (*v40 != v19)
          {
            objc_enumerationMutation(v14);
          }

          v18 = *(*(&v39 + 1) + 8 * v20);
          if (v17 == this[2])
          {
            v16 = [this[6] count];
          }

          EQKitLayoutElementaryStack::layoutForRow(this, v18, v21, &__p, &v37, v12);
          if (v17 == this[3])
          {
            v22 = [EQKitHVSpace alloc];
            [v37 width];
            v24 = v23;
            [v37 height];
            v26 = v25;
            [v37 depth];
            v28 = [(EQKitHVSpace *)v22 initWithWidth:v24 height:v26 depth:v27];
            EQKit::ILayout::ILayout(v36, v28);
            EQKit::ILayout::operator=(&v37, v36);
            EQKit::ILayout::~ILayout(v36);
          }

          [this[6] addObject:{v37, v34}];
          if (++v17 < [this[5] count])
          {
            v29 = [EQKitVSpace alloc];
            [v18 followingSpace];
            v30 = [EQKitVSpace initWithHeight:v29 depth:"initWithHeight:depth:"];
            [this[6] addObject:v30];
          }

          EQKit::ILayout::~ILayout(&v37);
          ++v20;
          v21 = v18;
        }

        while (v15 != v20);
        v15 = [v14 countByEnumeratingWithState:&v39 objects:v49 count:16];
        v17 = v35;
      }

      while (v15);
    }

    a2 = v34;
    if (this[2] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v31 = [[EQKitVBox alloc] initWithChildBoxes:this[6]];
      v36[0] = 0;
      v32 = *(*this + 77);
      v37 = EQKitLayoutManager::currentNode(*this);
      v38 = 2;
      EQKit::AttributeCollection::getValueForKey<std::map<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum>>(v32, v32 + 152, &v37, v36);
      v13 = EQKitLayoutManager::baselineAlignBox(*this, v31, v36[0]);
    }

    else
    {
      v13 = [[EQKitVBox alloc] initWithChildBoxes:this[6] pivotIndex:v16];
    }

    if (__p)
    {
      v48 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v13 = 0;
  }

  return EQKit::ILayout::ILayout(a2, &v13->super.super);
}

void sub_258274AC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *__p, uint64_t a43)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t EQKitLayoutElementaryStack::collectRows(id *this)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [this[1] schemataChildren];
  result = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        EQKitLayoutManager::layoutBox(*this, *(*(&v8 + 1) + 8 * v6), 0, v7);
        EQKit::ILayout::~ILayout(v7);
        ++v6;
      }

      while (v4 != v6);
      result = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      v4 = result;
    }

    while (result);
  }

  return result;
}

void EQKitLayoutElementaryStack::layoutForRow(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, EQKit::ILayout *a5@<X8>, double a6@<D0>)
{
  v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (([a2 spansStack] & 1) == 0)
  {
    v13 = *a4;
    v14 = [a2 firstColumnIndex];
    if (v14)
    {
      v15 = &v13[v14];
      v16 = 0.0;
      do
      {
        v17 = *v13++;
        v16 = v17 + v16;
      }

      while (v13 != v15);
      v18 = v16;
    }

    else
    {
      v18 = 0.0;
    }

    v19 = [[EQKitHSpace alloc] initWithWidth:v18];
    [v12 addObject:v19];
  }

  v20 = [a2 newBoxWithStackWidth:*a4 + 8 * objc_msgSend(a2 columnWidthIter:"firstColumnIndex") iterMax:*(a4 + 8) previousRow:a3 layoutManager:{*a1, a6}];
  [v12 addObject:v20];

  v21 = [(EQKitCompoundBox *)[EQKitHBox alloc] initWithChildBoxes:v12];
  EQKit::ILayout::ILayout(a5, &v21->super.super);
}

EQKit::ILayout *EQKitLayoutElementaryStack::layoutStackGroup@<X0>(void *a1@<X0>, void *a2@<X1>, EQKit::ILayout *a3@<X8>)
{
  v27 = *MEMORY[0x277D85DE8];
  v23 = 0;
  v7 = a1 + 9;
  v6 = *a1;
  v8 = *(v6 + 77);
  v24 = EQKitLayoutManager::currentNode(v6);
  v25 = 21;
  EQKit::AttributeCollection::getValueForKey<std::map<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,long>>(v8, v8 + 392, &v24, &v23);
  v9 = EQKitLayoutElementaryStack::shiftPosition(a1);
  v24 = v23 + v9;
  std::deque<long>::push_back(v7, &v24);
  v22 = 0;
  v10 = *(*a1 + 616);
  v24 = EQKitLayoutManager::currentNode(*a1);
  v25 = 22;
  EQKit::AttributeCollection::getValueForKey<std::map<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,long>>(v10, v10 + 392, &v24, &v22);
  std::deque<long>::push_back(a1 + 15, &v22);
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = [a2 schemataChildren];
  v12 = [v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    do
    {
      v15 = 0;
      do
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v11);
        }

        EQKitLayoutManager::layoutBox(*a1, *(*(&v18 + 1) + 8 * v15), 0, v17);
        EQKit::ILayout::~ILayout(v17);
        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v13);
  }

  --a1[14];
  std::deque<objc_object  {objcproto15EQKitLayoutNode}*>::__maybe_remove_back_spare[abi:ne200100](v7, 1);
  --a1[20];
  std::deque<objc_object  {objcproto15EQKitLayoutNode}*>::__maybe_remove_back_spare[abi:ne200100](a1 + 15, 1);
  return EQKit::ILayout::ILayout(a3, 0);
}

uint64_t EQKitLayoutElementaryStack::shiftPosition(EQKitLayoutElementaryStack *this)
{
  v1 = *(this + 14);
  if (!v1)
  {
    return 0;
  }

  v3 = *(this + 20);
  if (!v3)
  {
    return 0;
  }

  v4 = v1 - 1;
  v5 = *(*(*(this + 10) + (((*(this + 13) + v4) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(this + 13) + v4) & 0x1FF));
  v7 = *(*(*(this + 16) + (((v3 + *(this + 19) - 1) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v3 + *(this + 19) - 1) & 0x1FF)) + v5;
  *(this + 14) = v4;
  std::deque<objc_object  {objcproto15EQKitLayoutNode}*>::__maybe_remove_back_spare[abi:ne200100](this + 9, 1);
  std::deque<long>::push_back(this + 9, &v7);
  return v5;
}

EQKit::ILayout *EQKitLayoutElementaryStack::layoutStackRow@<X0>(EQKitLayoutManager **a1@<X0>, void *a2@<X1>, EQKit::ILayout *a3@<X8>)
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v6 = [a2 schemataChildren];
  v7 = [v6 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (!v7)
  {
    goto LABEL_17;
  }

  v8 = *v29;
  v9 = 0x7FFFFFFFLL;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v29 != v8)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v28 + 1) + 8 * i);
      if ([v11 isNumber])
      {
        v27 = 0;
        v12 = *a1;
        if (v11)
        {
          [v11 layoutSchemata];
        }

        else
        {
          memset(v26, 0, 32);
        }

        v13 = EQKitLayoutManager::layoutNumberDigits(v12, v26, &v27);
        EQKit::Layout::Schemata::~Schemata(v26);
        if (v9 == 0x7FFFFFFF)
        {
          v14 = [v5 count];
          v9 = v27 + v14;
        }

        [v5 addObjectsFromArray:v13];
      }

      else
      {
        EQKitLayoutManager::layoutBox(*a1, v11, 0, v26);
        [v5 addObject:*&v26[0]];
        EQKit::ILayout::~ILayout(v26);
      }
    }

    v7 = [v6 countByEnumeratingWithState:&v28 objects:v32 count:16];
  }

  while (v7);
  if (v9 == 0x7FFFFFFF)
  {
LABEL_17:
    v9 = [v5 count];
  }

  v27 = 0;
  v15 = *(*a1 + 77);
  *&v26[0] = EQKitLayoutManager::currentNode(*a1);
  DWORD2(v26[0]) = 21;
  EQKit::AttributeCollection::getValueForKey<std::map<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,long>>(v15, v15 + 392, v26, &v27);
  v16 = [EQKitLayoutElementaryStackDigitRow alloc];
  v17 = EQKitLayoutElementaryStack::shiftPosition(a1);
  v18 = v27;
  v19 = EQKitLayoutManager::layoutContext(*a1);
  v21 = v19;
  v22 = *(v19 + 88);
  if (*(v19 + 120))
  {
    v20.n128_u64[0] = *(v19 + 128);
  }

  else
  {
    v20.n128_f64[0] = EQKitLayoutContext::pComputeRuleThickness(v19);
  }

  (*(*v22 + 56))(v22, 16, v21 + 8, v20);
  v23 = [(EQKitLayoutElementaryStackDigitRow *)v16 initWithChildren:v5 decimalPoint:v9 position:v18 + v17 followingSpace:?];
  EQKitLayoutElementaryStack::addRow(a1, v23);

  return EQKit::ILayout::ILayout(a3, 0);
}

void sub_2582752D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  EQKit::ILayout::~ILayout(va);
  _Unwind_Resume(a1);
}

uint64_t EQKitLayoutElementaryStack::addRow(void *a1, void *a2)
{
  v4 = a1[5];
  if (!v4)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    a1[5] = v4;
  }

  [v4 addObject:a2];
  v5 = [a2 alignmentShift];
  if (a1[7] <= -v5)
  {
    v6 = -v5;
  }

  else
  {
    v6 = a1[7];
  }

  a1[7] = v6;
  v7 = [a2 alignmentShift];
  result = [a2 columnCount];
  v9 = result + v7;
  if (a1[8] > result + v7)
  {
    v9 = a1[8];
  }

  a1[8] = v9;
  return result;
}

EQKit::ILayout *EQKitLayoutElementaryStack::layoutStackLine@<X0>(uint64_t a1@<X0>, EQKit::ILayout *a2@<X8>)
{
  v4 = *(a1 + 32);
  if (v4 <= 0.0)
  {
    v5 = EQKitLayoutManager::layoutContext(*a1);
    if (*(v5 + 120))
    {
      v4 = *(v5 + 128);
    }

    else
    {
      v4 = EQKitLayoutContext::pComputeRuleThickness(v5);
    }
  }

  v19 = 0;
  v6 = *(*a1 + 616);
  v20 = EQKitLayoutManager::currentNode(*a1);
  v21 = 21;
  EQKit::AttributeCollection::getValueForKey<std::map<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,long>>(v6, v6 + 392, &v20, &v19);
  v18 = 0;
  v7 = *(*a1 + 616);
  v20 = EQKitLayoutManager::currentNode(*a1);
  v21 = 23;
  EQKit::AttributeCollection::getValueForKey<std::map<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,long>>(v7, v7 + 416, &v20, &v18);
  v8 = [EQKitLayoutElementaryStackLineRow alloc];
  v9 = v18;
  v10 = EQKitLayoutElementaryStack::shiftPosition(a1);
  v11 = v19;
  v12 = EQKitLayoutManager::layoutContext(*a1);
  v14 = v12;
  v15 = *(v12 + 88);
  if (*(v12 + 120))
  {
    v13.n128_u64[0] = *(v12 + 128);
  }

  else
  {
    v13.n128_f64[0] = EQKitLayoutContext::pComputeRuleThickness(v12);
  }

  v16 = [(EQKitLayoutElementaryStackLineRow *)v8 initWithLength:v9 thickness:v11 + v10 position:v4 followingSpace:(*(*v15 + 56))(v15, 16, v14 + 8, v13)];
  EQKitLayoutElementaryStack::addRow(a1, v16);

  return EQKit::ILayout::ILayout(a2, 0);
}

void EQKitLayoutElementaryStack::layoutStackCarries(EQKitLayoutManager **a1@<X0>, void *a2@<X1>, EQKit::ILayout *a3@<X8>)
{
  v47 = *MEMORY[0x277D85DE8];
  v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v37 = 0;
  v38 = &v37;
  v39 = 0x4812000000;
  v40 = __Block_byref_object_copy_;
  v41 = __Block_byref_object_dispose_;
  v42 = &unk_258307BEB;
  v44 = 0;
  v45 = 0;
  v43 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v5 = *(*a1 + 77);
  v24 = EQKitLayoutManager::currentNode(*a1);
  v25 = 34;
  EQKit::AttributeCollection::getValueForKey<std::map<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,std::vector<objc_object  {objcproto15EQKitLayoutNode}*::Notation::Enum>,std::less<EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Notation::Enum<std::pair<EQKitTypes::Attributes::Enum const>>>>(v5, v5 + 200, &v24, &v30);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v6 = [a2 schemataChildren];
  v7 = [v6 countByEnumeratingWithState:&v26 objects:v46 count:16];
  if (v7)
  {
    v8 = *v27;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v27 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v26 + 1) + 8 * i);
        v11 = *a1;
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3321888768;
        v20[2] = ___ZN26EQKitLayoutElementaryStack18layoutStackCarriesEPU42objcproto31EQKitLayoutSchemataStackCarries11objc_object_block_invoke;
        v20[3] = &unk_28696AA18;
        v20[7] = a1;
        v20[4] = v10;
        v20[5] = &v37;
        v22 = 0;
        v23 = 0;
        __p = 0;
        std::vector<EQKitTypes::Crossout::Enum>::__init_with_size[abi:ne200100]<EQKitTypes::Crossout::Enum*,EQKitTypes::Crossout::Enum*>(&__p, v30, v31, (v31 - v30) >> 2);
        v20[6] = &v33;
        EQKitLayoutManager::layoutBox(v11, v10, 1, 0, 0, 0, v20, &v24);
        [v18 addObject:v24];
        EQKit::ILayout::~ILayout(&v24);
        if (__p)
        {
          v22 = __p;
          operator delete(__p);
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v26 objects:v46 count:16];
    }

    while (v7);
  }

  v19 = 0;
  v12 = *(*a1 + 77);
  v24 = EQKitLayoutManager::currentNode(*a1);
  v25 = 21;
  EQKit::AttributeCollection::getValueForKey<std::map<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,long>>(v12, v12 + 392, &v24, &v19);
  v13 = [EQKitLayoutElementaryStackCarryRow alloc];
  v14 = [v18 count];
  v15 = EQKitLayoutElementaryStack::shiftPosition(a1);
  v16 = [(EQKitLayoutElementaryStackCarryRow *)v13 initWithChildren:v18 decimalPoint:v14 position:v19 + v15 followingSpace:v38 + 6 crossouts:v34[3]];
  EQKitLayoutElementaryStack::addRow(a1, v16);

  EQKit::ILayout::ILayout(a3, 0);
  if (v30)
  {
    v31 = v30;
    operator delete(v30);
  }

  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v37, 8);
  if (v43)
  {
    v44 = v43;
    operator delete(v43);
  }
}

void sub_258275864(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *__p, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(&a47, 8);
  if (a53)
  {
    a54 = a53;
    operator delete(a53);
  }

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy_(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void __Block_byref_object_dispose_(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void ___ZN26EQKitLayoutElementaryStack18layoutStackCarriesEPU42objcproto31EQKitLayoutSchemataStackCarries11objc_object_block_invoke(void *a1, uint64_t a2)
{
  if (a1[4] != a2)
  {
    return;
  }

  v3 = a1[7];
  __p = 0;
  v26 = 0;
  v27 = 0;
  v4 = *(*v3 + 77);
  v28 = a2;
  v29 = 34;
  EQKit::AttributeCollection::getValueForKey<std::map<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,std::vector<objc_object  {objcproto15EQKitLayoutNode}*::Notation::Enum>,std::less<EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Notation::Enum<std::pair<EQKitTypes::Attributes::Enum const>>>>(v4, v4 + 200, &v28, &__p);
  v5 = __p;
  if (__p == v26)
  {
    v5 = a1[8];
    v7 = *(a1[5] + 8);
    v6 = (v7 + 6);
    if (v5 == a1[9])
    {
      v15 = v7[7];
      v14 = v7[8];
      if (v15 >= v14)
      {
        v17 = *v6;
        v18 = v15 - *v6;
        v19 = v18 >> 2;
        v20 = (v18 >> 2) + 1;
        if (v20 >> 62)
        {
          std::vector<std::string>::__throw_length_error[abi:ne200100]();
        }

        v21 = v14 - v17;
        if (v21 >> 1 > v20)
        {
          v20 = v21 >> 1;
        }

        v22 = v21 >= 0x7FFFFFFFFFFFFFFCLL;
        v23 = 0x3FFFFFFFFFFFFFFFLL;
        if (!v22)
        {
          v23 = v20;
        }

        if (v23)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<wchar_t>>(v6, v23);
        }

        *(4 * v19) = 0;
        v16 = 4 * v19 + 4;
        memcpy(0, v17, v18);
        v24 = v7[6];
        v7[6] = 0;
        v7[7] = v16;
        v7[8] = 0;
        if (v24)
        {
          operator delete(v24);
        }
      }

      else
      {
        *v15 = 0;
        v16 = (v15 + 4);
      }

      v7[7] = v16;
      goto LABEL_6;
    }
  }

  else
  {
    v6 = (*(a1[5] + 8) + 48);
  }

  std::vector<EQKitTypes::Crossout::Enum>::push_back[abi:ne200100](v6, v5);
LABEL_6:
  v8 = *(a1[6] + 8);
  v9 = EQKitLayoutManager::layoutContext(*v3);
  v11 = v9;
  v12 = *(v9 + 88);
  if (*(v9 + 120))
  {
    v10.n128_u64[0] = *(v9 + 128);
  }

  else
  {
    v10.n128_f64[0] = EQKitLayoutContext::pComputeRuleThickness(v9);
  }

  v13 = (*(*v12 + 56))(v12, 16, v11 + 8, v10);
  if (*(v8 + 24) >= v13)
  {
    v13 = *(v8 + 24);
  }

  *(*(a1[6] + 8) + 24) = v13;
  if (__p)
  {
    v26 = __p;
    operator delete(__p);
  }
}

void sub_258275B08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<EQKitTypes::Crossout::Enum>::push_back[abi:ne200100](const void **a1, _DWORD *a2)
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
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<wchar_t>>(a1, v12);
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
}

uint64_t __copy_helper_block_e8_64c68_ZTSNSt3__16vectorIN10EQKitTypes8Crossout4EnumENS_9allocatorIS3_EEEE(uint64_t a1, uint64_t a2)
{
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  v2 = a1 + 64;
  *(v2 + 16) = 0;
  return std::vector<EQKitTypes::Crossout::Enum>::__init_with_size[abi:ne200100]<EQKitTypes::Crossout::Enum*,EQKitTypes::Crossout::Enum*>(v2, *(a2 + 64), *(a2 + 72), (*(a2 + 72) - *(a2 + 64)) >> 2);
}

void __destroy_helper_block_e8_64c68_ZTSNSt3__16vectorIN10EQKitTypes8Crossout4EnumENS_9allocatorIS3_EEEE(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    *(a1 + 72) = v2;
    operator delete(v2);
  }
}

void EQKitLayoutElementaryStack::layoutStackCarry(EQKitLayoutManager **a1@<X0>, void *a2@<X1>, EQKit::ILayout *a3@<X8>)
{
  v16 = *MEMORY[0x277D85DE8];
  EQKitLayoutManager::beginRow(*a1, 0, 1);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = [a2 schemataChildren];
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        EQKitLayoutManager::layout(*a1, *(*(&v11 + 1) + 8 * v10++), 0);
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }

  EQKitLayoutManager::endRow(*a1, a3);
}

double EQKitLayoutElementaryStack::baselineForRowAtIndex(id *this, unint64_t a2)
{
  if (![this[6] count])
  {
    return 0.0;
  }

  v4 = 0;
  v5 = 0;
  v6 = 0.0;
  do
  {
    v7 = [this[6] objectAtIndex:v4];
    if (v5 >= a2)
    {
      [v7 height];
    }

    else
    {
      [v7 vsize];
    }

    v6 = v6 + v8;
    if ((v4 & 1) == 0 && v5 == a2)
    {
      break;
    }

    if ((v4 & 1) == 0 && v5 != a2)
    {
      ++v5;
    }

    ++v4;
  }

  while (v4 < [this[6] count]);
  return v6;
}

void *std::vector<double>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<unsigned long>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_258276614(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t EQKit::AttributeCollection::getValueForKey<std::map<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,long>>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum>,std::__map_value_compare<EQKitTypes::Attributes::Enum,objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum,std::less<EQKitTypes::Attributes::Enum>,true>,std::allocator<objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum>>::find<EQKitTypes::Attributes::Enum>(a2, a3);
  v8 = v7;
  if (a2 + 8 != v7)
  {
    v9 = *(v7 + 48);
LABEL_3:
    *a4 = v9;
    return 1;
  }

  result = [*a3 isAttributeDefaultInheritableFromStyle:*(a3 + 8)];
  if (result)
  {
    result = [*a3 parent];
    if (result)
    {
      v11 = result;
      while (1)
      {
        v12 = [v11 layoutStyleNode];
        if (v12)
        {
          v14 = v12;
          v15 = *(a3 + 8);
          v13 = std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum>,std::__map_value_compare<EQKitTypes::Attributes::Enum,objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum,std::less<EQKitTypes::Attributes::Enum>,true>,std::allocator<objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum>>::find<EQKitTypes::Attributes::Enum>(a2, &v14);
          if (v8 != v13)
          {
            break;
          }
        }

        result = [v11 parent];
        v11 = result;
        if (!result)
        {
          return result;
        }
      }

      v9 = *(v13 + 48);
      goto LABEL_3;
    }
  }

  return result;
}

uint64_t std::vector<EQKitTypes::Crossout::Enum>::__init_with_size[abi:ne200100]<EQKitTypes::Crossout::Enum*,EQKitTypes::Crossout::Enum*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<EQKitTypes::Notation::Enum>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_258276760(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::deque<long>::push_back(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  v5 = result[1];
  v6 = ((v4 - v5) << 6) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = result[5] + result[4];
  if (v6 == v7)
  {
    result = std::deque<long>::__add_back_capacity(result);
    v5 = v3[1];
    v7 = v3[5] + v3[4];
  }

  *(*(v5 + ((v7 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v7 & 0x1FF)) = *a2;
  ++v3[5];
  return result;
}

void *std::deque<long>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long *>>(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<unsigned long *>::emplace_back<unsigned long *&>(a1, &v10);
}

void sub_258276990(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void EQKit::Layout::Schemata::~Schemata(id *this)
{
  *this = &unk_28696AA58;
}

{
  EQKit::Layout::Schemata::~Schemata(this);

  JUMPOUT(0x259C7CB70);
}

uint64_t EQKit::Layout::Schemata::Schemata(uint64_t this)
{
  *this = &unk_28696AA58;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

uint64_t EQKit::Layout::Schemata::operator=(uint64_t a1, uint64_t a2)
{
  if (a2 != a1)
  {

    *(a1 + 8) = *(a2 + 8);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 24) = [*(a2 + 24) copy];
  }

  return a1;
}

id EQKit::Layout::Schemata::phantom@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_28696AA58;
  *(a2 + 8) = 3;
  result = a1;
  *(a2 + 16) = result;
  *(a2 + 24) = 0;
  return result;
}

id EQKit::Layout::Schemata::ident@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_28696AA58;
  *(a2 + 8) = 8;
  result = a1;
  *(a2 + 16) = result;
  *(a2 + 24) = 0;
  return result;
}

id EQKit::Layout::Schemata::oper@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_28696AA58;
  *(a2 + 8) = 10;
  result = a1;
  *(a2 + 16) = result;
  *(a2 + 24) = 0;
  return result;
}

id EQKit::Layout::Schemata::operFontStretch@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_28696AA58;
  *(a2 + 8) = 11;
  result = a1;
  *(a2 + 16) = result;
  *(a2 + 24) = 0;
  return result;
}

id EQKit::Layout::Schemata::text@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_28696AA58;
  *(a2 + 8) = 22;
  result = a1;
  *(a2 + 16) = result;
  *(a2 + 24) = 0;
  return result;
}

id EQKit::Layout::Schemata::num@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_28696AA58;
  *(a2 + 8) = 9;
  result = a1;
  *(a2 + 16) = result;
  *(a2 + 24) = 0;
  return result;
}

id EQKit::Layout::Schemata::fraction@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_28696AA58;
  *(a2 + 8) = 7;
  result = a1;
  *(a2 + 16) = result;
  *(a2 + 24) = 0;
  return result;
}

id EQKit::Layout::Schemata::subsuperscript@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_28696AA58;
  *(a2 + 8) = 4;
  result = a1;
  *(a2 + 16) = result;
  *(a2 + 24) = 0;
  return result;
}

id EQKit::Layout::Schemata::underover@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_28696AA58;
  *(a2 + 8) = 5;
  result = a1;
  *(a2 + 16) = result;
  *(a2 + 24) = 0;
  return result;
}

id EQKit::Layout::Schemata::radical@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_28696AA58;
  *(a2 + 8) = 6;
  result = a1;
  *(a2 + 16) = result;
  *(a2 + 24) = 0;
  return result;
}

id EQKit::Layout::Schemata::stack@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_28696AA58;
  *(a2 + 8) = 12;
  result = a1;
  *(a2 + 16) = result;
  *(a2 + 24) = 0;
  return result;
}

id EQKit::Layout::Schemata::stackGroup@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_28696AA58;
  *(a2 + 8) = 13;
  result = a1;
  *(a2 + 16) = result;
  *(a2 + 24) = 0;
  return result;
}

id EQKit::Layout::Schemata::stackRow@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_28696AA58;
  *(a2 + 8) = 14;
  result = a1;
  *(a2 + 16) = result;
  *(a2 + 24) = 0;
  return result;
}

id EQKit::Layout::Schemata::stackLine@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_28696AA58;
  *(a2 + 8) = 15;
  result = a1;
  *(a2 + 16) = result;
  *(a2 + 24) = 0;
  return result;
}

id EQKit::Layout::Schemata::stackCarries@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_28696AA58;
  *(a2 + 8) = 16;
  result = a1;
  *(a2 + 16) = result;
  *(a2 + 24) = 0;
  return result;
}

id EQKit::Layout::Schemata::stackCarry@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_28696AA58;
  *(a2 + 8) = 17;
  result = a1;
  *(a2 + 16) = result;
  *(a2 + 24) = 0;
  return result;
}

id EQKit::Layout::Schemata::longDivision@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_28696AA58;
  *(a2 + 8) = 18;
  result = a1;
  *(a2 + 16) = result;
  *(a2 + 24) = 0;
  return result;
}

id EQKit::Layout::Schemata::table@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_28696AA58;
  *(a2 + 8) = 19;
  result = a1;
  *(a2 + 16) = result;
  *(a2 + 24) = 0;
  return result;
}

id EQKit::Layout::Schemata::tableRow@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_28696AA58;
  *(a2 + 8) = 20;
  result = a1;
  *(a2 + 16) = result;
  *(a2 + 24) = 0;
  return result;
}

id EQKit::Layout::Schemata::padded@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_28696AA58;
  *(a2 + 8) = 23;
  result = a1;
  *(a2 + 16) = result;
  *(a2 + 24) = 0;
  return result;
}

id EQKit::Layout::Schemata::space@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_28696AA58;
  *(a2 + 8) = 24;
  result = a1;
  *(a2 + 16) = result;
  *(a2 + 24) = 0;
  return result;
}

id EQKit::Layout::Schemata::fenced@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_28696AA58;
  *(a2 + 8) = 25;
  result = a1;
  *(a2 + 16) = result;
  *(a2 + 24) = 0;
  return result;
}

id EQKit::Layout::Schemata::enclose@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_28696AA58;
  *(a2 + 8) = 28;
  result = a1;
  *(a2 + 16) = result;
  *(a2 + 24) = 0;
  return result;
}

void EQKit::Layout::Schemata::alignGroup(uint64_t a1@<X8>)
{
  *a1 = &unk_28696AA58;
  *(a1 + 8) = 26;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
}

void EQKit::Layout::Schemata::alignMark(uint64_t a1@<X8>)
{
  *a1 = &unk_28696AA58;
  *(a1 + 8) = 27;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
}

void EQKit::Layout::Schemata::none(uint64_t a1@<X8>)
{
  *a1 = &unk_28696AA58;
  *(a1 + 8) = 21;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
}

uint64_t EQKit::Layout::Schemata::subsuperscriptSchemata(EQKit::Layout::Schemata *this)
{
  if (*(this + 2) == 4)
  {
    return *(this + 2);
  }

  else
  {
    return 0;
  }
}

uint64_t EQKit::Layout::Schemata::underoverSchemata(EQKit::Layout::Schemata *this)
{
  if (*(this + 2) == 5)
  {
    return *(this + 2);
  }

  else
  {
    return 0;
  }
}

uint64_t EQKit::Layout::Schemata::tableSchemata(EQKit::Layout::Schemata *this)
{
  if (*(this + 2) == 19)
  {
    return *(this + 2);
  }

  else
  {
    return 0;
  }
}

uint64_t EQKit::Layout::Schemata::tableRowSchemata(EQKit::Layout::Schemata *this)
{
  if (*(this + 2) == 20)
  {
    return *(this + 2);
  }

  else
  {
    return 0;
  }
}

uint64_t EQKit::Layout::Schemata::stackSchemata(EQKit::Layout::Schemata *this)
{
  if (*(this + 2) == 12)
  {
    return *(this + 2);
  }

  else
  {
    return 0;
  }
}

uint64_t EQKit::Layout::Schemata::stackGroupSchemata(EQKit::Layout::Schemata *this)
{
  if (*(this + 2) == 13)
  {
    return *(this + 2);
  }

  else
  {
    return 0;
  }
}

uint64_t EQKit::Layout::Schemata::stackRowSchemata(EQKit::Layout::Schemata *this)
{
  if (*(this + 2) == 14)
  {
    return *(this + 2);
  }

  else
  {
    return 0;
  }
}

uint64_t EQKit::Layout::Schemata::radicalSchemata(EQKit::Layout::Schemata *this)
{
  if (*(this + 2) == 6)
  {
    return *(this + 2);
  }

  else
  {
    return 0;
  }
}

uint64_t EQKit::Layout::Schemata::textSchemata(EQKit::Layout::Schemata *this)
{
  if (*(this + 2) == 22)
  {
    return *(this + 2);
  }

  else
  {
    return 0;
  }
}

uint64_t EQKit::Layout::Schemata::stackLineSchemata(EQKit::Layout::Schemata *this)
{
  if (*(this + 2) == 15)
  {
    return *(this + 2);
  }

  else
  {
    return 0;
  }
}

uint64_t EQKit::Layout::Schemata::stackCarriesSchemata(EQKit::Layout::Schemata *this)
{
  if (*(this + 2) == 16)
  {
    return *(this + 2);
  }

  else
  {
    return 0;
  }
}

uint64_t EQKit::Layout::Schemata::stackCarrySchemata(EQKit::Layout::Schemata *this)
{
  if (*(this + 2) == 17)
  {
    return *(this + 2);
  }

  else
  {
    return 0;
  }
}

uint64_t EQKit::Layout::Schemata::tokenSchemata(EQKit::Layout::Schemata *this)
{
  if ((*(this + 2) & 0xFFFFFFFC) == 8)
  {
    return *(this + 2);
  }

  else
  {
    return 0;
  }
}

uint64_t EQKit::Layout::Schemata::phantomSchemata(EQKit::Layout::Schemata *this)
{
  if (*(this + 2) == 3)
  {
    return *(this + 2);
  }

  else
  {
    return 0;
  }
}

uint64_t EQKit::Layout::Schemata::operatorSchemata(EQKit::Layout::Schemata *this)
{
  if ((*(this + 2) & 0xFFFFFFFE) == 0xA)
  {
    return *(this + 2);
  }

  else
  {
    return 0;
  }
}

uint64_t EQKit::Layout::Schemata::fractionSchemata(EQKit::Layout::Schemata *this)
{
  if (*(this + 2) == 7)
  {
    return *(this + 2);
  }

  else
  {
    return 0;
  }
}

uint64_t EQKit::Layout::Schemata::longDivisionSchemata(EQKit::Layout::Schemata *this)
{
  if (*(this + 2) == 18)
  {
    return *(this + 2);
  }

  else
  {
    return 0;
  }
}

uint64_t EQKit::Layout::Schemata::paddedSchemata(EQKit::Layout::Schemata *this)
{
  if (*(this + 2) == 23)
  {
    return *(this + 2);
  }

  else
  {
    return 0;
  }
}

uint64_t EQKit::Layout::Schemata::fencedSchemata(EQKit::Layout::Schemata *this)
{
  if (*(this + 2) == 25)
  {
    return *(this + 2);
  }

  else
  {
    return 0;
  }
}

uint64_t EQKit::Layout::Schemata::encloseSchemata(EQKit::Layout::Schemata *this)
{
  if (*(this + 2) == 28)
  {
    return *(this + 2);
  }

  else
  {
    return 0;
  }
}

id EQKit::Layout::Schemata::node@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_28696AA58;
  *(a2 + 8) = 1;
  result = a1;
  *(a2 + 16) = result;
  *(a2 + 24) = 0;
  return result;
}

uint64_t EQKit::Layout::Schemata::nodeSchemata(EQKit::Layout::Schemata *this)
{
  if (*(this + 2) == 1)
  {
    return *(this + 2);
  }

  else
  {
    return 0;
  }
}

uint64_t EQKit::Layout::Schemata::row@<X0>(EQKit::Layout::Schemata *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_28696AA58;
  *(a2 + 8) = 2;
  *(a2 + 16) = 0;
  result = [(EQKit::Layout::Schemata *)this copy];
  *(a2 + 24) = result;
  return result;
}

uint64_t EQKit::Layout::Schemata::children(EQKit::Layout::Schemata *this)
{
  if (*(this + 2) != 2)
  {
    return 0;
  }

  v1 = *(this + 3);
  if (!v1)
  {
    return [*(this + 2) schemataChildren];
  }

  return v1;
}

uint64_t EQKit::Layout::Schemata::automaticSourceAttribution(EQKit::Layout::Schemata *this)
{
  v1 = *(this + 2);
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 1;
  }

  return [v1 schemataAutomaticSourceAttribution];
}

double swap(EQKitLayoutRow *a1, EQKitLayoutRow *a2)
{
  v4 = *a1;
  *a1 = *a2;
  *a2 = v4;
  v5 = *(a1 + 1);
  *(a1 + 1) = *(a2 + 1);
  *(a2 + 1) = v5;
  v6 = *(a1 + 2);
  *(a1 + 2) = *(a2 + 2);
  *(a2 + 2) = v6;
  v7 = *(a1 + 3);
  *(a1 + 3) = *(a2 + 3);
  *(a2 + 3) = v7;
  v8 = *(a1 + 4);
  *(a1 + 4) = *(a2 + 4);
  *(a2 + 4) = v8;
  v9 = *(a1 + 5);
  *(a1 + 5) = *(a2 + 5);
  *(a2 + 5) = v9;
  v10 = *(a1 + 6);
  *(a1 + 6) = *(a2 + 6);
  *(a2 + 6) = v10;
  v11 = *(a1 + 7);
  *(a1 + 7) = *(a2 + 7);
  *(a2 + 7) = v11;
  v12 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);
  *(a2 + 8) = v12;
  std::__tree<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::__map_value_compare<EQKit::ILayoutOffset::Kind,std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::less<EQKit::ILayoutOffset::Kind>,true>,std::allocator<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>>>::swap(a1 + 9, a2 + 72);
  v13 = *(a1 + 12);
  *(a1 + 12) = *(a2 + 12);
  *(a2 + 12) = v13;
  v14 = *(a1 + 13);
  *(a1 + 13) = *(a2 + 13);
  *(a2 + 13) = v14;
  v15 = *(a1 + 14);
  *(a1 + 14) = *(a2 + 14);
  *(a2 + 14) = v15;
  v16 = *(a1 + 15);
  *(a1 + 15) = *(a2 + 15);
  *(a2 + 15) = v16;
  v17 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 16) = v17;
  v18 = *(a1 + 17);
  *(a1 + 17) = *(a2 + 17);
  *(a2 + 17) = v18;
  result = *(a1 + 18);
  *(a1 + 18) = *(a2 + 18);
  *(a2 + 18) = result;
  LODWORD(v18) = *(a1 + 38);
  *(a1 + 38) = *(a2 + 38);
  *(a2 + 38) = v18;
  LOBYTE(v18) = *(a1 + 156);
  *(a1 + 156) = *(a2 + 156);
  *(a2 + 156) = v18;
  return result;
}

void EQKitLayoutRow::EQKitLayoutRow(EQKitLayoutRow *this, char a2)
{
  *(this + 8) = 0u;
  *(this + 10) = 0;
  *(this + 9) = this + 80;
  *(this + 11) = 0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *this = objc_alloc_init(MEMORY[0x277CBEB18]);
  *(this + 18) = 0;
  *(this + 38) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 156) = a2;
}

void sub_2582777BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v6 = *(v2 + 120);
  if (v6)
  {
    *(v2 + 128) = v6;
    operator delete(v6);
  }

  v7 = *v4;
  if (*v4)
  {
    *(v2 + 104) = v7;
    operator delete(v7);
  }

  std::__tree<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::__map_value_compare<EQKit::ILayoutOffset::Kind,std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::less<EQKit::ILayoutOffset::Kind>,true>,std::allocator<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>>>::destroy(v3, *(v2 + 80));
  v8 = *(v2 + 32);
  if (v8)
  {
    *(v2 + 40) = v8;
    operator delete(v8);
  }

  std::vector<EQKit::ILayout>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void EQKitLayoutRow::EQKitLayoutRow(EQKitLayoutRow *this, const EQKitLayoutRow *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  std::vector<EQKit::ILayout>::__init_with_size[abi:ne200100]<EQKit::ILayout*,EQKit::ILayout*>(this + 8, *(a2 + 1), *(a2 + 2), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 2) - *(a2 + 1)) >> 3));
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  std::vector<EQKitLayoutRow::Kerning>::__init_with_size[abi:ne200100]<EQKitLayoutRow::Kerning*,EQKitLayoutRow::Kerning*>(this + 32, *(a2 + 4), *(a2 + 5), (*(a2 + 5) - *(a2 + 4)) >> 4);
  *(this + 8) = *(a2 + 8);
  std::map<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>::map[abi:ne200100](this + 9, a2 + 72);
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 14) = 0;
  std::vector<EQKitAlignmentGroup>::__init_with_size[abi:ne200100]<EQKitAlignmentGroup*,EQKitAlignmentGroup*>(this + 96, *(a2 + 12), *(a2 + 13), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 13) - *(a2 + 12)) >> 3));
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(this + 120, *(a2 + 15), *(a2 + 16), (*(a2 + 16) - *(a2 + 15)) >> 3);
  *(this + 18) = *(a2 + 18);
  *(this + 38) = *(a2 + 38);
  *(this + 156) = *(a2 + 156);
  *this = [*a2 mutableCopy];
  *(this + 7) = [*(a2 + 7) mutableCopy];
}

void sub_25827793C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v6 = *v4;
  if (*v4)
  {
    *(v2 + 104) = v6;
    operator delete(v6);
  }

  std::__tree<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::__map_value_compare<EQKit::ILayoutOffset::Kind,std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::less<EQKit::ILayoutOffset::Kind>,true>,std::allocator<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>>>::destroy(v2 + 72, *(v2 + 80));
  v7 = *v3;
  if (*v3)
  {
    *(v2 + 40) = v7;
    operator delete(v7);
  }

  std::vector<EQKit::ILayout>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void EQKitLayoutRow::~EQKitLayoutRow(EQKitLayoutRow *this)
{
  v2 = *(this + 15);
  if (v2)
  {
    *(this + 16) = v2;
    operator delete(v2);
  }

  v3 = *(this + 12);
  if (v3)
  {
    *(this + 13) = v3;
    operator delete(v3);
  }

  std::__tree<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::__map_value_compare<EQKit::ILayoutOffset::Kind,std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::less<EQKit::ILayoutOffset::Kind>,true>,std::allocator<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>>>::destroy(this + 72, *(this + 10));
  v4 = *(this + 4);
  if (v4)
  {
    *(this + 5) = v4;
    operator delete(v4);
  }

  v5 = (this + 8);
  std::vector<EQKit::ILayout>::__destroy_vector::operator()[abi:ne200100](&v5);
}

void EQKitLayoutRow::addChild(uint64_t a1, uint64_t a2, const EQKit::ILayout *a3)
{
  v6 = [*a1 count];
  v7 = *a3;
  v8 = *(a1 + 16);
  if (v8 >= *(a1 + 24))
  {
    v9 = std::vector<EQKit::ILayout>::__emplace_back_slow_path<EQKit::ILayout const&>(a1 + 8, a3);
  }

  else
  {
    EQKit::ILayout::ILayout(*(a1 + 16), a3);
    v9 = v8 + 56;
    *(a1 + 16) = v8 + 56;
  }

  *(a1 + 16) = v9;
  if (!(a2 | v7))
  {
    goto LABEL_8;
  }

  v10 = *a1;
  if (!a2)
  {
    a2 = [MEMORY[0x277CBEB68] null];
  }

  [v10 addObject:a2];
  if (!v7)
  {
LABEL_8:
    v11 = *(a1 + 56);
    if (!v11)
    {
      v11 = objc_alloc_init(MEMORY[0x277CCAB58]);
      *(a1 + 56) = v11;
    }

    [v11 addIndex:v6];
  }

  v12 = *(a3 + 1);
  v13 = (a3 + 16);
  if (v12 != v13)
  {
    v14 = (a1 + 80);
    do
    {
      v15 = *v14;
      v16 = *(v12 + 8);
      if (!*v14)
      {
        goto LABEL_20;
      }

      v17 = a1 + 80;
      do
      {
        if (*(v15 + 32) >= v16)
        {
          v17 = v15;
        }

        v15 = *(v15 + 8 * (*(v15 + 32) < v16));
      }

      while (v15);
      if (v17 == v14 || v16 < *(v17 + 32))
      {
LABEL_20:
        v21 = *(v12 + 8);
        EQKit::ILayoutOffset::ILayoutOffset(v22, v12 + 5);
        std::__tree<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::__map_value_compare<EQKit::ILayoutOffset::Kind,std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::less<EQKit::ILayoutOffset::Kind>,true>,std::allocator<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>>>::__emplace_unique_key_args<EQKit::ILayoutOffset::Kind,std::pair<EQKit::ILayoutOffset::Kind const,EQKit::ILayoutOffset>>(a1 + 72, &v21);
        EQKit::ILayoutOffset::~ILayoutOffset(v22);
      }

      v18 = v12[1];
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
          v19 = v12[2];
          v20 = *v19 == v12;
          v12 = v19;
        }

        while (!v20);
      }

      v12 = v19;
    }

    while (v19 != v13);
  }
}

double EQKitLayoutRow::addChild(EQKitLayoutRow *this, const EQKitLayoutRow *a2)
{
  v4 = *(this + 2);
  v5 = *(this + 1);
  std::vector<EQKit::ILayout>::__insert_with_size[abi:ne200100]<std::__wrap_iter<EQKit::ILayout const*>,std::__wrap_iter<EQKit::ILayout const*>>(this + 1, v4, *(a2 + 1), *(a2 + 2), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 2) - *(a2 + 1)) >> 3));
  [*this addObjectsFromArray:*a2];
  v6 = *(a2 + 9);
  if (v6 != (a2 + 80))
  {
    v7 = (this + 80);
    do
    {
      v8 = *v7;
      v9 = *(v6 + 8);
      if (!*v7)
      {
        goto LABEL_10;
      }

      v10 = (this + 80);
      do
      {
        if (*(v8 + 8) >= v9)
        {
          v10 = v8;
        }

        v8 = *&v8[8 * (*(v8 + 8) < v9)];
      }

      while (v8);
      if (v10 == v7 || v9 < *(v10 + 8))
      {
LABEL_10:
        LODWORD(v19) = *(v6 + 8);
        EQKit::ILayoutOffset::ILayoutOffset(v20, v6 + 5);
        std::__tree<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::__map_value_compare<EQKit::ILayoutOffset::Kind,std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::less<EQKit::ILayoutOffset::Kind>,true>,std::allocator<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>>>::__emplace_unique_key_args<EQKit::ILayoutOffset::Kind,std::pair<EQKit::ILayoutOffset::Kind const,EQKit::ILayoutOffset>>(this + 72, &v19);
        EQKit::ILayoutOffset::~ILayoutOffset(v20);
      }

      v11 = *(v6 + 1);
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = *(v6 + 2);
          v13 = *v12 == v6;
          v6 = v12;
        }

        while (!v13);
      }

      v6 = v12;
    }

    while (v12 != (a2 + 80));
  }

  std::vector<EQKitAlignmentGroup>::__insert_with_size[abi:ne200100]<std::__wrap_iter<EQKitAlignmentGroup const*>,std::__wrap_iter<EQKitAlignmentGroup const*>>(this + 12, *(this + 13), *(a2 + 12), *(a2 + 13), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 13) - *(a2 + 12)) >> 3));
  v14 = *(a2 + 15);
  v15 = *(a2 + 16);
  if (v14 != v15)
  {
    v16 = 0x6DB6DB6DB6DB6DB7 * ((v4 - v5) >> 3);
    do
    {
      v17 = *v14++;
      v19 = v17 + v16;
      std::vector<unsigned long>::push_back[abi:ne200100](this + 15, &v19);
    }

    while (v14 != v15);
  }

  result = *(a2 + 18);
  *(this + 18) = result;
  return result;
}

uint64_t EQKitLayoutRow::endNestedRow(uint64_t this)
{
  v1 = *(this + 64);
  if (v1)
  {
    *(this + 64) = v1 - 1;
  }

  return this;
}

void *EQKitLayoutRow::childNodeAtIndex(id *this, unint64_t a2)
{
  if ([*this count] <= a2)
  {
    v4 = 0;
  }

  else
  {
    v4 = [*this objectAtIndex:a2];
  }

  if ([v4 conformsToProtocol:&unk_286975630])
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t EQKitLayoutRow::overallLayout@<X0>(EQKitLayoutRow *this@<X0>, uint64_t **a2@<X8>)
{
  EQKit::ILayout::ILayout(a2, 0);
  v4 = *(this + 1);
  if (*(this + 2) - v4 == 56)
  {
    return EQKit::ILayout::operator=(a2, v4);
  }

  v6 = EQKitLayoutRow::newChildrenBox(this);
  EQKit::ILayout::ILayout(v9, &v6->super.super);
  EQKit::ILayout::operator=(a2, v9);
  EQKit::ILayout::~ILayout(v9);

  if (a2 + 1 != (this + 72))
  {
    std::__tree<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::__map_value_compare<EQKit::ILayoutOffset::Kind,std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::less<EQKit::ILayoutOffset::Kind>,true>,std::allocator<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::__tree_node<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,void *> *,long>>(a2 + 1, *(this + 9), this + 10);
  }

  v7 = *(this + 1);
  v8 = 6;
  while (v7 != *(this + 2))
  {
    if (v8 >= ((*(v7 + 32) >> 10) & 7))
    {
      v8 = (*(v7 + 32) >> 10) & 7;
    }

    v7 += 56;
  }

  return EQKit::ILayout::setVerticalContentClassification(a2, v8);
}

EQKitHBox *EQKitLayoutRow::newChildrenBox(EQKitLayoutRow *this)
{
  v3 = *(this + 1);
  v2 = *(this + 2);
  v4 = 0x6DB6DB6DB6DB6DB7 * ((v2 - v3) >> 3);
  v6 = *(this + 4);
  v5 = *(this + 5);
  v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v4];
  if (v2 != v3)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = (v5 - v6) >> 4;
    if (v4 <= 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = v4;
    }

    do
    {
      if (*(*(this + 1) + v9))
      {
        [v7 addObject:?];
      }

      if (v10 < v11)
      {
        v13 = *(*(this + 4) + v8);
        if (v13 != 0.0)
        {
          v14 = [[EQKitHSpace alloc] initWithWidth:v13];
          [v7 addObject:v14];
        }
      }

      ++v10;
      v9 += 56;
      v8 += 16;
    }

    while (v12 != v10);
  }

  v15 = [(EQKitCompoundBox *)[EQKitHBox alloc] initWithChildBoxes:v7];

  return v15;
}

void EQKitLayoutRow::determineVSize(EQKitLayoutRow *this, double *a2, double *a3)
{
  v7 = EQKitLayoutRow::newChildrenBox(this);
  [(EQKitCompoundBox *)v7 height];
  *a2 = v5;
  [(EQKitCompoundBox *)v7 depth];
  *a3 = v6;
}

double EQKitLayoutRow::determineWidth(EQKitLayoutRow *this)
{
  v1 = EQKitLayoutRow::newChildrenBox(this);
  [(EQKitCompoundBox *)v1 width];
  v3 = v2;

  return v3;
}

void EQKitLayoutRow::resolveKerning(EQKitLayoutRow *this, const EQKit::Kerning::Manager *a2)
{
  v2 = (this + 32);
  if (*(this + 4) == *(this + 5))
  {
    v4 = 0x6DB6DB6DB6DB6DB7 * ((*(this + 2) - *(this + 1)) >> 3);
    std::vector<EQKitLayoutRow::Kerning>::resize(this + 4, v4);
    if (v4 >= 2)
    {
      v5 = 0;
      for (i = 1; i < v4; ++i)
      {
        v7 = *(this + 1);
        v8 = v7 + 56 * v5;
        if ((*(v8 + 32) & 0x200) == 0 && i < v4)
        {
          v9 = v7 + 56 * i + 32;
          while ((*v9 & 0x200) != 0)
          {
            ++i;
            v9 += 56;
            if (v4 == i)
            {
              i = v4;
              goto LABEL_14;
            }
          }

          v10 = *v8;
          v11 = *(v9 - 32);
          v12 = *MEMORY[0x277CBF348];
          v13 = *(MEMORY[0x277CBF348] + 8);
          [*v8 opticalAlignWidth];
          if (*(v8 + 48) >= *(v9 + 8))
          {
            v15 = *(v8 + 48);
          }

          else
          {
            v15 = *(v9 + 8);
          }

          v16 = EQKit::Kerning::Manager::kerningDistanceRequiredToSatisfyMinClearance(a2, (*(v8 + 32) >> 2) & 3, v10, *v9 & 3, v11, v12, v13, v14, 0.0, v15);
          v17 = *v2 + 16 * v5;
          *v17 = v16;
          *(v17 + 8) = i;
        }

LABEL_14:
        v5 = i;
      }
    }
  }
}

void std::vector<EQKitLayoutRow::Kerning>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 4;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 16 * a2;
    }
  }

  else
  {
    std::vector<EQKitLayoutRow::Kerning>::__append(a1, a2 - v2);
  }
}

void EQKitLayoutRow::resolveLayouts(uint64_t a1, void *a2)
{
  *(a1 + 56) = 0;
  v4 = *(a1 + 8);
  *(a1 + 8) = *a2;
  *a2 = v4;
  v5 = *(a1 + 16);
  *(a1 + 16) = a2[1];
  a2[1] = v5;
  v6 = *(a1 + 24);
  *(a1 + 24) = a2[2];
  a2[2] = v6;
}

void EQKitLayoutRow::beginAlignmentGroup(uint64_t a1, int a2)
{
  if (*(a1 + 8) == *(a1 + 16) || *(a1 + 120) != *(a1 + 128))
  {
    EQKitAlignmentGroup::EQKitAlignmentGroup(v5, a2);
    v3 = *(a1 + 104);
    if (v3 >= *(a1 + 112))
    {
      v4 = std::vector<EQKitAlignmentGroup>::__emplace_back_slow_path<EQKitAlignmentGroup>((a1 + 96), v5);
    }

    else
    {
      EQKitAlignmentGroup::EQKitAlignmentGroup(*(a1 + 104), v5);
      v4 = v3 + 24;
      *(a1 + 104) = v3 + 24;
    }

    *(a1 + 104) = v4;
    v5[0] = 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 16) - *(a1 + 8)) >> 3);
    std::vector<unsigned long>::push_back[abi:ne200100]((a1 + 120), v5);
  }
}

void EQKitLayoutRow::buildAlignmentGroups(EQKitLayoutRow *this)
{
  v1 = *(this + 13) - *(this + 12);
  if (v1)
  {
    v3 = 0;
    v4 = v1 >> 3;
    v5 = 0xAAAAAAAAAAAAAAABLL * v4;
    if (0xAAAAAAAAAAAAAAABLL * v4 <= 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = 0xAAAAAAAAAAAAAAABLL * v4;
    }

    v21 = v6;
    do
    {
      v7 = v3;
      v8 = *(this + 15);
      if (++v3 >= v5)
      {
        v9 = 0x6DB6DB6DB6DB6DB7 * ((*(this + 2) - *(this + 1)) >> 3);
      }

      else
      {
        v9 = *(v8 + 8 * v3);
      }

      v10 = *(v8 + 8 * v7);
      v11 = v9 - v10;
      if (v9 > v10)
      {
        v12 = (*(this + 12) + 24 * v7);
        v13 = 56 * v10;
        v14 = 16 * v10;
        do
        {
          v15 = *(this + 1);
          v16 = *(v15 + v13);
          EQKit::ILayoutOffset::ILayoutOffset(v23, 0, 0.0);
          if (EQKit::ILayout::getOffsetOfKind(v15 + v13, 3, v23))
          {
            v17 = EQKit::ILayoutOffset::offsetInBox(v23, v16);
            EQKitAlignmentGroup::saveAlignmentPoint(v12, v17);
          }

          if (EQKitAlignmentGroup::needsDecimalAlignmentPoint(v12))
          {
            EQKit::ILayoutOffset::ILayoutOffset(v22, 0, 0.0);
            if (EQKit::ILayout::getOffsetOfKind(v15 + v13, 2, v22))
            {
              v18 = EQKit::ILayoutOffset::offsetInBox(v22, v16);
              EQKitAlignmentGroup::saveAlignmentPoint(v12, v18);
            }

            EQKit::ILayoutOffset::~ILayoutOffset(v22);
          }

          [(EQKitBox *)v16 width];
          EQKitAlignmentGroup::increaseWidth(v12, v19);
          v20 = *(this + 4) + v14;
          if (*(v20 + 8) < v9)
          {
            EQKitAlignmentGroup::increaseWidth(v12, *v20);
          }

          EQKit::ILayoutOffset::~ILayoutOffset(v23);
          v13 += 56;
          v14 += 16;
          --v11;
        }

        while (v11);
      }
    }

    while (v3 != v21);
  }
}

void sub_25827859C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  EQKit::ILayoutOffset::~ILayoutOffset(va);
  _Unwind_Resume(a1);
}

void EQKitLayoutRow::overallLayoutWithAlignmentContext(EQKitLayoutRow *this@<X0>, const EQKitGroupAlignmentContext *a2@<X1>, EQKit::ILayout *a3@<X8>)
{
  EQKit::ILayout::ILayout(a3, 0);
  if (*(this + 12) == *(this + 13))
  {
    EQKitLayoutRow::overallLayout(this, v23);
    EQKit::ILayout::operator=(a3, v23);
    EQKit::ILayout::~ILayout(v23);
  }

  else
  {
    v22 = a3;
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    for (i = 0; ; i = v12)
    {
      v8 = *(this + 12);
      if (i >= 0xAAAAAAAAAAAAAAABLL * ((*(this + 13) - v8) >> 3))
      {
        break;
      }

      v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v10 = (v8 + 24 * i);
      v11 = [[EQKitHSpace alloc] initWithWidth:EQKitGroupAlignmentContext::leftSpaceRequiredForGroup(a2, v10, i)];
      [v9 addObject:v11];

      v12 = i + 1;
      v13 = *(this + 15);
      if (i + 1 >= (*(this + 16) - v13) >> 3)
      {
        v14 = 0x6DB6DB6DB6DB6DB7 * ((*(this + 2) - *(this + 1)) >> 3);
      }

      else
      {
        v14 = *(v13 + 8 * v12);
      }

      v15 = *(v13 + 8 * i);
      v16 = v14 - v15;
      if (v14 > v15)
      {
        v17 = 56 * v15;
        do
        {
          [v9 addObject:{*(*(this + 1) + v17), v22}];
          v17 += 56;
          --v16;
        }

        while (v16);
      }

      v18 = [[EQKitHSpace alloc] initWithWidth:EQKitGroupAlignmentContext::rightSpaceRequiredForGroup(a2, v10, i)];
      [v9 addObject:v18];

      v19 = [(EQKitCompoundBox *)[EQKitHBox alloc] initWithChildBoxes:v9];
      [v6 addObject:v19];
    }

    v20 = [[EQKitHSpace alloc] initWithWidth:EQKitGroupAlignmentContext::widthOfGroupsAfterIndex(a2, 0xAAAAAAAAAAAAAAABLL * ((*(this + 13) - *(this + 12)) >> 3) - 1)];
    [v6 addObject:v20];

    v21 = [(EQKitCompoundBox *)[EQKitHBox alloc] initWithChildBoxes:v6];
    EQKit::ILayout::ILayout(v23, &v21->super.super);
    EQKit::ILayout::operator=(v22, v23);
    EQKit::ILayout::~ILayout(v23);
    if ((v22 + 8) != (this + 72))
    {
      std::__tree<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::__map_value_compare<EQKit::ILayoutOffset::Kind,std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::less<EQKit::ILayoutOffset::Kind>,true>,std::allocator<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::__tree_node<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,void *> *,long>>((v22 + 8), *(this + 9), this + 10);
    }
  }
}

void sub_258278870(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  EQKit::ILayout::~ILayout(va);
  EQKit::ILayout::~ILayout(v2);
  _Unwind_Resume(a1);
}

uint64_t std::vector<EQKitLayoutRow::Kerning>::__init_with_size[abi:ne200100]<EQKitLayoutRow::Kerning*,EQKitLayoutRow::Kerning*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<CGPoint>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_258278924(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<EQKitAlignmentGroup>::__init_with_size[abi:ne200100]<EQKitAlignmentGroup*,EQKitAlignmentGroup*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<EQKitAlignmentGroup>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2582789B0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<EQKitAlignmentGroup>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<EQKitAlignmentGroup>>(a1, a2);
  }

  std::vector<std::string>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<EQKitAlignmentGroup>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::vector<EQKit::ILayout>::__emplace_back_slow_path<EQKit::ILayout const&>(uint64_t a1, const EQKit::ILayout *a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x492492492492492)
  {
    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((*(a1 + 16) - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((*(a1 + 16) - *a1) >> 3)) >= 0x249249249249249)
  {
    v6 = 0x492492492492492;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<EQKit::ILayout>>(a1, v6);
  }

  v13 = 0;
  v14 = 56 * v2;
  EQKit::ILayout::ILayout((56 * v2), a2);
  v15 = (56 * v2 + 56);
  v7 = *(a1 + 8);
  v8 = (56 * v2 + *a1 - v7);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<EQKit::ILayout>,EQKit::ILayout*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<EQKit::ILayout>::~__split_buffer(&v13);
  return v12;
}

void sub_258278BB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<EQKit::ILayout>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<EQKit::ILayout>,EQKit::ILayout*>(int a1, EQKit::ILayout *a2, EQKit::ILayout *a3, EQKit::ILayout *this)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    v8 = a2;
    do
    {
      EQKit::ILayout::ILayout(this, v8);
      v8 = (v8 + 56);
      this = (this + 56);
      v7 -= 56;
    }

    while (v8 != a3);
    while (v6 != a3)
    {
      EQKit::ILayout::~ILayout(v6);
      v6 = (v6 + 56);
    }
  }
}

void sub_258278C44(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = (v1 - 56);
    do
    {
      EQKit::ILayout::~ILayout(v4);
      v4 = (v5 - 56);
      v2 += 56;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<EQKit::ILayout>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 56;
    EQKit::ILayout::~ILayout((i - 56));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

EQKit::ILayout *std::vector<EQKit::ILayout>::__insert_with_size[abi:ne200100]<std::__wrap_iter<EQKit::ILayout const*>,std::__wrap_iter<EQKit::ILayout const*>>(void *a1, uint64_t a2, const EQKit::ILayout *a3, EQKit::ILayout *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if (0x6DB6DB6DB6DB6DB7 * ((v9 - v10) >> 3) >= a5)
    {
      v16 = v10 - a2;
      if (0x6DB6DB6DB6DB6DB7 * ((v10 - a2) >> 3) >= a5)
      {
        v19 = 56 * a5;
        std::vector<EQKit::ILayout>::__move_range(a1, a2, a1[1], a2 + 56 * a5);
        v20 = (v7 + v19);
        v21 = v5;
        do
        {
          EQKit::ILayout::operator=(v21, v7);
          v7 = (v7 + 56);
          v21 += 56;
        }

        while (v7 != v20);
      }

      else
      {
        v17 = (a3 + v16);
        a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<EQKit::ILayout>,EQKit::ILayout const*,EQKit::ILayout const*,EQKit::ILayout*>(a1, (a3 + v16), a4, a1[1]);
        if (v16 >= 1)
        {
          std::vector<EQKit::ILayout>::__move_range(a1, v5, v10, v5 + 56 * a5);
          v18 = v5;
          do
          {
            EQKit::ILayout::operator=(v18, v7);
            v7 = (v7 + 56);
            v18 += 56;
          }

          while (v7 != v17);
        }
      }
    }

    else
    {
      v11 = *a1;
      v12 = a5 + 0x6DB6DB6DB6DB6DB7 * ((v10 - *a1) >> 3);
      if (v12 > 0x492492492492492)
      {
        std::vector<std::string>::__throw_length_error[abi:ne200100]();
      }

      v13 = a2 - v11;
      v14 = 0x6DB6DB6DB6DB6DB7 * ((v9 - v11) >> 3);
      if (2 * v14 > v12)
      {
        v12 = 2 * v14;
      }

      if (v14 >= 0x249249249249249)
      {
        v15 = 0x492492492492492;
      }

      else
      {
        v15 = v12;
      }

      v29 = a1;
      if (v15)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<EQKit::ILayout>>(a1, v15);
      }

      v22 = (8 * (v13 >> 3));
      v26[0] = 0;
      v26[1] = v22;
      v27 = v22;
      v28 = 0;
      v23 = 56 * a5;
      v24 = (v22 + 56 * a5);
      do
      {
        EQKit::ILayout::ILayout(v22, v7);
        v22 = (v22 + 56);
        v7 = (v7 + 56);
        v23 -= 56;
      }

      while (v23);
      v27 = v24;
      v5 = std::vector<EQKit::ILayout>::__swap_out_circular_buffer(a1, v26, v5);
      std::__split_buffer<EQKit::ILayout>::~__split_buffer(v26);
    }
  }

  return v5;
}

uint64_t std::vector<EQKit::ILayout>::__move_range(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = result;
  v7 = *(result + 8);
  v8 = (a2 + v7 - a4);
  if (v8 >= a3)
  {
    v10 = *(result + 8);
  }

  else
  {
    v10 = *(result + 8);
    do
    {
      result = EQKit::ILayout::ILayout(v10, v8);
      v8 = (v8 + 56);
      v10 = (v10 + 56);
    }

    while (v8 < a3);
  }

  *(v6 + 8) = v10;
  if (v7 != a4)
  {
    v11 = v7 - 56;
    v12 = a4 - v7;
    v13 = a2 + v7 - 56 - a4;
    do
    {
      result = EQKit::ILayout::operator=(v11, v13);
      v11 -= 56;
      v13 -= 56;
      v12 += 56;
    }

    while (v12);
  }

  return result;
}

uint64_t std::vector<EQKit::ILayout>::__swap_out_circular_buffer(uint64_t a1, uint64_t a2, EQKit::ILayout *a3)
{
  v6 = *(a2 + 8);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<EQKit::ILayout>,EQKit::ILayout*>(a1, a3, *(a1 + 8), *(a2 + 16));
  v7 = *a1;
  v8 = *(a2 + 8);
  *(a2 + 16) += *(a1 + 8) - a3;
  *(a1 + 8) = a3;
  v9 = (v8 + v7 - a3);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<EQKit::ILayout>,EQKit::ILayout*>(a1, v7, a3, v9);
  *(a2 + 8) = v9;
  v10 = *a1;
  *(a1 + 8) = *a1;
  *a1 = *(a2 + 8);
  *(a2 + 8) = v10;
  v11 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 16);
  *(a2 + 16) = v11;
  v12 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 24);
  *(a2 + 24) = v12;
  *a2 = *(a2 + 8);
  return v6;
}

EQKit::ILayout *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<EQKit::ILayout>,EQKit::ILayout const*,EQKit::ILayout const*,EQKit::ILayout*>(int a1, EQKit::ILayout *a2, EQKit::ILayout *a3, EQKit::ILayout *this)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      EQKit::ILayout::ILayout(this, v6);
      v6 = (v6 + 56);
      this = (this + 56);
      v7 -= 56;
    }

    while (v6 != a3);
  }

  return this;
}

void sub_2582790D4(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = (v1 - 56);
    do
    {
      EQKit::ILayout::~ILayout(v4);
      v4 = (v5 - 56);
      v2 += 56;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<EQKitAlignmentGroup>::__insert_with_size[abi:ne200100]<std::__wrap_iter<EQKitAlignmentGroup const*>,std::__wrap_iter<EQKitAlignmentGroup const*>>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if ((0xAAAAAAAAAAAAAAABLL * ((v9 - v10) >> 3)) >= a5)
    {
      v16 = v10 - a2;
      if ((0xAAAAAAAAAAAAAAABLL * ((v10 - a2) >> 3)) >= a5)
      {
        v26 = 3 * a5;
        std::vector<EQKitAlignmentGroup>::__move_range(a1, a2, a1[1], a2 + 24 * a5);
        v27 = 0;
        v28 = v7 + 8 * v26;
        do
        {
          v29 = v27 + v5;
          v30 = *v7;
          *(v29 + 16) = *(v7 + 16);
          *v29 = v30;
          v7 += 24;
          v27 += 24;
        }

        while (v7 != v28);
      }

      else
      {
        v18 = v16 + a3;
        v19 = a1[1];
        if (v16 + a3 != a4)
        {
          v19 = a1[1];
          v20 = v16 + a3;
          v21 = v19;
          do
          {
            EQKitAlignmentGroup::EQKitAlignmentGroup(v21, v20);
            v20 += 24;
            v21 = v22 + 24;
            v19 += 24;
          }

          while (v20 != a4);
        }

        a1[1] = v19;
        if (v16 >= 1)
        {
          std::vector<EQKitAlignmentGroup>::__move_range(a1, v5, v10, v5 + 24 * a5);
          v23 = 0;
          do
          {
            v24 = v23 + v5;
            v25 = *v7;
            *(v24 + 16) = *(v7 + 16);
            *v24 = v25;
            v7 += 24;
            v23 += 24;
          }

          while (v7 != v18);
        }
      }
    }

    else
    {
      v11 = *a1;
      v12 = a5 - 0x5555555555555555 * ((v10 - *a1) >> 3);
      if (v12 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<std::string>::__throw_length_error[abi:ne200100]();
      }

      v13 = a2 - v11;
      v14 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v11) >> 3);
      if (2 * v14 > v12)
      {
        v12 = 2 * v14;
      }

      if (v14 >= 0x555555555555555)
      {
        v15 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v15 = v12;
      }

      v39 = a1;
      if (v15)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<EQKitAlignmentGroup>>(a1, v15);
      }

      v31 = 8 * (v13 >> 3);
      __p = 0;
      v36 = v31;
      v37 = v31;
      v38 = 0;
      v32 = v31 + 24 * a5;
      v33 = 24 * a5;
      do
      {
        EQKitAlignmentGroup::EQKitAlignmentGroup(v31, v7);
        v31 += 24;
        v7 += 24;
        v33 -= 24;
      }

      while (v33);
      v37 = v32;
      v5 = std::vector<EQKitAlignmentGroup>::__swap_out_circular_buffer(a1, &__p, v5);
      if (v37 != v36)
      {
        v37 = (v37 - v36 - 24) % 0x18uLL + v36;
      }

      if (__p)
      {
        operator delete(__p);
      }
    }
  }

  return v5;
}

void sub_258279370(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::vector<EQKitAlignmentGroup>::__move_range(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 8);
  v8 = v7 - a4;
  v9 = a2 + v7 - a4;
  if (v9 >= a3)
  {
    v11 = *(a1 + 8);
  }

  else
  {
    v11 = *(a1 + 8);
    do
    {
      result.n128_f64[0] = EQKitAlignmentGroup::EQKitAlignmentGroup(v11, v9);
      v9 += 24;
      v11 += 24;
    }

    while (v9 < a3);
  }

  *(a1 + 8) = v11;
  if (v7 != a4)
  {
    v13 = (v7 - 24);
    v14 = a2 - 24;
    do
    {
      result = *(v14 + v8);
      v13[1].n128_u64[0] = *(v14 + v8 + 16);
      *v13 = result;
      v13 = (v13 - 24);
      v8 -= 24;
    }

    while (v8);
  }

  return result;
}

uint64_t std::vector<EQKitAlignmentGroup>::__swap_out_circular_buffer(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = a1[1];
  v8 = a2[1];
  v7 = a2[2];
  if (v6 == a3)
  {
    v12 = a2[1];
    v11 = a3;
  }

  else
  {
    v9 = a3;
    do
    {
      EQKitAlignmentGroup::EQKitAlignmentGroup(v7, v9);
      v9 += 24;
      v7 = v10 + 24;
    }

    while (v9 != v6);
    v11 = a1[1];
    v12 = a2[1];
    v7 = a2[2];
  }

  a2[2] = v7 + v11 - a3;
  a1[1] = a3;
  v13 = *a1;
  v14 = v12 + *a1 - a3;
  if (*a1 != a3)
  {
    v15 = v12 + *a1 - a3;
    do
    {
      EQKitAlignmentGroup::EQKitAlignmentGroup(v15, v13);
      v13 += 24;
      v15 = v16 + 24;
    }

    while (v13 != a3);
    v13 = *a1;
  }

  a2[1] = v14;
  *a1 = v14;
  a1[1] = v13;
  a2[1] = v13;
  v17 = a1[1];
  a1[1] = a2[2];
  a2[2] = v17;
  v18 = a1[2];
  a1[2] = a2[3];
  a2[3] = v18;
  *a2 = a2[1];
  return v8;
}

uint64_t **std::__tree<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::__map_value_compare<EQKit::ILayoutOffset::Kind,std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::less<EQKit::ILayoutOffset::Kind>,true>,std::allocator<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::__tree_node<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,void *> *,long>>(uint64_t **result, void *a2, void *a3)
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
      v13 = std::__tree<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::__map_value_compare<EQKit::ILayoutOffset::Kind,std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::less<EQKit::ILayoutOffset::Kind>,true>,std::allocator<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>>>::_DetachedTreeCache::__detach_next(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          *(v8 + 8) = *(v9 + 8);
          EQKit::ILayoutOffset::operator=((v8 + 5), (v9 + 5));
          std::__tree<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::__map_value_compare<EQKit::ILayoutOffset::Kind,std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::less<EQKit::ILayoutOffset::Kind>,true>,std::allocator<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>>>::__node_insert_multi(v5, v14);
          v8 = v13;
          v14 = v13;
          if (v13)
          {
            v13 = std::__tree<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::__map_value_compare<EQKit::ILayoutOffset::Kind,std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::less<EQKit::ILayoutOffset::Kind>,true>,std::allocator<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>>>::_DetachedTreeCache::__detach_next(v13);
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

    result = std::__tree<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::__map_value_compare<EQKit::ILayoutOffset::Kind,std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::less<EQKit::ILayoutOffset::Kind>,true>,std::allocator<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](&v12);
  }

  if (a2 != a3)
  {
    std::__tree<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::__map_value_compare<EQKit::ILayoutOffset::Kind,std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::less<EQKit::ILayoutOffset::Kind>,true>,std::allocator<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>>>::__emplace_multi<std::pair<EQKit::ILayoutOffset::Kind const,EQKit::ILayoutOffset> const&>();
  }

  return result;
}

void sub_2582796E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__tree<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::__map_value_compare<EQKit::ILayoutOffset::Kind,std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::less<EQKit::ILayoutOffset::Kind>,true>,std::allocator<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__tree<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::__map_value_compare<EQKit::ILayoutOffset::Kind,std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::less<EQKit::ILayoutOffset::Kind>,true>,std::allocator<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>>>::__node_insert_multi(uint64_t **a1, uint64_t a2)
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
        if (*(a2 + 32) >= *(v4 + 8))
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
  std::__tree<std::__value_type<std::string,unsigned short>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned short>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned short>>>::__insert_node_at(a1, v3, v5, a2);
  return a2;
}

void *std::__tree<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::__map_value_compare<EQKit::ILayoutOffset::Kind,std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::less<EQKit::ILayoutOffset::Kind>,true>,std::allocator<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>>>::_DetachedTreeCache::__detach_next(uint64_t a1)
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

uint64_t std::__tree<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::__map_value_compare<EQKit::ILayoutOffset::Kind,std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::less<EQKit::ILayoutOffset::Kind>,true>,std::allocator<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](uint64_t a1)
{
  std::__tree<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::__map_value_compare<EQKit::ILayoutOffset::Kind,std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::less<EQKit::ILayoutOffset::Kind>,true>,std::allocator<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>>>::destroy(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = *(v3 + 16);
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    std::__tree<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::__map_value_compare<EQKit::ILayoutOffset::Kind,std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::less<EQKit::ILayoutOffset::Kind>,true>,std::allocator<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>>>::destroy(*a1, v2);
  }

  return a1;
}

void std::__tree<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::__map_value_compare<EQKit::ILayoutOffset::Kind,std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::less<EQKit::ILayoutOffset::Kind>,true>,std::allocator<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>>>::destroy(uint64_t a1, id *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::__map_value_compare<EQKit::ILayoutOffset::Kind,std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::less<EQKit::ILayoutOffset::Kind>,true>,std::allocator<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::__map_value_compare<EQKit::ILayoutOffset::Kind,std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::less<EQKit::ILayoutOffset::Kind>,true>,std::allocator<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>>>::destroy(a1, a2[1]);
    EQKit::ILayoutOffset::~ILayoutOffset(a2 + 5);

    operator delete(a2);
  }
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      EQKit::ILayoutOffset::~ILayoutOffset(v2 + 5);
    }

    operator delete(v2);
  }

  return a1;
}

void std::vector<EQKitLayoutRow::Kerning>::__append(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (a2 <= (v5 - v4) >> 4)
  {
    if (a2)
    {
      v11 = &v4[2 * a2];
      do
      {
        *v4 = 0;
        v4[1] = 0x7FFFFFFFFFFFFFFFLL;
        v4 += 2;
      }

      while (v4 != v11);
      v4 = v11;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v6 = v4 - *a1;
    v7 = a2 + (v6 >> 4);
    if (v7 >> 60)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v8 = v6 >> 4;
    v9 = v5 - *a1;
    if (v9 >> 3 > v7)
    {
      v7 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v7;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<CGPoint>>(a1, v10);
    }

    v12 = 16 * v8;
    v13 = 16 * v8 + 16 * a2;
    v14 = v12;
    do
    {
      *v14 = 0;
      v14[1] = 0x7FFFFFFFFFFFFFFFLL;
      v14 += 2;
    }

    while (v14 != v13);
    v15 = *(a1 + 8) - *a1;
    v16 = v12 - v15;
    memcpy((v12 - v15), *a1, v15);
    v17 = *a1;
    *a1 = v16;
    *(a1 + 8) = v13;
    *(a1 + 16) = 0;
    if (v17)
    {

      operator delete(v17);
    }
  }
}

uint64_t std::vector<EQKitAlignmentGroup>::__emplace_back_slow_path<EQKitAlignmentGroup>(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<std::string>::__throw_length_error[abi:ne200100]();
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

  v13 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<EQKitAlignmentGroup>>(a1, v6);
  }

  __p = 0;
  v10 = 24 * v2;
  v12 = 0;
  EQKitAlignmentGroup::EQKitAlignmentGroup(24 * v2, a2);
  v11 = 24 * v2 + 24;
  std::vector<EQKitAlignmentGroup>::__swap_out_circular_buffer(a1, &__p);
  v7 = a1[1];
  if (v11 != v10)
  {
    v11 = (v11 - v10 - 24) % 0x18uLL + v10;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v7;
}

void sub_258279C0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<EQKitAlignmentGroup>::__swap_out_circular_buffer(uint64_t *result, void *a2)
{
  v3 = result;
  v4 = a2[1];
  v5 = *result;
  v6 = result[1];
  v7 = v4 + *result - v6;
  if (v6 != *result)
  {
    result = (v4 + *result - v6);
    do
    {
      EQKitAlignmentGroup::EQKitAlignmentGroup(result, v5);
      v5 += 24;
      result = (v8 + 24);
    }

    while (v5 != v6);
    v5 = *v3;
  }

  a2[1] = v7;
  *v3 = v7;
  v3[1] = v5;
  a2[1] = v5;
  v9 = v3[1];
  v3[1] = a2[2];
  a2[2] = v9;
  v10 = v3[2];
  v3[2] = a2[3];
  a2[3] = v10;
  *a2 = a2[1];
  return result;
}

uint64_t *std::__tree<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::__map_value_compare<EQKit::ILayoutOffset::Kind,std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::less<EQKit::ILayoutOffset::Kind>,true>,std::allocator<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>>>::swap(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = *a2;
  *a2 = v2;
  v5 = result[1];
  v4 = result[2];
  v3 = result + 1;
  *(result + 1) = *(a2 + 8);
  *(a2 + 8) = v5;
  *(a2 + 16) = v4;
  if (result[2])
  {
    result = (*v3 + 16);
  }

  *result = v3;
  v6 = (*(a2 + 8) + 16);
  if (!v4)
  {
    v6 = a2;
  }

  *v6 = a2 + 8;
  return result;
}

void *std::map<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>::map[abi:ne200100](void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::__tree_node<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,void *> *,long>>>(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t std::map<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::__tree_node<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,void *> *,long>>>(uint64_t result, int *a2, int *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::__map_value_compare<EQKit::ILayoutOffset::Kind,std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::less<EQKit::ILayoutOffset::Kind>,true>,std::allocator<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>>>::__emplace_hint_unique_key_args<EQKit::ILayoutOffset::Kind,std::pair<EQKit::ILayoutOffset::Kind const,EQKit::ILayoutOffset> const&>(v5, v5 + 1, v4 + 8);
      v6 = *(v4 + 1);
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = *(v4 + 2);
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t std::__tree<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::__map_value_compare<EQKit::ILayoutOffset::Kind,std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::less<EQKit::ILayoutOffset::Kind>,true>,std::allocator<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>>>::__emplace_hint_unique_key_args<EQKit::ILayoutOffset::Kind,std::pair<EQKit::ILayoutOffset::Kind const,EQKit::ILayoutOffset> const&>(void *a1, uint64_t *a2, int *a3)
{
  v3 = *std::__tree<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::__map_value_compare<EQKit::ILayoutOffset::Kind,std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::less<EQKit::ILayoutOffset::Kind>,true>,std::allocator<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>>>::__find_equal<EQKit::ILayoutOffset::Kind>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    std::__tree<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::__map_value_compare<EQKit::ILayoutOffset::Kind,std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::less<EQKit::ILayoutOffset::Kind>,true>,std::allocator<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>>>::__construct_node<std::pair<EQKit::ILayoutOffset::Kind const,EQKit::ILayoutOffset> const&>();
  }

  return v3;
}

uint64_t *std::__tree<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::__map_value_compare<EQKit::ILayoutOffset::Kind,std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::less<EQKit::ILayoutOffset::Kind>,true>,std::allocator<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>>>::__find_equal<EQKit::ILayoutOffset::Kind>(void *a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, int *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 8), *a5 < v7))
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
    if (*(v10 + 8) < *a5)
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
          v18 = *(v16 + 32);
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

  if (a4 != v5 && v6 >= *(a4 + 8))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 32);
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

uint64_t *std::__tree<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::__map_value_compare<EQKit::ILayoutOffset::Kind,std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::less<EQKit::ILayoutOffset::Kind>,true>,std::allocator<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>>>::__emplace_unique_key_args<EQKit::ILayoutOffset::Kind,std::pair<EQKit::ILayoutOffset::Kind const,EQKit::ILayoutOffset>>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    std::__tree<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::__map_value_compare<EQKit::ILayoutOffset::Kind,std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::less<EQKit::ILayoutOffset::Kind>,true>,std::allocator<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>>>::__construct_node<std::pair<EQKit::ILayoutOffset::Kind const,EQKit::ILayoutOffset>>();
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

uint64_t EQKitLayoutStretchedOperator::EQKitLayoutStretchedOperator(uint64_t result, uint64_t a2, int a3, double a4, double a5, double a6)
{
  *result = a2;
  *(result + 8) = a3;
  *(result + 16) = a4;
  *(result + 24) = a5;
  *(result + 32) = a6;
  return result;
}

uint64_t EQKitLayoutTable::resolveColumnAlignment(uint64_t a1, uint64_t *a2, uint64_t *a3, char **a4, unint64_t a5)
{
  if (a4[1] - *a4 != 4 || (result = **a4, !result))
  {
    v6 = *a3;
    v7 = a3[1];
    if (*a3 == v7)
    {
      goto LABEL_8;
    }

    v8 = ((v7 - v6) >> 2) - 1;
    if (v8 >= a5)
    {
      v8 = a5;
    }

    result = *(v6 + 4 * v8);
    if (!result)
    {
LABEL_8:
      v9 = *a2;
      v10 = a2[1];
      if (*a2 == v10)
      {
        return 2;
      }

      v11 = ((v10 - v9) >> 2) - 1;
      if (v11 >= a5)
      {
        v11 = a5;
      }

      result = *(v9 + 4 * v11);
      if (!result)
      {
        return 2;
      }
    }
  }

  return result;
}

uint64_t EQKitLayoutTable::resolveRowAlignment(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v5 = *(a4 + 24);
  if (*(a4 + 32) - v5 != 4 || (result = *v5, !result))
  {
    v7 = *(a3 + 24);
    if (*(a3 + 32) - v7 != 4 || (result = *v7, !result))
    {
      v8 = *(a2 + 24);
      v9 = *(a2 + 32);
      if (v8 == v9)
      {
        return 4;
      }

      v10 = ((v9 - v8) >> 2) - 1;
      if (v10 >= a5)
      {
        v10 = a5;
      }

      result = *(v8 + 4 * v10);
      if (!result)
      {
        return 4;
      }
    }
  }

  return result;
}

void EQKitLayoutTable::resolveAlignmentGroups(EQKitLayoutTable *this, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    for (i = 0; i != a3; ++i)
    {
      memset(v15, 0, sizeof(v15));
      if (a2)
      {
        v7 = 0;
        v8 = a2;
        do
        {
          v9 = *(*(this + 8) + v7 + 56);
          if (i < 0xAF8AF8AF8AF8AF8BLL * ((*(*(this + 8) + v7 + 64) - v9) >> 3))
          {
            EQKitLayoutRow::addToAlignmentContext((v9 + 280 * i + 64), v15);
          }

          v7 += 80;
          --v8;
        }

        while (v8);
        v10 = 0;
        v11 = a2;
        do
        {
          v12 = *(*(this + 8) + v10 + 56);
          if (i < 0xAF8AF8AF8AF8AF8BLL * ((*(*(this + 8) + v10 + 64) - v12) >> 3))
          {
            v13 = v12 + 280 * i;
            EQKitLayoutRow::overallLayoutWithAlignmentContext((v13 + 64), v15, v14);
            EQKit::ILayout::operator=(v13 + 224, v14);
            EQKit::ILayout::~ILayout(v14);
          }

          v10 += 80;
          --v11;
        }

        while (v11);
      }

      EQKitLayoutTable::Properties::~Properties(v15);
    }
  }
}

void sub_25827A3CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  EQKitLayoutTable::Properties::~Properties(va);
  _Unwind_Resume(a1);
}

void EQKitLayoutTable::relationalOperatorOffset(EQKitLayoutTable *this@<X0>, EQKitBox **a2@<X1>, EQKit::ILayoutOffset *a3@<X8>)
{
  v5 = *(this + 8);
  v4 = *(this + 9);
  if (v4 == v5)
  {

    EQKit::ILayoutOffset::ILayoutOffset(a3, 0, 0.0);
  }

  else
  {
    v8 = 0;
    v9 = 1.79769313e308;
    do
    {
      v10 = 0;
      v11 = 0;
      for (i = 224; ; i += 280)
      {
        v13 = v4 == v5 ? 0 : 0xAF8AF8AF8AF8AF8BLL * ((*(v5 + 64) - *(v5 + 56)) >> 3);
        if (((v10 < v13) & (v11 ^ 1)) == 0)
        {
          break;
        }

        v14 = *(v5 + 80 * v8 + 56);
        EQKit::ILayoutOffset::ILayoutOffset(v16, 0, 0.0);
        if (EQKit::ILayout::getOffsetOfKind(v14 + i, 1, v16))
        {
          v15 = EQKit::ILayoutOffset::offsetInBox(v16, *a2);
          if (v9 == 1.79769313e308 || vabdd_f64(v15, v9) < 0.00100000005)
          {
            v11 = 0;
            v9 = v15;
          }

          else
          {
            v11 = 1;
            v9 = 1.79769313e308;
          }
        }

        else
        {
          v11 = 0;
        }

        EQKit::ILayoutOffset::~ILayoutOffset(v16);
        ++v10;
        v5 = *(this + 8);
        v4 = *(this + 9);
      }

      ++v8;
    }

    while (!((v8 >= 0xCCCCCCCCCCCCCCCDLL * ((v4 - v5) >> 4)) | v11 & 1));
    EQKit::ILayoutOffset::ILayoutOffset(a3, 0, 0.0);
    if (v9 != 1.79769313e308)
    {
      EQKit::ILayoutOffset::ILayoutOffset(v16, *a2, v9);
      EQKit::ILayoutOffset::operator=(a3, v16);
      EQKit::ILayoutOffset::~ILayoutOffset(v16);
    }
  }
}

void sub_25827A5FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id a9)
{
  EQKit::ILayoutOffset::~ILayoutOffset(&a9);
  EQKit::ILayoutOffset::~ILayoutOffset(v9);
  _Unwind_Resume(a1);
}

EQKit::ILayout *EQKitLayoutTable::layoutTr@<X0>(uint64_t a1@<X0>, void *a2@<X1>, EQKit::ILayout *a3@<X8>)
{
  v37 = *MEMORY[0x277D85DE8];
  result = EQKit::ILayout::ILayout(a3, 0);
  if (a2)
  {
    v6 = [a2 schemataChildren];
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    result = [v6 countByEnumeratingWithState:&v30 objects:v36 count:16];
    v7 = result;
    if (result)
    {
      v8 = *v31;
      obj = v6;
      do
      {
        v9 = 0;
        do
        {
          if (*v31 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v30 + 1) + 8 * v9);
          v11 = *(a1 + 72);
          EQKitLayoutTable::LayoutCell::LayoutCell(v25);
          v12 = *(v11 - 16);
          if (v12 >= *(v11 - 8))
          {
            v13 = std::vector<EQKitLayoutTable::LayoutCell>::__emplace_back_slow_path<EQKitLayoutTable::LayoutCell>(v11 - 24, v25);
          }

          else
          {
            EQKitLayoutTable::LayoutCell::LayoutCell(*(v11 - 16), v25);
            v13 = v12 + 280;
            *(v11 - 16) = v12 + 280;
          }

          *(v11 - 16) = v13;
          EQKit::ILayout::~ILayout(&v29);
          EQKitLayoutRow::~EQKitLayoutRow(&v28);
          if (*(&v26 + 1))
          {
            *&v27 = *(&v26 + 1);
            operator delete(*(&v26 + 1));
          }

          if (v25[0])
          {
            v25[1] = v25[0];
            operator delete(v25[0]);
          }

          v14 = *(*(a1 + 72) - 16);
          v21 = 0;
          v22 = &v21;
          v23 = 0x2020000000;
          v24 = 0;
          v15 = *(a1 + 8);
          v16 = *(a1 + 88);
          v20[0] = MEMORY[0x277D85DD0];
          v20[1] = 3221225472;
          v20[2] = ___ZN16EQKitLayoutTable8layoutTrEPU32objcproto21EQKitLayoutSchemataTr11objc_object_block_invoke;
          v20[3] = &unk_2798721B0;
          v20[5] = &v21;
          v20[6] = a1;
          v20[4] = v10;
          EQKitLayoutManager::layoutIntoRow(v15, (v14 - 216), v10, 0, v16, v20);
          v26 = 0u;
          v27 = 0u;
          *v25 = 0u;
          v17 = *(*(a1 + 8) + 616);
          v34 = v10;
          v35 = 3;
          EQKit::AttributeCollection::getValueForKey<std::map<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,std::vector<objc_object  {objcproto15EQKitLayoutNode}*::Notation::Enum>,std::less<EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Notation::Enum<std::pair<EQKitTypes::Attributes::Enum const>>>>(v17, v17 + 248, &v34, &v26 + 1);
          v18 = *(*(a1 + 8) + 616);
          v34 = v10;
          v35 = 4;
          EQKit::AttributeCollection::getValueForKey<std::map<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,std::vector<objc_object  {objcproto15EQKitLayoutNode}*::Notation::Enum>,std::less<EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Notation::Enum<std::pair<EQKitTypes::Attributes::Enum const>>>>(v18, v18 + 272, &v34, v25);
          if ((v14 - 280) != v25)
          {
            std::vector<EQKitTypes::Notation::Enum>::__assign_with_size[abi:ne200100]<EQKitTypes::Notation::Enum*,EQKitTypes::Notation::Enum*>((v14 - 280), v25[0], v25[1], (v25[1] - v25[0]) >> 2);
            std::vector<EQKitTypes::Notation::Enum>::__assign_with_size[abi:ne200100]<EQKitTypes::Notation::Enum*,EQKitTypes::Notation::Enum*>((v14 - 256), *(&v26 + 1), v27, (v27 - *(&v26 + 1)) >> 2);
          }

          *(v14 - 224) = v22[3];
          if (*(&v26 + 1))
          {
            *&v27 = *(&v26 + 1);
            operator delete(*(&v26 + 1));
          }

          if (v25[0])
          {
            v25[1] = v25[0];
            operator delete(v25[0]);
          }

          _Block_object_dispose(&v21, 8);
          v9 = (v9 + 1);
        }

        while (v7 != v9);
        result = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
        v7 = result;
      }

      while (result);
    }
  }

  return result;
}

void ___ZN16EQKitLayoutTable8layoutTrEPU32objcproto21EQKitLayoutSchemataTr11objc_object_block_invoke(void *a1, uint64_t a2)
{
  if (a1[4] == a2)
  {
    v3 = EQKitLayoutManager::layoutContext(*(a1[6] + 8));
    if ((*(v3 + 120) & 2) != 0)
    {
      v4 = *(v3 + 136);
    }

    else
    {
      v4 = EQKitLayoutContext::pComputeMathAxis(v3);
    }

    *(*(a1[5] + 8) + 24) = v4;
  }
}

void EQKitLayoutTable::Properties::~Properties(EQKitLayoutTable::Properties *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  v3 = *this;
  if (*this)
  {
    *(this + 1) = v3;
    operator delete(v3);
  }
}

void EQKitLayoutTable::generateTableLayout(EQKitLayoutTable *this, NSArray *a2)
{
  v54 = *MEMORY[0x277D85DE8];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v3 = [(NSArray *)a2 countByEnumeratingWithState:&v47 objects:v53 count:16];
  if (v3)
  {
    v4 = *v48;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v48 != v4)
        {
          objc_enumerationMutation(a2);
        }

        v6 = *(*(&v47 + 1) + 8 * i);
        memset(v46, 0, sizeof(v46));
        *v44 = 0u;
        v45 = 0u;
        *v43 = 0u;
        std::vector<EQKitLayoutTable::LayoutRow>::push_back[abi:ne200100](this + 8, v43);
        EQKitLayoutManager::layoutBox(*(this + 1), v6, 0, v42);
        EQKit::ILayout::~ILayout(v42);
        *__p = 0u;
        v41 = 0u;
        *v39 = 0u;
        v7 = *(*(this + 1) + 616);
        v51 = v6;
        v52 = 3;
        EQKit::AttributeCollection::getValueForKey<std::map<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,std::vector<objc_object  {objcproto15EQKitLayoutNode}*::Notation::Enum>,std::less<EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Notation::Enum<std::pair<EQKitTypes::Attributes::Enum const>>>>(v7, v7 + 248, &v51, &__p[1]);
        v8 = *(*(this + 1) + 616);
        v51 = v6;
        v52 = 4;
        EQKit::AttributeCollection::getValueForKey<std::map<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,std::vector<objc_object  {objcproto15EQKitLayoutNode}*::Notation::Enum>,std::less<EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Notation::Enum<std::pair<EQKitTypes::Attributes::Enum const>>>>(v8, v8 + 272, &v51, v39);
        if ((this + 16) != v39)
        {
          std::vector<EQKitTypes::Notation::Enum>::__assign_with_size[abi:ne200100]<EQKitTypes::Notation::Enum*,EQKitTypes::Notation::Enum*>(this + 2, v39[0], v39[1], (v39[1] - v39[0]) >> 2);
          std::vector<EQKitTypes::Notation::Enum>::__assign_with_size[abi:ne200100]<EQKitTypes::Notation::Enum*,EQKitTypes::Notation::Enum*>(this + 5, __p[1], v41, (v41 - __p[1]) >> 2);
        }

        v9 = *(this + 9);
        if ((v9 - 80) != v39)
        {
          std::vector<EQKitTypes::Notation::Enum>::__assign_with_size[abi:ne200100]<EQKitTypes::Notation::Enum*,EQKitTypes::Notation::Enum*>((v9 - 80), v39[0], v39[1], (v39[1] - v39[0]) >> 2);
          std::vector<EQKitTypes::Notation::Enum>::__assign_with_size[abi:ne200100]<EQKitTypes::Notation::Enum*,EQKitTypes::Notation::Enum*>((v9 - 56), __p[1], v41, (v41 - __p[1]) >> 2);
        }

        if (__p[1])
        {
          *&v41 = __p[1];
          operator delete(__p[1]);
        }

        if (v39[0])
        {
          v39[1] = v39[0];
          operator delete(v39[0]);
        }

        v39[0] = v46 + 8;
        std::vector<EQKitLayoutTable::LayoutCell>::__destroy_vector::operator()[abi:ne200100](v39);
        if (v44[1])
        {
          *&v45 = v44[1];
          operator delete(v44[1]);
        }

        if (v43[0])
        {
          v43[1] = v43[0];
          operator delete(v43[0]);
        }
      }

      v3 = [(NSArray *)a2 countByEnumeratingWithState:&v47 objects:v53 count:16];
    }

    while (v3);
  }

  v11 = *(this + 8);
  v10 = *(this + 9);
  v12 = (v10 - v11) >> 4;
  v13 = 0xCCCCCCCCCCCCCCCDLL * v12;
  v14 = 0;
  if (v10 != v11)
  {
    if (v13 <= 1)
    {
      v15 = 1;
    }

    else
    {
      v15 = 0xCCCCCCCCCCCCCCCDLL * v12;
    }

    v16 = (v11 + 64);
    do
    {
      if (v14 <= 0xAF8AF8AF8AF8AF8BLL * ((*v16 - *(v16 - 1)) >> 3))
      {
        v14 = 0xAF8AF8AF8AF8AF8BLL * ((*v16 - *(v16 - 1)) >> 3);
      }

      v16 += 10;
      --v15;
    }

    while (v15);
  }

  EQKitLayoutTable::resolveAlignmentGroups(this, v13, v14);
  v43[0] = 0;
  v43[1] = 0;
  v44[0] = 0;
  v39[0] = 0;
  std::vector<double>::resize(v43, v14, v39);
  if (v10 == v11)
  {
    v33 = v43[0];
    if (!v43[0])
    {
      return;
    }

    goto LABEL_50;
  }

  v17 = 0;
  if (v13 <= 1)
  {
    v18 = 1;
  }

  else
  {
    v18 = v13;
  }

  v19 = *(this + 8);
  do
  {
    v20 = v19 + 80 * v17;
    v21 = *(v20 + 56);
    v22 = *(v20 + 64);
    std::vector<EQKitLayoutTable::LayoutCell>::resize((v20 + 56), v14);
    v19 = *(this + 8);
    v23 = v19 + 80 * v17;
    *(v23 + 48) = 0;
    if (v14)
    {
      v24 = 0;
      v25 = 0;
      v26 = 0xAF8AF8AF8AF8AF8BLL * ((v22 - v21) >> 3);
      do
      {
        if (v25 >= v26)
        {
          v27 = *(v19 + 80 * v17 + 56);
          if (v27 + v24 != v23)
          {
            std::vector<EQKitTypes::Notation::Enum>::__assign_with_size[abi:ne200100]<EQKitTypes::Notation::Enum*,EQKitTypes::Notation::Enum*>((v27 + v24), *v23, *(v23 + 8), (*(v23 + 8) - *v23) >> 2);
            std::vector<EQKitTypes::Notation::Enum>::__assign_with_size[abi:ne200100]<EQKitTypes::Notation::Enum*,EQKitTypes::Notation::Enum*>((v27 + v24 + 24), *(v23 + 24), *(v23 + 32), (*(v23 + 32) - *(v23 + 24)) >> 2);
            v19 = *(this + 8);
          }
        }

        v28 = *(*(v19 + 80 * v17 + 56) + v24 + 224);
        [v28 width];
        if (v29 < *(v43[0] + v25))
        {
          v29 = *(v43[0] + v25);
        }

        *(v43[0] + v25) = v29;
        [v28 layoutVSize];
        v19 = *(this + 8);
        v31 = v19 + 80 * v17;
        if (v30 < *(v31 + 48))
        {
          v30 = *(v31 + 48);
        }

        *(v31 + 48) = v30;
        ++v25;
        v24 += 280;
      }

      while (v14 != v25);
    }

    ++v17;
  }

  while (v17 != v18);
  v32 = 0;
  v33 = v43[0];
  do
  {
    if (v14)
    {
      v34 = (*(*(this + 8) + 80 * v32 + 56) + 48);
      v35 = v33;
      v36 = v14;
      do
      {
        v37 = *v35++;
        *v34 = v37;
        v34 += 35;
        --v36;
      }

      while (v36);
    }

    ++v32;
  }

  while (v32 != v18);
  if (v33)
  {
LABEL_50:
    v43[1] = v33;
    operator delete(v33);
  }
}

void sub_25827AE50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<EQKitLayoutTable::LayoutRow>::push_back[abi:ne200100](uint64_t *a1, uint64_t *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<EQKitLayoutTable::LayoutRow>::__emplace_back_slow_path<EQKitLayoutTable::LayoutRow const&>(a1, a2);
  }

  else
  {
    std::vector<EQKitLayoutTable::LayoutRow>::__construct_one_at_end[abi:ne200100]<EQKitLayoutTable::LayoutRow const&>(a1, a2);
    result = v3 + 80;
  }

  a1[1] = result;
  return result;
}

void std::vector<EQKitLayoutTable::LayoutCell>::resize(EQKitLayoutTable::LayoutCell *a1, unint64_t a2)
{
  v2 = 0xAF8AF8AF8AF8AF8BLL * ((*(a1 + 1) - *a1) >> 3);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<EQKitLayoutTable::LayoutCell>::__append(a1, v4);
  }

  else if (!v3)
  {
    std::vector<EQKitLayoutTable::LayoutCell>::__base_destruct_at_end[abi:ne200100](a1, *a1 + 280 * a2);
  }
}

void EQKitLayoutTable::generateRowBox(uint64_t *a1@<X0>, void *a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X3>, EQKit::ILayout *a5@<X8>)
{
  EQKit::ILayout::ILayout(a5, 0);
  v8 = 0;
  v9 = 0;
  v10 = 0.0;
  v11 = 56;
  v12 = 0.0;
  v13 = 0.0;
  v14 = 0.0;
  v15 = 0.0;
  while (1)
  {
    v16 = a1[8];
    v17 = a1[9] == v16 ? 0 : 0xAF8AF8AF8AF8AF8BLL * ((*(v16 + 64) - *(v16 + 56)) >> 3);
    if (v8 >= v17)
    {
      break;
    }

    v18 = [a2 objectAtIndex:v8];
    v19 = EQKitLayoutTable::resolveRowAlignment(v18, (a1 + 2), a1[8] + 80 * a3, *(a1[8] + 80 * a3 + 56) + v11 - 56, a3);
    if (v19 <= 5)
    {
      if (((1 << v19) & 0x2A) != 0)
      {
        [v18 layoutVSize];
        if (v15 < v20)
        {
          v15 = v20;
        }
      }

      else if (((1 << v19) & 0x14) != 0)
      {
        [v18 layoutHeight];
        v22 = v21;
        [v18 layoutDepth];
        if (v14 < v22)
        {
          v14 = v22;
        }

        if (v13 < v23)
        {
          v13 = v23;
        }

        v24 = *(*(a1[8] + 80 * a3 + 56) + v11);
        if ((v9 & (v10 < v24)) == 0)
        {
          v10 = *(*(a1[8] + 80 * a3 + 56) + v11);
        }

        if (v12 < v24)
        {
          v12 = *(*(a1[8] + 80 * a3 + 56) + v11);
        }

        v9 = 1;
      }
    }

    ++v8;
    v11 += 280;
  }

  if (v15 <= 0.0 && v14 <= 0.0 && v13 <= 0.0)
  {
    return;
  }

  if (v15 == 0.0)
  {
    v15 = v13 + v14;
  }

  else if (v14 == 0.0 && v13 == 0.0)
  {
    v13 = v15 * 0.5;
    v14 = v15 * 0.5;
  }

  else if (v13 + v14 <= v15)
  {
    if (v13 + v14 < v15)
    {
      v25 = (v15 - (v13 + v14)) * 0.5;
      v14 = v14 + v25;
      v13 = v13 + v25;
    }
  }

  else
  {
    v15 = v13 + v14;
  }

  if (v15 == v13 + v14)
  {
    v26 = v15;
  }

  else
  {
    v26 = v13 + v14;
  }

  v27 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v28 = 0;
  v29 = 0;
  v30 = v10 + (v12 - v10) * 0.5;
  for (i = 56; ; i += 280)
  {
    v32 = a1[8];
    v33 = a1[9] == v32 ? 0 : 0xAF8AF8AF8AF8AF8BLL * ((*(v32 + 64) - *(v32 + 56)) >> 3);
    if (v29 >= v33)
    {
      break;
    }

    v34 = [a2 objectAtIndex:v29];
    v35 = EQKitLayoutTable::resolveRowAlignment(v34, (a1 + 2), a1[8] + 80 * a3, *(a1[8] + 80 * a3 + 56) + i - 56, a3);
    [v34 layoutDepth];
    v37 = v36;
    [v34 layoutVSize];
    v39 = v14 + v37 + 0.0;
    if (v35 <= 2)
    {
      if (v35 != 1)
      {
        if (v35 != 2)
        {
          goto LABEL_54;
        }

        v40 = *(*(a1[8] + 80 * a3 + 56) + i);
        v41 = v30 + v39 - v14 - v37;
        goto LABEL_51;
      }

      v39 = v39 - v38;
    }

    else
    {
      switch(v35)
      {
        case 3:
          v41 = v39 - v26 * 0.5;
          v40 = v38 * -0.5;
LABEL_51:
          v39 = v41 + v40;
          break;
        case 4:
          v39 = v39 - v14 - v37;
          break;
        case 5:
          v39 = v39 - v26;
          break;
      }
    }

LABEL_54:
    if (v39 == 0.0)
    {
      v42 = v34;
    }

    else
    {
      v42 = [[EQKitVShift alloc] initWithBox:v34 offset:v39];
    }

    v43 = v42;
    [v27 addObject:v42];

    v44 = v29 + 1;
    v45 = a1[8];
    if (a1[9] != v45 && v44 < 0xAF8AF8AF8AF8AF8BLL * ((*(v45 + 64) - *(v45 + 56)) >> 3))
    {
      EQKitLayoutManager::lengthForMetric(a1[1], 15);
      v47 = v46;
      v49 = *a4;
      v48 = a4[1];
      if (v29 < (v48 - *a4) >> 4)
      {
        v50 = EQKitLayoutManager::layoutContext(a1[1]);
        v51 = (v49 + v28);
        goto LABEL_63;
      }

      if (v48 != v49)
      {
        v50 = EQKitLayoutManager::layoutContext(a1[1]);
        v51 = (v48 - 16);
LABEL_63:
        v47 = EQKitLength::resolveToAbsoluteWithUnitProviderAndDefault(v51, v50, v47);
      }

      v52 = [[EQKitHSpace alloc] initWithWidth:v47];
      [v27 addObject:v52];
    }

    v28 += 16;
    v29 = v44;
  }

  if ([v27 count])
  {
    v53 = [(EQKitCompoundBox *)[EQKitHBox alloc] initWithChildBoxes:v27];
    EQKit::ILayout::ILayout(v56, &v53->super.super);
    EQKit::ILayout::operator=(a5, v56);
    EQKit::ILayout::~ILayout(v56);
  }
}

void sub_25827B3F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, EQKit::ILayout *a10, uint64_t a11, char a12)
{
  EQKit::ILayout::~ILayout(&a12);
  EQKit::ILayout::~ILayout(a10);
  _Unwind_Resume(a1);
}

void EQKitLayoutTable::generateTableBox(EQKitLayoutTable *this@<X0>, EQKit::ILayout *a2@<X8>)
{
  v38 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v37 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = EQKitLayoutManager::layoutContext(*(this + 1));
  v5 = v4;
  if ((*(v4 + 120) & 2) != 0)
  {
    v6 = *(v4 + 136);
  }

  else
  {
    v6 = EQKitLayoutContext::pComputeMathAxis(v4);
  }

  v7 = EQKitLayoutManager::fontCollection(*(this + 1));
  v8 = (*(*v7 + 72))(v7, v5 + 8);
  XHeight = CTFontGetXHeight(v8);
  CFRelease(v8);
  v11 = *(v5 + 88);
  if (*(v5 + 120))
  {
    v10.n128_u64[0] = *(v5 + 128);
  }

  else
  {
    v10.n128_f64[0] = EQKitLayoutContext::pComputeRuleThickness(v5);
  }

  v12 = (*(*v11 + 56))(v11, 15, v5 + 8, v10);
  if (XHeight < v12)
  {
    XHeight = v12;
  }

  __p = 0;
  v43 = 0;
  v44 = 0;
  LODWORD(v40) = 3;
  v41 = 0x3FE999999999999ALL;
  v43 = std::vector<EQKitLength>::__emplace_back_slow_path<EQKitLength>(&__p, &v40);
  v13 = *(this + 1);
  v14 = *(v13 + 77);
  v40 = EQKitLayoutManager::currentNode(v13);
  LODWORD(v41) = 46;
  EQKit::AttributeCollection::getValueForKey<std::map<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,std::vector<EQKitLength>,std::less<EQKitTypes::Attributes::Enum>,EQKitLength<std::pair<EQKitTypes::Attributes::Enum const>>>>(v14, v14 + 56, &v40, &__p);
  if (*(this + 9) != *(this + 8))
  {
    v15 = 0;
    do
    {
      v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v17 = v16;
      v18 = 0;
      for (i = 0; ; ++i)
      {
        v20 = *(this + 8);
        v21 = *(this + 9) == v20 ? 0 : 0xAF8AF8AF8AF8AF8BLL * ((*(v20 + 64) - *(v20 + 56)) >> 3);
        if (i >= v21)
        {
          break;
        }

        p_super = *(*(v20 + 80 * v15 + 56) + v18 + 224);
        if (!p_super)
        {
          v16 = [[EQKitHSpace alloc] initWithWidth:0.0];
          p_super = &v16->super;
          v20 = *(this + 8);
        }

        v23 = (v20 + 80 * v15);
        v24 = v23[7] + v18;
        v25 = EQKitLayoutTable::resolveColumnAlignment(v16, this + 2, v23, v24, i);
        v26 = *(v24 + 48);
        EQKit::ILayout::ILayout(v39, p_super);
        EQKitLayoutManager::alignBoxHorizontally(v39, v25, 0, &v40, v26, 0.0);
        EQKit::ILayout::~ILayout(v39);
        [(EQKitHSpace *)v17 addObject:v40];
        EQKit::ILayout::~ILayout(&v40);
        v18 += 280;
      }

      if ([(EQKitHSpace *)v17 count])
      {
        EQKitLayoutTable::generateRowBox(this, v17, v15, &__p, &v40);
        if (v40)
        {
          [v38 addObject:?];
          [v37 addObject:v40];
          if (v15 + 1 < 0xCCCCCCCCCCCCCCCDLL * ((*(this + 9) - *(this + 8)) >> 4))
          {
            v27 = [[EQKitVSpace alloc] initWithHeight:XHeight depth:0.0];
            [v38 addObject:v27];
          }
        }

        EQKit::ILayout::~ILayout(&v40);
      }

      ++v15;
    }

    while (v15 < 0xCCCCCCCCCCCCCCCDLL * ((*(this + 9) - *(this + 8)) >> 4));
  }

  v28 = [v38 count];
  v29 = *(this + 1);
  v30 = *(v29 + 77);
  v39[0] = 0;
  v40 = EQKitLayoutManager::currentNode(v29);
  LODWORD(v41) = 2;
  if ((EQKit::AttributeCollection::getValueForKey<std::map<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum>>(v30, v30 + 152, &v40, v39) & 1) == 0)
  {
    v39[0] = 2;
  }

  if (v28)
  {
    v31 = [[EQKitVBox alloc] initWithChildBoxes:v38];
    [(EQKitBox *)v31 layoutVSize];
    v33 = v32;
    [(EQKitBox *)v31 layoutDepth];
    v35 = v34;

    if (v39[0] == 2)
    {
      v36 = v6 + v35 + v33 * -0.5;
    }

    else if (v39[0] == 1)
    {
      v36 = v35 - v33;
    }

    else if ((v39[0] - 3) > 1)
    {
      if (v39[0] == 5)
      {
        v36 = v35;
      }

      else
      {
        v36 = 0.0;
      }
    }

    else
    {
      v36 = v35 + v33 * -0.5;
    }

    v28 = [[EQKitOffsetVBox alloc] initWithChildBoxes:v38 pivotIndex:0 offset:v36];
  }

  EQKit::ILayout::ILayout(a2, &v28->super.super.super);
  EQKitLayoutTable::relationalOperatorOffset(this, a2, &v40);
  if (v40)
  {
    EQKit::ILayout::setOffsetOfKind(a2, 1, &v40);
  }

  EQKit::ILayoutOffset::~ILayoutOffset(&v40);
  if (__p)
  {
    v43 = __p;
    operator delete(__p);
  }
}

void sub_25827B914(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void EQKitLayoutTable::layoutTable(uint64_t a1@<X0>, void *a2@<X1>, EQKit::ILayout *a3@<X8>)
{
  EQKit::ILayout::ILayout(a3, 0);
  if (a2)
  {
    v6 = [a2 schemataChildren];
    *(a1 + 88) = 0;
    LODWORD(v15[0]) = 0;
    v7 = *(a1 + 8);
    v8 = *(v7 + 77);
    v13 = EQKitLayoutManager::currentNode(v7);
    v14 = 8;
    if (EQKit::AttributeCollection::getValueForKey<std::map<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum>>(v8, v8 + 8, &v13, v15))
    {
      *(a1 + 88) = LODWORD(v15[0]) == 2;
    }

    EQKitLayoutTable::generateTableLayout(a1, v6);
    *__p = 0u;
    v17 = 0u;
    *v15 = 0u;
    v9 = *(a1 + 8);
    v10 = *(v9 + 77);
    v13 = EQKitLayoutManager::currentNode(v9);
    v14 = 3;
    EQKit::AttributeCollection::getValueForKey<std::map<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,std::vector<objc_object  {objcproto15EQKitLayoutNode}*::Notation::Enum>,std::less<EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Notation::Enum<std::pair<EQKitTypes::Attributes::Enum const>>>>(v10, v10 + 248, &v13, &__p[1]);
    v11 = *(a1 + 8);
    v12 = *(v11 + 77);
    v13 = EQKitLayoutManager::currentNode(v11);
    v14 = 4;
    EQKit::AttributeCollection::getValueForKey<std::map<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,std::vector<objc_object  {objcproto15EQKitLayoutNode}*::Notation::Enum>,std::less<EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Notation::Enum<std::pair<EQKitTypes::Attributes::Enum const>>>>(v12, v12 + 272, &v13, v15);
    if ((a1 + 16) != v15)
    {
      std::vector<EQKitTypes::Notation::Enum>::__assign_with_size[abi:ne200100]<EQKitTypes::Notation::Enum*,EQKitTypes::Notation::Enum*>((a1 + 16), v15[0], v15[1], (v15[1] - v15[0]) >> 2);
      std::vector<EQKitTypes::Notation::Enum>::__assign_with_size[abi:ne200100]<EQKitTypes::Notation::Enum*,EQKitTypes::Notation::Enum*>((a1 + 40), __p[1], v17, (v17 - __p[1]) >> 2);
    }

    EQKitLayoutTable::generateTableBox(a1, &v13);
    EQKit::ILayout::operator=(a3, &v13);
    EQKit::ILayout::~ILayout(&v13);
    if (__p[1])
    {
      *&v17 = __p[1];
      operator delete(__p[1]);
    }

    if (v15[0])
    {
      v15[1] = v15[0];
      operator delete(v15[0]);
    }
  }
}

void sub_25827BB1C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  EQKit::ILayout::~ILayout(va);
  EQKitLayoutTable::Properties::~Properties(va1);
  EQKit::ILayout::~ILayout(v2);
  _Unwind_Resume(a1);
}

uint64_t std::vector<EQKitLayoutTable::LayoutCell>::__emplace_back_slow_path<EQKitLayoutTable::LayoutCell>(uint64_t a1, const EQKitLayoutTable::LayoutCell *a2)
{
  v2 = 0xAF8AF8AF8AF8AF8BLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xEA0EA0EA0EA0EALL)
  {
    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  if (0x5F15F15F15F15F16 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5F15F15F15F15F16 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAF8AF8AF8AF8AF8BLL * ((*(a1 + 16) - *a1) >> 3) >= 0x75075075075075)
  {
    v6 = 0xEA0EA0EA0EA0EALL;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<EQKitLayoutTable::LayoutCell>>(a1, v6);
  }

  v13 = 0;
  v14 = 280 * v2;
  EQKitLayoutTable::LayoutCell::LayoutCell((280 * v2), a2);
  v15 = 280 * v2 + 280;
  v7 = *(a1 + 8);
  v8 = (280 * v2 + *a1 - v7);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<EQKitLayoutTable::LayoutCell>,EQKitLayoutTable::LayoutCell*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<EQKitLayoutTable::LayoutCell>::~__split_buffer(&v13);
  return v12;
}

void sub_25827BC8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<EQKitLayoutTable::LayoutCell>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

EQKitLayoutTable::LayoutCell *EQKitLayoutTable::LayoutCell::LayoutCell(EQKitLayoutTable::LayoutCell *this, const EQKitLayoutTable::LayoutCell *a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  std::vector<EQKitTypes::Align::Enum>::__init_with_size[abi:ne200100]<EQKitTypes::Align::Enum*,EQKitTypes::Align::Enum*>(this, *a2, *(a2 + 1), (*(a2 + 1) - *a2) >> 2);
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  std::vector<EQKitTypes::VAlign::Enum>::__init_with_size[abi:ne200100]<EQKitTypes::VAlign::Enum*,EQKitTypes::VAlign::Enum*>(this + 24, *(a2 + 3), *(a2 + 4), (*(a2 + 4) - *(a2 + 3)) >> 2);
  *(this + 3) = *(a2 + 3);
  EQKitLayoutRow::EQKitLayoutRow((this + 64), (a2 + 64));
  EQKit::ILayout::ILayout((this + 224), (a2 + 224));
  return this;
}

void sub_25827BD20(_Unwind_Exception *a1)
{
  EQKitLayoutRow::~EQKitLayoutRow((v1 + 64));
  EQKitLayoutTable::Properties::~Properties(v1);
  _Unwind_Resume(a1);
}

uint64_t std::vector<EQKitTypes::Align::Enum>::__init_with_size[abi:ne200100]<EQKitTypes::Align::Enum*,EQKitTypes::Align::Enum*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<EQKitTypes::Notation::Enum>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25827BDBC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<EQKitTypes::VAlign::Enum>::__init_with_size[abi:ne200100]<EQKitTypes::VAlign::Enum*,EQKitTypes::VAlign::Enum*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<EQKitTypes::Notation::Enum>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25827BE38(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<EQKitLayoutTable::LayoutCell>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xEA0EA0EA0EA0EBLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<EQKitLayoutTable::LayoutCell>,EQKitLayoutTable::LayoutCell*>(uint64_t a1, EQKitLayoutTable::LayoutCell *a2, EQKitLayoutTable::LayoutCell *a3, EQKitLayoutTable::LayoutCell *this)
{
  v11 = this;
  v12 = this;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      EQKitLayoutTable::LayoutCell::LayoutCell(this, v7);
      v7 = (v7 + 280);
      this = (v12 + 280);
      v12 = (v12 + 280);
    }

    while (v7 != a3);
    v10 = 1;
    while (v5 != a3)
    {
      std::allocator_traits<std::allocator<EQKitLayoutTable::LayoutCell>>::destroy[abi:ne200100]<EQKitLayoutTable::LayoutCell,void,0>(a1, v5);
      v5 = (v5 + 280);
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<EQKitLayoutTable::LayoutCell>,EQKitLayoutTable::LayoutCell*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

void std::allocator_traits<std::allocator<EQKitLayoutTable::LayoutCell>>::destroy[abi:ne200100]<EQKitLayoutTable::LayoutCell,void,0>(uint64_t a1, uint64_t a2)
{
  EQKit::ILayout::~ILayout((a2 + 224));
  EQKitLayoutRow::~EQKitLayoutRow((a2 + 64));
  v3 = *(a2 + 24);
  if (v3)
  {
    *(a2 + 32) = v3;
    operator delete(v3);
  }

  v4 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v4;

    operator delete(v4);
  }
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<EQKitLayoutTable::LayoutCell>,EQKitLayoutTable::LayoutCell*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<EQKitLayoutTable::LayoutCell>,EQKitLayoutTable::LayoutCell*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<EQKitLayoutTable::LayoutCell>,EQKitLayoutTable::LayoutCell*>::operator()[abi:ne200100](uint64_t *a1)
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
      v3 -= 280;
      std::allocator_traits<std::allocator<EQKitLayoutTable::LayoutCell>>::destroy[abi:ne200100]<EQKitLayoutTable::LayoutCell,void,0>(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t std::__split_buffer<EQKitLayoutTable::LayoutCell>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<EQKitLayoutTable::LayoutCell>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<EQKitLayoutTable::LayoutCell>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 280;
    std::allocator_traits<std::allocator<EQKitLayoutTable::LayoutCell>>::destroy[abi:ne200100]<EQKitLayoutTable::LayoutCell,void,0>(v5, v4 - 280);
  }
}

EQKitLayoutTable::LayoutCell *EQKitLayoutTable::LayoutCell::LayoutCell(EQKitLayoutTable::LayoutCell *this)
{
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  EQKitLayoutRow::EQKitLayoutRow((this + 64), 0);
  EQKit::ILayout::ILayout((this + 224), 0);
  return this;
}

void sub_25827C134(_Unwind_Exception *a1)
{
  EQKitLayoutRow::~EQKitLayoutRow((v1 + 64));
  EQKitLayoutTable::Properties::~Properties(v1);
  _Unwind_Resume(a1);
}

void EQKitLayoutTable::LayoutCell::~LayoutCell(EQKitLayoutTable::LayoutCell *this)
{
  EQKit::ILayout::~ILayout((this + 224));
  EQKitLayoutRow::~EQKitLayoutRow((this + 64));
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  v3 = *this;
  if (*this)
  {
    *(this + 1) = v3;
    operator delete(v3);
  }
}

uint64_t std::vector<EQKitLayoutTable::LayoutRow>::__construct_one_at_end[abi:ne200100]<EQKitLayoutTable::LayoutRow const&>(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  *v4 = 0;
  v4[1] = 0;
  v4[2] = 0;
  std::vector<EQKitTypes::Align::Enum>::__init_with_size[abi:ne200100]<EQKitTypes::Align::Enum*,EQKitTypes::Align::Enum*>(v4, *a2, a2[1], (a2[1] - *a2) >> 2);
  v4[3] = 0;
  v4[4] = 0;
  v4[5] = 0;
  std::vector<EQKitTypes::VAlign::Enum>::__init_with_size[abi:ne200100]<EQKitTypes::VAlign::Enum*,EQKitTypes::VAlign::Enum*>((v4 + 3), a2[3], a2[4], (a2[4] - a2[3]) >> 2);
  v5 = a2[6];
  v4[7] = 0;
  v4[6] = v5;
  v4[8] = 0;
  v4[9] = 0;
  result = std::vector<EQKitLayoutTable::LayoutCell>::__init_with_size[abi:ne200100]<EQKitLayoutTable::LayoutCell*,EQKitLayoutTable::LayoutCell*>((v4 + 7), a2[7], a2[8], 0xAF8AF8AF8AF8AF8BLL * ((a2[8] - a2[7]) >> 3));
  *(a1 + 8) = v4 + 10;
  return result;
}

void sub_25827C258(_Unwind_Exception *a1)
{
  EQKitLayoutTable::Properties::~Properties(v2);
  *(v1 + 8) = v2;
  _Unwind_Resume(a1);
}

uint64_t std::vector<EQKitLayoutTable::LayoutRow>::__emplace_back_slow_path<EQKitLayoutTable::LayoutRow const&>(uint64_t *a1, uint64_t *a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x333333333333333)
  {
    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 4) >= 0x199999999999999)
  {
    v6 = 0x333333333333333;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<EQKitLayoutTable::LayoutRow>>(a1, v6);
  }

  v7 = 80 * v2;
  v15 = 0;
  v16 = v7;
  v17 = v7;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  std::vector<EQKitTypes::Align::Enum>::__init_with_size[abi:ne200100]<EQKitTypes::Align::Enum*,EQKitTypes::Align::Enum*>(v7, *a2, a2[1], (a2[1] - *a2) >> 2);
  *(v7 + 24) = 0;
  *(v7 + 32) = 0;
  *(v7 + 40) = 0;
  std::vector<EQKitTypes::VAlign::Enum>::__init_with_size[abi:ne200100]<EQKitTypes::VAlign::Enum*,EQKitTypes::VAlign::Enum*>(v7 + 24, a2[3], a2[4], (a2[4] - a2[3]) >> 2);
  v8 = a2[6];
  *(v7 + 56) = 0;
  *(v7 + 48) = v8;
  *(v7 + 64) = 0;
  *(v7 + 72) = 0;
  std::vector<EQKitLayoutTable::LayoutCell>::__init_with_size[abi:ne200100]<EQKitLayoutTable::LayoutCell*,EQKitLayoutTable::LayoutCell*>(v7 + 56, a2[7], a2[8], 0xAF8AF8AF8AF8AF8BLL * ((a2[8] - a2[7]) >> 3));
  *&v17 = v17 + 80;
  v9 = a1[1];
  v10 = (v16 + *a1 - v9);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<EQKitLayoutTable::LayoutRow>,EQKitLayoutTable::LayoutRow*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<EQKitLayoutTable::LayoutRow>::~__split_buffer(&v15);
  return v14;
}

void sub_25827C410(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  EQKitLayoutTable::Properties::~Properties(v12);
  std::__split_buffer<EQKitLayoutTable::LayoutRow>::~__split_buffer(&a12);
  _Unwind_Resume(a1);
}

uint64_t std::vector<EQKitLayoutTable::LayoutCell>::__init_with_size[abi:ne200100]<EQKitLayoutTable::LayoutCell*,EQKitLayoutTable::LayoutCell*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<EQKitLayoutTable::LayoutCell>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25827C4B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<EQKitLayoutTable::LayoutCell>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<EQKitLayoutTable::LayoutCell>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xEA0EA0EA0EA0EBLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<EQKitLayoutTable::LayoutCell>>(a1, a2);
  }

  std::vector<std::string>::__throw_length_error[abi:ne200100]();
}

EQKitLayoutTable::LayoutCell *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<EQKitLayoutTable::LayoutCell>,EQKitLayoutTable::LayoutCell*,EQKitLayoutTable::LayoutCell*,EQKitLayoutTable::LayoutCell*>(uint64_t a1, EQKitLayoutTable::LayoutCell *a2, EQKitLayoutTable::LayoutCell *a3, EQKitLayoutTable::LayoutCell *this)
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
      EQKitLayoutTable::LayoutCell::LayoutCell(v4, v6);
      v6 = (v6 + 280);
      v4 = (v11 + 280);
      v11 = (v11 + 280);
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<EQKitLayoutTable::LayoutCell>,EQKitLayoutTable::LayoutCell*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

void std::vector<EQKitLayoutTable::LayoutCell>::__base_destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; std::allocator_traits<std::allocator<EQKitLayoutTable::LayoutCell>>::destroy[abi:ne200100]<EQKitLayoutTable::LayoutCell,void,0>(a1, i))
  {
    i -= 280;
  }

  *(a1 + 8) = a2;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<EQKitLayoutTable::LayoutRow>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<EQKitLayoutTable::LayoutRow>,EQKitLayoutTable::LayoutRow*>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      *a4 = *v7;
      a4[2] = *(v7 + 16);
      *v7 = 0;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      a4[3] = 0;
      a4[4] = 0;
      a4[5] = 0;
      *(a4 + 3) = *(v7 + 24);
      a4[5] = *(v7 + 40);
      *(v7 + 32) = 0;
      *(v7 + 40) = 0;
      *(v7 + 24) = 0;
      a4[6] = *(v7 + 48);
      a4[8] = 0;
      a4[9] = 0;
      a4[7] = 0;
      *(a4 + 7) = *(v7 + 56);
      a4[9] = *(v7 + 72);
      *(v7 + 56) = 0;
      *(v7 + 64) = 0;
      *(v7 + 72) = 0;
      v7 += 80;
      a4 += 10;
    }

    while (v7 != a3);
    v12 = a4;
    v10 = 1;
    while (v5 != a3)
    {
      std::allocator_traits<std::allocator<EQKitLayoutTable::LayoutRow>>::destroy[abi:ne200100]<EQKitLayoutTable::LayoutRow,void,0>(a1, v5);
      v5 += 80;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<EQKitLayoutTable::LayoutRow>,EQKitLayoutTable::LayoutRow*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

void std::allocator_traits<std::allocator<EQKitLayoutTable::LayoutRow>>::destroy[abi:ne200100]<EQKitLayoutTable::LayoutRow,void,0>(uint64_t a1, uint64_t a2)
{
  v5 = (a2 + 56);
  std::vector<EQKitLayoutTable::LayoutCell>::__destroy_vector::operator()[abi:ne200100](&v5);
  v3 = *(a2 + 24);
  if (v3)
  {
    *(a2 + 32) = v3;
    operator delete(v3);
  }

  v4 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v4;
    operator delete(v4);
  }
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<EQKitLayoutTable::LayoutRow>,EQKitLayoutTable::LayoutRow*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<EQKitLayoutTable::LayoutRow>,EQKitLayoutTable::LayoutRow*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<EQKitLayoutTable::LayoutRow>,EQKitLayoutTable::LayoutRow*>::operator()[abi:ne200100](uint64_t *a1)
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
      v3 -= 80;
      std::allocator_traits<std::allocator<EQKitLayoutTable::LayoutRow>>::destroy[abi:ne200100]<EQKitLayoutTable::LayoutRow,void,0>(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t std::__split_buffer<EQKitLayoutTable::LayoutRow>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<EQKitLayoutTable::LayoutRow>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<EQKitLayoutTable::LayoutRow>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 80;
    std::allocator_traits<std::allocator<EQKitLayoutTable::LayoutRow>>::destroy[abi:ne200100]<EQKitLayoutTable::LayoutRow,void,0>(v5, v4 - 80);
  }
}

void EQKitLayoutTable::LayoutRow::~LayoutRow(EQKitLayoutTable::LayoutRow *this)
{
  v4 = (this + 56);
  std::vector<EQKitLayoutTable::LayoutCell>::__destroy_vector::operator()[abi:ne200100](&v4);
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  v3 = *this;
  if (*this)
  {
    *(this + 1) = v3;
    operator delete(v3);
  }
}

EQKitLayoutTable::LayoutCell *std::vector<EQKitLayoutTable::LayoutCell>::__append(EQKitLayoutTable::LayoutCell *result, unint64_t a2)
{
  v3 = result;
  v5 = *(result + 1);
  v4 = *(result + 2);
  if (0xAF8AF8AF8AF8AF8BLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = (v5 + 280 * a2);
      v11 = 280 * a2;
      do
      {
        result = EQKitLayoutTable::LayoutCell::LayoutCell(v5);
        v5 = (v5 + 280);
        v11 -= 280;
      }

      while (v11);
      v5 = v10;
    }

    *(v3 + 8) = v5;
  }

  else
  {
    v6 = 0xAF8AF8AF8AF8AF8BLL * ((v5 - *result) >> 3);
    if (v6 + a2 > 0xEA0EA0EA0EA0EALL)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v7 = 0xAF8AF8AF8AF8AF8BLL * ((v4 - *result) >> 3);
    v8 = 2 * v7;
    if (2 * v7 <= v6 + a2)
    {
      v8 = v6 + a2;
    }

    if (v7 >= 0x75075075075075)
    {
      v9 = 0xEA0EA0EA0EA0EALL;
    }

    else
    {
      v9 = v8;
    }

    v22 = result;
    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<EQKitLayoutTable::LayoutCell>>(result, v9);
    }

    v12 = 280 * v6;
    v19 = 0;
    v20 = v12;
    v21 = v12;
    v13 = 280 * a2;
    v14 = (v12 + 280 * a2);
    do
    {
      EQKitLayoutTable::LayoutCell::LayoutCell(v12);
      v12 += 280;
      v13 -= 280;
    }

    while (v13);
    *&v21 = v14;
    v15 = *(v3 + 8);
    v16 = (v20 + *v3 - v15);
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<EQKitLayoutTable::LayoutCell>,EQKitLayoutTable::LayoutCell*>(v3, *v3, v15, v16);
    v17 = *v3;
    *v3 = v16;
    v18 = *(v3 + 16);
    *(v3 + 8) = v21;
    *&v21 = v17;
    *(&v21 + 1) = v18;
    v19 = v17;
    v20 = v17;
    return std::__split_buffer<EQKitLayoutTable::LayoutCell>::~__split_buffer(&v19);
  }

  return result;
}

void sub_25827CACC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<EQKitLayoutTable::LayoutCell>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<EQKitLength>::__emplace_back_slow_path<EQKitLength>(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 3 > v3)
  {
    v3 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v15 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<EQKitLength>>(a1, v7);
  }

  v8 = 16 * v2;
  __p = 0;
  v12 = v8;
  *v8 = *a2;
  *(v8 + 8) = *(a2 + 8);
  v13 = 16 * v2 + 16;
  v14 = 0;
  std::vector<EQKitLength>::__swap_out_circular_buffer(a1, &__p);
  v9 = a1[1];
  if (v13 != v12)
  {
    v13 += (v12 - v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v9;
}

void sub_25827CBE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t EQKit::AttributeCollection::getValueForKey<std::map<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,std::vector<EQKitLength>,std::less<EQKitTypes::Attributes::Enum>,EQKitLength<std::pair<EQKitTypes::Attributes::Enum const>>>>(uint64_t a1, uint64_t a2, uint64_t a3, char **a4)
{
  v7 = std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum>,std::__map_value_compare<EQKitTypes::Attributes::Enum,objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum,std::less<EQKitTypes::Attributes::Enum>,true>,std::allocator<objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum>>::find<EQKitTypes::Attributes::Enum>(a2, a3);
  v8 = v7;
  if (a2 + 8 != v7)
  {
    if ((v7 + 48) == a4)
    {
      return 1;
    }

    v9 = *(v7 + 48);
    v10 = *(v7 + 56);
LABEL_4:
    std::vector<EQKitLength>::__assign_with_size[abi:ne200100]<EQKitLength*,EQKitLength*>(a4, v9, v10, &v10[-v9] >> 4);
    return 1;
  }

  result = [*a3 isAttributeDefaultInheritableFromStyle:*(a3 + 8)];
  if (result)
  {
    result = [*a3 parent];
    if (result)
    {
      v12 = result;
      while (1)
      {
        v13 = [v12 layoutStyleNode];
        if (v13)
        {
          v15 = v13;
          v16 = *(a3 + 8);
          v14 = std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum>,std::__map_value_compare<EQKitTypes::Attributes::Enum,objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum,std::less<EQKitTypes::Attributes::Enum>,true>,std::allocator<objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum>>::find<EQKitTypes::Attributes::Enum>(a2, &v15);
          if (v8 != v14)
          {
            break;
          }
        }

        result = [v12 parent];
        v12 = result;
        if (!result)
        {
          return result;
        }
      }

      if ((v14 + 48) == a4)
      {
        return 1;
      }

      v9 = *(v14 + 48);
      v10 = *(v14 + 56);
      goto LABEL_4;
    }
  }

  return result;
}

char *std::vector<EQKitLength>::__assign_with_size[abi:ne200100]<EQKitLength*,EQKitLength*>(char **a1, uint64_t a2, char *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  result = *a1;
  if (a4 > (v7 - result) >> 4)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a4 >> 60))
    {
      v9 = v7 >> 3;
      if (v7 >> 3 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF0)
      {
        v10 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<EQKitPath::PathElement>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  v11 = a1[1];
  if (a4 <= (v11 - result) >> 4)
  {
    while (v5 != a3)
    {
      *result = *v5;
      *(result + 1) = *(v5 + 8);
      v5 += 16;
      result += 16;
    }

    a1[1] = result;
  }

  else
  {
    v12 = (a2 + v11 - result);
    if (v11 != result)
    {
      v13 = result;
      v14 = a2;
      do
      {
        *v13 = *v14;
        *(v13 + 1) = *(v14 + 8);
        v14 += 16;
        v13 += 16;
      }

      while (v14 != v12);
    }

    if (v12 == a3)
    {
      v16 = v11;
    }

    else
    {
      v15 = a2 - result;
      v16 = v11;
      do
      {
        v17 = &v16[v15];
        *v11 = *&v16[v15];
        *(v11 + 1) = *&v16[v15 + 8];
        v11 += 16;
        v16 += 16;
      }

      while (v17 + 16 != a3);
    }

    a1[1] = v16;
  }

  return result;
}

id EQKitLayoutFilterOutSpaceLike(void *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(a1, "count")}];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [a1 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(a1);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        if (([v7 isSpaceLike] & 1) == 0)
        {
          [v2 addObject:v7];
        }
      }

      v4 = [a1 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  return [v2 copy];
}

uint64_t EQKitAlignmentGroup::EQKitAlignmentGroup(uint64_t result, int a2)
{
  *result = 0;
  *(result + 8) = a2;
  *(result + 16) = 0x7FEFFFFFFFFFFFFFLL;
  return result;
}

double EQKitAlignmentGroup::EQKitAlignmentGroup(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 16);
  *(a1 + 16) = result;
  return result;
}

double EQKitAlignmentGroup::increaseWidth(EQKitAlignmentGroup *this, double a2)
{
  result = *this + a2;
  *this = result;
  return result;
}

double EQKitAlignmentGroup::saveAlignmentPoint(EQKitAlignmentGroup *this, double a2)
{
  result = *this + a2;
  *(this + 2) = result;
  return result;
}

double EQKitAlignmentGroup::leftWidth(EQKitAlignmentGroup *this)
{
  result = *(this + 2);
  if (result == 1.79769313e308)
  {
    v2 = *(this + 2);
    if ((v2 - 3) >= 2)
    {
      result = 0.0;
      if (v2 == 2)
      {
        return *this * 0.5;
      }
    }

    else
    {
      return *this;
    }
  }

  return result;
}

double EQKitAlignmentGroup::rightWidth(EQKitAlignmentGroup *this)
{
  v1 = *this;
  v2 = *(this + 2);
  if (v2 == 1.79769313e308)
  {
    v3 = *(this + 2);
    v2 = *this;
    if ((v3 - 3) >= 2)
    {
      v2 = 0.0;
      if (v3 == 2)
      {
        v2 = v1 * 0.5;
      }
    }
  }

  return v1 - v2;
}

void EQKitGroupAlignmentContext::addRow(uint64_t *a1, uint64_t *a2)
{
  v5 = *a2;
  v4 = a2[1];
  v6 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a2) >> 3);
  if (v6 > (a1[1] - *a1) >> 3)
  {
    v14 = 0;
    std::vector<double>::resize(a1, v6, &v14);
    v14 = 0;
    std::vector<double>::resize(a1 + 3, v6, &v14);
  }

  if (v4 != v5)
  {
    v7 = 0;
    v8 = 0;
    if (v6 <= 1)
    {
      v6 = 1;
    }

    do
    {
      v9 = *a2;
      v10 = *a1;
      v11 = EQKitAlignmentGroup::leftWidth((*a2 + v7));
      if (*(v10 + 8 * v8) >= v11)
      {
        v11 = *(v10 + 8 * v8);
      }

      *(*a1 + 8 * v8) = v11;
      v12 = a1[3];
      v13 = EQKitAlignmentGroup::rightWidth((v9 + v7));
      if (*(v12 + 8 * v8) >= v13)
      {
        v13 = *(v12 + 8 * v8);
      }

      *(a1[3] + 8 * v8++) = v13;
      v7 += 24;
    }

    while (v6 != v8);
  }
}

double EQKitGroupAlignmentContext::leftSpaceRequiredForGroup(EQKitGroupAlignmentContext *this, const EQKitAlignmentGroup *a2, unint64_t a3)
{
  result = 0.0;
  if (a3 < (*(this + 1) - *this) >> 3)
  {
    v4 = *(*this + 8 * a3);
    return v4 - EQKitAlignmentGroup::leftWidth(a2);
  }

  return result;
}

double EQKitGroupAlignmentContext::rightSpaceRequiredForGroup(EQKitGroupAlignmentContext *this, const EQKitAlignmentGroup *a2, unint64_t a3)
{
  v3 = *(this + 3);
  result = 0.0;
  if (a3 < (*(this + 4) - v3) >> 3)
  {
    v5 = *(v3 + 8 * a3);
    return v5 - EQKitAlignmentGroup::rightWidth(a2);
  }

  return result;
}

double EQKitGroupAlignmentContext::widthOfGroupsAfterIndex(EQKitGroupAlignmentContext *this, uint64_t a2)
{
  v2 = a2 + 1;
  v3 = *(this + 1);
  result = 0.0;
  if (a2 + 1 < ((v3 - *this) >> 3))
  {
    v5 = 8 * v2;
    v6 = (*this + 8 * v2);
    v7 = 0.0;
    if (v6 != v3)
    {
      v8 = 0.0;
      do
      {
        v9 = *v6++;
        v8 = v9 + v8;
      }

      while (v6 != v3);
      v7 = v8 + 0.0;
    }

    v10 = *(this + 4);
    v11 = (v5 + *(this + 3));
    if (v11 != v10)
    {
      v12 = 0.0;
      do
      {
        v13 = *v11++;
        v12 = v13 + v12;
      }

      while (v11 != v10);
      result = v12;
    }

    return v7 + result;
  }

  return result;
}

EQKit::ILayoutOffset *EQKit::ILayoutOffset::ILayoutOffset(EQKit::ILayoutOffset *this, EQKitBox *a2, double a3)
{
  *this = a2;
  *(this + 1) = a3;
  return this;
}

EQKit::ILayoutOffset *EQKit::ILayoutOffset::ILayoutOffset(EQKit::ILayoutOffset *this, id *a2)
{
  *this = *a2;
  *(this + 1) = a2[1];
  return this;
}

uint64_t EQKit::ILayoutOffset::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {

    *a1 = *a2;
    *(a1 + 8) = *(a2 + 8);
  }

  return a1;
}

double EQKit::ILayoutOffset::offsetInBox(EQKit::ILayoutOffset *this, EQKitBox *a2)
{
  if (!*this)
  {
    return 1.79769313e308;
  }

  if (a2)
  {
    [(EQKitBox *)a2 transformFromDescendant:?];
    v3 = 0.0 * 0.0;
  }

  else
  {
    v3 = 0.0;
  }

  return v3 + 0.0 * *(this + 1) + 0.0;
}

EQKit::ILayout *EQKit::ILayout::ILayout(EQKit::ILayout *this, EQKitBox *a2)
{
  v3 = a2;
  *(this + 3) = 0;
  *(this + 2) = 0;
  *this = v3;
  *(this + 1) = this + 16;
  *(this + 8) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  return this;
}

EQKit::ILayout *EQKit::ILayout::ILayout(EQKit::ILayout *this, const EQKit::ILayout *a2)
{
  *this = *a2;
  std::map<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>::map[abi:ne200100](this + 1, a2 + 8);
  *(this + 8) = *(a2 + 8);
  *(this + 40) = *(a2 + 40);
  return this;
}

uint64_t EQKit::ILayout::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {

    *a1 = *a2;
    std::__tree<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::__map_value_compare<EQKit::ILayoutOffset::Kind,std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::less<EQKit::ILayoutOffset::Kind>,true>,std::allocator<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::__tree_node<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,void *> *,long>>((a1 + 8), *(a2 + 8), (a2 + 16));
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 40) = *(a2 + 40);
  }

  return a1;
}

EQKitBox *EQKit::ILayout::setBox(EQKitBox *this, EQKitBox *a2)
{
  if (this->super.isa != a2)
  {
    v3 = this;

    this = a2;
    v3->super.isa = this;
  }

  return this;
}

uint64_t EQKit::ILayout::setIsOverAccentTokenWithBaseToken(uint64_t this, int a2)
{
  if (a2)
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  *(this + 32) = *(this + 32) & 0xFEFF | v2;
  return this;
}

uint64_t EQKit::ILayout::setIsUserSpace(uint64_t this, int a2)
{
  if (a2)
  {
    v2 = 512;
  }

  else
  {
    v2 = 0;
  }

  *(this + 32) = *(this + 32) & 0xFDFF | v2;
  return this;
}

BOOL EQKit::ILayout::getOffsetOfKind(uint64_t a1, int a2, void *a3)
{
  v5 = *(a1 + 16);
  v3 = a1 + 16;
  v4 = v5;
  if (!v5)
  {
    return 0;
  }

  v7 = v3;
  do
  {
    if (*(v4 + 32) >= a2)
    {
      v7 = v4;
    }

    v4 = *(v4 + 8 * (*(v4 + 32) < a2));
  }

  while (v4);
  if (v7 == v3 || *(v7 + 32) > a2)
  {
    return 0;
  }

  EQKit::ILayoutOffset::operator=(a3, v7 + 40);
  return *a3 != 0;
}

void EQKit::ILayout::setOffsetOfKind(uint64_t a1, int a2, uint64_t a3)
{
  v5 = a2;
  v6 = *a3;
  v7 = *(a3 + 8);
  std::__tree<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::__map_value_compare<EQKit::ILayoutOffset::Kind,std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::less<EQKit::ILayoutOffset::Kind>,true>,std::allocator<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>>>::__emplace_unique_key_args<EQKit::ILayoutOffset::Kind,std::pair<EQKit::ILayoutOffset::Kind const,EQKit::ILayoutOffset>>(a1 + 8, &v5);
}

uint64_t *EQKit::ILayout::removeOffsetOfKind(uint64_t *result, int a2)
{
  v2 = result + 2;
  v3 = result[2];
  if (v3)
  {
    ++result;
    v4 = v2;
    do
    {
      if (*(v3 + 32) >= a2)
      {
        v4 = v3;
      }

      v3 = *(v3 + 8 * (*(v3 + 32) < a2));
    }

    while (v3);
    if (v4 != v2 && *(v4 + 32) <= a2)
    {
      return std::__tree<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::__map_value_compare<EQKit::ILayoutOffset::Kind,std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::less<EQKit::ILayoutOffset::Kind>,true>,std::allocator<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>>>::erase(result, v4);
    }
  }

  return result;
}

void EQKit::ILayout::takeMissingOffsetsFromLayout(EQKit::ILayout *this, const EQKit::ILayout *a2)
{
  v2 = *(a2 + 1);
  v3 = a2 + 16;
  if (v2 != a2 + 16)
  {
    v5 = (this + 16);
    do
    {
      v6 = *v5;
      v7 = *(v2 + 8);
      if (!*v5)
      {
        goto LABEL_10;
      }

      v8 = v5;
      do
      {
        if (*(v6 + 32) >= v7)
        {
          v8 = v6;
        }

        v6 = *(v6 + 8 * (*(v6 + 32) < v7));
      }

      while (v6);
      if (v8 == v5 || v7 < *(v8 + 8))
      {
LABEL_10:
        v12 = *(v2 + 8);
        v13 = *(v2 + 5);
        v14 = *(v2 + 6);
        std::__tree<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::__map_value_compare<EQKit::ILayoutOffset::Kind,std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::less<EQKit::ILayoutOffset::Kind>,true>,std::allocator<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>>>::__emplace_unique_key_args<EQKit::ILayoutOffset::Kind,std::pair<EQKit::ILayoutOffset::Kind const,EQKit::ILayoutOffset>>(this + 8, &v12);
      }

      v9 = *(v2 + 1);
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
          v10 = *(v2 + 2);
          v11 = *v10 == v2;
          v2 = v10;
        }

        while (!v11);
      }

      v2 = v10;
    }

    while (v10 != v3);
  }
}

uint64_t *std::__tree<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::__map_value_compare<EQKit::ILayoutOffset::Kind,std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::less<EQKit::ILayoutOffset::Kind>,true>,std::allocator<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>>>::erase(uint64_t **a1, uint64_t a2)
{
  v3 = std::__tree<std::__value_type<unsigned short,EQKit::Config::Operator::Form>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,EQKit::Config::Operator::Form>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,EQKit::Config::Operator::Form>>>::__remove_node_pointer(a1, a2);

  operator delete(a2);
  return v3;
}

void sub_25827DA44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _BOOL(NSDictionary *a1, NSString *a2)
{
  v4 = objc_opt_class();
  v5 = EQKitUtilDynamicCast(v4, [(NSDictionary *)a1 objectForKey:a2]);

  return [v5 BOOLValue];
}

EQKit::Font::Manager *EQKit::Font::Manager::Manager(EQKit::Font::Manager *this, EQKitEnvironment *a2, NSDictionary *a3, const EQKit::Environment::Version *a4)
{
  *this = &unk_28696AA88;
  *(this + 1) = a2;
  *(this + 2) = 0;
  v7 = [(NSDictionary *)a3 copy];
  v8 = *a4;
  *(this + 3) = v7;
  *(this + 4) = v8;
  *(this + 5) = 0;
  return this;
}

void EQKit::Font::Manager::~Manager(EQKit::Font::Manager *this)
{
  *this = &unk_28696AA88;
  v2 = *(this + 2);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }
}

{
  EQKit::Font::Manager::~Manager(this);

  JUMPOUT(0x259C7CB70);
}

uint64_t EQKit::Font::Manager::fontCollection(EQKit::Font::Manager *this)
{
  result = *(this + 2);
  if (!result)
  {
    EQKit::Font::Manager::reloadFonts(this);
    return *(this + 2);
  }

  return result;
}

uint64_t EQKit::Font::Manager::reloadFonts(EQKit::Font::Manager *this)
{
  if ([*(this + 1) usesLegacySTIXFonts])
  {
    v3 = this + 16;
    v2 = *(this + 2);
    if (!v2)
    {
      goto LABEL_17;
    }

    v4 = 0;
  }

  else
  {
    v4 = [*(this + 1) mathFontName];
    v3 = this + 16;
    v2 = *(this + 2);
    if (!v2)
    {
      goto LABEL_15;
    }
  }

  v6 = v5;
  if (v4)
  {
    if (!v5 || !(*(*v5 + 16))(v5) || (v7 = *(v6 + 1)) != 0 && CFStringCompare(v4, v7, 0))
    {
      v8 = *v3;
      if (!*v3)
      {
LABEL_16:
        operator new();
      }

LABEL_14:
      (*(*v8 + 8))(v8);
      goto LABEL_15;
    }
  }

  else if (v5)
  {
    v8 = *v3;
    if (!*v3)
    {
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  if (!*v3)
  {
LABEL_15:
    if (v4)
    {
      goto LABEL_16;
    }

LABEL_17:
    v9 = objc_opt_class();
    EQKitUtilDynamicCast(v9, [*(this + 3) objectForKeyedSubscript:@"STIX"]);
    operator new();
  }

  v10 = *(**v3 + 24);

  return v10();
}

void EQKit::Font::Manager::reloadFonts(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = 138412546;
  v2 = a1;
  v3 = 2112;
  v4 = +[EQKitEnvironment defaultMathFontName];
  _os_log_error_impl(&dword_258246000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to load math font %@. Falling back to %@", &v1, 0x16u);
}

uint64_t EQKit::Font::Collection::newAttributedStringWithFont(EQKit::Font::Collection *this, NSString *a2, const __CTFont *a3)
{
  if (!a2 || !a3)
  {
    return 0;
  }

  v5 = objc_alloc(MEMORY[0x277CBEAC0]);
  v6 = [v5 initWithObjectsAndKeys:{a3, *MEMORY[0x277CC4838], *MEMORY[0x277CBED28], *MEMORY[0x277CC49C8], &unk_286973A98, *MEMORY[0x277CC4AD0], 0}];
  v7 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:a2 attributes:v6];

  return v7;
}

uint64_t EQKit::Font::Collection::newAttributedStringWithFont(EQKit::Font::Collection *this, int a2, const __CTFont *a3)
{
  if ((a2 - 0x10000) >> 20)
  {
    v6 = 1;
    LOWORD(v5) = a2;
  }

  else
  {
    v5 = ((a2 - 0x10000) >> 10) | 0xFFFFD800;
    v10[1] = a2 & 0x3FF | 0xDC00;
    v6 = 2;
  }

  v10[0] = v5;
  v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCharacters:v10 length:v6];
  v8 = (*(*this + 144))(this, v7, a3);

  return v8;
}

void *EQKit::Font::CompositeStretch::CompositeStretch(void *this)
{
  *this = 0;
  this[1] = -1;
  return this;
}

uint64_t EQKit::Font::CompositeStretch::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *a1;
    if (*a1)
    {
      CFRelease(v4);
    }

    v5 = *a2;
    *a1 = *a2;
    if (v5)
    {
      CFRetain(v5);
    }

    *(a1 + 8) = *(a2 + 8);
  }

  return a1;
}

void EQKit::Font::CompositeStretch::~CompositeStretch(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

void EQKit::Font::CompositeStretch::defineCompositeStretch(CFStringRef name@<X0>, const __CFString *a2@<X1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, void *a6@<X8>)
{
  v9 = a2;
  v32 = *MEMORY[0x277D85DE8];
  *a6 = 0;
  a6[1] = -1;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  if (a2)
  {
    LOWORD(v24) = a2;
    std::vector<unsigned short>::push_back[abi:ne200100](&v29, &v24);
  }

  if (a3)
  {
    LOWORD(v24) = a3;
    std::vector<unsigned short>::push_back[abi:ne200100](&v29, &v24);
  }

  if (a4)
  {
    LOWORD(v24) = a4;
    std::vector<unsigned short>::push_back[abi:ne200100](&v29, &v24);
  }

  if (a5)
  {
    LOWORD(v24) = a5;
    std::vector<unsigned short>::push_back[abi:ne200100](&v29, &v24);
  }

  if (name)
  {
    v13 = v29;
    v12 = v30;
    v14 = CTFontCreateWithName(name, 12.0, 0);
    v15 = v14;
    if (v12 != v13 && v14)
    {
      MEMORY[0x28223BE20]((2 * (v12 - v13)), v14);
      v17 = (&v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
      if (CTFontGetGlyphsForCharacters(v15, v29, v17, v18))
      {
        if (v9)
        {
          v19 = *v17;
          v20 = 1;
          if (a3)
          {
            goto LABEL_15;
          }
        }

        else
        {
          v20 = 0;
          v19 = -1;
          if (a3)
          {
LABEL_15:
            v21 = v17[v20++];
            if (a4)
            {
              goto LABEL_16;
            }

            goto LABEL_22;
          }
        }

        v21 = -1;
        if (a4)
        {
LABEL_16:
          v22 = v17[v20++];
          if (a5)
          {
LABEL_17:
            v23 = v17[v20];
LABEL_24:
            v25 = v19;
            v26 = v21;
            v27 = v22;
            v28 = v23;
            v24 = name;
            CFRetain(name);
            EQKit::Font::CompositeStretch::operator=(a6, &v24);
            EQKit::Font::CompositeStretch::~CompositeStretch(&v24);
            goto LABEL_25;
          }

LABEL_23:
          v23 = -1;
          goto LABEL_24;
        }

LABEL_22:
        v22 = -1;
        if (a5)
        {
          goto LABEL_17;
        }

        goto LABEL_23;
      }

LABEL_25:
      CFRelease(v15);
      goto LABEL_26;
    }

    if (v14)
    {
      goto LABEL_25;
    }
  }

LABEL_26:
  if (v29)
  {
    v30 = v29;
    operator delete(v29);
  }
}

void sub_25827E438(_Unwind_Exception *a1)
{
  EQKit::Font::CompositeStretch::~CompositeStretch((v2 - 128));
  v4 = *(v2 - 112);
  if (v4)
  {
    *(v2 - 104) = v4;
    operator delete(v4);
  }

  EQKit::Font::CompositeStretch::~CompositeStretch(v1);
  _Unwind_Resume(a1);
}

void std::vector<unsigned short>::push_back[abi:ne200100](const void **a1, _WORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = v8 >> 1;
    if (v8 >> 1 <= -2)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 <= v9 + 1)
    {
      v11 = v9 + 1;
    }

    else
    {
      v11 = v10;
    }

    v12 = v10 >= 0x7FFFFFFFFFFFFFFELL;
    v13 = 0x7FFFFFFFFFFFFFFFLL;
    if (!v12)
    {
      v13 = v11;
    }

    if (v13)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(a1, v13);
    }

    v14 = (2 * v9);
    v15 = *a2;
    v16 = &v14[-(v8 >> 1)];
    *v14 = v15;
    v6 = v14 + 1;
    memcpy(v16, v7, v8);
    v17 = *a1;
    *a1 = v16;
    a1[1] = v6;
    a1[2] = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void EQKitCache<EQKit::StemStretch::Key,std::shared_ptr<EQKit::StemStretch::Glyph>,std::shared_ptr<EQKit::StemStretch::Glyph const>>::lookup(uint64_t **a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  pthread_rwlock_rdlock((a1 + 9));
  v6 = std::__hash_table<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::__unordered_map_hasher<EQKit::StemStretch::Key,std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::hash<EQKit::StemStretch::Key>,std::equal_to<EQKit::StemStretch::Key>,true>,std::__unordered_map_equal<EQKit::StemStretch::Key,std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::equal_to<EQKit::StemStretch::Key>,std::hash<EQKit::StemStretch::Key>,true>,std::allocator<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>>>::find<EQKit::StemStretch::Key>(a1 + 1, a2);
  v7 = v6;
  if (v6)
  {
    v6[8] = **a1;
    v8 = v6[6];
    v9 = v6[7];
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    *a3 = v8;
    a3[1] = v9;
  }

  else
  {
    v9 = 0;
  }

  pthread_rwlock_unlock((a1 + 9));
  if (!v7 && (a1[34][2])())
  {
    pthread_rwlock_wrlock((a1 + 9));
    v10 = std::__hash_table<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::__unordered_map_hasher<EQKit::StemStretch::Key,std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::hash<EQKit::StemStretch::Key>,std::equal_to<EQKit::StemStretch::Key>,true>,std::__unordered_map_equal<EQKit::StemStretch::Key,std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::equal_to<EQKit::StemStretch::Key>,std::hash<EQKit::StemStretch::Key>,true>,std::allocator<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>>>::find<EQKit::StemStretch::Key>(a1 + 1, a2);
    if (v10)
    {
      v10[8] = **a1;
      v11 = v10[6];
      v12 = v10[7];
      if (v12)
      {
        atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
      }
    }

    else
    {
      v15 = **a1;
      v13 = std::__hash_table<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::__unordered_map_hasher<EQKit::StemStretch::Key,std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::hash<EQKit::StemStretch::Key>,std::equal_to<EQKit::StemStretch::Key>,true>,std::__unordered_map_equal<EQKit::StemStretch::Key,std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::equal_to<EQKit::StemStretch::Key>,std::hash<EQKit::StemStretch::Key>,true>,std::allocator<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>>>::__emplace_unique_key_args<EQKit::StemStretch::Key,std::piecewise_construct_t const&,std::tuple<EQKit::StemStretch::Key const&>,std::tuple<>>(a1 + 1, a2);
      v14 = v13[7];
      v13[6] = 0;
      v13[7] = 0;
      if (v14)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      }

      v13[8] = v15;
      if (a1[4] > a1[7])
      {
        *(a1 + 48) = 1;
      }

      v11 = 0;
      v12 = 0;
    }

    *a3 = v11;
    a3[1] = v12;
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }

    pthread_rwlock_unlock((a1 + 9));
  }
}

void sub_25827E748(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  _Unwind_Resume(exception_object);
}

BOOL EQKit::Font::STIXCollection::analyzeGlyphForSlantCorrection(EQKit::Font::STIXCollection *this, const unsigned __int16 *a2, const __CTFont **a3, double *a4, double *a5)
{
  if (!*a3)
  {
    return 0;
  }

  v8 = EQKitPath::newPathFromGlyphWithFont(*a2, *a3, a3);
  if (!*a3)
  {
    v10 = 0.0;
    if (v8)
    {
      goto LABEL_4;
    }

    return 0;
  }

  SlantAngle = CTFontGetSlantAngle(*a3);
  v10 = fabs(tan(SlantAngle * 3.14159265 / 180.0));
  if (!v8)
  {
    return 0;
  }

LABEL_4:
  v11 = *v8 != 0;
  if (*v8)
  {
    if (v10 == 0.0)
    {
      *a4 = 0.0;
      *a5 = 0.0;
    }

    else
    {
      EQKitPath::extractPath(v8);
      v12 = *(v8 + 1);
      v13 = *(v8 + 2);
      if (v12 == v13)
      {
        v18 = 0.0;
        v15 = 2.22507386e-308;
        v16 = 1.79769313e308;
        v17 = 2.22507386e-308;
        v19 = 1.79769313e308;
        v25 = 1.79769313e308;
      }

      else
      {
        v14 = 0.0;
        v15 = 2.22507386e-308;
        v16 = 1.79769313e308;
        v17 = 2.22507386e-308;
        v18 = 0.0;
        v19 = 1.79769313e308;
        v20 = *(v8 + 1);
        do
        {
          v22 = *v20;
          v21 = v20[1];
          if (v21 > v15)
          {
            v15 = v20[1];
          }

          if (v21 < v16)
          {
            v16 = v20[1];
          }

          if (v22 < v19 || (v22 == v19 ? (v23 = v21 < v14) : (v23 = 0), v23))
          {
            v19 = *v20;
            v14 = v20[1];
          }

          if (v22 > v17 || (v22 == v17 ? (v24 = v21 < v18) : (v24 = 0), v24))
          {
            v18 = v20[1];
            v17 = *v20;
          }

          v20 += 2;
        }

        while (v20 != v13);
        if (v12 == v13)
        {
          v25 = 1.79769313e308;
        }

        else
        {
          v25 = 1.79769313e308;
          do
          {
            v26 = v12[1];
            if (v26 <= v14)
            {
              v27 = *v12 + (v26 - v16) * v10;
              if (v27 < v25)
              {
                v25 = v27;
              }
            }

            v12 += 2;
          }

          while (v12 != v13);
        }
      }

      v28 = v17 + (v18 - v16) * v10;
      v29 = (v19 + v17) * 0.5;
      *a5 = (v28 + v25) * 0.5 - v29;
      *a4 = (v28 - (v15 - v16) * v10 + v25 - (v15 - v16) * v10) * 0.5 - v29;
    }
  }

  EQKitPath::~EQKitPath(v8);
  MEMORY[0x259C7CB70]();
  return v11;
}

uint64_t EQKitCache<EQKit::StemStretch::Key,std::shared_ptr<EQKit::StemStretch::Glyph>,std::shared_ptr<EQKit::StemStretch::Glyph const>>::setThreshold(uint64_t a1, unint64_t a2, unint64_t a3)
{
  pthread_rwlock_wrlock((a1 + 72));
  if (a2 >= a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = a2;
  }

  *(a1 + 56) = a2;
  *(a1 + 64) = v6;
  if (*(a1 + 32) > a2)
  {
    *(a1 + 48) = 1;
  }

  pthread_rwlock_unlock((a1 + 72));

  return EQKitCache<EQKit::StemStretch::Key,std::shared_ptr<EQKit::StemStretch::Glyph>,std::shared_ptr<EQKit::StemStretch::Glyph const>>::prune(a1);
}

uint64_t EQKitCache<EQKit::StemStretch::Key,EQKitTypes::Axis::Enum,EQKitTypes::Axis::Enum>::setThreshold(uint64_t a1, unint64_t a2, unint64_t a3)
{
  pthread_rwlock_wrlock((a1 + 72));
  if (a2 >= a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = a2;
  }

  *(a1 + 56) = a2;
  *(a1 + 64) = v6;
  if (*(a1 + 32) > a2)
  {
    *(a1 + 48) = 1;
  }

  pthread_rwlock_unlock((a1 + 72));

  return EQKitCache<EQKit::StemStretch::Key,EQKitTypes::Axis::Enum,EQKitTypes::Axis::Enum>::prune(a1);
}

void sub_25827F09C(_Unwind_Exception *a1)
{
  std::__tree<std::__value_type<unsigned int,EQKit::Font::CompositeStretch>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,EQKit::Font::CompositeStretch>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,EQKit::Font::CompositeStretch>>>::destroy(v1 + 304, *v4);
  std::__tree<std::__value_type<unsigned int,EQKit::Font::CompositeStretch>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,EQKit::Font::CompositeStretch>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,EQKit::Font::CompositeStretch>>>::destroy(v1 + 280, *v3);
  EQKit::Font::STIXCollection::SizeVariant::~SizeVariant(v2);
  EQKit::Font::STIXCollection::SizeVariant::~SizeVariant((v1 + 168));
  _Unwind_Resume(a1);
}

void ___ZN5EQKit4Font14STIXCollectionC1EP12NSDictionaryRKNS_11Environment7VersionERK20EQKitCacheLRUCounter_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 32) + 328);
  if (v2)
  {
    v3 = *(a2 + 20);
    if (*a2)
    {
      v4 = [*a2 UTF8String];
    }

    else
    {
      v4 = "";
    }

    std::string::basic_string[abi:ne200100]<0>(&v5, v4);
    v6[0] = v3;
    v6[1] = 13;
    if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v5.__r_.__value_.__l.__data_, v5.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v5;
    }

    std::__tree<std::__value_type<EQKit::Font::CharacterProperty::Map::Key,EQKit::StemStretch::Config::Entry>,std::__map_value_compare<EQKit::Font::CharacterProperty::Map::Key,std::__value_type<EQKit::Font::CharacterProperty::Map::Key,EQKit::StemStretch::Config::Entry>,std::less<EQKit::Font::CharacterProperty::Map::Key>,true>,std::allocator<std::__value_type<EQKit::Font::CharacterProperty::Map::Key,EQKit::StemStretch::Config::Entry>>>::find<EQKit::Font::CharacterProperty::Map::Key>(v2 + 48, v6);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v5.__r_.__value_.__l.__data_);
    }
  }

  operator new();
}

void sub_25827F2B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN5EQKit4Font14STIXCollectionC1EP12NSDictionaryRKNS_11Environment7VersionERK20EQKitCacheLRUCounter_block_invoke_2(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  EQKitCache<EQKit::StemStretch::Key,std::shared_ptr<EQKit::StemStretch::Glyph>,std::shared_ptr<EQKit::StemStretch::Glyph const>>::lookup(*(*(a1 + 32) + 384), a2, &v6);
  v4 = v6;
  if (v6)
  {
    v4 = *v6;
  }

  *a3 = v4;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  return 1;
}

uint64_t ___ZN5EQKit4Font14STIXCollectionC1EP12NSDictionaryRKNS_11Environment7VersionERK20EQKitCacheLRUCounter_block_invoke_3(uint64_t a1, uint64_t a2, double *a3)
{
  if (*a2)
  {
    v5 = CTFontCreateWithName(*a2, *(a2 + 8), 0);
    v14 = v5;
    if (v5)
    {
      v6 = v5;
      v12 = 0.0;
      v13 = 0.0;
      v11 = *(a2 + 16);
      v7 = EQKit::Font::STIXCollection::analyzeGlyphForSlantCorrection(v5, &v11, &v14, &v13, &v12);
      v9 = v12;
      v8 = v13;
      if (!v7)
      {
        v9 = 0.0;
        v8 = 0.0;
      }

      *a3 = v8;
      a3[1] = v9;
      CFRelease(v6);
    }
  }

  return 1;
}

void EQKit::Font::STIXCollection::~STIXCollection(EQKit::Font::STIXCollection *this, uint64_t *a2)
{
  v3 = *a2;
  *this = *a2;
  *(this + *(v3 - 208)) = a2[1];
  v4 = *(this + 1);
  if (v4)
  {
    EQKit::Font::STIXCollection::FontInfo::~FontInfo(v4);
    MEMORY[0x259C7CB70]();
    *(this + 1) = 0;
  }

  v5 = *(this + 3);
  if (v5)
  {
    EQKit::Font::STIXCollection::FontInfo::~FontInfo(v5);
    MEMORY[0x259C7CB70]();
    *(this + 3) = 0;
  }

  v6 = *(this + 2);
  if (v6)
  {
    EQKit::Font::STIXCollection::FontInfo::~FontInfo(v6);
    MEMORY[0x259C7CB70]();
    *(this + 2) = 0;
  }

  v7 = *(this + 4);
  if (v7)
  {
    EQKit::Font::STIXCollection::FontInfo::~FontInfo(v7);
    MEMORY[0x259C7CB70]();
    *(this + 4) = 0;
  }

  v8 = *(this + 7);
  if (v8)
  {
    EQKit::Font::STIXCollection::FontInfo::~FontInfo(v8);
    MEMORY[0x259C7CB70]();
    *(this + 7) = 0;
  }

  v9 = *(this + 9);
  if (v9)
  {
    EQKit::Font::STIXCollection::FontInfo::~FontInfo(v9);
    MEMORY[0x259C7CB70]();
    *(this + 9) = 0;
  }

  v10 = *(this + 8);
  if (v10)
  {
    EQKit::Font::STIXCollection::FontInfo::~FontInfo(v10);
    MEMORY[0x259C7CB70]();
    *(this + 8) = 0;
  }

  v11 = *(this + 10);
  if (v11)
  {
    EQKit::Font::STIXCollection::FontInfo::~FontInfo(v11);
    MEMORY[0x259C7CB70]();
    *(this + 10) = 0;
  }

  v12 = *(this + 11);
  if (v12)
  {
    EQKit::Font::STIXCollection::FontInfo::~FontInfo(v12);
    MEMORY[0x259C7CB70]();
    *(this + 11) = 0;
  }

  v13 = *(this + 12);
  if (v13)
  {
    EQKit::Font::STIXCollection::FontInfo::~FontInfo(v13);
    MEMORY[0x259C7CB70]();
    *(this + 12) = 0;
  }

  v14 = *(this + 13);
  if (v14)
  {
    EQKit::Font::STIXCollection::FontInfo::~FontInfo(v14);
    MEMORY[0x259C7CB70]();
    *(this + 13) = 0;
  }

  v15 = *(this + 14);
  if (v15)
  {
    EQKit::Font::STIXCollection::FontInfo::~FontInfo(v15);
    MEMORY[0x259C7CB70]();
    *(this + 14) = 0;
  }

  v16 = *(this + 15);
  if (v16)
  {
    EQKit::Font::STIXCollection::FontInfo::~FontInfo(v16);
    MEMORY[0x259C7CB70]();
    *(this + 15) = 0;
  }

  v17 = *(this + 16);
  if (v17)
  {
    EQKit::Font::STIXCollection::FontInfo::~FontInfo(v17);
    MEMORY[0x259C7CB70]();
    *(this + 16) = 0;
  }

  v18 = *(this + 17);
  if (v18)
  {
    EQKit::Font::STIXCollection::FontInfo::~FontInfo(v18);
    MEMORY[0x259C7CB70]();
    *(this + 17) = 0;
  }

  v19 = *(this + 18);
  if (v19)
  {
    EQKit::Font::STIXCollection::FontInfo::~FontInfo(v19);
    MEMORY[0x259C7CB70]();
    *(this + 18) = 0;
  }

  v20 = *(this + 19);
  if (v20)
  {
    EQKit::Font::STIXCollection::FontInfo::~FontInfo(v20);
    MEMORY[0x259C7CB70]();
    *(this + 19) = 0;
  }

  v21 = *(this + 20);
  if (v21)
  {
    EQKit::Font::STIXCollection::FontInfo::~FontInfo(v21);
    MEMORY[0x259C7CB70]();
    *(this + 20) = 0;
  }

  v22 = *(this + 5);
  if (v22)
  {
    EQKit::Font::STIXCollection::FontInfo::~FontInfo(v22);
    MEMORY[0x259C7CB70]();
    *(this + 5) = 0;
  }

  v23 = *(this + 6);
  if (v23)
  {
    EQKit::Font::STIXCollection::FontInfo::~FontInfo(v23);
    MEMORY[0x259C7CB70]();
    *(this + 6) = 0;
  }

  v24 = *(this + 41);
  if (v24)
  {
    EQKit::Font::CharacterProperty::Map::~Map(v24);
    MEMORY[0x259C7CB70]();
  }

  v25 = *(this + 42);
  if (v25)
  {
    MEMORY[0x259C7CB70](v25, 0x1000C40E670F890);
  }

  v26 = *(this + 43);
  if (v26)
  {
    std::__tree<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::__map_value_compare<std::pair<unsigned short,EQKit::Config::Operator::Form>,std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::less<std::pair<unsigned short,EQKit::Config::Operator::Form>>,true>,std::allocator<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>>>::destroy(*(this + 43), *(v26 + 8));
    MEMORY[0x259C7CB70](v26, 0x1020C4062D53EE8);
  }

  v27 = *(this + 44);
  if (v27)
  {
    std::__tree<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::__map_value_compare<std::pair<unsigned short,EQKit::Config::Operator::Form>,std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::less<std::pair<unsigned short,EQKit::Config::Operator::Form>>,true>,std::allocator<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>>>::destroy(*(this + 44), *(v27 + 8));
    MEMORY[0x259C7CB70](v27, 0x1020C4062D53EE8);
  }

  v28 = *(this + 45);
  if (v28)
  {
    v29 = *v28;
    if (*v28)
    {
      *(v28 + 8) = v29;
      operator delete(v29);
    }

    MEMORY[0x259C7CB70](v28, 0x10C402FEFCB83);
  }

  v30 = *(this + 46);
  if (v30)
  {
    v31 = *v30;
    if (*v30)
    {
      *(v30 + 8) = v31;
      operator delete(v31);
    }

    MEMORY[0x259C7CB70](v30, 0x10C402FEFCB83);
  }

  v32 = *(this + 48);
  if (v32)
  {
    v33 = EQKitCache<EQKit::StemStretch::Key,std::shared_ptr<EQKit::StemStretch::Glyph>,std::shared_ptr<EQKit::StemStretch::Glyph const>>::~EQKitCache(v32);
    MEMORY[0x259C7CB70](v33, 0x10E0C40B27302BALL);
  }

  v34 = *(this + 47);
  if (v34)
  {
    v35 = EQKitCache<EQKit::StemStretch::Key,EQKitTypes::Axis::Enum,EQKitTypes::Axis::Enum>::~EQKitCache(v34);
    MEMORY[0x259C7CB70](v35, 0x10E0C40B27302BALL);
  }

  v36 = *(this + 49);
  if (v36)
  {
    v37 = EQKitCache<EQKit::Font::SlantKey,EQKit::Font::SlantInfo,EQKit::Font::SlantInfo>::~EQKitCache(v36);
    MEMORY[0x259C7CB70](v37, 0x10E0C40B27302BALL);
  }

  std::__tree<std::__value_type<unsigned int,EQKit::Font::CompositeStretch>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,EQKit::Font::CompositeStretch>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,EQKit::Font::CompositeStretch>>>::destroy(this + 304, *(this + 39));
  std::__tree<std::__value_type<unsigned int,EQKit::Font::CompositeStretch>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,EQKit::Font::CompositeStretch>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,EQKit::Font::CompositeStretch>>>::destroy(this + 280, *(this + 36));
  EQKit::Font::STIXCollection::SizeVariant::~SizeVariant((this + 224));
  EQKit::Font::STIXCollection::SizeVariant::~SizeVariant((this + 168));
}

void EQKit::Font::STIXCollection::~STIXCollection(EQKit::Font::STIXCollection *this)
{
}

{

  JUMPOUT(0x259C7CB70);
}

uint64_t EQKit::Font::STIXCollection::pruneCaches(uint64_t ***this)
{
  EQKitCache<EQKit::StemStretch::Key,std::shared_ptr<EQKit::StemStretch::Glyph>,std::shared_ptr<EQKit::StemStretch::Glyph const>>::prune(this[48]);
  EQKitCache<EQKit::StemStretch::Key,EQKitTypes::Axis::Enum,EQKitTypes::Axis::Enum>::prune(this[47]);
  EQKitCache<unsigned int,EQKit::Font::STIXCollection::StretchInfo,EQKit::Font::STIXCollection::StretchInfo>::prune(this[27]);
  v2 = this[34];

  return EQKitCache<unsigned int,EQKit::Font::STIXCollection::StretchInfo,EQKit::Font::STIXCollection::StretchInfo>::prune(v2);
}

uint64_t EQKitCache<EQKit::StemStretch::Key,std::shared_ptr<EQKit::StemStretch::Glyph>,std::shared_ptr<EQKit::StemStretch::Glyph const>>::prune(uint64_t **a1)
{
  pthread_rwlock_rdlock((a1 + 9));
  v2 = *(a1 + 48);
  result = pthread_rwlock_unlock((a1 + 9));
  if (v2 == 1)
  {
    pthread_rwlock_wrlock((a1 + 9));
    if (*(a1 + 48) == 1)
    {
      v4 = **a1;
      v16 = 0;
      v5 = 0uLL;
      v15 = 0u;
      v6 = a1[3];
      if (v6)
      {
        do
        {
          v7 = v6[8];
          EQKit::StemStretch::Key::Key(v14, (v6 + 2));
          v14[4] = (v4 - v7);
          std::vector<std::pair<EQKit::StemStretch::Key,unsigned long>>::push_back[abi:ne200100](&v15, v14);
          EQKit::StemStretch::Key::~Key(v14);
          v6 = *v6;
        }

        while (v6);
        v5 = v15;
      }

      v8 = 126 - 2 * __clz(0xCCCCCCCCCCCCCCCDLL * ((*(&v5 + 1) - v5) >> 3));
      v17 = EQKitCache<EQKit::StemStretch::Key,std::shared_ptr<EQKit::StemStretch::Glyph>,std::shared_ptr<EQKit::StemStretch::Glyph const>>::compareKeyLRU;
      if (*(&v5 + 1) == v5)
      {
        v9 = 0;
      }

      else
      {
        v9 = v8;
      }

      std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<EQKit::StemStretch::Key,unsigned long> const&,std::pair<EQKit::StemStretch::Key,unsigned long> const&),std::pair<EQKit::StemStretch::Key,unsigned long>*,false>(v5, *(&v5 + 1), &v17, v9, 1);
      v10 = 0xCCCCCCCCCCCCCCCDLL * ((*(&v15 + 1) - v15) >> 3);
      v11 = a1[8];
      v12 = v10 - v11;
      if (v10 > v11)
      {
        v13 = 40 * v11;
        do
        {
          if (std::__hash_table<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::__unordered_map_hasher<EQKit::StemStretch::Key,std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::hash<EQKit::StemStretch::Key>,std::equal_to<EQKit::StemStretch::Key>,true>,std::__unordered_map_equal<EQKit::StemStretch::Key,std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::equal_to<EQKit::StemStretch::Key>,std::hash<EQKit::StemStretch::Key>,true>,std::allocator<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>>>::find<EQKit::StemStretch::Key>(a1 + 1, v15 + v13))
          {
            std::__hash_table<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::__unordered_map_hasher<EQKit::StemStretch::Key,std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::hash<EQKit::StemStretch::Key>,std::equal_to<EQKit::StemStretch::Key>,true>,std::__unordered_map_equal<EQKit::StemStretch::Key,std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::equal_to<EQKit::StemStretch::Key>,std::hash<EQKit::StemStretch::Key>,true>,std::allocator<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>>>::__erase_unique<EQKit::StemStretch::Key>(a1 + 1, v15 + v13);
          }

          v13 += 40;
          --v12;
        }

        while (v12);
      }

      *(a1 + 48) = 0;
      v14[0] = &v15;
      std::vector<std::pair<EQKit::StemStretch::Key,unsigned long>>::__destroy_vector::operator()[abi:ne200100](v14);
    }

    return pthread_rwlock_unlock((a1 + 9));
  }

  return result;
}

void sub_25827F9F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  a10 = &a15;
  std::vector<std::pair<EQKit::StemStretch::Key,unsigned long>>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

uint64_t EQKitCache<EQKit::StemStretch::Key,EQKitTypes::Axis::Enum,EQKitTypes::Axis::Enum>::prune(uint64_t **a1)
{
  pthread_rwlock_rdlock((a1 + 9));
  v2 = *(a1 + 48);
  result = pthread_rwlock_unlock((a1 + 9));
  if (v2 == 1)
  {
    pthread_rwlock_wrlock((a1 + 9));
    if (*(a1 + 48) == 1)
    {
      v4 = **a1;
      v16 = 0;
      v5 = 0uLL;
      v15 = 0u;
      v6 = a1[3];
      if (v6)
      {
        do
        {
          v7 = v6[7];
          EQKit::StemStretch::Key::Key(v14, (v6 + 2));
          v14[4] = (v4 - v7);
          std::vector<std::pair<EQKit::StemStretch::Key,unsigned long>>::push_back[abi:ne200100](&v15, v14);
          EQKit::StemStretch::Key::~Key(v14);
          v6 = *v6;
        }

        while (v6);
        v5 = v15;
      }

      v8 = 126 - 2 * __clz(0xCCCCCCCCCCCCCCCDLL * ((*(&v5 + 1) - v5) >> 3));
      v17 = EQKitCache<EQKit::StemStretch::Key,EQKitTypes::Axis::Enum,EQKitTypes::Axis::Enum>::compareKeyLRU;
      if (*(&v5 + 1) == v5)
      {
        v9 = 0;
      }

      else
      {
        v9 = v8;
      }

      std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<EQKit::StemStretch::Key,unsigned long> const&,std::pair<EQKit::StemStretch::Key,unsigned long> const&),std::pair<EQKit::StemStretch::Key,unsigned long>*,false>(v5, *(&v5 + 1), &v17, v9, 1);
      v10 = 0xCCCCCCCCCCCCCCCDLL * ((*(&v15 + 1) - v15) >> 3);
      v11 = a1[8];
      v12 = v10 - v11;
      if (v10 > v11)
      {
        v13 = 40 * v11;
        do
        {
          if (std::__hash_table<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::__unordered_map_hasher<EQKit::StemStretch::Key,std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::hash<EQKit::StemStretch::Key>,std::equal_to<EQKit::StemStretch::Key>,true>,std::__unordered_map_equal<EQKit::StemStretch::Key,std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::equal_to<EQKit::StemStretch::Key>,std::hash<EQKit::StemStretch::Key>,true>,std::allocator<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>>>::find<EQKit::StemStretch::Key>(a1 + 1, v15 + v13))
          {
            std::__hash_table<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<EQKitTypes::Axis::Enum,unsigned long>>,std::__unordered_map_hasher<EQKit::StemStretch::Key,std::__hash_value_type<EQKit::StemStretch::Key,std::pair<EQKitTypes::Axis::Enum,unsigned long>>,std::hash<EQKit::StemStretch::Key>,std::equal_to<EQKit::StemStretch::Key>,true>,std::__unordered_map_equal<EQKit::StemStretch::Key,std::__hash_value_type<EQKit::StemStretch::Key,std::pair<EQKitTypes::Axis::Enum,unsigned long>>,std::equal_to<EQKit::StemStretch::Key>,std::hash<EQKit::StemStretch::Key>,true>,std::allocator<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<EQKitTypes::Axis::Enum,unsigned long>>>>::__erase_unique<EQKit::StemStretch::Key>(a1 + 1, v15 + v13);
          }

          v13 += 40;
          --v12;
        }

        while (v12);
      }

      *(a1 + 48) = 0;
      v14[0] = &v15;
      std::vector<std::pair<EQKit::StemStretch::Key,unsigned long>>::__destroy_vector::operator()[abi:ne200100](v14);
    }

    return pthread_rwlock_unlock((a1 + 9));
  }

  return result;
}