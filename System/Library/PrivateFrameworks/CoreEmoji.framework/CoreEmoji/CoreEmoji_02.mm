uint64_t trie::CedarMinimalPrefixTrie<unsigned int,char>::advance(uint64_t a1, unint64_t *a2, uint64_t a3, unint64_t a4)
{
  v4 = *a2;
  v6 = 0;
  v7 = v4;
  if (cedar::da<unsigned int,-1,-2,true,1,0ul>::_find(a1 + 8, a3, &v7, &v6, a4) == -2)
  {
    return -1;
  }

  else
  {
    return v7;
  }
}

uint64_t trie::CedarMinimalPrefixTrie<unsigned int,char>::enumerateCompletions(uint64_t a1, const void *a2, size_t a3)
{
  v11[4] = *MEMORY[0x1E69E9840];
  v11[0] = (*(*a1 + 104))(a1);
  v10 = (*(*a1 + 120))(a1, v11, a2, a3);
  result = (*(*a1 + 112))(a1, &v10);
  if (result)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      if (a3 < 0x17)
      {
        v9 = a3;
        if (a3)
        {
          memmove(&__dst, a2, a3);
        }

        *(&__dst + a3) = 0;
        operator new();
      }

      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1D2B1A0F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, char a17)
{
  std::__function::__value_func<void ()(unsigned int,std::string_view,BOOL &)>::~__value_func[abi:ne200100](&a17);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<trie::CedarMinimalPrefixTrie<unsigned int,char>::enumerateCompletions(std::string_view,std::function<void ()(unsigned int,std::string_view,BOOL &)> const&,int)::{lambda(unsigned int const&,std::string_view,BOOL &)#1},std::allocator<trie::CedarMinimalPrefixTrie<unsigned int,char>::enumerateCompletions(std::string_view,std::function<void ()(unsigned int,std::string_view,BOOL &)> const&,int)::{lambda(unsigned int const&,std::string_view,BOOL &)#1}>,void ()(unsigned int,std::string_view,BOOL &)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZNK4trie22CedarMinimalPrefixTrieIjcE20enumerateCompletionsENSt3__117basic_string_viewIcNS2_11char_traitsIcEEEERKNS2_8functionIFvjS6_RbEEEiEUlRKjS6_S8_E_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<trie::CedarMinimalPrefixTrie<unsigned int,char>::enumerateCompletions(std::string_view,std::function<void ()(unsigned int,std::string_view,BOOL &)> const&,int)::{lambda(unsigned int const&,std::string_view,BOOL &)#1},std::allocator<trie::CedarMinimalPrefixTrie<unsigned int,char>::enumerateCompletions(std::string_view,std::function<void ()(unsigned int,std::string_view,BOOL &)> const&,int)::{lambda(unsigned int const&,std::string_view,BOOL &)#1}>,void ()(unsigned int,std::string_view,BOOL &)>::operator()(uint64_t *a1, int *a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 + 8);
  v9 = a1[3];
  v10 = v9 + v8;
  v11 = a1[1];
  v12 = *(v11 + 23);
  if (v12 < 0)
  {
    v13 = *(v11 + 8);
  }

  else
  {
    v13 = *(v11 + 23);
  }

  v14 = *a3;
  if (v13 < v10)
  {
    std::string::resize(a1[1], v9 + v8, 0);
    v11 = a1[1];
    v9 = a1[3];
    LOBYTE(v12) = *(v11 + 23);
  }

  v15 = v11;
  if ((v12 & 0x80) != 0)
  {
    v15 = *v11;
  }

  if (v8)
  {
    memmove((v15 + v9), v14, v8);
    v11 = a1[1];
    LOBYTE(v12) = *(v11 + 23);
  }

  v16 = *a2;
  if ((v12 & 0x80) != 0)
  {
    v11 = *v11;
  }

  v17 = *(a1[4] + 24);

  return std::function<void ()(unsigned int,std::string_view,BOOL &)>::operator()(v17, v16, v11, v10, a4);
}

__n128 std::__function::__func<trie::CedarMinimalPrefixTrie<unsigned int,char>::enumerateCompletions(std::string_view,std::function<void ()(unsigned int,std::string_view,BOOL &)> const&,int)::{lambda(unsigned int const&,std::string_view,BOOL &)#1},std::allocator<trie::CedarMinimalPrefixTrie<unsigned int,char>::enumerateCompletions(std::string_view,std::function<void ()(unsigned int,std::string_view,BOOL &)> const&,int)::{lambda(unsigned int const&,std::string_view,BOOL &)#1}>,void ()(unsigned int,std::string_view,BOOL &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F4E06AD8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t trie::CedarMinimalPrefixTrie<unsigned int,char>::enumeratePrefixStrings(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = 0;
  result = (*(*a1 + 104))(a1);
  v11 = result;
  if (a3)
  {
    v9 = 0;
    do
    {
      v11 = (*(*a1 + 120))(a1, &v11, v9 + a2, 1);
      result = (*(*a1 + 112))(a1, &v11);
      if (!result)
      {
        break;
      }

      v10 = 0;
      result = (*(*a1 + 128))(a1, &v11, &v10);
      if (result)
      {
        result = std::function<void ()(unsigned int,std::string_view,BOOL &)>::operator()(*(a4 + 24), v10, a2, ++v9, &v12);
        if (v12)
        {
          return result;
        }
      }

      else
      {
        ++v9;
      }
    }

    while (v9 != a3);
  }

  return result;
}

BOOL trie::CedarMinimalPrefixTrie<unsigned int,char>::lookup(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = 0;
  v9 = 0;
  v5 = cedar::da<unsigned int,-1,-2,true,1,0ul>::_find(a1 + 8, a2, &v9, &v8, a3);
  if (v5 == -2)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  *a4 = v6;
  return v6 != -1;
}

uint64_t trie::CedarMinimalPrefixTrie<unsigned int,char>::load(uint64_t a1, int *a2, unint64_t a3)
{
  cedar::da<unsigned int,-1,-2,true,1,0ul>::clear(a1 + 8, 0);
  if (a3 >= 8)
  {
    v6 = (a3 & 0xFFFFFFFFFFFFFFF8) - *a2;
  }

  else
  {
    v6 = 0;
  }

  *(a1 + 24) = a2;
  *(a1 + 16) = a2 + *a2;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 >> 3) + 1;
  }

  else
  {
    v7 = v6 >> 3;
  }

  *(a1 + 72) = v7;
  *(a1 + 84) = 1;
  cedar::da<unsigned int,-1,-2,true,1,0ul>::restore(a1 + 8);
  return 1;
}

uint64_t trie::CedarMinimalPrefixTrie<unsigned int,char>::build(uint64_t a1, uint64_t *a2, void *a3)
{
  v3 = *a2;
  v4 = a2[1];
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - *a2) >> 3) != (a3[1] - *a3) >> 2)
  {
    __assert_rtn("build", "CedarMinimalPrefixTrie.h", 78, "keys.size() == values.size()");
  }

  if (v4 == v3)
  {
    v11 = 1;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    LODWORD(v11) = 1;
    do
    {
      v12 = (v3 + v8);
      v13 = *(v12 + 23);
      if ((v13 & 0x8000000000000000) != 0)
      {
        v14 = *v12;
        v13 = v12[1];
      }

      else
      {
        v14 = v12;
      }

      v11 = v11 & (*(*a1 + 152))(a1, v14, v13, *a3 + v9);
      ++v10;
      v3 = *a2;
      v9 += 4;
      v8 += 24;
    }

    while (v10 < 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  }

  cedar::da<unsigned int,-1,-2,true,1,0ul>::restore(a1 + 8);
  return v11;
}

uint64_t trie::CedarMinimalPrefixTrie<unsigned int,char>::build(uint64_t a1, void *a2)
{
  __p = 0;
  v5 = 0;
  v6 = 0;
  if (a2[1] != *a2)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(1uLL);
  }

  v2 = (*(*a1 + 64))(a1, a2, &__p);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }

  return v2;
}

void sub_1D2B1A7D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t trie::CedarMinimalPrefixTrie<unsigned int,char>::serialize@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v12);
  v4 = **(a1 + 24);
  std::ostream::write();
  v5 = *(a1 + 16);
  v6 = *(a1 + 72);
  std::ostream::write();
  if ((v19 & 0x10) != 0)
  {
    v8 = v18;
    if (v18 < v15)
    {
      v18 = v15;
      v8 = v15;
    }

    locale = v14[4].__locale_;
  }

  else
  {
    if ((v19 & 8) == 0)
    {
      v7 = 0;
      a2[23] = 0;
      goto LABEL_14;
    }

    locale = v14[1].__locale_;
    v8 = v14[3].__locale_;
  }

  v7 = v8 - locale;
  if ((v8 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v7 >= 0x17)
  {
    operator new();
  }

  a2[23] = v7;
  if (v7)
  {
    memmove(a2, locale, v7);
  }

LABEL_14:
  a2[v7] = 0;
  v12[0] = *MEMORY[0x1E69E54D8];
  v10 = *(MEMORY[0x1E69E54D8] + 72);
  *(v12 + *(v12[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v12[2] = v10;
  v13 = MEMORY[0x1E69E5548] + 16;
  if (v17 < 0)
  {
    operator delete(__p);
  }

  v13 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v14);
  std::iostream::~basic_iostream();
  return MEMORY[0x1D38A8BC0](&v20);
}

void sub_1D2B1AA60(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  MEMORY[0x1D38A8BC0](v2 + 128);
  _Unwind_Resume(a1);
}

uint64_t trie::Trie<unsigned int,char,trie::CedarTrieCursor>::enumerateCompletions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[4] = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F4E06A80;
  v6[1] = a4;
  v6[3] = v6;
  (*(*a1 + 96))(a1, a2, a3, v6);
  result = std::__function::__value_func<void ()(unsigned int,std::string_view,BOOL &)>::~__value_func[abi:ne200100](v6);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1D2B1AB20(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(unsigned int,std::string_view,BOOL &)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<trie::Trie<unsigned int,char,trie::CedarTrieCursor>::enumerateCompletions(char const*,unsigned long,std::function<void ()(long long,std::string_view,BOOL &)> const&,int)::{lambda(unsigned int,std::string_view,BOOL &)#1},std::allocator<trie::Trie<unsigned int,char,trie::CedarTrieCursor>::enumerateCompletions(char const*,unsigned long,std::function<void ()(long long,std::string_view,BOOL &)> const&,int)::{lambda(unsigned int,std::string_view,BOOL &)#1}>,void ()(unsigned int,std::string_view,BOOL &)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZNK4trie4TrieIjcNS_15CedarTrieCursorEE20enumerateCompletionsEPKcmRKNSt3__18functionIFvxNS5_17basic_string_viewIcNS5_11char_traitsIcEEEERbEEEiEUljSA_SB_E_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<trie::Trie<unsigned int,char,trie::CedarTrieCursor>::enumerateCompletions(char const*,unsigned long,std::function<void ()(long long,std::string_view,BOOL &)> const&,int)::{lambda(unsigned int,std::string_view,BOOL &)#1},std::allocator<trie::Trie<unsigned int,char,trie::CedarTrieCursor>::enumerateCompletions(char const*,unsigned long,std::function<void ()(long long,std::string_view,BOOL &)> const&,int)::{lambda(unsigned int,std::string_view,BOOL &)#1}>,void ()(unsigned int,std::string_view,BOOL &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F4E06A80;
  a2[1] = v2;
  return result;
}

uint64_t trie::Trie<unsigned int,char,trie::CedarTrieCursor>::enumeratePrefixStrings(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[4] = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F4E06A28;
  v6[1] = a4;
  v6[3] = v6;
  (*(*a1 + 88))(a1, a2, a3, v6);
  result = std::__function::__value_func<void ()(unsigned int,std::string_view,BOOL &)>::~__value_func[abi:ne200100](v6);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1D2B1ACD8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(unsigned int,std::string_view,BOOL &)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<trie::Trie<unsigned int,char,trie::CedarTrieCursor>::enumeratePrefixStrings(char const*,unsigned long,std::function<void ()(long long,std::string_view,BOOL &)> const&)::{lambda(unsigned int,std::string_view,BOOL &)#1},std::allocator<trie::Trie<unsigned int,char,trie::CedarTrieCursor>::enumeratePrefixStrings(char const*,unsigned long,std::function<void ()(long long,std::string_view,BOOL &)> const&)::{lambda(unsigned int,std::string_view,BOOL &)#1}>,void ()(unsigned int,std::string_view,BOOL &)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZNK4trie4TrieIjcNS_15CedarTrieCursorEE22enumeratePrefixStringsEPKcmRKNSt3__18functionIFvxNS5_17basic_string_viewIcNS5_11char_traitsIcEEEERbEEEEUljSA_SB_E_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<trie::Trie<unsigned int,char,trie::CedarTrieCursor>::enumeratePrefixStrings(char const*,unsigned long,std::function<void ()(long long,std::string_view,BOOL &)> const&)::{lambda(unsigned int,std::string_view,BOOL &)#1},std::allocator<trie::Trie<unsigned int,char,trie::CedarTrieCursor>::enumeratePrefixStrings(char const*,unsigned long,std::function<void ()(long long,std::string_view,BOOL &)> const&)::{lambda(unsigned int,std::string_view,BOOL &)#1}>,void ()(unsigned int,std::string_view,BOOL &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F4E06A28;
  a2[1] = v2;
  return result;
}

uint64_t trie::Trie<unsigned int,char,trie::CedarTrieCursor>::lookup(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = 0;
  result = (*(*a1 + 80))(a1, a2, a3, &v6);
  *a4 = v6;
  return result;
}

uint64_t trie::Trie<unsigned int,char,trie::CedarTrieCursor>::build(uint64_t *a1, uint64_t a2, void **a3, size_t *a4, _DWORD *a5)
{
  v5 = a5;
  v28 = 0;
  v29 = 0;
  value = 0;
  v27 = 0;
  if (a2)
  {
    v8 = a2;
    v9 = a5;
    do
    {
      v10 = *a3;
      v12 = *a4++;
      v11 = v12;
      v13 = v29;
      if (v29 >= value)
      {
        v15 = 0xAAAAAAAAAAAAAAABLL * ((v29 - v28) >> 3) + 1;
        if (v15 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
        }

        if (0x5555555555555556 * ((value - v28) >> 3) > v15)
        {
          v15 = 0x5555555555555556 * ((value - v28) >> 3);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((value - v28) >> 3) >= 0x555555555555555)
        {
          v16 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v16 = v15;
        }

        v31.__end_cap_.__value_ = &v28;
        if (v16)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(v16);
        }

        v31.__first_ = 0;
        v31.__begin_ = (8 * ((v29 - v28) >> 3));
        v31.__end_ = v31.__begin_;
        v31.__end_cap_.__value_ = 0;
        std::allocator_traits<std::allocator<std::string>>::construct[abi:ne200100]<std::string,char const*,unsigned long,void,0>(v31.__begin_, v10, v11);
        v14 = v31.__end_ + 1;
        v17 = (v31.__begin_ - (v29 - v28));
        memcpy(v17, v28, v29 - v28);
        v18 = v28;
        v19 = value;
        v28 = v17;
        v29 = v14;
        value = v31.__end_cap_.__value_;
        v31.__first_ = v18;
        v31.__end_ = v18;
        v31.__end_cap_.__value_ = v19;
        v31.__begin_ = v18;
        std::__split_buffer<std::string>::~__split_buffer(&v31);
      }

      else
      {
        std::allocator_traits<std::allocator<std::string>>::construct[abi:ne200100]<std::string,char const*,unsigned long,void,0>(v29, *a3, v11);
        v14 = v13 + 1;
      }

      v29 = v14;
      if (v5)
      {
        if (((v27 >> 2) + 1) >> 62)
        {
          std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
        }

        if (v27 >> 2 != -1)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>((v27 >> 2) + 1);
        }

        v20 = (4 * (v27 >> 2));
        *v20 = *v9;
        memcpy(0, 0, v27);
        v5 = a5;
        v27 = (v20 + 1);
      }

      v9 += 2;
      ++a3;
      --v8;
    }

    while (v8);
  }

  v21 = *a1;
  if (v5)
  {
    v22 = (*(v21 + 64))();
  }

  else
  {
    v22 = (*(v21 + 56))();
  }

  v23 = v22;
  v31.__first_ = &v28;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v31);
  return v23;
}

void sub_1D2B1B110(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, void *__p, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, std::__split_buffer<std::string> *a10, uint64_t a11, void *__pa, void *a13, uint64_t a14, char a15)
{
  if (__pa)
  {
    a13 = __pa;
    operator delete(__pa);
  }

  __pa = &a15;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__pa);
  _Unwind_Resume(a1);
}

void trie::CedarMinimalPrefixTrie<unsigned int,char>::~CedarMinimalPrefixTrie(void *a1)
{
  trie::CedarMinimalPrefixTrie<unsigned int,char>::~CedarMinimalPrefixTrie(a1);

  JUMPOUT(0x1D38A8C30);
}

_DWORD *CEM::AdaptationController::sortEmojiTokensIfEnabled(_DWORD *result, uint64_t a2, unint64_t a3)
{
  v16[1] = *MEMORY[0x1E69E9840];
  if (*result == 2)
  {
    v3 = result;
    v11[0] = 0;
    __p = 0;
    result = cedar::da<unsigned int,-1,-2,true,1,0ul>::_find((result + 18), a2, v11, &__p, a3);
    if (result <= 0xFFFFFFFD)
    {
      v4 = result;
      v5 = *(v3 + 7);
      {
      }

      if ((*(v5 + 167) & 0x8000000000000000) != 0)
      {
        v7 = *(v5 + 144);
        v6 = *(v5 + 152);
      }

      LODWORD(__p) = v4;
      LODWORD(v13) = 1;
      LODWORD(v14) = 3;
      v15 = 1;
      v10 = 0;
      v9 = 0uLL;
      std::vector<std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>::__init_with_size[abi:ne200100]<std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>> const*,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>> const*>(&v9, &__p, v16, 2uLL);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<CEM::EmojiToken>>>(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<std::shared_ptr<CEM::EmojiToken>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    *(a1 + 16) = v2 - 16;
    v4 = *(v2 - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 16;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<std::shared_ptr<CEM::EmojiToken>>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<std::shared_ptr<CEM::EmojiToken>>::clear[abi:ne200100](a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
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

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,unsigned long>,void *>>>::operator()[abi:ne200100](char a1, void **__p)
{
  if (a1)
  {
    if (*(__p + 39) < 0)
    {
      operator delete(__p[2]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

BOOL CEM::AdaptationController::initialize(CEM::AdaptationController *this)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = std::__fs::filesystem::path::__parent_path((this + 32));
  if (v2.__size_ > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v2.__size_ >= 0x17)
  {
    operator new();
  }

  *(&__dst.__pn_.__r_.__value_.__s + 23) = v2.__size_;
  if (v2.__size_)
  {
    memmove(&__dst, v2.__data_, v2.__size_);
  }

  __dst.__pn_.__r_.__value_.__s.__data_[v2.__size_] = 0;
  v6 = __dst;
  std::__fs::filesystem::__status(&v6, 0);
  v3 = __dst.__pn_.__r_.__value_.__s.__data_[0] != 255 && __dst.__pn_.__r_.__value_.__s.__data_[0] || std::__fs::filesystem::__create_directories(&v6, 0);
  if (SHIBYTE(v6.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__pn_.__r_.__value_.__l.__data_);
    if (v3)
    {
LABEL_13:
      operator new();
    }
  }

  else if (v3)
  {
    goto LABEL_13;
  }

  *this = 0;
  v4 = *MEMORY[0x1E69E9840];
  return v3;
}

void sub_1D2B1CB60(_Unwind_Exception *a1, uint64_t a2, std::mutex *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *__p, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::__function::__value_func<void ()(std::string_view,unsigned int)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(std::string_view,unsigned int)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<CEM::AdaptationController::initialize(void)::$_0,std::allocator<CEM::AdaptationController::initialize(void)::$_0>,void ()(std::string_view,unsigned int)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN3CEM20AdaptationController10initializeEvE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL std::__function::__func<CEM::AdaptationController::initialize(void)::$_0,std::allocator<CEM::AdaptationController::initialize(void)::$_0>,void ()(std::string_view,unsigned int)>::operator()(uint64_t a1, uint64_t a2, int *a3)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v6 = *a3;
  return trie::CedarMinimalPrefixTrie<unsigned int,char>::addEntry(*(a1 + 8) + 64, v3, v4, &v6);
}

uint64_t std::__function::__func<CEM::AdaptationController::initialize(void)::$_0,std::allocator<CEM::AdaptationController::initialize(void)::$_0>,void ()(std::string_view,unsigned int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F4E06B30;
  a2[1] = v2;
  return result;
}

__n128 __Block_byref_object_copy__95(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = result;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 40) = 0;
  return result;
}

void __Block_byref_object_dispose__96(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }
}

__n128 __Block_byref_object_copy__10(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  return result;
}

void __Block_byref_object_dispose__11(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t CEM::ReadOnlyFile<unsigned short>::~ReadOnlyFile(uint64_t a1)
{
  v2 = *a1;
  if (*a1)
  {
    if (*(a1 + 68) == 1)
    {
      munmap(*a1, *(a1 + 8));
    }

    else
    {
      if (*(a1 + 64) != 2)
      {
        goto LABEL_10;
      }

      v3 = (a1 + 16);
      if (*(a1 + 39) < 0)
      {
        v3 = *v3;
      }

      v4 = open(v3, 2);
      v5 = v4;
      v2 = *a1;
      if ((v4 & 0x80000000) == 0)
      {
        write(v4, *a1, *(a1 + 8));
        close(v5);
        v2 = *a1;
      }

      if (v2)
      {
LABEL_10:
        MEMORY[0x1D38A8C00](v2, 0x1000C80BDFB0063);
      }
    }
  }

  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

uint64_t std::__shared_ptr_pointer<CEM::ReadOnlyFile<unsigned short> *,std::shared_ptr<CEM::ReadOnlyFile<unsigned short>>::__shared_ptr_default_delete<CEM::ReadOnlyFile<unsigned short>,CEM::ReadOnlyFile<unsigned short>>,std::allocator<CEM::ReadOnlyFile<unsigned short>>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), 0x80000001D2B28846))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<CEM::ReadOnlyFile<unsigned short> *,std::shared_ptr<CEM::ReadOnlyFile<unsigned short>>::__shared_ptr_default_delete<CEM::ReadOnlyFile<unsigned short>,CEM::ReadOnlyFile<unsigned short>>,std::allocator<CEM::ReadOnlyFile<unsigned short>>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    CEM::ReadOnlyFile<unsigned short>::~ReadOnlyFile(result);

    JUMPOUT(0x1D38A8C30);
  }

  return result;
}

void std::__shared_ptr_pointer<CEM::ReadOnlyFile<unsigned short> *,std::shared_ptr<CEM::ReadOnlyFile<unsigned short>>::__shared_ptr_default_delete<CEM::ReadOnlyFile<unsigned short>,CEM::ReadOnlyFile<unsigned short>>,std::allocator<CEM::ReadOnlyFile<unsigned short>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1D38A8C30);
}

BOOL CEM::EmojiData::isLegacyUnqualifiedEmojiCodepoint(UTF32Char theChar)
{
  if (_isLegacyUnqualifiedEmojiCodepoint::onceToken != -1)
  {
    dispatch_once(&_isLegacyUnqualifiedEmojiCodepoint::onceToken, &__block_literal_global_7);
  }

  return CFCharacterSetIsLongCharacterMember(_isLegacyUnqualifiedEmojiCodepoint::__unqualifiedCodepointsCharacterSet, theChar) != 0;
}

void ___ZL34_isLegacyUnqualifiedEmojiCodepointj_block_invoke()
{
  Mutable = CFCharacterSetCreateMutable(*MEMORY[0x1E695E480]);
  for (i = 0; i != 816; i += 4)
  {
    v2.location = *&_isLegacyUnqualifiedEmojiCodepoint::unqualifiedCodepoints[i];
    v2.length = 1;
    CFCharacterSetAddCharactersInRange(Mutable, v2);
  }

  _isLegacyUnqualifiedEmojiCodepoint::__unqualifiedCodepointsCharacterSet = Mutable;
}

void CEM::LocalizedStringTable::~LocalizedStringTable(CEM::LocalizedStringTable *this)
{
  std::mutex::~mutex((this + 40));
  nlp::CFScopedPtr<__CFDictionary const*>::reset(this + 4, 0);
  nlp::CFScopedPtr<__CFString const*>::reset(this + 3, 0);
  nlp::CFScopedPtr<__CFBundle *>::reset(this + 2);
  nlp::CFScopedPtr<__CFLocale const*>::reset(this + 1, 0);
  nlp::CFScopedPtr<__CFString const*>::reset(this, 0);
}

void CEM::EmojiLocaleData::enumerateSearchResultsInStringWithBlock(uint64_t a1, const __CFString *a2, CFRange a3, unsigned int a4, char a5, uint64_t a6)
{
  location = a3.location;
  v95 = *MEMORY[0x1E69E9840];
  range = a3.length;
  if (a3.length > 0x4000)
  {
    goto LABEL_133;
  }

  v7 = a4;
  v8 = *a1;
  if (!*a1 || (*(v8 + 120) & 2) == 0)
  {
    if (a4 <= 6 && ((1 << a4) & 0x72) != 0)
    {
      if (!v8)
      {
        goto LABEL_133;
      }
    }

    else if (!*(a1 + 8))
    {
      goto LABEL_133;
    }
  }

  v84 = CFStringCreateWithSubstring(0, a2, a3);
  v83 = 0;
  MutableCopy = CFStringCreateMutableCopy(0, 0, v84);
  v82 = MutableCopy;
  CFStringLowercase(MutableCopy, *(a1 + 32));
  Length = CFStringGetLength(MutableCopy);
  if (Length < range)
  {
    goto LABEL_129;
  }

  v74 = 0;
  v75 = &v74;
  v76 = 0x4002000000;
  v77 = __Block_byref_object_copy__163;
  v78 = __Block_byref_object_dispose__164;
  __p = 0;
  v81 = 0;
  v80 = 0;
  v70[0] = MEMORY[0x1E69E9820];
  v70[1] = 0x40000000;
  v71 = ___ZNK3CEM15EmojiLocaleData39enumerateSearchResultsInStringWithBlockEPK10__CFString7CFRangem18CEMEmojiSearchTypebU13block_pointerFvRKNSt3__16vectorINS6_10shared_ptrINS_10EmojiTokenEEENS6_9allocatorISA_EEEES4_PbE_block_invoke;
  v72 = &unk_1E8404C38;
  v73 = &v74;
  v61 = v7;
  v62 = a5;
  theString = MutableCopy;
  if (!MutableCopy)
  {
    goto LABEL_86;
  }

  v96.location = 0;
  v96.length = range;
  v11 = CFStringCreateWithSubstring(0, MutableCopy, v96);
  v91 = v11;
  if (!v11)
  {
    goto LABEL_86;
  }

  CEM::getUTF8StringFromCFString(&v90, v11);
  memset(&v89, 0, sizeof(v89));
  if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v88, v90.__r_.__value_.__l.__data_, v90.__r_.__value_.__l.__size_);
  }

  else
  {
    v88 = v90;
  }

  std::string::basic_string[abi:ne200100]<0>(&v85, " ");
  v60 = Length;
  v12 = 0;
  for (i = 0; ; ++i)
  {
    size = SHIBYTE(v88.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(v88.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v12 >= SHIBYTE(v88.__r_.__value_.__r.__words[2]) || i == -1)
    {
      goto LABEL_58;
    }

    v16 = &v88;
    v17 = SHIBYTE(v88.__r_.__value_.__r.__words[2]);
LABEL_27:
    if ((v87 & 0x80u) == 0)
    {
      v19 = &v85;
    }

    else
    {
      v19 = v85;
    }

    if ((v87 & 0x80u) == 0)
    {
      v20 = v87;
    }

    else
    {
      v20 = v86;
    }

    v21 = v12;
    if (v20)
    {
      v22 = v17 - v12;
      if ((v17 - v12) >= v20)
      {
        v24 = v16 + v17;
        v25 = v16 + v12;
        v26 = *v19;
        do
        {
          if (v22 - v20 == -1)
          {
            break;
          }

          v27 = memchr(v25, v26, v22 - v20 + 1);
          if (!v27)
          {
            break;
          }

          v28 = v27;
          if (!memcmp(v27, v19, v20))
          {
            if (v28 == v24)
            {
              break;
            }

            v21 = v28 - v16;
            if (v28 - v16 == -1)
            {
              break;
            }

            goto LABEL_50;
          }

          v25 = v28 + 1;
          v22 = v24 - (v28 + 1);
        }

        while (v22 >= v20);
      }

      if ((size & 0x80000000) != 0)
      {
        size = v88.__r_.__value_.__l.__size_;
        v23 = v88.__r_.__value_.__r.__words[0];
      }

      else
      {
        v23 = &v88;
      }

      std::string::__init_with_size[abi:ne200100]<std::__wrap_iter<char *>,std::__wrap_iter<char *>>(&__dst, v23 + v12, v23 + size, size - v12);
      *&v69 = &v89;
      std::back_insert_iterator<std::vector<std::string>>::operator=[abi:ne200100](&v69, &__dst);
      if (SHIBYTE(v93) < 0)
      {
        operator delete(__dst);
      }

      v12 = SHIBYTE(v88.__r_.__value_.__r.__words[2]);
      if ((SHIBYTE(v88.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
      {
        v12 = v88.__r_.__value_.__l.__size_;
      }
    }

    else
    {
LABEL_50:
      v29 = v88.__r_.__value_.__r.__words[0];
      if ((size & 0x80000000) == 0)
      {
        v29 = &v88;
      }

      std::string::__init_with_size[abi:ne200100]<std::__wrap_iter<char *>,std::__wrap_iter<char *>>(&__dst, v29 + v12, v29 + v21, v21 - v12);
      *&v69 = &v89;
      std::back_insert_iterator<std::vector<std::string>>::operator=[abi:ne200100](&v69, &__dst);
      if (SHIBYTE(v93) < 0)
      {
        operator delete(__dst);
      }

      v30 = v87;
      if ((v87 & 0x80u) != 0)
      {
        v30 = v86;
      }

      v12 = v30 + v21;
    }
  }

  v17 = v88.__r_.__value_.__l.__size_;
  if (v12 < v88.__r_.__value_.__l.__size_ && i != -1)
  {
    v16 = v88.__r_.__value_.__r.__words[0];
    goto LABEL_27;
  }

LABEL_58:
  if (v87 < 0)
  {
    operator delete(v85);
    LOBYTE(size) = *(&v88.__r_.__value_.__s + 23);
  }

  v7 = v61;
  a5 = v62;
  MutableCopy = theString;
  if ((size & 0x80) != 0)
  {
    operator delete(v88.__r_.__value_.__l.__data_);
  }

  v32 = v89.__r_.__value_.__l.__size_;
  v31 = v89.__r_.__value_.__r.__words[0];
  while (2)
  {
    if (v31 != v32)
    {
      LOBYTE(v69) = 0;
      v33 = *(v31 + 23);
      if (v33 < 0)
      {
        v34 = *v31;
        v35 = *(v31 + 8);
      }

      else
      {
        v34 = v31;
        v35 = *(v31 + 23);
      }

      v36 = &v34[v35];
      do
      {
        if (!v35)
        {
          goto LABEL_81;
        }

        v37 = *--v36;
        --v35;
      }

      while (v37 != 46);
      v38 = v36 - v34;
      if (v38 == -1)
      {
        goto LABEL_81;
      }

      if ((v33 & 0x80000000) != 0)
      {
        if (v38 != *(v31 + 8) - 1)
        {
          v39 = *v31;
          goto LABEL_76;
        }

LABEL_81:
        v31 += 24;
        continue;
      }

      if (v38 == v33 - 1)
      {
        goto LABEL_81;
      }

      v39 = v31;
LABEL_76:
      v40 = CFStringCreateWithCString(0, v39, 0x8000100u);
      *&__dst = v40;
      if (!v40)
      {
        goto LABEL_81;
      }

      v41 = CFStringFind(theString, v40, 0);
      if (v41.location != -1 && v41.length)
      {
        (v71)(v70, v41.location, v41.length, &v69);
      }

      v42 = v69;
      CFRelease(v40);
      if ((v42 & 1) == 0)
      {
        goto LABEL_81;
      }
    }

    break;
  }

  *&__dst = &v89;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__dst);
  if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v90.__r_.__value_.__l.__data_);
  }

  Length = v60;
  if (v91)
  {
    CFRelease(v91);
  }

LABEL_86:
  memset(&v90, 0, sizeof(v90));
  v69 = xmmword_1D2B27F90;
  if (!*(a1 + 16))
  {
    goto LABEL_106;
  }

  if (Length >= 1)
  {
    v43 = Length;
    v44 = 0;
    do
    {
      for (j = v75[5]; j != v75[6]; j += 2)
      {
        v46 = j[1];
        if (*j < v44 && v46 + *j > v44)
        {
          if (*j != -1)
          {
            v44 += v46;
            goto LABEL_104;
          }

          break;
        }
      }

      if (v44 >= 1)
      {
        CharacterAtIndex = CFStringGetCharacterAtIndex(theString, v44 - 1);
        if (!isWhitespace(CharacterAtIndex))
        {
          goto LABEL_103;
        }
      }

      *&__dst = &unk_1F4E077A0;
      *(&__dst + 1) = theString;
      v93 = range;
      p_dst = &__dst;
      CEM::EmojiLocaleData::emojiTokensForStringPrefix(&v89, a1, a2, v44, range - v44, v7, a5, *(a1 + 16), &v69, &__dst);
      std::vector<std::shared_ptr<CEM::EmojiToken>>::__vdeallocate(&v90);
      v90 = v89;
      memset(&v89, 0, sizeof(v89));
      v88.__r_.__value_.__r.__words[0] = &v89;
      std::vector<std::shared_ptr<CEM::EmojiToken>>::__destroy_vector::operator()[abi:ne200100](&v88);
      std::__function::__value_func<BOOL ()(long)>::~__value_func[abi:ne200100](&__dst);
      if (v90.__r_.__value_.__l.__size_ == v90.__r_.__value_.__r.__words[0])
      {
LABEL_103:
        ++v44;
      }

      else
      {
        v49 = *(&v69 + 1);
        v50 = v69 + location;
        (*(a6 + 16))(a6, &v90, v69 + location, *(&v69 + 1), &v83);
        v44 = v50 + v49;
      }

LABEL_104:
      ;
    }

    while (v44 < v43);
  }

  MutableCopy = theString;
  if ((v83 & 1) == 0)
  {
LABEL_106:
    v97.length = range;
    v97.location = 0;
    CFStringTokenizerSetString(*(a1 + 40), MutableCopy, v97);
    memset(&v89, 0, sizeof(v89));
    while (CFStringTokenizerAdvanceToNextToken(*(a1 + 40)))
    {
      CurrentTokenRange = CFStringTokenizerGetCurrentTokenRange(*(a1 + 40));
      v52 = v75[5];
      v53 = v75[6];
      if (v52 == v53)
      {
LABEL_121:
        std::__allocate_at_least[abi:ne200100]<std::allocator<long>>(1uLL);
      }

      v54 = CurrentTokenRange.length + CurrentTokenRange.location;
      while (1)
      {
        v55 = v52[1] + *v52;
        v56 = CurrentTokenRange.location >= *v52 && CurrentTokenRange.location < v55;
        v57 = !v56 || v54 <= *v52;
        if (!v57 && v54 <= v55)
        {
          break;
        }

        v52 += 2;
        if (v52 == v53)
        {
          goto LABEL_121;
        }
      }
    }

    CEM::getUTF8StringFromCFString(&v88, theString);
    if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v88.__r_.__value_.__l.__data_);
    }

    if (v89.__r_.__value_.__r.__words[0])
    {
      v89.__r_.__value_.__l.__size_ = v89.__r_.__value_.__r.__words[0];
      operator delete(v89.__r_.__value_.__l.__data_);
    }
  }

  *&__dst = &v90;
  std::vector<std::shared_ptr<CEM::EmojiToken>>::__destroy_vector::operator()[abi:ne200100](&__dst);
  _Block_object_dispose(&v74, 8);
  if (__p)
  {
    v80 = __p;
    operator delete(__p);
  }

  MutableCopy = v82;
LABEL_129:
  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  if (v84)
  {
    CFRelease(v84);
  }

LABEL_133:
  v59 = *MEMORY[0x1E69E9840];
}

void sub_1D2B1DFC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *__p, uint64_t a40, uint64_t a41, const void *a42, uint64_t a43, const void *a44, uint64_t a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  a27 = v51 - 208;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a27);
  if (*(v51 - 153) < 0)
  {
    operator delete(*(v50 + 184));
  }

  nlp::CFScopedPtr<__CFString const*>::reset((v51 - 144), 0);
  _Block_object_dispose(&a34, 8);
  if (__p)
  {
    a40 = __p;
    operator delete(__p);
  }

  nlp::CFScopedPtr<__CFString *>::reset(&a42);
  nlp::CFScopedPtr<__CFString const*>::reset(&a44, 0);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__163(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

void __Block_byref_object_dispose__164(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

void ___ZNK3CEM15EmojiLocaleData39enumerateSearchResultsInStringWithBlockEPK10__CFString7CFRangem18CEMEmojiSearchTypebU13block_pointerFvRKNSt3__16vectorINS6_10shared_ptrINS_10EmojiTokenEEENS6_9allocatorISA_EEEES4_PbE_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(a1 + 32) + 8);
  v6 = v4[6];
  v5 = v4[7];
  if (v6 >= v5)
  {
    v8 = v4[5];
    v9 = v6 - v8;
    v10 = (v6 - v8) >> 4;
    v11 = v10 + 1;
    if ((v10 + 1) >> 60)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v12 = v5 - v8;
    if (v12 >> 3 > v11)
    {
      v11 = v12 >> 3;
    }

    if (v12 >= 0x7FFFFFFFFFFFFFF0)
    {
      v13 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      if (!(v13 >> 60))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v14 = (16 * v10);
    *v14 = a2;
    v14[1] = a3;
    v7 = 16 * v10 + 16;
    memcpy(0, v8, v9);
    v4[5] = 0;
    v4[6] = v7;
    v4[7] = 0;
    if (v8)
    {
      operator delete(v8);
    }
  }

  else
  {
    *v6 = a2;
    *(v6 + 1) = a3;
    v7 = (v6 + 16);
  }

  v4[6] = v7;
}

BOOL isWhitespace(UniChar theChar)
{
  {
    isWhitespace(unsigned short)::whitespaceCharacter = CFCharacterSetGetPredefined(kCFCharacterSetWhitespaceAndNewline);
  }

  return CFCharacterSetIsCharacterMember(isWhitespace(unsigned short)::whitespaceCharacter, theChar) != 0;
}

uint64_t CEM::EmojiLocaleData::emojiTokensForStringPrefix(uint64_t *a1, uint64_t a2, CFStringRef theString, uint64_t a4, uint64_t a5, int a6, char a7, uint64_t a8, void *a9, uint64_t a10)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a8)
  {
    if (a4 + a5 > CFStringGetLength(theString))
    {
      __assert_rtn("findEmojiForStringPrefix", "CEMEmojiSearchTrie.cpp", 123, "range.location + range.length <= CFStringGetLength(string)");
    }

    if (a6)
    {
      v17 = a6;
    }

    else
    {
      v17 = 2;
    }

    v56 = v17;
    v58 = 0;
    v59 = 0;
    v60 = 0;
    theStringa = theString;
    v77 = a4;
    v78 = a5;
    CharactersPtr = CFStringGetCharactersPtr(theString);
    if (CharactersPtr)
    {
      CStringPtr = 0;
    }

    else
    {
      CStringPtr = CFStringGetCStringPtr(theString, 0x600u);
    }

    v79 = 0;
    v80 = 0;
    v76 = CStringPtr;
    v65 = 0;
    *v63 = 0u;
    v64 = 0u;
    if (a5 >= 1)
    {
      v19 = 0;
      v20 = 0;
      v54 = a4;
      v21 = a4 + 1;
      v22 = buffer;
      v23 = 64;
      while (1)
      {
        if (v20 >= 4)
        {
          v24 = 4;
        }

        else
        {
          v24 = v20;
        }

        v25 = v78;
        if (v78 <= v20)
        {
          LOBYTE(v27) = 0;
          goto LABEL_23;
        }

        if (CharactersPtr)
        {
          v26 = &CharactersPtr[v77 + v20];
        }

        else
        {
          if (v76)
          {
            v27 = v76[v77 + v20];
            goto LABEL_22;
          }

          v32 = v79;
          if (v80 <= v20 || v79 > v20)
          {
            v34 = v24 + v19;
            v35 = v23 - v24;
            v36 = v20 - v24;
            v37 = v36 + 64;
            if (v36 + 64 >= v78)
            {
              v37 = v78;
            }

            v79 = v36;
            v80 = v37;
            if (v78 >= v35)
            {
              v25 = v35;
            }

            v81.location = v77 + v36;
            v81.length = v25 + v34;
            CFStringGetCharacters(theStringa, v81, buffer);
            v32 = v79;
          }

          v26 = &v22[-v32];
        }

        v27 = *v26;
        if (v27 == 8217)
        {
          LOBYTE(v27) = 39;
          goto LABEL_23;
        }

LABEL_22:
        if (v27 >= 0x80u)
        {
          if (v27 > 0x7FFu)
          {
            LOWORD(v30) = (v27 >> 12) | 0xFFE0;
            v67 = (v27 >> 6) & 0x3F | 0x80;
            v31 = &v68;
            v28 = 3;
          }

          else
          {
            v30 = (v27 >> 6) | 0xFFFFFFC0;
            v31 = &v67;
            v28 = 2;
          }

          v66 = v30;
          *v31 = v27 & 0x3F | 0x80;
          goto LABEL_24;
        }

LABEL_23:
        v66 = v27;
        v28 = 1;
LABEL_24:
        internal::marisa::Trie::advance((a8 + 32), &v66, v28, v63, &v61);
        v63[0] = v61;
        std::string::operator=(&v63[1], &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v63[0] != 0xFFFFFFFFLL)
        {
          v61 = (v21 + v20);
          v29 = *(a10 + 24);
          if (!v29)
          {
            std::__throw_bad_function_call[abi:ne200100]();
          }

          if ((*(*v29 + 48))(v29, &v61) && CEM::EmojiSearchTrie::getPayload(a8, v63, v56, &v65))
          {
            if ((a7 & 1) == 0)
            {
              v59 = v58;
            }

            CEM::EmojiSearchTrie::payloadToIndexes(a8, v65, &v58);
            *a9 = v54;
            a9[1] = v20 + 1;
          }

          ++v20;
          --v19;
          ++v23;
          ++v22;
          if (a5 != v20)
          {
            continue;
          }
        }

        if (SHIBYTE(v64) < 0)
        {
          operator delete(v63[1]);
        }

        break;
      }
    }

    v38 = v59;
    v57 = v58;
    if (v58 != v59)
    {
      v39 = v58;
      do
      {
        CEM::EmojiLocaleData::createEmojiToken(v63, a2, a6, *v39);
        if (v63[0])
        {
          v41 = a1[1];
          v40 = a1[2];
          if (v41 >= v40)
          {
            v43 = *a1;
            v44 = v41 - *a1;
            v45 = v44 >> 4;
            v46 = (v44 >> 4) + 1;
            if (v46 >> 60)
            {
              std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
            }

            v47 = v40 - v43;
            if (v47 >> 3 > v46)
            {
              v46 = v47 >> 3;
            }

            if (v47 >= 0x7FFFFFFFFFFFFFF0)
            {
              v48 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v48 = v46;
            }

            v73 = a1;
            if (v48)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<CEM::EmojiToken>>>(v48);
            }

            v49 = (16 * v45);
            *v49 = v63[0];
            v49[1] = v63[1];
            v63[0] = 0;
            v63[1] = 0;
            v42 = 16 * v45 + 16;
            v50 = &v49[-2 * (v44 >> 4)];
            memcpy(v50, v43, v44);
            v51 = *a1;
            *a1 = v50;
            a1[1] = v42;
            v52 = a1[2];
            a1[2] = 0;
            v71 = v51;
            v72 = v52;
            *buffer = v51;
            v70 = v51;
            std::__split_buffer<std::shared_ptr<CEM::EmojiToken>>::~__split_buffer(buffer);
          }

          else
          {
            *v41 = v63[0];
            v41[1] = v63[1];
            v42 = (v41 + 2);
          }

          a1[1] = v42;
        }

        else if (v63[1])
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v63[1]);
        }

        ++v39;
      }

      while (v39 != v38);
    }

    if (v57)
    {
      operator delete(v57);
    }
  }

  return sortEmojiTokens(a1, *(a2 + 808));
}

uint64_t std::__function::__value_func<BOOL ()(long)>::~__value_func[abi:ne200100](uint64_t a1)
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

void std::__allocate_at_least[abi:ne200100]<std::allocator<long>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__function::__func<CEM::EmojiLocaleData::enumerateSearchResultsInStringWithBlock(__CFString const*,CFRange,unsigned long,CEMEmojiSearchType,BOOL,void({block_pointer})(std::vector<std::shared_ptr<CEM::EmojiToken>> const&,CFRange,BOOL *))::$_2,std::allocator<CEM::EmojiLocaleData::enumerateSearchResultsInStringWithBlock(__CFString const*,CFRange,unsigned long,CEMEmojiSearchType,BOOL,void({block_pointer})(std::vector<std::shared_ptr<CEM::EmojiToken>> const&,CFRange,BOOL *))::$_2>,BOOL ()(long)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZNK3CEM15EmojiLocaleData39enumerateSearchResultsInStringWithBlockEPK10__CFString7CFRangem18CEMEmojiSearchTypebU13block_pointerFvRKNSt3__16vectorINS6_10shared_ptrINS_10EmojiTokenEEENS6_9allocatorISA_EEEES4_PbEE3$_2"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL std::__function::__func<CEM::EmojiLocaleData::enumerateSearchResultsInStringWithBlock(__CFString const*,CFRange,unsigned long,CEMEmojiSearchType,BOOL,void({block_pointer})(std::vector<std::shared_ptr<CEM::EmojiToken>> const&,CFRange,BOOL *))::$_2,std::allocator<CEM::EmojiLocaleData::enumerateSearchResultsInStringWithBlock(__CFString const*,CFRange,unsigned long,CEMEmojiSearchType,BOOL,void({block_pointer})(std::vector<std::shared_ptr<CEM::EmojiToken>> const&,CFRange,BOOL *))::$_2>,BOOL ()(long)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  v4 = *v3;
  v5 = *(v3 + 8);
  if (v4 != v5)
  {
    while (*v4 != v2)
    {
      if (++v4 == v5)
      {
        return 0;
      }
    }
  }

  if (v4 == v5)
  {
    return 0;
  }

  if (**(a1 + 24))
  {
    return 1;
  }

  return v2 - **(a1 + 16) > 1;
}

__n128 std::__function::__func<CEM::EmojiLocaleData::enumerateSearchResultsInStringWithBlock(__CFString const*,CFRange,unsigned long,CEMEmojiSearchType,BOOL,void({block_pointer})(std::vector<std::shared_ptr<CEM::EmojiToken>> const&,CFRange,BOOL *))::$_2,std::allocator<CEM::EmojiLocaleData::enumerateSearchResultsInStringWithBlock(__CFString const*,CFRange,unsigned long,CEMEmojiSearchType,BOOL,void({block_pointer})(std::vector<std::shared_ptr<CEM::EmojiToken>> const&,CFRange,BOOL *))::$_2>,BOOL ()(long)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F4E06FA0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<CEM::EmojiLocaleData::enumerateSearchResultsInStringWithBlock(__CFString const*,CFRange,unsigned long,CEMEmojiSearchType,BOOL,void({block_pointer})(std::vector<std::shared_ptr<CEM::EmojiToken>> const&,CFRange,BOOL *))::$_1,std::allocator<CEM::EmojiLocaleData::enumerateSearchResultsInStringWithBlock(__CFString const*,CFRange,unsigned long,CEMEmojiSearchType,BOOL,void({block_pointer})(std::vector<std::shared_ptr<CEM::EmojiToken>> const&,CFRange,BOOL *))::$_1>,BOOL ()(long)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZNK3CEM15EmojiLocaleData39enumerateSearchResultsInStringWithBlockEPK10__CFString7CFRangem18CEMEmojiSearchTypebU13block_pointerFvRKNSt3__16vectorINS6_10shared_ptrINS_10EmojiTokenEEENS6_9allocatorISA_EEEES4_PbEE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t CEM::EmojiLocaleData::createEmojiToken(void *a1, uint64_t a2, int a3, unsigned int a4)
{
  result = CEM::EmojiLocaleData::emojiIndexIsSupported(a2, a3, a4);
  if (result)
  {
    v8 = *(a2 + 128);
    if (!v8 || (v9 = *(v8 + 44), v10 = a4 >= v9, v11 = a4 - v9, v11 == 0 || !v10) || *(v8 + 42) < v11)
    {
      v12 = *(a2 + 120);
    }

    operator new();
  }

  *a1 = 0;
  a1[1] = 0;
  return result;
}

void sub_1D2B1EC50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  std::__shared_weak_count::~__shared_weak_count(v17);
  operator delete(v20);
  if (a2 != 1)
  {
    _Unwind_Resume(a1);
  }

  __cxa_begin_catch(a1);
  *v16 = 0;
  v16[1] = 0;

  __cxa_end_catch();
}

uint64_t sortEmojiTokens(uint64_t *a1, UInt8 a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = a1[1];
  v5 = 126 - 2 * __clz((v4 - v3) >> 4);
  bytes[0] = a2;
  if (v4 == v3)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  std::__introsort<std::_ClassicAlgPolicy,sortEmojiTokens(std::vector<std::shared_ptr<CEM::EmojiToken>> &,BOOL)::$_0 &,std::shared_ptr<CEM::EmojiToken>*,false>(v3, v4, bytes, v6, 1);
  memset(v13, 0, sizeof(v13));
  v14 = 1065353216;
  v11 = 0uLL;
  v12 = 0;
  v7 = a1[1];
  v8 = v7 - *a1;
  if (v7 != *a1)
  {
    if (!((v8 >> 4) >> 60))
    {
      *&v16 = &v11;
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<CEM::EmojiToken>>>(v8 >> 4);
    }

    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  std::vector<std::shared_ptr<CEM::EmojiToken>>::__vdeallocate(a1);
  *a1 = v11;
  a1[2] = v12;
  v12 = 0;
  v11 = 0uLL;
  *bytes = &v11;
  std::vector<std::shared_ptr<CEM::EmojiToken>>::__destroy_vector::operator()[abi:ne200100](bytes);
  result = std::unordered_set<std::shared_ptr<CEM::EmojiToken>,sortEmojiTokens(std::vector<std::shared_ptr<CEM::EmojiToken>> &,BOOL)::$_1 const,sortEmojiTokens(std::vector<std::shared_ptr<CEM::EmojiToken>> &,BOOL)::$_2 const,std::allocator<std::shared_ptr<CEM::EmojiToken>>>::~unordered_set[abi:ne200100](v13);
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void std::__introsort<std::_ClassicAlgPolicy,sortEmojiTokens(std::vector<std::shared_ptr<CEM::EmojiToken>> &,BOOL)::$_0 &,std::shared_ptr<CEM::EmojiToken>*,false>(CEM::EmojiToken **a1, char *a2, _BYTE *a3, uint64_t a4, char a5)
{
LABEL_1:
  v506 = (a2 - 16);
  v498 = a2 - 24;
  v499 = a2 - 8;
  v497 = a2 - 40;
  v509 = a2;
  while (1)
  {
    v9 = (a2 - a1) >> 4;
    if (v9 <= 2)
    {
      break;
    }

    switch(v9)
    {
      case 3:
        v327 = a1[2];
        v328 = v327[11];
        if (v328 - 1295 <= 4)
        {
          v329 = *(*a1 + 11);
          if (v329 - 1295 <= 4)
          {
            v330 = v329 >= v328;
            goto LABEL_713;
          }
        }

        if (*a3 == 1)
        {
          v443 = CEM::EmojiToken::gender(v327);
          v444 = 0;
          v514 = xmmword_1D2B27FA0;
          do
          {
            if (*(&v514 + v444) == v443)
            {
              break;
            }

            v444 += 4;
          }

          while (v444 != 16);
          v445 = CEM::EmojiToken::gender(*a1);
          v446 = 0;
          v514 = xmmword_1D2B27FA0;
          do
          {
            if (*(&v514 + v446) == v445)
            {
              break;
            }

            v446 += 4;
          }

          while (v446 != 16);
          v330 = v444 >= v446;
LABEL_713:
          v447 = !v330;
        }

        else
        {
          v447 = 0;
        }

        v468 = *(*v506 + 11);
        if (v468 - 1295 <= 4)
        {
          v469 = *(a1[2] + 11);
          if (v469 - 1295 <= 4)
          {
            v470 = v469 >= v468;
            goto LABEL_760;
          }
        }

        if (*a3 == 1)
        {
          v471 = CEM::EmojiToken::gender(*v506);
          v472 = 0;
          v514 = xmmword_1D2B27FA0;
          do
          {
            if (*(&v514 + v472) == v471)
            {
              break;
            }

            v472 += 4;
          }

          while (v472 != 16);
          v473 = CEM::EmojiToken::gender(a1[2]);
          v474 = 0;
          v514 = xmmword_1D2B27FA0;
          do
          {
            if (*(&v514 + v474) == v473)
            {
              break;
            }

            v474 += 4;
          }

          while (v474 != 16);
          v470 = v472 >= v474;
LABEL_760:
          v475 = !v470;
          if (v447)
          {
            v477 = a1 + 1;
            v476 = *a1;
            if (v475)
            {
              *a1 = *v506;
              *v506 = v476;
              goto LABEL_797;
            }

LABEL_768:
            v478 = *(a1 + 1);
            a1[3] = a1[1];
            v477 = a1 + 3;
            a1[2] = v476;
            *a1 = v478;
            v479 = *v506;
            v480 = *(*v506 + 11);
            if (v480 - 1295 > 4 || (v481 = a1[2], v482 = v481[11], v482 - 1295 > 4))
            {
              if (*a3 != 1)
              {
                return;
              }

              v489 = CEM::EmojiToken::gender(v479);
              v490 = 0;
              v514 = xmmword_1D2B27FA0;
              do
              {
                if (*(&v514 + v490) == v489)
                {
                  break;
                }

                v490 += 4;
              }

              while (v490 != 16);
              v491 = CEM::EmojiToken::gender(a1[2]);
              v492 = 0;
              v514 = xmmword_1D2B27FA0;
              do
              {
                if (*(&v514 + v492) == v491)
                {
                  break;
                }

                v492 += 4;
              }

              while (v492 != 16);
              if (v490 >= v492)
              {
                return;
              }

              v481 = a1[2];
              v479 = *v506;
            }

            else if (v482 >= v480)
            {
              return;
            }

            a1[2] = v479;
            *v506 = v481;
          }

          else
          {
            if (!v475)
            {
              return;
            }

            v483 = a1[2];
            a1[2] = *v506;
            *v506 = v483;
            v484 = a1[3];
            a1[3] = *v499;
            *v499 = v484;
            v485 = a1[2];
            v486 = v485[11];
            if (v486 - 1295 > 4 || (v487 = *a1, v488 = *(*a1 + 11), v488 - 1295 > 4))
            {
              if (*a3 != 1)
              {
                return;
              }

              v493 = CEM::EmojiToken::gender(v485);
              v494 = 0;
              v514 = xmmword_1D2B27FA0;
              do
              {
                if (*(&v514 + v494) == v493)
                {
                  break;
                }

                v494 += 4;
              }

              while (v494 != 16);
              v495 = CEM::EmojiToken::gender(*a1);
              v496 = 0;
              v514 = xmmword_1D2B27FA0;
              do
              {
                if (*(&v514 + v496) == v495)
                {
                  break;
                }

                v496 += 4;
              }

              while (v496 != 16);
              if (v494 >= v496)
              {
                return;
              }

              v487 = *a1;
              v485 = a1[2];
            }

            else if (v488 >= v486)
            {
              return;
            }

            *a1 = v485;
            a1[2] = v487;
            v477 = a1 + 1;
            v499 = (a1 + 3);
          }

LABEL_797:
          v441 = *v477;
          v442 = v499;
          *v477 = *v499;
          goto LABEL_798;
        }

        if (!v447)
        {
          return;
        }

        v476 = *a1;
        goto LABEL_768;
      case 4:

        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,sortEmojiTokens(std::vector<std::shared_ptr<CEM::EmojiToken>> &,BOOL)::$_0 &,std::shared_ptr<CEM::EmojiToken>*,0>(a1, (a1 + 2), (a1 + 4), v506, a3);
        return;
      case 5:

        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,sortEmojiTokens(std::vector<std::shared_ptr<CEM::EmojiToken>> &,BOOL)::$_0 &,std::shared_ptr<CEM::EmojiToken>*,0>(a1, (a1 + 2), (a1 + 4), a1 + 6, v506, a3);
        return;
    }

LABEL_9:
    v512 = a1;
    if (v9 <= 23)
    {
      v331 = (a1 + 2);
      v333 = a1 == a2 || v331 == a2;
      if (a5)
      {
        if (v333)
        {
          return;
        }

        v334 = a1;
        while (1)
        {
          v335 = v334;
          v334 = v331;
          v336 = *(v335[2] + 11);
          if (v336 - 1295 > 4 || (v337 = *(*v335 + 11), v337 - 1295 > 4))
          {
            if (*a3 == 1)
            {
              v338 = CEM::EmojiToken::gender(*v334);
              v339 = 0;
              v514 = xmmword_1D2B27FA0;
              do
              {
                if (*(&v514 + v339) == v338)
                {
                  break;
                }

                v339 += 4;
              }

              while (v339 != 16);
              v340 = CEM::EmojiToken::gender(*v335);
              v341 = 0;
              v514 = xmmword_1D2B27FA0;
              do
              {
                if (*(&v514 + v341) == v340)
                {
                  break;
                }

                v341 += 4;
              }

              while (v341 != 16);
              if (v339 < v341)
              {
LABEL_551:
                v342 = *v334;
                *v334 = 0;
                v334[1] = 0;
                v507 = v342;
                v343 = v342;
                v344 = v334;
                while (1)
                {
                  v345 = v344;
                  v344 = v335;
                  v346 = *v335;
                  *v335 = 0;
                  v335[1] = 0;
                  v347 = v345[1];
                  *v345 = v346;
                  if (v347)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v347);
                  }

                  if (v335 == a1)
                  {
                    break;
                  }

                  v335 -= 2;
                  v348 = v343[11];
                  if (v348 - 1295 > 4 || (v349 = *(*v335 + 11), v349 - 1295 > 4))
                  {
                    if (*a3 != 1)
                    {
                      goto LABEL_570;
                    }

                    v350 = CEM::EmojiToken::gender(v343);
                    v351 = 0;
                    v514 = xmmword_1D2B27FA0;
                    do
                    {
                      if (*(&v514 + v351) == v350)
                      {
                        break;
                      }

                      v351 += 4;
                    }

                    while (v351 != 16);
                    v352 = CEM::EmojiToken::gender(*v335);
                    v353 = 0;
                    v514 = xmmword_1D2B27FA0;
                    do
                    {
                      if (*(&v514 + v353) == v352)
                      {
                        break;
                      }

                      v353 += 4;
                    }

                    while (v353 != 16);
                    v16 = v351 >= v353;
                    a1 = v512;
                    if (v16)
                    {
                      goto LABEL_570;
                    }
                  }

                  else if (v349 >= v348)
                  {
                    goto LABEL_570;
                  }
                }

                v344 = a1;
LABEL_570:
                v354 = v344[1];
                *v344 = v507;
                a2 = v509;
                if (v354)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v354);
                }
              }
            }
          }

          else if (v337 < v336)
          {
            goto LABEL_551;
          }

          v331 = (v334 + 2);
          if (v334 + 2 == a2)
          {
            return;
          }
        }
      }

      if (v333)
      {
        return;
      }

      while (1)
      {
        v448 = a1;
        a1 = v331;
        v449 = *(v448[2] + 11);
        if (v449 - 1295 > 4 || (v450 = *(*v448 + 11), v450 - 1295 > 4))
        {
          if (*a3 == 1)
          {
            v451 = CEM::EmojiToken::gender(*a1);
            v452 = 0;
            v514 = xmmword_1D2B27FA0;
            do
            {
              if (*(&v514 + v452) == v451)
              {
                break;
              }

              v452 += 4;
            }

            while (v452 != 16);
            v453 = CEM::EmojiToken::gender(*v448);
            v454 = 0;
            v514 = xmmword_1D2B27FA0;
            do
            {
              if (*(&v514 + v454) == v453)
              {
                break;
              }

              v454 += 4;
            }

            while (v454 != 16);
            if (v452 < v454)
            {
LABEL_729:
              v455 = *a1;
              *a1 = 0;
              a1[1] = 0;
              v513 = v455;
              v456 = v455;
              v457 = a1;
              do
              {
                while (1)
                {
                  v458 = v457;
                  v457 = v448;
                  v459 = *v448;
                  *v448 = 0;
                  v448[1] = 0;
                  v460 = v458[1];
                  *v458 = v459;
                  if (v460)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v460);
                  }

                  v448 -= 2;
                  v461 = v456[11];
                  if (v461 - 1295 > 4)
                  {
                    break;
                  }

                  v462 = *(*v448 + 11);
                  if (v462 - 1295 > 4)
                  {
                    break;
                  }

                  if (v462 >= v461)
                  {
                    goto LABEL_744;
                  }
                }

                if (*a3 != 1)
                {
                  break;
                }

                v463 = CEM::EmojiToken::gender(v456);
                v464 = 0;
                v514 = xmmword_1D2B27FA0;
                do
                {
                  if (*(&v514 + v464) == v463)
                  {
                    break;
                  }

                  v464 += 4;
                }

                while (v464 != 16);
                v465 = CEM::EmojiToken::gender(*v448);
                v466 = 0;
                v514 = xmmword_1D2B27FA0;
                do
                {
                  if (*(&v514 + v466) == v465)
                  {
                    break;
                  }

                  v466 += 4;
                }

                while (v466 != 16);
              }

              while (v464 < v466);
LABEL_744:
              v467 = v457[1];
              *v457 = v513;
              a2 = v509;
              if (v467)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v467);
              }
            }
          }
        }

        else if (v450 < v449)
        {
          goto LABEL_729;
        }

        v331 = (a1 + 2);
        if (a1 + 2 == a2)
        {
          return;
        }
      }
    }

    if (!a4)
    {
      if (a1 == a2)
      {
        return;
      }

      v355 = (v9 - 2) >> 1;
      v356 = v355;
      while (1)
      {
        v357 = v356;
        if (v355 < v356)
        {
          goto LABEL_635;
        }

        v358 = (2 * v356) | 1;
        v359 = &a1[2 * v358];
        if (2 * v356 + 2 < v9)
        {
          v360 = v359 + 2;
          v361 = *(*v359 + 11);
          if (v361 - 1295 <= 4)
          {
            v362 = *(*v360 + 11);
            if (v362 - 1295 <= 4)
            {
              if (v362 >= v361)
              {
                goto LABEL_591;
              }

LABEL_590:
              v359 += 2;
              v358 = 2 * v357 + 2;
              goto LABEL_591;
            }
          }

          if (*a3 == 1)
          {
            v363 = CEM::EmojiToken::gender(*v359);
            v364 = 0;
            v514 = xmmword_1D2B27FA0;
            do
            {
              if (*(&v514 + v364) == v363)
              {
                break;
              }

              v364 += 4;
            }

            while (v364 != 16);
            v365 = CEM::EmojiToken::gender(*v360);
            v366 = 0;
            v514 = xmmword_1D2B27FA0;
            do
            {
              if (*(&v514 + v366) == v365)
              {
                break;
              }

              v366 += 4;
            }

            while (v366 != 16);
            v16 = v364 >= v366;
            a2 = v509;
            if (!v16)
            {
              goto LABEL_590;
            }
          }
        }

LABEL_591:
        v367 = &a1[2 * v357];
        v368 = *(*v359 + 11);
        if (v368 - 1295 > 4 || (v369 = *(*v367 + 11), v369 - 1295 > 4))
        {
          if (*a3 == 1)
          {
            v370 = CEM::EmojiToken::gender(*v359);
            v371 = 0;
            v514 = xmmword_1D2B27FA0;
            do
            {
              if (*(&v514 + v371) == v370)
              {
                break;
              }

              v371 += 4;
            }

            while (v371 != 16);
            v372 = CEM::EmojiToken::gender(*v367);
            v373 = 0;
            v514 = xmmword_1D2B27FA0;
            do
            {
              if (*(&v514 + v373) == v372)
              {
                break;
              }

              v373 += 4;
            }

            while (v373 != 16);
            if (v371 < v373)
            {
              goto LABEL_635;
            }
          }
        }

        else if (v369 < v368)
        {
          goto LABEL_635;
        }

        v501 = v357;
        v374 = *v367;
        *v367 = 0;
        v367[1] = 0;
        v504 = v374;
        v375 = v374;
        while (1)
        {
          v376 = v359;
          v377 = *v359;
          *v359 = 0;
          v359[1] = 0;
          v378 = v367[1];
          *v367 = v377;
          if (v378)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v378);
          }

          if (v355 < v358)
          {
            break;
          }

          v379 = 2 * v358;
          v358 = (2 * v358) | 1;
          v359 = &a1[2 * v358];
          v380 = v379 + 2;
          if (v379 + 2 >= v9)
          {
            goto LABEL_621;
          }

          v381 = v359 + 2;
          v382 = *(*v359 + 11);
          if (v382 - 1295 > 4 || (v383 = *(*v381 + 11), v383 - 1295 > 4))
          {
            if (*a3 != 1)
            {
              goto LABEL_621;
            }

            v384 = CEM::EmojiToken::gender(*v359);
            v385 = 0;
            v514 = xmmword_1D2B27FA0;
            do
            {
              if (*(&v514 + v385) == v384)
              {
                break;
              }

              v385 += 4;
            }

            while (v385 != 16);
            v386 = CEM::EmojiToken::gender(*v381);
            v387 = 0;
            v514 = xmmword_1D2B27FA0;
            do
            {
              if (*(&v514 + v387) == v386)
              {
                break;
              }

              v387 += 4;
            }

            while (v387 != 16);
            v16 = v385 >= v387;
            v355 = (v9 - 2) >> 1;
            if (v16)
            {
              goto LABEL_621;
            }

LABEL_620:
            v359 += 2;
            v358 = v380;
            goto LABEL_621;
          }

          if (v383 < v382)
          {
            goto LABEL_620;
          }

LABEL_621:
          v388 = *(*v359 + 11);
          if (v388 - 1295 > 4 || (v389 = v375[11], v389 - 1295 > 4))
          {
            v367 = v376;
            if (*a3 == 1)
            {
              v390 = CEM::EmojiToken::gender(*v359);
              v391 = 0;
              v514 = xmmword_1D2B27FA0;
              do
              {
                if (*(&v514 + v391) == v390)
                {
                  break;
                }

                v391 += 4;
              }

              while (v391 != 16);
              v392 = CEM::EmojiToken::gender(v375);
              v393 = 0;
              v514 = xmmword_1D2B27FA0;
              do
              {
                if (*(&v514 + v393) == v392)
                {
                  break;
                }

                v393 += 4;
              }

              while (v393 != 16);
              v367 = v376;
              v355 = (v9 - 2) >> 1;
              if (v391 < v393)
              {
                break;
              }
            }
          }

          else
          {
            v367 = v376;
            if (v389 < v388)
            {
              break;
            }
          }
        }

        v394 = v376[1];
        *v376 = v504;
        a2 = v509;
        v357 = v501;
        if (v394)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v394);
        }

LABEL_635:
        v356 = v357 - 1;
        if (!v357)
        {
LABEL_636:
          v395 = 0;
          v505 = a2;
          v508 = *a1;
          v510 = a1[1];
          *a1 = 0;
          a1[1] = 0;
          while (1)
          {
            v396 = &a1[2 * v395];
            v397 = v396 + 2;
            v398 = 2 * v395;
            v395 = (2 * v395) | 1;
            v399 = v398 + 2;
            if (v398 + 2 < v9)
            {
              v400 = v396 + 4;
              v401 = v396[2];
              v402 = v401[11];
              if (v402 - 1295 > 4 || (v403 = *(*v400 + 11), v403 - 1295 > 4))
              {
                if (*a3 != 1)
                {
                  goto LABEL_651;
                }

                v404 = CEM::EmojiToken::gender(v401);
                v405 = 0;
                v514 = xmmword_1D2B27FA0;
                do
                {
                  if (*(&v514 + v405) == v404)
                  {
                    break;
                  }

                  v405 += 4;
                }

                while (v405 != 16);
                v406 = CEM::EmojiToken::gender(*v400);
                v407 = 0;
                v514 = xmmword_1D2B27FA0;
                do
                {
                  if (*(&v514 + v407) == v406)
                  {
                    break;
                  }

                  v407 += 4;
                }

                while (v407 != 16);
                if (v405 >= v407)
                {
                  goto LABEL_651;
                }
              }

              else if (v403 >= v402)
              {
                goto LABEL_651;
              }

              v397 = v400;
              v395 = v399;
            }

LABEL_651:
            v408 = *v397;
            *v397 = 0;
            v397[1] = 0;
            v409 = a1[1];
            *a1 = v408;
            if (v409)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v409);
            }

            a1 = v397;
            if (v395 > ((v9 - 2) >> 1))
            {
              a2 = v505 - 16;
              if (v397 == (v505 - 16))
              {
                v420 = v397[1];
                *v397 = v508;
                v397[1] = v510;
                a1 = v512;
                if (v420)
                {
                  goto LABEL_691;
                }
              }

              else
              {
                v410 = *(v505 - 1);
                *a2 = 0;
                *(v505 - 1) = 0;
                v411 = v397[1];
                *v397 = v410;
                a1 = v512;
                if (v411)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v411);
                }

                v412 = *(v505 - 1);
                *(v505 - 2) = v508;
                *(v505 - 1) = v510;
                if (v412)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v412);
                }

                v413 = (v397 - v512 + 16) >> 4;
                v414 = v413 < 2;
                v415 = v413 - 2;
                if (!v414)
                {
                  v416 = v415 >> 1;
                  v417 = v512 + 16 * (v415 >> 1);
                  v418 = *(*v417 + 22);
                  if (v418 - 1295 > 4 || (v419 = *(*v397 + 11), v419 - 1295 > 4))
                  {
                    if (*a3 == 1)
                    {
                      v421 = CEM::EmojiToken::gender(*v417);
                      v422 = 0;
                      v514 = xmmword_1D2B27FA0;
                      do
                      {
                        if (*(&v514 + v422) == v421)
                        {
                          break;
                        }

                        v422 += 4;
                      }

                      while (v422 != 16);
                      v423 = CEM::EmojiToken::gender(*v397);
                      v424 = 0;
                      v514 = xmmword_1D2B27FA0;
                      do
                      {
                        if (*(&v514 + v424) == v423)
                        {
                          break;
                        }

                        v424 += 4;
                      }

                      while (v424 != 16);
                      v16 = v422 >= v424;
                      a2 = v505 - 16;
                      if (!v16)
                      {
                        goto LABEL_674;
                      }
                    }
                  }

                  else
                  {
                    if (v419 >= v418)
                    {
                      goto LABEL_692;
                    }

LABEL_674:
                    v425 = a2;
                    v426 = *v397;
                    *v397 = 0;
                    v397[1] = 0;
                    v511 = v426;
                    v427 = v426;
                    while (1)
                    {
                      v428 = v417;
                      v429 = *v417;
                      *v417 = 0;
                      *(v417 + 8) = 0;
                      v430 = v397[1];
                      *v397 = v429;
                      if (v430)
                      {
                        std::__shared_weak_count::__release_shared[abi:ne200100](v430);
                      }

                      if (!v416)
                      {
                        break;
                      }

                      v416 = (v416 - 1) >> 1;
                      v417 = v512 + 16 * v416;
                      v431 = *(*v417 + 22);
                      if (v431 - 1295 > 4 || (v432 = v427[11], v432 - 1295 > 4))
                      {
                        if (*a3 != 1)
                        {
                          break;
                        }

                        v433 = CEM::EmojiToken::gender(*v417);
                        v434 = 0;
                        v514 = xmmword_1D2B27FA0;
                        do
                        {
                          if (*(&v514 + v434) == v433)
                          {
                            break;
                          }

                          v434 += 4;
                        }

                        while (v434 != 16);
                        v435 = CEM::EmojiToken::gender(v427);
                        v436 = 0;
                        v514 = xmmword_1D2B27FA0;
                        do
                        {
                          if (*(&v514 + v436) == v435)
                          {
                            break;
                          }

                          v436 += 4;
                        }

                        while (v436 != 16);
                        v397 = v428;
                        if (v434 >= v436)
                        {
                          break;
                        }
                      }

                      else
                      {
                        v397 = v428;
                        if (v432 >= v431)
                        {
                          break;
                        }
                      }
                    }

                    v420 = *(v428 + 8);
                    *v428 = v511;
                    a1 = v512;
                    a2 = v425;
                    if (v420)
                    {
LABEL_691:
                      std::__shared_weak_count::__release_shared[abi:ne200100](v420);
                    }
                  }
                }
              }

LABEL_692:
              v414 = v9-- <= 2;
              if (v414)
              {
                return;
              }

              goto LABEL_636;
            }
          }
        }
      }
    }

    v10 = v9 >> 1;
    v11 = &a1[2 * (v9 >> 1)];
    v12 = a1;
    v13 = v11;
    if (v9 >= 0x81)
    {
      v14 = *(*v11 + 11);
      if (v14 - 1295 > 4 || (v15 = *(*v512 + 22), v15 - 1295 > 4))
      {
        if (*a3 != 1)
        {
          v25 = 0;
          goto LABEL_41;
        }

        v21 = CEM::EmojiToken::gender(*v11);
        v22 = 0;
        v514 = xmmword_1D2B27FA0;
        do
        {
          if (*(&v514 + v22) == v21)
          {
            break;
          }

          v22 += 4;
        }

        while (v22 != 16);
        v23 = CEM::EmojiToken::gender(*v512);
        v24 = 0;
        v514 = xmmword_1D2B27FA0;
        do
        {
          if (*(&v514 + v24) == v23)
          {
            break;
          }

          v24 += 4;
        }

        while (v24 != 16);
        v16 = v22 >= v24;
      }

      else
      {
        v16 = v15 >= v14;
      }

      v25 = !v16;
LABEL_41:
      v31 = *(*v506 + 11);
      if (v31 - 1295 > 4 || (v32 = *(*v11 + 11), v32 - 1295 > 4))
      {
        if (*a3 != 1)
        {
          if (!v25)
          {
            goto LABEL_110;
          }

          v39 = v512;
          v40 = *v512;
          goto LABEL_78;
        }

        v34 = CEM::EmojiToken::gender(*v506);
        v35 = 0;
        v514 = xmmword_1D2B27FA0;
        do
        {
          if (*(&v514 + v35) == v34)
          {
            break;
          }

          v35 += 4;
        }

        while (v35 != 16);
        v36 = CEM::EmojiToken::gender(*v11);
        v37 = 0;
        v514 = xmmword_1D2B27FA0;
        do
        {
          if (*(&v514 + v37) == v36)
          {
            break;
          }

          v37 += 4;
        }

        while (v37 != 16);
        v33 = v35 >= v37;
      }

      else
      {
        v33 = v32 >= v31;
      }

      v38 = !v33;
      if ((v25 & 1) == 0)
      {
        if (!v38)
        {
          goto LABEL_110;
        }

        v62 = *v11;
        *v11 = *v506;
        *v506 = v62;
        v64 = (v11 + 1);
        v63 = v11[1];
        v11[1] = *v499;
        *v499 = v63;
        v65 = *v11;
        v66 = *(*v11 + 11);
        if (v66 - 1295 > 4 || (v67 = *v512, v68 = *(*v512 + 22), v68 - 1295 > 4))
        {
          if (*a3 != 1)
          {
            goto LABEL_110;
          }

          v195 = CEM::EmojiToken::gender(v65);
          v196 = 0;
          v514 = xmmword_1D2B27FA0;
          do
          {
            if (*(&v514 + v196) == v195)
            {
              break;
            }

            v196 += 4;
          }

          while (v196 != 16);
          v197 = CEM::EmojiToken::gender(*v512);
          v198 = 0;
          v514 = xmmword_1D2B27FA0;
          do
          {
            if (*(&v514 + v198) == v197)
            {
              break;
            }

            v198 += 4;
          }

          while (v198 != 16);
          if (v196 >= v198)
          {
            goto LABEL_110;
          }

          v67 = *v512;
          v65 = *v11;
        }

        else if (v68 >= v66)
        {
          goto LABEL_110;
        }

        *v512 = v65;
        v41 = (v512 + 8);
        *v11 = v67;
        goto LABEL_109;
      }

      v39 = v512;
      v41 = (v512 + 8);
      v40 = *v512;
      if (v38)
      {
        *v512 = *v506;
        *v506 = v40;
LABEL_108:
        v64 = v499;
LABEL_109:
        v79 = *v41;
        *v41 = *v64;
        *v64 = v79;
        goto LABEL_110;
      }

LABEL_78:
      v52 = *(v39 + 8);
      *v39 = *v11;
      v11[1] = v52;
      v41 = (v11 + 1);
      *v11 = v40;
      v53 = *v506;
      v54 = *(*v506 + 11);
      if (v54 - 1295 <= 4)
      {
        v55 = *v11;
        v56 = *(*v11 + 11);
        if (v56 - 1295 <= 4)
        {
          if (v56 >= v54)
          {
            goto LABEL_110;
          }

          goto LABEL_107;
        }
      }

      if (*a3 == 1)
      {
        v75 = CEM::EmojiToken::gender(v53);
        v76 = 0;
        v514 = xmmword_1D2B27FA0;
        do
        {
          if (*(&v514 + v76) == v75)
          {
            break;
          }

          v76 += 4;
        }

        while (v76 != 16);
        v77 = CEM::EmojiToken::gender(*v11);
        v78 = 0;
        v514 = xmmword_1D2B27FA0;
        do
        {
          if (*(&v514 + v78) == v77)
          {
            break;
          }

          v78 += 4;
        }

        while (v78 != 16);
        if (v76 < v78)
        {
          v55 = *v11;
          v53 = *v506;
LABEL_107:
          *v11 = v53;
          *v506 = v55;
          goto LABEL_108;
        }
      }

LABEL_110:
      v82 = *(v11 - 2);
      v81 = v11 - 2;
      v80 = v82;
      v83 = v82[11];
      if (v83 - 1295 > 4 || (v84 = *(*(v512 + 16) + 22), v84 - 1295 > 4))
      {
        if (*a3 != 1)
        {
          v90 = 0;
          goto LABEL_125;
        }

        v86 = CEM::EmojiToken::gender(v80);
        v87 = 0;
        v514 = xmmword_1D2B27FA0;
        do
        {
          if (*(&v514 + v87) == v86)
          {
            break;
          }

          v87 += 4;
        }

        while (v87 != 16);
        v88 = CEM::EmojiToken::gender(*(v512 + 16));
        v89 = 0;
        v514 = xmmword_1D2B27FA0;
        do
        {
          if (*(&v514 + v89) == v88)
          {
            break;
          }

          v89 += 4;
        }

        while (v89 != 16);
        v85 = v87 >= v89;
      }

      else
      {
        v85 = v84 >= v83;
      }

      v90 = !v85;
LABEL_125:
      v91 = *(a2 - 4);
      v92 = v91[11];
      if (v92 - 1295 > 4 || (v93 = *(*v81 + 11), v93 - 1295 > 4))
      {
        if (*a3 != 1)
        {
          if (!v90)
          {
            goto LABEL_176;
          }

          v100 = v512;
          v101 = *(v512 + 16);
          goto LABEL_144;
        }

        v95 = CEM::EmojiToken::gender(v91);
        v96 = 0;
        v514 = xmmword_1D2B27FA0;
        do
        {
          if (*(&v514 + v96) == v95)
          {
            break;
          }

          v96 += 4;
        }

        while (v96 != 16);
        v97 = CEM::EmojiToken::gender(*v81);
        v98 = 0;
        v514 = xmmword_1D2B27FA0;
        do
        {
          if (*(&v514 + v98) == v97)
          {
            break;
          }

          v98 += 4;
        }

        while (v98 != 16);
        v94 = v96 >= v98;
      }

      else
      {
        v94 = v93 >= v92;
      }

      v99 = !v94;
      if ((v90 & 1) == 0)
      {
        if (!v99)
        {
          goto LABEL_176;
        }

        v107 = *v81;
        *v81 = *(a2 - 4);
        *(a2 - 4) = v107;
        v109 = (v81 + 1);
        v108 = v81[1];
        v81[1] = *(a2 - 3);
        *(a2 - 3) = v108;
        v110 = *v81;
        v111 = *(*v81 + 11);
        if (v111 - 1295 > 4 || (v112 = *(v512 + 16), v113 = v112[11], v113 - 1295 > 4))
        {
          if (*a3 != 1)
          {
            goto LABEL_176;
          }

          v203 = CEM::EmojiToken::gender(v110);
          v204 = 0;
          v514 = xmmword_1D2B27FA0;
          do
          {
            if (*(&v514 + v204) == v203)
            {
              break;
            }

            v204 += 4;
          }

          while (v204 != 16);
          v205 = CEM::EmojiToken::gender(*(v512 + 16));
          v206 = 0;
          v514 = xmmword_1D2B27FA0;
          do
          {
            if (*(&v514 + v206) == v205)
            {
              break;
            }

            v206 += 4;
          }

          while (v206 != 16);
          if (v204 >= v206)
          {
            goto LABEL_176;
          }

          v112 = *(v512 + 16);
          v110 = *v81;
        }

        else if (v113 >= v111)
        {
          goto LABEL_176;
        }

        *(v512 + 16) = v110;
        *v81 = v112;
        v102 = (v512 + 24);
        goto LABEL_175;
      }

      v100 = v512;
      v101 = *(v512 + 16);
      if (v99)
      {
        v102 = (v512 + 24);
        *(v512 + 16) = *(a2 - 4);
LABEL_174:
        *(a2 - 4) = v101;
        v109 = v498;
LABEL_175:
        v123 = *v102;
        *v102 = *v109;
        *v109 = v123;
        goto LABEL_176;
      }

LABEL_144:
      v103 = *(v100 + 24);
      *(v100 + 16) = *v81;
      v81[1] = v103;
      v102 = (v81 + 1);
      *v81 = v101;
      v104 = *(a2 - 4);
      v105 = v104[11];
      if (v105 - 1295 <= 4)
      {
        v101 = *v81;
        v106 = *(*v81 + 11);
        if (v106 - 1295 <= 4)
        {
          if (v106 >= v105)
          {
            goto LABEL_176;
          }

          goto LABEL_173;
        }
      }

      if (*a3 == 1)
      {
        v119 = CEM::EmojiToken::gender(v104);
        v120 = 0;
        v514 = xmmword_1D2B27FA0;
        do
        {
          if (*(&v514 + v120) == v119)
          {
            break;
          }

          v120 += 4;
        }

        while (v120 != 16);
        v121 = CEM::EmojiToken::gender(*v81);
        v122 = 0;
        v514 = xmmword_1D2B27FA0;
        do
        {
          if (*(&v514 + v122) == v121)
          {
            break;
          }

          v122 += 4;
        }

        while (v122 != 16);
        if (v120 < v122)
        {
          v101 = *v81;
          v104 = *(a2 - 4);
LABEL_173:
          *v81 = v104;
          goto LABEL_174;
        }
      }

LABEL_176:
      v124 = v10 + 1;
      v125 = v512 + 16 * (v10 + 1);
      v126 = *(*v125 + 22);
      if (v126 - 1295 > 4 || (v127 = *(*(v512 + 32) + 22), v127 - 1295 > 4))
      {
        if (*a3 != 1)
        {
          v133 = 0;
          goto LABEL_191;
        }

        v129 = CEM::EmojiToken::gender(*v125);
        v130 = 0;
        v514 = xmmword_1D2B27FA0;
        do
        {
          if (*(&v514 + v130) == v129)
          {
            break;
          }

          v130 += 4;
        }

        while (v130 != 16);
        v131 = CEM::EmojiToken::gender(*(v512 + 32));
        v132 = 0;
        v514 = xmmword_1D2B27FA0;
        do
        {
          if (*(&v514 + v132) == v131)
          {
            break;
          }

          v132 += 4;
        }

        while (v132 != 16);
        v128 = v130 >= v132;
      }

      else
      {
        v128 = v127 >= v126;
      }

      v133 = !v128;
LABEL_191:
      v134 = *(v509 - 48);
      v135 = v134[11];
      if (v135 - 1295 > 4 || (v136 = *(*v125 + 22), v136 - 1295 > 4))
      {
        if (*a3 != 1)
        {
          if (!v133)
          {
            goto LABEL_231;
          }

          v143 = v512;
          v144 = *(v512 + 32);
          goto LABEL_210;
        }

        v138 = CEM::EmojiToken::gender(v134);
        v139 = 0;
        v514 = xmmword_1D2B27FA0;
        do
        {
          if (*(&v514 + v139) == v138)
          {
            break;
          }

          v139 += 4;
        }

        while (v139 != 16);
        v140 = CEM::EmojiToken::gender(*v125);
        v141 = 0;
        v514 = xmmword_1D2B27FA0;
        do
        {
          if (*(&v514 + v141) == v140)
          {
            break;
          }

          v141 += 4;
        }

        while (v141 != 16);
        v137 = v139 >= v141;
      }

      else
      {
        v137 = v136 >= v135;
      }

      v142 = !v137;
      if ((v133 & 1) == 0)
      {
        if (!v142)
        {
          goto LABEL_231;
        }

        v151 = *v125;
        *v125 = *(v509 - 48);
        *(v509 - 48) = v151;
        v153 = (v125 + 8);
        v152 = *(v125 + 8);
        *(v125 + 8) = *(v509 - 40);
        *(v509 - 40) = v152;
        v154 = *v125;
        v155 = *(*v125 + 22);
        if (v155 - 1295 > 4 || (v156 = *(v512 + 32), v157 = *(v156 + 22), v157 - 1295 > 4))
        {
          if (*a3 != 1)
          {
            goto LABEL_231;
          }

          v207 = CEM::EmojiToken::gender(v154);
          v208 = 0;
          v514 = xmmword_1D2B27FA0;
          do
          {
            if (*(&v514 + v208) == v207)
            {
              break;
            }

            v208 += 4;
          }

          while (v208 != 16);
          v209 = CEM::EmojiToken::gender(*(v512 + 32));
          v210 = 0;
          v514 = xmmword_1D2B27FA0;
          do
          {
            if (*(&v514 + v210) == v209)
            {
              break;
            }

            v210 += 4;
          }

          while (v210 != 16);
          if (v208 >= v210)
          {
            goto LABEL_231;
          }

          v156 = *(v512 + 32);
          v154 = *v125;
        }

        else if (v157 >= v155)
        {
          goto LABEL_231;
        }

        *(v512 + 32) = v154;
        *v125 = v156;
        v145 = (v512 + 40);
        goto LABEL_230;
      }

      v143 = v512;
      v144 = *(v512 + 32);
      if (v142)
      {
        v145 = (v512 + 40);
        *(v512 + 32) = *(v509 - 48);
        *(v509 - 48) = v144;
LABEL_229:
        v153 = v497;
LABEL_230:
        v162 = *v145;
        *v145 = *v153;
        *v153 = v162;
        goto LABEL_231;
      }

LABEL_210:
      v146 = *(v143 + 40);
      *(v143 + 32) = *v125;
      *(v125 + 8) = v146;
      v145 = (v125 + 8);
      *v125 = v144;
      v147 = *(v509 - 48);
      v148 = v147[11];
      if (v148 - 1295 <= 4)
      {
        v149 = *v125;
        v150 = *(*v125 + 22);
        if (v150 - 1295 <= 4)
        {
          if (v150 >= v148)
          {
            goto LABEL_231;
          }

          goto LABEL_228;
        }
      }

      if (*a3 == 1)
      {
        v158 = CEM::EmojiToken::gender(v147);
        v159 = 0;
        v514 = xmmword_1D2B27FA0;
        do
        {
          if (*(&v514 + v159) == v158)
          {
            break;
          }

          v159 += 4;
        }

        while (v159 != 16);
        v160 = CEM::EmojiToken::gender(*v125);
        v161 = 0;
        v514 = xmmword_1D2B27FA0;
        do
        {
          if (*(&v514 + v161) == v160)
          {
            break;
          }

          v161 += 4;
        }

        while (v161 != 16);
        if (v159 < v161)
        {
          v149 = *v125;
          v147 = *(v509 - 48);
LABEL_228:
          *v125 = v147;
          *(v509 - 48) = v149;
          goto LABEL_229;
        }
      }

LABEL_231:
      v163 = *(*v13 + 11);
      if (v163 - 1295 > 4 || (v164 = *(*v81 + 11), v164 - 1295 > 4))
      {
        if (*a3 != 1)
        {
          v170 = 0;
          goto LABEL_246;
        }

        v166 = CEM::EmojiToken::gender(*v13);
        v167 = 0;
        v514 = xmmword_1D2B27FA0;
        do
        {
          if (*(&v514 + v167) == v166)
          {
            break;
          }

          v167 += 4;
        }

        while (v167 != 16);
        v168 = CEM::EmojiToken::gender(*v81);
        v169 = 0;
        v514 = xmmword_1D2B27FA0;
        do
        {
          if (*(&v514 + v169) == v168)
          {
            break;
          }

          v169 += 4;
        }

        while (v169 != 16);
        v165 = v167 >= v169;
      }

      else
      {
        v165 = v164 >= v163;
      }

      v170 = !v165;
LABEL_246:
      v171 = *v125;
      v172 = *(*v125 + 22);
      if (v172 - 1295 > 4 || (v173 = *(*v13 + 11), v173 - 1295 > 4))
      {
        if (*a3 != 1)
        {
          if (v170)
          {
            v180 = *v81;
            goto LABEL_271;
          }

LABEL_336:
          v217 = *v512;
          *v512 = *v13;
          v51 = (v512 + 8);
          *v13 = v217;
          v118 = (v13 + 1);
          a2 = v509;
          goto LABEL_337;
        }

        v175 = CEM::EmojiToken::gender(v171);
        v176 = 0;
        v514 = xmmword_1D2B27FA0;
        do
        {
          if (*(&v514 + v176) == v175)
          {
            break;
          }

          v176 += 4;
        }

        while (v176 != 16);
        v177 = CEM::EmojiToken::gender(*v13);
        v178 = 0;
        v514 = xmmword_1D2B27FA0;
        do
        {
          if (*(&v514 + v178) == v177)
          {
            break;
          }

          v178 += 4;
        }

        while (v178 != 16);
        v174 = v176 >= v178;
      }

      else
      {
        v174 = v173 >= v172;
      }

      v179 = !v174;
      if (v170)
      {
        v180 = *v81;
        v171 = *v125;
        if (v179)
        {
          *v81 = v171;
          *v125 = v180;
          v181 = (v81 + 1);
LABEL_335:
          v215 = v512 + 16 * v124;
          v216 = *v181;
          *v181 = *(v215 + 8);
          *(v215 + 8) = v216;
          goto LABEL_336;
        }

        v172 = *(v171 + 11);
LABEL_271:
        v188 = *v13;
        v13[1] = v81[1];
        *v13 = v180;
        *v81 = v188;
        if (v172 - 1295 > 4 || (v189 = *v13, v190 = *(*v13 + 11), v190 - 1295 > 4))
        {
          if (*a3 != 1)
          {
            goto LABEL_336;
          }

          v191 = CEM::EmojiToken::gender(v171);
          v192 = 0;
          v514 = xmmword_1D2B27FA0;
          do
          {
            if (*(&v514 + v192) == v191)
            {
              break;
            }

            v192 += 4;
          }

          while (v192 != 16);
          v193 = CEM::EmojiToken::gender(*v13);
          v194 = 0;
          v514 = xmmword_1D2B27FA0;
          do
          {
            if (*(&v514 + v194) == v193)
            {
              break;
            }

            v194 += 4;
          }

          while (v194 != 16);
          if (v192 >= v194)
          {
            goto LABEL_336;
          }

          v189 = *v13;
          v171 = *v125;
        }

        else if (v190 >= v172)
        {
          goto LABEL_336;
        }

        *v13 = v171;
        *v125 = v189;
        v181 = (v13 + 1);
        goto LABEL_335;
      }

      if (v179)
      {
        v182 = *v125;
        v183 = *v13;
        *v13 = *v125;
        *v125 = v183;
        v184 = v182;
        v185 = *(v182 + 22);
        if (v185 - 1295 > 4 || (v186 = *v81, v187 = *(*v81 + 11), v187 - 1295 > 4))
        {
          if (*a3 != 1)
          {
            goto LABEL_336;
          }

          v211 = CEM::EmojiToken::gender(v182);
          v212 = 0;
          v514 = xmmword_1D2B27FA0;
          do
          {
            if (*(&v514 + v212) == v211)
            {
              break;
            }

            v212 += 4;
          }

          while (v212 != 16);
          v213 = CEM::EmojiToken::gender(*v81);
          v214 = 0;
          v514 = xmmword_1D2B27FA0;
          do
          {
            if (*(&v514 + v214) == v213)
            {
              break;
            }

            v214 += 4;
          }

          while (v214 != 16);
          if (v212 >= v214)
          {
            goto LABEL_336;
          }

          v186 = *v81;
          v184 = *v13;
        }

        else if (v187 >= v185)
        {
          goto LABEL_336;
        }

        *v81 = v184;
        v181 = (v81 + 1);
        *v13 = v186;
        v124 = v10;
        goto LABEL_335;
      }

      goto LABEL_336;
    }

    v17 = *v12;
    v18 = *(*v12 + 11);
    if (v18 - 1295 > 4 || (v19 = *(*v11 + 11), v19 - 1295 > 4))
    {
      if (*a3 != 1)
      {
        v30 = 0;
        goto LABEL_59;
      }

      v26 = CEM::EmojiToken::gender(v17);
      v27 = 0;
      v514 = xmmword_1D2B27FA0;
      do
      {
        if (*(&v514 + v27) == v26)
        {
          break;
        }

        v27 += 4;
      }

      while (v27 != 16);
      v28 = CEM::EmojiToken::gender(*v11);
      v29 = 0;
      v514 = xmmword_1D2B27FA0;
      do
      {
        if (*(&v514 + v29) == v28)
        {
          break;
        }

        v29 += 4;
      }

      while (v29 != 16);
      v20 = v27 >= v29;
    }

    else
    {
      v20 = v19 >= v18;
    }

    v30 = !v20;
LABEL_59:
    v42 = *(*v506 + 11);
    if (v42 - 1295 > 4 || (v43 = *(*v512 + 22), v43 - 1295 > 4))
    {
      if (*a3 != 1)
      {
        if (!v30)
        {
          goto LABEL_338;
        }

        v50 = *v11;
        goto LABEL_84;
      }

      v45 = CEM::EmojiToken::gender(*v506);
      v46 = 0;
      v514 = xmmword_1D2B27FA0;
      do
      {
        if (*(&v514 + v46) == v45)
        {
          break;
        }

        v46 += 4;
      }

      while (v46 != 16);
      v47 = CEM::EmojiToken::gender(*v512);
      v48 = 0;
      v514 = xmmword_1D2B27FA0;
      do
      {
        if (*(&v514 + v48) == v47)
        {
          break;
        }

        v48 += 4;
      }

      while (v48 != 16);
      v44 = v46 >= v48;
    }

    else
    {
      v44 = v43 >= v42;
    }

    v49 = !v44;
    if ((v30 & 1) == 0)
    {
      if (!v49)
      {
        goto LABEL_338;
      }

      v69 = *v512;
      *v512 = *v506;
      *v506 = v69;
      v70 = *(v512 + 8);
      *(v512 + 8) = *v499;
      *v499 = v70;
      v71 = *v512;
      v72 = *(*v512 + 22);
      if (v72 - 1295 > 4 || (v73 = *v11, v74 = *(*v11 + 11), v74 - 1295 > 4))
      {
        if (*a3 == 1)
        {
          v199 = CEM::EmojiToken::gender(v71);
          v200 = 0;
          v514 = xmmword_1D2B27FA0;
          do
          {
            if (*(&v514 + v200) == v199)
            {
              break;
            }

            v200 += 4;
          }

          while (v200 != 16);
          v201 = CEM::EmojiToken::gender(*v11);
          v202 = 0;
          v514 = xmmword_1D2B27FA0;
          do
          {
            if (*(&v514 + v202) == v201)
            {
              break;
            }

            v202 += 4;
          }

          while (v202 != 16);
          if (v200 < v202)
          {
            v73 = *v11;
            v71 = *v512;
LABEL_304:
            *v11 = v71;
            *v512 = v73;
            v51 = (v11 + 1);
            v118 = (v512 + 8);
LABEL_337:
            v218 = *v51;
            *v51 = *v118;
            *v118 = v218;
            goto LABEL_338;
          }
        }
      }

      else if (v74 < v72)
      {
        goto LABEL_304;
      }

      goto LABEL_338;
    }

    v51 = (v11 + 1);
    v50 = *v11;
    if (v49)
    {
      *v11 = *v506;
      *v506 = v50;
LABEL_163:
      v118 = v499;
      goto LABEL_337;
    }

LABEL_84:
    v57 = v11[1];
    *v11 = *v512;
    *(v512 + 8) = v57;
    v51 = (v512 + 8);
    *v512 = v50;
    v58 = *v506;
    v59 = *(*v506 + 11);
    if (v59 - 1295 > 4 || (v60 = *v512, v61 = *(*v512 + 22), v61 - 1295 > 4))
    {
      if (*a3 == 1)
      {
        v114 = CEM::EmojiToken::gender(v58);
        v115 = 0;
        v514 = xmmword_1D2B27FA0;
        do
        {
          if (*(&v514 + v115) == v114)
          {
            break;
          }

          v115 += 4;
        }

        while (v115 != 16);
        v116 = CEM::EmojiToken::gender(*v512);
        v117 = 0;
        v514 = xmmword_1D2B27FA0;
        do
        {
          if (*(&v514 + v117) == v116)
          {
            break;
          }

          v117 += 4;
        }

        while (v117 != 16);
        if (v115 < v117)
        {
          v60 = *v512;
          v58 = *v506;
LABEL_162:
          *v512 = v58;
          *v506 = v60;
          goto LABEL_163;
        }
      }
    }

    else if (v61 < v59)
    {
      goto LABEL_162;
    }

LABEL_338:
    --a4;
    a1 = v512;
    if (a5)
    {
      goto LABEL_351;
    }

    v219 = *(v512 - 16);
    v220 = v219[11];
    if (v220 - 1295 > 4 || (v221 = *(*v512 + 22), v221 - 1295 > 4))
    {
      if (*a3 == 1)
      {
        v222 = CEM::EmojiToken::gender(v219);
        v223 = 0;
        v514 = xmmword_1D2B27FA0;
        do
        {
          if (*(&v514 + v223) == v222)
          {
            break;
          }

          v223 += 4;
        }

        while (v223 != 16);
        v224 = CEM::EmojiToken::gender(*v512);
        v225 = 0;
        v514 = xmmword_1D2B27FA0;
        do
        {
          if (*(&v514 + v225) == v224)
          {
            break;
          }

          v225 += 4;
        }

        while (v225 != 16);
        if (v223 < v225)
        {
          goto LABEL_351;
        }
      }

LABEL_430:
      v279 = *v512;
      *v512 = 0;
      *(v512 + 8) = 0;
      v503 = v279;
      v280 = v279;
      v281 = *(v279 + 22);
      if (v281 - 1295 <= 4)
      {
        v282 = *(*v506 + 11);
        if (v282 - 1295 <= 4)
        {
          if (v282 >= v281)
          {
            goto LABEL_456;
          }

LABEL_442:
          a1 = v512;
          while (1)
          {
            while (1)
            {
              a1 += 2;
              v287 = v280[11];
              if (v287 - 1295 > 4)
              {
                break;
              }

              v288 = *(*a1 + 11);
              if (v288 - 1295 > 4)
              {
                break;
              }

              if (v288 < v287)
              {
                goto LABEL_469;
              }
            }

            if (*a3 == 1)
            {
              v289 = CEM::EmojiToken::gender(v280);
              v290 = 0;
              v514 = xmmword_1D2B27FA0;
              do
              {
                if (*(&v514 + v290) == v289)
                {
                  break;
                }

                v290 += 4;
              }

              while (v290 != 16);
              v291 = CEM::EmojiToken::gender(*a1);
              v292 = 0;
              v514 = xmmword_1D2B27FA0;
              do
              {
                if (*(&v514 + v292) == v291)
                {
                  break;
                }

                v292 += 4;
              }

              while (v292 != 16);
              if (v290 < v292)
              {
                goto LABEL_469;
              }
            }
          }
        }
      }

      if (*a3 == 1)
      {
        v283 = CEM::EmojiToken::gender(v279);
        a1 = v512;
        v284 = 0;
        v514 = xmmword_1D2B27FA0;
        do
        {
          if (*(&v514 + v284) == v283)
          {
            break;
          }

          v284 += 4;
        }

        while (v284 != 16);
        v285 = CEM::EmojiToken::gender(*v506);
        v286 = 0;
        v514 = xmmword_1D2B27FA0;
        do
        {
          if (*(&v514 + v286) == v285)
          {
            break;
          }

          v286 += 4;
        }

        while (v286 != 16);
        if (v284 < v286)
        {
          goto LABEL_442;
        }
      }

LABEL_456:
      while (1)
      {
        a1 += 2;
        if (a1 >= a2)
        {
          break;
        }

        v293 = v280[11];
        if (v293 - 1295 > 4 || (v294 = *(*a1 + 11), v294 - 1295 > 4))
        {
          if (*a3 == 1)
          {
            v295 = CEM::EmojiToken::gender(v280);
            v296 = 0;
            v514 = xmmword_1D2B27FA0;
            do
            {
              if (*(&v514 + v296) == v295)
              {
                break;
              }

              v296 += 4;
            }

            while (v296 != 16);
            v297 = CEM::EmojiToken::gender(*a1);
            v298 = 0;
            v514 = xmmword_1D2B27FA0;
            do
            {
              if (*(&v514 + v298) == v297)
              {
                break;
              }

              v298 += 4;
            }

            while (v298 != 16);
            if (v296 < v298)
            {
              break;
            }
          }
        }

        else if (v294 < v293)
        {
          break;
        }
      }

LABEL_469:
      if (a1 < a2)
      {
        a2 = v509;
        do
        {
          while (1)
          {
            a2 -= 16;
            v299 = v280[11];
            if (v299 - 1295 > 4)
            {
              break;
            }

            v300 = *(*a2 + 22);
            if (v300 - 1295 > 4)
            {
              break;
            }

            if (v300 >= v299)
            {
              goto LABEL_509;
            }
          }

          if (*a3 != 1)
          {
            break;
          }

          v301 = CEM::EmojiToken::gender(v280);
          v302 = 0;
          v514 = xmmword_1D2B27FA0;
          do
          {
            if (*(&v514 + v302) == v301)
            {
              break;
            }

            v302 += 4;
          }

          while (v302 != 16);
          v303 = CEM::EmojiToken::gender(*a2);
          v304 = 0;
          v514 = xmmword_1D2B27FA0;
          do
          {
            if (*(&v514 + v304) == v303)
            {
              break;
            }

            v304 += 4;
          }

          while (v304 != 16);
        }

        while (v302 < v304);
      }

LABEL_509:
      while (a1 < a2)
      {
        v305 = *a1;
        *a1 = *a2;
        *a2 = v305;
        v306 = a1[1];
        a1[1] = *(a2 + 1);
        *(a2 + 1) = v306;
        while (1)
        {
          while (1)
          {
            a1 += 2;
            v307 = v280[11];
            if (v307 - 1295 > 4)
            {
              break;
            }

            v308 = *(*a1 + 11);
            if (v308 - 1295 > 4)
            {
              break;
            }

            if (v308 < v307)
            {
              goto LABEL_506;
            }
          }

          if (*a3 == 1)
          {
            v309 = CEM::EmojiToken::gender(v280);
            v310 = 0;
            v514 = xmmword_1D2B27FA0;
            do
            {
              if (*(&v514 + v310) == v309)
              {
                break;
              }

              v310 += 4;
            }

            while (v310 != 16);
            v311 = CEM::EmojiToken::gender(*a1);
            v312 = 0;
            v514 = xmmword_1D2B27FA0;
            do
            {
              if (*(&v514 + v312) == v311)
              {
                break;
              }

              v312 += 4;
            }

            while (v312 != 16);
            if (v310 < v312)
            {
              break;
            }
          }
        }

        do
        {
LABEL_506:
          while (1)
          {
            a2 -= 16;
            v317 = v280[11];
            if (v317 - 1295 > 4)
            {
              break;
            }

            v318 = *(*a2 + 22);
            if (v318 - 1295 > 4)
            {
              break;
            }

            if (v318 >= v317)
            {
              goto LABEL_509;
            }
          }

          if (*a3 != 1)
          {
            break;
          }

          v313 = CEM::EmojiToken::gender(v280);
          v314 = 0;
          v514 = xmmword_1D2B27FA0;
          do
          {
            if (*(&v514 + v314) == v313)
            {
              break;
            }

            v314 += 4;
          }

          while (v314 != 16);
          v315 = CEM::EmojiToken::gender(*a2);
          v316 = 0;
          v514 = xmmword_1D2B27FA0;
          do
          {
            if (*(&v514 + v316) == v315)
            {
              break;
            }

            v316 += 4;
          }

          while (v316 != 16);
        }

        while (v314 < v316);
      }

      v319 = a1 - 2;
      if (a1 - 2 != v512)
      {
        v320 = *v319;
        *v319 = 0;
        *(a1 - 1) = 0;
        v321 = *(v512 + 8);
        *v512 = v320;
        if (v321)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v321);
        }
      }

      a5 = 0;
      v322 = *(a1 - 1);
      *(a1 - 1) = v503;
      a2 = v509;
      if (v322)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v322);
        a5 = 0;
      }
    }

    else
    {
      if (v221 >= v220)
      {
        goto LABEL_430;
      }

LABEL_351:
      v226 = *v512;
      *v512 = 0;
      *(v512 + 8) = 0;
      v502 = v226;
      v227 = v226;
      v228 = v512;
      do
      {
        while (1)
        {
          v229 = v228;
          v231 = v228[2];
          v228 += 2;
          v230 = v231;
          v232 = v231[11];
          if (v232 - 1295 > 4)
          {
            break;
          }

          v233 = v227[11];
          if (v233 - 1295 > 4)
          {
            break;
          }

          if (v233 >= v232)
          {
            goto LABEL_364;
          }
        }

        if (*a3 != 1)
        {
          break;
        }

        v234 = CEM::EmojiToken::gender(v230);
        v235 = 0;
        v514 = xmmword_1D2B27FA0;
        do
        {
          if (*(&v514 + v235) == v234)
          {
            break;
          }

          v235 += 4;
        }

        while (v235 != 16);
        v236 = CEM::EmojiToken::gender(v227);
        v237 = 0;
        v514 = xmmword_1D2B27FA0;
        do
        {
          if (*(&v514 + v237) == v236)
          {
            break;
          }

          v237 += 4;
        }

        while (v237 != 16);
      }

      while (v235 < v237);
LABEL_364:
      v238 = v509;
      if (v229 == v512)
      {
        v238 = v509;
        while (v228 < v238)
        {
          v272 = *(v238 - 2);
          v238 -= 2;
          v271 = v272;
          v273 = v272[11];
          if (v273 - 1295 > 4 || (v274 = v227[11], v274 - 1295 > 4))
          {
            if (*a3 == 1)
            {
              v275 = CEM::EmojiToken::gender(v271);
              v276 = 0;
              v514 = xmmword_1D2B27FA0;
              do
              {
                if (*(&v514 + v276) == v275)
                {
                  break;
                }

                v276 += 4;
              }

              while (v276 != 16);
              v277 = CEM::EmojiToken::gender(v227);
              v278 = 0;
              v514 = xmmword_1D2B27FA0;
              do
              {
                if (*(&v514 + v278) == v277)
                {
                  break;
                }

                v278 += 4;
              }

              while (v278 != 16);
              if (v276 < v278)
              {
                break;
              }
            }
          }

          else if (v274 < v273)
          {
            break;
          }
        }
      }

      else
      {
        while (1)
        {
          while (1)
          {
            v240 = *(v238 - 2);
            v238 -= 2;
            v239 = v240;
            v241 = v240[11];
            if (v241 - 1295 > 4)
            {
              break;
            }

            v242 = v227[11];
            if (v242 - 1295 > 4)
            {
              break;
            }

            if (v242 < v241)
            {
              goto LABEL_377;
            }
          }

          if (*a3 == 1)
          {
            v243 = CEM::EmojiToken::gender(v239);
            v244 = 0;
            v514 = xmmword_1D2B27FA0;
            do
            {
              if (*(&v514 + v244) == v243)
              {
                break;
              }

              v244 += 4;
            }

            while (v244 != 16);
            v245 = CEM::EmojiToken::gender(v227);
            v246 = 0;
            v514 = xmmword_1D2B27FA0;
            do
            {
              if (*(&v514 + v246) == v245)
              {
                break;
              }

              v246 += 4;
            }

            while (v246 != 16);
            if (v244 < v246)
            {
              break;
            }
          }
        }
      }

LABEL_377:
      a1 = v228;
      if (v228 < v238)
      {
        v247 = v238;
        do
        {
          v248 = *a1;
          *a1 = *v247;
          *v247 = v248;
          v249 = a1[1];
          a1[1] = v247[1];
          v247[1] = v249;
          do
          {
            while (1)
            {
              v251 = a1[2];
              a1 += 2;
              v250 = v251;
              v252 = v251[11];
              if (v252 - 1295 > 4)
              {
                break;
              }

              v253 = v227[11];
              if (v253 - 1295 > 4)
              {
                break;
              }

              if (v253 >= v252)
              {
                goto LABEL_401;
              }
            }

            if (*a3 != 1)
            {
              break;
            }

            v254 = CEM::EmojiToken::gender(v250);
            v255 = 0;
            v514 = xmmword_1D2B27FA0;
            do
            {
              if (*(&v514 + v255) == v254)
              {
                break;
              }

              v255 += 4;
            }

            while (v255 != 16);
            v256 = CEM::EmojiToken::gender(v227);
            v257 = 0;
            v514 = xmmword_1D2B27FA0;
            do
            {
              if (*(&v514 + v257) == v256)
              {
                break;
              }

              v257 += 4;
            }

            while (v257 != 16);
          }

          while (v255 < v257);
          while (1)
          {
LABEL_401:
            while (1)
            {
              v263 = *(v247 - 2);
              v247 -= 2;
              v262 = v263;
              v264 = v263[11];
              if (v264 - 1295 > 4)
              {
                break;
              }

              v265 = v227[11];
              if (v265 - 1295 > 4)
              {
                break;
              }

              if (v265 < v264)
              {
                goto LABEL_404;
              }
            }

            if (*a3 == 1)
            {
              v258 = CEM::EmojiToken::gender(v262);
              v259 = 0;
              v514 = xmmword_1D2B27FA0;
              do
              {
                if (*(&v514 + v259) == v258)
                {
                  break;
                }

                v259 += 4;
              }

              while (v259 != 16);
              v260 = CEM::EmojiToken::gender(v227);
              v261 = 0;
              v514 = xmmword_1D2B27FA0;
              do
              {
                if (*(&v514 + v261) == v260)
                {
                  break;
                }

                v261 += 4;
              }

              while (v261 != 16);
              if (v259 < v261)
              {
                break;
              }
            }
          }

LABEL_404:
          ;
        }

        while (a1 < v247);
      }

      v266 = a1 - 2;
      if (a1 - 2 != v512)
      {
        v267 = *v266;
        *v266 = 0;
        *(a1 - 1) = 0;
        v268 = *(v512 + 8);
        *v512 = v267;
        if (v268)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v268);
        }
      }

      v269 = *(a1 - 1);
      *(a1 - 1) = v502;
      if (v269)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v269);
      }

      v16 = v228 >= v238;
      a2 = v509;
      if (v16)
      {
        v270 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,sortEmojiTokens(std::vector<std::shared_ptr<CEM::EmojiToken>> &,BOOL)::$_0 &,std::shared_ptr<CEM::EmojiToken>*>(v512, (a1 - 2), a3);
        if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,sortEmojiTokens(std::vector<std::shared_ptr<CEM::EmojiToken>> &,BOOL)::$_0 &,std::shared_ptr<CEM::EmojiToken>*>(a1, v509, a3))
        {
          a2 = (a1 - 2);
          a1 = v512;
          if (v270)
          {
            return;
          }

          goto LABEL_1;
        }

        if (!v270)
        {
          goto LABEL_414;
        }
      }

      else
      {
LABEL_414:
        std::__introsort<std::_ClassicAlgPolicy,sortEmojiTokens(std::vector<std::shared_ptr<CEM::EmojiToken>> &,BOOL)::$_0 &,std::shared_ptr<CEM::EmojiToken>*,false>(v512, a1 - 2, a3, a4, a5 & 1);
        a5 = 0;
      }
    }
  }

  if (v9 < 2)
  {
    return;
  }

  if (v9 != 2)
  {
    goto LABEL_9;
  }

  v323 = *v506;
  v324 = *(*v506 + 11);
  if (v324 - 1295 <= 4)
  {
    v325 = *a1;
    v326 = *(*a1 + 11);
    if (v326 - 1295 <= 4)
    {
      if (v326 >= v324)
      {
        return;
      }

LABEL_704:
      *a1 = v323;
      *v506 = v325;
      v441 = a1[1];
      v442 = v499;
      a1[1] = *v499;
LABEL_798:
      *v442 = v441;
      return;
    }
  }

  if (*a3 == 1)
  {
    v437 = CEM::EmojiToken::gender(v323);
    v438 = 0;
    v514 = xmmword_1D2B27FA0;
    do
    {
      if (*(&v514 + v438) == v437)
      {
        break;
      }

      v438 += 4;
    }

    while (v438 != 16);
    v439 = CEM::EmojiToken::gender(*a1);
    v440 = 0;
    v514 = xmmword_1D2B27FA0;
    do
    {
      if (*(&v514 + v440) == v439)
      {
        break;
      }

      v440 += 4;
    }

    while (v440 != 16);
    if (v438 < v440)
    {
      v325 = *a1;
      v323 = *v506;
      goto LABEL_704;
    }
  }
}

void sub_1D2B21D64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13, __int128 a14, __int128 a15, __int128 a16)
{
  if (*(&a13 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&a13 + 1));
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::unordered_set<std::shared_ptr<CEM::EmojiToken>,sortEmojiTokens(std::vector<std::shared_ptr<CEM::EmojiToken>> &,BOOL)::$_1 const,sortEmojiTokens(std::vector<std::shared_ptr<CEM::EmojiToken>> &,BOOL)::$_2 const,std::allocator<std::shared_ptr<CEM::EmojiToken>>>::~unordered_set[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = v2[3];
      if (v4)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v5 = *a1;
  *a1 = 0;
  if (v5)
  {
    operator delete(v5);
  }

  return a1;
}

void std::unordered_set<std::shared_ptr<CEM::EmojiToken>,sortEmojiTokens(std::vector<std::shared_ptr<CEM::EmojiToken>> &,BOOL)::$_1 const,sortEmojiTokens(std::vector<std::shared_ptr<CEM::EmojiToken>> &,BOOL)::$_2 const,std::allocator<std::shared_ptr<CEM::EmojiToken>>>::insert[abi:ne200100](void *a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    v6 = CEM::EmojiToken::baseIndex(v4);
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  else
  {
    v6 = CEM::EmojiToken::baseIndex(v4);
  }

  v7 = a1[1];
  if (!v7)
  {
    goto LABEL_29;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v7 <= v6)
    {
      v10 = v6 % a1[1];
    }
  }

  else
  {
    v10 = (v7 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_29:
    operator new();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v6)
    {
      break;
    }

    if (v9 > 1)
    {
      if (v13 >= v7)
      {
        v13 %= v7;
      }
    }

    else
    {
      v13 &= v7 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_29;
    }

LABEL_25:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_29;
    }
  }

  v14 = v12[2];
  v15 = v12[3];
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v17 = *a2;
  v16 = *(a2 + 8);
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    v18 = *(v14 + 22) == *(v17 + 11);
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    if (!v15)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v18 = *(v14 + 22) == *(v17 + 11);
  if (v15)
  {
LABEL_17:
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

LABEL_18:
  if (!v18)
  {
    goto LABEL_25;
  }
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::shared_ptr<CEM::EmojiToken>,void *>>>::operator()[abi:ne200100](char a1, void *__p)
{
  if (a1)
  {
    v3 = __p[3];
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

CEM::EmojiToken *std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,sortEmojiTokens(std::vector<std::shared_ptr<CEM::EmojiToken>> &,BOOL)::$_0 &,std::shared_ptr<CEM::EmojiToken>*,0>(uint64_t a1, uint64_t a2, uint64_t a3, CEM::EmojiToken **a4, _BYTE *a5)
{
  v10 = *(*a2 + 22);
  if (v10 - 1295 > 4 || (v11 = *(*a1 + 22), v11 - 1295 > 4))
  {
    if (*a5 != 1)
    {
      v17 = 0;
      goto LABEL_16;
    }

    v13 = CEM::EmojiToken::gender(*a2);
    v14 = 0;
    v70 = xmmword_1D2B27FA0;
    do
    {
      if (*(&v70 + v14) == v13)
      {
        break;
      }

      v14 += 4;
    }

    while (v14 != 16);
    v15 = CEM::EmojiToken::gender(*a1);
    v16 = 0;
    v70 = xmmword_1D2B27FA0;
    do
    {
      if (*(&v70 + v16) == v15)
      {
        break;
      }

      v16 += 4;
    }

    while (v16 != 16);
    v12 = v14 >= v16;
  }

  else
  {
    v12 = v11 >= v10;
  }

  v17 = !v12;
LABEL_16:
  v18 = *(*a3 + 22);
  if (v18 - 1295 > 4 || (v19 = *(*a2 + 22), v19 - 1295 > 4))
  {
    if (*a5 != 1)
    {
      if (!v17)
      {
        goto LABEL_56;
      }

      v26 = *a1;
      goto LABEL_35;
    }

    v21 = CEM::EmojiToken::gender(*a3);
    v22 = 0;
    v70 = xmmword_1D2B27FA0;
    do
    {
      if (*(&v70 + v22) == v21)
      {
        break;
      }

      v22 += 4;
    }

    while (v22 != 16);
    v23 = CEM::EmojiToken::gender(*a2);
    v24 = 0;
    v70 = xmmword_1D2B27FA0;
    do
    {
      if (*(&v70 + v24) == v23)
      {
        break;
      }

      v24 += 4;
    }

    while (v24 != 16);
    v20 = v22 >= v24;
  }

  else
  {
    v20 = v19 >= v18;
  }

  v25 = !v20;
  if ((v17 & 1) == 0)
  {
    if (!v25)
    {
      goto LABEL_56;
    }

    v32 = *a2;
    *a2 = *a3;
    *a3 = v32;
    v34 = (a2 + 8);
    v33 = *(a2 + 8);
    *(a2 + 8) = *(a3 + 8);
    *(a3 + 8) = v33;
    v35 = *a2;
    v36 = *(*a2 + 22);
    if (v36 - 1295 > 4 || (v37 = *a1, v38 = *(*a1 + 22), v38 - 1295 > 4))
    {
      if (*a5 != 1)
      {
        goto LABEL_56;
      }

      v62 = CEM::EmojiToken::gender(v35);
      v63 = 0;
      v70 = xmmword_1D2B27FA0;
      do
      {
        if (*(&v70 + v63) == v62)
        {
          break;
        }

        v63 += 4;
      }

      while (v63 != 16);
      v64 = CEM::EmojiToken::gender(*a1);
      v65 = 0;
      v70 = xmmword_1D2B27FA0;
      do
      {
        if (*(&v70 + v65) == v64)
        {
          break;
        }

        v65 += 4;
      }

      while (v65 != 16);
      if (v63 >= v65)
      {
        goto LABEL_56;
      }

      v37 = *a1;
      v35 = *a2;
    }

    else if (v38 >= v36)
    {
      goto LABEL_56;
    }

    *a1 = v35;
    v27 = (a1 + 8);
    *a2 = v37;
    goto LABEL_55;
  }

  v27 = (a1 + 8);
  v26 = *a1;
  if (v25)
  {
    *a1 = *a3;
LABEL_54:
    *a3 = v26;
    v34 = (a3 + 8);
LABEL_55:
    v43 = *v27;
    *v27 = *v34;
    *v34 = v43;
    goto LABEL_56;
  }

LABEL_35:
  *a1 = *a2;
  *a2 = v26;
  v27 = (a2 + 8);
  v28 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);
  *(a2 + 8) = v28;
  v29 = *a3;
  v30 = *(*a3 + 22);
  if (v30 - 1295 <= 4)
  {
    v26 = *a2;
    v31 = *(*a2 + 22);
    if (v31 - 1295 <= 4)
    {
      if (v31 >= v30)
      {
        goto LABEL_56;
      }

      goto LABEL_53;
    }
  }

  if (*a5 == 1)
  {
    v39 = CEM::EmojiToken::gender(v29);
    v40 = 0;
    v70 = xmmword_1D2B27FA0;
    do
    {
      if (*(&v70 + v40) == v39)
      {
        break;
      }

      v40 += 4;
    }

    while (v40 != 16);
    v41 = CEM::EmojiToken::gender(*a2);
    v42 = 0;
    v70 = xmmword_1D2B27FA0;
    do
    {
      if (*(&v70 + v42) == v41)
      {
        break;
      }

      v42 += 4;
    }

    while (v42 != 16);
    if (v40 < v42)
    {
      v26 = *a2;
      v29 = *a3;
LABEL_53:
      *a2 = v29;
      goto LABEL_54;
    }
  }

LABEL_56:
  result = *a4;
  v45 = *(*a4 + 11);
  if (v45 - 1295 > 4 || (v46 = *a3, v47 = *(*a3 + 22), v47 - 1295 > 4))
  {
    if (*a5 != 1)
    {
      return result;
    }

    v48 = CEM::EmojiToken::gender(result);
    v49 = 0;
    v70 = xmmword_1D2B27FA0;
    do
    {
      if (*(&v70 + v49) == v48)
      {
        break;
      }

      v49 += 4;
    }

    while (v49 != 16);
    result = CEM::EmojiToken::gender(*a3);
    v50 = 0;
    v70 = xmmword_1D2B27FA0;
    do
    {
      if (*(&v70 + v50) == result)
      {
        break;
      }

      v50 += 4;
    }

    while (v50 != 16);
    if (v49 >= v50)
    {
      return result;
    }

    v46 = *a3;
    result = *a4;
  }

  else if (v47 >= v45)
  {
    return result;
  }

  *a3 = result;
  *a4 = v46;
  v51 = *(a3 + 8);
  *(a3 + 8) = a4[1];
  a4[1] = v51;
  result = *a3;
  v52 = *(*a3 + 22);
  if (v52 - 1295 > 4 || (v53 = *a2, v54 = *(*a2 + 22), v54 - 1295 > 4))
  {
    if (*a5 != 1)
    {
      return result;
    }

    v55 = CEM::EmojiToken::gender(result);
    v56 = 0;
    v70 = xmmword_1D2B27FA0;
    do
    {
      if (*(&v70 + v56) == v55)
      {
        break;
      }

      v56 += 4;
    }

    while (v56 != 16);
    result = CEM::EmojiToken::gender(*a2);
    v57 = 0;
    v70 = xmmword_1D2B27FA0;
    do
    {
      if (*(&v70 + v57) == result)
      {
        break;
      }

      v57 += 4;
    }

    while (v57 != 16);
    if (v56 >= v57)
    {
      return result;
    }

    v53 = *a2;
    result = *a3;
  }

  else if (v54 >= v52)
  {
    return result;
  }

  *a2 = result;
  *a3 = v53;
  v58 = *(a2 + 8);
  *(a2 + 8) = *(a3 + 8);
  *(a3 + 8) = v58;
  result = *a2;
  v59 = *(*a2 + 22);
  if (v59 - 1295 <= 4)
  {
    v60 = *a1;
    v61 = *(*a1 + 22);
    if (v61 - 1295 <= 4)
    {
      if (v61 >= v59)
      {
        return result;
      }

LABEL_105:
      *a1 = result;
      *a2 = v60;
      v69 = *(a1 + 8);
      *(a1 + 8) = *(a2 + 8);
      *(a2 + 8) = v69;
      return result;
    }
  }

  if (*a5 == 1)
  {
    v66 = CEM::EmojiToken::gender(result);
    v67 = 0;
    v70 = xmmword_1D2B27FA0;
    do
    {
      if (*(&v70 + v67) == v66)
      {
        break;
      }

      v67 += 4;
    }

    while (v67 != 16);
    result = CEM::EmojiToken::gender(*a1);
    v68 = 0;
    v70 = xmmword_1D2B27FA0;
    do
    {
      if (*(&v70 + v68) == result)
      {
        break;
      }

      v68 += 4;
    }

    while (v68 != 16);
    if (v67 < v68)
    {
      v60 = *a1;
      result = *a2;
      goto LABEL_105;
    }
  }

  return result;
}

CEM::EmojiToken *std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,sortEmojiTokens(std::vector<std::shared_ptr<CEM::EmojiToken>> &,BOOL)::$_0 &,std::shared_ptr<CEM::EmojiToken>*,0>(CEM::EmojiToken **a1, uint64_t a2, uint64_t a3, CEM::EmojiToken **a4, CEM::EmojiToken **a5, _BYTE *a6)
{
  std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,sortEmojiTokens(std::vector<std::shared_ptr<CEM::EmojiToken>> &,BOOL)::$_0 &,std::shared_ptr<CEM::EmojiToken>*,0>(a1, a2, a3, a4, a6);
  result = *a5;
  v13 = *(*a5 + 11);
  if (v13 - 1295 > 4 || (v14 = *a4, v15 = *(*a4 + 11), v15 - 1295 > 4))
  {
    if (*a6 != 1)
    {
      return result;
    }

    v16 = CEM::EmojiToken::gender(result);
    v17 = 0;
    v41 = xmmword_1D2B27FA0;
    do
    {
      if (*(&v41 + v17) == v16)
      {
        break;
      }

      v17 += 4;
    }

    while (v17 != 16);
    result = CEM::EmojiToken::gender(*a4);
    v18 = 0;
    v41 = xmmword_1D2B27FA0;
    do
    {
      if (*(&v41 + v18) == result)
      {
        break;
      }

      v18 += 4;
    }

    while (v18 != 16);
    if (v17 >= v18)
    {
      return result;
    }

    v14 = *a4;
    result = *a5;
  }

  else if (v15 >= v13)
  {
    return result;
  }

  *a4 = result;
  *a5 = v14;
  v19 = a4[1];
  a4[1] = a5[1];
  a5[1] = v19;
  result = *a4;
  v20 = *(*a4 + 11);
  if (v20 - 1295 > 4 || (v21 = *a3, v22 = *(*a3 + 22), v22 - 1295 > 4))
  {
    if (*a6 != 1)
    {
      return result;
    }

    v23 = CEM::EmojiToken::gender(result);
    v24 = 0;
    v41 = xmmword_1D2B27FA0;
    do
    {
      if (*(&v41 + v24) == v23)
      {
        break;
      }

      v24 += 4;
    }

    while (v24 != 16);
    result = CEM::EmojiToken::gender(*a3);
    v25 = 0;
    v41 = xmmword_1D2B27FA0;
    do
    {
      if (*(&v41 + v25) == result)
      {
        break;
      }

      v25 += 4;
    }

    while (v25 != 16);
    if (v24 >= v25)
    {
      return result;
    }

    v21 = *a3;
    result = *a4;
  }

  else if (v22 >= v20)
  {
    return result;
  }

  *a3 = result;
  *a4 = v21;
  v26 = *(a3 + 8);
  *(a3 + 8) = a4[1];
  a4[1] = v26;
  result = *a3;
  v27 = *(*a3 + 22);
  if (v27 - 1295 > 4 || (v28 = *a2, v29 = *(*a2 + 22), v29 - 1295 > 4))
  {
    if (*a6 != 1)
    {
      return result;
    }

    v30 = CEM::EmojiToken::gender(result);
    v31 = 0;
    v41 = xmmword_1D2B27FA0;
    do
    {
      if (*(&v41 + v31) == v30)
      {
        break;
      }

      v31 += 4;
    }

    while (v31 != 16);
    result = CEM::EmojiToken::gender(*a2);
    v32 = 0;
    v41 = xmmword_1D2B27FA0;
    do
    {
      if (*(&v41 + v32) == result)
      {
        break;
      }

      v32 += 4;
    }

    while (v32 != 16);
    if (v31 >= v32)
    {
      return result;
    }

    v28 = *a2;
    result = *a3;
  }

  else if (v29 >= v27)
  {
    return result;
  }

  *a2 = result;
  *a3 = v28;
  v33 = *(a2 + 8);
  *(a2 + 8) = *(a3 + 8);
  *(a3 + 8) = v33;
  result = *a2;
  v34 = *(*a2 + 22);
  if (v34 - 1295 <= 4)
  {
    v35 = *a1;
    v36 = *(*a1 + 11);
    if (v36 - 1295 <= 4)
    {
      if (v36 >= v34)
      {
        return result;
      }

LABEL_53:
      *a1 = result;
      *a2 = v35;
      v40 = a1[1];
      a1[1] = *(a2 + 8);
      *(a2 + 8) = v40;
      return result;
    }
  }

  if (*a6 == 1)
  {
    v37 = CEM::EmojiToken::gender(result);
    v38 = 0;
    v41 = xmmword_1D2B27FA0;
    do
    {
      if (*(&v41 + v38) == v37)
      {
        break;
      }

      v38 += 4;
    }

    while (v38 != 16);
    result = CEM::EmojiToken::gender(*a1);
    v39 = 0;
    v41 = xmmword_1D2B27FA0;
    do
    {
      if (*(&v41 + v39) == result)
      {
        break;
      }

      v39 += 4;
    }

    while (v39 != 16);
    if (v38 < v39)
    {
      v35 = *a1;
      result = *a2;
      goto LABEL_53;
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,sortEmojiTokens(std::vector<std::shared_ptr<CEM::EmojiToken>> &,BOOL)::$_0 &,std::shared_ptr<CEM::EmojiToken>*>(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v6 = (a2 - a1) >> 4;
  if (v6 > 2)
  {
    if (v6 != 3)
    {
      if (v6 == 4)
      {
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,sortEmojiTokens(std::vector<std::shared_ptr<CEM::EmojiToken>> &,BOOL)::$_0 &,std::shared_ptr<CEM::EmojiToken>*,0>(a1, a1 + 16, a1 + 32, (a2 - 16), a3);
        return 1;
      }

      if (v6 == 5)
      {
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,sortEmojiTokens(std::vector<std::shared_ptr<CEM::EmojiToken>> &,BOOL)::$_0 &,std::shared_ptr<CEM::EmojiToken>*,0>(a1, a1 + 16, a1 + 32, (a1 + 48), (a2 - 16), a3);
        return 1;
      }

      goto LABEL_15;
    }

    v11 = *(a1 + 16);
    v12 = v11[11];
    if (v12 - 1295 > 4 || (v13 = *(*a1 + 22), v13 - 1295 > 4))
    {
      if (*a3 != 1)
      {
        v24 = 0;
        goto LABEL_52;
      }

      v20 = CEM::EmojiToken::gender(v11);
      v21 = 0;
      v118 = xmmword_1D2B27FA0;
      do
      {
        if (*(&v118 + v21) == v20)
        {
          break;
        }

        v21 += 4;
      }

      while (v21 != 16);
      v22 = CEM::EmojiToken::gender(*a1);
      v23 = 0;
      v118 = xmmword_1D2B27FA0;
      do
      {
        if (*(&v118 + v23) == v22)
        {
          break;
        }

        v23 += 4;
      }

      while (v23 != 16);
      v14 = v21 >= v23;
    }

    else
    {
      v14 = v13 >= v12;
    }

    v24 = !v14;
LABEL_52:
    v35 = *(a2 - 16);
    v36 = v35[11];
    if (v36 - 1295 > 4 || (v37 = *(*(a1 + 16) + 22), v37 - 1295 > 4))
    {
      if (*a3 != 1)
      {
        if (!v24)
        {
          return 1;
        }

        v44 = *a1;
        goto LABEL_71;
      }

      v39 = CEM::EmojiToken::gender(v35);
      v40 = 0;
      v118 = xmmword_1D2B27FA0;
      do
      {
        if (*(&v118 + v40) == v39)
        {
          break;
        }

        v40 += 4;
      }

      while (v40 != 16);
      v41 = CEM::EmojiToken::gender(*(a1 + 16));
      v42 = 0;
      v118 = xmmword_1D2B27FA0;
      do
      {
        if (*(&v118 + v42) == v41)
        {
          break;
        }

        v42 += 4;
      }

      while (v42 != 16);
      v38 = v40 >= v42;
    }

    else
    {
      v38 = v37 >= v36;
    }

    v43 = !v38;
    if ((v24 & 1) == 0)
    {
      if (!v43)
      {
        return 1;
      }

      v61 = *(a1 + 16);
      *(a1 + 16) = *(a2 - 16);
      *(a2 - 16) = v61;
      v63 = (a1 + 24);
      v62 = *(a1 + 24);
      *(a1 + 24) = *(a2 - 8);
      *(a2 - 8) = v62;
      v64 = *(a1 + 16);
      v65 = v64[11];
      if (v65 - 1295 > 4 || (v66 = *a1, v67 = *(*a1 + 22), v67 - 1295 > 4))
      {
        if (*a3 != 1)
        {
          return 1;
        }

        v109 = CEM::EmojiToken::gender(v64);
        v110 = 0;
        v118 = xmmword_1D2B27FA0;
        do
        {
          if (*(&v118 + v110) == v109)
          {
            break;
          }

          v110 += 4;
        }

        while (v110 != 16);
        v111 = CEM::EmojiToken::gender(*a1);
        v112 = 0;
        v118 = xmmword_1D2B27FA0;
        do
        {
          if (*(&v118 + v112) == v111)
          {
            break;
          }

          v112 += 4;
        }

        while (v112 != 16);
        if (v110 >= v112)
        {
          return 1;
        }

        v66 = *a1;
        v64 = *(a1 + 16);
      }

      else if (v67 >= v65)
      {
        return 1;
      }

      *a1 = v64;
      *(a1 + 16) = v66;
      v45 = (a1 + 8);
LABEL_116:
      v78 = *v45;
      *v45 = *v63;
      *v63 = v78;
      return 1;
    }

    v45 = (a1 + 8);
    v44 = *a1;
    if (v43)
    {
      *a1 = *(a2 - 16);
LABEL_115:
      *(a2 - 16) = v44;
      v63 = (a2 - 8);
      goto LABEL_116;
    }

LABEL_71:
    v46 = *(a1 + 16);
    *(a1 + 24) = *(a1 + 8);
    v45 = (a1 + 24);
    *(a1 + 16) = v44;
    *a1 = v46;
    v47 = *(a2 - 16);
    v48 = v47[11];
    if (v48 - 1295 > 4 || (v44 = *(a1 + 16), v49 = *(v44 + 11), v49 - 1295 > 4))
    {
      if (*a3 != 1)
      {
        return 1;
      }

      v74 = CEM::EmojiToken::gender(v47);
      v75 = 0;
      v118 = xmmword_1D2B27FA0;
      do
      {
        if (*(&v118 + v75) == v74)
        {
          break;
        }

        v75 += 4;
      }

      while (v75 != 16);
      v76 = CEM::EmojiToken::gender(*(a1 + 16));
      v77 = 0;
      v118 = xmmword_1D2B27FA0;
      do
      {
        if (*(&v118 + v77) == v76)
        {
          break;
        }

        v77 += 4;
      }

      while (v77 != 16);
      if (v75 >= v77)
      {
        return 1;
      }

      v44 = *(a1 + 16);
      v47 = *(a2 - 16);
    }

    else if (v49 >= v48)
    {
      return 1;
    }

    *(a1 + 16) = v47;
    goto LABEL_115;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = *(a2 - 16);
    v8 = v7[11];
    if (v8 - 1295 > 4 || (v9 = *a1, v10 = *(*a1 + 22), v10 - 1295 > 4))
    {
      if (*a3 != 1)
      {
        return 1;
      }

      v30 = CEM::EmojiToken::gender(v7);
      v31 = 0;
      v118 = xmmword_1D2B27FA0;
      do
      {
        if (*(&v118 + v31) == v30)
        {
          break;
        }

        v31 += 4;
      }

      while (v31 != 16);
      v32 = CEM::EmojiToken::gender(*a1);
      v33 = 0;
      v118 = xmmword_1D2B27FA0;
      do
      {
        if (*(&v118 + v33) == v32)
        {
          break;
        }

        v33 += 4;
      }

      while (v33 != 16);
      if (v31 >= v33)
      {
        return 1;
      }

      v9 = *a1;
      v7 = *(a2 - 16);
    }

    else if (v10 >= v8)
    {
      return 1;
    }

    *a1 = v7;
    *(a2 - 16) = v9;
    v34 = *(a1 + 8);
    *(a1 + 8) = *(a2 - 8);
    *(a2 - 8) = v34;
    return 1;
  }

LABEL_15:
  v15 = a1 + 32;
  v16 = *(a1 + 16);
  v17 = v16[11];
  if (v17 - 1295 > 4 || (v18 = *(*a1 + 22), v18 - 1295 > 4))
  {
    if (*a3 != 1)
    {
      v29 = 0;
      goto LABEL_76;
    }

    v25 = CEM::EmojiToken::gender(v16);
    v26 = 0;
    v118 = xmmword_1D2B27FA0;
    do
    {
      if (*(&v118 + v26) == v25)
      {
        break;
      }

      v26 += 4;
    }

    while (v26 != 16);
    v27 = CEM::EmojiToken::gender(*a1);
    v28 = 0;
    v118 = xmmword_1D2B27FA0;
    do
    {
      if (*(&v118 + v28) == v27)
      {
        break;
      }

      v28 += 4;
    }

    while (v28 != 16);
    v19 = v26 >= v28;
  }

  else
  {
    v19 = v18 >= v17;
  }

  v29 = !v19;
LABEL_76:
  v50 = *v15;
  v51 = *(*v15 + 22);
  if (v51 - 1295 > 4 || (v52 = *(*(a1 + 16) + 22), v52 - 1295 > 4))
  {
    if (*a3 != 1)
    {
      if (v29)
      {
        v59 = *a1;
        goto LABEL_118;
      }

      goto LABEL_134;
    }

    v54 = CEM::EmojiToken::gender(v50);
    v55 = 0;
    v118 = xmmword_1D2B27FA0;
    do
    {
      if (*(&v118 + v55) == v54)
      {
        break;
      }

      v55 += 4;
    }

    while (v55 != 16);
    v56 = CEM::EmojiToken::gender(*(a1 + 16));
    v57 = 0;
    v118 = xmmword_1D2B27FA0;
    do
    {
      if (*(&v118 + v57) == v56)
      {
        break;
      }

      v57 += 4;
    }

    while (v57 != 16);
    v53 = v55 >= v57;
  }

  else
  {
    v53 = v52 >= v51;
  }

  v58 = !v53;
  if (v29)
  {
    v59 = *a1;
    v50 = *(a1 + 32);
    if (v58)
    {
      v60 = (a1 + 8);
      *a1 = v50;
LABEL_132:
      *(a1 + 32) = v59;
      v85 = (a1 + 40);
LABEL_133:
      v86 = *v60;
      *v60 = *v85;
      *v85 = v86;
      goto LABEL_134;
    }

    v51 = v50[11];
LABEL_118:
    v79 = *(a1 + 16);
    *(a1 + 24) = *(a1 + 8);
    v60 = (a1 + 24);
    *(a1 + 16) = v59;
    *a1 = v79;
    if (v51 - 1295 > 4 || (v59 = *(a1 + 16), v80 = *(v59 + 11), v80 - 1295 > 4))
    {
      if (*a3 != 1)
      {
        goto LABEL_134;
      }

      v81 = CEM::EmojiToken::gender(v50);
      v82 = 0;
      v118 = xmmword_1D2B27FA0;
      do
      {
        if (*(&v118 + v82) == v81)
        {
          break;
        }

        v82 += 4;
      }

      while (v82 != 16);
      v83 = CEM::EmojiToken::gender(*(a1 + 16));
      v84 = 0;
      v118 = xmmword_1D2B27FA0;
      do
      {
        if (*(&v118 + v84) == v83)
        {
          break;
        }

        v84 += 4;
      }

      while (v84 != 16);
      if (v82 >= v84)
      {
        goto LABEL_134;
      }

      v59 = *(a1 + 16);
      v50 = *(a1 + 32);
    }

    else if (v80 >= v51)
    {
      goto LABEL_134;
    }

    *(a1 + 16) = v50;
    goto LABEL_132;
  }

  if (v58)
  {
    v69 = *(a1 + 16);
    v68 = *(a1 + 32);
    *(a1 + 16) = v68;
    *(a1 + 32) = v69;
    v70 = v68;
    v71 = *(v68 + 22);
    if (v71 - 1295 > 4 || (v72 = *a1, v73 = *(*a1 + 22), v73 - 1295 > 4))
    {
      if (*a3 != 1)
      {
        goto LABEL_134;
      }

      v113 = CEM::EmojiToken::gender(v68);
      v114 = 0;
      v118 = xmmword_1D2B27FA0;
      do
      {
        if (*(&v118 + v114) == v113)
        {
          break;
        }

        v114 += 4;
      }

      while (v114 != 16);
      v115 = CEM::EmojiToken::gender(*a1);
      v116 = 0;
      v118 = xmmword_1D2B27FA0;
      do
      {
        if (*(&v118 + v116) == v115)
        {
          break;
        }

        v116 += 4;
      }

      while (v116 != 16);
      if (v114 >= v116)
      {
        goto LABEL_134;
      }

      v72 = *a1;
      v70 = *(a1 + 16);
      goto LABEL_191;
    }

    if (v73 < v71)
    {
LABEL_191:
      v85 = (a1 + 24);
      *a1 = v70;
      *(a1 + 16) = v72;
      v60 = (a1 + 8);
      goto LABEL_133;
    }
  }

LABEL_134:
  v87 = a1 + 48;
  if (a1 + 48 == a2)
  {
    return 1;
  }

  v88 = 0;
  while (1)
  {
    v89 = *(*v87 + 22);
    if (v89 - 1295 > 4)
    {
      break;
    }

    v90 = *(*v15 + 22);
    if (v90 - 1295 > 4)
    {
      break;
    }

    if (v90 < v89)
    {
      goto LABEL_148;
    }

LABEL_169:
    v15 = v87;
    v87 += 16;
    if (v87 == a2)
    {
      return 1;
    }
  }

  if (*a3 != 1)
  {
    goto LABEL_169;
  }

  v91 = CEM::EmojiToken::gender(*v87);
  v92 = 0;
  v118 = xmmword_1D2B27FA0;
  do
  {
    if (*(&v118 + v92) == v91)
    {
      break;
    }

    v92 += 4;
  }

  while (v92 != 16);
  v93 = CEM::EmojiToken::gender(*v15);
  v94 = 0;
  v118 = xmmword_1D2B27FA0;
  do
  {
    if (*(&v118 + v94) == v93)
    {
      break;
    }

    v94 += 4;
  }

  while (v94 != 16);
  if (v92 >= v94)
  {
    goto LABEL_169;
  }

LABEL_148:
  v95 = *v87;
  *v87 = 0;
  *(v87 + 8) = 0;
  v117 = v95;
  v96 = v95;
  v97 = v87;
  while (1)
  {
    v98 = v97;
    v97 = v15;
    v99 = *v15;
    *v15 = 0;
    *(v15 + 8) = 0;
    v100 = *(v98 + 8);
    *v98 = v99;
    if (v100)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v100);
    }

    if (v15 == a1)
    {
      break;
    }

    v15 -= 16;
    v101 = v96[11];
    if (v101 - 1295 > 4 || (v102 = *(*v15 + 22), v102 - 1295 > 4))
    {
      if (*a3 != 1)
      {
        goto LABEL_166;
      }

      v103 = CEM::EmojiToken::gender(v96);
      v104 = 0;
      v118 = xmmword_1D2B27FA0;
      do
      {
        if (*(&v118 + v104) == v103)
        {
          break;
        }

        v104 += 4;
      }

      while (v104 != 16);
      v105 = CEM::EmojiToken::gender(*v15);
      v106 = 0;
      v118 = xmmword_1D2B27FA0;
      do
      {
        if (*(&v118 + v106) == v105)
        {
          break;
        }

        v106 += 4;
      }

      while (v106 != 16);
      if (v104 >= v106)
      {
        goto LABEL_166;
      }
    }

    else if (v102 >= v101)
    {
      goto LABEL_166;
    }
  }

  v97 = a1;
LABEL_166:
  v107 = *(v97 + 8);
  *v97 = v117;
  if (v107)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v107);
  }

  if (++v88 != 8)
  {
    goto LABEL_169;
  }

  return v87 + 16 == a2;
}

void sub_1D2B236B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9)
{
  if (*(&a9 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&a9 + 1));
  }

  _Unwind_Resume(exception_object);
}

uint64_t CEM::EmojiLocaleData::emojiIndexIsSupported(uint64_t a1, int a2, unsigned int a3)
{
  if ((CEM::EmojiData::isValidIndex(*(a1 + 120), a3) & 1) == 0)
  {
    v6 = *(a1 + 128);
    if (!v6 || !CEM::EmojiData::isValidIndex(v6, a3))
    {
      return 0;
    }
  }

  if (a2 == 1)
  {
    v7 = (a1 + 48);
    v8 = *(a1 + 71);
    if (v8 < 0)
    {
      if (*(a1 + 56) != 2)
      {
        goto LABEL_12;
      }

      v7 = *v7;
    }

    else if (v8 != 2)
    {
LABEL_12:
      operator new();
    }

    if (*v7 != 24938)
    {
      goto LABEL_12;
    }
  }

  return 1;
}

uint64_t std::__function::__func<CEM::EmojiLocaleData::enumerateSearchResultsInStringWithBlock(__CFString const*,CFRange,unsigned long,CEMEmojiSearchType,BOOL,void({block_pointer})(std::vector<std::shared_ptr<CEM::EmojiToken>> const&,CFRange,BOOL *))::$_0,std::allocator<CEM::EmojiLocaleData::enumerateSearchResultsInStringWithBlock(__CFString const*,CFRange,unsigned long,CEMEmojiSearchType,BOOL,void({block_pointer})(std::vector<std::shared_ptr<CEM::EmojiToken>> const&,CFRange,BOOL *))::$_0>,BOOL ()(long)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZNK3CEM15EmojiLocaleData39enumerateSearchResultsInStringWithBlockEPK10__CFString7CFRangem18CEMEmojiSearchTypebU13block_pointerFvRKNSt3__16vectorINS6_10shared_ptrINS_10EmojiTokenEEENS6_9allocatorISA_EEEES4_PbEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL std::__function::__func<CEM::EmojiLocaleData::enumerateSearchResultsInStringWithBlock(__CFString const*,CFRange,unsigned long,CEMEmojiSearchType,BOOL,void({block_pointer})(std::vector<std::shared_ptr<CEM::EmojiToken>> const&,CFRange,BOOL *))::$_0,std::allocator<CEM::EmojiLocaleData::enumerateSearchResultsInStringWithBlock(__CFString const*,CFRange,unsigned long,CEMEmojiSearchType,BOOL,void({block_pointer})(std::vector<std::shared_ptr<CEM::EmojiToken>> const&,CFRange,BOOL *))::$_0>,BOOL ()(long)>::operator()(uint64_t a1, CFIndex *a2)
{
  v3 = *a2;
  if (*(a1 + 16) == v3)
  {
    return 1;
  }

  CharacterAtIndex = CFStringGetCharacterAtIndex(*(a1 + 8), v3);

  return isWhitespace(CharacterAtIndex);
}

__n128 std::__function::__func<CEM::EmojiLocaleData::enumerateSearchResultsInStringWithBlock(__CFString const*,CFRange,unsigned long,CEMEmojiSearchType,BOOL,void({block_pointer})(std::vector<std::shared_ptr<CEM::EmojiToken>> const&,CFRange,BOOL *))::$_0,std::allocator<CEM::EmojiLocaleData::enumerateSearchResultsInStringWithBlock(__CFString const*,CFRange,unsigned long,CEMEmojiSearchType,BOOL,void({block_pointer})(std::vector<std::shared_ptr<CEM::EmojiToken>> const&,CFRange,BOOL *))::$_0>,BOOL ()(long)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F4E077A0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void CEM::EmojiLocaleData::exactMatchEmojiTokensForSingleWord(uint64_t *a1, uint64_t a2, CFStringRef theString, const __CFString *a4, int a5, uint64_t a6, int a7)
{
  v8 = theString;
  v61 = *MEMORY[0x1E69E9840];
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (!a6)
  {
    goto LABEL_57;
  }

  v57 = a5;
  CEM::getUTF8StringFromCFString(&v56, theString);
  if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v55, v56.__r_.__value_.__l.__data_, v56.__r_.__value_.__l.__size_);
  }

  else
  {
    v55 = v56;
  }

  std::string::basic_string[abi:ne200100]<0>(v51, "’");
  std::string::basic_string[abi:ne200100]<0>(&__p, "'");
  CEM::replace(&v58, &v55, v51, &__p);
  if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v56.__r_.__value_.__l.__data_);
  }

  v56 = v58;
  if (v48.__r_.__value_.__s.__data_[15] < 0)
  {
    operator delete(__p);
  }

  if (SBYTE7(v52) < 0)
  {
    operator delete(v51[0]);
  }

  if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v55.__r_.__value_.__l.__data_);
  }

  v14 = (a6 + 96);
  v15 = *(a6 + 119);
  v44 = v8;
  if (v15 < 0)
  {
    if (*(a6 + 104) != 2)
    {
LABEL_24:
      v17 = HIBYTE(v56.__r_.__value_.__r.__words[2]);
      goto LABEL_25;
    }

    v14 = *v14;
  }

  else if (v15 != 2)
  {
    goto LABEL_24;
  }

  v16 = *v14;
  v17 = HIBYTE(v56.__r_.__value_.__r.__words[2]);
  if (v16 != 28261 || a5 != 1)
  {
    goto LABEL_25;
  }

  if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
  {
    if (v56.__r_.__value_.__l.__size_ != 2)
    {
      goto LABEL_25;
    }

    v18 = v56.__r_.__value_.__r.__words[0];
    if (*v56.__r_.__value_.__l.__data_ == 24947)
    {
      v20 = 0uLL;
      goto LABEL_36;
    }
  }

  else
  {
    if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) != 2)
    {
      goto LABEL_25;
    }

    if (LOWORD(v56.__r_.__value_.__l.__data_) == 24947)
    {
      v20 = 0uLL;
      goto LABEL_37;
    }

    v18 = &v56;
  }

  if (LOWORD(v18->__r_.__value_.__l.__data_) == 25971)
  {
    v20 = 0uLL;
    if ((*(&v56.__r_.__value_.__s + 23) & 0x80) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

LABEL_25:
  if ((v17 & 0x80u) == 0)
  {
    size = v17;
  }

  else
  {
    size = v56.__r_.__value_.__l.__size_;
  }

  v20 = 0uLL;
  if (size != 1)
  {
    v21 = a5;
    if (!a5)
    {
      v21 = 2;
      v57 = 2;
    }

    v53[0] = 0;
    v53[1] = 0;
    v54 = 0;
    if (a7)
    {
      operator new();
    }

    *v51 = 0uLL;
    v52 = 0uLL;
    if ((v17 & 0x80u) == 0)
    {
      v40 = &v56;
    }

    else
    {
      v40 = v56.__r_.__value_.__r.__words[0];
    }

    internal::marisa::Trie::advance((a6 + 32), v40, size, v51, &v58);
    if (SHIBYTE(v52) < 0)
    {
      operator delete(v51[1]);
    }

    if (v58.__r_.__value_.__r.__words[0] == 0xFFFFFFFF)
    {
      goto LABEL_74;
    }

    if (a4)
    {
      internal::marisa::Trie::advance((a6 + 32), "_", 1uLL, &v58, v51);
      if (v51[0] != 0xFFFFFFFFLL)
      {
        CEM::getUTF8StringFromCFString(v49, a4);
        if ((v50 & 0x80u) == 0)
        {
          v41 = v49;
        }

        else
        {
          v41 = v49[0];
        }

        if ((v50 & 0x80u) == 0)
        {
          v42 = v50;
        }

        else
        {
          v42 = v49[1];
        }

        internal::marisa::Trie::advance((a6 + 32), v41, v42, v51, &__p);
        v51[0] = __p;
        std::string::operator=(&v51[1], &v48);
        if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v48.__r_.__value_.__l.__data_);
        }

        v43 = v51[0];
        if (v51[0] != 0xFFFFFFFFLL)
        {
          v58.__r_.__value_.__l.__data_ = v51[0];
          std::string::operator=(&v58.__r_.__value_.__r.__words[1], &v51[1]);
        }

        if (v50 < 0)
        {
          operator delete(v49[0]);
        }

        if (v43 == 0xFFFFFFFFLL)
        {
          if (SHIBYTE(v52) < 0)
          {
            operator delete(v51[1]);
          }

LABEL_74:
          if (SHIBYTE(v59) < 0)
          {
            operator delete(v58.__r_.__value_.__l.__size_);
          }

          v20 = 0uLL;
          if (v53[0])
          {
            v53[1] = v53[0];
            operator delete(v53[0]);
            v20 = 0uLL;
          }

LABEL_34:
          v17 = HIBYTE(v56.__r_.__value_.__r.__words[2]);
          goto LABEL_35;
        }
      }

      if (SHIBYTE(v52) < 0)
      {
        operator delete(v51[1]);
      }
    }

    LODWORD(v51[0]) = 0;
    if (CEM::EmojiSearchTrie::getPayload(a6, &v58, v21, v51))
    {
      CEM::EmojiSearchTrie::payloadToIndexes(a6, v51[0], v53);
    }

    if (SHIBYTE(v59) < 0)
    {
      operator delete(v58.__r_.__value_.__l.__size_);
    }

    v20 = *v53;
    goto LABEL_34;
  }

LABEL_35:
  if ((v17 & 0x80) != 0)
  {
LABEL_36:
    v45 = v20;
    operator delete(v56.__r_.__value_.__l.__data_);
    v20 = v45;
  }

LABEL_37:
  v22 = *(&v20 + 1);
  v46 = v20;
  if (v20 != *(&v20 + 1))
  {
    v23 = v20;
    do
    {
      CEM::EmojiLocaleData::createEmojiToken(v51, a2, a5, *v23);
      if (v51[0])
      {
        v25 = a1[1];
        v24 = a1[2];
        if (v25 >= v24)
        {
          v27 = *a1;
          v28 = v25 - *a1;
          v29 = v28 >> 4;
          v30 = (v28 >> 4) + 1;
          if (v30 >> 60)
          {
            std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
          }

          v31 = v24 - v27;
          if (v31 >> 3 > v30)
          {
            v30 = v31 >> 3;
          }

          if (v31 >= 0x7FFFFFFFFFFFFFF0)
          {
            v32 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v32 = v30;
          }

          v60 = a1;
          if (v32)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<CEM::EmojiToken>>>(v32);
          }

          v33 = (16 * v29);
          *v33 = v51[0];
          v33[1] = v51[1];
          v51[0] = 0;
          v51[1] = 0;
          v26 = 16 * v29 + 16;
          v34 = &v33[-2 * (v28 >> 4)];
          memcpy(v34, v27, v28);
          v35 = *a1;
          *a1 = v34;
          a1[1] = v26;
          v36 = a1[2];
          a1[2] = 0;
          v58.__r_.__value_.__r.__words[2] = v35;
          v59 = v36;
          v58.__r_.__value_.__r.__words[0] = v35;
          v58.__r_.__value_.__l.__size_ = v35;
          std::__split_buffer<std::shared_ptr<CEM::EmojiToken>>::~__split_buffer(&v58);
        }

        else
        {
          *v25 = v51[0];
          v25[1] = v51[1];
          v26 = (v25 + 2);
        }

        a1[1] = v26;
      }

      else if (v51[1])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v51[1]);
      }

      ++v23;
    }

    while (v23 != v22);
  }

  v8 = v44;
  if (v46)
  {
    operator delete(v46);
  }

LABEL_57:
  CEM::getUTF8StringFromCFString(&v58, v8);
  if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v37 = &v58;
  }

  else
  {
    v37 = v58.__r_.__value_.__r.__words[0];
  }

  if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v38 = HIBYTE(v58.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v38 = v58.__r_.__value_.__l.__size_;
  }

  CEM::AdaptationController::sortEmojiTokensIfEnabled((a2 + 136), v37, v38);
  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v58.__r_.__value_.__l.__data_);
  }

  if ((a5 - 7) <= 0xFFFFFFFC)
  {
    sortEmojiTokens(a1, *(a2 + 808));
  }

  v39 = *MEMORY[0x1E69E9840];
}

void sub_1D2B23F4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, int a16, __int16 a17, char a18, char a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, void *a31, int a32, __int16 a33, char a34, char a35, int a36, __int16 a37, char a38, char a39, void *a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  if (a39 < 0)
  {
    operator delete(a31);
  }

  if (*(v49 - 113) < 0)
  {
    operator delete(*(v49 - 136));
  }

  if (a40)
  {
    a41 = a40;
    operator delete(a40);
  }

  if (*(v49 - 153) < 0)
  {
    operator delete(*(v49 - 176));
  }

  std::vector<std::shared_ptr<CEM::EmojiToken>>::__destroy_vector::operator()[abi:ne200100](&a30);
  _Unwind_Resume(a1);
}

_BYTE *std::string::__init_with_size[abi:ne200100]<std::__wrap_iter<char *>,std::__wrap_iter<char *>>(_BYTE *__dst, _BYTE *__src, _BYTE *a3, unint64_t a4)
{
  if (a4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v4 = __dst;
  if (a4 > 0x16)
  {
    operator new();
  }

  __dst[23] = a4;
  v5 = a3 - __src;
  if (a3 != __src)
  {
    __dst = memmove(__dst, __src, v5);
  }

  v4[v5] = 0;
  return __dst;
}

uint64_t *std::back_insert_iterator<std::vector<std::string>>::operator=[abi:ne200100](uint64_t *a1, __int128 *a2)
{
  v3 = *a1;
  v4 = *(*a1 + 8);
  v5 = *(*a1 + 16);
  if (v4 >= v5)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *v3) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *v3) >> 3);
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

    v19.__end_cap_.__value_ = v3;
    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(v11);
    }

    v12 = 24 * v8;
    v13 = *a2;
    *(v12 + 16) = *(a2 + 2);
    *v12 = v13;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v7 = 24 * v8 + 24;
    v14 = *(v3 + 8) - *v3;
    v15 = v12 - v14;
    memcpy((v12 - v14), *v3, v14);
    v16 = *v3;
    *v3 = v15;
    v19.__first_ = v16;
    v19.__begin_ = v16;
    *(v3 + 8) = v7;
    v19.__end_ = v16;
    v17 = *(v3 + 16);
    *(v3 + 16) = 0;
    v19.__end_cap_.__value_ = v17;
    std::__split_buffer<std::string>::~__split_buffer(&v19);
  }

  else
  {
    v6 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v6;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v7 = v4 + 24;
  }

  *(v3 + 8) = v7;
  return a1;
}

BOOL CEM::deviceIsChinese(CEM *this)
{
  if (CEM::getDeviceRegionCode(void)::onceToken != -1)
  {
    dispatch_once(&CEM::getDeviceRegionCode(void)::onceToken, &__block_literal_global_53);
  }

  return !CEM::getDeviceRegionCode(void)::__regionCode || CFStringCompare(CEM::getDeviceRegionCode(void)::__regionCode, @"CH", 0) == kCFCompareEqualTo;
}

void *___ZN3CEML19getDeviceRegionCodeEv_block_invoke()
{
  result = dlopen("/usr/lib/libMobileGestalt.dylib", 261);
  if (result)
  {
    result = dlsym(result, "MGCopyAnswer");
    if (result)
    {
      result = (result)(@"RegionCode", 0);
    }
  }

  CEM::getDeviceRegionCode(void)::__regionCode = result;
  return result;
}

BOOL CEM::shouldShowTaiwanFlagEmoji(CEM *this)
{
  if (CEM::shouldShowTaiwanFlagEmoji(void)::onceToken != -1)
  {
    dispatch_once(&CEM::shouldShowTaiwanFlagEmoji(void)::onceToken, &__block_literal_global_213);
  }

  if (CEM::shouldShowTaiwanFlagEmoji(void)::_deviceIsChinese)
  {
    return 0;
  }

  v2 = CFLocaleCopyCurrent();
  if (!v2)
  {
    return 1;
  }

  v3 = v2;
  Value = CFLocaleGetValue(v2, *MEMORY[0x1E695E6D0]);
  if (Value)
  {
    v1 = CFStringCompare(Value, @"CN", 0) != kCFCompareEqualTo;
  }

  else
  {
    v1 = 1;
  }

  CFRelease(v3);
  return v1;
}

void sub_1D2B24418(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  nlp::CFScopedPtr<__CFLocale const*>::reset(va, 0);
  _Unwind_Resume(a1);
}

BOOL ___ZN3CEM25shouldShowTaiwanFlagEmojiEv_block_invoke(CEM *a1)
{
  result = CEM::deviceIsChinese(a1);
  CEM::shouldShowTaiwanFlagEmoji(void)::_deviceIsChinese = result;
  return result;
}

const __CFString *CEM::copyPreferredLocaleIdentifierFromFrameworkBundleWithLocale(CEM *this, __CFBundle *a2, const __CFLocale *a3)
{
  ValueAtIndex = 0;
  if (!this || !a2)
  {
    return ValueAtIndex;
  }

  OverrideLocaleForLocale = CEM::createOverrideLocaleForLocale(a2, a2);
  v7 = OverrideLocaleForLocale;
  values[1] = OverrideLocaleForLocale;
  if (OverrideLocaleForLocale)
  {
    v8 = OverrideLocaleForLocale;
  }

  else
  {
    v8 = a2;
  }

  values[0] = MEMORY[0x1D38A8770](v8);
  v9 = *MEMORY[0x1E695E480];
  v10 = CFArrayCreate(*MEMORY[0x1E695E480], values, 1, MEMORY[0x1E695E9C0]);
  v11 = CFBundleCopyBundleLocalizations(this);
  v12 = CFBundleCopyLocalizationsForPreferences(v11, v10);
  v13 = v12;
  if (v12 && !CFArrayGetCount(v12))
  {
    ValueAtIndex = 0;
  }

  else
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v13, 0);
    v14 = CFLocaleCreate(v9, ValueAtIndex);
    v15 = *MEMORY[0x1E695E6F0];
    Value = CFLocaleGetValue(v8, *MEMORY[0x1E695E6F0]);
    v17 = CFLocaleGetValue(v14, v15);
    if (CFStringCompare(Value, v17, 0))
    {
      ValueAtIndex = 0;
    }

    else
    {
      CFRetain(ValueAtIndex);
    }

    if (v14)
    {
      CFRelease(v14);
    }

    if (!v13)
    {
      goto LABEL_17;
    }
  }

  CFRelease(v13);
LABEL_17:
  if (v11)
  {
    CFRelease(v11);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  return ValueAtIndex;
}

void sub_1D2B245E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va3, a2);
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v5 = va_arg(va2, const void *);
  va_copy(va3, va2);
  v7 = va_arg(va3, const void *);
  v9 = va_arg(va3, void);
  nlp::CFScopedPtr<__CFArray const*>::reset(va);
  nlp::CFScopedPtr<__CFArray const*>::reset(va1);
  nlp::CFScopedPtr<__CFArray const*>::reset(va2);
  nlp::CFScopedPtr<__CFLocale const*>::reset(va3, 0);
  _Unwind_Resume(a1);
}

CFLocaleRef CEM::createOverrideLocaleForLocale(CEM *this, const __CFLocale *a2)
{
  v2 = MEMORY[0x1D38A8770](this, a2);
  if (CFStringCompare(v2, @"ars", 0))
  {
    if (CFStringCompare(v2, @"nn", 0))
    {
      if (CFStringCompare(v2, @"yue-Hant", 0))
      {
        if (CFStringCompare(v2, @"en_CA", 0) && CFStringCompare(v2, @"en_JP", 0))
        {
          return 0;
        }

        v4 = @"en_US";
      }

      else
      {
        v4 = @"zh_HK";
      }
    }

    else
    {
      v4 = @"nb_NO";
    }
  }

  else
  {
    v4 = @"ar";
  }

  v5 = *MEMORY[0x1E695E480];

  return CFLocaleCreate(v5, v4);
}

void nlp::CFScopedPtr<__CFArray const*>::reset(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  *a1 = 0;
}

CFLocaleRef CEM::createNormalizedLocale(CEM *this, const __CFLocale *a2)
{
  v2 = *MEMORY[0x1E695E480];
  v3 = MEMORY[0x1D38A8770](this, a2);
  ComponentsFromLocaleIdentifier = CFLocaleCreateComponentsFromLocaleIdentifier(v2, v3);
  LocaleIdentifierFromComponents = CFLocaleCreateLocaleIdentifierFromComponents(v2, ComponentsFromLocaleIdentifier);
  v6 = CFLocaleCreate(v2, LocaleIdentifierFromComponents);
  if (LocaleIdentifierFromComponents)
  {
    CFRelease(LocaleIdentifierFromComponents);
  }

  if (ComponentsFromLocaleIdentifier)
  {
    CFRelease(ComponentsFromLocaleIdentifier);
  }

  return v6;
}

void sub_1D2B24814(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  nlp::CFScopedPtr<__CFString const*>::reset(&a9, 0);
  nlp::CFScopedPtr<__CFDictionary const*>::reset(&a10, 0);
  _Unwind_Resume(a1);
}

CFBundleRef CEM::SearchEngineResources::createSearchEngineBundleForLocale(CEM::SearchEngineResources *this, const __CFLocale *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  if (!this)
  {
    SearchEngineBundleForLocale = 0;
    goto LABEL_53;
  }

  NormalizedLocale = CEM::createNormalizedLocale(this, a2);
  error[1] = NormalizedLocale;
  OverrideLocaleForLocale = CEM::createOverrideLocaleForLocale(NormalizedLocale, v3);
  v30 = OverrideLocaleForLocale;
  if (!OverrideLocaleForLocale)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    *&buf[4] = MEMORY[0x1D38A8770](NormalizedLocale);
    *&buf[12] = 2112;
    *&buf[14] = MEMORY[0x1D38A8770](OverrideLocaleForLocale);
    _os_log_impl(&dword_1D2AFC000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Attempting to discover search engine resources by using override locale '%@' for locale '%@'", buf, 0x16u);
  }

  SearchEngineBundleForLocale = CEM::SearchEngineResources::createSearchEngineBundleForLocale(OverrideLocaleForLocale, v6);
  CFRelease(OverrideLocaleForLocale);
  if (!SearchEngineBundleForLocale)
  {
LABEL_6:
    v8 = MEMORY[0x1E695E6F0];
    if (!NormalizedLocale || (Value = CFLocaleGetValue(NormalizedLocale, *MEMORY[0x1E695E6F0]), v10 = CFLocaleGetValue(NormalizedLocale, *MEMORY[0x1E695E6D0]), !Value) || (v11 = v10, CFStringCompare(Value, @"en", 0)) || v11 && CFStringCompare(v11, @"US", 0))
    {
      v30 = 0;
    }

    else
    {
      v12 = CEM::copyResourceURLFromFrameworkBundle(@"term_index", @"plist", @"SearchModel-en", 0, v4);
      v30 = v12;
      if (v12)
      {
        goto LABEL_11;
      }
    }

    v12 = CEM::copyResourceURLFromFrameworkBundle(@"term_index", @"plist", 0, NormalizedLocale, v4);
    v30 = v12;
    if (v12)
    {
LABEL_11:
      propertyValueTypeRefPtr = 0;
      error[0] = 0;
      CFURLCopyResourcePropertyForKey(v12, *MEMORY[0x1E695EBF0], &propertyValueTypeRefPtr, error);
      if (error[0])
      {
        v13 = CFErrorCopyDescription(error[0]);
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *&buf[4] = v13;
          _os_log_error_impl(&dword_1D2AFC000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Could not determine parent directory for term index asset URL: '%@'", buf, 0xCu);
        }

        CFRelease(error[0]);
        if (v13)
        {
          CFRelease(v13);
        }
      }

      SearchEngineBundleForLocale = CFBundleCreate(*MEMORY[0x1E695E480], propertyValueTypeRefPtr);
      CFRelease(propertyValueTypeRefPtr);
      if (NormalizedLocale)
      {
        v14 = CFLocaleGetValue(NormalizedLocale, *v8);
        v15 = buf;
        CEM::getUTF8StringFromCFString(buf, v14);
        v16 = 0;
        v17 = v32;
        if ((v32 & 0x80u) == 0)
        {
          v18 = v32;
        }

        else
        {
          v18 = *&buf[8];
        }

        if ((v32 & 0x80u) != 0)
        {
          v15 = *buf;
        }

        while (1)
        {
          v19 = _shouldCreateSearchEngineBundleForLocale(__CFLocale const*)::languagesGuardedByFeatureFlag[v16 + 23];
          v20 = v19;
          if ((v19 & 0x80u) != 0)
          {
            v19 = *&_shouldCreateSearchEngineBundleForLocale(__CFLocale const*)::languagesGuardedByFeatureFlag[v16 + 8];
          }

          if (v19 == v18)
          {
            v21 = v20 >= 0 ? &_shouldCreateSearchEngineBundleForLocale(__CFLocale const*)::languagesGuardedByFeatureFlag[v16] : *&_shouldCreateSearchEngineBundleForLocale(__CFLocale const*)::languagesGuardedByFeatureFlag[v16];
            if (!memcmp(v21, v15, v18))
            {
              break;
            }
          }

          v16 += 24;
          if (v16 == 120)
          {
            v23 = 1;
            if ((v17 & 0x80) == 0)
            {
              goto LABEL_41;
            }

            goto LABEL_45;
          }
        }

        v23 = _os_feature_enabled_impl();
        if ((v32 & 0x80) == 0)
        {
LABEL_41:
          if ((v23 & 1) == 0)
          {
            goto LABEL_46;
          }

          goto LABEL_42;
        }

LABEL_45:
        operator delete(*buf);
        if ((v23 & 1) == 0)
        {
          goto LABEL_46;
        }

LABEL_42:
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
        {
          v24 = MEMORY[0x1D38A8770](NormalizedLocale);
          *buf = 138412290;
          *&buf[4] = v24;
          _os_log_impl(&dword_1D2AFC000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Search engine is supported by locale '%@'", buf, 0xCu);
        }
      }

      else
      {
LABEL_46:
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
        {
          v25 = MEMORY[0x1D38A8770](NormalizedLocale);
          *buf = 138412290;
          *&buf[4] = v25;
          _os_log_impl(&dword_1D2AFC000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Cannot load search bundle. Enhanced search feature flag for locale '%@' is not enabled", buf, 0xCu);
        }

        if (SearchEngineBundleForLocale)
        {
          CFRelease(SearchEngineBundleForLocale);
          SearchEngineBundleForLocale = 0;
        }
      }

      CFRelease(v12);
      goto LABEL_51;
    }

    v22 = MEMORY[0x1D38A8770](NormalizedLocale);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *&buf[4] = v22;
      _os_log_error_impl(&dword_1D2AFC000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Could not find emoji search engine resources for locale '%@'", buf, 0xCu);
    }

    SearchEngineBundleForLocale = 0;
  }

LABEL_51:
  if (NormalizedLocale)
  {
    CFRelease(NormalizedLocale);
  }

LABEL_53:
  v26 = *MEMORY[0x1E69E9840];
  return SearchEngineBundleForLocale;
}

void sub_1D2B24CE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, uint64_t a11, uint64_t a12, const void *a13, const void *a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  nlp::CFScopedPtr<__CFBundle *>::reset(&a10);
  nlp::CFScopedPtr<__CFURL const*>::reset(&a14);
  nlp::CFScopedPtr<__CFLocale const*>::reset(&a13, 0);
  _Unwind_Resume(a1);
}

uint64_t _convertUTF16StringToUTF32CharBuffer(unsigned int *a1, uint64_t a2, CFStringRef theString)
{
  Length = CFStringGetLength(theString);
  if (Length < 1)
  {
    return 0;
  }

  v7 = Length;
  v8 = 0;
  v9 = 0;
  do
  {
    CharacterAtIndex = CFStringGetCharacterAtIndex(theString, v8);
    v11 = v8 + 1;
    if ((CharacterAtIndex & 0xFC00) == 0xD800 && v11 < v7)
    {
      v13 = CFStringGetCharacterAtIndex(theString, v8 + 1);
      if ((v13 & 0xFC00) != 0xDC00)
      {
        ++v8;
        continue;
      }

      CharacterAtIndex = v13 + (CharacterAtIndex << 10) - 56613888;
    }

    else
    {
      v11 = v8;
    }

    a1[v9++] = CharacterAtIndex;
    v8 = v11 + 1;
  }

  while (v8 < v7 && v8 != a2);
  if (v8 < v7)
  {
    return 0;
  }

  else
  {
    return v9;
  }
}

void nlp::CFScopedPtr<__CFData const*>::reset(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  *a1 = 0;
}

os_log_t __cem_logging_get_default_log_block_invoke()
{
  result = os_log_create("com.apple.CoreEmoji", "StandardLogger");
  cem_logging_get_default_log_log = result;
  return result;
}

os_log_t __cem_logging_get_adaptation_log_block_invoke()
{
  result = os_log_create("com.apple.CoreEmoji", "AdaptationLogger");
  cem_logging_get_adaptation_log_log = result;
  return result;
}

uint64_t CEM::EmojiToken::EmojiToken(uint64_t a1, int a2, uint64_t a3, CEM::EmojiData *this, uint64_t a5)
{
  v5 = a3;
  *a1 = a5;
  *(a1 + 8) = 0;
  v6 = (a1 + 8);
  *(a1 + 22) = a3;
  *(a1 + 40) = this;
  *(a1 + 48) = 0;
  *(a1 + 52) = 0;
  if ((a3 & 0x100000000) == 0 || (CEM::EmojiData::isValidIndex(this, a3) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "not an emoji");
    exception->__vftable = (MEMORY[0x1E69E55C8] + 16);
    __cxa_throw(exception, off_1E84048B0, MEMORY[0x1E69E5298]);
  }

  String = CEM::EmojiData::createString(*(a1 + 40), v5);
  nlp::CFScopedPtr<__CFString const*>::reset(v6, String);
  v9 = *(a1 + 40);
  v10 = *(v9 + 44);
  if (v10 >= v5)
  {
    LOBYTE(v12) = 0;
    *(a1 + 16) = 0;
    *(a1 + 20) = 0;
    *(a1 + 24) = 0;
    *(a1 + 28) = 0;
  }

  else
  {
    if (*(v9 + 42) >= (v5 - v10))
    {
      v11 = *(**(v9 + 16) + 16 * (~v10 + v5) + 12) >> 4;
    }

    else
    {
      v11 = 0;
    }

    *(a1 + 16) = v11;
    if (*(v9 + 42) >= (v5 - v10))
    {
      v13 = *(**(v9 + 16) + 16 * (~v10 + v5) + 13);
    }

    else
    {
      v13 = 0;
    }

    *(a1 + 20) = v13;
    if (*(v9 + 42) >= (v5 - v10))
    {
      v14 = *(**(v9 + 16) + 16 * (~v10 + v5) + 16);
    }

    else
    {
      v14 = 0;
    }

    *(a1 + 24) = v14;
    if (*(v9 + 42) >= (v5 - v10))
    {
      v15 = *(**(v9 + 16) + 16 * (~v10 + v5) + 12) & 0xF;
    }

    else
    {
      v15 = 0;
    }

    *(a1 + 28) = v15;
    if (*(v9 + 42) >= (v5 - v10))
    {
      v12 = (*(**(v9 + 16) + 16 * (~v10 + v5) + 10) >> 2) & 1;
    }

    else
    {
      LOBYTE(v12) = 0;
    }
  }

  *(a1 + 32) = v12;
  return a1;
}

void sub_1D2B2519C(_Unwind_Exception *a1)
{
  __cxa_free_exception(v1);
  nlp::CFScopedPtr<__CFString const*>::reset(v2, 0);
  _Unwind_Resume(a1);
}

uint64_t CEM::EmojiToken::baseIndex(CEM::EmojiToken *this)
{
  if (!*(this + 4) && !*(this + 20))
  {
    return *(this + 11);
  }

  v1 = *(this + 5);
  v2 = *(this + 11);
  v3 = *(v1 + 44);
  if (v2 > v3 && *(v1 + 42) >= (v2 - v3))
  {
    return *(**(v1 + 16) + 16 * (~v3 + v2) + 14);
  }

  else
  {
    return 0;
  }
}

__CFArray *CEM::EmojiToken::createWrappers(uint64_t **a1, const void *a2)
{
  if (a1[1] == *a1)
  {
    return 0;
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  v5 = *a1;
  v6 = a1[1];
  while (v5 != v6)
  {
    Wrapper = CEM::EmojiToken::createWrapper(v5, a2);
    CFArrayAppendValue(Mutable, Wrapper);
    CFRelease(Wrapper);
    v5 += 2;
  }

  return Mutable;
}

void sub_1D2B25960(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  nlp::CFScopedPtr<__CFURL const*>::reset((v10 - 88));
  nlp::CFScopedPtr<__CFLocale const*>::reset(v9, 0);
  MEMORY[0x1D38A8C30](v9, 0xE0C402B90B96ALL);
  std::mutex::unlock(v8);
  std::unique_ptr<CEM::EmojiToken>::reset[abi:ne200100](va, 0);
  _Unwind_Resume(a1);
}

uint64_t CEM::EmojiToken::createBaseTokenCopy(CEM::EmojiToken *this, uint64_t a2)
{
  result = CEM::EmojiToken::baseIndex(a2);
  v5 = *(a2 + 22);
  if (result != v5)
  {
    v6 = *(a2 + 40);
    v7 = *(v6 + 44);
    if (v5 > v7 && *(v6 + 42) >= (v5 - v7))
    {
      v8 = *(**(v6 + 16) + 16 * (~v7 + v5) + 14);
    }

    operator new();
  }

  *this = 0;
  return result;
}

uint64_t CEM::EmojiToken::gender(CEM::EmojiToken *this)
{
  if (!*(this + 4) || CEM::EmojiToken::baseIndex(this) == *(this + 11))
  {
    return *(this + 7);
  }

  if (*(this + 52) == 1)
  {
    return *(this + 12);
  }

  CEM::EmojiToken::createBaseTokenCopy(&v5, this);
  v4 = v5;
  v5 = 0;
  v6 = v4;
  std::unique_ptr<CEM::EmojiToken>::reset[abi:ne200100](&v5, 0);
  if (v4)
  {
    v2 = CEM::EmojiToken::gender(v4);
    *(this + 12) = v2;
    *(this + 52) = 1;
  }

  else
  {
    v2 = *(this + 7);
  }

  std::unique_ptr<CEM::EmojiToken>::~unique_ptr[abi:ne200100](&v6);
  return v2;
}

void sub_1D2B25CB0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<CEM::EmojiToken>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t CEM::EmojiToken::createCopyRemovingModifiers(CEM::EmojiToken *this)
{
  if (!*(this + 4) && !*(this + 20))
  {
    CEM::EmojiToken::createCopy(&v7, this);
  }

  CEM::EmojiToken::createBaseTokenCopy(&v7, this);
  v6 = 0;
  v1 = v7;
  if (v7)
  {
    do
    {
      v7 = 0;
      std::unique_ptr<CEM::EmojiToken>::reset[abi:ne200100](&v6, v1);
      v2 = v6;
      CEM::EmojiToken::createBaseTokenCopy(&v5, v6);
      v3 = v5;
      v5 = 0;
      std::unique_ptr<CEM::EmojiToken>::reset[abi:ne200100](&v7, v3);
      std::unique_ptr<CEM::EmojiToken>::reset[abi:ne200100](&v5, 0);
      v1 = v7;
    }

    while (v7);
  }

  else
  {
    v2 = 0;
  }

  v6 = 0;
  std::unique_ptr<CEM::EmojiToken>::reset[abi:ne200100](&v6, 0);
  std::unique_ptr<CEM::EmojiToken>::reset[abi:ne200100](&v7, 0);
  return v2;
}

void sub_1D2B25D8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  std::unique_ptr<CEM::EmojiToken>::reset[abi:ne200100](va, 0);
  std::unique_ptr<CEM::EmojiToken>::reset[abi:ne200100](va1, 0);
  _Unwind_Resume(a1);
}

void std::vector<std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
}

uint64_t CEM::Statement::Statement(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, size_t a5, uint64_t *a6)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = a5;
  memset(&v25, 0, sizeof(v25));
  if (a3)
  {
    std::string::append(&v25, "-", 1uLL);
    std::string::append(&v25, *a1, *(a1 + 8));
    v9 = *(a1 + 16);
    v8 = *(a1 + 24);
  }

  else
  {
    v8 = a5;
    v9 = a4;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v8 >= 0x17)
  {
    operator new();
  }

  *(a1 + 55) = v8;
  v10 = (a1 + 32);
  if (v8)
  {
    memmove(v10, v9, v8);
  }

  v11 = 0;
  *(v10 + v8) = 0;
  v12 = *(a1 + 55);
  if ((v12 & 0x80u) == 0)
  {
    v13 = a1 + 32;
  }

  else
  {
    v13 = *(a1 + 32);
  }

  if ((v12 & 0x80u) != 0)
  {
    v12 = *(a1 + 40);
  }

LABEL_15:
  v14 = v12 - v11;
  if ((v12 - v11) >= 2)
  {
    v15 = (v13 + v12);
    v16 = (v13 + v11);
    do
    {
      v17 = memchr(v16, 123, v14 - 1);
      if (!v17)
      {
        break;
      }

      if (*v17 == 32123)
      {
        if (v17 != v15)
        {
          v18 = &v17[-v13];
          if (v18 != -1)
          {
            if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v19 = &v25;
            }

            else
            {
              v19 = v25.__r_.__value_.__r.__words[0];
            }

            if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = HIBYTE(v25.__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = v25.__r_.__value_.__l.__size_;
            }

            std::string::replace((a1 + 32), v18, 2uLL, v19, size);
            v21 = HIBYTE(v25.__r_.__value_.__r.__words[2]);
            if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v21 = v25.__r_.__value_.__l.__size_;
            }

            v11 = v21 + v18;
            v12 = *(a1 + 55);
            if ((v12 & 0x80u) == 0)
            {
              v13 = a1 + 32;
            }

            else
            {
              v13 = *(a1 + 32);
            }

            if ((v12 & 0x80u) != 0)
            {
              v12 = *(a1 + 40);
            }

            if (v12 >= v11)
            {
              goto LABEL_15;
            }
          }
        }

        break;
      }

      v16 = v17 + 1;
      v14 = v15 - v16;
    }

    while (v15 - v16 >= 2);
  }

  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  v23 = *a6;
  v22 = a6[1];
  v25.__r_.__value_.__r.__words[0] = a1 + 56;
  v25.__r_.__value_.__s.__data_[8] = 0;
  if (v22 != v23)
  {
    std::vector<std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>::__vallocate[abi:ne200100](a1 + 56, (v22 - v23) >> 5);
  }

  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 101;
  return a1;
}

void sub_1D2B26060(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v15 + 55) < 0)
  {
    operator delete(*v16);
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

sqlite3 *CEM::Statement::prepare(CEM::Statement *this)
{
  v12 = *MEMORY[0x1E69E9840];
  result = *(this + 12);
  if (result)
  {
    v3 = *(this + 11);
    if (!v3)
    {
      v3 = this + 32;
      if (*(this + 55) < 0)
      {
        v3 = *v3;
      }
    }

    result = sqlite3_prepare_v2(result, v3, -1, this + 10, this + 11);
    if (result)
    {
      if (cem_logging_get_adaptation_log_onceToken != -1)
      {
        dispatch_once(&cem_logging_get_adaptation_log_onceToken, &__block_literal_global_4);
      }

      v4 = cem_logging_get_adaptation_log_log;
      if (os_log_type_enabled(cem_logging_get_adaptation_log_log, OS_LOG_TYPE_ERROR))
      {
        v6 = (this + 32);
        if (*(this + 55) < 0)
        {
          v6 = *v6;
        }

        v7 = sqlite3_errmsg(*(this + 12));
        v8 = 136315394;
        v9 = v6;
        v10 = 2082;
        v11 = v7;
        _os_log_error_impl(&dword_1D2AFC000, v4, OS_LOG_TYPE_ERROR, "Could not prepare SQL statement: '%s'. Error: '%{public}s'", &v8, 0x16u);
      }

      result = sqlite3_finalize(*(this + 10));
    }
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void std::__throw_bad_variant_access[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x1E69E55D0] + 16;
  __cxa_throw(exception, MEMORY[0x1E69E5410], std::bad_variant_access::~bad_variant_access);
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<4ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<CEM::Statement::bindParameters(void)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::monostate,unsigned int,double,std::string,std::vector<unsigned char,std::char_traits<char><unsigned char>>> const&>(uint64_t *a1, unsigned __int8 **a2)
{
  v2 = *a1;
  result = sqlite3_bind_blob(*(**a1 + 80), *(*a1 + 16), **a2, *(a2 + 2) - *a2, 0);
  **(v2 + 8) = result;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<3ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<CEM::Statement::bindParameters(void)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::monostate,unsigned int,double,std::string,std::vector<unsigned char,std::char_traits<char><unsigned char>>> const&>(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a1 + 80);
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = *(a2 + 8);
  }

  result = sqlite3_bind_text(v3, *(v2 + 16) + 1, v5, v6, 0);
  **(v2 + 8) = result;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<2ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<CEM::Statement::bindParameters(void)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::monostate,unsigned int,double,std::string,std::vector<unsigned char,std::char_traits<char><unsigned char>>> const&>(uint64_t *a1, double *a2)
{
  v2 = *a1;
  result = sqlite3_bind_double(*(**a1 + 80), *(*a1 + 16), *a2);
  **(v2 + 8) = result;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<CEM::Statement::bindParameters(void)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::monostate,unsigned int,double,std::string,std::vector<unsigned char,std::char_traits<char><unsigned char>>> const&>(uint64_t *a1, int *a2)
{
  v2 = *a1;
  result = sqlite3_bind_int(*(**a1 + 80), *(*a1 + 16) + 1, *a2);
  **(v2 + 8) = result;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<CEM::Statement::bindParameters(void)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::monostate,unsigned int,double,std::string,std::vector<unsigned char,std::char_traits<char><unsigned char>>> const&>(uint64_t *a1)
{
  v1 = *a1;
  result = sqlite3_bind_null(*(**a1 + 80), *(*a1 + 16));
  **(v1 + 8) = result;
  return result;
}

uint64_t std::pair<std::string const,std::weak_ptr<CEM::AdaptationDatabase>>::~pair(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__shared_ptr_emplace<CEM::AdaptationDatabase>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    sqlite3_close(v2);
  }

  std::mutex::~mutex((a1 + 56));
  if (*(a1 + 47) < 0)
  {
    v3 = *(a1 + 24);

    operator delete(v3);
  }
}

void std::__shared_ptr_emplace<CEM::AdaptationDatabase>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F4E069B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1D38A8C30);
}

void std::__throw_bad_weak_ptr[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x1E69E5500] + 16;
  __cxa_throw(exception, MEMORY[0x1E69E53A8], MEMORY[0x1E69E52B8]);
}

uint64_t std::__tree<std::__value_type<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>>>::find<std::string>(uint64_t a1, void *a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = a1 + 8;
  do
  {
    v6 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((v3 + 32), a2);
    if ((v6 & 0x80u) == 0)
    {
      v5 = v3;
    }

    v3 = *(v3 + ((v6 >> 4) & 8));
  }

  while (v3);
  if (v5 == v2 || (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, (v5 + 32)) & 0x80) != 0)
  {
    return v2;
  }

  return v5;
}

uint64_t std::__function::__func<CEM::AdaptationDatabaseController::enumerateStringAndStringId(std::function<void ()(std::string_view,unsigned int)>)::$_0,std::allocator<CEM::AdaptationDatabaseController::enumerateStringAndStringId(std::function<void ()(std::string_view,unsigned int)>)::$_0>,void ()(std::map<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>> const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZNK3CEM28AdaptationDatabaseController26enumerateStringAndStringIdENSt3__18functionIFvNS1_17basic_string_viewIcNS1_11char_traitsIcEEEEjEEEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<CEM::AdaptationDatabaseController::enumerateStringAndStringId(std::function<void ()(std::string_view,unsigned int)>)::$_0,std::allocator<CEM::AdaptationDatabaseController::enumerateStringAndStringId(std::function<void ()(std::string_view,unsigned int)>)::$_0>,void ()(std::map<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>> const&)>::operator()(uint64_t a1, uint64_t a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "id");
  v4 = std::__tree<std::__value_type<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>>>::find<std::string>(a2, __p);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "string");
  v5 = std::__tree<std::__value_type<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>>>::find<std::string>(a2, __p);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  if (a2 + 8 == v4)
  {
    if (cem_logging_get_adaptation_log_onceToken != -1)
    {
      dispatch_once(&cem_logging_get_adaptation_log_onceToken, &__block_literal_global_4);
    }

    v9 = cem_logging_get_adaptation_log_log;
    if (!os_log_type_enabled(cem_logging_get_adaptation_log_log, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    LOWORD(__p[0]) = 0;
LABEL_27:
    _os_log_error_impl(&dword_1D2AFC000, v9, OS_LOG_TYPE_ERROR, v10, __p, 2u);
    return;
  }

  if (a2 + 8 == v5)
  {
    if (cem_logging_get_adaptation_log_onceToken != -1)
    {
      dispatch_once(&cem_logging_get_adaptation_log_onceToken, &__block_literal_global_4);
    }

    v9 = cem_logging_get_adaptation_log_log;
    if (!os_log_type_enabled(cem_logging_get_adaptation_log_log, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    LOWORD(__p[0]) = 0;
    goto LABEL_27;
  }

  if (*(v4 + 80) != 1)
  {
    if (cem_logging_get_adaptation_log_onceToken != -1)
    {
      dispatch_once(&cem_logging_get_adaptation_log_onceToken, &__block_literal_global_4);
    }

    v9 = cem_logging_get_adaptation_log_log;
    if (!os_log_type_enabled(cem_logging_get_adaptation_log_log, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    LOWORD(__p[0]) = 0;
    v10 = "Could not extract uint32_t from std::variant<T> column value map. enumerateStringAndStringId(...);";
    goto LABEL_27;
  }

  if (*(v5 + 80) == 3)
  {
    v6 = *(a1 + 8);
    v7 = *(v5 + 79);
    if ((v7 & 0x8000000000000000) != 0)
    {
      v8 = *(v5 + 56);
      v7 = *(v5 + 64);
    }

    else
    {
      v8 = (v5 + 56);
    }

    v11 = *(v4 + 56);
    __p[0] = v8;
    __p[1] = v7;
    v15 = v11;
    v12 = *(v6 + 24);
    if (!v12)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v12 + 48))(v12, __p, &v15);
    return;
  }

  if (cem_logging_get_adaptation_log_onceToken != -1)
  {
    dispatch_once(&cem_logging_get_adaptation_log_onceToken, &__block_literal_global_4);
  }

  v9 = cem_logging_get_adaptation_log_log;
  if (os_log_type_enabled(cem_logging_get_adaptation_log_log, OS_LOG_TYPE_ERROR))
  {
    LOWORD(__p[0]) = 0;
    v10 = "Could not extract std::string from std::variant<T> column value map. enumerateStringAndStringId(...);";
    goto LABEL_27;
  }
}

uint64_t std::__function::__func<CEM::AdaptationDatabaseController::enumerateStringAndStringId(std::function<void ()(std::string_view,unsigned int)>)::$_0,std::allocator<CEM::AdaptationDatabaseController::enumerateStringAndStringId(std::function<void ()(std::string_view,unsigned int)>)::$_0>,void ()(std::map<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>> const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F4E07948;
  a2[1] = v2;
  return result;
}

CFRange CFStringFind(CFStringRef theString, CFStringRef stringToFind, CFStringCompareFlags compareOptions)
{
  v3 = MEMORY[0x1EEDB7958](theString, stringToFind, compareOptions);
  result.length = v4;
  result.location = v3;
  return result;
}

CFRange CFStringTokenizerGetCurrentTokenRange(CFStringTokenizerRef tokenizer)
{
  v1 = MEMORY[0x1EEDB7B38](tokenizer);
  result.length = v2;
  result.location = v1;
  return result;
}

std::__fs::filesystem::path::__string_view std::__fs::filesystem::path::__parent_path(const std::__fs::filesystem::path *this)
{
  v1 = MEMORY[0x1EEE63A18](this);
  result.__size_ = v2;
  result.__data_ = v1;
  return result;
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete(void *__p, const std::nothrow_t *a2)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void *__cdecl operator new[](size_t __sz, const std::nothrow_t *a2)
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void *__cdecl operator new(size_t __sz, const std::nothrow_t *a2)
{
    ;
  }
}

void operator new()
{
    ;
  }
}