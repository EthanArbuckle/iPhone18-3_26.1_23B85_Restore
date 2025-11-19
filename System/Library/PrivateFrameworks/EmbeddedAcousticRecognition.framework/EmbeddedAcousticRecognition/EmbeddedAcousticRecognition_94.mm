void std::__tree<std::__value_type<std::string,quasar::MungeRuleData>,std::__map_value_compare<std::string,std::__value_type<std::string,quasar::MungeRuleData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,quasar::MungeRuleData>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,quasar::MungeRuleData>,std::__map_value_compare<std::string,std::__value_type<std::string,quasar::MungeRuleData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,quasar::MungeRuleData>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,quasar::MungeRuleData>,std::__map_value_compare<std::string,std::__value_type<std::string,quasar::MungeRuleData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,quasar::MungeRuleData>>>::destroy(a1, *(a2 + 1));
    v4 = (a2 + 80);
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v4);
    v4 = (a2 + 56);
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v4);
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

uint64_t quasar::join<std::string>(uint64_t a1, uint64_t *a2)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v6);
  quasar::joinToStream<std::string>(&v7, a1, a2);
  std::stringbuf::str();
  v6[0] = *MEMORY[0x1E69E54D8];
  v4 = *(MEMORY[0x1E69E54D8] + 72);
  *(v6 + *(v6[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v7 = v4;
  v8 = MEMORY[0x1E69E5548] + 16;
  if (v10 < 0)
  {
    operator delete(v9[7].__locale_);
  }

  v8 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v9);
  std::iostream::~basic_iostream();
  return MEMORY[0x1B8C85200](&v11);
}

void sub_1B570CFEC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

void *quasar::joinToStream<std::string>(void *result, uint64_t a2, uint64_t *a3)
{
  v3 = *(a2 + 23);
  if (v3 >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  if (v3 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = *(a2 + 8);
  }

  if (v5)
  {
    v7 = result;
    v8 = 1;
    do
    {
      if ((v8 & 1) == 0)
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, *a3, a3[1]);
      }

      v9 = *v4++;
      v10 = v9;
      result = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, &v10, 1);
      v8 = 0;
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t std::__split_buffer<std::unique_ptr<quasar::MungeRule>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::unique_ptr<quasar::MungeRule>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *std::__split_buffer<std::unique_ptr<quasar::MungeRule>>::__destruct_at_end[abi:ne200100](void *result, void *a2)
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

uint64_t std::__tree<std::__value_type<std::string,quasar::MungeRuleData>,std::__map_value_compare<std::string,std::__value_type<std::string,quasar::MungeRuleData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,quasar::MungeRuleData>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  result = *std::__tree<std::__value_type<std::string,std::wstring>,std::__map_value_compare<std::string,std::__value_type<std::string,std::wstring>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::wstring>>>::__find_equal<std::string>(a1, &v3, a2);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,quasar::MungeRuleData>,std::__map_value_compare<std::string,std::__value_type<std::string,quasar::MungeRuleData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,quasar::MungeRuleData>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return result;
}

void sub_1B570D278(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,quasar::MungeRuleData>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,quasar::MungeRuleData>,void *>>>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == 1)
  {
    v3 = (a2 + 80);
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
    v3 = (a2 + 56);
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
    if (*(a2 + 55) < 0)
    {
      operator delete(*(a2 + 32));
    }
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

void quasar::BasicMungeRule::~BasicMungeRule(quasar::BasicMungeRule *this)
{
  *this = &unk_1F2D2A350;
  v1 = (this + 8);
  v2 = (this + 32);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = v1;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
}

{
  *this = &unk_1F2D2A350;
  v2 = (this + 8);
  v3 = (this + 32);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = v2;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  MEMORY[0x1B8C85350](this, 0x10A1C40DB8502C6);
}

uint64_t quasar::BasicMungeRule::match(uint64_t a1, const void ***a2, const void **a3)
{
  if (*(a1 + 58))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = a2[1];
    if (v6 - v5 > (v7 - *a2))
    {
      return v7;
    }

    a3 = (v7 - (v6 - v5));
  }

  else
  {
    v7 = a2[1];
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
  }

  v11 = 0;
  v9 = std::__search_impl[abi:ne200100]<std::__wrap_iter<std::string const*>,std::__wrap_iter<std::string const*>,std::__wrap_iter<std::string*>,std::__wrap_iter<std::string*>,std::__equal_to,std::__identity,std::__identity,0>(a3, v7, v5, v6, &v12, &v11, &v11);
  v7 = v9;
  if (*(a1 + 57) == 1 && *a2 != v9)
  {
    return a2[1];
  }

  return v7;
}

uint64_t quasar::BasicMungeRule::toStr(quasar::BasicMungeRule *this)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v24);
  v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v25, "BasicMungeRule: {rhs=", 21);
  v21[0] = "|";
  v21[1] = 1;
  quasar::join<std::vector<std::string>>(this + 4, v21);
  if ((v23 & 0x80u) == 0)
  {
    v3 = v22;
  }

  else
  {
    v3 = v22[0];
  }

  if ((v23 & 0x80u) == 0)
  {
    v4 = v23;
  }

  else
  {
    v4 = v22[1];
  }

  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, v3, v4);
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, " lhs=", 5);
  v18[0] = "|";
  v18[1] = 1;
  quasar::join<std::vector<std::string>>(this + 1, v18);
  if ((v20 & 0x80u) == 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  if ((v20 & 0x80u) == 0)
  {
    v8 = v20;
  }

  else
  {
    v8 = __p[1];
  }

  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, v7, v8);
  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " reject=", 8);
  v11 = MEMORY[0x1B8C84BD0](v10, *(this + 56));
  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, " startAnchor=", 13);
  v13 = MEMORY[0x1B8C84BD0](v12, *(this + 57));
  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, " endAnchor=", 11);
  v15 = MEMORY[0x1B8C84BD0](v14, *(this + 58));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "}", 1);
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  std::stringbuf::str();
  v24[0] = *MEMORY[0x1E69E54D8];
  v16 = *(MEMORY[0x1E69E54D8] + 72);
  *(v24 + *(v24[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v25 = v16;
  v26 = MEMORY[0x1E69E5548] + 16;
  if (v28 < 0)
  {
    operator delete(v27[7].__locale_);
  }

  v26 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v27);
  std::iostream::~basic_iostream();
  return MEMORY[0x1B8C85200](&v29);
}

void sub_1B570D750(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a26);
  _Unwind_Resume(a1);
}

const void **std::__search_impl[abi:ne200100]<std::__wrap_iter<std::string const*>,std::__wrap_iter<std::string const*>,std::__wrap_iter<std::string*>,std::__wrap_iter<std::string*>,std::__equal_to,std::__identity,std::__identity,0>(const void **result, uint64_t a2, const void **a3, const void **a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a4 != a3)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((a2 - result) >> 3);
    if (v7 >= (0xAAAAAAAAAAAAAAABLL * (a4 - a3)))
    {
      return std::__search_random_access_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<std::string const*>,std::__wrap_iter<std::string const*>,std::__wrap_iter<std::string*>,std::__wrap_iter<std::string*>,std::__equal_to,std::__identity,std::__identity,long,long>(result, a2, a3, a4, a5, a6, a7, v7, 0xAAAAAAAAAAAAAAABLL * (a4 - a3));
    }

    else
    {
      return a2;
    }
  }

  return result;
}

const void **std::__search_random_access_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<std::string const*>,std::__wrap_iter<std::string const*>,std::__wrap_iter<std::string*>,std::__wrap_iter<std::string*>,std::__equal_to,std::__identity,std::__identity,long,long>(const void **a1, uint64_t a2, const void **a3, const void **a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = &a1[3 * (a8 - a9) + 3];
  if (v10 != a1)
  {
    v14 = a1;
    v15 = a3 + 3;
    while (!std::equal_to<std::string>::operator()[abi:ne200100](a5, v14, a3))
    {
LABEL_7:
      v14 += 3;
      if (v14 == v10)
      {
        return a2;
      }
    }

    v16 = v14 + 3;
    v17 = v15;
    while (v17 != a4)
    {
      v18 = std::equal_to<std::string>::operator()[abi:ne200100](a5, v16, v17);
      v16 += 3;
      v17 += 3;
      if (!v18)
      {
        goto LABEL_7;
      }
    }

    return v14;
  }

  return a2;
}

void *LHash<char const*,unsigned int>::alloc(void *a1, unsigned int a2)
{
  v3 = -1;
  do
  {
    v4 = (1 << ++v3);
  }

  while (v4 < a2);
  result = BM_malloc(16 * (v4 - 1) + 24);
  *a1 = result;
  *result = *result & 0xFFFFFFE0 | v3 & 0x1F;
  **a1 &= 0x1Fu;
  v6 = 16;
  do
  {
    *(*a1 + v6) = 0;
    v6 += 16;
    --v4;
  }

  while (v4);
  return result;
}

void LHash<char const*,unsigned int>::clear(void *a1, unsigned int a2)
{
  if (*a1)
  {
    v4 = 1 << (**a1 & 0x1F);
    v5 = 16;
    v6 = v4;
    do
    {
      v7 = *(*a1 + v5);
      if (v7)
      {
        free(v7);
      }

      v5 += 16;
      --v6;
    }

    while (v6);
    BM_free(*a1, 16 * (v4 - 1) + 24);
    *a1 = 0;
  }

  if (a2)
  {
    if (a2 >= 8)
    {
      a2 = ((a2 + 1) / 0.8);
    }

    LHash<char const*,unsigned int>::alloc(a1, a2);
  }
}

uint64_t LHash<char const*,unsigned int>::locate(_DWORD **a1, char *__s2, _DWORD *a3)
{
  v3 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v7 = v3 + 2;
  v6 = *v3;
  v8 = v6 & 0x1F;
  if ((*v3 & 0x1Fu) > 2)
  {
    v11 = *__s2;
    if (*__s2)
    {
      v12 = 0;
      v13 = __s2 + 1;
      do
      {
        v12 = 9 * v12 + v11;
        v14 = *v13++;
        v11 = v14;
      }

      while (v14);
      v15 = 1103515245 * v12 + 12345;
    }

    else
    {
      v15 = 12345;
    }

    v18 = v15 >> (30 - v8);
    v19 = -1 << v8;
    v9 = v18 & ~v19;
    result = *&v7[4 * v9 + 2];
    if (result)
    {
      v20 = ~v19;
      while (strcmp(result, __s2))
      {
        v9 = (v9 + 1) & v20;
        result = *&v7[4 * v9 + 2];
        if (!result)
        {
          goto LABEL_23;
        }
      }

      result = 1;
    }
  }

  else if (v6 >= 0x20)
  {
    v16 = 0;
    v9 = v6 >> 5;
    v17 = (v3 + 4);
    while (strcmp(*v17, __s2))
    {
      ++v16;
      v17 += 2;
      if (v9 == v16)
      {
        goto LABEL_13;
      }
    }

    result = 1;
    LODWORD(v9) = v16;
  }

  else
  {
    LODWORD(v9) = 0;
LABEL_13:
    result = 0;
  }

LABEL_23:
  *a3 = v9;
  return result;
}

uint64_t LHash<char const*,unsigned int>::getInternalKey(_DWORD **a1, char *a2, _BYTE *a3)
{
  v8 = 0;
  v5 = LHash<char const*,unsigned int>::locate(a1, a2, &v8);
  *a3 = v5;
  if (v5)
  {
    v6 = &(*a1)[4 * v8 + 4];
  }

  else
  {
    v6 = &LHash<char const*,unsigned int>::zeroKey;
  }

  return *v6;
}

void *LHash<char const*,unsigned int>::insert(void *a1, char *__s2, _BYTE *a3)
{
  if (!*a1)
  {
    LHash<char const*,unsigned int>::alloc(a1, 1u);
  }

  v17 = 0;
  v6 = LHash<char const*,unsigned int>::locate(a1, __s2, &v17);
  *a3 = v6;
  v7 = *a1;
  if (!v6)
  {
    v8 = *v7;
    v9 = 1 << (v8 & 0x1F);
    v10 = v8 >> 5;
    if (v8 >= 0xE0)
    {
      v11 = ((v10 + 2) / 0.8);
    }

    else
    {
      v11 = v10 + 1;
    }

    if (v11 > v9)
    {
      LHash<char const*,unsigned int>::alloc(a1, v11);
      **a1 = v8 & 0xFFFFFFE0 | **a1 & 0x1F;
      if ((**a1 & 0x1Fu) >= 3)
      {
        v12 = (v7 + 2);
        v13 = v9;
        do
        {
          if (*v12)
          {
            LHash<char const*,unsigned int>::locate(a1, *v12, &v17);
            *(*a1 + 16 * v17 + 8) = *(v12 - 1);
          }

          v12 += 2;
          --v13;
        }

        while (v13);
      }

      else
      {
        memcpy((*a1 + 8), v7 + 1, 16 * v10);
      }

      BM_free(v7, 16 * (v9 - 1) + 24);
      LHash<char const*,unsigned int>::locate(a1, __s2, &v17);
      v7 = *a1;
    }

    v14 = strdup(__s2);
    v15 = &v7[2 * v17];
    v15[2] = v14;
    *(v15 + 2) = 0;
    **a1 += 32;
    v7 = *a1;
  }

  return &v7[2 * v17 + 1];
}

uint64_t LHash<char const*,unsigned int>::remove(unsigned int **a1, char *a2, _DWORD *a3)
{
  v16 = 0;
  result = LHash<char const*,unsigned int>::locate(a1, a2, &v16);
  if (result)
  {
    free(*&(*a1)[4 * v16 + 4]);
    v6 = v16;
    *&(*a1)[4 * v16 + 4] = 0;
    if (a3)
    {
      *a3 = (*a1)[4 * v6 + 2];
    }

    v7 = *a1;
    v8 = **a1;
    if ((v8 & 0x1F) >= 3)
    {
      v15 = 0;
      v10 = v6 + 1;
      for (i = -1 << (v8 & 0x1F); ; i = -1 << **a1)
      {
        v16 = v10 & ~i;
        v12 = *&v7[4 * v16 + 4];
        if (!v12)
        {
          break;
        }

        v13 = LHash<char const*,unsigned int>::locate(a1, v12, &v15);
        v14 = v16;
        if (!v13)
        {
          *&(*a1)[4 * v15 + 2] = *&(*a1)[4 * v16 + 2];
          *&(*a1)[4 * v14 + 4] = 0;
        }

        v15 = 0;
        v10 = v14 + 1;
        v7 = *a1;
      }
    }

    else
    {
      v9 = v8 >> 5;
      memmove(&v7[4 * v6 + 2], &v7[4 * (v6 + 1) + 2], 16 * (~v6 + (v8 >> 5)));
      *&(*a1)[4 * v9] = 0;
      v7 = *a1;
    }

    *v7 -= 32;
    return 1;
  }

  return result;
}

uint64_t LHashIter<char const*,unsigned int>::LHashIter(uint64_t result, _DWORD **a2, uint64_t a3)
{
  v3 = *a2;
  *result = *a2;
  *(result + 8) = 0;
  if (v3)
  {
    *(result + 12) = *v3 >> 5;
    *(result + 16) = a3;
    *(result + 24) = 0;
    LHashIter<char const*,unsigned int>::sortKeys();
  }

  *(result + 12) = 0;
  *(result + 16) = a3;
  *(result + 24) = 0;
  return result;
}

void sub_1B570E080(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    MEMORY[0x1B8C85310](a12, v12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t LHashIter<char const*,unsigned int>::LHashIter(uint64_t result, uint64_t a2)
{
  *result = *a2;
  v2 = *(a2 + 12);
  *(result + 8) = *(a2 + 8);
  *(result + 12) = v2;
  *(result + 24) = 0;
  v3 = *(a2 + 24);
  *(result + 16) = *(a2 + 16);
  if (v3)
  {
    operator new[]();
  }

  return result;
}

uint64_t LHashIter<char const*,unsigned int>::~LHashIter(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    MEMORY[0x1B8C85310](v2, 0x50C80EE9192B6);
  }

  *(a1 + 24) = 0;
  return a1;
}

void LHashIter<char const*,unsigned int>::init(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    MEMORY[0x1B8C85310](v2, 0x50C80EE9192B6);
  }

  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  v3 = *a1;
  if (*a1)
  {
    LODWORD(v3) = *v3 >> 5;
  }

  *(a1 + 12) = v3;
  v4 = 0;
  LHash<char const*,unsigned int>::clear(&v4, 0);
  if (*a1)
  {
    LHashIter<char const*,unsigned int>::sortKeys();
  }
}

uint64_t LHashIter<char const*,unsigned int>::next(uint64_t a1, void *a2)
{
  v2 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v11 = 0;
  v4 = *(a1 + 8);
  if (v4 == *(a1 + 12))
  {
    return 0;
  }

  v10 = v2;
  v7 = *(a1 + 24);
  *(a1 + 8) = v4 + 1;
  LHash<char const*,unsigned int>::locate(&v10, *(v7 + 8 * v4), &v11);
  v10 = 0;
  v8 = v11;
  *a2 = *(*a1 + 16 * v11 + 16);
  v9 = *a1;
  LHash<char const*,unsigned int>::clear(&v10, 0);
  return &v9[4 * v8 + 2];
}

uint64_t Array<char const*>::operator[](int *a1, uint64_t a2)
{
  v2 = a2 - *a1;
  if (v2 >= a1[1])
  {
    a1[1] = v2 + 1;
    if (v2 >= a1[4])
    {
      Array<char const*>::alloc();
    }
  }

  return *(a1 + 1) + 8 * v2;
}

uint64_t Array<unsigned int>::operator[](int *a1, uint64_t a2)
{
  v2 = a2 - *a1;
  if (v2 >= a1[1])
  {
    a1[1] = v2 + 1;
    if (v2 >= a1[4])
    {
      Array<unsigned int>::alloc();
    }
  }

  return *(a1 + 1) + 4 * v2;
}

void *Vocab::setOutputVocab(Vocab *this, Vocab *a2)
{
  v3 = Vocab::outputVocabTLS(Vocab::outputVocabTLS);
  result = *v3;
  if (!*v3)
  {
    result = malloc_type_calloc(1uLL, 8uLL, 0x2004093837F09uLL);
    *v3 = result;
  }

  *result = this;
  return result;
}

void *Vocab::setCompareVocab(Vocab *this, Vocab *a2)
{
  v3 = Vocab::compareVocabTLS();
  result = *v3;
  if (!*v3)
  {
    result = malloc_type_calloc(1uLL, 8uLL, 0x2004093837F09uLL);
    *v3 = result;
  }

  *result = this;
  return result;
}

void Vocab::Vocab(Vocab *this, int a2, int a3)
{
  *this = qword_1F2D2A398;
  *(this + 1) = 0;
  *(this + 4) = a2;
  *(this + 28) = 0;
  *(this + 20) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 10) = a2;
  *(this + 11) = a3;
  *(this + 11) = 0;
  v5 = Vocab::outputVocabTLS(qword_1F2D2A398);
  v6 = *v5;
  if (!*v5)
  {
    v6 = malloc_type_calloc(1uLL, 8uLL, 0x2004093837F09uLL);
    *v5 = v6;
    v4 = *this;
  }

  *v6 = this;
  *(this + 40) = 0;
  *(this + 16) = (*(v4 + 16))(this, "<unk>");
  *(this + 17) = (*(*this + 16))(this, "<s>");
  *(this + 18) = (*(*this + 16))(this, "</s>");
  *(this + 19) = (*(*this + 16))(this, "-pau-");
  (*(*this + 184))(this, *(this + 17));
  (*(*this + 184))(this, *(this + 19));
}

void sub_1B570E780(_Unwind_Exception *a1)
{
  LHash<unsigned int,unsigned int>::~LHash(v4);
  LHash<unsigned int,unsigned int>::~LHash(v3);
  v6 = *(v2 + 24);
  if (v6)
  {
    MEMORY[0x1B8C85310](v6, 0x50C80EE9192B6);
  }

  LHash<char const*,unsigned int>::~LHash(v1);
  _Unwind_Resume(a1);
}

_DWORD **Vocab::memStats(uint64_t a1, uint64_t *a2)
{
  *a2 += 64;
  result = LHash<unsigned int,double>::memStats((a1 + 8), a2);
  v5 = *(a1 + 32);
  v6 = *a2 + 8 * v5;
  v7 = v5 - *(a1 + 20);
  v8 = 4 * v5;
  v9 = a2[1] + 8 * v7;
  *a2 = v6;
  a2[1] = v9;
  if (v8 >= 128)
  {
    v8 = 128;
  }

  ++LODWORD(a2[v8 + 2]);
  return result;
}

_BYTE *Vocab::mapToLower(Vocab *this, const char *a2)
{
  v3 = lowerTLS();
  v4 = *v3;
  if (!*v3)
  {
    v5 = v3;
    v4 = malloc_type_calloc(0x401uLL, 1uLL, 0x100004077774924uLL);
    *v5 = v4;
  }

  v6 = *this;
  if (*this)
  {
    v7 = 0;
    v8 = this + 1;
    do
    {
      v4[v7] = __tolower(v6);
      v9 = v7 + 1;
      if (v7 > 0x3FE)
      {
        break;
      }

      v6 = v8[v7++];
    }

    while (v6);
  }

  else
  {
    v9 = 0;
  }

  v4[v9] = 0;
  return v4;
}

void Vocab::freeThread(Vocab *this)
{
  v1 = Vocab::outputVocabTLS(Vocab::outputVocabTLS);
  if (*v1)
  {
    free(*v1);
    *v1 = 0;
  }

  v2 = Vocab::compareVocabTLS();
  if (*v2)
  {
    free(*v2);
    *v2 = 0;
  }

  v3 = lowerTLS();
  if (*v3)
  {
    free(*v3);
    *v3 = 0;
  }
}

uint64_t Vocab::addWord(Vocab *this, Vocab *__s2)
{
  v2 = __s2;
  if (*(this + 81))
  {
    v2 = Vocab::mapToLower(__s2, __s2);
  }

  v14 = 0;
  v4 = LHash<char const*,unsigned int>::insert(this + 1, v2, &v14);
  if (v14)
  {
    return *v4;
  }

  v6 = *(this + 10);
  if (v6 == *(this + 11))
  {
    return 0xFFFFFFFFLL;
  }

  *v4 = v6;
  v15 = 0;
  if (LHash<char const*,unsigned int>::locate(this + 1, v2, &v15))
  {
    v7 = (*(this + 1) + 16 * v15 + 16);
  }

  else
  {
    v7 = &LHash<char const*,unsigned int>::zeroKey;
  }

  v8 = *v7;
  *Array<char const*>::operator[](this + 4, *(this + 10)) = v8;
  v9 = *(this + 11);
  if (v9)
  {
    v10 = strlen(*(this + 11));
    if (!strncmp(v2, v9, v10))
    {
      v13 = -1;
      if (v2[v10])
      {
        sscanf(&v2[v10], "%u", &v13);
        v11 = v13;
        if (v13 < 0)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v11 = 0;
        v13 = 0;
      }

      v12 = *(this + 10);
      v16 = 0;
      *LHash<unsigned int,float>::insert(this + 7, v12, &v16) = v11;
    }
  }

LABEL_17:
  result = *(this + 10);
  *(this + 10) = result + 1;
  return result;
}

const char *Vocab::addWordAlias(Vocab *this, const char *a2, Vocab *a3)
{
  v3 = a3;
  v4 = a2;
  if (*(this + 81))
  {
    v3 = Vocab::mapToLower(a3, a2);
  }

  if (!*Array<char const*>::operator[](this + 4, v4))
  {
    return 0xFFFFFFFFLL;
  }

  v6 = Array<char const*>::operator[](this + 4, v4);
  if (strcmp(v3, *v6))
  {
    (*(*this + 56))(this, v3);
    v8 = 0;
    *LHash<char const*,unsigned int>::insert(this + 1, v3, &v8) = v4;
  }

  return v4;
}

uint64_t Vocab::addNonEvent(Vocab *this, uint64_t a2)
{
  if (!(*(*this + 32))(this))
  {
    return 0xFFFFFFFFLL;
  }

  v5 = 0;
  *LHash<unsigned int,float>::insert(this + 6, a2, &v5) = 1;
  return a2;
}

uint64_t Vocab::addNonEvents(Vocab *this, Vocab *a2)
{
  LHashIter<char const*,unsigned int>::LHashIter(v5, a2 + 1, 0);
  v3 = 1;
  while (1)
  {
    v7 = 0;
    if (!LHashIter<char const*,unsigned int>::next(v5, &v7) || !v7)
    {
      break;
    }

    if ((*(*this + 192))(this) == -1)
    {
      v3 = 0;
    }
  }

  if (v6)
  {
    MEMORY[0x1B8C85310](v6, 0x50C80EE9192B6);
  }

  return v3;
}

void sub_1B570ECB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (a13)
  {
    MEMORY[0x1B8C85310](a13, 0x50C80EE9192B6);
  }

  _Unwind_Resume(exception_object);
}

void VocabIter::VocabIter(VocabIter *this, const Vocab *a2, int a3)
{
  if (a3)
  {
    v3 = MEMORY[0x1E69E9918];
  }

  else
  {
    v3 = 0;
  }

  LHashIter<char const*,unsigned int>::LHashIter(this, a2 + 1, v3);
}

uint64_t Vocab::removeNonEvent(unsigned int **this, unsigned int a2)
{
  result = (*(*this + 4))(this);
  if (result)
  {

    return LHash<unsigned int,float>::remove(this + 6, a2, 0);
  }

  return result;
}

uint64_t Vocab::getIndex(Vocab *this, Vocab *a2, uint64_t a3)
{
  v4 = a2;
  if (*(this + 81))
  {
    v4 = Vocab::mapToLower(a2, a2);
  }

  v9 = 0;
  if (LHash<char const*,unsigned int>::locate(this + 1, v4, &v9))
  {
    return *(*(this + 1) + 16 * v9 + 8);
  }

  v7 = *(this + 11);
  if (v7)
  {
    v8 = strlen(*(this + 11));
    if (!strncmp(v4, v7, v8))
    {
      return (*(*this + 16))(this, v4);
    }
  }

  return a3;
}

{
  v4 = a2;
  if (*(this + 81))
  {
    v4 = Vocab::mapToLower(a2, a2);
  }

  v10 = 0;
  if (LHash<char const*,unsigned int>::locate(this + 1, v4, &v10))
  {
    return *(*(this + 1) + 16 * v10 + 8);
  }

  v6 = *(this + 11);
  if (v6)
  {
    v7 = strlen(v6);
    if (!strncmp(v4, v6, v7))
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Unable to intern metatag due to const.");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  return a3;
}

uint64_t Vocab::metaTagOfType(Vocab *this, int a2)
{
  v2 = *(this + 11);
  if (!v2)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2)
  {
    v5 = strlen(*(this + 11));
    *&v10[8] = 0;
    *v10 = (v5 + 20);
    if (v5 != -20)
    {
      Array<char>::alloc();
    }

    snprintf(0, v5 + 20, "%s%u", v2, a2);
    return (*(*this + 40))(this, *&v10[4], 0xFFFFFFFFLL);
  }

  v7 = *(*this + 40);
  v8 = *(this + 11);

  return v7(this, v8, 0xFFFFFFFFLL);
}

void sub_1B570F07C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (a13)
  {
    MEMORY[0x1B8C85310](a13, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Vocab::getWord(Vocab *this, unsigned int a2)
{
  v4 = *(this + 4);
  v3 = (this + 16);
  if (v4 > a2 || *(this + 10) <= a2)
  {
    return 0;
  }

  else
  {
    return *Array<char const*>::operator[](v3, a2);
  }
}

uint64_t Vocab::remove(Vocab *this, Vocab *a2)
{
  v2 = a2;
  if (*(this + 81))
  {
    v2 = Vocab::mapToLower(a2, a2);
  }

  v10 = 0;
  result = LHash<char const*,unsigned int>::locate(this + 1, v2, &v10);
  if (result)
  {
    v5 = *(this + 1) + 16 * v10;
    v7 = *(v5 + 8);
    v6 = (v5 + 8);
    v8 = Array<char const*>::operator[](this + 4, v7);
    if (!strcmp(v2, *v8))
    {
      v9 = *v6;
      LHash<char const*,unsigned int>::remove(this + 1, v2, 0);
      *Array<char const*>::operator[](this + 4, v9) = 0;
      LHash<unsigned int,float>::remove(this + 6, v9, 0);
      result = LHash<unsigned int,float>::remove(this + 7, v9, 0);
      if (v9 == *(this + 17))
      {
        *(this + 17) = -1;
      }

      if (v9 == *(this + 18))
      {
        *(this + 18) = -1;
      }

      if (v9 == *(this + 16))
      {
        *(this + 16) = -1;
      }

      if (v9 == *(this + 19))
      {
        *(this + 19) = -1;
      }
    }

    else
    {
      return LHash<char const*,unsigned int>::remove(this + 1, v2, 0);
    }
  }

  return result;
}

uint64_t Vocab::remove(uint64_t this, unsigned int a2)
{
  v2 = (this + 16);
  if (*(this + 16) <= a2)
  {
    v4 = this;
    if (*(this + 40) > a2)
    {
      this = Array<char const*>::operator[]((this + 16), a2);
      if (*this)
      {
        LHash<char const*,unsigned int>::remove((v4 + 8), *this, 0);
        *Array<char const*>::operator[](v2, a2) = 0;
        LHash<unsigned int,float>::remove((v4 + 48), a2, 0);
        this = LHash<unsigned int,float>::remove((v4 + 56), a2, 0);
        if (*(v4 + 68) == a2)
        {
          *(v4 + 68) = -1;
        }

        if (*(v4 + 72) == a2)
        {
          *(v4 + 72) = -1;
        }

        if (*(v4 + 64) == a2)
        {
          *(v4 + 64) = -1;
        }

        if (*(v4 + 76) == a2)
        {
          *(v4 + 76) = -1;
        }
      }
    }
  }

  return this;
}

uint64_t Vocab::getWords(Vocab *this, const unsigned int *a2, const char **a3, unsigned int a4)
{
  if (!a4)
  {
    return 0;
  }

  v7 = 0;
  v8 = a4;
  while (a2[v7] != -1)
  {
    a3[v7++] = (*(*this + 32))(this);
    if (v8 == v7)
    {
      return v8;
    }
  }

  a3[v7] = 0;
  return v7;
}

uint64_t Vocab::addWords(Vocab *this, const char *const *a2, unsigned int *a3, unsigned int a4)
{
  if (!a4)
  {
    return 0;
  }

  v7 = 0;
  v8 = a4;
  while (a2[v7])
  {
    a3[v7++] = (*(*this + 16))(this);
    if (v8 == v7)
    {
      return v8;
    }
  }

  a3[v7] = -1;
  return v7;
}

unint64_t Vocab::addWords(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned int a4)
{
  if (!a4)
  {
    return 0;
  }

  v7 = 0;
  v8 = 23;
  v9 = a4;
  while (1)
  {
    v10 = *a2;
    if (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3) <= v7)
    {
      break;
    }

    v11 = (v10 + v8 - 23);
    if (*(v10 + v8) < 0)
    {
      v11 = *v11;
    }

    *(a3 + 4 * v7++) = (*(*a1 + 16))(a1, v11);
    v8 += 24;
    if (v9 == v7)
    {
      return v9;
    }
  }

  *(a3 + 4 * v7) = -1;
  return v7;
}

uint64_t Vocab::getIndices(Vocab *this, const char *const *a2, unsigned int *a3, unsigned int a4, uint64_t a5)
{
  if (!a4)
  {
    return 0;
  }

  v9 = 0;
  v10 = a4;
  while (1)
  {
    v11 = a2[v9];
    if (!v11)
    {
      break;
    }

    a3[v9++] = (*(*this + 40))(this, v11, a5);
    if (v10 == v9)
    {
      return v10;
    }
  }

  a3[v9] = -1;
  return v9;
}

unint64_t Vocab::getIndices(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  if (!a4)
  {
    return 0;
  }

  v9 = 0;
  v10 = 23;
  v11 = a4;
  while (1)
  {
    v12 = *a2;
    if (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3) <= v9)
    {
      break;
    }

    v13 = (v12 + v10 - 23);
    if (*(v12 + v10) < 0)
    {
      v13 = *v13;
    }

    *(a3 + 4 * v9++) = (*(*a1 + 40))(a1, v13, a5);
    v10 += 24;
    if (v11 == v9)
    {
      return v11;
    }
  }

  *(a3 + 4 * v9) = -1;
  return v9;
}

uint64_t Vocab::checkWords(Vocab *this, const char *const *a2, unsigned int *a3, unsigned int a4)
{
  if (!a4)
  {
    return 1;
  }

  v7 = a4;
  while (1)
  {
    if (!*a2)
    {
      *a3 = -1;
      return 1;
    }

    v8 = (*(*this + 40))(this, *a2, *(this + 16));
    *a3 = v8;
    if (v8 == *(this + 16))
    {
      break;
    }

    ++a3;
    ++a2;
    if (!--v7)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t Vocab::convertSymbols(uint64_t a1, int **a2, int *a3, unsigned int a4, char a5)
{
  v5 = *a2;
  v6 = a2[1] - *a2;
  v7 = 50000;
  v8 = a3;
  v9 = v6;
  while (v9)
  {
    v10 = *v5;
    *v8 = *v5;
    if (v10 == *(a1 + 64) && (a5 & 1) != 0)
    {
      return 0;
    }

    --v9;
    ++v8;
    ++v5;
    if (!--v7)
    {
      LODWORD(v6) = 50000;
      break;
    }
  }

  if (v6 < a4)
  {
    a3[v6] = -1;
  }

  return 1;
}

uint64_t Vocab::parseWords(Vocab *this, char *a2, const char **a3, char **a4)
{
  v4 = a3;
  *v10 = 0;
  v6 = MStringTokUtil::strtok_r(this, wordSeparators, v10, a4);
  if (v4 && v6)
  {
    v8 = 0;
    do
    {
      *&a2[8 * v8++] = v6;
      v6 = MStringTokUtil::strtok_r(0, wordSeparators, v10, v7);
    }

    while (v8 < v4 && v6);
    if (v8 >= v4)
    {
      return v8;
    }
  }

  else
  {
    v8 = 0;
    result = 0;
    if (!v4)
    {
      return result;
    }
  }

  *&a2[8 * v8] = 0;
  return v8;
}

uint64_t Vocab::length(uint64_t this, const unsigned int *a2)
{
  v2 = this;
  LODWORD(this) = -1;
  do
  {
    this = (this + 1);
  }

  while (*(v2 + 4 * this) != -1);
  return this;
}

uint64_t Vocab::length(uint64_t this, const char *const *a2)
{
  v2 = this;
  LODWORD(this) = -1;
  do
  {
    this = (this + 1);
  }

  while (*(v2 + 8 * this));
  return this;
}

uint64_t Vocab::copy(uint64_t this, unsigned int *a2, const unsigned int *a3)
{
  v3 = *a2;
  if (*a2 == -1)
  {
    v4 = 0;
  }

  else
  {
    v4 = 0;
    v5 = 1;
    do
    {
      *(this + 4 * v4) = v3;
      v4 = v5;
      v3 = a2[v5++];
    }

    while (v3 != -1);
  }

  *(this + 4 * v4) = -1;
  return this;
}

uint64_t Vocab::copy(uint64_t this, const char **a2, const char *const *a3)
{
  v3 = *a2;
  if (*a2)
  {
    v4 = 0;
    v5 = 1;
    do
    {
      *(this + 8 * v4) = v3;
      v4 = v5;
      v3 = a2[v5++];
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *(this + 8 * v4) = 0;
  return this;
}

uint64_t Vocab::contains(Vocab *this, const unsigned int *a2)
{
  v2 = *this;
  if (*this == -1)
  {
    return 0;
  }

  v3 = 1;
  while (v2 != a2)
  {
    v2 = *(this + v3++);
    if (v2 == -1)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t Vocab::reverse(uint64_t this, unsigned int *a2)
{
  LODWORD(v2) = -2;
  do
  {
    v3 = *(this + 4 * (v2 + 2));
    LODWORD(v2) = v2 + 1;
  }

  while (v3 != -1);
  if (v2 >= 1)
  {
    v4 = 0;
    v2 = v2;
    do
    {
      v5 = *(this + 4 * v4);
      *(this + 4 * v4) = *(this + 4 * v2);
      *(this + 4 * v2) = v5;
      ++v4;
      --v2;
    }

    while (v4 < v2);
  }

  return this;
}

uint64_t Vocab::reverse(uint64_t this, const char **a2)
{
  LODWORD(v2) = -2;
  do
  {
    v3 = *(this + 8 * (v2 + 2));
    LODWORD(v2) = v2 + 1;
  }

  while (v3);
  if (v2 >= 1)
  {
    v4 = 0;
    v2 = v2;
    do
    {
      v5 = *(this + 8 * v4);
      *(this + 8 * v4) = *(this + 8 * v2);
      *(this + 8 * v2) = v5;
      ++v4;
      --v2;
    }

    while (v4 < v2);
  }

  return this;
}

File *Vocab::write(File *this, const char **a2, const char *const *a3)
{
  v3 = *a2;
  if (*a2)
  {
    v5 = this;
    v6 = 1;
    do
    {
      if (v6 == 1)
      {
        v7 = "";
      }

      else
      {
        v7 = " ";
      }

      this = File::fprintf(v5, "%s%s", v7, v3);
      v3 = a2[v6++];
    }

    while (v3);
  }

  return this;
}

void *operator<<(void *a1, const char **a2)
{
  if (*a2)
  {
    v4 = 1;
    v5 = a2;
    do
    {
      if (v4 == 1)
      {
        v6 = "";
      }

      else
      {
        v6 = " ";
      }

      v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v6, v4 != 1);
      v8 = *v5;
      v9 = strlen(v8);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v8, v9);
      v5 = &a2[v4++];
    }

    while (*v5);
  }

  return a1;
}

void *operator<<(void *a1, _DWORD *a2)
{
  v4 = Vocab::outputVocabTLS();
  v5 = *v4;
  if (!*v4)
  {
    v6 = v4;
    v5 = malloc_type_calloc(1uLL, 8uLL, 0x2004093837F09uLL);
    *v6 = v5;
  }

  if (*a2 != -1)
  {
    v7 = 1;
    do
    {
      v8 = (*(**v5 + 32))();
      if (v7 == 1)
      {
        v9 = "";
      }

      else
      {
        v9 = " ";
      }

      v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v9, v7 != 1);
      if (!v8)
      {
        v8 = "UNKNOWN";
      }

      v11 = strlen(v8);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, v8, v11);
      v12 = a2[v7++];
    }

    while (v12 != -1);
  }

  return a1;
}

uint64_t Vocab::compare(Vocab *this, uint64_t a2)
{
  v4 = Vocab::compareVocabTLS();
  v5 = *v4;
  if (!*v4)
  {
    v6 = v4;
    v5 = malloc_type_calloc(1uLL, 8uLL, 0x2004093837F09uLL);
    *v6 = v5;
  }

  if (!*v5)
  {
    return (a2 - this);
  }

  v7 = (*(**v5 + 32))(*v5, this);
  v8 = (*(**v5 + 32))(*v5, a2);

  return strcmp(v7, v8);
}

uint64_t Vocab::compare(Vocab *this, const unsigned int *a2, const unsigned int *a3)
{
  v5 = *this;
  if (v5 == -1)
  {
    v6 = 0;
LABEL_8:
    if (a2[v6] == -1)
    {
      return 0;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    v6 = 0;
    v7 = 1;
    while (1)
    {
      v8 = a2[v6];
      if (v8 == -1)
      {
        return 1;
      }

      result = Vocab::compare(v5, v8);
      if (result)
      {
        return result;
      }

      v6 = v7;
      v5 = *(this + v7++);
      if (v5 == -1)
      {
        goto LABEL_8;
      }
    }
  }
}

uint64_t (*Vocab::compareIndex(Vocab *this))(Vocab *this, uint64_t a2)
{
  v2 = Vocab::compareVocabTLS();
  v3 = *v2;
  if (!*v2)
  {
    v3 = malloc_type_calloc(1uLL, 8uLL, 0x2004093837F09uLL);
    *v2 = v3;
  }

  *v3 = this;
  return Vocab::compare;
}

uint64_t (*Vocab::compareIndices(Vocab *this))(Vocab *this, const unsigned int *a2, const unsigned int *a3)
{
  v2 = Vocab::compareVocabTLS();
  v3 = *v2;
  if (!*v2)
  {
    v3 = malloc_type_calloc(1uLL, 8uLL, 0x2004093837F09uLL);
    *v2 = v3;
  }

  *v3 = this;
  return Vocab::compare;
}

uint64_t Vocab::write(Vocab *this, File *a2, int a3)
{
  if (a3)
  {
    v4 = MEMORY[0x1E69E9918];
  }

  else
  {
    v4 = 0;
  }

  LHashIter<char const*,unsigned int>::LHashIter(v6, this + 1, v4);
  while (!File::error(a2))
  {
    v8 = 0;
    if (!LHashIter<char const*,unsigned int>::next(v6, &v8) || !v8)
    {
      break;
    }

    File::fprintf(a2, "%s\n", v8);
  }

  result = v7;
  if (v7)
  {
    return MEMORY[0x1B8C85310](v7, 0x50C80EE9192B6);
  }

  return result;
}

void sub_1B570FF30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (a13)
  {
    MEMORY[0x1B8C85310](a13, 0x50C80EE9192B6);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Vocab::read(Vocab *this, File *a2)
{
  v4 = File::getline(a2);
  v6 = 0;
  if (v4)
  {
    v7 = MEMORY[0x1E69E5300];
    do
    {
      *v14 = 0;
      v8 = MStringTokUtil::strtok_r(v4, wordSeparators, v14, v5);
      if ((*(*this + 16))(this, v8) == -1)
      {
        v9 = File::position(a2, v7);
        v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "warning: failed to add ", 23);
        v11 = strlen(v8);
        v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, v8, v11);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " to vocabulary\n", 15);
      }

      else
      {
        v6 = (v6 + 1);
      }

      v4 = File::getline(a2);
    }

    while (v4);
  }

  return v6;
}

uint64_t Vocab::readAliases(Vocab *this, File *a2)
{
  v4 = File::getline(a2);
  v6 = 0;
  if (v4)
  {
    v7 = MEMORY[0x1E69E5300];
    while (1)
    {
      *v25 = 0;
      v8 = MStringTokUtil::strtok_r(v4, wordSeparators, v25, v5);
      v10 = MStringTokUtil::strtok_r(0, wordSeparators, v25, v9);
      if (!v10)
      {
        break;
      }

      v11 = v10;
      v12 = (*(*this + 16))(this, v10);
      if (v12 == -1)
      {
        v16 = File::position(a2, v7);
        v17 = "warning: failed to add ";
        v18 = 23;
        goto LABEL_10;
      }

      if ((*(*this + 24))(this, v12, v8) == -1)
      {
        v19 = File::position(a2, v7);
        v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "warning: failed to add alias ", 29);
        v21 = strlen(v8);
        v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, v8, v21);
        v17 = " for word ";
        v18 = 10;
LABEL_10:
        v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, v17, v18);
        v23 = strlen(v11);
        v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, v11, v23);
        v14 = " to vocabulary\n";
        v15 = 15;
LABEL_11:
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v14, v15);
        goto LABEL_12;
      }

      v6 = (v6 + 1);
LABEL_12:
      v4 = File::getline(a2);
      if (!v4)
      {
        return v6;
      }
    }

    v13 = File::position(a2, v7);
    v14 = "warning: line contains only one token\n";
    v15 = 38;
    goto LABEL_11;
  }

  return v6;
}

uint64_t Vocab::ngramsInRange(Vocab *this, const char **a2, const char **a3)
{
  v4 = a2;
  if (a2)
  {
LABEL_2:
    if (*v4)
    {
      goto LABEL_3;
    }

    return 1;
  }

  else
  {
LABEL_3:
    while (a3)
    {
      if (!*a3)
      {
        return 1;
      }

      if (!v4)
      {
        goto LABEL_14;
      }

      v6 = *v4;
      if (strcmp(*v4, *a3) || (*(*this + 40))(this, v6, 0xFFFFFFFFLL) == -1)
      {
        goto LABEL_11;
      }

      ++v4;
      ++a3;
      if (v4)
      {
        goto LABEL_2;
      }
    }

    if (!v4)
    {
      a3 = 0;
      goto LABEL_18;
    }

LABEL_11:
    if ((*(*this + 40))(this, *v4, 0xFFFFFFFFLL) != -1 && Vocab::ngramsInRange(this, v4 + 1, 0))
    {
      return 1;
    }

    if (a3)
    {
LABEL_14:
      if ((*(*this + 40))(this, *a3, 0xFFFFFFFFLL) != -1 && Vocab::ngramsInRange(this, 0, a3 + 1))
      {
        return 1;
      }
    }

LABEL_18:
    LHashIter<char const*,unsigned int>::LHashIter(v10, this + 1, 0);
    while (1)
    {
      __s2 = 0;
      v7 = 0;
      if (!LHashIter<char const*,unsigned int>::next(v10, &__s2))
      {
        break;
      }

      v8 = __s2;
      if (!__s2)
      {
        break;
      }

      if ((!v4 || strcmp(*v4, __s2) < 0) && (!a3 || strcmp(v8, *a3) < 0))
      {
        v7 = 1;
        break;
      }
    }

    if (v11)
    {
      MEMORY[0x1B8C85310](v11, 0x50C80EE9192B6);
    }
  }

  return v7;
}

void sub_1B5710424(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (a13)
  {
    MEMORY[0x1B8C85310](a13, 0x50C80EE9192B6);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Vocab::writeIndexMap(Vocab *this, File *a2, int a3)
{
  v4 = (this + 16);
  v5 = *(this + 4);
  if (v5 < *(this + 10))
  {
    do
    {
      if (*Array<char const*>::operator[](v4, v5))
      {
        if (!a3)
        {
          v8 = v5;
LABEL_7:
          v9 = Array<char const*>::operator[](v4, v5);
          File::fprintf(a2, "%u %s\n", v8, *v9);
          goto LABEL_8;
        }

        v8 = v5;
        if (!(*(*this + 224))(this, v5))
        {
          goto LABEL_7;
        }
      }

LABEL_8:
      ++v5;
    }

    while (v5 < *(this + 10));
  }

  return File::fprintf(a2, ".\n");
}

uint64_t Vocab::readIndexMap(uint64_t *a1, File *this, int *a3, int a4)
{
  for (i = File::getline(this); i; i = File::getline(this))
  {
    v20 = 0;
    *v21 = 0;
    v10 = MStringTokUtil::strtok_r(i, wordSeparators, v21, v9);
    v12 = MStringTokUtil::strtok_r(0, wordSeparators, v21, v11);
    v13 = v12;
    if (*v10 == 46 && !*(v10 + 1) && v12 == 0)
    {
      break;
    }

    if (sscanf(v10, "%u", &v20) != 1 || v13 == 0)
    {
      v19 = File::position(this, MEMORY[0x1E69E5300]);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "malformed vocab index line\n", 27);
      return 0;
    }

    v16 = *a1;
    if (a4)
    {
      v17 = (*(v16 + 40))(a1, v13, 0xFFFFFFFFLL);
    }

    else
    {
      v17 = (*(v16 + 16))(a1, v13);
    }

    *Array<unsigned int>::operator[](a3, v20) = v17;
  }

  return 1;
}

unsigned int *VocabIter::next(VocabIter *this, unsigned int *a2)
{
  v4 = 0;
  result = LHashIter<char const*,unsigned int>::next(this, &v4);
  if (result)
  {
    *a2 = *result;
    return v4;
  }

  return result;
}

void *kaldi::VectorBase<double>::CopyFromVec(uint64_t a1, const void **a2)
{
  result = *a1;
  v4 = *a2;
  if (result != v4)
  {
    return memcpy(result, v4, 8 * *(a1 + 8));
  }

  return result;
}

double kaldi::VectorBase<double>::CopyFromVec<float>(uint64_t a1, float **a2)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = *a1;
    v4 = *a2;
    do
    {
      v5 = *v4++;
      result = v5;
      *v3++ = v5;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t kaldi::VectorBase<float>::CopyRowsFromMat<signed char>(uint64_t *a1, float *a2)
{
  kaldi::QuantizedMatrixBase<short>::NumCols(a2);
  kaldi::quasar::Vocab::VocabSize(a2);
  v4 = *a1;
  v5 = kaldi::QuantizedMatrixBase<short>::NumCols(a2);
  result = kaldi::quasar::Vocab::VocabSize(a2);
  if (result >= 1)
  {
    v7 = result;
    for (i = 0; i != v7; ++i)
    {
      if (v5 >= 1)
      {
        for (j = 0; j != v5; ++j)
        {
          v10 = kaldi::QuantizedMatrixBase<signed char>::Data(a2);
          result = kaldi::QuantizedMatrixBase<short>::NumCols(a2);
          *(v4 + 4 * j) = *(v10 + i * result + j) / a2[3];
        }
      }

      v4 += 4 * v5;
    }
  }

  return result;
}

uint64_t kaldi::VectorBase<float>::CopyRowsFromMat<short>(uint64_t *a1, float *a2)
{
  kaldi::QuantizedMatrixBase<short>::NumCols(a2);
  kaldi::quasar::Vocab::VocabSize(a2);
  v4 = *a1;
  v5 = kaldi::QuantizedMatrixBase<short>::NumCols(a2);
  result = kaldi::quasar::Vocab::VocabSize(a2);
  if (result >= 1)
  {
    v7 = result;
    for (i = 0; i != v7; ++i)
    {
      if (v5 >= 1)
      {
        for (j = 0; j != v5; ++j)
        {
          v10 = kaldi::QuantizedMatrixBase<signed char>::Data(a2);
          result = kaldi::QuantizedMatrixBase<short>::NumCols(a2);
          *(v4 + 4 * j) = *(v10 + 2 * i * result + 2 * j) / a2[3];
        }
      }

      v4 += 4 * v5;
    }
  }

  return result;
}

float kaldi::VectorBase<float>::CopyColFromMat<float>(uint64_t *a1, uint64_t a2, int a3)
{
  kaldi::MatrixBase<float>::NumCols(a2);
  kaldi::MatrixBase<float>::NumRows(a2);
  v7 = *(a1 + 2);
  if (v7 >= 1)
  {
    v8 = 0;
    v9 = (*a2 + 4 * a3);
    v10 = *a1;
    v11 = 4 * *(a2 + 16);
    do
    {
      result = *v9;
      *(v10 + 4 * v8++) = *v9;
      v9 = (v9 + v11);
    }

    while (v7 != v8);
  }

  return result;
}

float kaldi::VectorBase<float>::AddVec<double>(uint64_t a1, double **a2, double a3)
{
  v3 = *(a1 + 8);
  v4 = *a1;
  v5 = *a2;
  if (*&a3 == 1.0)
  {
    if (v3 >= 1)
    {
      do
      {
        v8 = *v5++;
        *&a3 = v8 + *v4;
        *v4++ = *&a3;
        --v3;
      }

      while (v3);
    }
  }

  else if (v3 >= 1)
  {
    a3 = *&a3;
    do
    {
      v6 = *v5++;
      v7 = *v4 + a3 * v6;
      *v4++ = v7;
      --v3;
    }

    while (v3);
  }

  return *&a3;
}

double kaldi::VectorBase<double>::AddVec<float>(uint64_t a1, float **a2, double result)
{
  v3 = *(a1 + 8);
  v4 = *a1;
  v5 = *a2;
  if (result == 1.0)
  {
    if (v3 >= 1)
    {
      do
      {
        v7 = *v5++;
        result = *v4 + v7;
        *v4++ = result;
        --v3;
      }

      while (v3);
    }
  }

  else if (v3 >= 1)
  {
    do
    {
      v6 = *v5++;
      *v4 = *v4 + result * v6;
      ++v4;
      --v3;
    }

    while (v3);
  }

  return result;
}

double kaldi::VectorBase<double>::AddVec2<float>(uint64_t a1, float **a2, double result)
{
  v3 = *(a1 + 8);
  v4 = *a1;
  v5 = *a2;
  if (result == 1.0)
  {
    if (v3 >= 1)
    {
      do
      {
        v7 = *v5++;
        result = *v4 + (v7 * v7);
        *v4++ = result;
        --v3;
      }

      while (v3);
    }
  }

  else if (v3 >= 1)
  {
    do
    {
      v6 = *v5++;
      *v4 = *v4 + v6 * result * v6;
      ++v4;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t kaldi::VectorBase<float>::AddMatVec(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 != 111 || kaldi::MatrixBase<float>::NumCols(a2) != *(a4 + 8) || kaldi::MatrixBase<float>::NumRows(a2) != *(a1 + 8))
  {
    kaldi::MatrixBase<float>::NumRows(a2);
    kaldi::MatrixBase<float>::NumCols(a2);
  }

  kaldi::MatrixBase<float>::NumRows(a2);
  kaldi::MatrixBase<float>::NumCols(a2);
  fst::LeftContextDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> *>::Start(a2);
  return cblas_sgemv_NEWLAPACK_ILP64();
}

uint64_t kaldi::Vector<float>::Vector(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  kaldi::Vector<float>::Resize(a1, *(a2 + 8), 1);
  if (*a1 != *a2)
  {
    memcpy(*a1, *a2, 4 * *(a1 + 8));
  }

  return a1;
}

uint64_t *kaldi::Vector<float>::Swap(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *result = *a2;
  *a2 = v2;
  LODWORD(v2) = *(result + 2);
  *(result + 2) = *(a2 + 2);
  *(a2 + 2) = v2;
  LODWORD(v2) = *(result + 3);
  *(result + 3) = *(a2 + 3);
  *(a2 + 3) = v2;
  return result;
}

unsigned int *kaldi::VectorBase<float>::Set(unsigned int *result, int16x4_t a2)
{
  v2 = result[2];
  if (v2 >= 1)
  {
    v3 = (v2 + 3) & 0xFFFFFFFC;
    v4 = vdupq_n_s64(v2 - 1);
    v5 = xmmword_1B5AE0050;
    v6 = xmmword_1B5AE0060;
    v7 = (*result + 8);
    v8 = vdupq_n_s64(4uLL);
    do
    {
      v9 = vmovn_s64(vcgeq_u64(v4, v6));
      if (vuzp1_s16(v9, a2).u8[0])
      {
        *(v7 - 2) = a2.i32[0];
      }

      if (vuzp1_s16(v9, a2).i8[2])
      {
        *(v7 - 1) = a2.i32[0];
      }

      if (vuzp1_s16(a2, vmovn_s64(vcgeq_u64(v4, *&v5))).i32[1])
      {
        *v7 = a2.i32[0];
        v7[1] = a2.i32[0];
      }

      v5 = vaddq_s64(v5, v8);
      v6 = vaddq_s64(v6, v8);
      v7 += 4;
      v3 -= 4;
    }

    while (v3);
  }

  return result;
}

void kaldi::VectorBase<float>::SetRandn(uint64_t a1)
{
  v7 = kaldi::Rand(0);
  if (*(a1 + 8) >= 1)
  {
    v2 = 0;
    do
    {
      v3 = (kaldi::Rand(&v7) + 1.0) / 2147483650.0;
      v4 = sqrtf(logf(v3) * -2.0);
      v5 = (kaldi::Rand(&v7) + 1.0) / 2147483650.0;
      v6 = v5 * 6.28318531;
      *(*a1 + 4 * v2++) = v4 * cosf(v6);
    }

    while (v2 < *(a1 + 8));
  }
}

uint64_t kaldi::VectorBase<float>::Min(uint64_t result, double a2)
{
  v2 = *(result + 8);
  if (!v2)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v9);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v9, "Empty vector");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v9);
  }

  v3 = *result;
  if (v2 >= 4)
  {
    LODWORD(v4) = v2 & 0x7FFFFFFC;
    LODWORD(a2) = 2139095040;
    v5 = 4;
    v6 = *result;
    do
    {
      v7 = *v6;
      if (vmaxv_u16(vmovn_s32(vcgtq_f32(vdupq_lane_s32(*&a2, 0), *v6))))
      {
        LODWORD(v8) = HIDWORD(v6->i64[0]);
        if (v7.f32[0] < v7.f32[1])
        {
          LODWORD(v8) = *v6->f32;
        }

        v7.i32[0] = HIDWORD(*v6);
        if (v7.f32[2] < v7.f32[3])
        {
          v7.i32[0] = v6->i64[1];
        }

        if (v8 < *&a2)
        {
          *&a2 = v8;
        }

        if (v7.f32[0] < *&a2)
        {
          *&a2 = v7.f32[0];
        }
      }

      v5 += 4;
      ++v6;
    }

    while (v5 <= v2);
  }

  else
  {
    LODWORD(v4) = 0;
    LODWORD(a2) = 2139095040;
  }

  if (v4 < v2)
  {
    v4 = v4;
    do
    {
      if (v3->f32[v4] < *&a2)
      {
        LODWORD(a2) = v3->i32[v4];
      }

      ++v4;
    }

    while (v2 > v4);
  }

  return result;
}

float kaldi::VectorBase<float>::ReverseCopyFromVec(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = *a1;
    v4 = *a2 - 4;
    v5 = 4 * v2;
    do
    {
      result = *(v4 + v5);
      *v3++ = result;
      v5 -= 4;
    }

    while (v5);
  }

  return result;
}

uint64_t kaldi::VectorBase<float>::ApplyCeiling(uint64_t a1, float a2)
{
  v2 = *(a1 + 8);
  if (v2 < 1)
  {
    return 0;
  }

  result = 0;
  v5 = *a1;
  do
  {
    if (*v5 > a2)
    {
      *v5 = a2;
      result = (result + 1);
    }

    ++v5;
    --v2;
  }

  while (v2);
  return result;
}

void kaldi::VectorBase<float>::ApplyPowAbs(uint64_t a1, int a2, float a3)
{
  if (a3 == 1.0)
  {
    v5 = *(a1 + 8);
    if (v5 >= 1)
    {
      v6 = *a1;
      do
      {
        v7 = fabsf(*v6);
        if ((a2 & (*v6 < 0.0)) != 0)
        {
          v7 = -v7;
        }

        *v6++ = v7;
        --v5;
      }

      while (v5);
    }
  }

  if (a3 == 2.0)
  {
    v8 = *(a1 + 8);
    if (v8 >= 1)
    {
      v9 = *a1;
      do
      {
        v10 = -*v9;
        if ((a2 & (*v9 < 0.0)) == 0)
        {
          v10 = *v9;
        }

        *v9 = *v9 * v10;
        ++v9;
        --v8;
      }

      while (v8);
    }
  }

  else
  {
    if (a3 != 0.5)
    {
      v14 = *(a1 + 8);
      if (a3 >= 0.0)
      {
        if (v14 < 1)
        {
          return;
        }

        v15 = 0;
        v19 = *a1;
        while (1)
        {
          v20 = v19[v15];
          v21 = v20 < 0.0;
          v22 = powf(fabsf(v20), a3);
          if ((a2 & v21) != 0)
          {
            v22 = -v22;
          }

          v19[v15] = v22;
          if (v22 == INFINITY)
          {
            break;
          }

          if (v14 == ++v15)
          {
            return;
          }
        }
      }

      else
      {
        if (v14 < 1)
        {
          return;
        }

        v15 = 0;
        v16 = *a1;
        while (1)
        {
          v17 = v16[v15];
          v18 = 0.0;
          if (v17 != 0.0)
          {
            v18 = powf(fabsf(v17), a3);
          }

          if (((v18 < 0.0) & a2) != 0)
          {
            v18 = -v18;
          }

          v16[v15] = v18;
          if (v18 == INFINITY)
          {
            break;
          }

          if (v14 == ++v15)
          {
            return;
          }
        }
      }

      kaldi::KaldiWarnMessage::KaldiWarnMessage(v26);
      v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, "Could not raise element ", 24);
      v24 = MEMORY[0x1B8C84C00](v23, v15);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, "to power ", 9);
      v25 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, ": returned value = ", 19);
      std::ostream::operator<<();
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v26);
    }

    v11 = *(a1 + 8);
    if (v11 >= 1)
    {
      v12 = *a1;
      do
      {
        v13 = sqrtf(fabsf(*v12));
        if ((a2 & (*v12 < 0.0)) != 0)
        {
          v13 = -v13;
        }

        *v12++ = v13;
        --v11;
      }

      while (v11);
    }
  }
}

double kaldi::VectorBase<float>::Norm(uint64_t a1, float a2)
{
  if (a2 == 0.0)
  {
    v3 = *(a1 + 8);
    if (v3 < 1)
    {
      return 0.0;
    }

    else
    {
      v4 = *a1;
      result = 0.0;
      do
      {
        v6 = *v4++;
        if (v6 != 0.0)
        {
          *&result = *&result + 1.0;
        }

        --v3;
      }

      while (v3);
    }
  }

  else if (a2 == 1.0)
  {
    v8 = *(a1 + 8);
    v9 = *a1;

    MEMORY[0x1EEDB0E18](v8, v9, 1);
  }

  else
  {
    v10 = *(a1 + 8);
    if (a2 == 2.0)
    {
      v11 = *a1;

      MEMORY[0x1EEDB0EF0](v10, v11, 1);
    }

    else if (v10 <= 0)
    {

      *&result = powf(0.0, 1.0 / a2);
    }

    else
    {
      v12 = *a1;
      v13 = 1;
      v14 = 0.0;
      do
      {
        v15 = *v12++;
        v16 = powf(fabsf(v15), a2);
        v13 &= v16 != INFINITY;
        v14 = v14 + v16;
        --v10;
      }

      while (v10);
      *&result = powf(v14, 1.0 / a2);
      if ((v13 & 1) == 0)
      {
        kaldi::VectorBase<float>::Max(a1, result);
        v18 = *&v17;
        kaldi::VectorBase<float>::Min(a1, v17);
        v20 = -v19;
        if (v18 < v20)
        {
          v18 = v20;
        }

        kaldi::Vector<float>::Vector(&v22, a1);
        cblas_sscal_NEWLAPACK_ILP64();
        v21 = kaldi::VectorBase<float>::Norm(&v22, a2);
        if (v22)
        {
          free(v22);
        }

        *&result = v18 * v21;
      }
    }
  }

  return result;
}

void sub_1B571155C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
    free(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::VectorBase<float>::InvertElements(uint64_t result)
{
  v1 = *(result + 8);
  if (v1 >= 1)
  {
    v2 = *result;
    do
    {
      *v2 = 1.0 / *v2;
      ++v2;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t kaldi::VectorBase<float>::ReplaceValue(uint64_t result, float a2, float a3)
{
  v3 = *(result + 8);
  if (v3 >= 1)
  {
    v4 = *result;
    do
    {
      if (*v4 == a2)
      {
        *v4 = a3;
      }

      ++v4;
      --v3;
    }

    while (v3);
  }

  return result;
}

float kaldi::VectorBase<float>::DivElements(uint64_t a1, float **a2)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = *a2;
    v4 = *a1;
    do
    {
      v5 = *v3++;
      result = *v4 / v5;
      *v4++ = result;
      --v2;
    }

    while (v2);
  }

  return result;
}

void kaldi::VectorBase<float>::CopyRowsFromMat(uint64_t a1, uint64_t *a2)
{
  kaldi::SubMatrix<float>::SubMatrix(v3, *a1, 1, *(a1 + 8), *(a1 + 8));
  kaldi::CompressedMatrix::CopyToMat<float>(a2, v3);
  quasar::Bitmap::~Bitmap(v3);
}

uint64_t kaldi::VectorBase<float>::Max(uint64_t result, _DWORD *a2, double a3)
{
  v3 = *(result + 8);
  if (!v3)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v12);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v12, "Empty vector");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v12);
  }

  v4 = *result;
  if (v3 >= 4)
  {
    v7 = 0;
    v6 = 0;
    LODWORD(v5) = v3 & 0x7FFFFFFC;
    LODWORD(a3) = -8388608;
    v8 = *result;
    do
    {
      v9 = *v8;
      v10 = vmovn_s32(vcgtq_f32(*v8, vdupq_lane_s32(*&a3, 0)));
      if (vmaxv_u16(v10))
      {
        if (v10.i8[0])
        {
          v6 = v7;
          LODWORD(a3) = *v8;
        }

        if (v9.f32[1] > *&a3)
        {
          v6 = v7 + 1;
          LODWORD(a3) = HIDWORD(v8->i64[0]);
        }

        if (v9.f32[2] > *&a3)
        {
          v6 = v7 + 2;
          LODWORD(a3) = v8->i64[1];
        }

        if (v9.f32[3] > *&a3)
        {
          v6 = v7 + 3;
          LODWORD(a3) = HIDWORD(*v8);
        }
      }

      v11 = v7 + 8;
      v7 += 4;
      ++v8;
    }

    while (v11 <= v3);
  }

  else
  {
    LODWORD(v5) = 0;
    v6 = 0;
    LODWORD(a3) = -8388608;
  }

  if (v5 < v3)
  {
    v5 = v5;
    do
    {
      if (v4->f32[v5] > *&a3)
      {
        v6 = v5;
        LODWORD(a3) = v4->i32[v5];
      }

      ++v5;
    }

    while (v3 > v5);
  }

  *a2 = v6;
  return result;
}

uint64_t kaldi::VectorBase<float>::Min(uint64_t result, _DWORD *a2, double a3)
{
  v3 = *(result + 8);
  if (!v3)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v12);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v12, "Empty vector");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v12);
  }

  v4 = *result;
  if (v3 >= 4)
  {
    v7 = 0;
    v6 = 0;
    LODWORD(v5) = v3 & 0x7FFFFFFC;
    LODWORD(a3) = 2139095040;
    v8 = *result;
    do
    {
      v9 = *v8;
      v10 = vmovn_s32(vcgtq_f32(vdupq_lane_s32(*&a3, 0), *v8));
      if (vmaxv_u16(v10))
      {
        if (v10.i8[0])
        {
          v6 = v7;
          LODWORD(a3) = *v8;
        }

        if (v9.f32[1] < *&a3)
        {
          v6 = v7 + 1;
          LODWORD(a3) = HIDWORD(v8->i64[0]);
        }

        if (v9.f32[2] < *&a3)
        {
          v6 = v7 + 2;
          LODWORD(a3) = v8->i64[1];
        }

        if (v9.f32[3] < *&a3)
        {
          v6 = v7 + 3;
          LODWORD(a3) = HIDWORD(*v8);
        }
      }

      v11 = v7 + 8;
      v7 += 4;
      ++v8;
    }

    while (v11 <= v3);
  }

  else
  {
    LODWORD(v5) = 0;
    v6 = 0;
    LODWORD(a3) = 2139095040;
  }

  if (v5 < v3)
  {
    v5 = v5;
    do
    {
      if (v4->f32[v5] < *&a3)
      {
        v6 = v5;
        LODWORD(a3) = v4->i32[v5];
      }

      ++v5;
    }

    while (v3 > v5);
  }

  *a2 = v6;
  return result;
}

uint64_t kaldi::VectorBase<float>::CountZeros(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 < 1)
  {
    return 0;
  }

  v2 = *a1;
  v3 = 0.0;
  do
  {
    v4 = *v2++;
    if (v4 == 0.0)
    {
      v3 = v3 + 1.0;
    }

    --v1;
  }

  while (v1);
  return v3;
}

uint64_t kaldi::VectorBase<float>::AddColSumMat(uint64_t *a1, uint64_t a2, float a3, float a4)
{
  kaldi::MatrixBase<float>::NumRows(a2);
  result = kaldi::MatrixBase<float>::NumCols(a2);
  v9 = *(a1 + 2);
  if (v9 >= 1)
  {
    v10 = 0;
    v11 = *a2;
    v12 = *a1;
    v13 = 4 * *(a2 + 16);
    do
    {
      v14 = 0.0;
      if (result >= 1)
      {
        v15 = result;
        v16 = v11;
        do
        {
          v17 = *v16++;
          v14 = v14 + v17;
          --v15;
        }

        while (v15);
      }

      v18 = (*(v12 + 4 * v10) * a4) + a3 * v14;
      *(v12 + 4 * v10++) = v18;
      v11 = (v11 + v13);
    }

    while (v10 != v9);
  }

  return result;
}

uint64_t kaldi::VectorBase<float>::AddDiagMat2(uint64_t a1, uint64_t *a2, int a3, float a4, float a5)
{
  if (a3 == 111)
  {
    kaldi::MatrixBase<float>::NumRows(a2);
    v9 = *(a1 + 8);
    kaldi::MatrixBase<float>::NumCols(a2);
    result = fst::LeftContextDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> *>::Start(a2);
    if (v9 >= 1)
    {
      v11 = *a2;
      v12 = *a1;
      v13 = 4 * result;
      do
      {
        v14 = *v12;
        result = cblas_sdot_NEWLAPACK_ILP64();
        *v12++ = (v15 * a4) + (a5 * v14);
        v11 += v13;
        --v9;
      }

      while (v9);
    }
  }

  else
  {
    kaldi::MatrixBase<float>::NumCols(a2);
    kaldi::MatrixBase<float>::NumRows(a2);
    v16 = *(a1 + 8);
    result = fst::LeftContextDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> *>::Start(a2);
    if (v16 >= 1)
    {
      v17 = *a2;
      v18 = *a1;
      do
      {
        v19 = *v18;
        result = cblas_sdot_NEWLAPACK_ILP64();
        *v18++ = (v20 * a4) + (a5 * v19);
        v17 += 4;
        --v16;
      }

      while (v16);
    }
  }

  return result;
}

uint64_t kaldi::VectorBase<float>::AddDiagMatMat(uint64_t a1, uint64_t *a2, int a3, uint64_t *a4, int a5, float a6, float a7)
{
  v14 = *(a1 + 8);
  if (a3 == 112)
  {
    kaldi::MatrixBase<float>::NumRows(a2);
  }

  else
  {
    kaldi::MatrixBase<float>::NumCols(a2);
  }

  if (a5 == 112)
  {
    kaldi::MatrixBase<float>::NumCols(a4);
  }

  else
  {
    kaldi::MatrixBase<float>::NumRows(a4);
  }

  v15 = fst::LeftContextDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> *>::Start(a2);
  result = fst::LeftContextDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> *>::Start(a4);
  if (v14 >= 1)
  {
    v17 = *a4;
    v18 = *a2;
    v19 = *a1;
    if (a5 == 112)
    {
      v20 = result;
    }

    else
    {
      v20 = 1;
    }

    if (a3 == 112)
    {
      v21 = 1;
    }

    else
    {
      v21 = v15;
    }

    v22 = 4 * v20;
    v23 = 4 * v21;
    do
    {
      v24 = *v19;
      result = cblas_sdot_NEWLAPACK_ILP64();
      *v19++ = (v25 * a6) + (a7 * v24);
      v17 += v22;
      v18 += v23;
      --v14;
    }

    while (v14);
  }

  return result;
}

void kaldi::VectorBase<float>::Write(uint64_t a1, void *a2, int a3)
{
  if (*(a2 + *(*a2 - 24) + 32))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(__p, "Failed to write vector to stream: stream not good");
    goto LABEL_13;
  }

  if (a3)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "FV");
    kaldi::WriteToken(a2, 1, __p);
    kaldi::WriteBasicType<int>(a2, 1, *(a1 + 8));
    std::ostream::write();
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, " [ ", 3);
    if (*(a1 + 8) >= 1)
    {
      v5 = 0;
      do
      {
        v6 = std::ostream::operator<<();
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, " ", 1);
        ++v5;
      }

      while (v5 < *(a1 + 8));
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "]\n", 2);
  }

  if (*(a2 + *(*a2 - 24) + 32))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(__p, "Failed to write vector to stream");
LABEL_13:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(__p);
  }
}

unsigned int *kaldi::VectorBase<double>::Set(unsigned int *result, double a2)
{
  v2 = result[2];
  if (v2 >= 1)
  {
    v3 = (v2 + 1) & 0xFFFFFFFE;
    v4 = vdupq_n_s64(v2 - 1);
    v5 = xmmword_1B5AE0060;
    v6 = (*result + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = a2;
      }

      if (v8.i8[4])
      {
        *v6 = a2;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

uint64_t kaldi::VectorBase<double>::ApplyFloor(uint64_t a1, double a2)
{
  v2 = *(a1 + 8);
  if (v2 < 1)
  {
    return 0;
  }

  result = 0;
  v5 = *a1;
  do
  {
    if (*v5 < a2)
    {
      *v5 = a2;
      result = (result + 1);
    }

    ++v5;
    --v2;
  }

  while (v2);
  return result;
}

double kaldi::VectorBase<double>::MulElements(uint64_t a1, double **a2)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = *a2;
    v4 = *a1;
    do
    {
      v5 = *v3++;
      result = v5 * *v4;
      *v4++ = result;
      --v2;
    }

    while (v2);
  }

  return result;
}

long double kaldi::VectorBase<double>::ApplySoftMax(uint64_t a1)
{
  kaldi::VectorBase<double>::Max(a1);
  v3 = v2;
  v4 = *(a1 + 8);
  v5 = *a1;
  if (v4 >= 1)
  {
    v6 = *a1;
    v7 = *(a1 + 8);
    do
    {
      *v6 = *v6 - v2;
      ++v6;
      --v7;
    }

    while (v7);
  }

  LODWORD(v12[0]) = v4;
  vvexp(v5, v5, v12);
  v8 = *(a1 + 8);
  if (v8 < 1)
  {
    goto LABEL_9;
  }

  v9 = 0;
  v10 = 0.0;
  do
  {
    v10 = v10 + *(*a1 + v9);
    v9 += 8;
  }

  while (8 * v8 != v9);
  if (v10 == 0.0)
  {
LABEL_9:
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v12);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v12, "SoftMax produced NaN on vector");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v12);
  }

  cblas_dscal_NEWLAPACK_ILP64();
  return v3 + log(v10);
}

uint64_t kaldi::VectorBase<double>::Max(uint64_t result)
{
  v1 = *(result + 8);
  if (!v1)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v10);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v10, "Empty vector");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v10);
  }

  v2 = *result;
  if (v1 >= 4)
  {
    LODWORD(v3) = v1 & 0x7FFFFFFC;
    v4 = -INFINITY;
    v5 = 4;
    v6 = *result;
    do
    {
      v8 = *v6;
      v7 = v6[1];
      v9 = vdupq_lane_s64(*&v4, 0);
      if (vmaxv_u16(vmovn_s32(vuzp1q_s32(vcgtq_f64(*v6, v9), vcgtq_f64(v7, v9)))))
      {
        if (v8.f64[0] <= v8.f64[1])
        {
          v8.f64[0] = v6->f64[1];
        }

        if (v7.f64[0] <= v7.f64[1])
        {
          v7.f64[0] = v6[1].f64[1];
        }

        if (v8.f64[0] > v4)
        {
          v4 = v8.f64[0];
        }

        if (v7.f64[0] > v4)
        {
          v4 = v7.f64[0];
        }
      }

      v5 += 4;
      v6 += 2;
    }

    while (v5 <= v1);
  }

  else
  {
    LODWORD(v3) = 0;
    v4 = -INFINITY;
  }

  if (v3 < v1)
  {
    v3 = v3;
    do
    {
      if (v2->f64[v3] > v4)
      {
        v4 = v2->f64[v3];
      }

      ++v3;
    }

    while (v1 > v3);
  }

  return result;
}

uint64_t kaldi::VectorBase<double>::AddVec2(uint64_t result, double **a2, double a3)
{
  v3 = *(result + 8);
  if (v3 >= 1)
  {
    v4 = *a2;
    v5 = *result;
    do
    {
      v6 = *v4++;
      *v5 = *v5 + v6 * a3 * v6;
      ++v5;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t kaldi::VectorBase<double>::AddRowSumMat(uint64_t a1, uint64_t *a2)
{
  kaldi::MatrixBase<float>::NumCols(a2);
  v3 = kaldi::MatrixBase<float>::NumRows(a2);
  v4 = fst::LeftContextDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> *>::Start(a2);
  result = cblas_dscal_NEWLAPACK_ILP64();
  if (v3 >= 1)
  {
    v6 = *a2;
    v7 = 8 * v4;
    do
    {
      result = cblas_daxpy_NEWLAPACK_ILP64();
      v6 += v7;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t kaldi::VectorBase<double>::AddDiagMat2(uint64_t a1, uint64_t *a2, int a3, double a4, double a5)
{
  if (a3 == 111)
  {
    kaldi::MatrixBase<float>::NumRows(a2);
    v9 = *(a1 + 8);
    kaldi::MatrixBase<float>::NumCols(a2);
    result = fst::LeftContextDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> *>::Start(a2);
    if (v9 >= 1)
    {
      v11 = *a2;
      v12 = *a1;
      v13 = 8 * result;
      do
      {
        v14 = *v12;
        result = cblas_ddot_NEWLAPACK_ILP64();
        *v12++ = v15 * a4 + a5 * v14;
        v11 += v13;
        --v9;
      }

      while (v9);
    }
  }

  else
  {
    kaldi::MatrixBase<float>::NumCols(a2);
    kaldi::MatrixBase<float>::NumRows(a2);
    v16 = *(a1 + 8);
    result = fst::LeftContextDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> *>::Start(a2);
    if (v16 >= 1)
    {
      v17 = *a2;
      v18 = *a1;
      do
      {
        v19 = *v18;
        result = cblas_ddot_NEWLAPACK_ILP64();
        *v18++ = v20 * a4 + a5 * v19;
        v17 += 8;
        --v16;
      }

      while (v16);
    }
  }

  return result;
}

void kaldi::VectorBase<float>::AddMatVec<signed char>(uint64_t a1, uint64_t a2, double a3, float a4, uint64_t a5, uint64_t a6)
{
  kaldi::MatrixBase<float>::NumCols(a2);
  kaldi::MatrixBase<float>::NumRows(a2);

  kaldi::QuantizedVectorBase<signed char>::AddMatVec(a6, a2, a1, a4);
}

void kaldi::VectorBase<float>::AddMatVec<short>(uint64_t a1, uint64_t a2, double a3, float a4, uint64_t a5, uint64_t a6)
{
  kaldi::MatrixBase<float>::NumCols(a2);
  kaldi::MatrixBase<float>::NumRows(a2);

  kaldi::QuantizedVectorBase<short>::AddMatVec(a6, a2, a1, a4);
}

void kaldi::VectorBase<float>::ApplyPow(uint64_t a1, float a2)
{
  v3 = a2;
  v2 = *(a1 + 8);
  vvpowsf(*a1, &v3, *a1, &v2);
}

void kaldi::VectorBase<double>::ApplyPow(uint64_t a1, double a2)
{
  v3 = a2;
  v2 = *(a1 + 8);
  vvpows(*a1, &v3, *a1, &v2);
}

void File::File(File *this, const char *a2, const char *a3, int a4)
{
  *this = a2;
  *(this + 2) = 0;
  *(this + 12) = a4;
  *(this + 13) = 1;
  *(this + 2) = 0;
  v8 = (this + 16);
  *(this + 3) = 0;
  v9 = malloc_type_malloc(0x80uLL, 0x100004077774924uLL);
  *(this + 4) = 0u;
  *(this + 4) = v9;
  *(this + 10) = 128;
  *(this + 22) = 256;
  *(this + 12) = 0;
  *(this + 7) = -1;
  *(this + 5) = 0u;
  *(this + 24) = 0;
  v10 = strlen(a2);
  if (v10 >= 4uLL && !strcmp(&a2[v10 - 3], ".gz"))
  {
    v11 = gzopen(a2, a3);
    *(this + 3) = v11;
    if (v11)
    {
      goto LABEL_8;
    }
  }

  else
  {
    *(this + 2) = srilm_zopen(a2, a3);
    if (*(this + 3))
    {
      goto LABEL_8;
    }
  }

  if (a4 && !*v8)
  {
    perror(a2);
    exit(a4);
  }

LABEL_8:
  MEMORY[0x1B8C84820](this + 64, "");
}

void sub_1B5712710(_Unwind_Exception *exception_object)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void File::File(File *this, __sFILE *a2, char a3)
{
  *this = 0;
  *(this + 2) = 0;
  *(this + 12) = a3;
  *(this + 13) = 1;
  *(this + 2) = a2;
  *(this + 3) = 0;
  v4 = malloc_type_malloc(0x80uLL, 0x100004077774924uLL);
  *(this + 4) = 0u;
  *(this + 4) = v4;
  *(this + 10) = 128;
  *(this + 22) = 256;
  *(this + 12) = 0;
  *(this + 7) = -1;
  *(this + 5) = 0u;
  *(this + 24) = 0;
  MEMORY[0x1B8C84820](this + 64, "");
}

void sub_1B57127D0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void File::File(File *this, const char *a2, unint64_t a3, char a4, int a5)
{
  *this = 0;
  *(this + 2) = 0;
  *(this + 12) = a4;
  *(this + 13) = 1;
  *(this + 2) = 0;
  *(this + 3) = 0;
  v8 = malloc_type_malloc(0x80uLL, 0x100004077774924uLL);
  *(this + 4) = 0u;
  *(this + 4) = v8;
  *(this + 10) = 128;
  *(this + 22) = 256;
  *(this + 12) = 0;
  *(this + 7) = -1;
  *(this + 5) = 0u;
  *(this + 24) = 0;
  MEMORY[0x1B8C84820](this + 64, a2);
  v9 = *(this + 87);
  if (v9 < 0)
  {
    v9 = *(this + 9);
  }

  *(this + 22) = v9;
  *(this + 24) = 1;
  if (v9 < a5)
  {
    std::string::reserve((this + 64), a5);
  }
}

void sub_1B57128C8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void File::~File(void **this)
{
  if (*this)
  {
    File::close(this);
  }

  if (this[7] != -1)
  {
    MEMORY[0x1B8C86350]();
  }

  v2 = this[4];
  if (v2)
  {
    free(v2);
  }

  this[4] = 0;
  if (*(this + 87) < 0)
  {
    operator delete(this[8]);
  }
}

uint64_t File::close(File *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    result = gzclose(v2);
  }

  else
  {
    result = *(this + 2);
    if (!result)
    {
      *(this + 2) = 0;
      *(this + 3) = 0;
      return result;
    }

    result = zclose(result);
  }

  *(this + 2) = 0;
  *(this + 3) = 0;
  if (result)
  {
    if (*(this + 12))
    {
      File::close(this, this + 12);
    }
  }

  return result;
}

uint64_t File::reopen(File *this, const char *a2, const char *a3)
{
  MEMORY[0x1B8C84820](this + 64, "");
  *(this + 11) = 0;
  *(this + 24) = 0;
  *(this + 45) = 1;
  *(this + 12) = 0;
  if (*(this + 7) != -1)
  {
    MEMORY[0x1B8C86350]();
    *(this + 7) = -1;
  }

  if (*this)
  {
    File::close(this);
  }

  *this = a2;
  v6 = strlen(a2);
  if (v6 >= 4uLL && !strcmp(&a2[v6 - 3], ".gz"))
  {
    *(this + 3) = gzopen(a2, a3);
    if (*(this + 2))
    {
      return 1;
    }
  }

  else
  {
    v7 = srilm_zopen(a2, a3);
    *(this + 2) = v7;
    if (v7)
    {
      return 1;
    }
  }

  if (*(this + 3))
  {
    return 1;
  }

  if (*(this + 12))
  {
    File::reopen(this, this + 12);
  }

  return 0;
}

BOOL File::error(File *this)
{
  if (*(this + 24))
  {
    return 0;
  }

  if (*(this + 3))
  {
    v2 = gzerror(*(this + 3), 0);
    if (v2)
    {
      v3 = *v2 == 0;
      return !v3;
    }

    return 1;
  }

  v4 = *(this + 2);
  if (!v4)
  {
    return 1;
  }

  v3 = ferror(v4) == 0;
  return !v3;
}

char *File::fgetsUTF8(File *this, char *a2, int a3)
{
  v4 = a2;
  v6 = a3;
  bzero(a2, a3);
  if (a3)
  {
    v7 = a3;
  }

  else
  {
    v7 = a3 - 1;
  }

  if (!File::fgets(this, v4, v7))
  {
    return 0;
  }

  if (!*(this + 45))
  {
    goto LABEL_23;
  }

  *(this + 45) = 0;
  *(this + 7) = 0;
  v8 = *v4;
  if (v8 == 255)
  {
    if (v4[1] == 254)
    {
      v11 = 2;
      *(this + 12) = 2;
      v9 = MEMORY[0x1B8C86360]("UTF-8", "UTF-16LE");
      *(this + 7) = v9;
      goto LABEL_16;
    }
  }

  else
  {
    if (v8 != 254)
    {
      if (v8 == 239 && v4[1] == 187 && v4[2] == 191)
      {
        v9 = 0;
        v10 = 1;
        *(this + 12) = 1;
        v11 = 3;
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    if (v4[1] == 255)
    {
      *(this + 12) = 3;
      v9 = MEMORY[0x1B8C86360]("UTF-8", "UTF-16BE");
      *(this + 7) = v9;
      v11 = 2;
LABEL_16:
      v10 = 1;
      goto LABEL_18;
    }
  }

LABEL_17:
  v9 = 0;
  v10 = 0;
  v11 = 0;
LABEL_18:
  if (v9 == -1)
  {
    v13 = File::position(this, MEMORY[0x1E69E5300]);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "conversion from UTF-16", 22);
    if (*(this + 12) == 2)
    {
      v15 = "LE";
    }

    else
    {
      v15 = "BE";
    }

    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, v15, 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, " not supported\n", 15);
    return 0;
  }

  if (!v9)
  {
    *(this + 7) = -1;
  }

  if (v10)
  {
    memmove(v4, &v4[v11], a3 - v11);
    bzero(&v4[v6 - v11], v11);
  }

LABEL_23:
  v12 = *(this + 7);
  if (v12 != -1)
  {
    v25 = 0;
    v26 = a3;
    v27 = 0;
    v28 = 0;
    if (a3)
    {
      Array<char>::alloc();
    }

    v23 = 0;
    v24 = v4;
    __n = v6;
    v22 = 0;
    v17 = MEMORY[0x1B8C86340](v12, &v24, &v23, &v22, &__n);
    if (v17 == -1)
    {
      perror("iconv");
    }

    else
    {
      v18 = __n;
      memcpy(v4, (v27 - v25), __n);
      if (v6 > v18)
      {
        bzero(&v4[v18], v6 - v18);
      }

      if (*(this + 12) == 2)
      {
        v19 = strlen(v4);
        if (v19)
        {
          if (v4[v19 - 1] == 10)
          {
            File::fgetc(this);
          }
        }
      }
    }

    if (v27)
    {
      MEMORY[0x1B8C85310](v27, 0x1000C8077774924);
    }

    if (v17 == -1)
    {
      return 0;
    }
  }

  return v4;
}

void sub_1B5712E00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (a15)
  {
    MEMORY[0x1B8C85310](a15, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

char *File::fgets(File *this, char *buf, int a3)
{
  v5 = *(this + 3);
  if (v5)
  {

    return gzgets(v5, buf, a3);
  }

  else if (*(this + 2))
  {
    v9 = *(this + 2);

    return fgets(buf, a3, v9);
  }

  else
  {
    result = 0;
    if (buf)
    {
      v10 = (a3 - 1);
      if (a3 >= 1)
      {
        if (a3 > 1)
        {
          v11 = 0;
          while (1)
          {
            v12 = File::fgetc(this);
            if (v12 == -1)
            {
              break;
            }

            buf[v11] = v12;
            if (v12 == 10)
            {
              buf[v11 + 1] = 0;
              return buf;
            }

            if (v10 == ++v11)
            {
              goto LABEL_19;
            }
          }

          LODWORD(v10) = v11;
LABEL_19:
          buf[v10] = 0;
          result = buf;
          if (v10)
          {
            return result;
          }
        }

        else
        {
          *buf = 0;
        }

        return 0;
      }
    }
  }

  return result;
}

void *File::position(uint64_t a1, void *a2)
{
  v4 = *a1;
  if (*a1)
  {
    v5 = strlen(*a1);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, v4, v5);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, ": ", 2);
  }

  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "line ", 5);
  v8 = MEMORY[0x1B8C84C10](v7, *(a1 + 8));

  return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ": ", 2);
}

uint64_t File::fgetc(File *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    if (*v2)
    {
      --*v2;
      v3 = *(v2 + 8);
      v4 = *(v2 + 16) + 1;
      *(v2 + 8) = v3 + 1;
      *(v2 + 16) = v4;
      return *v3;
    }

    else
    {
      v7 = *(this + 3);

      return gzgetc(v7);
    }
  }

  else if (*(this + 2))
  {
    v6 = *(this + 2);

    return fgetc(v6);
  }

  else if (*(this + 24) && (v8 = *(this + 22), v8 >= 1) && (v9 = *(this + 23), v9 < v8))
  {
    *(this + 23) = v9 + 1;
    return *std::string::at((this + 64), v9);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

char *File::getline(File *this)
{
  if (*(this + 44))
  {
    *(this + 44) = 0;
    return *(this + 4);
  }

  result = File::fgetsUTF8(this, *(this + 4), *(this + 10));
  if (result)
  {
    v3 = 0;
    v4 = 0;
    v5 = MEMORY[0x1E69E9830];
    while (1)
    {
      while (1)
      {
        v6 = *(this + 4);
        v7 = strlen(&v6[v3]);
        if (v7)
        {
          v3 = (v4 + v7);
          if (v6[(v3 - 1)] != 10)
          {
            break;
          }
        }

LABEL_13:
        ++*(this + 2);
        v10 = *v6;
        if (!*v6)
        {
          goto LABEL_25;
        }

        v11 = v6 + 1;
        while ((v10 & 0x80) == 0)
        {
          if ((*(v5 + 4 * v10 + 60) & 0x4000) == 0)
          {
            goto LABEL_21;
          }

LABEL_19:
          v12 = *v11++;
          v10 = v12;
          if (!v12)
          {
            goto LABEL_25;
          }
        }

        if (__maskrune(v10, 0x4000uLL))
        {
          goto LABEL_19;
        }

LABEL_21:
        if (*(v11 - 1))
        {
          result = *(this + 4);
          if (!*(this + 13) || *result != 35 || result[1] != 35)
          {
            *(this + 44) = 0;
            return result;
          }
        }

LABEL_25:
        result = File::fgetsUTF8(this, *(this + 4), *(this + 10));
        v3 = 0;
        v4 = 0;
        if (!result)
        {
          return result;
        }
      }

      v8 = *(this + 10);
      if (v3 >= v8 - 128)
      {
        v9 = (2 * v8);
        *(this + 10) = v9;
        v6 = malloc_type_realloc(v6, v9, 0x100004077774924uLL);
        *(this + 4) = v6;
        v8 = *(this + 10);
      }

      v4 = v3;
      if (!File::fgetsUTF8(this, &v6[v3], v8 - v3))
      {
        if (!v3)
        {
          return 0;
        }

        *(*(this + 4) + v3) = 0;
        v6 = *(this + 4);
        goto LABEL_13;
      }
    }
  }

  return result;
}

void *File::offset(uint64_t a1, void *a2)
{
  v4 = *a1;
  if (*a1)
  {
    v5 = strlen(*a1);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, v4, v5);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, ": ", 2);
  }

  if (*(a1 + 16))
  {
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "offset ", 7);
    v8 = ftello(*(a1 + 16));
    v9 = MEMORY[0x1B8C84C60](v7, v8);
  }

  else
  {
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "offset unknown ", 15);
  }

  return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, ": ", 2);
}

uint64_t File::fprintf(File *this, const char *a2, ...)
{
  va_start(va, a2);
  v2 = MEMORY[0x1EEE9AC00](this);
  v4 = v2;
  v7 = *MEMORY[0x1E69E9840];
  if (*(v2 + 24))
  {
    va_copy(__str, va);
    return gzvprintf(*(v2 + 24), v3, va);
  }

  else if (*(v2 + 16))
  {
    va_copy(__str, va);
    return vfprintf(*(v2 + 16), v3, va);
  }

  else if (*(v2 + 96))
  {
    if (vsnprintf(__str, 0x1000uLL, v3, va) >= 0x1000)
    {
      operator new[]();
    }

    std::string::append((v4 + 64), __str);
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

size_t File::fread(File *this, void *__ptr, size_t __size, size_t __nitems)
{
  v5 = *(this + 3);
  if (v5)
  {
    return gzread(v5, __ptr, __nitems * __size) / __size;
  }

  v7 = *(this + 2);
  if (!v7)
  {
    return 0;
  }

  return fread(__ptr, __size, __nitems, v7);
}

size_t File::fwrite(File *this, const void *__ptr, size_t __size, size_t __nitems)
{
  v5 = *(this + 3);
  if (v5)
  {
    return gzwrite(v5, __ptr, __nitems * __size) / __size;
  }

  v7 = *(this + 2);
  if (!v7)
  {
    return 0;
  }

  return fwrite(__ptr, __size, __nitems, v7);
}

off_t File::ftell(File *this)
{
  if (*(this + 3))
  {
    return gztell(*(this + 3));
  }

  if (*(this + 2))
  {
    return ftello(*(this + 2));
  }

  if (*(this + 24))
  {
    return *(this + 23);
  }

  return -1;
}

uint64_t File::fseek(File *this, off_t a2, int a3)
{
  if (*(this + 3))
  {
    return MEMORY[0x1B8C86300](*(this + 3));
  }

  if (!*(this + 2))
  {
    if (*(this + 24))
    {
      switch(a3)
      {
        case 0:
          goto LABEL_16;
        case 2:
          v7 = *(this + 22);
          goto LABEL_15;
        case 1:
          v7 = *(this + 23);
LABEL_15:
          LODWORD(a2) = v7 + a2;
LABEL_16:
          *(this + 23) = a2;
          v4 = 0;
          if ((a2 & 0x80000000) != 0)
          {
            *(this + 23) = 0;
          }

          return v4;
      }
    }

    return 0xFFFFFFFFLL;
  }

  v6 = *(this + 2);

  return fseeko(v6, a2, a3);
}

uint64_t File::c_str(File *this)
{
  if (*(this + 2) || *(this + 3) || !*(this + 24))
  {
    return 0;
  }

  result = this + 64;
  if (*(this + 87) < 0)
  {
    return *result;
  }

  return result;
}

uint64_t quasar::lm::arpa2fst::kaldi_impl::ConvertToFST::ConvertToFST(uint64_t a1, uint64_t a2, uint64_t *a3, char a4, char a5, char a6, char a7)
{
  v12 = a3[1];
  v14 = *a3;
  v15 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  quasar::lm::arpa2fst::ConvertToFST::ConvertToFST(a1, a2, &v14);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  *a1 = &unk_1F2D2A520;
  *(a1 + 32) = a4;
  *(a1 + 33) = a5;
  *(a1 + 34) = a6;
  *(a1 + 35) = a7;
  return a1;
}

void sub_1B5713798(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void quasar::lm::arpa2fst::kaldi_impl::ConvertToFST::operator()(uint64_t a1, uint64_t a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 24);
  v25 = 0;
  v26 = 0;
  v4 = *(a1 + 16);
  if (!v4)
  {
    quasar::lm::ComputeSRILMVocabToOpenFSTSymbolTableRemapping(v3, *(a1 + 8), 1);
  }

  v5 = *(a1 + 24);
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    v25 = v4;
    v26 = v5;
  }

  else
  {
    v25 = *(a1 + 16);
    v26 = 0;
  }

  v6 = (*(**(a1 + 8) + 104))(*(a1 + 8), "<s>");
  v7 = (*(**(a1 + 8) + 104))(*(a1 + 8), "</s>");
  v8 = (*(*v3 + 96))(v3);
  if (v8 == -1)
  {
    v11 = -1;
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v9 = (*(*v3 + 96))(v3);
    v10 = (*(*v3 + 32))(v3, v9);
    std::string::basic_string[abi:ne200100]<0>(&__p, v10);
    v8 = (*(**(a1 + 8) + 96))(*(a1 + 8), &__p);
    v11 = v8;
    if (v30 < 0)
    {
      operator delete(__p);
      if ((v6 & 0x80000000) == 0)
      {
        goto LABEL_9;
      }
    }

    else if ((v6 & 0x80000000) == 0)
    {
LABEL_9:
      v12 = quasar::lm::nullstream(v8);
      goto LABEL_12;
    }
  }

  quasar::lm::LogMessage::LogMessage(&__p, 5, "operator()", "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/liblm/src/impl/arpa2fst-kaldi.cpp", 59);
  Featurizer = quasar::rescoring::AdapterModel::getFeaturizer(&__p);
  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(Featurizer, "<s> is missing from FST symbol table. ", 38);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "Note that this is a requirement of the Kaldi implementation even when the explicitStartEndMarkers option is set to false.", 121);
  quasar::lm::LogMessage::~LogMessage(&__p);
LABEL_12:
  if ((v7 & 0x80000000) != 0)
  {
    quasar::lm::LogMessage::LogMessage(&__p, 5, "operator()", "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/liblm/src/impl/arpa2fst-kaldi.cpp", 62);
    v16 = quasar::rescoring::AdapterModel::getFeaturizer(&__p);
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "</s> is missing from FST symbol table. ", 39);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "Note that this is a requirement of the Kaldi implementation even when the explicitStartEndMarkers option is set to false.", 121);
    quasar::lm::LogMessage::~LogMessage(&__p);
  }

  else
  {
    v15 = quasar::lm::nullstream(v12);
  }

  if (v6 == v7)
  {
    quasar::lm::LogMessage::LogMessage(&__p, 5, "operator()", "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/liblm/src/impl/arpa2fst-kaldi.cpp", 66);
    v18 = quasar::rescoring::AdapterModel::getFeaturizer(&__p);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "<s> and </s> should be different symbols.", 41);
    quasar::lm::LogMessage::~LogMessage(&__p);
  }

  else
  {
    quasar::lm::nullstream(v15);
  }

  if (*(a1 + 32))
  {
    v19 = 0;
  }

  else
  {
    v20 = (*(**(a1 + 8) + 104))(*(a1 + 8), "#0");
    v19 = v20;
    if ((*(a1 + 32) & 1) == 0)
    {
      if ((v20 & 0x8000000000000000) != 0)
      {
        quasar::lm::LogMessage::LogMessage(&__p, 5, "operator()", "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/liblm/src/impl/arpa2fst-kaldi.cpp", 76);
        v21 = quasar::rescoring::AdapterModel::getFeaturizer(&__p);
        v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "Disambiguation symbol ", 22);
        v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "#0", 2);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, " is missing from FST symbol table.", 34);
        quasar::lm::LogMessage::~LogMessage(&__p);
      }

      else
      {
        quasar::lm::nullstream(v20);
      }
    }
  }

  __p = __PAIR64__(v7, v6);
  v28 = v11;
  v29 = 0x1E00000000;
  quasar::lm::arpa2fst::kaldi_fork::ArpaLmCompiler::ArpaLmCompiler(v24, &__p, v19, *(a1 + 8));
}

void sub_1B57140A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, std::__shared_weak_count *a52, void *a53, uint64_t a54, int a55, __int16 a56, char a57, char a58)
{
  if (a52)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a52);
  }

  _Unwind_Resume(exception_object);
}

void quasar::lm::arpa2fst::kaldi_impl::ConvertToFST::~ConvertToFST(quasar::lm::arpa2fst::kaldi_impl::ConvertToFST *this)
{
  *this = &unk_1F2D2A588;
  v1 = *(this + 3);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_1F2D2A588;
  v1 = *(this + 3);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1B8C85350);
}

void quasar::lm::arpa2fst::kaldi_fork::ArpaLmCompiler::ArpaLmCompiler(uint64_t a1, __int128 *a2, int a3, uint64_t a4)
{
  quasar::lm::arpa2fst::kaldi_fork::ArpaFileParser::ArpaFileParser(a1, a2, a4);
  *v5 = &unk_1F2D31EB0;
  *(v5 + 96) = a3;
  *(v5 + 104) = 0;
  operator new();
}

void sub_1B57143CC(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v2, 0xA1C40BD48D6D6);
  quasar::lm::arpa2fst::kaldi_fork::ArpaFileParser::~ArpaFileParser(v1);
  _Unwind_Resume(a1);
}

void std::shared_ptr<std::unordered_map<unsigned int,int>>::shared_ptr[abi:ne200100]<std::unordered_map<unsigned int,int>,0>(void *a1, uint64_t a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_1B5714480(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::unordered_map<unsigned int,int>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_pointer<std::unordered_map<unsigned int,int> *,std::shared_ptr<std::unordered_map<unsigned int,int>>::__shared_ptr_default_delete<std::unordered_map<unsigned int,int>,std::unordered_map<unsigned int,int>>,std::allocator<std::unordered_map<unsigned int,int>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t std::__shared_ptr_pointer<std::unordered_map<unsigned int,int> *,std::shared_ptr<std::unordered_map<unsigned int,int>>::__shared_ptr_default_delete<std::unordered_map<unsigned int,int>,std::unordered_map<unsigned int,int>>,std::allocator<std::unordered_map<unsigned int,int>>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(result);

    JUMPOUT(0x1B8C85350);
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<std::unordered_map<unsigned int,int> *,std::shared_ptr<std::unordered_map<unsigned int,int>>::__shared_ptr_default_delete<std::unordered_map<unsigned int,int>,std::unordered_map<unsigned int,int>>,std::allocator<std::unordered_map<unsigned int,int>>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void kaldi::nnet1::Xent::Eval(uint64_t a1, int32x2_t *a2, int32x2_t *a3, int32x2_t *a4, uint64_t a5)
{
  kaldi::CuMatrix<float>::Resize(a4, a2[2].u32[1], a2[2].u32[0], 0, 0);
  v10 = a2[2].i32[1];
  kaldi::CuMatrix<float>::operator=(a4, a2);
  kaldi::CuMatrixBase<float>::AddMat(a4, a3, 111, -1.0, 1.0);
  if (a5)
  {
    kaldi::CuVector<float>::Resize(a1 + 264, *(a5 + 8), 1);
    kaldi::CuVectorBase<float>::CopyFromVec<float>((a1 + 264), a5);
    kaldi::CuMatrixBase<float>::MulRowsVec(a4, a1 + 264);
  }

  *(a1 + 16) = -1;
  kaldi::CuMatrix<float>::operator=((a1 + 216), a2);
  kaldi::CuMatrixBase<float>::Add(a1 + 216, 1.0e-20);
  kaldi::CuMatrixBase<float>::ApplyLog(a1 + 216);
  kaldi::CuMatrixBase<float>::MulElements(a1 + 216, a3);
  if (a5)
  {
    kaldi::CuMatrixBase<float>::MulRowsVec(a1 + 216, a1 + 264);
  }

  kaldi::CuVector<float>::Resize(a1 + 112, v10, 0);
  kaldi::CuVectorBase<float>::AddColSumMat(a1 + 112, a1 + 216);
  kaldi::Vector<float>::Resize((a1 + 144), v10, 0);
  kaldi::CuVectorBase<float>::CopyToVec<float>((a1 + 112), a1 + 144);
  v11 = kaldi::VectorBase<float>::Sum(a1 + 144);
  v12 = -*&v11;
  kaldi::CuMatrix<float>::operator=((a1 + 216), a3);
  kaldi::CuMatrixBase<float>::Add(a1 + 216, 1.0e-20);
  kaldi::CuMatrixBase<float>::ApplyLog(a1 + 216);
  kaldi::CuMatrixBase<float>::MulElements(a1 + 216, a3);
  if (a5)
  {
    kaldi::CuMatrixBase<float>::MulRowsVec(a1 + 216, a1 + 264);
  }

  kaldi::CuVector<float>::Resize(a1 + 112, v10, 0);
  kaldi::CuVectorBase<float>::AddColSumMat(a1 + 112, a1 + 216);
  kaldi::Vector<float>::Resize((a1 + 144), v10, 0);
  kaldi::CuVectorBase<float>::CopyToVec<float>((a1 + 112), a1 + 144);
  v13 = kaldi::VectorBase<float>::Sum(a1 + 144);
  v14 = *(a1 + 24) + v12;
  v15 = *(a1 + 32) - *&v13;
  *(a1 + 24) = v14;
  *(a1 + 32) = v15;
  *(a1 + 8) += v10;
  if ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v20);
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "Non-finite loss (", 17);
    v17 = MEMORY[0x1B8C84BE0](v16, *(a1 + 24));
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v17, ") in cross-entropy calculation");
    goto LABEL_12;
  }

  if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v20);
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "Non-finite entropy (", 20);
    v19 = MEMORY[0x1B8C84BE0](v18, *(a1 + 32));
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v19, ") in cross-entropy calculation");
LABEL_12:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v20);
  }
}

uint64_t kaldi::nnet1::Xent::ExpandPosterior(int32x2_t *a1, uint64_t *a2, uint64_t a3)
{
  kaldi::Matrix<float>::Matrix(v25, -1431655765 * ((a2[1] - *a2) >> 3), a3, 0, 0);
  v6 = *a2;
  v7 = a2[1];
  v8 = v7 - *a2;
  if (v7 != *a2)
  {
    v9 = 0;
    v10 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3);
    if (v10 <= 1)
    {
      v10 = 1;
    }

    do
    {
      v11 = (v6 + 24 * v9);
      v12 = *v11;
      v13 = v11[1] - *v11;
      if (v13)
      {
        v14 = v13 >> 3;
        v15 = *v25 + 4 * v26 * v9;
        if (v14 <= 1)
        {
          v14 = 1;
        }

        v16 = (v12 + 4);
        do
        {
          v17 = *(v16 - 1);
          if (v17 >= a3)
          {
            kaldi::KaldiWarnMessage::KaldiWarnMessage(v24);
            v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, "Posterior pdf-id out of NN-output dimension, please check number of pdfs by 'hmm-info'.", 87);
            v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, " nn-outputs : ", 14);
            v22 = MEMORY[0x1B8C84C00](v21, a3);
            v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, ", posterior pdf-id : ", 21);
            MEMORY[0x1B8C84C00](v23, v17);
            kaldi::KaldiErrorMessage::~KaldiErrorMessage(v24);
          }

          v18 = *v16;
          v16 += 2;
          *(v15 + 4 * v17) = v18 + *(v15 + 4 * v17);
          --v14;
        }

        while (v14);
      }

      ++v9;
    }

    while (v9 != v10);
  }

  kaldi::CuMatrix<float>::operator=(a1 + 21, v25);
  return kaldi::Matrix<float>::~Matrix(v25);
}

void kaldi::nnet1::Xent::Eval(uint64_t a1, int32x2_t *a2, uint64_t *a3, int32x2_t *a4, uint64_t a5)
{
  v10 = a2[2].u32[1];
  v11 = v10;
  kaldi::nnet1::Xent::ExpandPosterior(a1, a3, a2[2].u32[0]);
  kaldi::CuMatrix<float>::operator=(a4, a2);
  kaldi::CuMatrixBase<float>::AddMat(a4, a1 + 168, 111, -1.0, 1.0);
  if (a5)
  {
    kaldi::CuVector<float>::Resize(a1 + 264, *(a5 + 8), 0);
    kaldi::CuVectorBase<float>::CopyFromVec<float>((a1 + 264), a5);
    kaldi::CuMatrixBase<float>::MulRowsVec(a4, a1 + 264);
  }

  *(a1 + 384) = a4[4];
  kaldi::CuArray<int>::Resize(a1 + 368, a2[2].u32[1], 1);
  kaldi::CuMatrixBase<float>::FindRowMaxId(a2, (a1 + 368));
  *(a1 + 432) = a4[4];
  kaldi::CuArray<int>::Resize(a1 + 416, *(a1 + 188), 1);
  kaldi::CuMatrixBase<float>::FindRowMaxId(a1 + 168, (a1 + 416));
  std::vector<int>::resize((a1 + 392), v10);
  std::vector<int>::resize((a1 + 440), v10);
  kaldi::CuArray<int>::CopyToVec((a1 + 368), (a1 + 392));
  kaldi::CuArray<int>::CopyToVec((a1 + 416), (a1 + 440));
  if (v10 < 1)
  {
    v47 = 0;
  }

  else
  {
    v12 = 0;
    v13 = 0;
    do
    {
      v14 = *(*(a1 + 440) + 4 * v12);
      v15 = *(*(a1 + 392) + 4 * v12);
      if (a5)
      {
        if (v14 == v15 && *(*(a1 + 272) + 4 * v12) == 1.0)
        {
          ++v13;
        }
      }

      else if (v14 == v15)
      {
        ++v13;
      }

      ++v12;
    }

    while (v10 != v12);
    v47 = v13;
  }

  *(a1 + 248) = a4[4];
  kaldi::CuMatrix<float>::operator=((a1 + 216), a2);
  kaldi::CuMatrixBase<float>::Add(a1 + 216, 1.0e-20);
  kaldi::CuMatrixBase<float>::ApplyLog(a1 + 216);
  kaldi::CuMatrixBase<float>::MulElements(a1 + 216, a1 + 168);
  if (a5)
  {
    kaldi::CuMatrixBase<float>::MulRowsVec(a1 + 216, a1 + 264);
  }

  *(a1 + 136) = a4[4];
  kaldi::CuVector<float>::Resize(a1 + 112, v10, 0);
  kaldi::CuVectorBase<float>::AddColSumMat(a1 + 112, a1 + 216);
  v16 = kaldi::CuVectorBase<float>::Sum(a1 + 112);
  v17 = -*&v16;
  v19 = a3;
  v18 = *a3;
  v20 = v19[1] - v18;
  if (v20)
  {
    v21 = 0;
    v22 = 0xAAAAAAAAAAAAAAABLL * (v20 >> 3);
    if (v22 <= 1)
    {
      v23 = 1;
    }

    else
    {
      v23 = v22;
    }

    v24 = 0.0;
    do
    {
      if (a5)
      {
        if (*(*(a1 + 272) + 4 * v21) == 1.0)
        {
          v25 = *(v18 + 24 * v21);
          v26 = *(v18 + 24 * v21 + 8) - v25;
          if (v26)
          {
            v27 = v26 >> 3;
            if (v27 <= 1)
            {
              v28 = 1;
            }

            else
            {
              v28 = v27;
            }

            v29 = (v25 + 4);
            do
            {
              v30 = *v29;
              v29 += 2;
              v24 = v24 - (logf(v30) * v30);
              --v28;
            }

            while (v28);
          }
        }
      }

      else
      {
        v31 = *(v18 + 24 * v21);
        v32 = *(v18 + 24 * v21 + 8) - v31;
        if (v32)
        {
          v33 = v32 >> 3;
          if (v33 <= 1)
          {
            v34 = 1;
          }

          else
          {
            v34 = v33;
          }

          v35 = (v31 + 4);
          do
          {
            v36 = *v35;
            v35 += 2;
            v24 = v24 - (logf(v36) * v36);
            --v34;
          }

          while (v34);
        }
      }

      ++v21;
    }

    while (v21 != v23);
  }

  else
  {
    v24 = 0.0;
  }

  if (a5)
  {
    v37 = kaldi::CuVectorBase<float>::Sum(a1 + 264);
    LODWORD(v10) = *&v37;
    v11 = *&v37;
  }

  v38 = *(a1 + 32);
  v39 = *(a1 + 8);
  v40 = *(a1 + 16) + v47;
  v41 = *(a1 + 24) + v17;
  *(a1 + 24) = v41;
  *(a1 + 32) = v24 + v38;
  *(a1 + 8) = v39 + v11;
  *(a1 + 16) = v40;
  if ((*&v41 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v48);
    v43 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v48, "Non-finite loss (", 17);
    v44 = MEMORY[0x1B8C84BE0](v43, *(a1 + 24));
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v44, ") in cross-entropy calculation");
    goto LABEL_48;
  }

  if (COERCE_UNSIGNED_INT64(fabs(v24 + v38)) >= 0x7FF0000000000000)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v48);
    v45 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v48, "Non-finite entropy (", 20);
    v46 = MEMORY[0x1B8C84BE0](v45, *(a1 + 32));
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v46, ") in cross-entropy calculation");
LABEL_48:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v48);
  }

  v42 = v24;
  kaldi::nnet1::Xent::ReportProgress(a1, v10, v42, v17);
}

void kaldi::nnet1::Xent::ReportProgress(kaldi::nnet1::Xent *this, int a2, float a3, float a4)
{
  v4 = (this + 40);
  v5 = *(this + 7);
  v6 = *(this + 6) + a4;
  v7 = *(this + 5) + a2;
  *(this + 5) = v7;
  v8 = v5 + a3;
  *(this + 6) = v6;
  *(this + 7) = v8;
  if (v7 >= 360001)
  {
    if (kaldi::g_kaldi_verbose_level >= 1)
    {
      kaldi::KaldiVlogMessage::KaldiVlogMessage(v17, 1);
      v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "ProgressLoss[", 13);
      v11 = MEMORY[0x1B8C84C60](v10, *v4 / 360000);
      v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "h/", 2);
      v13 = MEMORY[0x1B8C84C60](v12, *(this + 1) / 360000);
      v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "h]: ", 4);
      v15 = MEMORY[0x1B8C84BE0](v14, (*(this + 6) - *(this + 7)) / *(this + 5));
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, " (Xent)", 7);
      kaldi::KaldiVlogMessage::~KaldiVlogMessage(v17);
      v6 = *(this + 6);
      v8 = *(this + 7);
      v7 = *(this + 5);
    }

    v16 = (v6 - v8) / v7;
    *&v17[0].__locale_ = v16;
    std::vector<float>::push_back[abi:ne200100](this + 8, v17);
    *v4 = 0;
    v4[1] = 0;
    v4[2] = 0;
  }
}

void sub_1B5714EDC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::KaldiVlogMessage::~KaldiVlogMessage(va);
  _Unwind_Resume(a1);
}

void *kaldi::nnet1::Xent::Eval(uint64_t a1, int32x2_t *a2, unsigned int *a3, int32x2_t *a4)
{
  kaldi::CuMatrix<float>::operator=(a4, a2);
  kaldi::CuMatrixBase<float>::AddUniqueElements(a4, a3, -1.0);
  *(a1 + 200) = a4[4];
  kaldi::CuMatrix<float>::Resize((a1 + 168), a2[2].u32[1], a2[2].u32[0], 0, 0);
  kaldi::CuMatrixBase<float>::AddUniqueElements(a1 + 168, a3, 1.0);
  v8 = a2[2].u32[1];
  *(a1 + 384) = a4[4];
  kaldi::CuArray<int>::Resize(a1 + 368, v8, 1);
  kaldi::CuMatrixBase<float>::FindRowMaxId(a2, (a1 + 368));
  *(a1 + 104) = *(a1 + 200);
  kaldi::CuArray<int>::Resize(a1 + 88, a2[2].u32[1], 1);
  kaldi::CuMatrixBase<float>::FindRowMaxId(a1 + 168, (a1 + 88));
  v24[1] = 0;
  v24[2] = 0;
  v9 = *(a1 + 200);
  v24[0] = &unk_1F2D3AC18;
  v24[3] = v9;
  kaldi::CuVector<float>::Resize(v24, a2[2].u32[1], 1);
  kaldi::CuVectorBase<float>::ElementsEqual(v24, a1 + 88, a1 + 368);
  v10 = kaldi::CuVectorBase<float>::Sum(v24);
  v11 = *&v10;
  *(a1 + 248) = a4[4];
  kaldi::CuMatrix<float>::operator=((a1 + 216), a2);
  kaldi::CuMatrixBase<float>::Add(a1 + 216, 1.0e-20);
  kaldi::CuMatrixBase<float>::ApplyLog(a1 + 216);
  kaldi::CuMatrixBase<float>::MulElements(a1 + 216, a1 + 168);
  v12 = kaldi::CuMatrixBase<float>::Sum(a1 + 216);
  kaldi::CuMatrix<float>::operator=((a1 + 216), (a1 + 168));
  kaldi::CuMatrixBase<float>::Add(a1 + 216, 1.0e-20);
  kaldi::CuMatrixBase<float>::ApplyLog(a1 + 216);
  kaldi::CuMatrixBase<float>::MulElements(a1 + 216, a1 + 168);
  v13 = kaldi::CuMatrixBase<float>::Sum(a1 + 216);
  v14 = *(a1 + 32);
  v15 = *(a1 + 24) + -v12;
  v16 = *(a1 + 8);
  v17 = *(a1 + 16) + v11;
  *(a1 + 24) = v15;
  *(a1 + 32) = v14 - v13;
  *(a1 + 8) = v16 + v8;
  *(a1 + 16) = v17;
  if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v23);
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, "Non-finite loss (", 17);
    v20 = MEMORY[0x1B8C84BE0](v19, *(a1 + 24));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, ") in cross-entropy calculation", 30);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v23);
  }

  if (COERCE_UNSIGNED_INT64(fabs(v14 - v13)) >= 0x7FF0000000000000)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v23);
    v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, "Non-finite entropy (", 20);
    v22 = MEMORY[0x1B8C84BE0](v21, *(a1 + 32));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, ") in cross-entropy calculation", 30);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v23);
  }

  kaldi::nnet1::Xent::ReportProgress(a1, v8, -v13, -v12);
  return kaldi::CuVector<float>::~CuVector(v24);
}

double kaldi::nnet1::Xent::Eval(uint64_t a1, int32x2_t *a2, uint64_t a3, int32x2_t *a4, uint64_t a5)
{
  kaldi::CuMatrixBase<float>::FindRowMaxId(a2, (a1 + 368));
  kaldi::CuArray<int>::CopyToVec((a1 + 368), (a1 + 392));
  v10 = *(a1 + 392);
  v11 = *(a1 + 400) - v10;
  v12 = *a3;
  v13 = *(a3 + 8) - *a3;
  if ((v13 >> 2) < 1)
  {
    v17 = 0;
  }

  else
  {
    v14 = 0;
    v15 = 0;
    v16 = (v13 >> 2) & 0x7FFFFFFF;
    do
    {
      if (!a5 || *(*a5 + 4 * v14) == 1.0)
      {
        ++*(a1 + 8);
        if (v12[v14] == *(v10 + 4 * v14))
        {
          ++v15;
        }
      }

      ++v14;
    }

    while (v16 != v14);
    v17 = v15;
  }

  kaldi::CuArray<int>::Resize(a1 + 88, v11 >> 2, 1);
  memcpy(*(a1 + 96), *a3, *(a3 + 8) - *a3);
  if (a2 != a4)
  {
    kaldi::CuMatrix<float>::operator=(a4, a2);
  }

  kaldi::CuMatrixBase<float>::DiffXent(a4, (a1 + 88), a1 + 112);
  if (a5)
  {
    kaldi::CuVector<float>::Resize(a1 + 264, *(a5 + 8), 1);
    kaldi::CuVectorBase<float>::CopyFromVec<float>((a1 + 264), a5);
    kaldi::CuMatrixBase<float>::MulRowsVec(a4, a1 + 264);
    kaldi::CuVectorBase<float>::MulElements(a1 + 112, a1 + 264);
  }

  kaldi::Vector<float>::Resize((a1 + 144), *(a1 + 128), 0);
  kaldi::CuVectorBase<float>::CopyToVec<float>((a1 + 112), a1 + 144);
  v18 = kaldi::VectorBase<float>::Sum(a1 + 144);
  result = *(a1 + 24) - *&v18;
  *(a1 + 24) = result;
  *(a1 + 16) += v17;
  if ((*&result & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v22);
    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "Non-finite loss (", 17);
    v21 = MEMORY[0x1B8C84BE0](v20, *(a1 + 24));
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v21, ") in cross-entropy calculation");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v22);
  }

  return result;
}

double kaldi::nnet1::Xent::CollectPerformance(uint64_t a1, void *lpsrc)
{
  if (a1 != lpsrc)
  {
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v8);
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v8, "Can't collect performance from non Xent object");
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v8);
    }

    v4 = *(a1 + 40);
    v5 = *(v3 + 24);
    *(a1 + 48) = vaddq_f64(v5, *(a1 + 48));
    *(a1 + 24) = vaddq_f64(v5, *(a1 + 24));
    v6 = vaddq_s64(*(a1 + 8), *(v3 + 8));
    *(a1 + 40) = v4 + *(v3 + 1);
    *(a1 + 8) = v6;
    *(v3 + 7) = 0;
    result = 0.0;
    *(v3 + 40) = 0u;
    *(v3 + 24) = 0u;
    *(v3 + 8) = 0u;
  }

  return result;
}

float kaldi::nnet1::Xent::GetAvgLoss(kaldi::nnet1::Xent *this, int a2)
{
  if (a2)
  {
    return 100.0 - *(this + 2) * 100.0 / *(this + 1);
  }

  else
  {
    return (*(this + 3) - *(this + 4)) / *(this + 1);
  }
}

uint64_t kaldi::nnet1::Xent::Report(kaldi::nnet1::Xent *this)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v18);
  v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, "AvgLoss: ", 9);
  v3 = MEMORY[0x1B8C84BE0](v2, (*(this + 3) - *(this + 4)) / *(this + 1));
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, " (Xent), ", 9);
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "[AvgXent: ", 10);
  v6 = MEMORY[0x1B8C84BE0](v5, *(this + 3) / *(this + 1));
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, ", AvgTargetEnt: ", 16);
  v8 = MEMORY[0x1B8C84BE0](v7, *(this + 4) / *(this + 1));
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "]", 1);
  std::ios_base::getloc((v9 + *(*v9 - 24)));
  v10 = std::locale::use_facet(&v23, MEMORY[0x1E69E5318]);
  (v10->__vftable[2].~facet_0)(v10, 10);
  std::locale::~locale(&v23);
  std::ostream::put();
  std::ostream::flush();
  if (*(this + 9) != *(this + 8))
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, "progress: [", 11);
    v11 = *(this + 8);
    v12 = *(this + 9);
    v23.__locale_ = &v18;
    v24 = " ";
    while (v11 != v12)
    {
      std::ostream_iterator<float,char,std::char_traits<char>>::operator=[abi:ne200100](&v23);
      v11 += 4;
    }

    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, "]", 1);
    std::ios_base::getloc((v13 + *(*v13 - 24)));
    v14 = std::locale::use_facet(&v23, MEMORY[0x1E69E5318]);
    (v14->__vftable[2].~facet_0)(v14, 10);
    std::locale::~locale(&v23);
    std::ostream::put();
    std::ostream::flush();
  }

  if ((*(this + 2) & 0x8000000000000000) == 0)
  {
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, "\nFRAME_ACCURACY >> ", 19);
    v16 = MEMORY[0x1B8C84BE0](v15, *(this + 2) * 100.0 / *(this + 1));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "% <<", 4);
  }

  std::stringbuf::str();
  v18 = *MEMORY[0x1E69E54E8];
  *(&v18 + *(v18 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v19 = MEMORY[0x1E69E5548] + 16;
  if (v21 < 0)
  {
    operator delete(v20[7].__locale_);
  }

  v19 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v20);
  std::ostream::~ostream();
  return MEMORY[0x1B8C85200](&v22);
}

void sub_1B571588C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::locale::~locale((v2 - 64));
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::Xent::GetResults(kaldi::nnet1::Xent *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 1065353216;
  v4 = *(this + 3);
  std::string::basic_string[abi:ne200100]<0>(__p, "Loss");
  v14 = __p;
  v5 = std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a2, __p);
  v6 = v4;
  *(v5 + 10) = v6;
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = *(this + 4);
  std::string::basic_string[abi:ne200100]<0>(__p, "Entropy");
  v14 = __p;
  v8 = std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a2, __p);
  v9 = v7;
  *(v8 + 10) = v9;
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  v10 = *(this + 2);
  std::string::basic_string[abi:ne200100]<0>(__p, "Correct");
  v14 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a2, __p) + 10) = v10;
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  v11 = *(this + 1);
  std::string::basic_string[abi:ne200100]<0>(__p, "Frames");
  v14 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a2, __p) + 10) = v11;
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1B5715A44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v15);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::Mse::Eval(uint64_t a1, int32x2_t *a2, uint64_t a3, int32x2_t *a4, uint64_t a5)
{
  v9 = a2[2].u32[1];
  kaldi::CuMatrix<float>::operator=(a4, a2);
  kaldi::CuMatrixBase<float>::AddMat(a4, a3, 111, -1.0, 1.0);
  if (a5)
  {
    kaldi::CuVector<float>::Resize(a1 + 64, *(a5 + 8), 0);
    kaldi::CuVectorBase<float>::CopyFromVec<float>((a1 + 64), a5);
    kaldi::CuMatrixBase<float>::MulRowsVec(a4, a1 + 64);
  }

  kaldi::CuMatrix<float>::operator=((a1 + 96), a4);
  kaldi::CuMatrixBase<float>::MulElements(a1 + 96, a1 + 96);
  kaldi::CuVector<float>::Resize(a1 + 144, v9, 0);
  kaldi::CuVectorBase<float>::AddColSumMat(a1 + 144, a1 + 96);
  kaldi::Vector<float>::Resize((a1 + 176), v9, 0);
  kaldi::CuVectorBase<float>::CopyToVec<float>((a1 + 144), a1 + 176);
  v10 = kaldi::VectorBase<float>::Sum(a1 + 176);
  v11 = *&v10 * 0.5;
  v12 = *(a1 + 16) + v11;
  *(a1 + 16) = v12;
  v13 = v9;
  if (a5)
  {
    v14 = kaldi::CuVectorBase<float>::Sum(a1 + 64);
    v13 = *&v14;
    v12 = *(a1 + 16);
  }

  *(a1 + 8) += v13;
  if ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v28);
    v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "Non-finite loss (", 17);
    v27 = MEMORY[0x1B8C84BE0](v26, *(a1 + 16));
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v27, ") in MSE calculation");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v28);
  }

  if (a5)
  {
    v15 = kaldi::CuVectorBase<float>::Sum(a1 + 64);
    LODWORD(v9) = *&v15;
  }

  v16 = (a1 + 24);
  v17 = *(a1 + 24) + v9;
  *(a1 + 24) = v17;
  v18 = v11 + *(a1 + 32);
  *(a1 + 32) = v18;
  if (v17 >= 1000001)
  {
    if (kaldi::g_kaldi_verbose_level >= 1)
    {
      kaldi::KaldiVlogMessage::KaldiVlogMessage(v28, 1);
      v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "ProgressLoss[", 13);
      v20 = MEMORY[0x1B8C84C60](v19, *v16 / 360000);
      v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "h/", 2);
      v22 = MEMORY[0x1B8C84C60](v21, *(a1 + 8) / 360000);
      v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "h]: ", 4);
      v24 = MEMORY[0x1B8C84BE0](v23, *(a1 + 32) / *(a1 + 24));
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, " (Mse)", 6);
      kaldi::KaldiVlogMessage::~KaldiVlogMessage(v28);
      v18 = *(a1 + 32);
      v17 = *(a1 + 24);
    }

    v25 = v18 / v17;
    *&v28[0].__locale_ = v25;
    std::vector<float>::push_back[abi:ne200100]((a1 + 40), v28);
    *v16 = 0;
    *(a1 + 32) = 0;
  }
}

void sub_1B5715D3C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::KaldiVlogMessage::~KaldiVlogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::Mse::Eval(void (***a1)(void, uint64_t, void *, uint64_t, uint64_t), uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a2 + 16);
  kaldi::Matrix<float>::Matrix(v30, *(a2 + 20), v10, 0, 0);
  v11 = *a3;
  v12 = a3[1];
  v13 = v12 - *a3;
  if (v12 != *a3)
  {
    v14 = 0;
    v15 = 0xAAAAAAAAAAAAAAABLL * (v13 >> 3);
    if (v15 <= 1)
    {
      v15 = 1;
    }

    do
    {
      v16 = (v11 + 24 * v14);
      v17 = *v16;
      v18 = v16[1] - *v16;
      if (v18)
      {
        v19 = v18 >> 3;
        v20 = v30[0] + 4 * v31 * v14;
        if (v19 <= 1)
        {
          v19 = 1;
        }

        v21 = (v17 + 4);
        do
        {
          v22 = *(v21 - 1);
          if (v22 >= v10)
          {
            kaldi::KaldiWarnMessage::KaldiWarnMessage(v29);
            v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, "Posterior pdf-id out of NN-output dimension, please check number of pdfs by 'hmm-info'.", 87);
            v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, " nn-outputs : ", 14);
            v27 = MEMORY[0x1B8C84C00](v26, v10);
            v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, ", posterior pdf-id : ", 21);
            MEMORY[0x1B8C84C00](v28, v22);
            kaldi::KaldiErrorMessage::~KaldiErrorMessage(v29);
          }

          v23 = *v21;
          v21 += 2;
          *(v20 + 4 * v22) = v23 + *(v20 + 4 * v22);
          --v19;
        }

        while (v19);
      }

      ++v14;
    }

    while (v14 != v15);
  }

  kaldi::CuMatrix<float>::CuMatrix<float>(v29, v30, 111, 0);
  (**a1)(a1, a2, v29, a4, a5);
  kaldi::CuMatrix<float>::~CuMatrix(v29);
  return kaldi::Matrix<float>::~Matrix(v30);
}

double kaldi::nnet1::Mse::CollectPerformance(uint64_t a1, void *lpsrc)
{
  if (a1 != lpsrc)
  {
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v7);
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v7, "Can't collect performance from non Mse object");
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v7);
    }

    v4 = *(v3 + 2);
    *(a1 + 32) = v4 + *(a1 + 32);
    v5 = *(v3 + 1);
    *(a1 + 24) += v5;
    *(a1 + 16) = v4 + *(a1 + 16);
    *(a1 + 8) += v5;
    result = 0.0;
    *(v3 + 24) = 0u;
    *(v3 + 8) = 0u;
  }

  return result;
}

uint64_t kaldi::nnet1::Mse::Report(kaldi::nnet1::Mse *this)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v13);
  v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, "AvgLoss: ", 9);
  v3 = MEMORY[0x1B8C84BE0](v2, *(this + 2) / *(this + 1));
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, " (Mse), ", 8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "[RMS ", 5);
  v5 = std::ostream::operator<<();
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "]", 1);
  std::ios_base::getloc((v6 + *(*v6 - 24)));
  v7 = std::locale::use_facet(&v18, MEMORY[0x1E69E5318]);
  (v7->__vftable[2].~facet_0)(v7, 10);
  std::locale::~locale(&v18);
  std::ostream::put();
  std::ostream::flush();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, "progress: [", 11);
  v9 = *(this + 5);
  v8 = *(this + 6);
  v18.__locale_ = &v13;
  v19 = " ";
  while (v9 != v8)
  {
    std::ostream_iterator<float,char,std::char_traits<char>>::operator=[abi:ne200100](&v18);
    v9 += 4;
  }

  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, "]", 1);
  std::ios_base::getloc((v10 + *(*v10 - 24)));
  v11 = std::locale::use_facet(&v18, MEMORY[0x1E69E5318]);
  (v11->__vftable[2].~facet_0)(v11, 10);
  std::locale::~locale(&v18);
  std::ostream::put();
  std::ostream::flush();
  std::stringbuf::str();
  v13 = *MEMORY[0x1E69E54E8];
  *(&v13 + *(v13 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v14 = MEMORY[0x1E69E5548] + 16;
  if (v16 < 0)
  {
    operator delete(v15[7].__locale_);
  }

  v14 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v15);
  std::ostream::~ostream();
  return MEMORY[0x1B8C85200](&v17);
}

void sub_1B5716344(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::locale::~locale((v2 - 80));
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::Mse::GetResults(kaldi::nnet1::Mse *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 1065353216;
  v4 = *(this + 2);
  std::string::basic_string[abi:ne200100]<0>(__p, "Loss");
  v10 = __p;
  v5 = std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a2, __p);
  v6 = v4;
  *(v5 + 10) = v6;
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = *(this + 1);
  std::string::basic_string[abi:ne200100]<0>(__p, "Frames");
  v10 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a2, __p) + 10) = v7;
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1B571645C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v15);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::LossEvaluatorItf::Eval()
{
  kaldi::KaldiWarnMessage::KaldiWarnMessage(v0);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, "Not implemented");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v0);
}

{
  kaldi::KaldiWarnMessage::KaldiWarnMessage(v0);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, "Not implemented");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v0);
}

{
  kaldi::KaldiWarnMessage::KaldiWarnMessage(v0);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, "Not implemented");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v0);
}

{
  kaldi::KaldiWarnMessage::KaldiWarnMessage(v0);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, "Not implemented");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v0);
}

void kaldi::nnet1::LossEvaluatorItf::GetAvgLoss(kaldi::nnet1::LossEvaluatorItf *this)
{
  kaldi::KaldiWarnMessage::KaldiWarnMessage(v1);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v1, "Not Implemented");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v1);
}

void kaldi::nnet1::Xent::~Xent(kaldi::nnet1::Xent *this)
{
  kaldi::nnet1::Xent::~Xent(this);

  JUMPOUT(0x1B8C85350);
}

{
  *this = &unk_1F2D2A668;
  v2 = *(this + 55);
  if (v2)
  {
    *(this + 56) = v2;
    operator delete(v2);
  }

  v3 = *(this + 53);
  if (v3)
  {
    free(v3);
  }

  *(this + 52) = 0;
  *(this + 53) = 0;
  *(this + 54) = 0;
  v4 = *(this + 49);
  if (v4)
  {
    *(this + 50) = v4;
    operator delete(v4);
  }

  v5 = *(this + 47);
  if (v5)
  {
    free(v5);
  }

  *(this + 46) = 0;
  *(this + 47) = 0;
  *(this + 48) = 0;
  v6 = *(this + 44);
  if (v6)
  {
    free(v6);
  }

  *(this + 43) = 0;
  *(this + 44) = 0;
  *(this + 45) = 0;
  v7 = *(this + 41);
  if (v7)
  {
    free(v7);
  }

  *(this + 40) = 0;
  *(this + 41) = 0;
  *(this + 42) = 0;
  v8 = *(this + 38);
  if (v8)
  {
    free(v8);
  }

  *(this + 37) = 0;
  *(this + 38) = 0;
  *(this + 39) = 0;
  kaldi::CuVector<float>::~CuVector(this + 33);
  kaldi::CuMatrix<float>::~CuMatrix(this + 216);
  kaldi::CuMatrix<float>::~CuMatrix(this + 168);
  kaldi::Vector<float>::Destroy(this + 144);
  kaldi::CuVector<float>::~CuVector(this + 14);
  v9 = *(this + 12);
  if (v9)
  {
    free(v9);
  }

  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 13) = 0;
  v10 = *(this + 8);
  if (v10)
  {
    *(this + 9) = v10;
    operator delete(v10);
  }
}

void kaldi::nnet1::Mse::~Mse(kaldi::nnet1::Mse *this)
{
  kaldi::nnet1::Mse::~Mse(this);

  JUMPOUT(0x1B8C85350);
}

{
  *this = &unk_1F2D2A6D8;
  kaldi::Vector<float>::Destroy(this + 176);
  kaldi::CuVector<float>::~CuVector(this + 18);
  kaldi::CuMatrix<float>::~CuMatrix(this + 96);
  kaldi::CuVector<float>::~CuVector(this + 8);
  v2 = *(this + 5);
  if (v2)
  {
    *(this + 6) = v2;
    operator delete(v2);
  }
}

uint64_t std::ostream_iterator<float,char,std::char_traits<char>>::operator=[abi:ne200100](uint64_t a1)
{
  std::ostream::operator<<();
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = strlen(*(a1 + 8));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*a1, v2, v3);
  }

  return a1;
}

void kaldi::TransitionModel::~TransitionModel(kaldi::TransitionModel *this)
{
  kaldi::Vector<float>::Destroy(this + 216);
  kaldi::Vector<float>::Destroy(this + 192);
  v2 = *(this + 21);
  if (v2)
  {
    *(this + 22) = v2;
    operator delete(v2);
  }

  v3 = *(this + 18);
  if (v3)
  {
    *(this + 19) = v3;
    operator delete(v3);
  }

  v4 = *(this + 15);
  if (v4)
  {
    *(this + 16) = v4;
    operator delete(v4);
  }

  v5 = *(this + 12);
  if (v5)
  {
    *(this + 13) = v5;
    operator delete(v5);
  }

  v6 = *(this + 9);
  if (v6)
  {
    *(this + 10) = v6;
    operator delete(v6);
  }

  v9 = (this + 48);
  std::vector<std::vector<kaldi::HmmTopology::HmmState>>::__destroy_vector::operator()[abi:ne200100](&v9);
  v7 = *(this + 3);
  if (v7)
  {
    *(this + 4) = v7;
    operator delete(v7);
  }

  v8 = *this;
  if (*this)
  {
    *(this + 1) = v8;
    operator delete(v8);
  }
}

uint64_t std::vector<char *>::__init_with_size[abi:ne200100]<char * const*,char * const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<char *>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B5716958(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<char *>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<int *>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

void quasar::OnlineLASSpeculativeBeamSearchDecoder::OnlineLASSpeculativeBeamSearchDecoder(uint64_t a1, __int128 *a2)
{
  v3 = quasar::Decoder::Decoder(a1, a2);
  *v3 = &unk_1F2D2A748;
  *(v3 + 456) = 0u;
  *(v3 + 472) = 0u;
  *(v3 + 488) = 0u;
  *(v3 + 504) = 257;
  *(v3 + 508) = 0x8000001F4;
  *(v3 + 516) = 0;
  *(v3 + 520) = 0x3C23D70A00000000;
  *(v3 + 528) = xmmword_1B5AFFF80;
  std::string::basic_string[abi:ne200100]<0>((v3 + 544), "");
  *(a1 + 616) = 0;
  *(a1 + 584) = 0u;
  *(a1 + 600) = 0u;
  *(a1 + 568) = 0u;
  *(a1 + 624) = 1065353216;
  *(a1 + 632) = 0;
  *(a1 + 636) = 0x300000008;
  *(a1 + 644) = 0;
  *(a1 + 648) = 0u;
  *(a1 + 664) = 0u;
  operator new();
}

void sub_1B5716B14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v15 = v12;
  std::unique_ptr<kaldi::quasar::OnlineLASAttentionChecker>::reset[abi:ne200100]((v10 + 672), 0);
  std::unique_ptr<kaldi::BeamSearchDecoder>::reset[abi:ne200100]((v10 + 664), 0);
  std::unique_ptr<kaldi::quasar::CEStatelessDecoderNet>::reset[abi:ne200100]((v10 + 656), 0);
  std::unique_ptr<kaldi::quasar::CEStatelessEncoderNet>::reset[abi:ne200100](v13, 0);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v10 + 592);
  a10 = v15;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a10);
  if (*(v10 + 567) < 0)
  {
    operator delete(*v11);
  }

  if (*(v10 + 503) < 0)
  {
    operator delete(*(v10 + 480));
  }

  if (*(v10 + 479) < 0)
  {
    operator delete(*v14);
  }

  quasar::Decoder::~Decoder(v10);
  _Unwind_Resume(a1);
}

void quasar::OnlineLASSpeculativeBeamSearchDecoder::~OnlineLASSpeculativeBeamSearchDecoder(quasar::OnlineLASSpeculativeBeamSearchDecoder *this)
{
  *this = &unk_1F2D2A748;
  v2 = *(this + 86);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::unique_ptr<kaldi::quasar::OnlineLASAttentionChecker>::reset[abi:ne200100](this + 84, 0);
  std::unique_ptr<kaldi::BeamSearchDecoder>::reset[abi:ne200100](this + 83, 0);
  std::unique_ptr<kaldi::quasar::CEStatelessDecoderNet>::reset[abi:ne200100](this + 82, 0);
  std::unique_ptr<kaldi::quasar::CEStatelessEncoderNet>::reset[abi:ne200100](this + 81, 0);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(this + 592);
  v3 = (this + 568);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (*(this + 567) < 0)
  {
    operator delete(*(this + 68));
  }

  if (*(this + 503) < 0)
  {
    operator delete(*(this + 60));
  }

  if (*(this + 479) < 0)
  {
    operator delete(*(this + 57));
  }

  quasar::Decoder::~Decoder(this);
}

{
  quasar::OnlineLASSpeculativeBeamSearchDecoder::~OnlineLASSpeculativeBeamSearchDecoder(this);

  JUMPOUT(0x1B8C85350);
}

void quasar::OnlineLASSpeculativeBeamSearchDecoder::registerParams(quasar::QsrTextSymbolTable **this, const void **a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "las-speculative-beam-search-decoder");
  quasar::SystemConfig::enforceMinVersion(a2, 211, 0, __p);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  kaldi::BeamSearchDecoderOptions::Register((this + 63), a2);
  kaldi::quasar::OnlineLASAttentionCheckerOptions::Register(this + 524, a2);
  quasar::QsrTextSymbolTable::Register(this[85], a2, 1, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  std::string::basic_string[abi:ne200100]<0>(__p, "encoder-model-file");
  std::string::basic_string[abi:ne200100]<0>(v4, "LAS encoder split model (TF/Espresso/CoreML graph)");
  quasar::SystemConfig::Register<std::string>(a2, __p, (this + 57), v4, 1, 211, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "decoder-model-file");
  std::string::basic_string[abi:ne200100]<0>(v4, "LAS decoder split model (TF/Espresso/CoreML graph)");
  quasar::SystemConfig::Register<std::string>(a2, __p, (this + 60), v4, 1, 211, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "batch-size");
  std::string::basic_string[abi:ne200100]<0>(v4, "batch size");
  quasar::SystemConfig::Register<int>(a2, __p, this + 540, v4, 0, 211, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "substring-delimiter");
  std::string::basic_string[abi:ne200100]<0>(v4, "Substring delimiter");
  quasar::SystemConfig::Register<std::string>(a2, __p, (this + 68), v4, 0, 239, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "token-delimiters");
  std::string::basic_string[abi:ne200100]<0>(v4, "List of token delimiters");
  quasar::SystemConfig::Register<std::vector<std::string>>(a2, __p, (this + 71), v4, 0, 211, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "split-tokens-by-character");
  std::string::basic_string[abi:ne200100]<0>(v4, "split tokens by character");
  quasar::SystemConfig::Register<BOOL>(a2, __p, (this + 79), v4, 0, 211, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "speculative-steps");
  std::string::basic_string[abi:ne200100]<0>(v4, "steps to decode beyond attention checks");
  quasar::SystemConfig::Register<int>(a2, __p, this + 636, v4, 0, 211, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "rollback-steps");
  std::string::basic_string[abi:ne200100]<0>(v4, "steps to rollback before each speculative decoder");
  quasar::SystemConfig::Register<int>(a2, __p, (this + 80), v4, 0, 211, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "speculative-catchup");
  std::string::basic_string[abi:ne200100]<0>(v4, "Catch up at the end of utterance by returning speculative predictions");
  quasar::SystemConfig::Register<BOOL>(a2, __p, this + 644, v4, 0, 211, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "unchecked-attention-heads");
  std::string::basic_string[abi:ne200100]<0>(v4, "Do not perform checks for attention heads at these indexes");
  quasar::SystemConfig::Register<std::unordered_set<std::string>>(a2, __p, (this + 74), v4, 0, 238, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1B571718C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::quasar::OnlineLASAttentionCheckerOptions::Register(uint64_t a1, uint64_t a2)
{
  std::string::basic_string[abi:ne200100]<0>(v6, "min-alignment-value");
  std::string::basic_string[abi:ne200100]<0>(__p, "minimum total alignment weight that must be assigned to the attention window");
  (*(*a2 + 24))(a2, v6, a1, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "num-forbidden-frames");
  std::string::basic_string[abi:ne200100]<0>(__p, "min number of frames that must be in the encoder output buffer after the right attention boundary");
  (*(*a2 + 8))(a2, v6, a1 + 4, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "num-forbidden-frames-silence");
  std::string::basic_string[abi:ne200100]<0>(__p, "min number of buffer frames after the right attention boundary when top prediction is silence");
  (*(*a2 + 8))(a2, v6, a1 + 8, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "chunk-size");
  std::string::basic_string[abi:ne200100]<0>(__p, "chunk size used in estimating attention window location");
  (*(*a2 + 8))(a2, v6, a1 + 12, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }
}

void sub_1B5717408(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5717664(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

void quasar::OnlineLASSpeculativeBeamSearchDecoder::runImpl(uint64_t a1, uint64_t a2, std::vector<std::wstring> **a3, quasar::SpeechRequestData **a4)
{
  quasar::SymbolTableList::clear((*a3)[20].__end_);
  end = (*a3)[20].__end_;
  v67 = *(a1 + 680);
  v9 = *(a1 + 688);
  v68 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  quasar::SymbolTableList::addSymbolTable(end, &v67, 0, -1);
  if (v68)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v68);
  }

  kaldi::quasar::OnlineLASSpeculativeDecodable::OnlineLASSpeculativeDecodable(v66, *(a1 + 648), *(a1 + 656), *a2, *(a1 + 672), *(a1 + 540), *(a1 + 636), *(a1 + 640), *(a1 + 644));
  v63 = 0;
  v64 = 0;
  v65 = 0;
  v61 = 0;
  v62 = 0;
  memset(&v59, 0, sizeof(v59));
  v60 = 0;
  kaldi::BeamSearchDecoder::InitDecoding(*(a1 + 664));
  v10 = 0;
  v11 = 0;
  while (1)
  {
    v12 = v10 - v11;
    while (1)
    {
      if (kaldi::BeamSearchDecoder::Finished(*(a1 + 664)))
      {
LABEL_46:
        kaldi::BeamSearchDecoder::FinalizeDecoding(*(a1 + 664));
        v29 = kaldi::quasar::OnlineLASSpeculativeDecodable::FrameOffset(v66);
        v30 = *a3;
        while (1)
        {
          LODWORD(v30[24].__end_cap_.__value_) = v29;
          if (!kaldi::OnlineFeatureMatrix::IsValidFrame(*a2, v29, 1))
          {
            break;
          }

          v30 = *a3;
          v29 = LODWORD((*a3)[24].__end_cap_.__value_) + 1;
        }

        v31 = *a3;
        BYTE4(v31[24].__end_cap_.__value_) = *(*a4 + 20);
        *(&v31[24].__end_cap_.__value_ + 5) = 257;
        v32 = kaldi::BeamSearchDecoder::ReachedFinal(*(a1 + 664), -1);
        v33 = quasar::gLogLevel < 4 || v32;
        if ((v33 & 1) == 0)
        {
          v51 = 0u;
          v52 = 0u;
          v49 = 0u;
          v50 = 0u;
          v47 = 0u;
          v48 = 0u;
          v45 = 0u;
          v46 = 0u;
          v43 = 0u;
          v44 = 0u;
          v41 = 0u;
          v42 = 0u;
          v39 = 0u;
          v40 = 0u;
          v37 = 0u;
          v38 = 0u;
          *__p = 0u;
          kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Decoder did not reach end-state, outputting partial traceback.", 62);
          quasar::QuasarInfoMessage::~QuasarInfoMessage(__p);
        }

        _ZNSt3__115allocate_sharedB8ne200100IN3fst9VectorFstINS1_6ArcTplINS1_16LatticeWeightTplIfEEiEENS1_11VectorStateIS6_NS_9allocatorIS6_EEEEEENS8_ISB_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
      }

      v56 = 0;
      v57 = 0;
      v58 = 0;
      MultiChainMultiAudioBuffer = quasar::SpeechRequestData::getMultiChainMultiAudioBuffer(*a4);
      PrimaryAudioEndMs = quasar::MultiChainMultiAudioBuffer::getPrimaryAudioEndMs(*MultiChainMultiAudioBuffer);
      if ((PrimaryAudioEndMs & 0x100000000) != 0)
      {
        kaldi::quasar::OnlineLASSpeculativeDecodable::SetAudioEndMilliseconds(v66, PrimaryAudioEndMs);
      }

      if (kaldi::BeamSearchDecoder::AdvanceDecoding(*(a1 + 664), v66, 1) >= 1)
      {
        fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::VectorFst();
      }

      if (*(a1 + 636) < 1 || *(a1 + 644) != 1 || (kaldi::quasar::OnlineLASSpeculativeDecodable::EncodingFinished(v66) & 1) == 0)
      {
        break;
      }

      v15 = 1;
LABEL_24:
      if (v56)
      {
        v57 = v56;
        operator delete(v56);
      }

      if (v15)
      {
        goto LABEL_46;
      }
    }

    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(&v56, v63, v64, (v64 - v63) >> 2);
    v16 = *(a1 + 664);
    if (&v60 != (v16 + 232))
    {
      std::vector<std::pair<int,float>>::__assign_with_size[abi:ne200100]<std::pair<int,float>*,std::pair<int,float>*>(&v60, *(v16 + 232), *(v16 + 240), (*(v16 + 240) - *(v16 + 232)) >> 3);
    }

    v17 = v60;
    v18 = v61;
    while (v17 != v18)
    {
      std::vector<int>::push_back[abi:ne200100](&v56, v17);
      v17 += 8;
    }

    if (v57 - v56 == v12 && !memcmp(v56, v11, v57 - v56))
    {
      break;
    }

    v19 = kaldi::quasar::OnlineLASSpeculativeDecodable::FrameOffset(v66);
    v20 = *a3;
    LODWORD(v20[24].__end_cap_.__value_) = v19;
    quasar::SymbolTableList::lookup(v20[20].__end_, &v56, &v20[2], &v20[3], 1);
    if (*(a2 + 561) != 1)
    {
      goto LABEL_41;
    }

    if (*(a1 + 576) != *(a1 + 568))
    {
      quasar::formatResults(&(*a3)[2], (a1 + 568), a1 + 544, *(a1 + 632), __p);
      v21 = *a3;
      std::vector<std::string>::__vdeallocate(*a3 + 2);
      *&v21[2].__begin_ = *__p;
      v21[2].__end_cap_.__value_ = v37;
      __p[1] = 0;
      *&v37 = 0;
      __p[0] = 0;
      v55[0] = __p;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v55);
    }

    v35 = v11;
    v22 = *a3;
    begin = v59.__begin_;
    v24 = v59.__end_;
    p_data = &(*a3)[2].__begin_->__r_.__value_.__l.__data_;
    if (v59.__end_ - v59.__begin_ != (*a3)[2].__end_ - p_data)
    {
LABEL_37:
      v27 = v22[24].__begin_;
      v28 = *(*a4 + 3);
      memset(v55, 0, sizeof(v55));
      memset(v53, 0, sizeof(v53));
      memset(&v54, 0, sizeof(v54));
      *&v38 = 0;
      *__p = 0u;
      v37 = 0u;
      std::string::basic_string[abi:ne200100]<0>(&__p[1], "▁");
      LOBYTE(v38) = 0;
      LOWORD(v34) = 0;
      (*(v27->__r_.__value_.__r.__words[0] + 24))(v27, v22 + 2, v28, 1, 0, 0, v55, &v54, v53, v34, __p);
      v11 = v35;
      if (SHIBYTE(v37) < 0)
      {
        operator delete(__p[1]);
      }

      __p[0] = v53;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
      __p[0] = &v54;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
      __p[0] = v55;
      std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](__p);
      if (&v59 != &(*a3)[2])
      {
        std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(&v59, (*a3)[2].__begin_, (*a3)[2].__end_, 0xAAAAAAAAAAAAAAABLL * (((*a3)[2].__end_ - (*a3)[2].__begin_) >> 3));
      }

      goto LABEL_41;
    }

    if (v59.__begin_ == v59.__end_)
    {
      v11 = v35;
      if (v35)
      {
        goto LABEL_42;
      }
    }

    else
    {
      do
      {
        v26 = std::equal_to<std::string>::operator()[abi:ne200100](__p, &begin->__r_.__value_.__l.__data_, p_data);
        if (!v26)
        {
          break;
        }

        ++begin;
        p_data += 3;
      }

      while (begin != v24);
      v11 = v35;
      if (!v26)
      {
        v22 = *a3;
        goto LABEL_37;
      }

LABEL_41:
      if (v11)
      {
LABEL_42:
        operator delete(v11);
      }
    }

    v11 = v56;
    v10 = v57;
  }

  v15 = 0;
  goto LABEL_24;
}

void sub_1B571813C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, void *__p, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v72 = v69[45];
  if (v72)
  {
    v69[46] = v72;
    operator delete(v72);
  }

  a21 = &a69;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a21);
  v73 = v69[51];
  if (v73)
  {
    v69[52] = v73;
    operator delete(v73);
  }

  v74 = v69[54];
  if (v74)
  {
    v69[55] = v74;
    operator delete(v74);
  }

  if (v70)
  {
    operator delete(v70);
  }

  kaldi::quasar::OnlineLASSpeculativeDecodable::~OnlineLASSpeculativeDecodable(&STACK[0x228]);
  _Unwind_Resume(a1);
}

uint64_t quasar::anArcJumpsOver(uint64_t *a1, float a2, float a3)
{
  v4 = *a1;
LABEL_2:
  if (v4 == a1[1])
  {
    v8 = 0;
  }

  else
  {
    for (i = *(*v4 + 72); ; i = *(i + 8))
    {
      if (i == *v4 + 64)
      {
        v4 += 8;
        goto LABEL_2;
      }

      v6 = *(i + 16);
      v7 = *(*v6 + 132);
      v3 = v7 < a2;
      if (v7 >= a2 || *(*v6 + 140) < a2 && v6[62] > a3)
      {
        break;
      }
    }

    v8 = 1;
  }

  return v8 & v3;
}

void quasar::mergeNodes(quasar *this, kaldi::WordHypLattice *a2, int a3)
{
  if (*(this + 1))
  {
    v4 = a2;
    kaldi::WordHypLattice::GetTimeSortedNodes(this, &v54);
    v6 = *(this + 6) - *(this + 5);
    v7 = *(this + 3);
    *(**(this + 2) + 128) = 1;
    *(*(v7 - 8) + 128) = 1;
    v9 = v54;
    v8 = v55;
    if (v55 != v54)
    {
      v10 = 0;
      v11 = v4;
      v12 = NAN;
      v13 = 1;
      while (1)
      {
        v14 = *(v9 + v10);
        v53 = v14;
        *(v14 + 128) = 0;
        v15 = *(v14 + 132);
        if (v15 != v12)
        {
          break;
        }

        ++v10;
LABEL_19:
        ++v13;
        if (v10 >= (v8 - v9) >> 3)
        {
          v33 = *(this + 6) - *(this + 5);
          goto LABEL_49;
        }
      }

      v16 = *(v14 + 136);
      __p[0] = 0;
      __p[1] = 0;
      *&v35 = 0;
      if (++v10 >= (v8 - v9) >> 3)
      {
LABEL_10:
        v21 = __p[0];
        if (__p[0] != __p[1])
        {
          if (!a3 || (v22 = v53, v23 = quasar::anArcJumpsOver(&v54, v53[33], v16), *(v22 + 128) = v23 ^ 1, (v23 & 1) == 0))
          {
            kaldi::WordHypLattice::MergeNodes(this, __p, &v53);
            kaldi::WordHypLattice::RecomputeTopSortedNodes(this);
            kaldi::WordHypLattice::RecomputeNodeTimestamps(this);
            kaldi::WordHypLattice::GetTimeSortedNodes(this, &v51);
            if (v54)
            {
              *&v55 = v54;
              operator delete(v54);
            }

            v9 = v51;
            v54 = v51;
            v55 = v52;
            v21 = __p[0];
            v8 = v52;
          }
        }

        if (v21)
        {
          __p[1] = v21;
          operator delete(v21);
          v9 = v54;
          v8 = v55;
        }

        v12 = v15;
        goto LABEL_19;
      }

      v17 = *(v9 + v13);
      v51 = v17;
      v18 = v53;
      v19 = v53[33];
      if ((v17[33] - v19) > v11)
      {
        v20 = v16;
LABEL_9:
        v16 = v20;
        goto LABEL_10;
      }

      v24 = v13;
      while (1)
      {
        if (v16 >= v17[34])
        {
          v20 = v16;
        }

        else
        {
          v20 = v17[34];
        }

        if ((v20 - v19) <= v11 && !kaldi::WordHypLattice::Node::IsSucceededBy(v18, &v51))
        {
          v25 = __p[0];
          v26 = __p[1];
          if (__p[0] == __p[1])
          {
LABEL_35:
            if (v26 >= v35)
            {
              v28 = (v26 - __p[0]) >> 3;
              if ((v28 + 1) >> 61)
              {
                std::vector<int>::__throw_length_error[abi:ne200100]();
              }

              v29 = (v35 - __p[0]) >> 2;
              if (v29 <= v28 + 1)
              {
                v29 = v28 + 1;
              }

              if (v35 - __p[0] >= 0x7FFFFFFFFFFFFFF8)
              {
                v30 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v30 = v29;
              }

              if (v30)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::CuWorkspace *>>(__p, v30);
              }

              *(8 * v28) = v51;
              v27 = (8 * v28 + 8);
              v31 = (8 * v28 - (__p[1] - __p[0]));
              memcpy(v31, __p[0], __p[1] - __p[0]);
              v32 = __p[0];
              __p[0] = v31;
              __p[1] = v27;
              *&v35 = 0;
              if (v32)
              {
                operator delete(v32);
              }
            }

            else
            {
              *v26 = v51;
              v27 = v26 + 1;
            }

            __p[1] = v27;
            goto LABEL_28;
          }

          while (!kaldi::WordHypLattice::Node::IsSucceededBy(*v25, &v51))
          {
            if (++v25 == v26)
            {
              v26 = __p[1];
              goto LABEL_35;
            }
          }
        }

        v20 = v16;
LABEL_28:
        ++v24;
        v9 = v54;
        v8 = v55;
        if (v24 < (v55 - v54) >> 3)
        {
          v17 = *(v54 + v24);
          v51 = v17;
          v18 = v53;
          v19 = v53[33];
          v16 = v20;
          if ((v17[33] - v19) <= v11)
          {
            continue;
          }
        }

        goto LABEL_9;
      }
    }

    v33 = v6;
LABEL_49:
    if (v33 >> 3 != (v6 >> 3))
    {
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      *__p = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Coding error: the number of arcs has changed after node-merging", 63);
      quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
    }

    kaldi::WordHypLattice::ReassignNodeIds(this);
    if (v54)
    {
      *&v55 = v54;
      operator delete(v54);
    }
  }
}

void sub_1B571874C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  v12 = *(v10 - 152);
  if (v12)
  {
    *(v10 - 144) = v12;
    operator delete(v12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::cu::RegularizeL1<float>(uint64_t a1, uint64_t a2, float a3, float a4)
{
  result = kaldi::MatrixBase<float>::NumRows(a1 + 8);
  if (result >= 1)
  {
    v9 = 0;
    v10 = -a4;
    do
    {
      if (kaldi::MatrixBase<float>::NumCols(a1 + 8) >= 1)
      {
        v11 = 0;
        do
        {
          v12 = *(a1 + 8) + 4 * v9 * *(a1 + 24);
          v13 = *(v12 + 4 * v11);
          if (v13 != 0.0)
          {
            v14 = *(a2 + 8) + 4 * v9 * *(a2 + 24);
            if (v13 >= 0.0)
            {
              v15 = a3;
            }

            else
            {
              v15 = -a3;
            }

            if (v13 > 0.0 == (v13 + (v10 * *(v14 + 4 * v11))) > v15)
            {
              *(v12 + 4 * v11) = v13 - v15;
            }

            else
            {
              *(v12 + 4 * v11) = 0;
              *(v14 + 4 * v11) = 0;
            }
          }

          ++v11;
        }

        while (v11 < kaldi::MatrixBase<float>::NumCols(a1 + 8));
      }

      ++v9;
      result = kaldi::MatrixBase<float>::NumRows(a1 + 8);
    }

    while (v9 < result);
  }

  return result;
}

uint64_t kaldi::cu::Splice<float>(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v5 = *a2;
  v6 = *(a2 + 1);
  result = kaldi::MatrixBase<float>::NumRows(a3 + 8);
  if (result >= 1)
  {
    v8 = 0;
    do
    {
      if (v5 >= 1)
      {
        for (i = 0; i != v5; ++i)
        {
          v10 = (*(v6 + 4 * i) + v8) & ~((*(v6 + 4 * i) + v8) >> 31);
          if (v10 >= kaldi::MatrixBase<float>::NumRows(a1 + 8))
          {
            v10 = kaldi::MatrixBase<float>::NumRows(a1 + 8) - 1;
          }

          v11 = *(a3 + 8) + 4 * *(a3 + 24) * v8;
          v12 = (v11 + 4 * (kaldi::MatrixBase<float>::NumCols(a1 + 8) * i));
          v13 = (*(a1 + 8) + 4 * *(a1 + 24) * v10);
          v14 = kaldi::MatrixBase<float>::NumCols(a1 + 8);
          memcpy(v12, v13, 4 * v14);
        }
      }

      ++v8;
      result = kaldi::MatrixBase<float>::NumRows(a3 + 8);
    }

    while (v8 < result);
  }

  return result;
}

double quasar::KeywordDirectOutputsSyncDecoder::KeywordDirectOutputsSyncDecoder(uint64_t a1, __int128 *a2)
{
  v2 = quasar::SyncDecoder::SyncDecoder(a1, a2);
  *v2 = &unk_1F2D2A820;
  *(v2 + 72) = 0;
  *(v2 + 80) = 0;
  *(v2 + 64) = 0;
  *(v2 + 88) = 9999;
  *(v2 + 96) = 1;
  result = 0.0;
  *(v2 + 104) = 0u;
  *(v2 + 120) = 0u;
  *(v2 + 136) = 0u;
  *(v2 + 152) = 0u;
  *(v2 + 168) = 0;
  return result;
}

void quasar::KeywordDirectOutputsSyncDecoder::~KeywordDirectOutputsSyncDecoder(void **this)
{
  *this = &unk_1F2D2A820;
  v2 = this + 19;
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = this + 16;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = this + 13;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 87) < 0)
  {
    operator delete(this[8]);
  }

  quasar::SyncDecoder::~SyncDecoder(this);
}

{
  quasar::KeywordDirectOutputsSyncDecoder::~KeywordDirectOutputsSyncDecoder(this);

  JUMPOUT(0x1B8C85350);
}

void quasar::KeywordDirectOutputsSyncDecoder::registerParams(quasar::KeywordDirectOutputsSyncDecoder *this, const void **a2)
{
  std::string::basic_string[abi:ne200100]<0>(v14, "keyword-direct-output-decoder");
  quasar::SystemConfig::enforceMinVersion(a2, 256, 0, v14);
  if (v15 < 0)
  {
    operator delete(v14[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v14, "keyword-array");
  std::string::basic_string[abi:ne200100]<0>(v12, "keyword names with order should match the output order from Nnet");
  quasar::SystemConfig::Register<std::vector<std::string>>(a2, v14, this + 128, v12, 1, 256, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  std::string::basic_string[abi:ne200100]<0>(v10, "batch-size");
  std::string::basic_string[abi:ne200100]<0>(v8, "The batch size that is used for results querying, for example 192 means one batch contains 192 frames");
  quasar::SystemConfig::Register<int>(a2, v10, this + 96, v8, 1, 256, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  std::string::basic_string[abi:ne200100]<0>(v6, "num-batches-to-use");
  std::string::basic_string[abi:ne200100]<0>(__p, "Num of batches to use for results cutoffif analyzed batches number are larger than this value, the cutoff cached token results will be used");
  quasar::SystemConfig::Register<int>(a2, v6, this + 88, __p, 0, 256, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  if (v9 < 0)
  {
    operator delete(v8[0]);
  }

  if (v11 < 0)
  {
    operator delete(v10[0]);
  }

  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  if (v15 < 0)
  {
    operator delete(v14[0]);
  }
}

void sub_1B5718C58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  if (*(v34 - 41) < 0)
  {
    operator delete(*(v34 - 64));
  }

  if (*(v34 - 17) < 0)
  {
    operator delete(*(v34 - 40));
  }

  _Unwind_Resume(exception_object);
}

void quasar::KeywordDirectOutputsSyncDecoder::finishInit(quasar::KeywordDirectOutputsSyncDecoder *this)
{
  v1 = *(this + 16);
  if (*(this + 17) == v1)
  {
    memset(v8, 0, sizeof(v8));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v8);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v8, "keywords from inputs config are empty");
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v8);
  }

  v3 = 0;
  v4 = 0;
  v5 = *(this + 14);
  do
  {
    LODWORD(v8[0]) = 0;
    v7 = 0;
    v6 = 0;
    if (v5 >= *(this + 15))
    {
      v5 = std::vector<quasar::Token>::__emplace_back_slow_path<std::string &,int,int,int,float const&,BOOL>(this + 104, v1 + v3, v8, &v7 + 1, &v7, &quasar::negInf, &v6);
    }

    else
    {
      std::allocator<quasar::Token>::construct[abi:ne200100]<quasar::Token,std::string &,int,int,int,float const&,BOOL>(this + 104, v5, v1 + v3, v8, &v7 + 1, &v7, &quasar::negInf, &v6);
      v5 = (v5 + 224);
      *(this + 14) = v5;
    }

    *(this + 14) = v5;
    ++v4;
    v1 = *(this + 16);
    v3 += 24;
  }

  while (0xAAAAAAAAAAAAAAABLL * ((*(this + 17) - v1) >> 3) > v4);
}

void quasar::KeywordDirectOutputsSyncDecoder::resetScores(quasar::KeywordDirectOutputsSyncDecoder *this)
{
  v2 = *(this + 19);
  v3 = *(this + 20);
  while (v3 != v2)
  {
    v3 -= 24;
    v18[0].__r_.__value_.__r.__words[0] = v3;
    std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](v18);
  }

  *(this + 20) = v2;
  v4 = *(this + 16);
  if (*(this + 17) != v4)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = (v4 + v5);
      if (*(v8 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v17, *v8, *(v8 + 1));
      }

      else
      {
        v9 = *v8;
        v17.__r_.__value_.__r.__words[2] = *(v8 + 2);
        *&v17.__r_.__value_.__l.__data_ = v9;
      }

      std::string::basic_string[abi:ne200100]<0>(v15, "");
      std::string::basic_string[abi:ne200100]<0>(v13, "");
      memset(v12, 0, sizeof(v12));
      std::string::basic_string[abi:ne200100]<0>(v10, "");
      quasar::Token::Token(v18, &v17, 0, 0, 0, 0, 0, v15, -3.4028e38, v13, v12, 0, v10, 0, 0, 0);
      quasar::Token::operator=(*(this + 13) + v6, v18);
      if (v28 < 0)
      {
        operator delete(__p);
      }

      if (v26 < 0)
      {
        operator delete(v25);
      }

      v29[0] = &v24;
      std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](v29);
      if (v23 < 0)
      {
        operator delete(v22);
      }

      v29[0] = &v21;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v29);
      if (v20 < 0)
      {
        operator delete(v19);
      }

      if (SHIBYTE(v18[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v18[0].__r_.__value_.__l.__data_);
      }

      if (v11 < 0)
      {
        operator delete(v10[0]);
      }

      v10[0] = v12;
      std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](v10);
      if (v14 < 0)
      {
        operator delete(v13[0]);
      }

      if (v16 < 0)
      {
        operator delete(v15[0]);
      }

      if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v17.__r_.__value_.__l.__data_);
      }

      ++v7;
      v4 = *(this + 16);
      v6 += 224;
      v5 += 24;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((*(this + 17) - v4) >> 3) > v7);
  }
}

void sub_1B5719088(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *__p, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  if (a41 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::KeywordDirectOutputsSyncDecoder::updateProb(uint64_t a1, kaldi::OnlineFeatureMatrix **a2, signed int a3, uint64_t *a4)
{
  if ((a3 - kaldi::OnlineFeatureMatrix::GetCurrentBatchOffset(*a2)) > 1)
  {
    memset(v12, 0, sizeof(v12));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v12);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v12, "Output for current batch is might not be 1 dimension");
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v12);
  }

  kaldi::OnlineFeatureMatrix::GetFrame(*a2, a3, v12);
  v7 = SDWORD2(v12[0]);
  std::vector<float>::vector[abi:ne200100](__p, SDWORD2(v12[0]));
  if (v7 >= 1)
  {
    v8 = 0;
    v9 = *&v12[0];
    v10 = __p[0];
    do
    {
      v10[v8] = *(v9 + 4 * v8);
      ++v8;
    }

    while (v7 != v8);
  }

  std::vector<std::vector<int>>::clear[abi:ne200100](a4);
  std::vector<std::vector<float>>::push_back[abi:ne200100](a4, __p);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_1B5719210(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::KeywordDirectOutputsSyncDecoder::getResultTokens(quasar::KeywordDirectOutputsSyncDecoder *this@<X0>, void **a2@<X8>)
{
  v32[1] = *MEMORY[0x1E69E9840];
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<std::vector<quasar::Token>>::reserve(a2, 0x6DB6DB6DB6DB6DB7 * ((*(this + 14) - *(this + 13)) >> 5));
  v5 = *(this + 13);
  for (i = *(this + 14); v5 != i; v5 += 14)
  {
    v6 = *v5;
    v16 = *(v5 + 2);
    v15 = v6;
    *(v5 + 1) = 0;
    *(v5 + 2) = 0;
    *v5 = 0;
    v7 = *(v5 + 39);
    *v17 = *(v5 + 24);
    *(&v17[1] + 7) = v7;
    v8 = *(v5 + 8);
    *&v17[3] = v5[3];
    v17[5] = v8;
    *(v5 + 7) = 0;
    *(v5 + 8) = 0;
    *(v5 + 6) = 0;
    v18 = *(v5 + 72);
    v19 = *(v5 + 11);
    *(v5 + 9) = 0;
    *(v5 + 10) = 0;
    *(v5 + 11) = 0;
    v9 = v5[6];
    v21 = *(v5 + 14);
    v20 = v9;
    *(v5 + 12) = 0;
    *(v5 + 13) = 0;
    *(v5 + 14) = 0;
    v22 = *(v5 + 120);
    v23 = *(v5 + 17);
    *(v5 + 15) = 0;
    *(v5 + 16) = 0;
    *(v5 + 17) = 0;
    v10 = v5[9];
    v25 = *(v5 + 20);
    v24 = v10;
    *(v5 + 18) = 0;
    *(v5 + 19) = 0;
    *(v5 + 20) = 0;
    LODWORD(v8) = *(v5 + 42);
    v27 = *(v5 + 86);
    v26 = v8;
    v11 = v5[11];
    v29 = *(v5 + 24);
    v28 = v11;
    *(v5 + 22) = 0;
    *(v5 + 23) = 0;
    *(v5 + 24) = 0;
    v12 = *(v5 + 200);
    v31 = *(v5 + 54);
    v30 = v12;
    memset(v13, 0, sizeof(v13));
    std::vector<quasar::Token>::__init_with_size[abi:ne200100]<quasar::Token const*,quasar::Token const*>(v13, &v15, v32, 1uLL);
    std::vector<std::vector<quasar::Token>>::push_back[abi:ne200100](a2, v13);
    v14 = v13;
    std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v14);
    quasar::Token::~Token(&v15);
  }
}

void sub_1B57193F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t quasar::KeywordDirectOutputsSyncDecoder::runSync(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 88);
  v5 = *v4;
  v6 = v4[1];
  while (v6 != v5)
  {
    v6 -= 24;
    v54[0] = v6;
    std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](v54);
  }

  v4[1] = v5;
  v45 = (*(**(*(a2 + 56) + 16) + 24))(*(*(a2 + 56) + 16));
  v7 = 0;
  v72 = 0;
  v73 = 0;
  v74 = 0;
  for (i = *(a1 + 92); ; ++i)
  {
    IsValidFrame = kaldi::OnlineFeatureMatrix::IsValidFrame(*(a2 + 56), i, 1);
    v10 = *(a1 + 88);
    v11 = i < v10 ? IsValidFrame : 0;
    if ((v11 & 1) == 0)
    {
      break;
    }

    v12 = *(a2 + 64);
    v71[0] = *(a2 + 56);
    v71[1] = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(v12 + 1, 1uLL, memory_order_relaxed);
    }

    quasar::KeywordDirectOutputsSyncDecoder::updateProb(IsValidFrame, v71, i, &v72);
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }

    ++v7;
  }

  v13 = *(a1 + 92);
  if (v13 >= v10)
  {
    if (quasar::gLogLevel >= 4)
    {
      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
      *__p = 0u;
      v66 = 0u;
      *v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      *v60 = 0u;
      *v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      *v54 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v54);
      v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v54, "batchesSeenSoFar: ", 18);
      v35 = MEMORY[0x1B8C84C00](v34, *(a1 + 92));
      v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, " hit numBatchToUse: ", 20);
      v37 = MEMORY[0x1B8C84C00](v36, *(a1 + 88));
      v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, " with frame number: ", 20);
      v39 = MEMORY[0x1B8C84C00](v38, (*(a1 + 96) * *(a1 + 88)));
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, ", use the tokens result from cutoff", 35);
      quasar::QuasarInfoMessage::~QuasarInfoMessage(v54);
    }

    v40 = *(a2 + 88);
    if (v40 != a1 + 152)
    {
      std::vector<std::vector<quasar::Token>>::__assign_with_size[abi:ne200100]<std::vector<quasar::Token>*,std::vector<quasar::Token>*>(v40, *(a1 + 152), *(a1 + 160), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 160) - *(a1 + 152)) >> 3));
    }
  }

  else
  {
    v14 = 0xAAAAAAAAAAAAAAABLL * ((v73 - v72) >> 3);
    if (v14)
    {
      if (v14 != 1)
      {
        v69 = 0u;
        v70 = 0u;
        v67 = 0u;
        v68 = 0u;
        *__p = 0u;
        v66 = 0u;
        *v63 = 0u;
        v64 = 0u;
        v61 = 0u;
        v62 = 0u;
        v59 = 0u;
        *v60 = 0u;
        *v57 = 0u;
        v58 = 0u;
        v55 = 0u;
        v56 = 0u;
        *v54 = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v54);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v54, "nnet Output is not single row", 29);
        quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v54);
      }

      v15 = *(a1 + 128);
      v16 = *(a1 + 136);
      if (0x6DB6DB6DB6DB6DB7 * ((*(a1 + 112) - *(a1 + 104)) >> 5) != 0xAAAAAAAAAAAAAAABLL * ((v16 - v15) >> 3))
      {
        v69 = 0u;
        v70 = 0u;
        v67 = 0u;
        v68 = 0u;
        *__p = 0u;
        v66 = 0u;
        *v63 = 0u;
        v64 = 0u;
        v61 = 0u;
        v62 = 0u;
        v59 = 0u;
        *v60 = 0u;
        *v57 = 0u;
        v58 = 0u;
        v55 = 0u;
        v56 = 0u;
        *v54 = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v54);
        v42 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v54, "bestKeywordsScores count : ", 27);
        v43 = MEMORY[0x1B8C84C30](v42, 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 112) - *(a1 + 104)) >> 5));
        v44 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v43, " unmatching with keywords count: ", 33);
        MEMORY[0x1B8C84C30](v44, 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 136) - *(a1 + 128)) >> 3));
        quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v54);
      }

      if (v16 != v15)
      {
        v17 = 0;
        v18 = 0;
        v19 = 0;
        do
        {
          v20 = *(a1 + 92);
          v21 = *(a1 + 96);
          if (quasar::gLogLevel >= 4)
          {
            v69 = 0u;
            v70 = 0u;
            v67 = 0u;
            v68 = 0u;
            *__p = 0u;
            v66 = 0u;
            *v63 = 0u;
            v64 = 0u;
            v61 = 0u;
            v62 = 0u;
            v59 = 0u;
            *v60 = 0u;
            *v57 = 0u;
            v58 = 0u;
            v55 = 0u;
            v56 = 0u;
            *v54 = 0u;
            kaldi::KaldiWarnMessage::KaldiWarnMessage(v54);
            v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v54, "KWD ", 4);
            v23 = *(a1 + 128) + v17;
            v24 = *(v23 + 23);
            if (v24 >= 0)
            {
              v25 = *(a1 + 128) + v17;
            }

            else
            {
              v25 = *v23;
            }

            if (v24 >= 0)
            {
              v26 = *(v23 + 23);
            }

            else
            {
              v26 = *(v23 + 8);
            }

            v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, v25, v26);
            v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, " ", 1);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, " confidence ", 12);
            std::ostream::operator<<();
            quasar::QuasarInfoMessage::~QuasarInfoMessage(v54);
            v15 = *(a1 + 128);
          }

          v29 = (v15 + v17);
          if (*(v29 + 23) < 0)
          {
            std::string::__init_copy_ctor_external(&v53, *v29, *(v29 + 1));
          }

          else
          {
            v30 = *v29;
            v53.__r_.__value_.__r.__words[2] = *(v29 + 2);
            *&v53.__r_.__value_.__l.__data_ = v30;
          }

          v31 = *(*(v73 - 24) + 4 * v19);
          std::string::basic_string[abi:ne200100]<0>(v51, "");
          std::string::basic_string[abi:ne200100]<0>(v49, "");
          memset(v48, 0, sizeof(v48));
          std::string::basic_string[abi:ne200100]<0>(v46, "");
          quasar::Token::Token(v54, &v53, v21 * v45 * v20, v21 * v45 * (v7 + v20), v21 * v45 * (v7 + v20), 0, 0, v51, v31, v49, v48, 0, v46, 0, 0, 0);
          quasar::Token::operator=(*(a1 + 104) + v18, v54);
          if (SBYTE7(v66) < 0)
          {
            operator delete(__p[0]);
          }

          if (SBYTE7(v64) < 0)
          {
            operator delete(v63[0]);
          }

          v75[0] = &v61 + 1;
          std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](v75);
          if (SBYTE7(v61) < 0)
          {
            operator delete(v60[0]);
          }

          v75[0] = &v58 + 1;
          std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v75);
          if (SBYTE7(v58) < 0)
          {
            operator delete(v57[0]);
          }

          if (SBYTE7(v55) < 0)
          {
            operator delete(v54[0]);
          }

          if (v47 < 0)
          {
            operator delete(v46[0]);
          }

          v46[0] = v48;
          std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](v46);
          if (v50 < 0)
          {
            operator delete(v49[0]);
          }

          if (v52 < 0)
          {
            operator delete(v51[0]);
          }

          if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v53.__r_.__value_.__l.__data_);
          }

          ++v19;
          v15 = *(a1 + 128);
          v18 += 224;
          v17 += 24;
        }

        while (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 136) - v15) >> 3) > v19);
        v13 = *(a1 + 92);
      }

      *(a1 + 92) = v13 + v7;
      quasar::KeywordDirectOutputsSyncDecoder::getResultTokens(a1, v54);
      v32 = *(a2 + 88);
      std::vector<std::vector<quasar::Token>>::__vdeallocate(v32);
      *v32 = *v54;
      *(v32 + 16) = v55;
      v54[0] = 0;
      v54[1] = 0;
      *&v55 = 0;
      v51[0] = v54;
      std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](v51);
      if (*(a1 + 92) >= *(a1 + 88))
      {
        v33 = *(a2 + 88);
        if ((a1 + 152) != v33)
        {
          std::vector<std::vector<quasar::Token>>::__assign_with_size[abi:ne200100]<std::vector<quasar::Token>*,std::vector<quasar::Token>*>(a1 + 152, *v33, v33[1], 0xAAAAAAAAAAAAAAABLL * (v33[1] - *v33));
        }
      }
    }
  }

  v54[0] = &v72;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](v54);
  return 1;
}

void sub_1B5719AC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *__p, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, uint64_t a45)
{
  a45 = v45 - 136;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&a45);
  _Unwind_Resume(a1);
}

uint64_t std::vector<quasar::Token>::__emplace_back_slow_path<std::string &,int,int,int,float const&,BOOL>(uint64_t a1, uint64_t a2, int *a3, int *a4, int *a5, float *a6, std::string::value_type *a7)
{
  v7 = 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 8) - *a1) >> 5);
  v8 = v7 + 1;
  if ((v7 + 1) > 0x124924924924924)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((*(a1 + 16) - *a1) >> 5) > v8)
  {
    v8 = 0xDB6DB6DB6DB6DB6ELL * ((*(a1 + 16) - *a1) >> 5);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((*(a1 + 16) - *a1) >> 5)) >= 0x92492492492492)
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::Token>>(a1, v11);
  }

  v18 = 0;
  v19 = 224 * v7;
  std::allocator<quasar::Token>::construct[abi:ne200100]<quasar::Token,std::string &,int,int,int,float const&,BOOL>(a1, (224 * v7), a2, a3, a4, a5, a6, a7);
  v20 = (224 * v7 + 224);
  v12 = *(a1 + 8);
  v13 = 224 * v7 + *a1 - v12;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::Token>,quasar::Token*>(a1, *a1, v12, v13);
  v14 = *a1;
  *a1 = v13;
  v15 = *(a1 + 16);
  v17 = v20;
  *(a1 + 8) = v20;
  *&v20 = v14;
  *(&v20 + 1) = v15;
  v18 = v14;
  v19 = v14;
  std::__split_buffer<quasar::Token>::~__split_buffer(&v18);
  return v17;
}

void sub_1B5719D08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<quasar::Token>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::allocator<quasar::Token>::construct[abi:ne200100]<quasar::Token,std::string &,int,int,int,float const&,BOOL>(uint64_t a1, std::string *a2, uint64_t a3, int *a4, int *a5, int *a6, float *a7, std::string::value_type *a8)
{
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v26, *a3, *(a3 + 8));
  }

  else
  {
    v26 = *a3;
  }

  v14 = *a4;
  v15 = *a5;
  v16 = *a6;
  v17 = *a7;
  v18 = *a8;
  std::string::basic_string[abi:ne200100]<0>(v24, "");
  std::string::basic_string[abi:ne200100]<0>(v22, "");
  memset(v21, 0, sizeof(v21));
  std::string::basic_string[abi:ne200100]<0>(__p, "");
  quasar::Token::Token(a2, &v26, v14, v15, v16, v18, 0, v24, v17, v22, v21, 0, __p, 0, 0, 0);
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  __p[0] = v21;
  std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](__p);
  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  if (v25 < 0)
  {
    operator delete(v24[0]);
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }
}

void sub_1B5719E84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  __p = &a21;
  std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (a29 < 0)
  {
    operator delete(a24);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (*(v35 - 89) < 0)
  {
    operator delete(*(v35 - 112));
  }

  _Unwind_Resume(a1);
}

void quasar::LmBuildConfig::~LmBuildConfig(void **this)
{
  *this = &unk_1F2D2A878;
  if (*(this + 119) < 0)
  {
    operator delete(this[12]);
  }

  if (*(this + 95) < 0)
  {
    operator delete(this[9]);
  }

  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }
}

void quasar::LmBuildConfig::getSysConfigVersion(quasar::LmBuildConfig *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v11, *(this + 1), *(this + 2));
  }

  else
  {
    v11 = *(this + 8);
  }

  quasar::filesystem::Path::Path(&__p, &v11);
  quasar::filesystem::Path::normalize(&__p, &v14);
  kaldi::quasar::Vocab::OOvWord(&v14, &v16);
  v14.__r_.__value_.__r.__words[0] = &unk_1F2CFAA28;
  if (v15 < 0)
  {
    operator delete(v14.__r_.__value_.__l.__size_);
  }

  __p.__r_.__value_.__r.__words[0] = &unk_1F2CFAA28;
  if (v13 < 0)
  {
    operator delete(__p.__r_.__value_.__l.__size_);
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v16.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v16.__r_.__value_.__l.__size_;
  }

  v6 = &v14;
  std::string::basic_string[abi:ne200100](&v14, size + 1);
  if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v6 = v14.__r_.__value_.__r.__words[0];
  }

  if (size)
  {
    if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v7 = &v16;
    }

    else
    {
      v7 = v16.__r_.__value_.__r.__words[0];
    }

    memmove(v6, v7, size);
  }

  *(&v6->__r_.__value_.__l.__data_ + size) = 58;
  quasar::SystemConfig::getMainModelVersion(this, &__p);
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
    v9 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v9 = __p.__r_.__value_.__l.__size_;
  }

  v10 = std::string::append(&v14, p_p, v9);
  *a2 = *v10;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }
}

void sub_1B571A14C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, void *a16, int a17, __int16 a18, char a19, char a20, int a21, __int16 a22, char a23, char a24, void *a25, void *a26, int a27, __int16 a28, char a29, char a30, int a31, __int16 a32, char a33, char a34)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  if (*(v34 - 33) < 0)
  {
    operator delete(*(v34 - 56));
  }

  _Unwind_Resume(exception_object);
}

uint64_t quasar::LmBuildConfig::getModelType(std::string *this)
{
  size = HIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) != 0)
  {
    size = this->__r_.__value_.__l.__size_;
  }

  if (!size)
  {
    return 1;
  }

  v3 = 0;
  for (i = "dummy"; std::string::compare(this, i); i += 20)
  {
    if (++v3 == 4)
    {
      memset(v7, 0, sizeof(v7));
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v7);
      v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "invalid model type specifier: ", 30);
      std::operator<<[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v5, this);
      quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v7);
    }
  }

  return v3;
}

void quasar::LmBuildConfig::readSysConfig(uint64_t a1, const void **a2, uint64_t a3)
{
  if (*(a3 + 23) < 0)
  {
    if (*(a3 + 8))
    {
      std::string::__init_copy_ctor_external(&v11, *a3, *(a3 + 8));
      goto LABEL_7;
    }
  }

  else if (*(a3 + 23))
  {
    v11 = *a3;
    goto LABEL_7;
  }

  std::string::basic_string[abi:ne200100]<0>(&v11, "lm-personalize.model");
LABEL_7:
  if ((v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v11.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v11.__r_.__value_.__l.__size_;
  }

  p_p = &__p;
  std::string::basic_string[abi:ne200100](&__p, size + 1);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if (size)
  {
    if ((v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v7 = &v11;
    }

    else
    {
      v7 = v11.__r_.__value_.__r.__words[0];
    }

    memmove(p_p, v7, size);
  }

  *(&p_p->__r_.__value_.__l.__data_ + size) = 46;
  quasar::SystemConfig::setPrefix(a2, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "weight");
  std::string::basic_string[abi:ne200100]<0>(v8, "Interpolation weight");
  quasar::SystemConfig::Register<float>(a2, &__p.__r_.__value_.__l.__data_, a1 + 8, v8, 0, 173, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v9 < 0)
  {
    operator delete(v8[0]);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "max-rescore-weight");
  std::string::basic_string[abi:ne200100]<0>(v8, "Max rescoring weight: 0 = exclude from rescoring, 1 = use in rescoring as usual, betw 0 and 1 = limit rescoring weight chosen by EM algorithm");
  quasar::SystemConfig::Register<float>(a2, &__p.__r_.__value_.__l.__data_, a1 + 12, v8, 0, 178, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v9 < 0)
  {
    operator delete(v8[0]);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "deserialize-test");
  std::string::basic_string[abi:ne200100]<0>(v8, "Test if the new model can be read before it is installed");
  quasar::SystemConfig::Register<BOOL>(a2, &__p.__r_.__value_.__l.__data_, a1 + 16, v8, 0, 182, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v9 < 0)
  {
    operator delete(v8[0]);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "type");
  std::string::basic_string[abi:ne200100]<0>(v8, "Type of model. Examples: 'dummy' or 'ngram'");
  quasar::SystemConfig::Register<std::string>(a2, &__p.__r_.__value_.__l.__data_, a1 + 96, v8, 1, 173, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v9 < 0)
  {
    operator delete(v8[0]);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  quasar::SystemConfig::readPtree(a2, &v11);
}

void sub_1B571A680(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(exception_object);
}

void quasar::makeLmBuildConfig()
{
  memset(&v5, 0, sizeof(v5));
  memset(&v3, 0, sizeof(v3));
  *__p = 0u;
  v1 = 0u;
  LODWORD(v2) = 1065353216;
  quasar::SystemConfig::SystemConfig(v4);
}

void sub_1B571AB48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54, void *__p, uint64_t a56, int a57, __int16 a58, char a59, char a60, uint64_t a61, char a62)
{
  if (a60 < 0)
  {
    operator delete(__p);
  }

  quasar::SystemConfig::~SystemConfig(&a62);
  if (*(v62 - 33) < 0)
  {
    operator delete(*(v62 - 56));
  }

  _Unwind_Resume(a1);
}

void sub_1B571AC60(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(va);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  JUMPOUT(0x1B571AC48);
}

quasar::LmModel2 *quasar::LmModel2::LmModel2(quasar::LmModel2 *this, float a2, float a3, uint64_t *a4)
{
  v5 = *a4;
  *this = *a4;
  *(this + *(v5 - 24)) = a4[1];
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 5) = 0;
  *(this + 4) = this + 40;
  *(this + 6) = 0;
  quasar::PTree::PTree((this + 56));
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 34) = 3;
  *(this + 18) = 0x3F80000000000000;
  *(this + 152) = 0;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 28) = 0;
  *(this + 232) = 1;
  return this;
}

void sub_1B571AD88(_Unwind_Exception *a1)
{
  v4 = v2;
  std::__tree<std::string>::destroy(v4, *(v1 + 40));
  if (*(v1 + 31) < 0)
  {
    operator delete(*v3);
  }

  _Unwind_Resume(a1);
}

void quasar::LmModel2::~LmModel2(quasar::LmModel2 *this, uint64_t *a2)
{
  v3 = *a2;
  *this = *a2;
  *(this + *(v3 - 24)) = a2[1];
  if (*(this + 231) < 0)
  {
    operator delete(*(this + 26));
  }

  if (*(this + 207) < 0)
  {
    operator delete(*(this + 23));
  }

  if (*(this + 183) < 0)
  {
    operator delete(*(this + 20));
  }

  quasar::PTree::~PTree((this + 56));
  std::__tree<std::string>::destroy(this + 32, *(this + 5));
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

uint64_t quasar::LmModel2::LmModel2(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[1];
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 40) = 0;
  *(a1 + 32) = a1 + 40;
  *(a1 + 48) = 0;
  quasar::PTree::PTree((a1 + 56));
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 3;
  *(a1 + 144) = 0x3F80000000000000;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0;
  *(a1 + 232) = 1;
  return a1;
}

void sub_1B571AFCC(_Unwind_Exception *a1)
{
  v4 = v2;
  std::__tree<std::string>::destroy(v4, *(v1 + 40));
  if (*(v1 + 31) < 0)
  {
    operator delete(*v3);
  }

  _Unwind_Resume(a1);
}

void quasar::_loadLmFromDirectoryWithoutCoordinator(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (quasar::gLogLevel >= 4)
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v22 = 0u;
    memset(v21, 0, sizeof(v21));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v21);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "Reading LmModel currentDir=", 27);
    v8 = *(a1 + 23);
    if (v8 >= 0)
    {
      v9 = a1;
    }

    else
    {
      v9 = *a1;
    }

    if (v8 >= 0)
    {
      v10 = *(a1 + 23);
    }

    else
    {
      v10 = *(a1 + 8);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v9, v10);
    quasar::QuasarInfoMessage::~QuasarInfoMessage(v21);
  }

  if (*(a3 + 23) < 0)
  {
    **a3 = 0;
    *(a3 + 8) = 0;
  }

  else
  {
    *a3 = 0;
    *(a3 + 23) = 0;
  }

  if (*(a4 + 16) == 1)
  {
    v11 = *(a4 + 8);
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    *(a4 + 16) = 0;
  }

  v19 = 0;
  v20 = 0;
  if (*(a1 + 23) >= 0)
  {
    v12 = *(a1 + 23);
  }

  else
  {
    v12 = *(a1 + 8);
  }

  v13 = v21;
  std::string::basic_string[abi:ne200100](v21, v12 + 1);
  if (v21[23] < 0)
  {
    v13 = *v21;
  }

  if (v12)
  {
    if (*(a1 + 23) >= 0)
    {
      v14 = a1;
    }

    else
    {
      v14 = *a1;
    }

    memmove(v13, v14, v12);
  }

  *&v13[v12] = 47;
  v15 = std::string::append(v21, "lm.json");
  v16 = *&v15->__r_.__value_.__l.__data_;
  v18.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
  *&v18.__r_.__value_.__l.__data_ = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  if ((v21[23] & 0x80000000) != 0)
  {
    operator delete(*v21);
  }

  if (quasar::filesystem::exists(&v18))
  {
    quasar::PTree::PTree(v17);
    quasar::PTree::readJsonFromFile();
  }

  std::optional<std::shared_ptr<kaldi::WordHypLattice>>::operator=[abi:ne200100]<std::shared_ptr<kaldi::WordHypLattice>&,void>(a4, &v19);
  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }
}

void sub_1B571B5A8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, uint64_t a52, uint64_t a53, std::__shared_weak_count *a54, uint64_t a55, uint64_t a56, int a57, __int16 a58, char a59, char a60)
{
  quasar::LmBuildConfig::ModelSysConfigParameters::~ModelSysConfigParameters(&a10);
  if (a29 < 0)
  {
    operator delete(__p);
  }

  if (a36 < 0)
  {
    operator delete(a31);
  }

  quasar::PTree::~PTree(&a38);
  if (a51 < 0)
  {
    operator delete(a46);
  }

  if (a54)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a54);
  }

  v64 = __cxa_begin_catch(a1);
  v65 = *v61;
  if (a2 == 2)
  {
    if (v65 >= 1)
    {
      v66 = v64;
      v60[18] = 0u;
      v60[19] = 0u;
      v60[16] = 0u;
      v60[17] = 0u;
      v60[14] = 0u;
      v60[15] = 0u;
      v60[12] = 0u;
      v60[13] = 0u;
      v60[10] = 0u;
      v60[11] = 0u;
      v60[8] = 0u;
      v60[9] = 0u;
      v60[6] = 0u;
      v60[7] = 0u;
      v60[4] = 0u;
      v60[5] = 0u;
      v60[3] = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&a55);
      v67 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&a55, "C++ exception: ", 15);
      v68 = (*(*v66 + 16))(v66);
      v69 = strlen(v68);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v67, v68, v69);
      quasar::QuasarErrorMessage::~QuasarErrorMessage(&a55);
    }
  }

  else if (v65 >= 1)
  {
    v60[18] = 0u;
    v60[19] = 0u;
    v60[16] = 0u;
    v60[17] = 0u;
    v60[14] = 0u;
    v60[15] = 0u;
    v60[12] = 0u;
    v60[13] = 0u;
    v60[10] = 0u;
    v60[11] = 0u;
    v60[8] = 0u;
    v60[9] = 0u;
    v60[6] = 0u;
    v60[7] = 0u;
    v60[4] = 0u;
    v60[5] = 0u;
    v60[3] = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&a55);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&a55, "Unknown exception", 17);
    quasar::QuasarErrorMessage::~QuasarErrorMessage(&a55);
  }

  __cxa_end_catch();
  JUMPOUT(0x1B571B508);
}

void sub_1B571B808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, std::locale a43)
{
  quasar::QuasarErrorMessage::~QuasarErrorMessage(&a43);
  __cxa_end_catch();
  JUMPOUT(0x1B571B6CCLL);
}

void quasar::LmModel2::getMetadata(quasar::PTree *a1@<X8>)
{
  quasar::PTree::PTree(a1);
  std::string::basic_string[abi:ne200100]<0>(__p, "version");
  quasar::PTree::getChildOptional(a1, __p);
}

void sub_1B571BBCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    JUMPOUT(0x1B571BBDCLL);
  }

  JUMPOUT(0x1B571BBE0);
}

void quasar::LmModel2::write(_BYTE *a1, uint64_t a2)
{
  v22 = *MEMORY[0x1E69E9840];
  if (a1[232])
  {
    v2 = *(a2 + 23);
    if ((v2 & 0x80u) != 0)
    {
      v2 = *(a2 + 8);
    }

    if (v2)
    {
      v3 = (*(*a1 + 32))(&v5);
      v4 = 0;
      quasar::FileCoordinator::create(v3);
    }

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v6 = 0u;
    v7 = 0u;
    v5 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v5);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&v5, "Destination is empty");
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v5);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  v5 = 0u;
  kaldi::KaldiWarnMessage::KaldiWarnMessage(&v5);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(&v5, "Model is only for inference and cannot be written");
  quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v5);
}

void sub_1B571BE0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

BOOL quasar::LmModel2::isCompatible(quasar::LmModel2 *this, const quasar::SystemConfig *a2)
{
  quasar::LmBuildConfig::getSysConfigVersion(a2, &__p);
  v3 = *(this + 183);
  if (v3 >= 0)
  {
    v4 = *(this + 183);
  }

  else
  {
    v4 = *(this + 21);
  }

  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  v6 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  if (v4 == size)
  {
    v9 = *(this + 20);
    v8 = this + 160;
    v7 = v9;
    if (v3 >= 0)
    {
      v10 = v8;
    }

    else
    {
      v10 = v7;
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v12 = memcmp(v10, p_p, v4) == 0;
    if (v6 < 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v12 = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_16:
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  return v12;
}

void quasar::LmModel2::getMetrics(quasar::LmModel2 *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = *(this + 14);
  v4 = (a2 + 8);
  if (*(this + 87) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(this + 8), *(this + 9));
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *(this + 4);
    *(a2 + 24) = *(this + 10);
  }

  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  std::vector<std::pair<std::string,quasar::PTree>>::__init_with_size[abi:ne200100]<std::pair<std::string,quasar::PTree>*,std::pair<std::string,quasar::PTree>*>(a2 + 32, *(this + 11), *(this + 12), 0x2E8BA2E8BA2E8BA3 * ((*(this + 12) - *(this + 11)) >> 3));
  *(a2 + 56) = *(this + 112);
  v5 = std::string::basic_string[abi:ne200100]<0>(__p, "totalTime");
  v6 = *(this + 15);
  Type = quasar::getType(v5, *&v6);
  std::to_string(&v8, v6);
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 1;
  quasar::PTree::putChild(a2, __p, &Type, 1);
  quasar::PTree::~PTree(&Type);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "times");
  quasar::times2Ptree(this + 4, &Type);
  quasar::PTree::putChild(a2, __p, &Type, 1);
  quasar::PTree::~PTree(&Type);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1B571C08C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  quasar::PTree::~PTree(&a10);
  if (a23 < 0)
  {
    operator delete(__p);
  }

  quasar::PTree::~PTree(v23);
  _Unwind_Resume(a1);
}

uint64_t quasar::LmModel2::setWeight(uint64_t this, float a2)
{
  *(this + 144) = a2;
  *(this + *(*this - 24) + 12) = a2;
  return this;
}

double quasar::LmModel2::getAgeSeconds(quasar::LmModel2 *this)
{
  result = 0.0;
  if (*(this + 16) != 0.0)
  {
    v6 = v1;
    v7 = v2;
    __t.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
    return fmax(std::chrono::system_clock::to_time_t(&__t) - *(this + 16), 0.0);
  }

  return result;
}

std::string *quasar::LmModel2::setModelSysConfigParams(uint64_t a1, uint64_t a2)
{
  *(a1 + 144) = *a2;
  std::string::operator=((a1 + 160), (a2 + 16));
  std::string::operator=((a1 + 184), (a2 + 40));

  return std::string::operator=((a1 + 208), (a2 + 64));
}

void quasar::buildLm(quasar::LmData *this@<X1>, void *a2@<X0>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  if (quasar::LmData::hasEnoughData(this))
  {
    v18 = 1;
    kaldi::Timer::Reset(v17, v5);
    v19 = 0;
    quasar::LmData::disallowMoreData(this);
    v6 = (*(**a2 + 16))();
    if (v6 > 3)
    {
      if (v6 != 4)
      {
        if (v6 == 5)
        {
          v7 = *a2;
          v8 = a2[1];
          if (v8)
          {
            atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
            v14 = v8;
            atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
          }

          else
          {
            v14 = 0;
          }

          v13 = v7;
          quasar::trainOrAdaptNNLMModel(&v13, this, &v20);
        }

LABEL_23:
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        v24 = 0u;
        v22 = 0u;
        v23 = 0u;
        v20 = 0u;
        v21 = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v20);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v20, "Unsupported LmBuildConfig type", 30);
        quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v20);
      }
    }

    else
    {
      if (!v6)
      {
        v11 = *a2;
        v12 = a2[1];
        if (v12)
        {
          atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
          v16 = v12;
          atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
        }

        else
        {
          v16 = 0;
        }

        v15 = v11;
        quasar::trainDummyModel(&v15);
      }

      if (v6 != 2)
      {
        goto LABEL_23;
      }
    }

    v9 = *a2;
    v10 = a2[1];
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
      v14 = v10;
      atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    }

    else
    {
      v14 = 0;
    }

    v13 = v9;
    quasar::trainOrAdaptNgramSrilmModel();
  }

  if (quasar::gLogLevel >= 4)
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v24 = 0u;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v20);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v20, "Not enough data. Skip training", 30);
    quasar::QuasarInfoMessage::~QuasarInfoMessage(&v20);
  }
}

void quasar::loadLmFromDirectory(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (quasar::gLogLevel >= 4)
  {
    memset(v6, 0, sizeof(v6));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v6);
    v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "Reading LmModel dir=", 20);
    v3 = *(a1 + 23);
    if (v3 >= 0)
    {
      v4 = a1;
    }

    else
    {
      v4 = *a1;
    }

    if (v3 >= 0)
    {
      v5 = *(a1 + 23);
    }

    else
    {
      v5 = *(a1 + 8);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, v4, v5);
    quasar::QuasarInfoMessage::~QuasarInfoMessage(v6);
  }

  quasar::FileCoordinator::create(a1);
}

void sub_1B571C6C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:ne200100](va);
  if (a3)
  {
    (*(*a3 + 8))(a3);
  }

  _Unwind_Resume(a1);
}

void quasar::removeLm(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 23);
  if ((v1 & 0x80u) != 0)
  {
    v1 = *(a1 + 8);
  }

  if (v1)
  {
    v2 = 0;
    quasar::FileCoordinator::create(a1);
  }

  memset(v3, 0, sizeof(v3));
  kaldi::KaldiWarnMessage::KaldiWarnMessage(v3);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v3, "Destination is empty");
  quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v3);
}

void sub_1B571C8F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  quasar::QuasarErrorMessage::~QuasarErrorMessage(va);
  _Unwind_Resume(a1);
}

uintmax_t quasar::removeLmHelper(const void **a1)
{
  if (*(a1 + 23) >= 0)
  {
    v2 = *(a1 + 23);
  }

  else
  {
    v2 = a1[1];
  }

  p_p = &__p;
  std::string::basic_string[abi:ne200100](&__p, v2 + 8);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if (v2)
  {
    if (*(a1 + 23) >= 0)
    {
      v4 = a1;
    }

    else
    {
      v4 = *a1;
    }

    memmove(p_p, v4, v2);
  }

  strcpy(p_p + v2, "/garbage");
  v5 = quasar::filesystem::exists(&__p);
  v6 = v5;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (!v6)
    {
      goto LABEL_27;
    }
  }

  else if (!v5)
  {
    goto LABEL_27;
  }

  if (*(a1 + 23) >= 0)
  {
    v7 = *(a1 + 23);
  }

  else
  {
    v7 = a1[1];
  }

  v8 = &__p;
  std::string::basic_string[abi:ne200100](&__p, v7 + 8);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v8 = __p.__r_.__value_.__r.__words[0];
  }

  if (v7)
  {
    if (*(a1 + 23) >= 0)
    {
      v9 = a1;
    }

    else
    {
      v9 = *a1;
    }

    memmove(v8, v9, v7);
  }

  strcpy(v8 + v7, "/garbage");
  quasar::filesystem::remove_all(&__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_27:
  if (*(a1 + 23) >= 0)
  {
    v10 = *(a1 + 23);
  }

  else
  {
    v10 = a1[1];
  }

  v11 = &__p;
  std::string::basic_string[abi:ne200100](&__p, v10 + 8);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v11 = __p.__r_.__value_.__r.__words[0];
  }

  if (v10)
  {
    if (*(a1 + 23) >= 0)
    {
      v12 = a1;
    }

    else
    {
      v12 = *a1;
    }

    memmove(v11, v12, v10);
  }

  strcpy(v11 + v10, "/current");
  v13 = quasar::filesystem::exists(&__p);
  v14 = v13;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (!v14)
    {
      goto LABEL_65;
    }
  }

  else if (!v13)
  {
    goto LABEL_65;
  }

  if (*(a1 + 23) >= 0)
  {
    v15 = *(a1 + 23);
  }

  else
  {
    v15 = a1[1];
  }

  v16 = &__p;
  std::string::basic_string[abi:ne200100](&__p, v15 + 8);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v16 = __p.__r_.__value_.__r.__words[0];
  }

  if (v15)
  {
    if (*(a1 + 23) >= 0)
    {
      v17 = a1;
    }

    else
    {
      v17 = *a1;
    }

    memmove(v16, v17, v15);
  }

  strcpy(v16 + v15, "/current");
  if (*(a1 + 23) >= 0)
  {
    v18 = *(a1 + 23);
  }

  else
  {
    v18 = a1[1];
  }

  v19 = &v22;
  std::string::basic_string[abi:ne200100](&v22, v18 + 8);
  if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v19 = v22.__r_.__value_.__r.__words[0];
  }

  if (v18)
  {
    if (*(a1 + 23) >= 0)
    {
      v20 = a1;
    }

    else
    {
      v20 = *a1;
    }

    memmove(v19, v20, v18);
  }

  strcpy(v19 + v18, "/garbage");
  quasar::filesystem::rename(&__p, &v22);
  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_65:
  result = quasar::filesystem::exists(a1);
  if (result)
  {
    return quasar::filesystem::remove_all(a1);
  }

  return result;
}

void sub_1B571CC38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void quasar::LmBuildConfig::ModelSysConfigParameters::~ModelSysConfigParameters(void **this)
{
  if (*(this + 87) < 0)
  {
    operator delete(this[8]);
  }

  if (*(this + 63) < 0)
  {
    operator delete(this[5]);
  }

  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }
}

void std::__shared_ptr_pointer<quasar::NgramSrilmCountConfig  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t std::__shared_ptr_pointer<quasar::NgramSrilmCountConfig  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<quasar::NgramSrilmCountConfig  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<quasar::DummyConfig  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t std::__shared_ptr_pointer<quasar::DummyConfig  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<quasar::DummyConfig  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<quasar::NgramSrilmAdaptationConfig  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t std::__shared_ptr_pointer<quasar::NgramSrilmAdaptationConfig  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<quasar::NgramSrilmAdaptationConfig  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<quasar::NNLmConfig  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t std::__shared_ptr_pointer<quasar::NNLmConfig  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<quasar::NNLmConfig  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<quasar::LmModel2::write(std::string const&)::$_0,std::allocator<quasar::LmModel2::write(std::string const&)::$_0>,void ()(std::string const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2D2AA58;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<quasar::LmModel2::write(std::string const&)::$_0,std::allocator<quasar::LmModel2::write(std::string const&)::$_0>,void ()(std::string const&)>::operator()(uint64_t a1, const void **a2)
{
  v3 = *(a1 + 8);
  if (*(a2 + 23) >= 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    v4 = a2[1];
  }

  p_p = &__p;
  std::string::basic_string[abi:ne200100](&__p, v4 + 8);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if (v4)
  {
    if (*(a2 + 23) >= 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = *a2;
    }

    memmove(p_p, v6, v4);
  }

  strcpy(p_p + v4, "/garbage");
  v7 = quasar::filesystem::exists(&__p);
  v8 = v7;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (!v8)
    {
      goto LABEL_27;
    }
  }

  else if (!v7)
  {
    goto LABEL_27;
  }

  if (*(a2 + 23) >= 0)
  {
    v9 = *(a2 + 23);
  }

  else
  {
    v9 = a2[1];
  }

  v10 = &__p;
  std::string::basic_string[abi:ne200100](&__p, v9 + 8);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v10 = __p.__r_.__value_.__r.__words[0];
  }

  if (v9)
  {
    if (*(a2 + 23) >= 0)
    {
      v11 = a2;
    }

    else
    {
      v11 = *a2;
    }

    memmove(v10, v11, v9);
  }

  strcpy(v10 + v9, "/garbage");
  quasar::filesystem::remove_all(&__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_27:
  if (*(a2 + 23) >= 0)
  {
    v12 = *(a2 + 23);
  }

  else
  {
    v12 = a2[1];
  }

  v13 = &__p;
  std::string::basic_string[abi:ne200100](&__p, v12 + 8);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v13 = __p.__r_.__value_.__r.__words[0];
  }

  if (v12)
  {
    if (*(a2 + 23) >= 0)
    {
      v14 = a2;
    }

    else
    {
      v14 = *a2;
    }

    memmove(v13, v14, v12);
  }

  strcpy(v13 + v12, "/current");
  v15 = quasar::filesystem::exists(&__p);
  v16 = v15;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (!v16)
    {
      goto LABEL_77;
    }
  }

  else if (!v15)
  {
    goto LABEL_77;
  }

  if (*(a2 + 23) >= 0)
  {
    v17 = *(a2 + 23);
  }

  else
  {
    v17 = a2[1];
  }

  v18 = &__p;
  std::string::basic_string[abi:ne200100](&__p, v17 + 8);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v18 = __p.__r_.__value_.__r.__words[0];
  }

  if (v17)
  {
    if (*(a2 + 23) >= 0)
    {
      v19 = a2;
    }

    else
    {
      v19 = *a2;
    }

    memmove(v18, v19, v17);
  }

  strcpy(v18 + v17, "/current");
  if (*(a2 + 23) >= 0)
  {
    v20 = *(a2 + 23);
  }

  else
  {
    v20 = a2[1];
  }

  v21 = &v53;
  std::string::basic_string[abi:ne200100](&v53, v20 + 8);
  if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v21 = v53.__r_.__value_.__r.__words[0];
  }

  if (v20)
  {
    if (*(a2 + 23) >= 0)
    {
      v22 = a2;
    }

    else
    {
      v22 = *a2;
    }

    memmove(v21, v22, v20);
  }

  strcpy(v21 + v20, "/garbage");
  quasar::filesystem::rename(&__p, &v53);
  if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v53.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (*(a2 + 23) >= 0)
  {
    v23 = *(a2 + 23);
  }

  else
  {
    v23 = a2[1];
  }

  v24 = &__p;
  std::string::basic_string[abi:ne200100](&__p, v23 + 8);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v24 = __p.__r_.__value_.__r.__words[0];
  }

  if (v23)
  {
    if (*(a2 + 23) >= 0)
    {
      v25 = a2;
    }

    else
    {
      v25 = *a2;
    }

    memmove(v24, v25, v23);
  }

  strcpy(v24 + v23, "/garbage");
  quasar::filesystem::remove_all(&__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_77:
  if (*(a2 + 23) >= 0)
  {
    v26 = *(a2 + 23);
  }

  else
  {
    v26 = a2[1];
  }

  v27 = &__p;
  std::string::basic_string[abi:ne200100](&__p, v26 + 5);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v27 = __p.__r_.__value_.__r.__words[0];
  }

  if (v26)
  {
    if (*(a2 + 23) >= 0)
    {
      v28 = a2;
    }

    else
    {
      v28 = *a2;
    }

    memmove(v27, v28, v26);
  }

  strcpy(v27 + v26, "/next");
  v29 = quasar::filesystem::exists(&__p);
  v30 = v29;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (!v30)
    {
      goto LABEL_103;
    }
  }

  else if (!v29)
  {
    goto LABEL_103;
  }

  if (*(a2 + 23) >= 0)
  {
    v31 = *(a2 + 23);
  }

  else
  {
    v31 = a2[1];
  }

  v32 = &__p;
  std::string::basic_string[abi:ne200100](&__p, v31 + 5);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v32 = __p.__r_.__value_.__r.__words[0];
  }

  if (v31)
  {
    if (*(a2 + 23) >= 0)
    {
      v33 = a2;
    }

    else
    {
      v33 = *a2;
    }

    memmove(v32, v33, v31);
  }

  strcpy(v32 + v31, "/next");
  quasar::filesystem::remove_all(&__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_103:
  if (*(a2 + 23) >= 0)
  {
    v34 = *(a2 + 23);
  }

  else
  {
    v34 = a2[1];
  }

  v35 = &__p;
  std::string::basic_string[abi:ne200100](&__p, v34 + 5);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v35 = __p.__r_.__value_.__r.__words[0];
  }

  if (v34)
  {
    if (*(a2 + 23) >= 0)
    {
      v36 = a2;
    }

    else
    {
      v36 = *a2;
    }

    memmove(v35, v36, v34);
  }

  strcpy(v35 + v34, "/next");
  Directories = quasar::appleCreateDirectories(&__p, v3[34]);
  v38 = Directories;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((v38 & 1) == 0)
    {
      return;
    }
  }

  else if ((Directories & 1) == 0)
  {
    return;
  }

  if (*(a2 + 23) >= 0)
  {
    v39 = *(a2 + 23);
  }

  else
  {
    v39 = a2[1];
  }

  v40 = &__p;
  std::string::basic_string[abi:ne200100](&__p, v39 + 5);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v40 = __p.__r_.__value_.__r.__words[0];
  }

  if (v39)
  {
    if (*(a2 + 23) >= 0)
    {
      v41 = a2;
    }

    else
    {
      v41 = *a2;
    }

    memmove(v40, v41, v39);
  }

  strcpy(v40 + v39, "/next");
  v42 = (*(*v3 + 24))(v3, &__p);
  v43 = v42;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((v43 & 1) == 0)
    {
      return;
    }

LABEL_131:
    if (*(a2 + 23) >= 0)
    {
      v44 = *(a2 + 23);
    }

    else
    {
      v44 = a2[1];
    }

    v45 = &v52;
    std::string::basic_string[abi:ne200100](&v52, v44 + 5);
    if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v45 = v52.__r_.__value_.__r.__words[0];
    }

    if (v44)
    {
      if (*(a2 + 23) >= 0)
      {
        v46 = a2;
      }

      else
      {
        v46 = *a2;
      }

      memmove(v45, v46, v44);
    }

    strcpy(v45 + v44, "/next");
    v47 = std::string::append(&v52, "/");
    v48 = *&v47->__r_.__value_.__l.__data_;
    v53.__r_.__value_.__r.__words[2] = v47->__r_.__value_.__r.__words[2];
    *&v53.__r_.__value_.__l.__data_ = v48;
    v47->__r_.__value_.__l.__size_ = 0;
    v47->__r_.__value_.__r.__words[2] = 0;
    v47->__r_.__value_.__r.__words[0] = 0;
    v49 = std::string::append(&v53, "lm.json");
    v50 = *&v49->__r_.__value_.__l.__data_;
    __p.__r_.__value_.__r.__words[2] = v49->__r_.__value_.__r.__words[2];
    *&__p.__r_.__value_.__l.__data_ = v50;
    v49->__r_.__value_.__l.__size_ = 0;
    v49->__r_.__value_.__r.__words[2] = 0;
    v49->__r_.__value_.__r.__words[0] = 0;
    quasar::PTree::writeJsonToFile();
  }

  if (v42)
  {
    goto LABEL_131;
  }
}