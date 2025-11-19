void sub_1ADE36FF4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::pair<Coherence_namespace::TopoIDRange,objc_object  {objcproto26CRTTMergeableStringStorage}* {__strong}>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void sub_1ADE37358(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__hash_table<std::__hash_value_type<Coherence_namespace::TopoReplica,NSMutableIndexSet * {__strong}>,std::__unordered_map_hasher<Coherence_namespace::TopoReplica,std::__hash_value_type<Coherence_namespace::TopoReplica,NSMutableIndexSet * {__strong}>,std::hash<Coherence_namespace::TopoReplica>,std::equal_to<Coherence_namespace::TopoReplica>,true>,std::__unordered_map_equal<Coherence_namespace::TopoReplica,std::__hash_value_type<Coherence_namespace::TopoReplica,NSMutableIndexSet * {__strong}>,std::equal_to<Coherence_namespace::TopoReplica>,std::hash<Coherence_namespace::TopoReplica>,true>,std::allocator<std::__hash_value_type<Coherence_namespace::TopoReplica,NSMutableIndexSet * {__strong}>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<Coherence_namespace::TopoReplica,NSMutableIndexSet * {__strong}>,std::__unordered_map_hasher<Coherence_namespace::TopoReplica,std::__hash_value_type<Coherence_namespace::TopoReplica,NSMutableIndexSet * {__strong}>,std::hash<Coherence_namespace::TopoReplica>,std::equal_to<Coherence_namespace::TopoReplica>,true>,std::__unordered_map_equal<Coherence_namespace::TopoReplica,std::__hash_value_type<Coherence_namespace::TopoReplica,NSMutableIndexSet * {__strong}>,std::equal_to<Coherence_namespace::TopoReplica>,std::hash<Coherence_namespace::TopoReplica>,true>,std::allocator<std::__hash_value_type<Coherence_namespace::TopoReplica,NSMutableIndexSet * {__strong}>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<Coherence_namespace::TopoReplica,NSMutableIndexSet * {__strong}>,std::__unordered_map_hasher<Coherence_namespace::TopoReplica,std::__hash_value_type<Coherence_namespace::TopoReplica,NSMutableIndexSet * {__strong}>,std::hash<Coherence_namespace::TopoReplica>,std::equal_to<Coherence_namespace::TopoReplica>,true>,std::__unordered_map_equal<Coherence_namespace::TopoReplica,std::__hash_value_type<Coherence_namespace::TopoReplica,NSMutableIndexSet * {__strong}>,std::equal_to<Coherence_namespace::TopoReplica>,std::hash<Coherence_namespace::TopoReplica>,true>,std::allocator<std::__hash_value_type<Coherence_namespace::TopoReplica,NSMutableIndexSet * {__strong}>>>::__deallocate_node(uint64_t a1, id *a2)
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

uint64_t *std::__hash_table<std::__hash_value_type<Coherence_namespace::TopoReplica,NSMutableIndexSet * {__strong}>,std::__unordered_map_hasher<Coherence_namespace::TopoReplica,std::__hash_value_type<Coherence_namespace::TopoReplica,NSMutableIndexSet * {__strong}>,std::hash<Coherence_namespace::TopoReplica>,std::equal_to<Coherence_namespace::TopoReplica>,true>,std::__unordered_map_equal<Coherence_namespace::TopoReplica,std::__hash_value_type<Coherence_namespace::TopoReplica,NSMutableIndexSet * {__strong}>,std::equal_to<Coherence_namespace::TopoReplica>,std::hash<Coherence_namespace::TopoReplica>,true>,std::allocator<std::__hash_value_type<Coherence_namespace::TopoReplica,NSMutableIndexSet * {__strong}>>>::find<Coherence_namespace::TopoReplica>(void *a1, uint64_t a2)
{
  v4 = CFHashBytes();
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
      if (*(i + 8) == *(a2 + 16) && !uuid_compare(i + 16, a2))
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

uint64_t *std::__hash_table<std::__hash_value_type<Coherence_namespace::TopoReplica,NSMutableIndexSet * {__strong}>,std::__unordered_map_hasher<Coherence_namespace::TopoReplica,std::__hash_value_type<Coherence_namespace::TopoReplica,NSMutableIndexSet * {__strong}>,std::hash<Coherence_namespace::TopoReplica>,std::equal_to<Coherence_namespace::TopoReplica>,true>,std::__unordered_map_equal<Coherence_namespace::TopoReplica,std::__hash_value_type<Coherence_namespace::TopoReplica,NSMutableIndexSet * {__strong}>,std::equal_to<Coherence_namespace::TopoReplica>,std::hash<Coherence_namespace::TopoReplica>,true>,std::allocator<std::__hash_value_type<Coherence_namespace::TopoReplica,NSMutableIndexSet * {__strong}>>>::__emplace_unique_key_args<Coherence_namespace::TopoReplica,std::piecewise_construct_t const&,std::tuple<Coherence_namespace::TopoReplica const&>,std::tuple<>>(void *a1, uint64_t a2)
{
  v4 = CFHashBytes();
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_19;
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
LABEL_19:
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
      goto LABEL_19;
    }

LABEL_18:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_19;
    }
  }

  if (*(v11 + 8) != *(a2 + 16) || uuid_compare(v11 + 16, a2))
  {
    goto LABEL_18;
  }

  return v11;
}

void sub_1ADE377A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<Coherence_namespace::TopoReplica,NSMutableIndexSet * {__strong}>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<Coherence_namespace::TopoReplica,NSMutableIndexSet * {__strong}>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<Coherence_namespace::TopoReplica,NSMutableIndexSet * {__strong}>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<Coherence_namespace::TopoReplica,NSMutableIndexSet * {__strong}>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
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

void sub_1ADE38DAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  std::__hash_table<std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::__unordered_map_hasher<Coherence_namespace::TopoSubstring const*,std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::hash<Coherence_namespace::TopoSubstring const*>,std::equal_to<Coherence_namespace::TopoSubstring const*>,true>,std::__unordered_map_equal<Coherence_namespace::TopoSubstring const*,std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::equal_to<Coherence_namespace::TopoSubstring const*>,std::hash<Coherence_namespace::TopoSubstring const*>,true>,std::allocator<std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

BOOL Coherence_namespace::TopoIDRange::operator!=(unsigned __int8 *uu1, unsigned __int8 *uu2)
{
  if (*(uu1 + 5) != *(uu2 + 5))
  {
    return 1;
  }

  if (*(uu1 + 4) == *(uu2 + 4) && !uuid_compare(uu1, uu2))
  {
    return *(uu1 + 6) != *(uu2 + 6);
  }

  return 1;
}

void sub_1ADE39F78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26)
{
  Coherence_namespace::TopoSubstring::~TopoSubstring(&a21);

  _Unwind_Resume(a1);
}

uint64_t *std::__hash_table<std::__hash_value_type<Coherence_namespace::TopoID,Coherence_namespace::TopoSubstring *>,std::__unordered_map_hasher<Coherence_namespace::TopoID,std::__hash_value_type<Coherence_namespace::TopoID,Coherence_namespace::TopoSubstring *>,std::hash<Coherence_namespace::TopoID>,std::equal_to<Coherence_namespace::TopoID>,true>,std::__unordered_map_equal<Coherence_namespace::TopoID,std::__hash_value_type<Coherence_namespace::TopoID,Coherence_namespace::TopoSubstring *>,std::equal_to<Coherence_namespace::TopoID>,std::hash<Coherence_namespace::TopoID>,true>,std::allocator<std::__hash_value_type<Coherence_namespace::TopoID,Coherence_namespace::TopoSubstring *>>>::__emplace_unique_key_args<Coherence_namespace::TopoID,std::piecewise_construct_t const&,std::tuple<Coherence_namespace::TopoID const&>,std::tuple<>>(void *a1, uint64_t a2)
{
  v4 = CFHashBytes();
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_20;
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
LABEL_20:
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
      goto LABEL_20;
    }

LABEL_19:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_20;
    }
  }

  if (*(v11 + 9) != *(a2 + 20) || *(v11 + 8) != *(a2 + 16) || uuid_compare(v11 + 16, a2))
  {
    goto LABEL_19;
  }

  return v11;
}

void *std::vector<Coherence_namespace::TopoID>::__assign_with_size[abi:ne200100]<Coherence_namespace::TopoID*,Coherence_namespace::TopoID*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - *result) >> 3) < a4)
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

    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x555555555555555)
      {
        v11 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v11 = v10;
      }

      std::vector<Coherence_namespace::TopoID>::__vallocate[abi:ne200100](v6, v11);
    }

    std::vector<Coherence_namespace::TopoSubstring *>::__throw_length_error[abi:ne200100]();
  }

  v12 = result[1];
  v13 = v12 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v12 - v8) >> 3) >= a4)
  {
    v16 = a3 - __src;
    if (v16)
    {
      result = memmove(*result, __src, v16);
    }

    v15 = &v8[v16];
  }

  else
  {
    v14 = &__src[v13];
    if (v12 != v8)
    {
      result = memmove(*result, __src, v13);
      v12 = v6[1];
    }

    if (a3 != v14)
    {
      result = memmove(v12, v14, a3 - v14);
    }

    v15 = &v12[a3 - v14];
  }

  v6[1] = v15;
  return result;
}

unsigned __int8 *std::__find[abi:ne200100]<Coherence_namespace::TopoID const*,Coherence_namespace::TopoID const*,Coherence_namespace::TopoID,std::__identity>(unsigned __int8 *uu1, unsigned __int8 *a2, unsigned __int8 *uu2)
{
  for (i = uu1; i != a2; i += 24)
  {
    if (*(i + 5) == *(uu2 + 5) && *(i + 4) == *(uu2 + 4) && !uuid_compare(i, uu2))
    {
      break;
    }
  }

  return i;
}

void sub_1ADE3AB2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = _TtC9Coherence24CRTTMergeableStringRange;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1ADE3B118(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__0(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

uint64_t Coherence_namespace::TopoID::TopoID(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 replica];
  Coherence_namespace::TopoReplica::TopoReplica(a1, v4);

  *(a1 + 20) = [v3 counter];
  return a1;
}

_TtC9Coherence13ObjCTimestamp *Coherence_namespace::TopoID::objc(Coherence_namespace::TopoID *this)
{
  v2 = [_TtC9Coherence13ObjCTimestamp alloc];
  v3 = Coherence_namespace::TopoReplica::objc(this);
  v4 = [(ObjCTimestamp *)v2 initWithReplica:v3 counter:*(this + 5)];

  return v4;
}

void Coherence_namespace::TopoSubstring::removeAddsNotIn(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (v6 != v7)
  {
    while (1)
    {
      if (std::__find[abi:ne200100]<Coherence_namespace::TopoID const*,Coherence_namespace::TopoID const*,Coherence_namespace::TopoID,std::__identity>(*(a2 + 32), *(a2 + 40), v6) == *(a2 + 40))
      {
        v8 = Coherence_namespace::TopoID::objc(v6);
        v9 = [v5 contains:v8];

        if (v9)
        {
          break;
        }
      }

      v6 = (v6 + 24);
      if (v6 == v7)
      {
        v6 = v7;
        goto LABEL_6;
      }
    }

    if (v6 != v7)
    {
      for (i = (v6 + 24); i != v7; i = (i + 24))
      {
        if (std::__find[abi:ne200100]<Coherence_namespace::TopoID const*,Coherence_namespace::TopoID const*,Coherence_namespace::TopoID,std::__identity>(*(a2 + 32), *(a2 + 40), i) == *(a2 + 40))
        {
          v12 = Coherence_namespace::TopoID::objc(i);
          v13 = [v5 contains:v12];

          if (v13)
          {
            continue;
          }
        }

        v14 = *i;
        *(v6 + 2) = *(i + 2);
        *v6 = v14;
        v6 = (v6 + 24);
      }
    }
  }

LABEL_6:
  if (v6 != *(a1 + 40))
  {
    v10 = *(a1 + 40);
    *(a1 + 40) = v6;
  }
}

unsigned __int8 *Coherence_namespace::TopoSubstring::removeDeltaAddsNotIn(unsigned __int8 *this, unsigned __int8 **a2)
{
  v2 = this;
  v19 = *MEMORY[0x1E69E9840];
  v3 = *(this + 4);
  v4 = *(this + 5);
  if (v3 == v4)
  {
    v6 = *(this + 4);
  }

  else
  {
    v6 = *(this + 5);
    v7 = (v3 + 24);
    while (1)
    {
      v15 = -1;
      uuid_copy(dst, v7 - 24);
      v8 = *(v7 - 1);
      *uu2 = *dst;
      v17 = v15;
      v18 = v8;
      this = std::__find[abi:ne200100]<Coherence_namespace::TopoID const*,Coherence_namespace::TopoID const*,Coherence_namespace::TopoID,std::__identity>(a2[4], a2[5], uu2);
      if (this != a2[5])
      {
        break;
      }

      v9 = v7 == v4;
      v7 = (v7 + 24);
      if (v9)
      {
        goto LABEL_16;
      }
    }

    if ((v7 - 24) != v4)
    {
      if (v7 == v4)
      {
        v6 = v7 - 24;
      }

      else
      {
        v6 = v7 - 24;
        do
        {
          v15 = -1;
          uuid_copy(dst, v7);
          v10 = *(v7 + 5);
          *uu2 = *dst;
          v17 = v15;
          v18 = v10;
          this = std::__find[abi:ne200100]<Coherence_namespace::TopoID const*,Coherence_namespace::TopoID const*,Coherence_namespace::TopoID,std::__identity>(a2[4], a2[5], uu2);
          if (this == a2[5])
          {
            v11 = *v7;
            *(v6 + 16) = *(v7 + 2);
            *v6 = v11;
            v6 += 24;
          }

          v7 = (v7 + 24);
        }

        while (v7 != v4);
      }
    }
  }

LABEL_16:
  if (v6 != *(v2 + 5))
  {
    v12 = *(v2 + 5);
    *(v2 + 5) = v6;
  }

  v13 = *MEMORY[0x1E69E9840];
  return this;
}

void Coherence_namespace::TopoSubstring::addAddsIn(uint64_t a1, uint64_t a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = *(a2 + 32);
  for (i = *(a2 + 40); v6 != i; v6 = (v6 + 24))
  {
    v8 = *v6;
    v18 = v6[1].n128_u64[0];
    v17 = v8;
    if (v18 != -1)
    {
      v10 = *(a1 + 32);
      v9 = *(a1 + 40);
      if (v9 == v10)
      {
        v10 = *(a1 + 40);
      }

      else
      {
        v11 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v10) >> 3);
        do
        {
          v12 = v10 + 24 * (v11 >> 1);
          v13 = Coherence_namespace::TopoID::operator<(v12, &v17);
          if (v13)
          {
            v11 += ~(v11 >> 1);
          }

          else
          {
            v11 >>= 1;
          }

          if (v13)
          {
            v10 = (v12 + 24);
          }
        }

        while (v11);
        v9 = *(a1 + 40);
      }

      if (v9 == v10 || v18 != v10[1].n128_u64[0] || uuid_compare(&v17, v10))
      {
        v14 = Coherence_namespace::TopoID::objc(&v17);
        v15 = [v5 contains:{v14, *&v17}];

        if ((v15 & 1) == 0)
        {
          std::vector<Coherence_namespace::TopoID>::insert((a1 + 32), v10, &v17);
        }
      }
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

__n128 *std::vector<Coherence_namespace::TopoID>::insert(void *a1, __n128 *__src, __n128 *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v11 = *a1;
    v12 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a1) >> 3) + 1;
    if (v12 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<Coherence_namespace::TopoSubstring *>::__throw_length_error[abi:ne200100]();
    }

    v13 = __src - v11;
    v14 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v11) >> 3);
    v15 = 2 * v14;
    if (2 * v14 <= v12)
    {
      v15 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a1) >> 3) + 1;
    }

    if (v14 >= 0x555555555555555)
    {
      v16 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v16 = v15;
    }

    v33 = a1;
    if (v16)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<Coherence_namespace::TopoID>>(a1, v16);
    }

    v30 = 0;
    v31 = 8 * (v13 >> 3);
    v32 = v31;
    std::__split_buffer<Coherence_namespace::TopoID>::emplace_back<Coherence_namespace::TopoID const&>(&v30, a3);
    v18 = v31;
    memcpy(v32, v4, a1[1] - v4);
    v19 = *a1;
    v20 = v31;
    *&v32 = v32 + a1[1] - v4;
    a1[1] = v4;
    v21 = v4 - v19;
    v22 = (v20 - (v4 - v19));
    memcpy(v22, v19, v21);
    v23 = *a1;
    *a1 = v22;
    v24 = a1[2];
    *(a1 + 1) = v32;
    *&v32 = v23;
    *(&v32 + 1) = v24;
    v30 = v23;
    v31 = v23;
    if (v23)
    {
      operator delete(v23);
    }

    return v18;
  }

  else if (__src == v6)
  {
    v17 = *a3;
    v6[1].n128_u64[0] = a3[1].n128_u64[0];
    *v6 = v17;
    a1[1] = v6 + 24;
  }

  else
  {
    v8 = (__src + 24);
    if (v6 < 0x18)
    {
      v9 = a1[1];
    }

    else
    {
      v9 = &v6[1].n128_i8[8];
      v10 = *(v6 - 24);
      v6[1].n128_u64[0] = v6[-1].n128_u64[1];
      *v6 = v10;
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(&__src[1].n128_i8[8], __src, v6 - v8);
      v9 = a1[1];
    }

    v25 = v9 <= a3 || v4 > a3;
    v26 = 24;
    if (v25)
    {
      v26 = 0;
    }

    v27 = a3 + v26;
    v28 = *v27;
    v4[1].n128_u64[0] = *(v27 + 2);
    *v4 = v28;
  }

  return v4;
}

void sub_1ADE3C258(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Coherence_namespace::TopoSubstring::hasNewAddedByFrom(Coherence_namespace::TopoSubstring *this, const Coherence_namespace::TopoSubstring *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = *(this + 4);
  v2 = *(this + 5);
  if ((v2 - v3) <= *(a2 + 5) - *(a2 + 4))
  {
    if (v3 == v2)
    {
LABEL_17:
      result = 0;
      goto LABEL_18;
    }

    while (1)
    {
      v6 = *v3;
      v14 = *(v3 + 2);
      v13 = v6;
      if (v14 != -1)
      {
        v7 = *(a2 + 4);
        v8 = *(a2 + 5) - v7;
        if (!v8)
        {
          break;
        }

        v9 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3);
        do
        {
          v10 = v7 + 24 * (v9 >> 1);
          v11 = Coherence_namespace::TopoID::operator<(v10, &v13);
          if (v11)
          {
            v9 += ~(v9 >> 1);
          }

          else
          {
            v9 >>= 1;
          }

          if (v11)
          {
            v7 = v10 + 24;
          }
        }

        while (v9);
        if (v7 == *(a2 + 5) || v14 != *(v7 + 16) || uuid_compare(&v13, v7))
        {
          break;
        }
      }

      v3 = (v3 + 24);
      if (v3 == v2)
      {
        goto LABEL_17;
      }
    }
  }

  result = 1;
LABEL_18:
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

__n128 std::__split_buffer<Coherence_namespace::TopoID>::emplace_back<Coherence_namespace::TopoID const&>(__n128 **a1, __n128 *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = v5 - *a1;
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v10 = 1;
      }

      else
      {
        v10 = 0x5555555555555556 * ((v4 - *a1) >> 3);
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<Coherence_namespace::TopoID>>(a1[4], v10);
    }

    v7 = (0xAAAAAAAAAAAAAAABLL * (v6 >> 3) + 1) / -2;
    v8 = v5 - 24 * ((0xAAAAAAAAAAAAAAABLL * (v6 >> 3) + 1) / 2);
    v9 = v4 - v5;
    if (v4 != v5)
    {
      memmove(v5 - 24 * ((0xAAAAAAAAAAAAAAABLL * (v6 >> 3) + 1) / 2), v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v8[v9];
    a1[1] = (v5 + 24 * v7);
    a1[2] = &v8[v9];
  }

  result = *a2;
  v4[1].n128_u64[0] = a2[1].n128_u64[0];
  *v4 = result;
  a1[2] = (a1[2] + 24);
  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

id CRContext.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1ADE3C674()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9DC0, &qword_1AE240B90);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v10 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9DB8, &qword_1AE240B88);
  __swift_allocate_value_buffer(v4, qword_1EB5D7518);
  v5 = __swift_project_value_buffer(v4, qword_1EB5D7518);
  v6 = sub_1AE23BDDC();
  (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
  *v5 = 0;
  v7 = *(v4 + 28);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9ED0, &qword_1AE240EF0);
  bzero(v5 + v7, *(*(v8 - 8) + 64));
  return sub_1ADDD2198(v3, v5 + v7, &qword_1EB5B9DC0, &qword_1AE240B90);
}

void static CRContext.sharedContextURL.getter(uint64_t a1@<X8>)
{
  if (qword_1EB5B9930 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9DB8, &qword_1AE240B88);
  v3 = __swift_project_value_buffer(v2, qword_1EB5D7518);
  os_unfair_lock_lock(v3);
  sub_1ADE3CC28(v3 + *(v2 + 28), a1);

  os_unfair_lock_unlock(v3);
}

void sub_1ADE3C874(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (qword_1EB5B9930 != -1)
  {
    swift_once();
  }

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9DB8, &qword_1AE240B88);
  v5 = __swift_project_value_buffer(v4, qword_1EB5D7518);
  os_unfair_lock_lock(v5);
  sub_1ADE3CC28(v5 + *(v4 + 28), a2);

  os_unfair_lock_unlock(v5);
}

uint64_t sub_1ADE3C930(uint64_t a1)
{
  v2 = sub_1AE23BDDC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v3 + 16);
  v8(v7, a1, v2, v5);
  if (qword_1EB5B9930 != -1)
  {
    swift_once();
  }

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9DB8, &qword_1AE240B88);
  v10 = __swift_project_value_buffer(v9, qword_1EB5D7518);
  os_unfair_lock_lock(v10);
  v11 = *(v9 + 28);
  sub_1ADDCEDE0(v10 + v11, &qword_1EB5B9DC0, &qword_1AE240B90);
  (v8)(v10 + v11, v7, v2);
  (*(v3 + 56))(v10 + v11, 0, 1, v2);
  os_unfair_lock_unlock(v10);
  return (*(v3 + 8))(v7, v2);
}

uint64_t static CRContext.sharedContextURL.setter(uint64_t a1)
{
  if (qword_1EB5B9930 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9DB8, &qword_1AE240B88);
  v3 = __swift_project_value_buffer(v2, qword_1EB5D7518);
  os_unfair_lock_lock(v3);
  v4 = *(v2 + 28);
  sub_1ADDCEDE0(v3 + v4, &qword_1EB5B9DC0, &qword_1AE240B90);
  v5 = sub_1AE23BDDC();
  v8 = *(v5 - 8);
  (*(v8 + 16))(v3 + v4, a1, v5);
  (*(v8 + 56))(v3 + v4, 0, 1, v5);
  os_unfair_lock_unlock(v3);
  v6 = *(v8 + 8);

  return v6(a1, v5);
}

uint64_t sub_1ADE3CC28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1AE23BCAC();
  v30 = *(v4 - 8);
  v31 = v4;
  v5 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v29 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1AE23BDDC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v28 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9DC0, &qword_1AE240B90);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v28 - v17;
  sub_1ADDCEE40(a1, &v28 - v17, &qword_1EB5B9DC0, &qword_1AE240B90);
  if ((*(v8 + 48))(v18, 1, v7) != 1)
  {
    return (*(v8 + 32))(a2, v18, v7);
  }

  v28 = a2;
  sub_1ADDCEDE0(v18, &qword_1EB5B9DC0, &qword_1AE240B90);
  v19 = [objc_opt_self() defaultManager];
  v20 = [v19 URLsForDirectory:14 inDomains:1];

  v21 = sub_1AE23CFDC();
  if (*(v21 + 16))
  {
    (*(v8 + 16))(v11, v21 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v7);

    (*(v8 + 32))(v14, v11, v7);
    v32 = 0xD000000000000021;
    v33 = 0x80000001AE25ED80;
    v23 = v29;
    v22 = v30;
    v24 = v31;
    (*(v30 + 104))(v29, *MEMORY[0x1E6968F70], v31);
    sub_1ADE42DEC();
    sub_1AE23BDCC();
    (*(v22 + 8))(v23, v24);
    return (*(v8 + 8))(v14, v7);
  }

  else
  {

    v26 = v28;
    if (qword_1EB5B9938 != -1)
    {
      swift_once();
    }

    v27 = __swift_project_value_buffer(v7, qword_1EB5D7530);
    return (*(v8 + 16))(v26, v27, v7);
  }
}

void (*static CRContext.sharedContextURL.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  v2 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = sub_1AE23BDDC();
  *v4 = v5;
  v6 = *(v5 - 8);
  *(v4 + 8) = v6;
  v7 = *(v6 + 64);
  if (v2)
  {
    *(v4 + 16) = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    *(v4 + 16) = malloc(*(v6 + 64));
    v8 = malloc(v7);
  }

  v9 = v8;
  *(v4 + 24) = v8;
  if (qword_1EB5B9930 != -1)
  {
    swift_once();
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9DB8, &qword_1AE240B88);
  v11 = __swift_project_value_buffer(v10, qword_1EB5D7518);
  *(v4 + 32) = v11;
  os_unfair_lock_lock(v11);
  v12 = *(v10 + 28);
  *(v4 + 40) = v12;
  sub_1ADE3CC28(v11 + v12, v9);
  os_unfair_lock_unlock(v11);
  return sub_1ADE3D1A4;
}

void sub_1ADE3D1A4(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 10);
  v4 = (*a1)[3];
  v5 = (*a1)[4];
  v7 = (*a1)[1];
  v6 = (*a1)[2];
  v8 = **a1;
  if (a2)
  {
    v9 = *(v7 + 16);
    v9((*a1)[2], v4, v8);
    os_unfair_lock_lock(v5);
    sub_1ADDCEDE0(v5 + v3, &qword_1EB5B9DC0, &qword_1AE240B90);
    v9(v5 + v3, v6, v8);
    (*(v7 + 56))(v5 + v3, 0, 1, v8);
    os_unfair_lock_unlock(v5);
    v10 = *(v7 + 8);
    v10(v6, v8);
    v10(v4, v8);
  }

  else
  {
    os_unfair_lock_lock((*a1)[4]);
    sub_1ADDCEDE0(v5 + v3, &qword_1EB5B9DC0, &qword_1AE240B90);
    (*(v7 + 16))(v5 + v3, v4, v8);
    (*(v7 + 56))(v5 + v3, 0, 1, v8);
    os_unfair_lock_unlock(v5);
    (*(v7 + 8))(v4, v8);
  }

  free(v4);
  free(v6);

  free(v2);
}

uint64_t sub_1ADE3D354()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9DC0, &qword_1AE240B90);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v8 - v2;
  v4 = sub_1AE23BDDC();
  __swift_allocate_value_buffer(v4, qword_1EB5D7530);
  v5 = __swift_project_value_buffer(v4, qword_1EB5D7530);
  sub_1AE23BDBC();
  v6 = *(v4 - 8);
  result = (*(v6 + 48))(v3, 1, v4);
  if (result != 1)
  {
    return (*(v6 + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

void sub_1ADE3D484()
{
  type metadata accessor for CRContext();
  v0 = sub_1ADE3D514(0, 0xE000000000000000, 0);
  if (qword_1EB5B96D8 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1EB5D7500);
  byte_1EB5D7504 = 1;
  os_unfair_lock_unlock(&dword_1EB5D7500);
  qword_1EB5B9948 = v0;
}

uint64_t sub_1ADE3D514(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v115 = a1;
  v116 = a2;
  v127 = *MEMORY[0x1E69E9840];
  v114 = sub_1AE23BCAC();
  v6 = *(v114 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v114);
  v9 = &v109 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9DC0, &qword_1AE240B90);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v117 = &v109 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v113 = &v109 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v109 - v16;
  v18 = sub_1AE23BDDC();
  v119 = *(v18 - 8);
  v19 = *(v119 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v112 = &v109 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v118 = &v109 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v120 = &v109 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v109 - v26;
  if (a3)
  {
    v126 = 0;
    v124 = 0u;
    v125 = 0u;
    v28 = NSTemporaryDirectory();
    sub_1AE23CD0C();

    sub_1AE23BCDC();

    v29 = type metadata accessor for CRAssetManager(0);
    v30 = *(v29 + 48);
    v31 = *(v29 + 52);
    swift_allocObject();
    v32 = sub_1ADDCD880(v27, &v124);
  }

  else
  {
    if (qword_1ED96AE88 != -1)
    {
      swift_once();
    }

    v32 = qword_1ED96F2A8;
  }

  if (qword_1EB5B9930 != -1)
  {
    swift_once();
  }

  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9DB8, &qword_1AE240B88);
  v34 = __swift_project_value_buffer(v33, qword_1EB5D7518);
  os_unfair_lock_lock(v34);
  v35 = v34 + *(v33 + 28);
  v36 = v120;
  v37 = 0;
  sub_1ADE3CC28(v35, v120);
  os_unfair_lock_unlock(v34);
  if (qword_1EB5B9938 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v18, qword_1EB5D7530);
  v38 = sub_1AE23BD7C();
  v39 = v119;
  if (v38)
  {
    sub_1ADE42E40();
    v40 = swift_allocError();
    *v41 = 0xD000000000000031;
    *(v41 + 8) = 0x80000001AE25ED40;
    *(v41 + 16) = 0;
    swift_willThrow();
    goto LABEL_24;
  }

  v42 = HIBYTE(v116) & 0xF;
  if ((v116 & 0x2000000000000000) == 0)
  {
    v42 = v115 & 0xFFFFFFFFFFFFLL;
  }

  if (!v42)
  {
LABEL_17:
    v46 = v18;
    strcpy(&v124, "data.sqlite3");
    BYTE13(v124) = 0;
    HIWORD(v124) = -5120;
    v47 = v114;
    (*(v6 + 104))(v9, *MEMORY[0x1E6968F70], v114);
    sub_1ADE42DEC();
    sub_1AE23BDCC();
    (*(v6 + 8))(v9, v47);
    v123[0] = 0;
    v48 = objc_opt_self();
    v49 = [v48 defaultManager];
    sub_1AE23BD9C();
    v50 = sub_1AE23CCDC();

    v51 = [v49 fileExistsAtPath:v50 isDirectory:v123];

    if (v51 && (v123[0] & 1) == 0)
    {
      v110 = v32;
      v111 = v4;
      *&v124 = sub_1AE23BD9C();
      *(&v124 + 1) = v80;

      MEMORY[0x1B26FB670](0x706D65742DLL, 0xE500000000000000);

      v81 = v112;
      sub_1AE23BCEC();

      v82 = [v48 defaultManager];
      v83 = sub_1AE23BD1C();
      v84 = sub_1AE23BD1C();
      *&v124 = 0;
      v85 = [v82 moveItemAtURL:v83 toURL:v84 error:&v124];

      v86 = v124;
      if (!v85)
      {
        goto LABEL_35;
      }

      v87 = v124;
      v88 = [v48 defaultManager];
      v89 = sub_1AE23BD1C();
      *&v124 = 0;
      v90 = [v88 createDirectoryAtURL:v89 withIntermediateDirectories:1 attributes:0 error:&v124];

      v86 = v124;
      if (!v90)
      {
LABEL_35:
        v100 = v86;
        v40 = sub_1AE23BC9C();

        swift_willThrow();
        v101 = v119;
        v102 = *(v119 + 8);
        v18 = v46;
        v102(v81, v46);
        v102(v118, v46);
        v4 = v111;
        v39 = v101;
        v32 = v110;
        goto LABEL_24;
      }

      v109 = v37;
      v91 = v124;
      v92 = [v48 defaultManager];
      v93 = sub_1AE23BD1C();
      v94 = v118;
      v95 = sub_1AE23BD1C();
      *&v124 = 0;
      v96 = [v92 moveItemAtURL:v93 toURL:v95 error:&v124];

      v97 = v81;
      v4 = v111;
      v32 = v110;
      if (!v96)
      {
        v107 = v124;
        v40 = sub_1AE23BC9C();

        swift_willThrow();
        v39 = v119;
        v108 = *(v119 + 8);
        v18 = v46;
        v108(v97, v46);
        v108(v94, v46);
        goto LABEL_24;
      }

      v39 = v119;
      v98 = *(v119 + 8);
      v99 = v124;
      v18 = v46;
      v98(v97, v46);
      v56 = v118;
      v37 = v109;
    }

    else
    {
      v52 = [v48 defaultManager];
      v53 = sub_1AE23BD1C();
      *&v124 = 0;
      v54 = [v52 createDirectoryAtURL:v53 withIntermediateDirectories:1 attributes:0 error:&v124];

      if (!v54)
      {
        v59 = v124;
        v40 = sub_1AE23BC9C();

        swift_willThrow();
        v18 = v46;
        (*(v39 + 8))(v118, v46);
        goto LABEL_24;
      }

      v55 = v124;
      v18 = v46;
      v56 = v118;
    }

    v57 = v113;
    (*(v39 + 16))(v113, v56, v18);
    (*(v39 + 56))(v57, 0, 1, v18);
    v58 = sub_1AE196B1C(v57);
    if (!v37)
    {
      v103 = v58;
      v126 = 0;
      v124 = 0u;
      v125 = 0u;
      v104 = objc_allocWithZone(v4);
      *&v104[OBJC_IVAR___CRContext_assetManager] = v32;
      sub_1ADDCEE40(&v124, &v104[OBJC_IVAR___CRContext_encryptionDelegate], &qword_1EB5B9DB0, &qword_1AE240B80);
      v105 = &v104[OBJC_IVAR___CRContext_crdtDatabase];
      *v105 = v103;
      v105[1] = &off_1F23C64D8;
      v121.receiver = v104;
      v121.super_class = v4;
      v77 = objc_msgSendSuper2(&v121, sel_init);
      sub_1ADDCEDE0(&v124, &qword_1EB5B9DB0, &qword_1AE240B80);
      v106 = *(v39 + 8);
      v106(v56, v18);
      v106(v120, v18);
LABEL_30:
      v78 = *MEMORY[0x1E69E9840];
      return v77;
    }

    v40 = v37;
    (*(v39 + 8))(v56, v18);
LABEL_24:
    if (qword_1EB5B9950 != -1)
    {
      swift_once();
    }

    v60 = sub_1AE23C78C();
    __swift_project_value_buffer(v60, qword_1EB5D7548);
    v61 = v40;
    v62 = sub_1AE23C76C();
    v63 = sub_1AE23D61C();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = v18;
      v65 = swift_slowAlloc();
      v66 = v4;
      v67 = v32;
      v68 = swift_slowAlloc();
      *v65 = 138412290;
      v69 = v40;
      v70 = _swift_stdlib_bridgeErrorToNSError();
      *(v65 + 4) = v70;
      *v68 = v70;
      _os_log_impl(&dword_1ADDCA000, v62, v63, "Unable to create file on disk for shared context: %@", v65, 0xCu);
      sub_1ADDCEDE0(v68, &unk_1EB5B9EC0, &qword_1AE240EE8);
      v71 = v68;
      v32 = v67;
      v4 = v66;
      MEMORY[0x1B26FDA50](v71, -1, -1);
      v72 = v65;
      v18 = v64;
      MEMORY[0x1B26FDA50](v72, -1, -1);
    }

    else
    {
    }

    v73 = v117;
    (*(v39 + 56))(v117, 1, 1, v18);
    v74 = sub_1AE196B1C(v73);
    v126 = 0;
    v124 = 0u;
    v125 = 0u;
    v75 = objc_allocWithZone(v4);
    *&v75[OBJC_IVAR___CRContext_assetManager] = v32;
    sub_1ADDCEE40(&v124, &v75[OBJC_IVAR___CRContext_encryptionDelegate], &qword_1EB5B9DB0, &qword_1AE240B80);
    v76 = &v75[OBJC_IVAR___CRContext_crdtDatabase];
    *v76 = v74;
    v76[1] = &off_1F23C64D8;
    v122.receiver = v75;
    v122.super_class = v4;
    v77 = objc_msgSendSuper2(&v122, sel_init);
    sub_1ADDCEDE0(&v124, &qword_1EB5B9DB0, &qword_1AE240B80);
    (*(v39 + 8))(v120, v18);
    goto LABEL_30;
  }

  v109 = 0;
  v111 = v4;
  v110 = v32;
  v43 = v116;
  v44 = v115;
  *&v124 = sub_1AE23BCBC();
  *(&v124 + 1) = v45;

  MEMORY[0x1B26FB670](v44, v43);

  sub_1AE23BDBC();

  if ((*(v39 + 48))(v17, 1, v18) != 1)
  {
    (*(v39 + 8))(v36, v18);
    (*(v39 + 32))(v36, v17, v18);
    v32 = v110;
    v4 = v111;
    v37 = v109;
    goto LABEL_17;
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

id static CRContext.shared.getter()
{
  if (qword_1EB5B9940 != -1)
  {
    swift_once();
  }

  v1 = qword_1EB5B9948;

  return v1;
}

uint64_t CRContext.__allocating_init(for:encryptionDelegate:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9DC0, &qword_1AE240B90);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v18[-v6 - 8];
  v8 = sub_1AE23BDDC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v18[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  (*(v9 + 16))(v13, a1, v8, v11);
  sub_1ADDCEE40(a2, v18, &qword_1EB5B9DB0, &qword_1AE240B80);
  (*(v9 + 56))(v7, 1, 1, v8);
  sub_1ADDFE5A4(v13, v18, v7);
  v15 = v14;
  sub_1ADDCEDE0(a2, &qword_1EB5B9DB0, &qword_1AE240B80);
  (*(v9 + 8))(a1, v8);
  return v15;
}

uint64_t sub_1ADE3E4E8@<X0>(uint64_t a1@<X8>)
{
  v44[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1AE23BDDC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v39 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v39 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v39 - v14;
  if (qword_1ED96A3D0 != -1)
  {
    swift_once();
  }

  if (byte_1ED969FC8 == 1)
  {
    v41 = v9;
    v42 = v6;
    v43 = a1;
    sub_1AE23BD5C();
    v16 = objc_opt_self();
    v17 = (v3 + 8);
    v40 = v3;
    for (i = (v3 + 32); ; (*i)(v15, v12, v2))
    {
      v19 = [v16 defaultManager];
      sub_1AE23BDAC();
      v20 = sub_1AE23CCDC();

      v21 = [v19 isWritableFileAtPath_];

      if (!v21)
      {
        break;
      }

      sub_1AE23BD5C();
      (*v17)(v15, v2);
    }

    v22 = v41;
    sub_1AE23BD3C();
    v23 = [v16 defaultManager];
    sub_1AE23BDAC();
    v24 = sub_1AE23CCDC();

    v25 = [v23 isWritableFileAtPath_];

    if (v25)
    {
      v26 = v40;
      (*(v40 + 8))(v15, v2);
      (*(v26 + 16))(v15, v22, v2);
    }

    v27 = v42;
    sub_1AE23BD2C();
    v28 = [v16 defaultManager];
    v29 = sub_1AE23BD1C();
    v44[0] = 0;
    v30 = [v28 createDirectoryAtURL:v29 withIntermediateDirectories:1 attributes:0 error:v44];

    if (v30)
    {
      v31 = v44[0];
    }

    else
    {
      v35 = v44[0];
      v36 = sub_1AE23BC9C();

      swift_willThrow();
    }

    v37 = *v17;
    (*v17)(v22, v2);
    v37(v15, v2);
    result = (*i)(v43, v27, v2);
    v38 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v32 = NSTemporaryDirectory();
    sub_1AE23CD0C();

    sub_1AE23BCDC();
    v33 = *MEMORY[0x1E69E9840];
  }

  return result;
}

void *sub_1ADE3E968()
{
  result = sub_1ADE50E58(MEMORY[0x1E69E7CC0]);
  off_1ED9664C8 = result;
  return result;
}

uint64_t CRContext.UniqueContextError.hashValue.getter()
{
  sub_1AE23E31C();
  MEMORY[0x1B26FCBD0](0);
  return sub_1AE23E34C();
}

uint64_t sub_1ADE3EA0C()
{
  sub_1AE23E31C();
  MEMORY[0x1B26FCBD0](0);
  return sub_1AE23E34C();
}

uint64_t sub_1ADE3EA78()
{
  sub_1AE23E31C();
  MEMORY[0x1B26FCBD0](0);
  return sub_1AE23E34C();
}

void static CRContext.uniqueContext(for:)(uint64_t a1)
{
  if (qword_1ED96B308 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v1 = *(qword_1ED96F2F8 + 40);
  MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  sub_1AE23D6AC();
}

void sub_1ADE3EBBC(uint64_t a1@<X1>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9DC0, &qword_1AE240B90);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v15 - v7;
  if (qword_1ED966B70 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v9 = off_1ED9664C8;
  if (!*(off_1ED9664C8 + 2) || (v10 = sub_1ADDFF050(a1), (v11 & 1) == 0))
  {
    v18 = 0;
    v19 = 1;
    sub_1ADDCEDE0(&v18, &qword_1EB5B9E90, &qword_1AE240ED0);
    swift_endAccess();
LABEL_9:
    v14 = sub_1AE23BDDC();
    v15 = 0u;
    v16 = 0u;
    v17 = 0;
    (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
    Strong = sub_1ADE41744(a1, &v15, v8);
    sub_1ADDCEDE0(v8, &qword_1EB5B9DC0, &qword_1AE240B90);
    sub_1ADDCEDE0(&v15, &qword_1EB5B9DB0, &qword_1AE240B80);
    if (v2)
    {
      return;
    }

    goto LABEL_10;
  }

  sub_1ADE42CF8(v9[7] + 8 * v10, &v18);
  v19 = 0;
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1ADDCEDE0(&v18, &qword_1EB5B9E90, &qword_1AE240ED0);
  swift_endAccess();
  if (!Strong)
  {
    goto LABEL_9;
  }

  sub_1ADDCEE40(Strong + OBJC_IVAR___CRContext_encryptionDelegate, &v15, &qword_1EB5B9DB0, &qword_1AE240B80);
  v13 = *(&v16 + 1);
  sub_1ADDCEDE0(&v15, &qword_1EB5B9DB0, &qword_1AE240B80);
  if (v13)
  {
    sub_1ADE42D98();
    swift_allocError();
    swift_willThrow();

    return;
  }

LABEL_10:
  *a2 = Strong;
}

uint64_t static CRContext.uniqueContext<A>(for:encryptionDelegate:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9DC0, &qword_1AE240B90);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v10 - v4;
  v6 = sub_1AE23BDDC();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  static CRContext.uniqueContext<A>(for:encryptionDelegate:temporaryDirectory:)(a1);
  v8 = v7;
  sub_1ADDCEDE0(v5, &qword_1EB5B9DC0, &qword_1AE240B90);
  return v8;
}

void static CRContext.uniqueContext<A>(for:encryptionDelegate:temporaryDirectory:)(uint64_t a1)
{
  if (qword_1ED96B308 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v1 = *(qword_1ED96F2F8 + 40);
  MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  sub_1AE23D6AC();
}

void sub_1ADE3F094(uint64_t a1@<X1>, void (*a2)(char *, char *, uint64_t)@<X2>, unsigned int (*a3)(char *, uint64_t, uint64_t)@<X3>, uint64_t a4@<X4>, char *a5@<X5>, uint64_t a6@<X6>, void *a7@<X8>)
{
  v63 = a6;
  v71 = a5;
  v72 = a3;
  v78 = a2;
  v70 = a7;
  v10 = sub_1AE23D7CC();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v64 = *(TupleTypeMetadata2 - 8);
  v11 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v66 = &v57 - v12;
  v13 = *(a4 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v62 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v69 = &v57 - v18;
  v19 = *(v10 - 8);
  v20 = v19[8];
  MEMORY[0x1EEE9AC00](v21);
  v65 = &v57 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v68 = &v57 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v57 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v57 - v29;
  if (qword_1ED966B70 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v31 = off_1ED9664C8;
  if (*(off_1ED9664C8 + 2) && (v32 = sub_1ADDFF050(a1), (v33 & 1) != 0))
  {
    sub_1ADE42CF8(v31[7] + 8 * v32, &v76);
    v77 = 0;
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1ADDCEDE0(&v76, &qword_1EB5B9E90, &qword_1AE240ED0);
    swift_endAccess();
    v61 = Strong;
    if (Strong)
    {
      v35 = *(v13 + 48);
      if (v35(v78, 1, a4) == 1)
      {
        v36 = v61;
        sub_1ADDCEE40(v61 + OBJC_IVAR___CRContext_encryptionDelegate, &v73, &qword_1EB5B9DB0, &qword_1AE240B80);
        v37 = *(&v74 + 1);
        sub_1ADDCEDE0(&v73, &qword_1EB5B9DB0, &qword_1AE240B80);
        if (!v37)
        {
          goto LABEL_14;
        }

        goto LABEL_24;
      }

      v72 = v35;
      sub_1ADDCEE40(v61 + OBJC_IVAR___CRContext_encryptionDelegate, &v73, &qword_1EB5B9DB0, &qword_1AE240B80);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9DB0, &qword_1AE240B80);
      v39 = swift_dynamicCast();
      v40 = *(v13 + 56);
      if (v39)
      {
        v71 = *(v13 + 56);
        v40(v27, 0, 1, a4);
        v41 = *(v13 + 32);
        v42 = v69;
        v59 = v13 + 32;
        v58 = v41;
        v41(v69, v27, a4);
        v43 = v68;
        (*(v13 + 16))(v68, v42, a4);
        (v71)(v43, 0, 1, a4);
        v44 = v66;
        v71 = *(TupleTypeMetadata2 + 48);
        v60 = v13 + 48;
        v45 = v19[2];
        v45(v66, v43, v10);
        v46 = v78;
        v78 = v45;
        v45(&v71[v44], v46, v10);
        v47 = v72;
        if (v72(v44, 1, a4) == 1)
        {
          v48 = v19[1];
          v48(v68, v10);
          (*(v13 + 8))(v69, a4);
          if (v47(&v71[v44], 1, a4) == 1)
          {
            v48(v44, v10);
            v36 = v61;
LABEL_14:
            *v70 = v36;
            return;
          }
        }

        else
        {
          v78(v65, v44, v10);
          v49 = v71;
          if (v47(&v71[v44], 1, a4) != 1)
          {
            v51 = &v49[v44];
            v52 = v62;
            v58(v62, v51, a4);
            v53 = v65;
            LODWORD(v78) = sub_1AE23CCBC();
            v54 = v53;
            v55 = *(v13 + 8);
            v55(v52, a4);
            v56 = v19[1];
            v56(v68, v10);
            v55(v69, a4);
            v55(v54, a4);
            v56(v44, v10);
            v36 = v61;
            if (v78)
            {
              goto LABEL_14;
            }

LABEL_24:
            sub_1ADE42D98();
            swift_allocError();
            swift_willThrow();

            return;
          }

          (v19[1])(v68, v10);
          v50 = *(v13 + 8);
          v50(v69, a4);
          v50(v65, a4);
        }

        (*(v64 + 8))(v44, TupleTypeMetadata2);
      }

      else
      {
        v40(v27, 1, 1, a4);
        (v19[1])(v27, v10);
      }

      v36 = v61;
      goto LABEL_24;
    }
  }

  else
  {
    v76 = 0;
    v77 = 1;
    sub_1ADDCEDE0(&v76, &qword_1EB5B9E90, &qword_1AE240ED0);
    swift_endAccess();
  }

  (v19[2])(v30, v78, v10);
  if ((*(v13 + 48))(v30, 1, a4) == 1)
  {
    (v19[1])(v30, v10);
    v75 = 0;
    v73 = 0u;
    v74 = 0u;
  }

  else
  {
    *(&v74 + 1) = a4;
    v75 = v71;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v73);
    (*(v13 + 32))(boxed_opaque_existential_1, v30, a4);
  }

  v36 = sub_1ADE41744(a1, &v73, v72);
  sub_1ADDCEDE0(&v73, &qword_1EB5B9DB0, &qword_1AE240B80);
  if (!v7)
  {
    goto LABEL_14;
  }
}

uint64_t static CRContext.uniqueContextUnchecked(for:encryptionDelegate:)(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9DC0, &qword_1AE240B90);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v17 - v9;
  v11 = sub_1AE23BDDC();
  v12 = (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  if (qword_1ED96B308 != -1)
  {
    v12 = swift_once();
  }

  v13 = *(qword_1ED96F2F8 + 40);
  MEMORY[0x1EEE9AC00](v12);
  v17[-4] = v2;
  v17[-3] = a1;
  v17[-2] = a2;
  v17[-1] = v10;
  v15 = v14;
  sub_1AE23D6AC();

  if (!v3)
  {
    v4 = v17[1];
  }

  sub_1ADDCEDE0(v10, &qword_1EB5B9DC0, &qword_1AE240B90);
  return v4;
}

void static CRContext.uniqueContextUnchecked(for:encryptionDelegate:temporaryDirectory:)(uint64_t a1)
{
  if (qword_1ED96B308 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v1 = *(qword_1ED96F2F8 + 40);
  MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  sub_1AE23D6AC();
}

uint64_t sub_1ADE3FB94@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  if (qword_1ED966B70 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v9 = off_1ED9664C8;
  if (!*(off_1ED9664C8 + 2) || (v10 = sub_1ADDFF050(a1), (v11 & 1) == 0))
  {
    v14 = 0;
    v15 = 1;
    sub_1ADDCEDE0(&v14, &qword_1EB5B9E90, &qword_1AE240ED0);
    swift_endAccess();
LABEL_8:
    result = sub_1ADE41744(a1, a2, a3);
    if (v4)
    {
      return result;
    }

    goto LABEL_9;
  }

  sub_1ADE42CF8(v9[7] + 8 * v10, &v14);
  v15 = 0;
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1ADDCEDE0(&v14, &qword_1EB5B9E90, &qword_1AE240ED0);
  swift_endAccess();
  if (!Strong)
  {
    goto LABEL_8;
  }

  result = Strong;
LABEL_9:
  *a4 = result;
  return result;
}

uint64_t static CRContext.currentUniqueContextUnchecked(for:)(uint64_t a1)
{
  if (qword_1ED96B308 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *(qword_1ED96F2F8 + 40);
  MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9DC8, &qword_1AE240B98);
  sub_1AE23D6AC();

  return v6;
}

uint64_t sub_1ADE3FDC4@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  if (qword_1ED966B70 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = off_1ED9664C8;
  if (*(off_1ED9664C8 + 2) && (v5 = sub_1ADDFF050(a1), (v6 & 1) != 0))
  {
    sub_1ADE42CF8(v4[7] + 8 * v5, &v9);
    v10 = 0;
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1ADDCEDE0(&v9, &qword_1EB5B9E90, &qword_1AE240ED0);
    result = swift_endAccess();
  }

  else
  {
    v9 = 0;
    v10 = 1;
    sub_1ADDCEDE0(&v9, &qword_1EB5B9E90, &qword_1AE240ED0);
    result = swift_endAccess();
    Strong = 0;
  }

  *a2 = Strong;
  return result;
}

Swift::Void __swiftcall CRContext.close()()
{
  if (qword_1ED96B308 != -1)
  {
    swift_once();
  }

  v1 = *(qword_1ED96F2F8 + 40);
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1ADE4145C;
  *(v3 + 24) = v2;
  v8[4] = sub_1ADDF70F4;
  v8[5] = v3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1ADDF70CC;
  v8[3] = &block_descriptor;
  v4 = _Block_copy(v8);
  v5 = v1;
  v6 = v0;

  dispatch_sync(v5, v4);

  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

uint64_t sub_1ADE4006C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9DC0, &qword_1AE240B90);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v15 - v4;
  v6 = (a1 + OBJC_IVAR___CRContext_crdtDatabase);
  v8 = *(a1 + OBJC_IVAR___CRContext_crdtDatabase);
  v7 = *(a1 + OBJC_IVAR___CRContext_crdtDatabase + 8);
  ObjectType = swift_getObjectType();
  v10 = *(v7 + 48);
  swift_unknownObjectRetain();
  v10(ObjectType, v7);
  swift_unknownObjectRelease();
  v11 = sub_1AE23BDDC();
  (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
  v12 = sub_1ADDCFD3C(v5);
  v13 = *v6;
  *v6 = v12;
  v6[1] = &off_1F23C69F0;
  return swift_unknownObjectRelease();
}

id sub_1ADE40488()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1ADE404C0()
{
  result = sub_1ADE404E4();
  byte_1ED969FC8 = result & 1;
  return result;
}

uint64_t sub_1ADE404E4()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_1AE23CD0C();

    sub_1AE23CD7C();
  }

  if (sub_1AE23CE4C())
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_1AE23CE4C();
  }

  return v2 & 1;
}

uint64_t sub_1ADE405F4()
{
  v1 = *v0;
  v2 = sub_1AE23CD0C();
  v3 = MEMORY[0x1B26FB700](v2);

  return v3;
}

uint64_t sub_1ADE40630()
{
  v1 = *v0;
  sub_1AE23CD0C();
  sub_1AE23CDAC();
}

uint64_t sub_1ADE40684(uint64_t a1, id *a2)
{
  result = sub_1AE23CCEC();
  *a2 = 0;
  return result;
}

uint64_t sub_1ADE406FC(uint64_t a1, id *a2)
{
  v3 = sub_1AE23CCFC();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1ADE4077C@<X0>(uint64_t *a1@<X8>)
{
  sub_1AE23CD0C();
  v2 = sub_1AE23CCDC();

  *a1 = v2;
  return result;
}

uint64_t sub_1ADE407C0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_1AE23CD0C();
  v6 = v5;
  if (v4 == sub_1AE23CD0C() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1AE23E00C();
  }

  return v9 & 1;
}

uint64_t sub_1ADE40848(uint64_t a1)
{
  v2 = sub_1ADDD322C(&qword_1EB5B8BE0, type metadata accessor for Key);
  v3 = sub_1ADDD322C(&qword_1EB5B9E68, type metadata accessor for Key);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1ADE40904(uint64_t a1)
{
  v2 = sub_1ADDD322C(&unk_1ED966B50, type metadata accessor for URLResourceKey);
  v3 = sub_1ADDD322C(&unk_1EB5B9F08, type metadata accessor for URLResourceKey);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1ADE409C0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1AE23CCDC();

  *a2 = v5;
  return result;
}

uint64_t sub_1ADE40A08(uint64_t a1)
{
  v2 = sub_1ADDD322C(&unk_1ED9664B0, type metadata accessor for FileAttributeKey);
  v3 = sub_1ADDD322C(&qword_1EB5B9F18, type metadata accessor for FileAttributeKey);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

void sub_1ADE40AC4(uint64_t a1)
{
  v2 = a1;
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v8 = swift_slowAlloc();
      sub_1ADE40FB8(v8, v4, v2);
      MEMORY[0x1B26FDA50](v8, -1, -1);
      goto LABEL_4;
    }
  }

  MEMORY[0x1EEE9AC00](a1);
  v6 = v9 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v6, v5);
  sub_1ADE40C24(v6, v4, v2);
  if (v1)
  {
    swift_willThrow();
  }

LABEL_4:
  v7 = *MEMORY[0x1E69E9840];
}

void sub_1ADE40C24(unint64_t *a1, uint64_t a2, void *a3)
{
  v37 = a2;
  v38 = a1;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9E98, &qword_1AE240ED8);
  v4 = *(*(v47 - 8) + 64);
  MEMORY[0x1EEE9AC00](v47);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v46 = &v37 - v8;
  v9 = sub_1AE23BDDC();
  v10 = *(*(v9 - 8) + 64);
  v12.n128_f64[0] = MEMORY[0x1EEE9AC00](v9);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = 0;
  v48 = a3;
  v18 = a3[8];
  v17 = a3 + 8;
  v16 = v18;
  v19 = 1 << *(v17 - 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v39 = 0;
  v40 = (v19 + 63) >> 6;
  v44 = v17;
  v45 = v11;
  v42 = (v11 + 8);
  v43 = v11 + 16;
  while (v21)
  {
    v22 = __clz(__rbit64(v21));
    v49 = (v21 - 1) & v21;
LABEL_11:
    v25 = v22 | (v15 << 6);
    v26 = v48;
    v27 = *(v45 + 16);
    v27(v14, v48[6] + *(v45 + 72) * v25, v9, v12);
    v28 = v26[7];
    v41 = v25;
    sub_1ADE42CF8(v28 + 8 * v25, v50);
    v29 = v46;
    (v27)(v46, v14, v9);
    v30 = v47;
    sub_1ADE42CF8(v50, v29 + *(v47 + 48));
    v31 = v9;
    sub_1ADDCEE40(v29, v6, &qword_1EB5B9E98, &qword_1AE240ED8);
    v32 = *(v30 + 48);
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1ADDCEDE0(v29, &qword_1EB5B9E98, &qword_1AE240ED8);
    sub_1ADE42D30(&v6[v32]);
    if (Strong)
    {

      v35 = *v42;
      (*v42)(v6, v9);
      sub_1ADE42D30(v50);
      v35(v14, v9);
      *(v38 + ((v41 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v41;
      v36 = __OFADD__(v39++, 1);
      v17 = v44;
      v21 = v49;
      if (v36)
      {
        __break(1u);
LABEL_16:
        sub_1ADE41030(v38, v37, v39, v48);
        return;
      }
    }

    else
    {
      v34 = *v42;
      (*v42)(v6, v31);
      sub_1ADE42D30(v50);
      v34(v14, v31);
      v9 = v31;
      v17 = v44;
      v21 = v49;
    }
  }

  v23 = v15;
  while (1)
  {
    v15 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v15 >= v40)
    {
      goto LABEL_16;
    }

    v24 = v17[v15];
    ++v23;
    if (v24)
    {
      v22 = __clz(__rbit64(v24));
      v49 = (v24 - 1) & v24;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void *sub_1ADE40FB8(void *result, uint64_t a2, void *a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    sub_1ADE40C24(result, a2, a3);
    v7 = v6;

    return v7;
  }

  return result;
}

uint64_t sub_1ADE41030(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v46 = sub_1AE23BDDC();
  v44 = *(v46 - 8);
  v8 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v46);
  v10 = v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v41 = v38 - v12;
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9EA0, &qword_1AE240EE0);
  result = sub_1AE23DCDC();
  v14 = result;
  if (a2 < 1)
  {
    v15 = 0;
  }

  else
  {
    v15 = *a1;
  }

  v16 = 0;
  v38[1] = v44 + 16;
  v39 = result;
  v45 = v44 + 32;
  v17 = result + 64;
  v40 = a1;
  v38[0] = a4;
  v18 = v46;
  while (v15)
  {
    v19 = v10;
    v20 = __clz(__rbit64(v15));
    v42 = (v15 - 1) & v15;
LABEL_16:
    v23 = v20 | (v16 << 6);
    v24 = a4[6];
    v25 = v44;
    v43 = *(v44 + 72);
    v26 = v41;
    (*(v44 + 16))(v41, v24 + v43 * v23, v18);
    sub_1ADE42CF8(a4[7] + 8 * v23, v48);
    v27 = *(v25 + 32);
    v10 = v19;
    v27(v19, v26, v18);
    sub_1ADE42D60(v48, v47);
    v14 = v39;
    v28 = *(v39 + 40);
    sub_1ADDD322C(&unk_1ED969ED8, MEMORY[0x1E6968FB0]);
    result = sub_1AE23CBBC();
    v29 = -1 << *(v14 + 32);
    v30 = result & ~v29;
    v31 = v30 >> 6;
    if (((-1 << v30) & ~*(v17 + 8 * (v30 >> 6))) == 0)
    {
      v33 = 0;
      v34 = (63 - v29) >> 6;
      a1 = v40;
      while (++v31 != v34 || (v33 & 1) == 0)
      {
        v35 = v31 == v34;
        if (v31 == v34)
        {
          v31 = 0;
        }

        v33 |= v35;
        v36 = *(v17 + 8 * v31);
        if (v36 != -1)
        {
          v32 = __clz(__rbit64(~v36)) + (v31 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v32 = __clz(__rbit64((-1 << v30) & ~*(v17 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
    a1 = v40;
LABEL_26:
    *(v17 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
    v27((*(v14 + 48) + v32 * v43), v10, v46);
    result = sub_1ADE42D60(v47, *(v14 + 56) + 8 * v32);
    ++*(v14 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v38[0];
    v15 = v42;
    if (!a3)
    {
      return v14;
    }
  }

  v21 = v16;
  while (1)
  {
    v16 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v16 >= a2)
    {
      return v14;
    }

    v22 = a1[v16];
    ++v21;
    if (v22)
    {
      v19 = v10;
      v20 = __clz(__rbit64(v22));
      v42 = (v22 - 1) & v22;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unint64_t sub_1ADE41468()
{
  result = qword_1EB5B9DD0;
  if (!qword_1EB5B9DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5B9DD0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CRContext.UniqueContextError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for CRContext.UniqueContextError(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

__n128 __swift_memcpy48_1(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1ADE415EC(uint64_t a1, int a2)
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

uint64_t sub_1ADE4160C(uint64_t result, int a2, int a3)
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

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1ADE41744(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9DC0, &qword_1AE240B90);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v27[-v8];
  v10 = sub_1AE23BDDC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v27[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v27[-v17];
  v19 = *(v11 + 16);
  v19(&v27[-v17], a1, v10, v16);
  sub_1ADDCEE40(a2, v29, &qword_1EB5B9DB0, &qword_1AE240B80);
  sub_1ADDCEE40(a3, v9, &qword_1EB5B9DC0, &qword_1AE240B90);
  v20 = v30;
  sub_1ADDFE5A4(v18, v29, v9);
  v22 = v21;
  if (!v20)
  {
    v30 = v19;
    if (qword_1ED966B70 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if (*(off_1ED9664C8 + 2) > 0xAuLL)
    {

      sub_1ADE40AC4(v23);
      v25 = v24;

      off_1ED9664C8 = v25;
    }

    v30(v14, a1, v10);
    swift_unknownObjectWeakInit();
    v28[8] = 0;
    swift_beginAccess();
    sub_1AE1D17FC(v28, v14);
    swift_endAccess();
  }

  return v22;
}

id sub_1ADE419F0(uint64_t a1, uint64_t a2)
{
  v21[0] = a2;
  if (qword_1ED96B308 != -1)
  {
    swift_once();
  }

  v3 = qword_1ED96F2F8;
  v4 = (a1 + OBJC_IVAR____TtC9Coherence18ObjCRenameSequence_renameSequence);
  swift_beginAccess();
  v6 = *v4;
  v5 = v4[1];
  v7 = v4[2];
  v8 = (a1 + OBJC_IVAR____TtC9Coherence18ObjCRenameSequence_renameAddedBySequence);
  v9 = swift_beginAccess();
  v21[1] = v21;
  v11 = *v8;
  v10 = v8[1];
  v12 = v8[2];
  v13 = *(v3 + 40);
  MEMORY[0x1EEE9AC00](v9);

  sub_1ADE42C78(v5);

  sub_1ADE42C78(v10);
  sub_1AE23D6AC();

  sub_1ADE42CB8(v10);

  sub_1ADE42CB8(v5);
  v14 = v23;
  v15 = v24;
  v16 = v25;
  v17 = type metadata accessor for ObjCRenames();
  v18 = objc_allocWithZone(v17);
  v19 = &v18[OBJC_IVAR____TtC9Coherence11ObjCRenames_renames];
  *v19 = v14;
  v19[8] = v15;
  *(v19 + 2) = v16;
  v22.receiver = v18;
  v22.super_class = v17;
  return objc_msgSendSuper2(&v22, sel_init);
}

uint64_t sub_1ADE41BE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v49 = sub_1AE23C88C();
  v48 = *(v49 - 8);
  v6 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v46 = v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1AE23C8CC();
  v45 = *(v47 - 8);
  v8 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v44 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E70, &unk_1AE240EC0);
  v42 = *(v10 - 8);
  v11 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v41 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = v41 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = v41 - v20;
  if (qword_1ED96B308 != -1)
  {
    swift_once();
  }

  v43 = qword_1ED96F2F8;
  v22 = OBJC_IVAR____TtC9Coherence11ObjCVersion_version;
  swift_beginAccess();
  v50 = *(a1 + v22);
  v23 = OBJC_IVAR____TtC9Coherence11ObjCVersion_version;
  swift_beginAccess();
  v51 = *(a2 + v23);
  v24 = OBJC_IVAR____TtC9Coherence11ObjCReplica_uuid;
  swift_beginAccess();
  v25 = sub_1AE23BFEC();
  (*(*(v25 - 8) + 16))(v21, a3 + v24, v25);
  v26 = *(a3 + OBJC_IVAR____TtC9Coherence11ObjCReplica_index);
  v27 = type metadata accessor for Replica();
  *&v21[*(v27 + 20)] = v26;
  v28 = *(*(v27 - 8) + 56);
  v28(v21, 0, 1, v27);
  v28(v18, 1, 1, v27);
  v29 = v18;
  if (*(*(&v50 + 1) + 16) || *(*(&v51 + 1) + 16))
  {
    v30 = v43;
    v41[1] = *(v43 + 40);
    v41[0] = *(&v50 + 1);
    sub_1ADDCEE40(v21, v15, &unk_1EB5B9E70, &unk_1AE240EC0);
    sub_1ADDCEE40(v29, v12, &unk_1EB5B9E70, &unk_1AE240EC0);
    v31 = *(v42 + 80);
    v32 = (v31 + 56) & ~v31;
    v42 = v29;
    v33 = (v11 + v31 + v32) & ~v31;
    v34 = swift_allocObject();
    v35 = v51;
    *(v34 + 16) = v50;
    *(v34 + 32) = v35;
    *(v34 + 48) = v30;
    sub_1ADDD2198(v15, v34 + v32, &unk_1EB5B9E70, &unk_1AE240EC0);
    sub_1ADDD2198(v12, v34 + v33, &unk_1EB5B9E70, &unk_1AE240EC0);
    aBlock[4] = sub_1ADE4315C;
    aBlock[5] = v34;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1ADDD2200;
    aBlock[3] = &block_descriptor_78;
    v36 = _Block_copy(aBlock);
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();

    v37 = v44;
    sub_1AE23C8AC();
    v52 = MEMORY[0x1E69E7CC0];
    sub_1ADDD322C(&qword_1ED96AC40, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E80, &qword_1AE2521E0);
    sub_1ADDCF010(&qword_1ED96AA50, &unk_1EB5B9E80, &qword_1AE2521E0);
    v38 = v46;
    v39 = v49;
    sub_1AE23D8DC();
    MEMORY[0x1B26FBF60](0, v37, v38, v36);
    _Block_release(v36);

    (*(v48 + 8))(v38, v39);
    (*(v45 + 8))(v37, v47);
    sub_1ADDCEDE0(v42, &unk_1EB5B9E70, &unk_1AE240EC0);
    sub_1ADDCEDE0(v21, &unk_1EB5B9E70, &unk_1AE240EC0);
  }

  else
  {
    sub_1ADDCEDE0(v18, &unk_1EB5B9E70, &unk_1AE240EC0);
    return sub_1ADDCEDE0(v21, &unk_1EB5B9E70, &unk_1AE240EC0);
  }
}

uint64_t sub_1ADE422E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v55 = a4;
  v54 = sub_1AE23C88C();
  v53 = *(v54 - 8);
  v7 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v54);
  v51 = v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_1AE23C8CC();
  v50 = *(v52 - 8);
  v9 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v52);
  v49 = v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E70, &unk_1AE240EC0);
  v45 = *(v11 - 8);
  v12 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v47 = v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v46 = v44 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v44 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = v44 - v19;
  if (qword_1ED96B308 != -1)
  {
    swift_once();
  }

  v48 = qword_1ED96F2F8;
  v21 = OBJC_IVAR____TtC9Coherence11ObjCVersion_version;
  swift_beginAccess();
  v58 = *(a1 + v21);
  v22 = OBJC_IVAR____TtC9Coherence11ObjCVersion_version;
  swift_beginAccess();
  v57 = *(a2 + v22);
  v23 = OBJC_IVAR____TtC9Coherence11ObjCReplica_uuid;
  swift_beginAccess();
  v24 = sub_1AE23BFEC();
  v25 = *(*(v24 - 8) + 16);
  v25(v20, a3 + v23, v24);
  v26 = *(a3 + OBJC_IVAR____TtC9Coherence11ObjCReplica_index);
  v27 = type metadata accessor for Replica();
  *&v20[*(v27 + 20)] = v26;
  v28 = *(*(v27 - 8) + 56);
  v56 = v20;
  v28();
  v29 = OBJC_IVAR____TtC9Coherence11ObjCReplica_uuid;
  v30 = v55;
  swift_beginAccess();
  v25(v17, v30 + v29, v24);
  *&v17[*(v27 + 20)] = *(v30 + OBJC_IVAR____TtC9Coherence11ObjCReplica_index);
  (v28)(v17, 0, 1, v27);
  if (*(*(&v58 + 1) + 16) || *(*(&v57 + 1) + 16))
  {
    v31 = v48;
    v44[1] = *(v48 + 40);
    v44[0] = *(&v58 + 1);
    v32 = v46;
    sub_1ADDCEE40(v56, v46, &unk_1EB5B9E70, &unk_1AE240EC0);
    v33 = v47;
    sub_1ADDCEE40(v17, v47, &unk_1EB5B9E70, &unk_1AE240EC0);
    v34 = *(v45 + 80);
    v35 = (v34 + 56) & ~v34;
    v55 = v17;
    v36 = (v12 + v34 + v35) & ~v34;
    v37 = swift_allocObject();
    v38 = v57;
    *(v37 + 16) = v58;
    *(v37 + 32) = v38;
    *(v37 + 48) = v31;
    sub_1ADDD2198(v32, v37 + v35, &unk_1EB5B9E70, &unk_1AE240EC0);
    sub_1ADDD2198(v33, v37 + v36, &unk_1EB5B9E70, &unk_1AE240EC0);
    aBlock[4] = sub_1ADE42B98;
    aBlock[5] = v37;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1ADDD2200;
    aBlock[3] = &block_descriptor_71;
    v39 = _Block_copy(aBlock);
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();

    v40 = v49;
    sub_1AE23C8AC();
    v59 = MEMORY[0x1E69E7CC0];
    sub_1ADDD322C(&qword_1ED96AC40, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E80, &qword_1AE2521E0);
    sub_1ADDCF010(&qword_1ED96AA50, &unk_1EB5B9E80, &qword_1AE2521E0);
    v41 = v51;
    v42 = v54;
    sub_1AE23D8DC();
    MEMORY[0x1B26FBF60](0, v40, v41, v39);
    _Block_release(v39);

    (*(v53 + 8))(v41, v42);
    (*(v50 + 8))(v40, v52);
    sub_1ADDCEDE0(v55, &unk_1EB5B9E70, &unk_1AE240EC0);
    sub_1ADDCEDE0(v56, &unk_1EB5B9E70, &unk_1AE240EC0);
  }

  else
  {
    sub_1ADDCEDE0(v17, &unk_1EB5B9E70, &unk_1AE240EC0);
    return sub_1ADDCEDE0(v56, &unk_1EB5B9E70, &unk_1AE240EC0);
  }
}

uint64_t sub_1ADE42A7C(uint64_t a1, void (*a2)(void))
{
  if (qword_1ED96B308 != -1)
  {
    swift_once();
  }

  v4 = (a1 + OBJC_IVAR____TtC9Coherence18ObjCRenameSequence_renameSequence);
  swift_beginAccess();
  v9 = *v4;
  v10 = *(v4 + 1);
  sub_1AE220BC8();
  a2();

  v5 = (a1 + OBJC_IVAR____TtC9Coherence18ObjCRenameSequence_renameAddedBySequence);
  swift_beginAccess();
  v7 = *v5;
  v8 = *(v5 + 1);
  sub_1AE220BC8();
  a2();
}

uint64_t sub_1ADE42B9C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E70, &unk_1AE240EC0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[6];
  v9 = v0 + ((*(v1 + 64) + v2 + v3) & ~v2);

  return sub_1ADE75D9C(v4, v5, v6, v7, v8, v0 + v3, v9);
}

uint64_t sub_1ADE42C78(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1ADE42CB8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1ADE42D98()
{
  result = qword_1EB5B9EB0;
  if (!qword_1EB5B9EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5B9EB0);
  }

  return result;
}

unint64_t sub_1ADE42DEC()
{
  result = qword_1ED967170;
  if (!qword_1ED967170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED967170);
  }

  return result;
}

unint64_t sub_1ADE42E40()
{
  result = qword_1EB5B94F0;
  if (!qword_1EB5B94F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5B94F0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CRCounter.MutatingAction(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CRCounter.MutatingAction(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t sub_1ADE42EF8(uint64_t a1, int a2)
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

uint64_t sub_1ADE42F18(uint64_t result, int a2, int a3)
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

uint64_t sub_1ADE43178()
{
  sqlite3_snapshot_free(*(v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_1ADE431D4()
{
  v0 = sub_1AE23C78C();
  __swift_allocate_value_buffer(v0, qword_1ED96F208);
  __swift_project_value_buffer(v0, qword_1ED96F208);
  return sub_1AE23C77C();
}

uint64_t sub_1ADE43248()
{
  (*(*v0 + 280))();
  v1 = v0[3];

  v2 = v0[6];

  v3 = v0[7];

  return swift_deallocClassInstance();
}

void sub_1ADE432BC()
{
  if ((*(v0 + 40) & 1) == 0)
  {
    *(v0 + 40) = 1;
    (*(*v0 + 384))();
    if (sqlite3_close(*(v0 + 32)))
    {
      sub_1AE23DA2C();

      v1 = sub_1AE23DD9C();
      MEMORY[0x1B26FB670](v1);

      MEMORY[0x1B26FB670](46, 0xE100000000000000);
      sub_1AE23DC5C();
      __break(1u);
    }
  }
}

uint64_t sub_1ADE433DC(uint64_t a1, uint64_t a2)
{
  result = sub_1ADDD1E30();
  if (!v3)
  {
    v7 = result;
    if (sqlite3_step(result) != 100)
    {
      return sqlite3_finalize(v7);
    }

    result = sqlite3_column_int(v7, 0);
    v8 = result / 0x7FFF;
    v9 = result % 0x7FFF;
    if (__OFSUB__(result, 0x7FFF * (result / 0x7FFF)))
    {
      __break(1u);
    }

    else if (result >= -1073741822)
    {
      if (result <= 1073709055)
      {
        *(v2 + 64) = v8;
        *(v2 + 66) = 0;
        if (a1)
        {
          v10 = v8;
          v11 = *(a1 + 16);
          v12 = (a1 + 32);
          while (v11)
          {
            v13 = *v12++;
            --v11;
            if (v13 == (result / 0x7FFF))
            {
              goto LABEL_10;
            }
          }

          v17 = 2;
          goto LABEL_19;
        }

LABEL_10:
        if (a2)
        {
          if (v9 >= -32768)
          {
            if (v9 < 0x8000)
            {
              v10 = v9;
              v14 = *(a2 + 16);
              v15 = (a2 + 32);
              while (v14)
              {
                v16 = *v15++;
                --v14;
                if (v16 == (result % 0x7FFF))
                {
                  return sqlite3_finalize(v7);
                }
              }

              v17 = 1;
LABEL_19:
              sub_1ADE42E40();
              swift_allocError();
              *v18 = v10;
              *(v18 + 8) = 0;
              *(v18 + 16) = v17;
              swift_willThrow();
              return sqlite3_finalize(v7);
            }

LABEL_25:
            __break(1u);
            return result;
          }

LABEL_24:
          __break(1u);
          goto LABEL_25;
        }

        return sqlite3_finalize(v7);
      }

LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    __break(1u);
    goto LABEL_23;
  }

  return result;
}

uint64_t sub_1ADE43570(uint64_t result, int a2)
{
  v3 = *(v2 + 64);
  if (*(v2 + 66) == 1)
  {
    if (result > 0)
    {
      goto LABEL_9;
    }
  }

  else if (v3 < result)
  {
    goto LABEL_9;
  }

  v4 = *(v2 + 68);
  if (*(v2 + 70))
  {
    v4 = 0;
  }

  if ((a2 & 0x10000) != 0)
  {
    if ((v4 & 0x80000000) == 0)
    {
      return result;
    }
  }

  else if (v4 >= a2)
  {
    return result;
  }

LABEL_9:
  v5 = *(v2 + 68);
  if (*(v2 + 70))
  {
    v5 = 0;
  }

  if ((a2 & 0x10000) != 0)
  {
    v6 = 0;
  }

  else
  {
    v6 = a2;
  }

  if (v6 > v5)
  {
    v5 = v6;
  }

  if (*(v2 + 66))
  {
    v3 = 0;
  }

  if (v3 <= result)
  {
    LOWORD(v3) = result;
  }

  return sub_1ADE43620(v3, v5);
}

uint64_t sub_1ADE43620(int a1, int a2)
{
  sub_1AE23DA2C();

  v6 = sub_1AE23DD9C();
  MEMORY[0x1B26FB670](v6);

  MEMORY[0x1B26FB670](59, 0xE100000000000000);
  v7 = sub_1ADDD1E30();

  if (!v3)
  {
    if (sqlite3_step(v7) == 101)
    {
      *(v2 + 64) = a1;
      *(v2 + 66) = BYTE2(a1) & 1;
      *(v2 + 68) = a2;
      *(v2 + 70) = BYTE2(a2) & 1;
    }

    else
    {
      sub_1AE23DA2C();

      result = sqlite3_errmsg(*(v2 + 32));
      if (!result)
      {
        __break(1u);
        return result;
      }

      v9 = sub_1AE23CDEC();
      MEMORY[0x1B26FB670](v9);

      MEMORY[0x1B26FB670](46, 0xE100000000000000);
      sub_1ADE47024();
      swift_allocError();
      *v10 = 0xD000000000000014;
      *(v10 + 8) = 0x80000001AE25FA00;
      *(v10 + 16) = 0;
      swift_willThrow();
    }

    return sqlite3_finalize(v7);
  }

  return result;
}

sqlite3_stmt *sub_1ADE43808()
{
  result = sub_1ADDD1E30();
  if (!v1)
  {
    v3 = result;
    do
    {
      v4 = sqlite3_step(v3);
    }

    while (v4 == 100);
    if (v4 != 101)
    {
      sub_1AE23DA2C();

      result = sqlite3_errmsg(*(v0 + 32));
      if (!result)
      {
        __break(1u);
        return result;
      }

      v5 = sub_1AE23CDEC();
      MEMORY[0x1B26FB670](v5);

      MEMORY[0x1B26FB670](46, 0xE100000000000000);
      sub_1ADE47024();
      swift_allocError();
      *v6 = 0xD000000000000011;
      *(v6 + 8) = 0x80000001AE25F9C0;
      *(v6 + 16) = 0;
      swift_willThrow();
    }

    return sqlite3_finalize(v3);
  }

  return result;
}

sqlite3_stmt *sub_1ADE43924()
{
  result = sub_1ADDD1E30();
  if (!v1)
  {
    v3 = result;
    do
    {
      v4 = sqlite3_step(v3);
    }

    while (v4 == 100);
    if (v4 == 101)
    {
      return sqlite3_finalize(v3);
    }

    else
    {
      result = sqlite3_errmsg(*(v0 + 32));
      if (result)
      {
        v5 = sub_1AE23CDEC();
        MEMORY[0x1B26FB670](v5);

        MEMORY[0x1B26FB670](46, 0xE100000000000000);
        sub_1ADE47024();
        swift_allocError();
        *v6 = 0x75746573204C4157;
        *(v6 + 8) = 0xEB00000000203A70;
        *(v6 + 16) = 0;
        swift_willThrow();
        return sqlite3_finalize(v3);
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

uint64_t sub_1ADE43B64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x1B26FB670](a1);
  v6 = sub_1ADDD1E30();
  if (v4)
  {
  }

  v8 = v6;
  v9 = sqlite3_step(v6);
  if (v9 == 5)
  {

    sub_1ADE47024();
    swift_allocError();
    *v16 = 0;
    *(v16 + 8) = 0;
    v17 = 5;
LABEL_13:
    *(v16 + 16) = v17;
    swift_willThrow();
    return sqlite3_finalize(v8);
  }

  if (v9 != 101)
  {
    result = sqlite3_errmsg(*(v3 + 32));
    if (!result)
    {
      __break(1u);
LABEL_16:
      __break(1u);
      return result;
    }

    v18 = sub_1AE23CDEC();
    v20 = v19;
    sub_1ADE47024();
    swift_allocError();
    *v16 = v18;
    *(v16 + 8) = v20;
    v17 = 2;
    goto LABEL_13;
  }

  result = sqlite3_finalize(v8);
  if (a3)
  {
    v10 = *(v3 + 32);
    v11 = *(a3 + 16);

    if (!sqlite3_snapshot_open(v10, "main", v11))
    {
    }

    result = sqlite3_errmsg(*(v3 + 32));
    if (result)
    {
      v12 = sub_1AE23CDEC();
      v14 = v13;
      sub_1ADE47024();
      swift_allocError();
      *v15 = v12;
      *(v15 + 8) = v14;
      *(v15 + 16) = 4;
      swift_willThrow();
    }

    goto LABEL_16;
  }

  return result;
}

const char *sub_1ADE43DA0(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1B26FB670](a1, a2);
  v4 = sub_1ADDD1E30();
  if (v3)
  {
  }

  v6 = v4;
  v7 = sqlite3_step(v4);
  if (v7 == 5)
  {

    sub_1ADE47024();
    swift_allocError();
    *v8 = 0;
    *(v8 + 8) = 0;
    v9 = 5;
LABEL_9:
    *(v8 + 16) = v9;
    swift_willThrow();
    return sqlite3_finalize(v6);
  }

  if (v7 == 101)
  {

    return sqlite3_finalize(v6);
  }

  result = sqlite3_errmsg(*(v2 + 32));
  if (result)
  {

    v10 = sub_1AE23CDEC();
    v12 = v11;
    sub_1ADE47024();
    swift_allocError();
    *v8 = v10;
    *(v8 + 8) = v12;
    v9 = 2;
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

const char *sub_1ADE43ECC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v9 = sub_1ADDD1E30();
  if (v4)
  {
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sqlite3_step(v9);
  if (v11 == 5)
  {
    sub_1ADE47024();
    swift_allocError();
    *v19 = 0;
    *(v19 + 8) = 0;
    v20 = 5;
LABEL_11:
    *(v19 + 16) = v20;
    swift_willThrow();
    v24 = v10;
LABEL_12:
    sqlite3_finalize(v24);
    goto LABEL_13;
  }

  if (v11 != 101)
  {
    result = sqlite3_errmsg(*(a2 + 32));
    if (!result)
    {
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v21 = sub_1AE23CDEC();
    v23 = v22;
    sub_1ADE47024();
    swift_allocError();
    *v19 = v21;
    *(v19 + 8) = v23;
    v20 = 2;
    goto LABEL_11;
  }

  sqlite3_finalize(v10);
  if (a1)
  {
    v12 = *(a2 + 32);
    v13 = *(a1 + 16);

    if (sqlite3_snapshot_open(v12, "main", v13))
    {
      result = sqlite3_errmsg(*(a2 + 32));
      if (result)
      {
        v15 = sub_1AE23CDEC();
        v17 = v16;
        sub_1ADE47024();
        swift_allocError();
        *v18 = v15;
        *(v18 + 8) = v17;
        *(v18 + 16) = 4;
        swift_willThrow();
      }

      goto LABEL_29;
    }
  }

  sub_1AE02EE88(a3, a4);
  v25 = sub_1ADDD1E30();
  v26 = sqlite3_step(v25);
  if (v26 == 5)
  {
    sub_1ADE47024();
    v28 = swift_allocError();
    *v27 = 0;
    *(v27 + 8) = 0;
    v29 = 5;
LABEL_22:
    *(v27 + 16) = v29;
    swift_willThrow();
    sqlite3_finalize(v25);
    v33 = sub_1ADDD1E30();
    v34 = sqlite3_step(v33);
    if (v34 == 5)
    {
      sub_1ADE47024();
      swift_allocError();
      *v35 = 0;
      *(v35 + 8) = 0;
      *(v35 + 16) = 5;
      swift_willThrow();
      sqlite3_finalize(v33);
    }

    if (v34 != 101)
    {
      result = sqlite3_errmsg(*(a2 + 32));
      if (result)
      {
        v36 = sub_1AE23CDEC();
        v38 = v37;
        sub_1ADE47024();
        swift_allocError();
        *v39 = v36;
        *(v39 + 8) = v38;
        *(v39 + 16) = 2;
        swift_willThrow();
        sqlite3_finalize(v33);
      }

      goto LABEL_30;
    }

    sqlite3_finalize(v33);
    swift_willThrow();
LABEL_13:
  }

  if (v26 == 101)
  {
    v24 = v25;
    goto LABEL_12;
  }

  result = sqlite3_errmsg(*(a2 + 32));
  if (result)
  {
    v30 = sub_1AE23CDEC();
    v32 = v31;
    sub_1ADE47024();
    v28 = swift_allocError();
    *v27 = v30;
    *(v27 + 8) = v32;
    v29 = 2;
    goto LABEL_22;
  }

LABEL_31:
  __break(1u);
  return result;
}

void sub_1ADE442A4(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v6 = v4;
  v11 = *(a3 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1ADDD1E30();
  if (!v5)
  {
    v51 = v11;
    v16 = v15;
    v17 = sqlite3_step(v15);
    if (v17 != 101)
    {
      if (v17 == 5)
      {
        sub_1ADE47024();
        swift_allocError();
        *v18 = 0;
        *(v18 + 8) = 0;
        *(v18 + 16) = 5;
        swift_willThrow();
        sqlite3_finalize(v16);
        return;
      }

      if (sqlite3_errmsg(*(v6 + 32)))
      {
        v26 = sub_1AE23CDEC();
        v28 = v27;
        sub_1ADE47024();
        swift_allocError();
        *v29 = v26;
        *(v29 + 8) = v28;
        *(v29 + 16) = 2;
        swift_willThrow();
        sqlite3_finalize(v16);
        return;
      }

      __break(1u);
      goto LABEL_27;
    }

    v19 = sqlite3_finalize(v16);
    if (a1)
    {
      v20 = *(v6 + 32);
      v21 = *(a1 + 16);

      if (sqlite3_snapshot_open(v20, "main", v21))
      {
        if (sqlite3_errmsg(*(v6 + 32)))
        {
          v22 = sub_1AE23CDEC();
          v24 = v23;
          sub_1ADE47024();
          swift_allocError();
          *v25 = v22;
          *(v25 + 8) = v24;
          *(v25 + 16) = 4;
          swift_willThrow();

          return;
        }

LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
        return;
      }
    }

    a2(v19);
    (*(v51 + 32))(a4, v14, a3);
    v30 = sub_1ADDD1E30();
    v34 = v30;
    v35 = sqlite3_step(v30);
    if (v35 == 5)
    {
      sub_1ADE47024();
      v41 = swift_allocError();
      *v42 = 0;
      *(v42 + 8) = 0;
      *(v42 + 16) = 5;
      v43 = v41;
      swift_willThrow();
      sqlite3_finalize(v34);
      v31 = v51;
    }

    else
    {
      if (v35 == 101)
      {
        sqlite3_finalize(v34);
        return;
      }

      v44 = sqlite3_errmsg(*(v6 + 32));
      v31 = v51;
      if (!v44)
      {
        goto LABEL_29;
      }

      v45 = sub_1AE23CDEC();
      v47 = v46;
      sub_1ADE47024();
      v48 = swift_allocError();
      *v49 = v45;
      *(v49 + 8) = v47;
      *(v49 + 16) = 2;
      v43 = v48;
      swift_willThrow();
      sqlite3_finalize(v34);
    }

    v32 = sub_1ADDD1E30();
    v33 = sqlite3_step(v32);
    if (v33 == 5)
    {
      sub_1ADE47024();
      swift_allocError();
      *v36 = 0;
      *(v36 + 8) = 0;
      v37 = 5;
    }

    else
    {
      if (v33 == 101)
      {
        sqlite3_finalize(v32);
        swift_willThrow();
        (*(v31 + 8))(a4, a3);
        return;
      }

      if (!sqlite3_errmsg(*(v6 + 32)))
      {
        goto LABEL_28;
      }

      v38 = sub_1AE23CDEC();
      v40 = v39;
      sub_1ADE47024();
      swift_allocError();
      *v36 = v38;
      *(v36 + 8) = v40;
      v37 = 2;
    }

    *(v36 + 16) = v37;
    swift_willThrow();
    sqlite3_finalize(v32);

    (*(v31 + 8))(a4, a3);
  }
}

sqlite3_stmt *sub_1ADE44764()
{
  result = sub_1ADDD1E30();
  if (!v1)
  {
    v3 = result;
    v4 = sqlite3_step(result);
    if (v4 == 101)
    {
      sqlite3_finalize(v3);
      v3 = sub_1ADDD1E30();
      v7 = sqlite3_step(v3);
      if (v7 == 101)
      {
        return sqlite3_finalize(v3);
      }

      if (v7 == 5)
      {
        goto LABEL_4;
      }

      if (sqlite3_errmsg(*(v0 + 32)))
      {
LABEL_10:
        v8 = sub_1AE23CDEC();
        v10 = v9;
        sub_1ADE47024();
        swift_allocError();
        *v5 = v8;
        *(v5 + 8) = v10;
        v6 = 2;
        goto LABEL_11;
      }

      __break(1u);
    }

    else if (v4 == 5)
    {
LABEL_4:
      sub_1ADE47024();
      swift_allocError();
      *v5 = 0;
      *(v5 + 8) = 0;
      v6 = 5;
LABEL_11:
      *(v5 + 16) = v6;
      swift_willThrow();
      return sqlite3_finalize(v3);
    }

    result = sqlite3_errmsg(*(v0 + 32));
    if (!result)
    {
      __break(1u);
      return result;
    }

    goto LABEL_10;
  }

  return result;
}

sqlite3_stmt *sub_1ADE448B4()
{
  result = sub_1ADDD1E30();
  if (!v1)
  {
    v0[16] = result;
    v0[17] = sub_1ADDD1E30();
    v0[18] = sub_1ADDD1E30();
    v0[19] = sub_1ADDD1E30();
    v0[20] = sub_1ADDD1E30();
    v0[21] = sub_1ADDD1E30();
    v0[22] = sub_1ADDD1E30();
    v0[23] = sub_1ADDD1E30();
    v0[24] = sub_1ADDD1E30();
    v0[25] = sub_1ADDD1E30();
    v0[26] = sub_1ADDD1E30();
    v0[27] = sub_1ADDD1E30();
    v0[28] = sub_1ADDD1E30();
    v0[29] = sub_1ADDD1E30();
    v0[33] = sub_1ADDD1E30();
    v0[34] = sub_1ADDD1E30();
    v0[31] = sub_1ADDD1E30();
    v0[32] = sub_1ADDD1E30();
    v0[30] = sub_1ADDD1E30();
    v0[35] = sub_1ADDD1E30();
    result = sub_1ADDD1E30();
    v0[36] = result;
  }

  return result;
}

uint64_t sub_1ADE44B80()
{
  sqlite3_finalize(v0[16]);
  sqlite3_finalize(v0[17]);
  sqlite3_finalize(v0[18]);
  sqlite3_finalize(v0[19]);
  sqlite3_finalize(v0[21]);
  sqlite3_finalize(v0[20]);
  sqlite3_finalize(v0[22]);
  sqlite3_finalize(v0[23]);
  sqlite3_finalize(v0[24]);
  sqlite3_finalize(v0[25]);
  sqlite3_finalize(v0[26]);
  sqlite3_finalize(v0[27]);
  sqlite3_finalize(v0[28]);
  sqlite3_finalize(v0[29]);
  sqlite3_finalize(v0[30]);
  sqlite3_finalize(v0[31]);
  sqlite3_finalize(v0[32]);
  sqlite3_finalize(v0[33]);
  sqlite3_finalize(v0[34]);
  sqlite3_finalize(v0[35]);
  v1 = v0[36];

  return sqlite3_finalize(v1);
}

unint64_t sub_1ADE44C48(uint64_t a1, unint64_t a2)
{
  v4 = BYTE6(a2);
  v13[2] = *MEMORY[0x1E69E9840];
  v5 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v5)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);

      v6 = v13 + v4;
      goto LABEL_9;
    }

    v7 = a1;
    v8 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:

    v3 = sub_1ADE478D0(v7, v8);

    goto LABEL_13;
  }

  if (v5 == 2)
  {
    v7 = *(a1 + 16);
    v8 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);

  v6 = v13;
LABEL_9:
  v9 = sub_1ADE45718(v13, v6);
  if (!v2)
  {
    v3 = v9;
    if (!v9)
    {
      v10 = MEMORY[0x1E69E7CC0];
      v3 = sub_1ADDDA5BC(MEMORY[0x1E69E7CC0]);
      sub_1ADDD9ECC(v10);
    }
  }

LABEL_13:
  v11 = *MEMORY[0x1E69E9840];
  return v3;
}

const void *sub_1ADE44E0C(const void *result, uint64_t a2)
{
  if (result)
  {
    v3 = a2 - result;
  }

  else
  {
    v3 = 0;
  }

  if (v3 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v3 > 0x7FFFFFFF)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  sqlite3_bind_blob(*(v2 + 240), 1, result, v3, *(v2 + 72));
  if (sqlite3_step(*(v2 + 240)) == 100)
  {
    v4 = sqlite3_column_int(*(v2 + 240), 0);
  }

  else
  {
    v4 = 0;
  }

  sqlite3_reset(*(v2 + 240));
  return v4;
}

uint64_t sub_1ADE44EB4(uint64_t a1, char **a2)
{
  v37 = *MEMORY[0x1E69E9840];
  while (sqlite3_step(*(a1 + 192)) == 100)
  {
    v5 = sqlite3_column_bytes(*(a1 + 192), 0);
    v6 = sqlite3_column_blob(*(a1 + 192), 0);
    v7 = sqlite3_column_bytes(*(a1 + 192), 1);
    v8 = sqlite3_column_blob(*(a1 + 192), 1);
    if (!v6)
    {
      __break(1u);
    }

    v9 = v8;
    if (v5)
    {
      if (v5 <= 14)
      {
        memset(__dst, 0, sizeof(__dst));
        v36 = v5;
        memcpy(__dst, v6, v5);
        v14 = *__dst;
        v2 = v2 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v36 << 16)) << 32);
        v15 = v2;
        if (!v9)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v10 = sub_1AE23BBCC();
        v11 = *(v10 + 48);
        v12 = *(v10 + 52);
        swift_allocObject();
        if (v5 == 0x7FFFFFFF)
        {
          v13 = sub_1AE23BB6C();
          sub_1AE23BE2C();
          v14 = swift_allocObject();
          *(v14 + 16) = xmmword_1AE241270;
          v15 = v13 | 0x8000000000000000;
          if (!v9)
          {
            goto LABEL_11;
          }
        }

        else
        {
          v14 = v5 << 32;
          v15 = sub_1AE23BB6C() | 0x4000000000000000;
          if (!v9)
          {
LABEL_11:
            v16 = *a2;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *a2 = v16;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v16 = sub_1ADE55498(0, *(v16 + 2) + 1, 1, v16);
              *a2 = v16;
            }

            v19 = *(v16 + 2);
            v18 = *(v16 + 3);
            if (v19 >= v18 >> 1)
            {
              v16 = sub_1ADE55498((v18 > 1), v19 + 1, 1, v16);
              *a2 = v16;
            }

            *(v16 + 2) = v19 + 1;
            v20 = &v16[16 * v19];
            *(v20 + 4) = v14;
            *(v20 + 5) = v15;
            continue;
          }
        }
      }
    }

    else
    {
      v14 = 0;
      v15 = 0xC000000000000000;
      if (!v8)
      {
        goto LABEL_11;
      }
    }

    if (v7)
    {
      if (v7 <= 14)
      {
        memset(__dst, 0, sizeof(__dst));
        v36 = v7;
        memcpy(__dst, v9, v7);
        v25 = v33 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v36 << 16)) << 32);
        v33 = v25;
        v34 = *__dst;
      }

      else
      {
        v21 = sub_1AE23BBCC();
        v22 = *(v21 + 48);
        v23 = *(v21 + 52);
        swift_allocObject();
        if (v7 == 0x7FFFFFFF)
        {
          v24 = sub_1AE23BB6C();
          sub_1AE23BE2C();
          v34 = swift_allocObject();
          *(v34 + 16) = xmmword_1AE241270;
          v25 = v24 | 0x8000000000000000;
        }

        else
        {
          v34 = v7 << 32;
          v25 = sub_1AE23BB6C() | 0x4000000000000000;
        }
      }
    }

    else
    {
      v34 = 0;
      v25 = 0xC000000000000000;
    }

    v26 = *a2;
    sub_1ADDD86D8(v34, v25);
    v27 = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v26;
    if ((v27 & 1) == 0)
    {
      v26 = sub_1ADE55498(0, *(v26 + 2) + 1, 1, v26);
      *a2 = v26;
    }

    v29 = *(v26 + 2);
    v28 = *(v26 + 3);
    if (v29 >= v28 >> 1)
    {
      v26 = sub_1ADE55498((v28 > 1), v29 + 1, 1, v26);
      *a2 = v26;
    }

    *(v26 + 2) = v29 + 1;
    v30 = &v26[16 * v29];
    *(v30 + 4) = v14;
    *(v30 + 5) = v15;
    sub_1ADDCC35C(v34, v25);
    sub_1ADDCC35C(v34, v25);
  }

  result = sqlite3_reset(*(a1 + 192));
  v32 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1ADE4528C(void (*a1)(uint64_t, unint64_t, uint64_t, unint64_t))
{
  v3 = v1;
  v28 = *MEMORY[0x1E69E9840];
  while (sqlite3_step(*(v3 + 192)) == 100)
  {
    v5 = sqlite3_column_bytes(*(v3 + 192), 0);
    v6 = sqlite3_column_blob(*(v3 + 192), 0);
    v7 = sqlite3_column_bytes(*(v3 + 192), 1);
    v8 = sqlite3_column_blob(*(v3 + 192), 1);
    if (!v6)
    {
      __break(1u);
    }

    v9 = v8;
    if (v5)
    {
      if (v5 <= 14)
      {
        memset(__dst, 0, sizeof(__dst));
        v27 = v5;
        memcpy(__dst, v6, v5);
        v14 = *__dst;
        v15 = v25 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v27 << 16)) << 32);
        v25 = v15;
        if (!v9)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v10 = sub_1AE23BBCC();
        v11 = *(v10 + 48);
        v12 = *(v10 + 52);
        swift_allocObject();
        if (v5 == 0x7FFFFFFF)
        {
          v13 = sub_1AE23BB6C();
          sub_1AE23BE2C();
          v14 = swift_allocObject();
          *(v14 + 16) = xmmword_1AE241270;
          v15 = v13 | 0x8000000000000000;
          if (!v9)
          {
            goto LABEL_11;
          }
        }

        else
        {
          v14 = v5 << 32;
          v15 = sub_1AE23BB6C() | 0x4000000000000000;
          if (!v9)
          {
LABEL_11:
            a1(v14, v15, 0, 0xF000000000000000);
            result = sub_1ADDCC35C(v14, v15);
            if (v2)
            {
              goto LABEL_25;
            }

            continue;
          }
        }
      }
    }

    else
    {
      v14 = 0;
      v15 = 0xC000000000000000;
      if (!v8)
      {
        goto LABEL_11;
      }
    }

    if (v7)
    {
      if (v7 <= 14)
      {
        memset(__dst, 0, sizeof(__dst));
        v27 = v7;
        memcpy(__dst, v9, v7);
        v21 = *__dst;
        v22 = v24 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v27 << 16)) << 32);
        v24 = v22;
      }

      else
      {
        v17 = sub_1AE23BBCC();
        v18 = *(v17 + 48);
        v19 = *(v17 + 52);
        swift_allocObject();
        if (v7 == 0x7FFFFFFF)
        {
          v20 = sub_1AE23BB6C();
          sub_1AE23BE2C();
          v21 = swift_allocObject();
          *(v21 + 16) = xmmword_1AE241270;
          v22 = v20 | 0x8000000000000000;
        }

        else
        {
          v21 = v7 << 32;
          v22 = sub_1AE23BB6C() | 0x4000000000000000;
        }
      }
    }

    else
    {
      v21 = 0;
      v22 = 0xC000000000000000;
    }

    sub_1ADDD86D8(v21, v22);
    a1(v14, v15, v21, v22);
    if (v2)
    {
      sub_1ADDCC35C(v21, v22);
      sub_1ADDCC35C(v21, v22);
      result = sub_1ADDCC35C(v14, v15);
      goto LABEL_25;
    }

    sub_1ADDCC35C(v14, v15);
    sub_1ADDCC35C(v21, v22);
    sub_1ADDCC35C(v21, v22);
  }

  result = sqlite3_reset(*(v3 + 192));
LABEL_25:
  v23 = *MEMORY[0x1E69E9840];
  return result;
}

const char *sub_1ADE45600(const char *result, uint64_t a2)
{
  if (result)
  {
    v3 = a2 - result;
  }

  else
  {
    v3 = 0;
  }

  if (v3 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v3 > 0x7FFFFFFF)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sqlite3_bind_blob(*(v2 + 288), 1, result, v3, *(v2 + 72));
  if (sqlite3_step(*(v2 + 288)) == 101)
  {
    return sqlite3_reset(*(v2 + 288));
  }

  result = sqlite3_errmsg(*(v2 + 32));
  if (result)
  {
    v4 = sub_1AE23CDEC();
    MEMORY[0x1B26FB670](v4);

    MEMORY[0x1B26FB670](46, 0xE100000000000000);
    sub_1ADE47024();
    swift_allocError();
    *v5 = 0x203A65766F6D6552;
    *(v5 + 8) = 0xE800000000000000;
    *(v5 + 16) = 2;
    return swift_willThrow();
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1ADE45718(void *a1, uint64_t a2)
{
  if (a1)
  {
    v7 = a2 - a1;
  }

  else
  {
    v7 = 0;
  }

  if (v7 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v7 > 0x7FFFFFFF)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    swift_once();
    goto LABEL_9;
  }

  v2 = v4;
  sqlite3_bind_blob(*(v3 + 264), 1, a1, v7, *(v3 + 72));
  if (sqlite3_step(*(v3 + 264)) != 100 || (v8 = sqlite3_column_bytes(*(v3 + 264), 0), (v9 = sqlite3_column_blob(*(v3 + 264), 0)) == 0))
  {
    v5 = 0;
    goto LABEL_12;
  }

  v5 = sub_1ADDD8EE0(v9, v8);
  v6 = v10;
  if (qword_1ED96AE88 != -1)
  {
    goto LABEL_17;
  }

LABEL_9:

  v11 = sub_1ADF98A98(v5, v6);
  if (v2)
  {
    return v5;
  }

  v5 = v11;
LABEL_12:
  sqlite3_reset(*(v3 + 264));
  return v5;
}

uint64_t sub_1ADE45848(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = v5;
  v17 = 1;
  type metadata accessor for CREncoder();
  swift_initStackObject();
  CREncoder.init(_:version:fileSignature:)(a1, &v17, 0, 0xF000000000000000);
  v13 = sub_1ADE6B3B8(a4, a5);
  v15 = v14;

  if (!v6)
  {
    sub_1ADDD86D8(v13, v15);

    sub_1ADE47078(a2, a3, v13, v15, v7);
    return sub_1ADDCC35C(v13, v15);
  }

  return result;
}

uint64_t sub_1ADE45948(uint64_t result, uint64_t a2, uint64_t a3, const void *a4, uint64_t a5)
{
  if (result)
  {
    v6 = a2 - result;
  }

  else
  {
    v6 = 0;
  }

  if (v6 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v6 > 0x7FFFFFFF)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(a3 + 72);
  result = sqlite3_bind_blob(*(a3 + 272), 1, result, v6, *(a3 + 72));
  if (a4)
  {
    v10 = a5 - a4;
  }

  else
  {
    v10 = 0;
  }

  if (v10 < 0xFFFFFFFF80000000)
  {
    goto LABEL_18;
  }

  if (v10 > 0x7FFFFFFF)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  sqlite3_bind_blob(*(a3 + 272), 2, a4, v10, v9);
  if (sqlite3_step(*(a3 + 272)) == 101)
  {
    return sqlite3_reset(*(a3 + 272));
  }

  sub_1AE23DA2C();

  result = sqlite3_errmsg(*(a3 + 32));
  if (!result)
  {
    goto LABEL_20;
  }

  v11 = sub_1AE23CDEC();
  MEMORY[0x1B26FB670](v11);

  MEMORY[0x1B26FB670](46, 0xE100000000000000);
  sub_1ADE47024();
  swift_allocError();
  *v12 = 0xD000000000000018;
  *(v12 + 8) = 0x80000001AE25F2D0;
  *(v12 + 16) = 2;
  return swift_willThrow();
}

uint64_t sub_1ADE45ADC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (result)
  {
    v6 = a2 - result;
  }

  else
  {
    v6 = 0;
  }

  if (v6 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v6 > 0x7FFFFFFF)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  sqlite3_bind_blob(*(a3 + 208), 1, result, v6, *(a3 + 72));
  if (sqlite3_step(*(a3 + 208)) != 100)
  {
    v11 = 0;
    v18 = 0;
    v19 = 0;
    v13 = 0xF000000000000000;
    goto LABEL_16;
  }

  v8 = sqlite3_column_bytes(*(a3 + 208), 0);
  v9 = sqlite3_column_blob(*(a3 + 208), 0);
  v10 = sqlite3_column_bytes(*(a3 + 208), 1);
  result = sqlite3_column_blob(*(a3 + 208), 1);
  if (!result)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v11 = sub_1ADDD8EE0(result, v10);
  v13 = v12;
  swift_beginAccess();
  sub_1ADE477F8(a3 + 88, &v23);
  if (v24)
  {
    v28 = v8;
    sub_1ADE23E6C(&v23, v25);
    v15 = v26;
    v14 = v27;
    __swift_project_boxed_opaque_existential_1(v25, v26);
    v16 = (*(v14 + 16))(v11, v13, v15, v14);
    if (v4)
    {
      sub_1ADDCC35C(v11, v13);
      return __swift_destroy_boxed_opaque_existential_1(v25);
    }

    v21 = v16;
    v22 = v17;
    sub_1ADDCC35C(v11, v13);
    __swift_destroy_boxed_opaque_existential_1(v25);
    v11 = v21;
    v13 = v22;
    LODWORD(v8) = v28;
    if (!v9)
    {
      goto LABEL_15;
    }
  }

  else
  {
    sub_1ADE47868(&v23);
    if (!v9)
    {
LABEL_15:
      v18 = 0;
      v19 = 0xC000000000000000;
      goto LABEL_16;
    }
  }

  v18 = sub_1ADDD8EE0(v9, v8);
  v19 = v20;
LABEL_16:
  result = sqlite3_reset(*(a3 + 208));
  *a4 = v11;
  a4[1] = v13;
  a4[2] = v18;
  a4[3] = v19;
  return result;
}

uint64_t sub_1ADE45CE4()
{
  v3 = v0;
  v60 = *MEMORY[0x1E69E9840];
  v53 = sub_1ADE51154(MEMORY[0x1E69E7CC0]);
  v4 = sub_1ADDD1E30();
  if (v1)
  {

LABEL_37:
    v46 = *MEMORY[0x1E69E9840];
    return v2;
  }

  v5 = v4;
  if (sqlite3_step(v4) == 100)
  {
    sqlite3_column_int(v5, 0);
  }

  sqlite3_finalize(v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9FE0, &qword_1AE2413E8);
  sub_1AE23CA3C();
  swift_beginAccess();
  v2 = v53;
  if (sqlite3_step(*(v0 + 216)) != 100)
  {
LABEL_36:
    sqlite3_reset(*(v3 + 216));
    goto LABEL_37;
  }

  v49 = v0;
  while (1)
  {
    v11 = sqlite3_column_bytes(*(v3 + 216), 0);
    v12 = sqlite3_column_blob(*(v3 + 216), 0);
    v13 = sqlite3_column_bytes(*(v3 + 216), 1);
    v14 = sqlite3_column_blob(*(v3 + 216), 1);
    v15 = sqlite3_column_bytes(*(v3 + 216), 2);
    v16 = sqlite3_column_blob(*(v3 + 216), 2);
    v17 = v16;
    if (v12)
    {
      v51 = sub_1ADDD8EE0(v12, v11);
      v52 = v18;
      if (!v17)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v51 = 0;
      v52 = 0xC000000000000000;
      if (!v16)
      {
        goto LABEL_40;
      }
    }

    v50 = v13;
    if (v15)
    {
      if (v15 <= 14)
      {
        memset(__dst, 0, sizeof(__dst));
        v57 = v15;
        memcpy(__dst, v17, v15);
        v23 = *__dst;
        v24 = v48 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v57 << 16)) << 32);
        v48 = v24;
      }

      else
      {
        v19 = sub_1AE23BBCC();
        v20 = *(v19 + 48);
        v21 = *(v19 + 52);
        swift_allocObject();
        if (v15 == 0x7FFFFFFF)
        {
          v22 = sub_1AE23BB6C();
          sub_1AE23BE2C();
          v23 = swift_allocObject();
          *(v23 + 16) = xmmword_1AE241270;
          v24 = v22 | 0x8000000000000000;
        }

        else
        {
          v23 = v15 << 32;
          v24 = sub_1AE23BB6C() | 0x4000000000000000;
        }
      }
    }

    else
    {
      v23 = 0;
      v24 = 0xC000000000000000;
    }

    sub_1ADE477F8(v3 + 88, &v54);
    if (v55)
    {
      sub_1ADE23E6C(&v54, __dst);
      v25 = v58;
      v26 = v59;
      __swift_project_boxed_opaque_existential_1(__dst, v58);
      v27 = (*(v26 + 16))(v23, v24, v25, v26);
      v29 = v28;
      sub_1ADDCC35C(v23, v24);
      __swift_destroy_boxed_opaque_existential_1(__dst);
      v23 = v27;
      v24 = v29;
      if (v14)
      {
        goto LABEL_22;
      }
    }

    else
    {
      sub_1ADE47868(&v54);
      if (v14)
      {
LABEL_22:
        v14 = sub_1ADDD8EE0(v14, v50);
        v31 = v30;
        goto LABEL_25;
      }
    }

    v31 = 0xC000000000000000;
LABEL_25:
    sub_1ADDD86D8(v23, v24);
    sub_1ADDD86D8(v14, v31);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *__dst = v2;
    v34 = sub_1ADDDE7CC(v51, v52);
    v35 = v2[2];
    v36 = (v33 & 1) == 0;
    v37 = v35 + v36;
    if (__OFADD__(v35, v36))
    {
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
    }

    v38 = v33;
    if (v2[3] < v37)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v2 = *__dst;
      if (v33)
      {
        goto LABEL_7;
      }
    }

    else
    {
      sub_1ADF70518();
      v2 = *__dst;
      if (v38)
      {
LABEL_7:
        v6 = (v2[7] + 32 * v34);
        v7 = *v6;
        v8 = v6[1];
        v9 = v6[2];
        v10 = v6[3];
        *v6 = v23;
        v6[1] = v24;
        v6[2] = v14;
        v6[3] = v31;
        sub_1ADDCC35C(v7, v8);
        sub_1ADDCC35C(v9, v10);
        sub_1ADDCC35C(v51, v52);
        sub_1ADDCC35C(v14, v31);
        sub_1ADDCC35C(v23, v24);
        goto LABEL_8;
      }
    }

LABEL_32:
    v2[(v34 >> 6) + 8] |= 1 << v34;
    v41 = (v2[6] + 16 * v34);
    *v41 = v51;
    v41[1] = v52;
    v42 = (v2[7] + 32 * v34);
    *v42 = v23;
    v42[1] = v24;
    v42[2] = v14;
    v42[3] = v31;
    sub_1ADDCC35C(v14, v31);
    sub_1ADDCC35C(v23, v24);
    v43 = v2[2];
    v44 = __OFADD__(v43, 1);
    v45 = v43 + 1;
    if (v44)
    {
      goto LABEL_39;
    }

    v2[2] = v45;
LABEL_8:
    v3 = v49;
    if (sqlite3_step(*(v49 + 216)) != 100)
    {
      goto LABEL_36;
    }
  }

  sub_1ADF6B238(v37, isUniquelyReferenced_nonNull_native);
  v39 = sub_1ADDDE7CC(v51, v52);
  if ((v38 & 1) == (v40 & 1))
  {
    v34 = v39;
    v2 = *__dst;
    if (v38)
    {
      goto LABEL_7;
    }

    goto LABEL_32;
  }

  result = sub_1AE23E27C();
  __break(1u);
  return result;
}

uint64_t sub_1ADE46228@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (result)
  {
    v6 = a2 - result;
  }

  else
  {
    v6 = 0;
  }

  if (v6 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (v6 > 0x7FFFFFFF)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  sqlite3_bind_blob(*(a3 + 224), 1, result, v6, *(a3 + 72));
  if (sqlite3_step(*(a3 + 224)) == 100)
  {
    v30 = sqlite3_column_bytes(*(a3 + 224), 0);
    v8 = sqlite3_column_blob(*(a3 + 224), 0);
    v31 = sqlite3_column_int(*(a3 + 224), 1);
    v9 = sqlite3_column_bytes(*(a3 + 224), 2);
    v10 = sqlite3_column_blob(*(a3 + 224), 2);
    v11 = sqlite3_column_bytes(*(a3 + 224), 3);
    result = sqlite3_column_blob(*(a3 + 224), 3);
    if (result)
    {
      v12 = sub_1ADDD8EE0(result, v11);
      v14 = v13;
      swift_beginAccess();
      sub_1ADE477F8(a3 + 88, &v32);
      if (v33)
      {
        v28 = v10;
        v29 = v9;
        sub_1ADE23E6C(&v32, v34);
        v16 = v35;
        v15 = v36;
        __swift_project_boxed_opaque_existential_1(v34, v35);
        v17 = (*(v15 + 16))(v12, v14, v16, v15);
        if (v4)
        {
          sub_1ADDCC35C(v12, v14);
          return __swift_destroy_boxed_opaque_existential_1(v34);
        }

        v24 = v17;
        v25 = v18;
        v37 = 0;
        sub_1ADDCC35C(v12, v14);
        __swift_destroy_boxed_opaque_existential_1(v34);
        v12 = v24;
        v14 = v25;
        v10 = v28;
        v9 = v29;
      }

      else
      {
        v37 = v4;
        sub_1ADE47868(&v32);
      }

      v21 = v31;
      if (v8)
      {
        v19 = sub_1ADDD8EE0(v8, v30);
        v20 = v26;
        if (v10)
        {
LABEL_16:
          v22 = sub_1ADDD8EE0(v10, v9);
          v23 = v27;
          goto LABEL_19;
        }
      }

      else
      {
        v19 = 0;
        v20 = 0xC000000000000000;
        if (v10)
        {
          goto LABEL_16;
        }
      }

      v22 = 0;
      v23 = 0xC000000000000000;
      goto LABEL_19;
    }

LABEL_23:
    __break(1u);
    return result;
  }

  v37 = v4;
  v12 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v14 = 0xF000000000000000;
LABEL_19:
  result = sqlite3_reset(*(a3 + 224));
  *a4 = v12;
  a4[1] = v14;
  a4[2] = v19;
  a4[3] = v20;
  a4[4] = v21;
  a4[5] = v22;
  a4[6] = v23;
  return result;
}

uint64_t sub_1ADE464B4(uint64_t a1, unint64_t a2)
{
  v12[3] = *MEMORY[0x1E69E9840];
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      memset(v12, 0, 14);

      v5 = v12;
      goto LABEL_9;
    }

    v6 = *(a1 + 16);
    v7 = *(a1 + 24);
  }

  else
  {
    if (!v4)
    {
      v12[0] = a1;
      LOWORD(v12[1]) = a2;
      BYTE2(v12[1]) = BYTE2(a2);
      BYTE3(v12[1]) = BYTE3(a2);
      BYTE4(v12[1]) = BYTE4(a2);
      BYTE5(v12[1]) = BYTE5(a2);

      v5 = v12 + BYTE6(a2);
LABEL_9:
      sub_1ADE4664C(v12, v5, v2, &v11);

      v8 = v11;
      goto LABEL_10;
    }

    v6 = a1;
    v7 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  v8 = sub_1ADE4799C(v6, v7, a2 & 0x3FFFFFFFFFFFFFFFLL, v2);

LABEL_10:
  v9 = *MEMORY[0x1E69E9840];
  return v8 & 1;
}

uint64_t sub_1ADE4664C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, BOOL *a4@<X8>)
{
  if (result)
  {
    v5 = a2 - result;
  }

  else
  {
    v5 = 0;
  }

  if (v5 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v5 > 0x7FFFFFFF)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  sqlite3_bind_blob(*(a3 + 200), 1, result, v5, *(a3 + 72));
  v7 = sqlite3_step(*(a3 + 200)) == 100 && sqlite3_column_int(*(a3 + 200), 0) != 0;
  result = sqlite3_reset(*(a3 + 200));
  *a4 = v7;
  return result;
}

uint64_t sub_1ADE466F8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  if (result)
  {
    v6 = a2 - result;
  }

  else
  {
    v6 = 0;
  }

  if (v6 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (v6 > 0x7FFFFFFF)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v11 = result;
  v12 = *(a3 + 72);
  sqlite3_bind_blob(*(a3 + 144), 1, result, v6, v12);
  result = sqlite3_step(*(a3 + 144));
  if (result == 100)
  {
    v13 = sqlite3_column_int(*(a3 + 144), 0);
  }

  else
  {
    if (a4 < 1)
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v13 = 0;
    *a5 = 0;
  }

  result = sqlite3_reset(*(a3 + 144));
  v14 = __OFADD__(v13, a4);
  v15 = v13 + a4;
  if (v14)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v15)
  {
    if (v15 < 1)
    {
      v16 = 0x80000001AE25F210;
      sub_1ADE42E40();
      swift_allocError();
      v18 = 0;
      v19 = 0xD000000000000014;
LABEL_21:
      *v17 = v19;
      *(v17 + 8) = v16;
      *(v17 + 16) = v18;
      return swift_willThrow();
    }

    result = sqlite3_bind_blob(*(a3 + 168), 1, v11, v6, v12);
    if (!(v15 >> 31))
    {
      sqlite3_bind_int(*(a3 + 168), 2, v15);
      if (sqlite3_step(*(a3 + 168)) == 101)
      {
        return sqlite3_reset(*(a3 + 168));
      }

      sub_1AE23DA2C();

      result = sqlite3_errmsg(*(a3 + 32));
      if (result)
      {
        v20 = sub_1AE23CDEC();
        MEMORY[0x1B26FB670](v20);

        MEMORY[0x1B26FB670](46, 0xE100000000000000);
        v19 = 0xD000000000000018;
        v16 = 0x80000001AE25F230;
        sub_1ADE47024();
        swift_allocError();
        v18 = 2;
        goto LABEL_21;
      }

LABEL_28:
      __break(1u);
      return result;
    }

LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  result = sub_1ADE46960(v11, a2);
  if (!v5)
  {
    *a5 = 1;
  }

  return result;
}

const char *sub_1ADE46960(const char *result, uint64_t a2)
{
  if (result)
  {
    v3 = a2 - result;
  }

  else
  {
    v3 = 0;
  }

  if (v3 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v3 > 0x7FFFFFFF)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  sqlite3_bind_blob(*(v2 + 176), 1, result, v3, *(v2 + 72));
  if (sqlite3_step(*(v2 + 176)) == 101)
  {
    return sqlite3_reset(*(v2 + 176));
  }

  sub_1AE23DA2C();

  strcpy(v7, "Delete Asset: ");
  HIBYTE(v7[1]) = -18;
  result = sqlite3_errmsg(*(v2 + 32));
  if (!result)
  {
    goto LABEL_13;
  }

  v4 = sub_1AE23CDEC();
  MEMORY[0x1B26FB670](v4);

  MEMORY[0x1B26FB670](46, 0xE100000000000000);
  v5 = v7[1];
  sub_1ADE47024();
  swift_allocError();
  *v6 = v7[0];
  *(v6 + 8) = v5;
  *(v6 + 16) = 2;
  return swift_willThrow();
}

uint64_t sub_1ADE46AA8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  result = sub_1ADE44E0C(a1, a2);
  if (v12)
  {
    if (a4 < 1)
    {
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    v13 = *a5;
    v14 = a5[1];
    *a5 = xmmword_1AE241280;
    sub_1ADDDDEBC(v13);
    result = 0;
  }

  v15 = result + a4;
  if (__OFADD__(result, a4))
  {
    __break(1u);
    goto LABEL_23;
  }

  if (v15)
  {
    if (v15 < 1)
    {
      sub_1ADE42E40();
      swift_allocError();
      *v20 = 0xD000000000000018;
      *(v20 + 8) = 0x80000001AE25F250;
      *(v20 + 16) = 0;
      return swift_willThrow();
    }

    if (!(v15 >> 31))
    {
      result = sqlite3_bind_int(*(a3 + 248), 1, v15);
      if (a1)
      {
        v16 = a2 - a1;
      }

      else
      {
        v16 = 0;
      }

      if (v16 >= 0xFFFFFFFF80000000)
      {
        if (v16 <= 0x7FFFFFFF)
        {
          sqlite3_bind_blob(*(a3 + 248), 2, a1, v16, *(a3 + 72));
          if (sqlite3_step(*(a3 + 248)) == 101)
          {
            return sqlite3_reset(*(a3 + 248));
          }

          sub_1AE23DA2C();

          result = sqlite3_errmsg(*(a3 + 32));
          if (result)
          {
            v21 = sub_1AE23CDEC();
            MEMORY[0x1B26FB670](v21);

            MEMORY[0x1B26FB670](46, 0xE100000000000000);
            sub_1ADE47024();
            swift_allocError();
            *v22 = 0xD00000000000001CLL;
            *(v22 + 8) = 0x80000001AE25F270;
            *(v22 + 16) = 2;
            return swift_willThrow();
          }

LABEL_27:
          __break(1u);
          return result;
        }

LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  result = sub_1ADE45718(a1, a2);
  if (!v5)
  {
    v18 = result;
    v19 = v17;
    sub_1ADE45600(a1, a2);
    v23 = *a5;
    v24 = a5[1];
    *a5 = v18;
    a5[1] = v19;
    return sub_1ADDDDEBC(v23);
  }

  return result;
}

uint64_t sub_1ADE46D0C(uint64_t result, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v5 = a5 - a4;
  if (!a4)
  {
    v5 = 0;
  }

  if (v5 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v5 > 0x7FFFFFFF)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v8 = result;
  v9 = *(a3 + 72);
  result = sqlite3_bind_blob(*(a3 + 256), 1, a4, v5, v9);
  if (v8)
  {
    v10 = a2 - v8;
  }

  else
  {
    v10 = 0;
  }

  if (v10 < 0xFFFFFFFF80000000)
  {
    goto LABEL_17;
  }

  if (v10 > 0x7FFFFFFF)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    return result;
  }

  sqlite3_bind_blob(*(a3 + 256), 2, v8, v10, v9);
  if (sqlite3_step(*(a3 + 256)) == 101)
  {
    return sqlite3_reset(*(a3 + 256));
  }

  sub_1AE23DA2C();

  result = sqlite3_errmsg(*(a3 + 32));
  if (!result)
  {
    goto LABEL_19;
  }

  v11 = sub_1AE23CDEC();
  MEMORY[0x1B26FB670](v11);

  MEMORY[0x1B26FB670](46, 0xE100000000000000);
  sub_1ADE47024();
  swift_allocError();
  *v12 = 0xD00000000000001DLL;
  *(v12 + 8) = 0x80000001AE25F1F0;
  *(v12 + 16) = 2;
  return swift_willThrow();
}

uint64_t sub_1ADE46EAC()
{
  if ((*(v0 + 40) & 1) == 0 && (*(v0 + 40) = 1, sub_1ADE44B80(), sqlite3_close(*(v0 + 32))))
  {
    sub_1AE23DA2C();

    v5 = sub_1AE23DD9C();
    MEMORY[0x1B26FB670](v5);

    MEMORY[0x1B26FB670](46, 0xE100000000000000);
    result = sub_1AE23DC5C();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 24);

    v2 = *(v0 + 48);

    v3 = *(v0 + 56);

    sub_1ADE47868(v0 + 88);
    return v0;
  }

  return result;
}

uint64_t sub_1ADE46FC8()
{
  sub_1ADE46EAC();

  return swift_deallocClassInstance();
}

unint64_t sub_1ADE47024()
{
  result = qword_1ED9670B0;
  if (!qword_1ED9670B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9670B0);
  }

  return result;
}

uint64_t sub_1ADE47078(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v8 = BYTE6(a2);
  v30[2] = *MEMORY[0x1E69E9840];
  v9 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v9)
    {
      v30[0] = a1;
      LOWORD(v30[1]) = a2;
      BYTE2(v30[1]) = BYTE2(a2);
      BYTE3(v30[1]) = BYTE3(a2);
      BYTE4(v30[1]) = BYTE4(a2);
      BYTE5(v30[1]) = BYTE5(a2);

      sub_1ADDD86D8(a3, a4);

      v10 = a3;
      v11 = a4;
      v12 = a5;
      v13 = v30 + v8;
LABEL_24:
      sub_1ADE47390(v10, v11, v12, v30, v13);
      goto LABEL_25;
    }

    v22 = a1;
    v23 = (a1 >> 32) - a1;
    if (a1 >> 32 >= a1)
    {

      sub_1ADDD86D8(a3, a4);

      sub_1ADDD86D8(a3, a4);

      v16 = sub_1AE23BB7C();
      if (!v16)
      {
        goto LABEL_16;
      }

      v24 = sub_1AE23BBAC();
      if (!__OFSUB__(v22, v24))
      {
        v16 += v22 - v24;
LABEL_16:
        v25 = sub_1AE23BB9C();
        if (v25 >= v23)
        {
          v21 = v23;
        }

        else
        {
          v21 = v25;
        }

        goto LABEL_19;
      }

LABEL_29:
      __break(1u);
    }

    __break(1u);
    goto LABEL_27;
  }

  if (v9 != 2)
  {
    memset(v30, 0, 14);

    sub_1ADDD86D8(a3, a4);

    v13 = v30;
    v10 = a3;
    v11 = a4;
    v12 = a5;
    goto LABEL_24;
  }

  v15 = *(a1 + 16);
  v14 = *(a1 + 24);

  sub_1ADDD86D8(a3, a4);

  sub_1ADDD86D8(a3, a4);

  v16 = sub_1AE23BB7C();
  if (v16)
  {
    v17 = sub_1AE23BBAC();
    if (__OFSUB__(v15, v17))
    {
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v16 += v15 - v17;
  }

  v18 = __OFSUB__(v14, v15);
  v19 = v14 - v15;
  if (v18)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v20 = sub_1AE23BB9C();
  if (v20 >= v19)
  {
    v21 = v19;
  }

  else
  {
    v21 = v20;
  }

LABEL_19:
  v26 = &v16[v21];
  if (v16)
  {
    v27 = v26;
  }

  else
  {
    v27 = 0;
  }

  sub_1ADE47390(a3, a4, a5, v16, v27);

  sub_1ADDCC35C(a3, a4);

LABEL_25:
  sub_1ADDCC35C(a3, a4);

  sub_1ADDCC35C(a3, a4);

  v29 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1ADE47390(uint64_t a1, unint64_t a2, uint64_t a3, const void *a4, uint64_t a5)
{
  v5 = a3;
  v26[2] = *MEMORY[0x1E69E9840];
  v6 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v6)
    {
      v26[0] = a1;
      LOWORD(v26[1]) = a2;
      BYTE2(v26[1]) = BYTE2(a2);
      BYTE3(v26[1]) = BYTE3(a2);
      BYTE4(v26[1]) = BYTE4(a2);
      BYTE5(v26[1]) = BYTE5(a2);
      v7 = v26 + BYTE6(a2);
      v8 = v26;
      goto LABEL_24;
    }

    v19 = a1;
    v20 = (a1 >> 32) - a1;
    if (a1 >> 32 >= a1)
    {
      v9 = a4;
      v10 = a5;
      v13 = sub_1AE23BB7C();
      if (!v13)
      {
        goto LABEL_16;
      }

      v21 = sub_1AE23BBAC();
      if (!__OFSUB__(v19, v21))
      {
        v13 += v19 - v21;
LABEL_16:
        v22 = sub_1AE23BB9C();
        if (v22 >= v20)
        {
          v18 = v20;
        }

        else
        {
          v18 = v22;
        }

        goto LABEL_19;
      }

LABEL_28:
      __break(1u);
    }

    __break(1u);
    goto LABEL_26;
  }

  if (v6 != 2)
  {
    memset(v26, 0, 14);
    v8 = v26;
    v7 = v26;
    goto LABEL_24;
  }

  v9 = a4;
  v10 = a5;
  v12 = *(a1 + 16);
  v11 = *(a1 + 24);
  v13 = sub_1AE23BB7C();
  if (v13)
  {
    v14 = sub_1AE23BBAC();
    if (__OFSUB__(v12, v14))
    {
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v13 += v12 - v14;
  }

  v15 = __OFSUB__(v11, v12);
  v16 = v11 - v12;
  if (v15)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v17 = sub_1AE23BB9C();
  if (v17 >= v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = v17;
  }

LABEL_19:
  v23 = (v18 + v13);
  if (v13)
  {
    v7 = v23;
  }

  else
  {
    v7 = 0;
  }

  v8 = v13;
  a3 = v5;
  a4 = v9;
  a5 = v10;
LABEL_24:
  sub_1ADE45948(v8, v7, a3, a4, a5);

  v25 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1ADE475A4(uint64_t a1, char **a2)
{
  v22 = *MEMORY[0x1E69E9840];
  while (sqlite3_step(*(a1 + 184)) == 100)
  {
    v4 = sqlite3_column_bytes(*(a1 + 184), 0);
    v5 = sqlite3_column_blob(*(a1 + 184), 0);
    if (!v5)
    {
      __break(1u);
    }

    if (v4)
    {
      if (v4 <= 14)
      {
        memset(__dst, 0, sizeof(__dst));
        v21 = v4;
        memcpy(__dst, v5, v4);
        v10 = *__dst;
        v11 = v19 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v21 << 16)) << 32);
        v19 = v11;
      }

      else
      {
        v6 = sub_1AE23BBCC();
        v7 = *(v6 + 48);
        v8 = *(v6 + 52);
        swift_allocObject();
        if (v4 == 0x7FFFFFFF)
        {
          v9 = sub_1AE23BB6C();
          sub_1AE23BE2C();
          v10 = swift_allocObject();
          *(v10 + 16) = xmmword_1AE241270;
          v11 = v9 | 0x8000000000000000;
        }

        else
        {
          v10 = v4 << 32;
          v11 = sub_1AE23BB6C() | 0x4000000000000000;
        }
      }
    }

    else
    {
      v10 = 0;
      v11 = 0xC000000000000000;
    }

    sub_1AE1A3880(v10, v11, __dst);
    v12 = *__dst;
    v13 = *a2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v13;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = sub_1ADE556B0(0, *(v13 + 2) + 1, 1, v13);
      *a2 = v13;
    }

    v16 = *(v13 + 2);
    v15 = *(v13 + 3);
    if (v16 >= v15 >> 1)
    {
      v13 = sub_1ADE556B0((v15 > 1), v16 + 1, 1, v13);
      *a2 = v13;
    }

    *(v13 + 2) = v16 + 1;
    *&v13[8 * v16 + 32] = v12;
    sub_1ADDCC35C(v10, v11);
  }

  result = sqlite3_reset(*(a1 + 184));
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1ADE477F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9DB0, &qword_1AE240B80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1ADE47868(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9DB0, &qword_1AE240B80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1ADE478D0(uint64_t a1, uint64_t a2)
{
  result = sub_1AE23BB7C();
  v6 = result;
  if (result)
  {
    result = sub_1AE23BBAC();
    if (__OFSUB__(a1, result))
    {
LABEL_16:
      __break(1u);
      return result;
    }

    v6 += a1 - result;
  }

  v7 = __OFSUB__(a2, a1);
  v8 = a2 - a1;
  if (v7)
  {
    __break(1u);
    goto LABEL_16;
  }

  v9 = sub_1AE23BB9C();
  if (v9 >= v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

  v11 = &v6[v10];
  if (v6)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  result = sub_1ADE45718(v6, v12);
  if (!v2 && !result)
  {
    v13 = MEMORY[0x1E69E7CC0];
    v14 = sub_1ADDDA5BC(MEMORY[0x1E69E7CC0]);
    sub_1ADDD9ECC(v13);
    return v14;
  }

  return result;
}

uint64_t sub_1ADE4799C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1AE23BB7C();
  v9 = result;
  if (result)
  {
    result = sub_1AE23BBAC();
    if (__OFSUB__(a1, result))
    {
LABEL_15:
      __break(1u);
      return result;
    }

    v9 += a1 - result;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = sub_1AE23BB9C();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  v14 = v13 + v9;
  if (v9)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  sub_1ADE4664C(v9, v15, a4, &v17);
  if (!v4)
  {
    return v17;
  }

  return v16;
}

uint64_t get_enum_tag_for_layout_string_9Coherence11SQLiteErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 7u) <= 4)
  {
    return *(a1 + 16) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1ADE47A7C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 17))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 16);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1ADE47AC4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1ADE47B08(uint64_t result, unsigned int a2)
{
  if (a2 >= 5)
  {
    *result = a2 - 5;
    *(result + 8) = 0;
    LOBYTE(a2) = 5;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_1ADE47B30()
{
  v1 = v0;
  v2 = sub_1AE23BFEC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(MEMORY[0x1E696AD60]) init];
  v8 = sub_1ADDEE524(0, &qword_1EB5BA0F8, 0x1E696AD60);
  v20[3] = v8;
  v20[0] = v7;
  if (qword_1ED96AC50 != -1)
  {
    swift_once();
  }

  sub_1ADDD0F70();
  sub_1AE23BFBC();
  if (v8)
  {
    v9 = __swift_project_boxed_opaque_existential_1(v20, v8);
    v10 = *(v8 - 8);
    v11 = *(v10 + 64);
    v12 = MEMORY[0x1EEE9AC00](v9);
    v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v14, v12);
    v15 = sub_1AE23DFFC();
    (*(v10 + 8))(v14, v8);
    __swift_destroy_boxed_opaque_existential_1(v20);
  }

  else
  {
    v15 = 0;
  }

  v16 = objc_allocWithZone(_TtC9Coherence19CRTTMergeableString);
  v17 = sub_1AE23BF7C();
  v18 = [v16 initWithStorage:v15 uuid:{v17, v20[0]}];
  swift_unknownObjectRelease();

  (*(v3 + 8))(v6, v2);
  *(v1 + 16) = v18;
  return v1;
}

uint64_t CRString.copy(renamingReferences:)@<X0>(uint64_t *a1@<X8>)
{
  v3 = [*(*v1 + 16) attributedString];
  objc_opt_self();
  swift_dynamicCastObjCClassUnconditional();
  v4 = sub_1AE23CD0C();
  v6 = v5;
  swift_unknownObjectRelease();
  type metadata accessor for CRStringRef();
  v7 = swift_allocObject();
  sub_1ADE47B30();
  *a1 = v7;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  CRString.insert(contentsOf:at:)(v8, 0);
}

uint64_t CRString.string.getter()
{
  v1 = [*(*v0 + 16) attributedString];
  objc_opt_self();
  swift_dynamicCastObjCClassUnconditional();
  v2 = sub_1AE23CD0C();
  swift_unknownObjectRelease();
  return v2;
}

uint64_t CRString.copy(renamingReferences:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  if (!a1)
  {
    sub_1ADE51288(MEMORY[0x1E69E7CC0]);
  }

  v5 = [*(v4 + 16) attributedString];
  objc_opt_self();
  swift_dynamicCastObjCClassUnconditional();
  v6 = sub_1AE23CD0C();
  v8 = v7;
  swift_unknownObjectRelease();
  type metadata accessor for CRStringRef();
  v9 = swift_allocObject();
  sub_1ADE47B30();
  *a2 = v9;
  v10._countAndFlagsBits = v6;
  v10._object = v8;
  CRString.insert(contentsOf:at:)(v10, 0);
}

void CRString.init(_:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for CRStringRef();
  v4 = swift_allocObject();
  sub_1ADE47B30();

  *a2 = v4;
}

uint64_t CRString.init()@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CRStringRef();
  v2 = swift_allocObject();
  result = sub_1ADE47B30();
  *a1 = v2;
  return result;
}

uint64_t CRString.init(_:string:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  type metadata accessor for CRStringRef();
  v8 = swift_allocObject();
  sub_1ADE47B30();
  v9._countAndFlagsBits = a2;
  v9._object = a3;
  CRString.insert(contentsOf:at:)(v9, 0);

  *a4 = v8;
  return result;
}

uint64_t sub_1ADE48170@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for CRStringRef();
  v6 = swift_allocObject();
  sub_1ADE47B30();
  *a3 = v6;
  v7._countAndFlagsBits = a1;
  v7._object = a2;
  CRString.insert(contentsOf:at:)(v7, 0);
}

uint64_t CRString.init(defaultState:)@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CRStringRef();
  v2 = swift_allocObject();
  result = sub_1ADE47B30();
  *a1 = v2;
  return result;
}

Swift::Void __swiftcall CRString.insert(contentsOf:at:)(Swift::String contentsOf, Swift::Int at)
{
  v4 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = *v2;
    type metadata accessor for CRStringRef();
    v6 = swift_allocObject();
    [*(v5 + 16) copy];
    sub_1AE23D83C();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9FE8, &qword_1AE241500);
    swift_dynamicCast();
    *(v6 + 16) = aBlock[6];
    v7 = *v2;

    *v2 = v6;
  }

  v8 = objc_allocWithZone(MEMORY[0x1E696AEC0]);
  v9 = sub_1AE23CCDC();
  v10 = [v8 initWithString_];

  v11 = *(*v2 + 16);
  v12 = [v10 length];
  v13 = swift_allocObject();
  *(v13 + 16) = v10;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1ADE522B0;
  *(v14 + 24) = v13;
  aBlock[4] = sub_1ADE0F04C;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1ADE0EEE0;
  aBlock[3] = &block_descriptor_0;
  v15 = _Block_copy(aBlock);
  v16 = v10;

  [v11 insertAtIndex:at length:v12 getStorage:v15];

  _Block_release(v15);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

Swift::Void __swiftcall CRString.append(_:)(Swift::String a1)
{
  v2 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = *v1;
    type metadata accessor for CRStringRef();
    v4 = swift_allocObject();
    [*(v3 + 16) copy];
    sub_1AE23D83C();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9FE8, &qword_1AE241500);
    swift_dynamicCast();
    *(v4 + 16) = aBlock[6];
    v5 = *v1;

    *v1 = v4;
  }

  v6 = objc_allocWithZone(MEMORY[0x1E696AEC0]);
  v7 = sub_1AE23CCDC();
  v8 = [v6 initWithString_];

  v9 = *(*v1 + 16);
  v10 = [v9 length];
  v11 = [v8 length];
  v12 = swift_allocObject();
  *(v12 + 16) = v8;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1ADE513A4;
  *(v13 + 24) = v12;
  aBlock[4] = sub_1ADE522A8;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1ADE0EEE0;
  aBlock[3] = &block_descriptor_13;
  v14 = _Block_copy(aBlock);
  v15 = v8;

  [v9 insertAtIndex:v10 length:v11 getStorage:v14];

  _Block_release(v14);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if (v9)
  {
    __break(1u);
  }
}

void CRString.removeSubrange(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v2;
  if (isUniquelyReferenced_nonNull_native)
  {
    v8 = *(v7 + 16);
  }

  else
  {
    type metadata accessor for CRStringRef();
    v9 = swift_allocObject();
    [*(v7 + 16) copy];
    sub_1AE23D83C();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9FE8, &qword_1AE241500);
    swift_dynamicCast();
    v8 = v14;
    *(v9 + 16) = v14;
    v10 = *v2;

    *v2 = v9;
  }

  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
  }

  else
  {
    v12 = v11 + 1;
    if (!__OFADD__(v11, 1))
    {
      v13 = v8;
      [v13 removeObjectsInRange_];

      return;
    }
  }

  __break(1u);
}

{
  v3 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
  }

  else if (v3 >= 1)
  {
    v5 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *v2;
    if (isUniquelyReferenced_nonNull_native)
    {
      v8 = *(v7 + 16);
    }

    else
    {
      type metadata accessor for CRStringRef();
      v9 = swift_allocObject();
      [*(v7 + 16) copy];
      sub_1AE23D83C();
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9FE8, &qword_1AE241500);
      swift_dynamicCast();
      v8 = v12;
      *(v9 + 16) = v12;
      v10 = *v2;

      *v2 = v9;
    }

    v11 = v8;
    [v11 removeObjectsInRange_];
  }
}

void CRString.merge(_:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  if (*v2 == *a1)
  {
    if (qword_1ED9670C0 != -1)
    {
      swift_once();
    }

    v8 = &word_1ED96F220;
  }

  else
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *v2;
    if (isUniquelyReferenced_nonNull_native)
    {
      v7 = *(v6 + 16);
    }

    else
    {
      type metadata accessor for CRStringRef();
      v9 = swift_allocObject();
      [*(v6 + 16) copy];
      sub_1AE23D83C();
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9FE8, &qword_1AE241500);
      swift_dynamicCast();
      v7 = v21;
      *(v9 + 16) = v21;
      v10 = *v2;

      *v2 = v9;
    }

    v11 = *(v4 + 16);
    v12 = qword_1EB5B96D8;
    v13 = v7;
    v14 = v11;
    if (v12 != -1)
    {
      swift_once();
    }

    os_unfair_lock_lock(&dword_1EB5D7500);
    v15 = byte_1EB5D7504;
    os_unfair_lock_unlock(&dword_1EB5D7500);
    if (v15 == 1)
    {
      if (qword_1EB5B9940 != -1)
      {
        swift_once();
      }

      v16 = qword_1EB5B9948;
    }

    else
    {
      v16 = 0;
    }

    v17 = [v13 mergeWithString:v14 optimized:1 suggestedContext:v16];

    if (v17 == 2)
    {
      v18 = *v2;

      *v2 = v4;
      if (qword_1EB5B9910 != -1)
      {
        swift_once();
      }

      v8 = &word_1EB5D750B;
    }

    else
    {
      if (qword_1EB5B9528 != -1)
      {
        swift_once();
      }

      v8 = &word_1EB5D74C0;
    }
  }

  v19 = *v8;
  v20 = *(v8 + 2);
  *a2 = v19;
  *(a2 + 2) = v20;
}

id CRString.count.getter()
{
  v1 = [objc_msgSend(*(*v0 + 16) attributedString)];
  swift_unknownObjectRelease();
  return v1;
}

id sub_1ADE48DF0(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;
  v4 = [*(*v1 + 16) attributedString];
  objc_opt_self();
  swift_dynamicCastObjCClassUnconditional();
  v5 = sub_1AE23CD0C();
  v7 = v6;
  swift_unknownObjectRelease();
  v8 = [*(v2 + 16) attributedString];
  objc_opt_self();
  swift_dynamicCastObjCClassUnconditional();
  v9 = sub_1AE23CD0C();
  v11 = v10;
  swift_unknownObjectRelease();
  if (v5 == v9 && v7 == v11)
  {

    return [*(v3 + 16) graphIsEqual_];
  }

  v13 = sub_1AE23E00C();

  result = 0;
  if (v13)
  {
    return [*(v3 + 16) graphIsEqual_];
  }

  return result;
}

unint64_t static CRString.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v4[0] = *a2;
  v4[1] = v2;
  return sub_1ADE48DF0(v4) & 1;
}

id CRString.finalizeTimestamps(_:)(uint64_t a1)
{
  result = [*(*v1 + 16) needToFinalizeTimestamps];
  if (result)
  {
    v4 = *v1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *v1;
    if (isUniquelyReferenced_nonNull_native)
    {
      v7 = *(v6 + 16);
    }

    else
    {
      type metadata accessor for CRStringRef();
      v8 = swift_allocObject();
      [*(v6 + 16) copy];
      sub_1AE23D83C();
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9FE8, &qword_1AE241500);
      swift_dynamicCast();
      v7 = v10;
      *(v8 + 16) = v10;
      v9 = *v1;

      *v1 = v8;
    }

    return [v7 finalizeTimestamps_];
  }

  return result;
}

uint64_t *CRString.actionUndoingDifference(from:)@<X0>(uint64_t *result@<X0>, uint64_t **a2@<X8>)
{
  v4 = *result;
  v5 = *v2;
  if (v5 == *result)
  {
    goto LABEL_6;
  }

  if ([*(v5 + 16) hasDeltaTo:*(v4 + 16) compareElements:0])
  {
    v7 = v4;
    v8 = v5;

    CRString.merge(_:)(&v7, &v6);
    v6 = v4;
    v7 = v8;
    CRString.actionUndoingDifference(from:)(&v6);
  }

  result = [*(v5 + 16) undoCommandToChangeFrom:*(v4 + 16) unedited:0];
  if (!result)
  {
LABEL_6:
    *a2 = 0;
  }

  else
  {
    *a2 = result;
  }

  return result;
}

uint64_t *CRString.apply(_:)(uint64_t *result)
{
  if (*result)
  {
    v2 = *result;
    swift_unknownObjectRetain();
    v3 = *v1;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = *v1;
      type metadata accessor for CRStringRef();
      v5 = swift_allocObject();
      [*(v4 + 16) copy];
      sub_1AE23D83C();
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9FE8, &qword_1AE241500);
      swift_dynamicCast();
      *(v5 + 16) = v8;
      v6 = *v1;

      *v1 = v5;
    }

    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (v7)
    {
      [v7 applyToString_];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

id CRString.hasDelta(from:)(uint64_t a1)
{
  if (*v1 == *a1)
  {
    return 0;
  }

  else
  {
    return [*(*a1 + 16) hasDeltaTo:*(*v1 + 16) compareElements:0];
  }
}

uint64_t CRString.delta(_:from:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v8 = *a2;
  v9 = *v3;

  CRString.finalizeTimestamps(_:)(a1);
  CRString.finalizeTimestamps(_:)(a1);
  v6 = [objc_allocWithZone(_TtC9Coherence24CRTTMergeableStringDelta) initWithDeltasTo:*(v9 + 16) from:*(v8 + 16) compareElements:0];

  *a3 = v6;
  return result;
}

Swift::Bool __swiftcall CRString.merge(delta:)(Coherence::CRString::Partial *delta)
{
  isa = delta->delta.super.isa;
  v3 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *v1;
  if (isUniquelyReferenced_nonNull_native)
  {
    v6 = *(v5 + 16);
  }

  else
  {
    type metadata accessor for CRStringRef();
    v7 = swift_allocObject();
    [*(v5 + 16) copy];
    sub_1AE23D83C();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9FE8, &qword_1AE241500);
    swift_dynamicCast();
    v6 = v10;
    *(v7 + 16) = v10;
    v8 = *v1;

    *v1 = v7;
  }

  return [v6 deltaMerge_];
}

unint64_t sub_1ADE494B4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v4[0] = *a2;
  v4[1] = v2;
  return sub_1ADE48DF0(v4) & 1;
}

uint64_t sub_1ADE494F4@<X0>(uint64_t *a1@<X8>)
{
  v3 = [*(*v1 + 16) attributedString];
  objc_opt_self();
  swift_dynamicCastObjCClassUnconditional();
  v4 = sub_1AE23CD0C();
  v6 = v5;
  swift_unknownObjectRelease();
  type metadata accessor for CRStringRef();
  v7 = swift_allocObject();
  sub_1ADE47B30();
  *a1 = v7;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  CRString.insert(contentsOf:at:)(v8, 0);
}

uint64_t *CRString.observableDifference(from:with:)@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *result;
  v6 = *v3;
  if (*v3 != *result)
  {
    if ([*(v6 + 16) hasDeltaTo:*(v5 + 16) compareElements:0])
    {
      v17 = v5;
      aBlock[0] = v6;

      CRString.merge(_:)(&v17, &v16);
      v16 = v5;
      v17 = aBlock[0];
      CRString.observableDifference(from:with:)(&v16, a2);
    }

    v8 = swift_allocObject();
    *(v8 + 16) = MEMORY[0x1E69E7CC0];
    v9 = (v8 + 16);
    v10 = *(v5 + 16);
    v11 = *(v6 + 16);
    aBlock[4] = sub_1ADE51408;
    aBlock[5] = v8;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1ADE4EFB0;
    aBlock[3] = &block_descriptor_19;
    v12 = _Block_copy(aBlock);
    v13 = v10;
    v14 = v11;

    [v13 deltaTo:v14 edited:v12 unedited:0];
    _Block_release(v12);

    swift_beginAccess();
    v15 = *v9;
    if (*(v15 + 16))
    {

      *a3 = v15;
      return result;
    }
  }

  *a3 = 0;
  return result;
}

uint64_t CRString.init(from:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 64))
  {
    type metadata accessor for CRDecoder.CRDTContainer();
    inited = swift_initStackObject();
    *(inited + 16) = a1;
    *(inited + 24) = 0;
    *(inited + 32) = 1;
    sub_1ADE64F48(&v9);
    swift_setDeallocating();
    v6 = *(inited + 16);

    if (!v2)
    {
      *a2 = v9;
    }
  }

  else
  {
    sub_1ADE42E40();
    swift_allocError();
    *v8 = 0xD000000000000014;
    *(v8 + 8) = 0x80000001AE25FB50;
    *(v8 + 16) = 0;
    swift_willThrow();
  }

  return result;
}

uint64_t sub_1ADE49904()
{
  v2 = *v0;
  result = sub_1ADDFCC74();
  if (!v1)
  {
    v4 = *(result + 16);
    v5 = result;

    v6 = sub_1ADE50584(v4);
    swift_beginAccess();
    v7 = *(v5 + 24);
    *(v5 + 24) = v6;
  }

  return result;
}

uint64_t CRString.encode(to:)()
{
  v2 = *v0;
  result = sub_1ADDFCC74();
  if (!v1)
  {
    v4 = *(result + 16);
    v5 = result;

    v6 = sub_1ADE50584(v4);
    swift_beginAccess();
    v7 = *(v5 + 24);
    *(v5 + 24) = v6;
  }

  return result;
}

{
  v1 = [*(*v0 + 16) attributedString];
  objc_opt_self();
  swift_dynamicCastObjCClassUnconditional();
  sub_1AE23CD0C();
  swift_unknownObjectRelease();
  sub_1AE23CDDC();
}

uint64_t sub_1ADE49A44@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CRStringRef();
  v2 = swift_allocObject();
  result = sub_1ADE47B30();
  *a1 = v2;
  return result;
}

uint64_t CRString.ObservableDifference.Edit.range.getter()
{
  result = *v0;
  v2 = v0[1];
  return result;
}

uint64_t sub_1ADE49B64(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    v11 = 0;
    return v11 & 1;
  }

  if (!v2 || result == a2)
  {
    v11 = 1;
    return v11 & 1;
  }

  v3 = (a2 + 64);
  v4 = (result + 64);
  while (1)
  {
    v5 = *(v4 - 3);
    v6 = *(v4 - 2);
    v7 = *(v4 - 1);
    v8 = *v4;
    v16[0] = *(v4 - 4);
    v16[1] = v5;
    v16[2] = v6;
    v16[3] = v7;
    v16[4] = v8;
    if (!v2)
    {
      break;
    }

    v12 = v2;
    v9 = *(v3 - 3);
    v13 = *(v3 - 1);
    v14 = *(v3 - 2);
    v10 = *v3;
    v17[0] = *(v3 - 4);
    v17[1] = v9;
    v17[2] = v14;
    v17[3] = v13;
    v17[4] = v10;

    sub_1ADE42C78(v6);

    sub_1ADE42C78(v14);

    v15 = sub_1AE1C0B68(v16, v17);

    sub_1ADE42CB8(v14);

    sub_1ADE42CB8(v6);

    v11 = v15;
    if (v15)
    {
      v4 += 5;
      v3 += 5;
      v2 = v12 - 1;
      if (v12 != 1)
      {
        continue;
      }
    }

    return v11 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1ADE49CF0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (a2 + 48);
  v4 = (result + 48);
  while (v2)
  {
    v5 = *(v3 - 2);
    v6 = *(v3 - 1);
    v8 = *v3;
    v3 += 3;
    v7 = v8;
    result = *(v4 - 2) == v5 && *(v4 - 1) == v6 && *v4 == v7;
    v11 = result != 1 || v2-- == 1;
    v4 += 3;
    if (v11)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1ADE49DA4(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

void sub_1ADE49E00(uint64_t a1, uint64_t a2)
{
  v71 = sub_1AE23C32C();
  v4 = *(*(v71 - 8) + 64);
  MEMORY[0x1EEE9AC00](v71);
  v6 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v61 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16) || !v11 || a1 == a2)
  {
    return;
  }

  v12 = 0;
  v62 = 0;
  v63 = v11;
  v65 = a1 + 32;
  v64 = a2 + 32;
  v70 = (v8 + 8);
  while (1)
  {
    if (v12 == v11)
    {
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
      return;
    }

    v13 = (v65 + 24 * v12);
    v14 = (v64 + 24 * v12);
    v15 = *v14;
    v72 = *v13;
    v73 = v15;
    v16 = *(v72 + 16);
    if (v16 != *(v15 + 16))
    {
      return;
    }

    v17 = v13[1];
    v18 = v13[2];
    v19 = v14[1];
    v20 = v14[2];
    v68 = v19;
    v69 = v17;
    v66 = v12;
    v67 = v18;
    if (v16)
    {
      break;
    }

    sub_1ADDD86D8(v17, v18);

    v23 = v20;
    sub_1ADDD86D8(v19, v20);
LABEL_22:
    v39 = v67;
    v40 = v67 >> 62;
    v41 = v23;
    v42 = v23 >> 62;
    if (v67 >> 62 == 3)
    {
      v43 = v69;
      if (v69)
      {
        v44 = 0;
      }

      else
      {
        v44 = v67 == 0xC000000000000000;
      }

      if (v44 && v23 >> 62 == 3)
      {
        v47 = v68;
        if (v68)
        {
          v48 = 0;
        }

        else
        {
          v48 = v23 == 0xC000000000000000;
        }

        if (v48)
        {
          goto LABEL_56;
        }

        v46 = 0;
      }

      else
      {
        v46 = 0;
        v47 = v68;
      }
    }

    else
    {
      v43 = v69;
      if (v40)
      {
        if (v40 == 1)
        {
          LODWORD(v46) = HIDWORD(v69) - v69;
          v47 = v68;
          if (__OFSUB__(HIDWORD(v69), v69))
          {
            goto LABEL_71;
          }

          v46 = v46;
        }

        else
        {
          v50 = *(v69 + 16);
          v49 = *(v69 + 24);
          v51 = __OFSUB__(v49, v50);
          v46 = v49 - v50;
          v47 = v68;
          if (v51)
          {
            goto LABEL_70;
          }
        }
      }

      else
      {
        v46 = BYTE6(v67);
        v47 = v68;
      }
    }

    if (v42 <= 1)
    {
      if (v42)
      {
        LODWORD(v52) = HIDWORD(v47) - v47;
        if (__OFSUB__(HIDWORD(v47), v47))
        {
          goto LABEL_69;
        }

        v52 = v52;
      }

      else
      {
        v52 = BYTE6(v23);
      }

LABEL_51:
      if (v46 != v52)
      {
        goto LABEL_66;
      }

      if (v46 >= 1)
      {
        sub_1ADDD86D8(v47, v23);
        v55 = v23;
        v56 = v62;
        if ((sub_1ADDD1544(v43, v39, v47, v55) & 1) == 0)
        {
          goto LABEL_66;
        }

        v62 = v56;
      }

      goto LABEL_56;
    }

    if (v42 == 2)
    {
      v54 = *(v47 + 16);
      v53 = *(v47 + 24);
      v51 = __OFSUB__(v53, v54);
      v52 = v53 - v54;
      if (v51)
      {
        goto LABEL_68;
      }

      goto LABEL_51;
    }

    if (v46)
    {
LABEL_66:

      goto LABEL_64;
    }

LABEL_56:
    sub_1AE23C31C();
    sub_1AE23C31C();
    sub_1ADE51EAC();
    v57 = v71;
    v58 = sub_1AE23CCBC();
    v59 = *v70;
    (*v70)(v6, v57);
    v59(v10, v57);

    sub_1ADDCC35C(v47, v41);

    sub_1ADDCC35C(v43, v39);
    if (v58)
    {
      v12 = v66 + 1;
      v11 = v63;
      if (v66 + 1 != v63)
      {
        continue;
      }
    }

    return;
  }

  v21 = v72;

  sub_1ADDD86D8(v17, v18);
  v22 = v73;

  v23 = v20;
  sub_1ADDD86D8(v19, v20);
  if (v21 == v22)
  {
    goto LABEL_22;
  }

  v24 = 32;
  while (1)
  {
    v25 = *(v72 + v24);
    v26 = *(v73 + v24);
    if (v25 == v26)
    {
      v33 = *(v72 + v24);

      goto LABEL_18;
    }

    v27 = v10;
    v28 = v6;
    v29 = *(v25 + 16);
    v30 = *(v26 + 16);
    v31 = v30 & 0xF000000000000007;
    if ((~v29 & 0xF000000000000007) == 0)
    {
      if (v31 != 0xF000000000000007)
      {
        break;
      }

      v32 = *(v72 + v24);
      swift_retain_n();
      swift_retain_n();
      v6 = v28;
      goto LABEL_17;
    }

    if (v31 == 0xF000000000000007)
    {
      break;
    }

    v34 = *(v72 + v24);
    swift_retain_n();
    swift_retain_n();
    sub_1ADE51B2C(v30);
    sub_1ADE51B2C(v29);
    v35 = sub_1AE1B7AA8(v29, v30);

    sub_1ADE51B48(v30);
    sub_1ADE51B48(v29);
    v6 = v28;
    if ((v35 & 1) == 0)
    {
      goto LABEL_62;
    }

LABEL_17:

    v10 = v27;
LABEL_18:
    sub_1AE23C31C();
    sub_1AE23C31C();
    sub_1ADE51EAC();
    v36 = v71;
    v37 = sub_1AE23CCBC();

    v38 = *v70;
    (*v70)(v6, v36);
    v38(v10, v36);
    if ((v37 & 1) == 0)
    {

      goto LABEL_63;
    }

    v24 += 8;
    if (!--v16)
    {
      goto LABEL_22;
    }
  }

  v60 = *(v72 + v24);
  swift_retain_n();
  swift_retain_n();
LABEL_62:

LABEL_63:
  v47 = v68;
  v43 = v69;
  v39 = v67;
  v41 = v23;
LABEL_64:
  sub_1ADDCC35C(v47, v41);

  sub_1ADDCC35C(v43, v39);
}

uint64_t sub_1ADE4A3AC(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

void sub_1ADE4A408(int64x2_t *a1, int64x2_t *a2)
{
  v4 = sub_1AE23C32C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19 - v10;
  v12 = a1[1].i64[0];
  if (v12 == a2[1].i64[0] && v12 && a1 != a2)
  {
    v13 = a1 + 2;
    v14 = a2 + 2;
    v15 = (v9 + 8);
    do
    {
      v16 = vmovn_s64(vceqq_s64(*v13, *v14));
      if ((v16.i32[0] & v16.i32[1] & 1) == 0)
      {
        break;
      }

      sub_1AE23C31C();
      sub_1AE23C31C();
      sub_1ADE51EAC();
      v17 = sub_1AE23CCBC();
      v18 = *v15;
      (*v15)(v7, v4);
      v18(v11, v4);
      if ((v17 & 1) == 0)
      {
        break;
      }

      ++v13;
      ++v14;
      --v12;
    }

    while (v12);
  }
}

void sub_1ADE4A5B0(uint64_t a1, uint64_t a2)
{
  v47 = sub_1AE23C32C();
  v4 = *(*(v47 - 8) + 64);
  MEMORY[0x1EEE9AC00](v47);
  v48 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v46 = &v39 - v8;
  v9 = *(a1 + 16);
  if (v9 != *(a2 + 16) || !v9 || a1 == a2)
  {
    return;
  }

  v40 = 0;
  v41 = (v7 + 8);
  v10 = (a1 + 48);
  v11 = (a2 + 48);
  while (v9)
  {
    v12 = *(v10 - 2);
    v13 = *(v10 - 1);
    v14 = *v10;
    v15 = *(v11 - 2);
    v16 = *(v11 - 1);
    v17 = *v11;
    v44 = v10;
    v45 = v9;
    v43 = v11;
    v49 = v17;
    if (v14)
    {
      if (!v17)
      {
        return;
      }

      sub_1ADDD86D8(v12, v13);

      sub_1ADDD86D8(v15, v16);
      swift_bridgeObjectRetain_n();

      sub_1ADE4E9A0(v18, v17);
      if ((v19 & 1) == 0)
      {

LABEL_44:
        sub_1ADDCC35C(v15, v16);

        sub_1ADDCC35C(v12, v13);

        return;
      }

      v20 = v46;
      sub_1AE23C31C();
      v21 = v48;
      sub_1AE23C31C();
      sub_1ADE51EAC();
      v22 = v47;
      v42 = sub_1AE23CCBC();
      v23 = *v41;
      (*v41)(v21, v22);
      v23(v20, v22);

      if ((v42 & 1) == 0)
      {
        goto LABEL_44;
      }
    }

    else
    {
      if (v17)
      {
        return;
      }

      sub_1ADDD86D8(v12, v13);
      sub_1ADDD86D8(v15, v16);
    }

    v24 = v13 >> 62;
    v25 = v16 >> 62;
    if (v13 >> 62 == 3)
    {
      v26 = 0;
      if (!v12 && v13 == 0xC000000000000000 && v16 >> 62 == 3)
      {
        v26 = 0;
        if (!v15 && v16 == 0xC000000000000000)
        {
          goto LABEL_40;
        }
      }
    }

    else if (v24)
    {
      if (v24 == 1)
      {
        LODWORD(v26) = HIDWORD(v12) - v12;
        if (__OFSUB__(HIDWORD(v12), v12))
        {
          goto LABEL_50;
        }

        v26 = v26;
      }

      else
      {
        v28 = *(v12 + 16);
        v27 = *(v12 + 24);
        v29 = __OFSUB__(v27, v28);
        v26 = v27 - v28;
        if (v29)
        {
          goto LABEL_49;
        }
      }
    }

    else
    {
      v26 = BYTE6(v13);
    }

    if (v25 <= 1)
    {
      if (v25)
      {
        LODWORD(v30) = HIDWORD(v15) - v15;
        if (__OFSUB__(HIDWORD(v15), v15))
        {
          goto LABEL_48;
        }

        v30 = v30;
      }

      else
      {
        v30 = BYTE6(v16);
      }

LABEL_35:
      if (v26 != v30)
      {
        goto LABEL_44;
      }

      if (v26 >= 1)
      {
        sub_1ADDD86D8(v15, v16);
        v33 = v40;
        if ((sub_1ADDD1544(v12, v13, v15, v16) & 1) == 0)
        {
          goto LABEL_44;
        }

        v40 = v33;
      }

      goto LABEL_40;
    }

    if (v25 == 2)
    {
      v32 = *(v15 + 16);
      v31 = *(v15 + 24);
      v29 = __OFSUB__(v31, v32);
      v30 = v31 - v32;
      if (v29)
      {
        goto LABEL_47;
      }

      goto LABEL_35;
    }

    if (v26)
    {
      goto LABEL_44;
    }

LABEL_40:
    v34 = v46;
    sub_1AE23C31C();
    v35 = v48;
    sub_1AE23C31C();
    sub_1ADE51EAC();
    v36 = v16;
    v37 = v47;
    v42 = sub_1AE23CCBC();
    v38 = *v41;
    (*v41)(v35, v37);
    v38(v34, v37);
    sub_1ADDCC35C(v15, v36);

    sub_1ADDCC35C(v12, v13);

    if (v42)
    {
      v10 = v44 + 3;
      v11 = v43 + 3;
      v9 = v45 - 1;
      if (v45 != 1)
      {
        continue;
      }
    }

    return;
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
}

void sub_1ADE4AA04(uint64_t a1, uint64_t a2)
{
  v60 = sub_1AE23C32C();
  v4 = *(*(v60 - 8) + 64);
  MEMORY[0x1EEE9AC00](v60);
  v61 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = *(a1 + 16);
  if (v9 != *(a2 + 16) || !v9 || a1 == a2)
  {
    return;
  }

  v10 = 0;
  v52 = 0;
  v55 = a2 + 32;
  v56 = a1 + 32;
  v57 = (v7 + 8);
  v62 = &v52 - v8;
  v54 = v9;
  while (v10 != v9)
  {
    v11 = (v56 + 32 * v10);
    v13 = *v11;
    v12 = v11[1];
    v14 = v11[2];
    v63 = v11[3];
    v64 = v12;
    v15 = (v55 + 32 * v10);
    v16 = *v15;
    v17 = v15[1];
    v18 = v15[2];
    v19 = v15[3];
    if (v14)
    {
      if (!v18)
      {
        return;
      }

      v20 = *(v14 + 16);
      if (v20 != *(v18 + 16))
      {
LABEL_54:
        sub_1ADDD86D8(v13, v64);
        sub_1ADE42C78(v14);
        sub_1ADDD86D8(v16, v17);
        sub_1ADE42C78(v18);
        sub_1ADE42C78(v18);
        sub_1ADE42C78(v14);
LABEL_55:

        sub_1ADE42CB8(v14);
LABEL_56:
        sub_1ADDCC35C(v16, v17);
        sub_1ADE42CB8(v18);
        sub_1ADDCC35C(v13, v64);
        sub_1ADE42CB8(v14);
        return;
      }

      if (v20)
      {
        v21 = v14 == v18;
      }

      else
      {
        v21 = 1;
      }

      if (!v21)
      {
        v34 = (v14 + 32);
        v35 = (v18 + 32);
        while (v20)
        {
          if (*v34 != *v35)
          {
            goto LABEL_54;
          }

          ++v34;
          ++v35;
          if (!--v20)
          {
            goto LABEL_14;
          }
        }

        __break(1u);
        break;
      }

LABEL_14:
      sub_1ADDD86D8(v13, v64);
      v22 = v63;
      sub_1ADE42C78(v14);
      sub_1ADDD86D8(v16, v17);
      sub_1ADE42C78(v18);
      sub_1ADE42C78(v18);
      sub_1ADE42C78(v14);
      sub_1ADE4E544(v22, v19);
      if ((v23 & 1) == 0)
      {
        goto LABEL_55;
      }

      v59 = v10;
      sub_1AE23C31C();
      v24 = v61;
      sub_1AE23C31C();
      sub_1ADE51EAC();
      v58 = v18;
      v25 = v60;
      v53 = sub_1AE23CCBC();
      v26 = v16;
      v27 = *v57;
      v28 = v24;
      v29 = v62;
      (*v57)(v28, v25);
      v30 = v25;
      v18 = v58;
      v27(v29, v30);
      v16 = v26;

      sub_1ADE42CB8(v14);
      if ((v53 & 1) == 0)
      {
        goto LABEL_56;
      }
    }

    else
    {
      if (v18)
      {
        return;
      }

      v59 = v10;
      sub_1ADDD86D8(v13, v64);
      sub_1ADE42C78(0);
      sub_1ADDD86D8(v16, v17);
      sub_1ADE42C78(0);
    }

    v31 = v64 >> 62;
    v32 = v17 >> 62;
    if (v64 >> 62 == 3)
    {
      v33 = 0;
      if (!v13 && v64 == 0xC000000000000000 && v17 >> 62 == 3)
      {
        v33 = 0;
        if (!v16 && v17 == 0xC000000000000000)
        {
          goto LABEL_50;
        }
      }
    }

    else if (v31)
    {
      if (v31 == 1)
      {
        LODWORD(v33) = HIDWORD(v13) - v13;
        if (__OFSUB__(HIDWORD(v13), v13))
        {
          goto LABEL_62;
        }

        v33 = v33;
      }

      else
      {
        v37 = *(v13 + 16);
        v36 = *(v13 + 24);
        v38 = __OFSUB__(v36, v37);
        v33 = v36 - v37;
        if (v38)
        {
          goto LABEL_63;
        }
      }
    }

    else
    {
      v33 = BYTE6(v64);
    }

    if (v32 > 1)
    {
      if (v32 != 2)
      {
        if (v33)
        {
          goto LABEL_56;
        }

        goto LABEL_50;
      }

      v41 = *(v16 + 16);
      v40 = *(v16 + 24);
      v38 = __OFSUB__(v40, v41);
      v39 = v40 - v41;
      if (v38)
      {
        goto LABEL_60;
      }
    }

    else if (v32)
    {
      LODWORD(v39) = HIDWORD(v16) - v16;
      if (__OFSUB__(HIDWORD(v16), v16))
      {
        goto LABEL_61;
      }

      v39 = v39;
    }

    else
    {
      v39 = BYTE6(v17);
    }

    if (v33 != v39)
    {
      goto LABEL_56;
    }

    if (v33 >= 1)
    {
      sub_1ADDD86D8(v16, v17);
      v42 = v52;
      v43 = sub_1ADDD1544(v13, v64, v16, v17);
      v52 = v42;
      if ((v43 & 1) == 0)
      {
        goto LABEL_56;
      }
    }

LABEL_50:
    sub_1AE23C31C();
    v44 = v61;
    sub_1AE23C31C();
    sub_1ADE51EAC();
    v45 = v17;
    v46 = v18;
    v47 = v60;
    LODWORD(v58) = sub_1AE23CCBC();
    v48 = v16;
    v49 = *v57;
    v50 = v44;
    v51 = v62;
    (*v57)(v50, v47);
    v49(v51, v47);
    sub_1ADDCC35C(v48, v45);
    sub_1ADE42CB8(v46);
    sub_1ADDCC35C(v13, v64);
    sub_1ADE42CB8(v14);
    if (v58)
    {
      v10 = v59 + 1;
      v9 = v54;
      if (v59 + 1 != v54)
      {
        continue;
      }
    }

    return;
  }

  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
}

uint64_t sub_1ADE4AF74(uint64_t a1, uint64_t a2)
{
  v34[3] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (v2 && a1 != a2)
    {
      v3 = 0;
      v4 = (a1 + 40);
      v5 = (a2 + 40);
      while (1)
      {
        v7 = *(v4 - 1);
        v6 = *v4;
        v9 = *(v5 - 1);
        v8 = *v5;
        v10 = *v4 >> 62;
        v11 = *v5 >> 62;
        if (v10 == 3)
        {
          break;
        }

        if (v10 > 1)
        {
          if (v10 == 2)
          {
            v20 = *(v7 + 16);
            v19 = *(v7 + 24);
            v17 = __OFSUB__(v19, v20);
            v13 = v19 - v20;
            if (v17)
            {
              goto LABEL_63;
            }

            goto LABEL_28;
          }

          v13 = 0;
          if (v11 <= 1)
          {
            goto LABEL_29;
          }
        }

        else if (v10)
        {
          LODWORD(v13) = HIDWORD(v7) - v7;
          if (__OFSUB__(HIDWORD(v7), v7))
          {
            goto LABEL_64;
          }

          v13 = v13;
          if (v11 <= 1)
          {
LABEL_29:
            if (v11)
            {
              LODWORD(v18) = HIDWORD(v9) - v9;
              if (__OFSUB__(HIDWORD(v9), v9))
              {
                __break(1u);
LABEL_62:
                __break(1u);
LABEL_63:
                __break(1u);
LABEL_64:
                __break(1u);
LABEL_65:
                __break(1u);
LABEL_66:
                __break(1u);
LABEL_67:
                __break(1u);
LABEL_68:
                __break(1u);
              }

              v18 = v18;
            }

            else
            {
              v18 = BYTE6(v8);
            }

            goto LABEL_33;
          }
        }

        else
        {
          v13 = BYTE6(v6);
          if (v11 <= 1)
          {
            goto LABEL_29;
          }
        }

LABEL_22:
        if (v11 != 2)
        {
          if (v13)
          {
            goto LABEL_58;
          }

          goto LABEL_6;
        }

        v16 = *(v9 + 16);
        v15 = *(v9 + 24);
        v17 = __OFSUB__(v15, v16);
        v18 = v15 - v16;
        if (v17)
        {
          goto LABEL_62;
        }

LABEL_33:
        if (v13 != v18)
        {
          goto LABEL_58;
        }

        if (v13 < 1)
        {
          goto LABEL_6;
        }

        if (v10 > 1)
        {
          if (v10 == 2)
          {
            v32 = v3;
            v21 = *(v7 + 16);
            v31 = *(v7 + 24);
            sub_1ADDD86D8(v7, v6);
            sub_1ADDD86D8(v9, v8);
            v22 = sub_1AE23BB7C();
            if (v22)
            {
              v23 = sub_1AE23BBAC();
              if (__OFSUB__(v21, v23))
              {
                goto LABEL_67;
              }

              v22 += v21 - v23;
            }

            if (__OFSUB__(v31, v21))
            {
              goto LABEL_66;
            }

            sub_1AE23BB9C();
            v24 = v22;
            v25 = v9;
            v26 = v8;
            v3 = v32;
            goto LABEL_54;
          }

          memset(v34, 0, 14);
          sub_1ADDD86D8(v7, v6);
          sub_1ADDD86D8(v9, v8);
        }

        else
        {
          if (v10)
          {
            if (v7 >> 32 < v7)
            {
              goto LABEL_65;
            }

            sub_1ADDD86D8(v7, v6);
            sub_1ADDD86D8(v9, v8);
            v27 = sub_1AE23BB7C();
            if (v27)
            {
              v28 = sub_1AE23BBAC();
              if (__OFSUB__(v7, v28))
              {
                goto LABEL_68;
              }

              v27 += v7 - v28;
            }

            sub_1AE23BB9C();
            v24 = v27;
            v25 = v9;
            v26 = v8;
LABEL_54:
            sub_1ADDD8820(v24, v25, v26, v34);
            sub_1ADDCC35C(v9, v8);
            sub_1ADDCC35C(v7, v6);
            if ((v34[0] & 1) == 0)
            {
              goto LABEL_58;
            }

            goto LABEL_6;
          }

          v34[0] = *(v4 - 1);
          LOWORD(v34[1]) = v6;
          BYTE2(v34[1]) = BYTE2(v6);
          BYTE3(v34[1]) = BYTE3(v6);
          BYTE4(v34[1]) = BYTE4(v6);
          BYTE5(v34[1]) = BYTE5(v6);
          sub_1ADDD86D8(v7, v6);
          sub_1ADDD86D8(v9, v8);
        }

        sub_1ADDD8820(v34, v9, v8, &v33);
        sub_1ADDCC35C(v9, v8);
        sub_1ADDCC35C(v7, v6);
        if (!v33)
        {
          goto LABEL_58;
        }

LABEL_6:
        v4 += 2;
        v5 += 2;
        if (!--v2)
        {
          goto LABEL_59;
        }
      }

      if (v7)
      {
        v12 = 0;
      }

      else
      {
        v12 = v6 == 0xC000000000000000;
      }

      v13 = 0;
      v14 = v12 && *v5 >> 62 == 3;
      if (v14 && !v9 && v8 == 0xC000000000000000)
      {
        goto LABEL_6;
      }

LABEL_28:
      if (v11 <= 1)
      {
        goto LABEL_29;
      }

      goto LABEL_22;
    }

LABEL_59:
    result = 1;
  }

  else
  {
LABEL_58:
    result = 0;
  }

  v30 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1ADE4B380(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AE23C32C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v29[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v29[-v10];
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16) && v12 && a1 != a2)
  {
    v13 = (v9 + 8);
    v14 = (a2 + 72);
    v15 = a1 + 40;
    while (1)
    {
      v17 = *(v15 + 16);
      v16 = *(v15 + 24);
      v18 = *(v15 + 32);
      v19 = *(v14 - 24);
      v21 = *(v14 - 2);
      v20 = *(v14 - 1);
      v22 = *v14;
      if (*(v15 + 8))
      {
        if ((*(v14 - 24) & 1) == 0)
        {
          return;
        }
      }

      else
      {
        if (*(v14 - 24))
        {
          return;
        }

        if (*(v15 - 8) != *(v14 - 5))
        {
          return;
        }

        if (*v15 != *(v14 - 4))
        {
          return;
        }

        v33 = *(v15 + 16);
        v34 = v16;
        v31 = v21;
        v32 = v20;
        v30 = v22;
        sub_1AE23C31C();
        sub_1AE23C31C();
        sub_1ADE51EAC();
        v23 = sub_1AE23CCBC();
        v24 = *v13;
        (*v13)(v7, v4);
        v24(v11, v4);
        LOBYTE(v22) = v30;
        v21 = v31;
        v20 = v32;
        v17 = v33;
        v16 = v34;
        if ((v23 & 1) == 0)
        {
          return;
        }
      }

      if (v18)
      {
        if ((v22 & 1) == 0)
        {
          return;
        }
      }

      else
      {
        if (v22)
        {
          return;
        }

        if (v17 != v21)
        {
          return;
        }

        if (v16 != v20)
        {
          return;
        }

        sub_1AE23C31C();
        sub_1AE23C31C();
        sub_1ADE51EAC();
        v25 = sub_1AE23CCBC();
        v26 = *v13;
        (*v13)(v7, v4);
        v26(v11, v4);
        if ((v25 & 1) == 0)
        {
          return;
        }
      }

      sub_1AE23C31C();
      sub_1AE23C31C();
      sub_1ADE51EAC();
      v27 = sub_1AE23CCBC();
      v28 = *v13;
      (*v13)(v7, v4);
      v28(v11, v4);
      if (v27)
      {
        v15 += 48;
        v14 += 48;
        if (--v12)
        {
          continue;
        }
      }

      return;
    }
  }
}

void sub_1ADE4B64C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AE23C32C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v85 = &v72 - v10;
  v11 = *(a2 + 16);
  v94 = *(a1 + 16);
  if (v94 == v11 && v94 && a1 != a2)
  {
    v12 = (a1 + 32);
    v13 = (a2 + 32);
    v80 = (v9 + 8);
    v74 = v4;
    v73 = v7;
    while (v94)
    {
      v14 = *v12;
      v15 = *v13;
      if (*v12 == *v13)
      {
        v53 = *v12;
      }

      else
      {
        v17 = *(v14 + 16);
        v16 = *(v14 + 24);
        v19 = *(v14 + 32);
        v18 = *(v14 + 40);
        v21 = *(v14 + 48);
        v20 = *(v14 + 56);
        v22 = *(v14 + 64);
        v24 = *(v15 + 16);
        v23 = *(v15 + 24);
        v26 = *(v15 + 32);
        v25 = *(v15 + 40);
        v28 = *(v15 + 48);
        v27 = *(v15 + 56);
        v29 = *(v15 + 64);
        v91 = v21;
        v84 = v19;
        v92 = v27;
        v87 = v28;
        v93 = v25;
        v89 = v23;
        v90 = v26;
        v88 = v24;
        if (v22 == 255)
        {
          v54 = v17;
          v55 = v16;
          if (v29 != 255)
          {
            goto LABEL_20;
          }

          swift_retain_n();
          swift_retain_n();
          v56 = v54;
          v57 = v54;
          v58 = v55;
          v59 = v55;
          v60 = v84;
          v61 = v91;
          sub_1ADE51F04(v57, v59, v84, v18, v91, v20, 0xFFu);
          sub_1ADE51F04(v88, v89, v90, v93, v87, v92, 0xFFu);
          sub_1ADE52030(v56, v58, v60, v18, v61, v20, 0xFFu);
        }

        else
        {
          if (v29 == 255)
          {
            v54 = v17;
            v55 = v16;
LABEL_20:
            v86 = v29;
            v66 = v22;
            swift_retain_n();
            swift_retain_n();
            v67 = v54;
            v68 = v55;
            v69 = v84;
            sub_1ADE51F04(v54, v55, v84, v18, v91, v20, v66);
            v70 = v92;
            v71 = v87;
            sub_1ADE51F04(v88, v89, v90, v93, v87, v92, v86);
            sub_1ADE52030(v67, v68, v69, v18, v91, v20, v66);
            sub_1ADE52030(v88, v89, v90, v93, v71, v70, v86);
LABEL_21:

            return;
          }

          v97[0] = v24;
          v97[1] = v23;
          v97[2] = v26;
          v97[3] = v25;
          v97[4] = v28;
          v97[5] = v27;
          v98 = v29;
          v95[0] = v17;
          v95[1] = v16;
          v95[2] = v19;
          v95[3] = v18;
          v95[4] = v21;
          v95[5] = v20;
          v96 = v22;
          v82 = v17;
          v30 = v16;
          v83 = v20;
          v81 = v22;
          v86 = v29;
          swift_retain_n();
          swift_retain_n();
          v75 = v30;
          v31 = v18;
          v78 = v13;
          v32 = v18;
          v76 = v18;
          v33 = v81;
          sub_1ADE51F04(v17, v30, v19, v31, v21, v20, v81);
          v34 = v89;
          v35 = v87;
          sub_1ADE51F04(v88, v89, v90, v93, v87, v92, v86);

          v36 = v30;
          v37 = v19;
          sub_1ADE51F04(v82, v36, v19, v32, v21, v83, v33);
          v38 = v88;
          v39 = v34;
          v40 = v34;
          v79 = v12;
          v41 = v90;
          v42 = v93;
          v43 = v35;
          v44 = v35;
          v45 = v92;
          v46 = v86;
          sub_1ADE51F04(v88, v39, v90, v93, v43, v92, v86);
          v77 = sub_1ADE9280C(v95, v97);
          sub_1ADE52030(v38, v40, v41, v42, v44, v45, v46);
          v47 = v82;
          v48 = v75;
          v49 = v37;
          v50 = v76;
          v13 = v78;
          v51 = v83;
          LOBYTE(v40) = v81;
          sub_1ADE52030(v82, v75, v49, v76, v91, v83, v81);

          v52 = v41;
          v12 = v79;
          sub_1ADE52030(v38, v89, v52, v93, v87, v92, v86);
          sub_1ADE52030(v47, v48, v84, v50, v91, v51, v40);
          if ((v77 & 1) == 0)
          {
            goto LABEL_21;
          }
        }

        v4 = v74;
        v7 = v73;
      }

      v62 = v85;
      sub_1AE23C31C();
      sub_1AE23C31C();
      sub_1ADE51EAC();
      v63 = sub_1AE23CCBC();

      v64 = *v80;
      (*v80)(v7, v4);
      v64(v62, v4);
      if (v63)
      {
        v65 = v94;
        ++v12;
        ++v13;
        --v94;
        if (v65 != 1)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
  }
}

void sub_1ADE4BC88(uint64_t a1, uint64_t a2)
{
  v60 = sub_1AE23C32C();
  v4 = *(*(v60 - 8) + 64);
  MEMORY[0x1EEE9AC00](v60);
  v61 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v50 - v8;
  v10 = *(a1 + 16);
  if (v10 == *(a2 + 16) && v10 && a1 != a2)
  {
    v11 = 0;
    v12 = a1 + 32;
    v13 = a2 + 32;
    v57 = (v7 + 8);
    v52 = a1 + 32;
    v53 = v10;
    v51 = a2 + 32;
    while (v11 != v10)
    {
      v14 = (v12 + 48 * v11);
      v15 = *v14;
      v16 = *(v14 + 1);
      v17 = *(v14 + 2);
      v18 = *(v14 + 40);
      v19 = (v13 + 48 * v11);
      v20 = *v19;
      v22 = *(v19 + 1);
      v21 = *(v19 + 2);
      v23 = *(v19 + 40);
      v54 = v11;
      v56 = v21;
      if (v18)
      {
        if ((v23 & 1) == 0)
        {
          return;
        }
      }

      else
      {
        if (v23)
        {
          return;
        }

        v25 = *(v14 + 3);
        v24 = *(v14 + 4);
        if (v25 != *(v19 + 3) || v24 != *(v19 + 4))
        {
          return;
        }

        sub_1AE23C31C();
        v59 = v15;
        v27 = v61;
        sub_1AE23C31C();
        sub_1ADE51EAC();
        v28 = v60;
        v29 = sub_1AE23CCBC();
        v30 = *v57;
        v31 = v27;
        v15 = v59;
        (*v57)(v31, v28);
        v30(v9, v28);
        if ((v29 & 1) == 0)
        {
          goto LABEL_40;
        }
      }

      if (v15 != v20)
      {
        goto LABEL_40;
      }

      v55 = v17;
      v32 = *(v22 + 16);
      v58 = *(v16 + 16);
      if (v58 != v32)
      {
        goto LABEL_40;
      }

      if (v58)
      {
        v33 = v16 == v22;
      }

      else
      {
        v33 = 1;
      }

      if (!v33)
      {
        v40 = 0;
        v41 = (v16 + 40);
        v42 = (v22 + 40);
        while (v40 < *(v16 + 16))
        {
          if (v40 >= *(v22 + 16))
          {
            goto LABEL_44;
          }

          if (*(v41 - 1) != *(v42 - 1))
          {
            goto LABEL_40;
          }

          if (*v41 != *v42)
          {
            goto LABEL_40;
          }

          sub_1AE23C31C();
          v43 = v9;
          v44 = v61;
          sub_1AE23C31C();
          sub_1ADE51EAC();
          v45 = v60;
          v59 = sub_1AE23CCBC();
          v46 = v22;
          v47 = v16;
          v48 = *v57;
          v49 = v44;
          v9 = v43;
          (*v57)(v49, v45);
          v48(v43, v45);
          v16 = v47;
          v22 = v46;
          if ((v59 & 1) == 0)
          {
            goto LABEL_40;
          }

          ++v40;
          v41 += 2;
          v42 += 2;
          if (v58 == v40)
          {
            goto LABEL_23;
          }
        }

        __break(1u);
LABEL_44:
        __break(1u);
        break;
      }

LABEL_23:
      v34 = *(v55 + 16);
      if (v34 != *(v56 + 16))
      {
        goto LABEL_40;
      }

      if (v34 && v55 != v56)
      {
        v35 = 32;
        while (*(v55 + v35) == *(v56 + v35))
        {
          v35 += 4;
          if (!--v34)
          {
            goto LABEL_29;
          }
        }

LABEL_40:

        return;
      }

LABEL_29:
      sub_1AE23C31C();
      v36 = v61;
      sub_1AE23C31C();
      sub_1ADE51EAC();
      v37 = v60;
      v38 = sub_1AE23CCBC();
      v39 = *v57;
      (*v57)(v36, v37);
      v39(v9, v37);

      if (v38)
      {
        v10 = v53;
        v11 = v54 + 1;
        v13 = v51;
        v12 = v52;
        if (v54 + 1 != v53)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
  }
}

uint64_t sub_1ADE4C130(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AE23C32C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &i - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &i - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    return 0;
  }

  if (!v12 || a1 == a2)
  {
    return 1;
  }

  v13 = 0;
  v14 = a1 + 32;
  v15 = a2 + 32;
  v16 = (v9 + 8);
  v45 = a1 + 32;
  for (i = a2 + 32; ; v15 = i)
  {
    v17 = (v14 + 72 * v13);
    v52 = *(v17 + 64);
    v18 = v17[3];
    v50 = v17[2];
    v51 = v18;
    v19 = v17[1];
    v48 = *v17;
    v49 = v19;
    v20 = (v15 + 72 * v13);
    v57 = *(v20 + 64);
    v21 = v20[3];
    v55 = v20[2];
    v56 = v21;
    v22 = v20[1];
    v53 = *v20;
    v54 = v22;
    v46 = v13;
    if (v52)
    {
      if ((v57 & 1) == 0)
      {
        return 0;
      }

      sub_1ADE5218C(&v48, v47);
      result = sub_1ADE5218C(&v53, v47);
    }

    else
    {
      if ((v57 & 1) != 0 || v51 != v56)
      {
        return 0;
      }

      sub_1ADE5218C(&v48, v47);
      sub_1ADE5218C(&v53, v47);
      sub_1AE23C31C();
      sub_1AE23C31C();
      sub_1ADE51EAC();
      v24 = sub_1AE23CCBC();
      v25 = *v16;
      (*v16)(v7, v4);
      result = (v25)(v11, v4);
      if ((v24 & 1) == 0)
      {
        goto LABEL_52;
      }
    }

    if (v48 != v53)
    {
      goto LABEL_52;
    }

    v26 = *(*(&v48 + 1) + 16);
    if (v26 != *(*(&v53 + 1) + 16))
    {
      goto LABEL_52;
    }

    if (v26 && *(&v48 + 1) != *(&v53 + 1))
    {
      v27 = (*(&v48 + 1) + 40);
      v28 = (*(&v53 + 1) + 40);
      while (*(v27 - 1) == *(v28 - 1))
      {
        v29 = *v27;
        v27 += 2;
        if (v29 != *v28)
        {
          break;
        }

        sub_1AE23C31C();
        sub_1AE23C31C();
        sub_1ADE51EAC();
        v30 = sub_1AE23CCBC();
        v31 = *v16;
        (*v16)(v7, v4);
        result = (v31)(v11, v4);
        if ((v30 & 1) == 0)
        {
          break;
        }

        v28 += 2;
        if (!--v26)
        {
          goto LABEL_20;
        }
      }

      goto LABEL_52;
    }

LABEL_20:
    v32 = *(v49 + 16);
    if (v32 != *(v54 + 16))
    {
      goto LABEL_52;
    }

    if (v32 && v49 != v54)
    {
      v33 = (v49 + 32);
      v34 = (v54 + 32);
      while (*v33 == *v34)
      {
        ++v33;
        ++v34;
        if (!--v32)
        {
          goto LABEL_26;
        }
      }

LABEL_52:
      sub_1ADE521E8(&v53);
      sub_1ADE521E8(&v48);
      return 0;
    }

LABEL_26:
    v35 = *(*(&v49 + 1) + 16);
    if (v35 != *(*(&v54 + 1) + 16))
    {
      goto LABEL_52;
    }

    if (v35 && *(&v49 + 1) != *(&v54 + 1))
    {
      break;
    }

LABEL_32:
    if (BYTE8(v55))
    {
      if (v55)
      {
        if (v55 == 1)
        {
          if (v50 != 1)
          {
            goto LABEL_52;
          }
        }

        else if (v50 != 2)
        {
          goto LABEL_52;
        }
      }

      else if (v50)
      {
        goto LABEL_52;
      }
    }

    else if (v50 != v55)
    {
      goto LABEL_52;
    }

    sub_1AE23C31C();
    sub_1AE23C31C();
    sub_1ADE51EAC();
    v42 = sub_1AE23CCBC();
    v43 = *v16;
    (*v16)(v7, v4);
    v43(v11, v4);
    sub_1ADE521E8(&v53);
    sub_1ADE521E8(&v48);
    if ((v42 & 1) == 0)
    {
      return 0;
    }

    v13 = v46 + 1;
    if (v46 + 1 == v12)
    {
      return 1;
    }

    v14 = v45;
  }

  v37 = (*(&v49 + 1) + 40);
  v38 = (*(&v54 + 1) + 40);
  while (v35)
  {
    if (*(v37 - 1) != *(v38 - 1))
    {
      goto LABEL_52;
    }

    v39 = *v37;
    v37 += 2;
    if (v39 != *v38)
    {
      goto LABEL_52;
    }

    sub_1AE23C31C();
    sub_1AE23C31C();
    sub_1ADE51EAC();
    v40 = sub_1AE23CCBC();
    v41 = *v16;
    (*v16)(v7, v4);
    result = (v41)(v11, v4);
    if ((v40 & 1) == 0)
    {
      goto LABEL_52;
    }

    v38 += 2;
    if (!--v35)
    {
      goto LABEL_32;
    }
  }

  __break(1u);
  return result;
}

void sub_1ADE4C634(uint64_t a1, uint64_t a2)
{
  v36 = sub_1AE23C32C();
  v4 = *(*(v36 - 8) + 64);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v34 = &v31 - v8;
  v9 = *(a1 + 16);
  if (v9 == *(a2 + 16) && v9 && a1 != a2)
  {
    v10 = 0;
    v32 = a2;
    v33 = (v7 + 8);
    v31 = a1;
    while (1)
    {
      v11 = a1 + v10;
      v12 = a2 + v10;
      if (*(a1 + v10 + 32) != *(a2 + v10 + 32))
      {
        break;
      }

      v14 = *(v11 + 40);
      v13 = *(v11 + 48);
      v15 = *(v11 + 56);
      v16 = *(v11 + 64);
      v18 = *(v12 + 40);
      v17 = *(v12 + 48);
      v19 = *(v12 + 56);
      v20 = *(v12 + 64);

      if ((sub_1ADE4C8D8(v14, v18) & 1) == 0)
      {
        goto LABEL_17;
      }

      if (v16)
      {
        if ((v20 & 1) == 0)
        {
          goto LABEL_17;
        }
      }

      else
      {
        if (v20)
        {
          goto LABEL_17;
        }

        if (v13 != v17)
        {
          goto LABEL_17;
        }

        if (v15 != v19)
        {
          goto LABEL_17;
        }

        v21 = v34;
        sub_1AE23C31C();
        v22 = v35;
        sub_1AE23C31C();
        sub_1ADE51EAC();
        v23 = v36;
        v24 = sub_1AE23CCBC();
        v25 = *v33;
        (*v33)(v22, v23);
        v25(v21, v23);
        if ((v24 & 1) == 0)
        {
LABEL_17:

          return;
        }
      }

      v26 = v34;
      sub_1AE23C31C();
      v27 = v35;
      sub_1AE23C31C();
      sub_1ADE51EAC();
      v28 = v36;
      v29 = sub_1AE23CCBC();

      v30 = *v33;
      (*v33)(v27, v28);
      v30(v26, v28);
      if (v29)
      {
        v10 += 40;
        --v9;
        a1 = v31;
        a2 = v32;
        if (v9)
        {
          continue;
        }
      }

      return;
    }
  }
}

uint64_t sub_1ADE4C8D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AE23C32C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v28 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    return 0;
  }

  if (!v12 || a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 32) != *(a2 + 32))
  {
    return 0;
  }

  v13 = (a2 + 40);
  v14 = (a1 + 40);
  v15 = (v9 + 8);
  while (1)
  {
    v16 = *v14;
    v17 = *v13;
    if (!*v14)
    {
      if (v17)
      {
        return 0;
      }

      goto LABEL_19;
    }

    if (!v17)
    {
      return 0;
    }

    if (v16 == v17)
    {
      v18 = *v13;
      swift_retain_n();
      swift_retain_n();
      goto LABEL_18;
    }

    v19 = *(v17 + 16);
    v29 = *(v16 + 16);
    v20 = ~v29 & 0xF000000000000007;
    v30 = v19 & 0xF000000000000007;
    v31 = v19;

    if (!v20)
    {
      if (v30 != 0xF000000000000007)
      {
        break;
      }

      swift_retain_n();
      swift_retain_n();
      goto LABEL_17;
    }

    if (v30 == 0xF000000000000007)
    {
      break;
    }

    swift_retain_n();
    swift_retain_n();
    sub_1ADE51B2C(v31);
    v21 = v29;
    sub_1ADE51B2C(v29);
    LODWORD(v30) = sub_1AE1B7AA8(v21, v31);

    sub_1ADE51B48(v31);
    sub_1ADE51B48(v21);
    if ((v30 & 1) == 0)
    {
      goto LABEL_25;
    }

LABEL_17:

LABEL_18:
    sub_1AE23C31C();
    sub_1AE23C31C();
    sub_1ADE51EAC();
    LODWORD(v31) = sub_1AE23CCBC();
    v22 = *v15;
    (*v15)(v7, v4);
    v22(v11, v4);

    if ((v31 & 1) == 0)
    {
      goto LABEL_26;
    }

LABEL_19:
    sub_1AE23C31C();
    sub_1AE23C31C();
    sub_1ADE51EAC();
    v23 = sub_1AE23CCBC();

    v24 = *v15;
    (*v15)(v7, v4);
    v24(v11, v4);
    if ((v23 & 1) == 0)
    {
      return 0;
    }

    if (!--v12)
    {
      return 1;
    }

    result = 0;
    v26 = *(v14 + 2);
    v27 = *(v13 + 2);
    v14 += 2;
    v13 += 2;
    if (v26 != v27)
    {
      return result;
    }
  }

  swift_retain_n();
  swift_retain_n();
LABEL_25:

LABEL_26:

  return 0;
}

void sub_1ADE4CC60(uint64_t a1, uint64_t a2)
{
  v53 = sub_1AE23C32C();
  v4 = *(v53 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v53);
  v55 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v54 = &v43 - v8;
  v9 = type metadata accessor for Proto4_Value.OneOf_TaggedOneOf(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v44 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA020, &qword_1AE241800);
  v13 = *(*(v46 - 8) + 64);
  MEMORY[0x1EEE9AC00](v46);
  v15 = &v43 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA028, &qword_1AE241808);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = *(a1 + 16);
  if (v21 == *(a2 + 16) && v21 && a1 != a2)
  {
    v47 = &v43 - v19;
    v48 = v9;
    v43 = v20;
    v22 = (a1 + 32);
    v23 = (a2 + 32);
    v45 = (v10 + 48);
    v49 = (v4 + 8);
    while (v21)
    {
      v24 = *v22;
      v25 = *v23;
      if (*v22 == *v23)
      {
        v33 = *v22;
      }

      else
      {
        v50 = v22;
        v51 = v21;
        v26 = OBJC_IVAR____TtCV9Coherence12Proto4_ValueP33_4A59E951A5EB9D63730C3E01A1047EAB13_StorageClass__taggedOneOf;
        swift_beginAccess();
        v27 = v9;
        v28 = v47;
        sub_1ADDCEE40(v24 + v26, v47, &qword_1EB5BA028, &qword_1AE241808);
        v29 = OBJC_IVAR____TtCV9Coherence12Proto4_ValueP33_4A59E951A5EB9D63730C3E01A1047EAB13_StorageClass__taggedOneOf;
        swift_beginAccess();
        v30 = *(v46 + 48);
        sub_1ADDCEE40(v28, v15, &qword_1EB5BA028, &qword_1AE241808);
        sub_1ADDCEE40(v25 + v29, &v15[v30], &qword_1EB5BA028, &qword_1AE241808);
        v31 = *v45;
        v32 = (*v45)(v15, 1, v27);
        v52 = v24;
        if (v32 == 1)
        {
          swift_retain_n();
          swift_retain_n();
          sub_1ADDCEDE0(v28, &qword_1EB5BA028, &qword_1AE241808);
          if (v31(&v15[v30], 1, v27) != 1)
          {
            goto LABEL_20;
          }

          sub_1ADDCEDE0(v15, &qword_1EB5BA028, &qword_1AE241808);
        }

        else
        {
          v34 = v43;
          sub_1ADDCEE40(v15, v43, &qword_1EB5BA028, &qword_1AE241808);
          if (v31(&v15[v30], 1, v27) == 1)
          {
            swift_retain_n();
            swift_retain_n();
            sub_1ADDCEDE0(v47, &qword_1EB5BA028, &qword_1AE241808);
            sub_1ADDE52A0(v34, type metadata accessor for Proto4_Value.OneOf_TaggedOneOf);
LABEL_20:
            sub_1ADDCEDE0(v15, &qword_1EB5BA020, &qword_1AE241800);
LABEL_21:

            return;
          }

          v35 = v44;
          sub_1ADE5223C(&v15[v30], v44, type metadata accessor for Proto4_Value.OneOf_TaggedOneOf);
          swift_retain_n();
          swift_retain_n();
          v36 = sub_1ADE92804(v34, v35);
          sub_1ADDE52A0(v35, type metadata accessor for Proto4_Value.OneOf_TaggedOneOf);
          sub_1ADDCEDE0(v47, &qword_1EB5BA028, &qword_1AE241808);
          sub_1ADDE52A0(v34, type metadata accessor for Proto4_Value.OneOf_TaggedOneOf);
          sub_1ADDCEDE0(v15, &qword_1EB5BA028, &qword_1AE241808);
          if ((v36 & 1) == 0)
          {
            goto LABEL_21;
          }
        }

        v22 = v50;
        v21 = v51;
      }

      v37 = v54;
      sub_1AE23C31C();
      v38 = v55;
      sub_1AE23C31C();
      sub_1ADE51EAC();
      v39 = v53;
      v40 = sub_1AE23CCBC();

      v41 = *v49;
      (*v49)(v38, v39);
      v41(v37, v39);
      if (v40)
      {
        ++v22;
        ++v23;
        v42 = v21-- == 1;
        v9 = v48;
        if (!v42)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
  }
}

uint64_t sub_1ADE4D280(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Timestamp(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
LABEL_12:
    v18 = 0;
    return v18 & 1;
  }

  if (v12 && a1 != a2)
  {
    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v16 = *(v9 + 72);
    while (1)
    {
      sub_1ADDF8030(v14, v11, type metadata accessor for Timestamp);
      sub_1ADDF8030(v15, v7, type metadata accessor for Timestamp);
      if (*&v11[*(v4 + 20)] != *&v7[*(v4 + 20)])
      {
        break;
      }

      v17 = type metadata accessor for Replica();
      if (*&v11[*(v17 + 20)] != *&v7[*(v17 + 20)])
      {
        break;
      }

      v18 = sub_1AE23BF8C();
      sub_1ADDE52A0(v7, type metadata accessor for Timestamp);
      sub_1ADDE52A0(v11, type metadata accessor for Timestamp);
      if (v18)
      {
        v15 += v16;
        v14 += v16;
        if (--v12)
        {
          continue;
        }
      }

      return v18 & 1;
    }

    sub_1ADDE52A0(v7, type metadata accessor for Timestamp);
    sub_1ADDE52A0(v11, type metadata accessor for Timestamp);
    goto LABEL_12;
  }

  v18 = 1;
  return v18 & 1;
}

void sub_1ADE4D4A4(uint64_t a1, uint64_t a2)
{
  v103 = sub_1AE23C32C();
  v4 = *(*(v103 - 8) + 64);
  MEMORY[0x1EEE9AC00](v103);
  v104 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v82 - v8;
  v10 = *(a1 + 16);
  if (v10 == *(a2 + 16) && v10 && a1 != a2)
  {
    v99 = (v7 + 8);
    v11 = (a1 + 48);
    v12 = (a2 + 48);
    while (v10)
    {
      v13 = *(v11 - 2);
      v14 = *(v11 - 1);
      v15 = *v11;
      v16 = *(v12 - 2);
      v17 = *(v12 - 1);
      v18 = *v12;
      v105 = v14;
      v19 = v13 == v16 && v14 == v17;
      if (!v19 && (sub_1AE23E00C() & 1) == 0)
      {
        return;
      }

      v101 = v11;
      v102 = v10;
      v100 = v12;
      if (v15)
      {
        if (!v18)
        {
          return;
        }

        v98 = v17;
        v97 = v15;
        if (v15 == v18)
        {
        }

        else
        {
          v21 = *(v15 + 16);
          v20 = *(v15 + 24);
          v23 = *(v15 + 32);
          v22 = *(v15 + 40);
          v25 = *(v15 + 48);
          v24 = *(v15 + 56);
          v26 = *(v15 + 64);
          v28 = *(v18 + 16);
          v27 = *(v18 + 24);
          v30 = *(v18 + 32);
          v29 = *(v18 + 40);
          v31 = *(v18 + 48);
          v32 = *(v18 + 56);
          v33 = *(v18 + 64);
          v91 = v24;
          v90 = v23;
          v89 = v22;
          v88 = v20;
          v96 = v21;
          v87 = v32;
          v84 = v31;
          v95 = v29;
          v94 = v30;
          v93 = v27;
          v92 = v28;
          if (v26 == 255)
          {
            if (v33 != 255)
            {
LABEL_27:
              v86 = v33;
              v73 = v26;

              v74 = v96;
              v75 = v88;
              v76 = v90;
              v77 = v89;
              v78 = v25;
              v79 = v91;
              sub_1ADE51F04(v96, v88, v90, v89, v25, v91, v73);
              v80 = v84;
              v81 = v87;
              sub_1ADE51F04(v92, v93, v94, v95, v84, v87, v86);
              sub_1ADE52030(v74, v75, v76, v77, v78, v79, v73);
              sub_1ADE52030(v92, v93, v94, v95, v80, v81, v86);
LABEL_28:

              return;
            }

            v56 = v96;
            v57 = v88;
            v58 = v90;
            v59 = v89;
            v60 = v25;
            v61 = v25;
            v62 = v91;
            sub_1ADE51F04(v96, v88, v90, v89, v61, v91, 0xFFu);
            sub_1ADE51F04(v92, v93, v94, v95, v84, v87, 0xFFu);
            sub_1ADE52030(v56, v57, v58, v59, v60, v62, 0xFFu);
          }

          else
          {
            if (v33 == 255)
            {
              goto LABEL_27;
            }

            v108[0] = v28;
            v108[1] = v27;
            v108[2] = v30;
            v108[3] = v29;
            v108[4] = v31;
            v108[5] = v32;
            v109 = v33;
            v106[0] = v21;
            v106[1] = v20;
            v106[2] = v23;
            v106[3] = v22;
            v106[4] = v25;
            v106[5] = v24;
            v107 = v26;
            v86 = v33;
            v34 = v30;
            v35 = v25;
            v85 = v25;
            v36 = v31;
            v83 = v26;
            sub_1ADE51F04(v21, v20, v23, v22, v35, v24, v26);
            v37 = v28;
            v38 = v93;
            v39 = v34;
            v40 = v95;
            sub_1ADE51F04(v37, v93, v39, v95, v36, v32, v86);

            v41 = v88;
            sub_1ADE51F04(v96, v88, v90, v89, v85, v91, v83);
            v42 = v92;
            v43 = v38;
            v44 = v94;
            v45 = v36;
            v46 = v87;
            v47 = v86;
            sub_1ADE51F04(v92, v43, v94, v40, v45, v87, v86);
            v82 = sub_1ADE9280C(v106, v108);
            v48 = v42;
            v49 = v93;
            v50 = v44;
            v51 = v84;
            sub_1ADE52030(v48, v93, v50, v40, v84, v46, v47);
            v52 = v41;
            v53 = v90;
            v54 = v89;
            v55 = v91;
            LOBYTE(v46) = v83;
            sub_1ADE52030(v96, v52, v90, v89, v85, v91, v83);
            sub_1ADE52030(v92, v49, v94, v95, v51, v87, v86);
            sub_1ADE52030(v96, v88, v53, v54, v85, v55, v46);
            if ((v82 & 1) == 0)
            {
              goto LABEL_28;
            }
          }
        }

        sub_1AE23C31C();
        v63 = v104;
        sub_1AE23C31C();
        sub_1ADE51EAC();
        v64 = v103;
        v65 = sub_1AE23CCBC();
        v66 = *v99;
        (*v99)(v63, v64);
        v66(v9, v64);
        if ((v65 & 1) == 0)
        {
          goto LABEL_28;
        }
      }

      else
      {
        if (v18)
        {
          return;
        }
      }

      sub_1AE23C31C();
      v67 = v9;
      v68 = v104;
      sub_1AE23C31C();
      sub_1ADE51EAC();
      v69 = v103;
      v70 = sub_1AE23CCBC();
      v71 = *v99;
      v72 = v68;
      v9 = v67;
      (*v99)(v72, v69);
      v71(v67, v69);

      if (v70)
      {
        v11 = v101 + 3;
        v12 = v100 + 3;
        v10 = v102 - 1;
        if (v102 != 1)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
  }
}