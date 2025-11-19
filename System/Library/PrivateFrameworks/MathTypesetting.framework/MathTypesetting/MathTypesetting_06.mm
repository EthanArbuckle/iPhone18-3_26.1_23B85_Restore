void sub_2582AE580(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<blahtex::Token>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t **std::__hash_table<std::__hash_value_type<std::wstring,blahtex::MacroProcessor::Macro>,std::__unordered_map_hasher<std::wstring,std::__hash_value_type<std::wstring,blahtex::MacroProcessor::Macro>,std::hash<std::wstring>,std::equal_to<std::wstring>,true>,std::__unordered_map_equal<std::wstring,std::__hash_value_type<std::wstring,blahtex::MacroProcessor::Macro>,std::equal_to<std::wstring>,std::hash<std::wstring>,true>,std::allocator<std::__hash_value_type<std::wstring,blahtex::MacroProcessor::Macro>>>::__emplace_unique_key_args<std::wstring,std::piecewise_construct_t const&,std::tuple<std::wstring const&>,std::tuple<>>(void *a1, uint64_t a2)
{
  v4 = std::__string_hash<wchar_t>::operator()[abi:ne200100](a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_31;
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
LABEL_31:
    std::__hash_table<std::__hash_value_type<std::wstring,blahtex::MacroProcessor::Macro>,std::__unordered_map_hasher<std::wstring,std::__hash_value_type<std::wstring,blahtex::MacroProcessor::Macro>,std::hash<std::wstring>,std::equal_to<std::wstring>,true>,std::__unordered_map_equal<std::wstring,std::__hash_value_type<std::wstring,blahtex::MacroProcessor::Macro>,std::equal_to<std::wstring>,std::hash<std::wstring>,true>,std::allocator<std::__hash_value_type<std::wstring,blahtex::MacroProcessor::Macro>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::wstring const&>,std::tuple<>>();
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
      goto LABEL_31;
    }

LABEL_30:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_31;
    }
  }

  v13 = *(v11 + 39);
  if (v13 >= 0)
  {
    v14 = *(v11 + 39);
  }

  else
  {
    v14 = v11[3];
  }

  v15 = *(a2 + 23);
  v16 = v15;
  if ((v15 & 0x80u) != 0)
  {
    v15 = *(a2 + 8);
  }

  if (v14 != v15)
  {
    goto LABEL_30;
  }

  if (v14)
  {
    v17 = v16 >= 0 ? a2 : *a2;
    v18 = v13 >= 0 ? (v11 + 2) : v11[2];
    if (wmemcmp(v18, v17, v14))
    {
      goto LABEL_30;
    }
  }

  return v11;
}

void sub_2582AE838(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::wstring,blahtex::MacroProcessor::Macro>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::wstring,blahtex::MacroProcessor::Macro>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::wstring,blahtex::MacroProcessor::Macro>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::wstring,blahtex::MacroProcessor::Macro>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::wstring const,blahtex::MacroProcessor::Macro>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

unint64_t std::__string_hash<wchar_t>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 23);
  v3 = *(a2 + 8);
  if ((v2 & 0x80u) != 0)
  {
    a2 = *a2;
    v2 = v3;
  }

  return std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](&v5, a2, 4 * v2);
}

uint64_t **std::__hash_table<std::__hash_value_type<std::wstring,blahtex::MacroProcessor::Macro>,std::__unordered_map_hasher<std::wstring,std::__hash_value_type<std::wstring,blahtex::MacroProcessor::Macro>,std::hash<std::wstring>,std::equal_to<std::wstring>,true>,std::__unordered_map_equal<std::wstring,std::__hash_value_type<std::wstring,blahtex::MacroProcessor::Macro>,std::equal_to<std::wstring>,std::hash<std::wstring>,true>,std::allocator<std::__hash_value_type<std::wstring,blahtex::MacroProcessor::Macro>>>::find<std::wstring>(void *a1, uint64_t a2)
{
  v4 = std::__string_hash<wchar_t>::operator()[abi:ne200100](a1, a2);
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
      v13 = *(i + 39);
      if (v13 >= 0)
      {
        v14 = *(i + 39);
      }

      else
      {
        v14 = i[3];
      }

      v15 = *(a2 + 23);
      v16 = v15;
      if ((v15 & 0x80u) != 0)
      {
        v15 = *(a2 + 8);
      }

      if (v14 == v15)
      {
        if (!v14)
        {
          return i;
        }

        v17 = v16 >= 0 ? a2 : *a2;
        v18 = v13 >= 0 ? (i + 2) : i[2];
        if (!wmemcmp(v18, v17, v14))
        {
          return i;
        }
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

void *std::vector<std::vector<blahtex::Token>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<std::vector<blahtex::Token>>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void std::vector<std::vector<blahtex::Token>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<blahtex::Token>>>(a1, a2);
  }

  std::vector<std::string>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<blahtex::Token>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<std::vector<blahtex::Token>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 3;
        v6 = v4;
        std::vector<blahtex::Token>::__destroy_vector::operator()[abi:ne200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

uint64_t std::vector<blahtex::Token>::__emplace_back_slow_path<blahtex::Token>(uint64_t a1, const blahtex::Token *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  v6 = *(a1 + 16) - *a1;
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<blahtex::Token>>(a1, v7);
  }

  v14 = 0;
  v15 = 32 * v2;
  blahtex::Token::Token((32 * v2), a2);
  v16 = (32 * v2 + 32);
  v8 = *(a1 + 8);
  v9 = (32 * v2 + *a1 - v8);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<blahtex::Token>,blahtex::Token*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<blahtex::Token>::~__split_buffer(&v14);
  return v13;
}

void sub_2582AED8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<blahtex::Token>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void blahtex::Tokenise(uint64_t *a1, uint64_t a2, int a3)
{
  if (a1[1])
  {
    v6 = MEMORY[0x277D85DE0];
    v7 = *a1;
    do
    {
      v8 = *v7;
      if (v8 <= 0x7F)
      {
        if ((*(v6 + 4 * v8 + 60) & 0x4000) == 0)
        {
LABEL_17:
          v13 = *v7;
          if (*v7 != 92)
          {
            if (v13 < 32 || v13 == 127)
            {
              exception = __cxa_allocate_exception(0x30uLL);
              std::wstring::basic_string[abi:ne200100]<0>(&v42, dword_2582D5BCC);
              std::wstring::basic_string[abi:ne200100]<0>(&v39, &dword_2582D5C10);
              std::wstring::basic_string[abi:ne200100]<0>(v38, &dword_2582D5C10);
              std::wstring::basic_string[abi:ne200100]<0>(v37, &dword_2582D5C10);
              blahtex::Exception::Exception(exception, &v42, &v39, v38, v37);
            }

            v36 = 1;
            v35 = v13;
            blahtex::Token::Token(&v42, &v35, 0);
            std::vector<blahtex::Token>::push_back[abi:ne200100](a2, &v42);
            if (v43 < 0)
            {
              operator delete(v42);
            }

            if (v36 < 0)
            {
              operator delete(v35);
            }

            v10 = v7 + 1;
            goto LABEL_74;
          }

          std::wstring::basic_string[abi:ne200100]<0>(&v39, &unk_2582D5C14);
          if (v7 + 1 == (*a1 + 4 * a1[1]))
          {
            v30 = __cxa_allocate_exception(0x30uLL);
            std::wstring::basic_string[abi:ne200100]<0>(&v42, dword_2582D5C1C);
            std::wstring::basic_string[abi:ne200100]<0>(v38, &dword_2582D5C10);
            std::wstring::basic_string[abi:ne200100]<0>(v37, &dword_2582D5C10);
            std::wstring::basic_string[abi:ne200100]<0>(v34, &dword_2582D5C10);
            blahtex::Exception::Exception(v30, &v42, v38, v37, v34);
          }

          v14 = v7[1];
          if ((v14 & 0xFFFFFFDF) - 65 <= 0x19)
          {
            v15 = v7 + 2;
            do
            {
              v10 = v15;
              std::wstring::push_back(&v39, v14);
              if (v10 == (*a1 + 4 * a1[1]))
              {
                break;
              }

              v15 = v10 + 1;
              LODWORD(v14) = *v10;
            }

            while ((*v10 & 0xFFFFFFDF) - 65 < 0x1A);
            v16 = HIBYTE(v39.__r_.__value_.__r.__words[2]);
            if ((SHIBYTE(v39.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
LABEL_24:
              if (v16 == 4)
              {
                v17 = &v39;
                goto LABEL_50;
              }

              goto LABEL_65;
            }

            size = v39.__r_.__value_.__l.__size_;
            if (v39.__r_.__value_.__l.__size_ == 6)
            {
              if (wmemcmp(v39.__r_.__value_.__l.__data_, dword_2582D5C74, 6uLL))
              {
                v16 = HIBYTE(v39.__r_.__value_.__r.__words[2]);
                if ((SHIBYTE(v39.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  goto LABEL_24;
                }

                size = v39.__r_.__value_.__l.__size_;
                goto LABEL_48;
              }
            }

            else
            {
LABEL_48:
              if (size != 4)
              {
                goto LABEL_65;
              }

              v17 = v39.__r_.__value_.__r.__words[0];
LABEL_50:
              if (wmemcmp(v17, dword_2582D5C90, 4uLL))
              {
LABEL_65:
                if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
                {
                  std::wstring::__init_copy_ctor_external(&v33, v39.__r_.__value_.__l.__data_, v39.__r_.__value_.__l.__size_);
                }

                else
                {
                  v33 = v39;
                }

                blahtex::Token::Token(&v42, &v33, 0);
                std::vector<blahtex::Token>::push_back[abi:ne200100](a2, &v42);
                if (v43 < 0)
                {
                  operator delete(v42);
                }

                if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v33.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v39.__r_.__value_.__l.__data_);
                }

                goto LABEL_74;
              }
            }

            v22 = *a1;
            v23 = a1[1];
            while (v10 != (v22 + 4 * v23))
            {
              v24 = *v10;
              if (v24 <= 0x7F)
              {
                if ((*(v6 + 4 * v24 + 60) & 0x4000) == 0)
                {
                  break;
                }
              }

              else
              {
                v25 = __maskrune(v24, 0x4000uLL);
                v22 = *a1;
                v23 = a1[1];
                if (!v25)
                {
                  break;
                }
              }

              ++v10;
            }

            if (v10 == (v22 + 4 * v23) || *v10 != 123)
            {
              v32 = __cxa_allocate_exception(0x30uLL);
              std::wstring::basic_string[abi:ne200100]<0>(&v42, dword_2582D5CA4);
              std::wstring::basic_string[abi:ne200100]<0>(v38, &dword_2582D5C10);
              std::wstring::basic_string[abi:ne200100]<0>(v37, &dword_2582D5C10);
              blahtex::Exception::Exception(v32, &v42, &v39, v38, v37);
            }

            std::wstring::push_back(&v39, 123);
            for (i = (v10 + 1); ; ++i)
            {
              if (i == (*a1 + 4 * a1[1]))
              {
                v29 = __cxa_allocate_exception(0x30uLL);
                std::wstring::basic_string[abi:ne200100]<0>(&v42, dword_2582D5CFC);
                std::wstring::basic_string[abi:ne200100]<0>(v38, &dword_2582D5C10);
                std::wstring::basic_string[abi:ne200100]<0>(v37, &dword_2582D5C10);
                std::wstring::basic_string[abi:ne200100]<0>(v34, &dword_2582D5C10);
                blahtex::Exception::Exception(v29, &v42, v38, v37, v34);
              }

              v27 = *i;
              if (*i == 125)
              {
                break;
              }

              std::wstring::push_back(&v39, v27);
            }

            std::wstring::push_back(&v39, 125);
            v10 = (i + 1);
            goto LABEL_65;
          }

          if (v14 <= 0x7F)
          {
            if ((*(v6 + 4 * v14 + 60) & 0x4000) != 0)
            {
LABEL_35:
              std::wstring::append(&v39, dword_2582D5BC4);
              v18 = v7 + 2;
              do
              {
                v10 = v18;
                if (v18 == (*a1 + 4 * a1[1]))
                {
                  break;
                }

                v19 = *v18;
                v20 = v19 <= 0x7F ? *(v6 + 4 * v19 + 60) & 0x4000 : __maskrune(v19, 0x4000uLL);
                v18 = v10 + 1;
              }

              while (v20);
              goto LABEL_65;
            }
          }

          else if (__maskrune(v14, 0x4000uLL))
          {
            goto LABEL_35;
          }

          std::wstring::push_back(&v39, v7[1]);
          v10 = v7 + 2;
          goto LABEL_65;
        }
      }

      else if (!__maskrune(v8, 0x4000uLL))
      {
        goto LABEL_17;
      }

      std::wstring::basic_string[abi:ne200100]<0>(__p, dword_2582D5BC4);
      blahtex::Token::Token(&v42, __p, 0);
      std::vector<blahtex::Token>::push_back[abi:ne200100](a2, &v42);
      if (v43 < 0)
      {
        operator delete(v42);
      }

      if (v41 < 0)
      {
        operator delete(__p[0]);
      }

      v9 = v7 + 1;
      do
      {
        v10 = v9;
        if (v9 == (*a1 + 4 * a1[1]))
        {
          break;
        }

        v11 = *v9;
        v12 = v11 <= 0x7F ? *(v6 + 4 * v11 + 60) & 0x4000 : __maskrune(v11, 0x4000uLL);
        v9 = v10 + 1;
      }

      while (v12);
LABEL_74:
      v28 = *a1;
      if (a3)
      {
        blahtex::Token::setSource(*(a2 + 8) - 32, v28, v7, v10);
        v28 = *a1;
      }

      v7 = v10;
    }

    while (v10 != (v28 + 4 * a1[1]));
  }
}

void sub_2582AF424(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  if (*(v52 - 97) < 0)
  {
    operator delete(*(v52 - 120));
    if ((v51 & 1) == 0)
    {
LABEL_10:
      if (a44 < 0)
      {
        operator delete(a39);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v51)
  {
    goto LABEL_10;
  }

  __cxa_free_exception(v50);
  goto LABEL_10;
}

BOOL std::operator==[abi:ne200100]<wchar_t,std::char_traits<wchar_t>,std::allocator<wchar_t>>(const __int32 *a1, __int32 *a2)
{
  v4 = wcslen(a2);
  v5 = *(a1 + 23);
  if (v5 < 0)
  {
    if (v4 == *(a1 + 1))
    {
      if (v4 == -1)
      {
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      a1 = *a1;
      if (!v4)
      {
        return 1;
      }

      return !wmemcmp(a1, a2, v4);
    }

    return 0;
  }

  if (v4 != v5)
  {
    return 0;
  }

  if (!v4)
  {
    return 1;
  }

  return !wmemcmp(a1, a2, v4);
}

double blahtex::Manager::Manager(blahtex::Manager *this)
{
  result = 0.0;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *this = 0;
  *(this + 1) = 0;
  *(this + 16) = 0;
  return result;
}

void blahtex::Manager::ProcessInput(uint64_t a1, std::wstring::size_type a2, int a3)
{
  {
    std::unordered_set<std::wstring>::unordered_set<std::wstring_view const*>(blahtex::Manager::ProcessInput(std::wstring const&,BOOL,BOOL)::reservedCommandTable, &blahtex::Manager::ProcessInput(std::wstring const&,BOOL,BOOL)::reservedCommandArray, &__block_descriptor_tmp_0);
  }

  v16 = 0;
  v17 = 0;
  v18 = 0;
  v6 = *(a2 + 23);
  if ((v6 & 0x80u) == 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a2 + 8);
  }

  v15.__r_.__value_.__r.__words[0] = v7;
  v15.__r_.__value_.__l.__size_ = v6;
  blahtex::Tokenise(&v15, &v16, 1);
  *(a1 + 16) = 0;
  for (i = v16; i != v17; i = (i + 32))
  {
    if (std::__hash_table<std::wstring,std::hash<std::wstring>,std::equal_to<std::wstring>,std::allocator<std::wstring>>::find<std::wstring>(blahtex::Manager::ProcessInput(std::wstring const&,BOOL,BOOL)::reservedCommandTable, i))
    {
      std::wstring::append(i, dword_2582DA340);
    }

    else
    {
      v9 = *(i + 23);
      if (v9 < 0)
      {
        if (*(i + 1) > 7uLL)
        {
          v9 = *(i + 1);
LABEL_17:
          std::wstring::basic_string(&v15, i, v9 - 8, 8uLL, &v14);
          v10 = 0;
          v11 = HIBYTE(v15.__r_.__value_.__r.__words[2]);
          if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0 && v15.__r_.__value_.__l.__size_ == 8)
          {
            v10 = wmemcmp(v15.__r_.__value_.__l.__data_, dword_2582DA340, 8uLL) == 0;
            v11 = HIBYTE(v15.__r_.__value_.__r.__words[2]);
          }

          if (v11 < 0)
          {
            operator delete(v15.__r_.__value_.__l.__data_);
          }

          if (v10)
          {
            exception = __cxa_allocate_exception(0x30uLL);
            std::wstring::basic_string[abi:ne200100]<0>(&v15, dword_2582DA364);
            std::wstring::basic_string[abi:ne200100]<0>(&v14, &dword_2582D5C10);
            std::wstring::basic_string[abi:ne200100]<0>(v13, &dword_2582D5C10);
            blahtex::Exception::Exception(exception, &v15, i, &v14, v13);
          }

          if ((*(i + 23) & 0x80000000) == 0)
          {
            continue;
          }
        }

        if (*(i + 1) == 14 && !wmemcmp(*i, dword_2582DA3A4, 0xEuLL))
        {
          *(a1 + 16) = 1;
          MEMORY[0x259C7C920](i, dword_2582D5BC4);
        }

        continue;
      }

      if (v9 > 7)
      {
        goto LABEL_17;
      }
    }
  }

  memset(&v15, 0, sizeof(v15));
  if ((atomic_load_explicit(&_MergedGlobals, memory_order_acquire) & 1) == 0)
  {
    blahtex::Manager::ProcessInput();
  }

  if ((atomic_load_explicit(&qword_27F926B10, memory_order_acquire) & 1) == 0)
  {
    blahtex::Manager::ProcessInput();
  }

  if (blahtex::Manager::ProcessInput(std::wstring const&,BOOL,BOOL)::onceToken == -1)
  {
    if (!a3)
    {
      goto LABEL_34;
    }
  }

  else
  {
    blahtex::Manager::ProcessInput();
    if (!a3)
    {
LABEL_34:
      std::__copy_impl::operator()[abi:ne200100]<blahtex::Token *,blahtex::Token *,std::back_insert_iterator<std::vector<blahtex::Token>>>(v13, qword_27F926B18, unk_27F926B20, &v15);
      std::__copy_impl::operator()[abi:ne200100]<blahtex::Token *,blahtex::Token *,std::back_insert_iterator<std::vector<blahtex::Token>>>(v13, v16, v17, &v15);
      v13[0] = 0;
      blahtex::Parser::DoParse();
    }
  }

  std::vector<blahtex::Token>::__assign_with_size[abi:ne200100]<blahtex::Token*,blahtex::Token*>(&v15, qword_27F926B30, qword_27F926B38, (qword_27F926B38 - qword_27F926B30) >> 5);
  goto LABEL_34;
}

void sub_2582AFBFC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29)
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
    if ((v30 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (!v30)
  {
LABEL_10:
    a23 = &a29;
    std::vector<blahtex::Token>::__destroy_vector::operator()[abi:ne200100](&a23);
    JUMPOUT(0x2582AFD8CLL);
  }

  __cxa_free_exception(v29);
  goto LABEL_10;
}

void sub_2582AFC4C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  __cxa_free_exception(v22);
  JUMPOUT(0x2582AFD7CLL);
}

void sub_2582AFC64(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, void ***a14, uint64_t a15, uint64_t a16, void **a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (a2 == 1)
  {
    v21 = __cxa_begin_catch(a1);
    if (std::operator==[abi:ne200100]<wchar_t,std::char_traits<wchar_t>,std::allocator<wchar_t>>(v21, dword_2582DA3E0))
    {
      *(v20 + 17) = 1;
      blahtex::Exception::operator=(v20 + 24, v21);
      v22 = *(v20 + 8);
      *(v20 + 8) = 0;
      if (v22)
      {
        (*(*v22 + 8))(v22);
      }

      __cxa_end_catch();
      JUMPOUT(0x2582AFA9CLL);
    }

    exception = __cxa_allocate_exception(0x30uLL);
    blahtex::Exception::Exception(exception, v21);
  }

  blahtex::Parser::~Parser(&a11);
  a14 = &a17;
  std::vector<blahtex::Token>::__destroy_vector::operator()[abi:ne200100](&a14);
  a17 = &a20;
  std::vector<blahtex::Token>::__destroy_vector::operator()[abi:ne200100](&a17);
  JUMPOUT(0x2582AFD8CLL);
}

void sub_2582AFD14(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __cxa_free_exception(v2);
  __cxa_end_catch();
  blahtex::Parser::~Parser(va);
  JUMPOUT(0x2582AFD60);
}

void ___ZN7blahtex7Manager12ProcessInputERKNSt3__112basic_stringIwNS1_11char_traitsIwEENS1_9allocatorIwEEEEbb_block_invoke()
{
  blahtex::Tokenise(&blahtex::Manager::gTexvcCompatibilityMacros, &qword_27F926B30, 0);

  blahtex::Tokenise(&blahtex::Manager::gStandardMacros, &qword_27F926B18, 0);
}

uint64_t blahtex::Exception::operator=(uint64_t a1, uint64_t a2)
{
  std::wstring::operator=(a1, a2);
  if (a1 != a2)
  {
    std::vector<std::wstring>::__assign_with_size[abi:ne200100]<std::wstring*,std::wstring*>((a1 + 24), *(a2 + 24), *(a2 + 32), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 32) - *(a2 + 24)) >> 3));
  }

  return a1;
}

uint64_t blahtex::Manager::GenerateMathml(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 17) == 1)
  {
    exception = __cxa_allocate_exception(0x30uLL);
    blahtex::Exception::Exception(exception, (a1 + 24));
    v7 = blahtex::Exception::~Exception;
    goto LABEL_8;
  }

  v2 = *(a1 + 8);
  if (!v2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Layout tree not yet built in Manager::GenerateMathml");
    v6 = MEMORY[0x277D82750];
    v7 = MEMORY[0x277D825D8];
LABEL_8:
    __cxa_throw(exception, v6, v7);
  }

  v10 = *a2;
  v11 = *(a2 + 2);
  if (*(a1 + 16) == 1)
  {
    LODWORD(v10) = 0;
  }

  v9 = 0;
  blahtex::MathmlEnvironment::MathmlEnvironment(v8, BYTE4(v10) ^ 1, 0xFFFFFFFF);
  return (*(*v2 + 24))(v2, &v10, v8, &v9);
}

void *std::operator<<[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(void *a1, const char *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  MEMORY[0x259C7CA30](v22, a1);
  if (v22[0] == 1)
  {
    v4 = strlen(a2);
    v5 = v4;
    if (v4 < 0x65)
    {
      v7 = 0;
      v6 = &v24;
    }

    else
    {
      v6 = malloc_type_malloc(4 * v4, 0x100004052888210uLL);
      v7 = v6;
      if (!v6)
      {
        std::__throw_bad_alloc();
      }
    }

    v8 = *a2;
    if (*a2)
    {
      v9 = (a2 + 1);
      v10 = MEMORY[0x277D82688];
      v11 = v6;
      do
      {
        std::ios_base::getloc((a1 + *(*a1 - 24)));
        v12 = std::locale::use_facet(&v23, v10);
        v13 = (v12->__vftable[3].__on_zero_shared)(v12, v8);
        std::locale::~locale(&v23);
        *v11 = v13;
        v11 += 4;
        v14 = *v9++;
        v8 = v14;
      }

      while (v14);
    }

    v15 = a1 + *(*a1 - 24);
    v16 = *(v15 + 40);
    v17 = *(v15 + 8);
    v18 = *(v15 + 144);
    if (v18 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v19 = std::locale::use_facet(&v23, MEMORY[0x277D82688]);
      v18 = (v19->__vftable[3].__on_zero_shared)(v19, 32);
      std::locale::~locale(&v23);
      *(v15 + 144) = v18;
    }

    if ((v17 & 0xB0) == 0x20)
    {
      v20 = &v6[4 * v5];
    }

    else
    {
      v20 = v6;
    }

    if (!std::__pad_and_output[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v16, v6, v20, &v6[4 * v5], v15, v18))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }

    if (v7)
    {
      free(v7);
    }
  }

  MEMORY[0x259C7CA40](v22);
  return a1;
}

void sub_2582B01BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::locale a11)
{
  if (a2)
  {
    std::locale::~locale(&a11);
    if (v12)
    {
      free(v12);
    }

    MEMORY[0x259C7CA40](&a9);
    __cxa_begin_catch(exception_object);
    std::ios_base::__set_badbit_and_consider_rethrow((v11 + *(*v11 - 24)));
    __cxa_end_catch();
    JUMPOUT(0x2582B017CLL);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::wstring>::__assign_with_size[abi:ne200100]<std::wstring*,std::wstring*>(std::vector<std::wstring> *a1, std::wstring *__str, std::wstring *a3, unint64_t a4)
{
  v6 = __str;
  begin = a1->__begin_;
  if (0xAAAAAAAAAAAAAAABLL * ((a1->__end_cap_.__value_ - a1->__begin_) >> 3) < a4)
  {
    std::vector<std::string>::__vdeallocate(a1);
    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x5555555555555556 * ((a1->__end_cap_.__value_ - a1->__begin_) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((a1->__end_cap_.__value_ - a1->__begin_) >> 3) >= 0x555555555555555)
      {
        v10 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<std::string>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  end = a1->__end_;
  v12 = end - begin;
  if (0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3) >= a4)
  {
    if (__str != a3)
    {
      do
      {
        std::wstring::operator=(begin++, v6++);
      }

      while (v6 != a3);
      end = a1->__end_;
    }

    while (end != begin)
    {
      v15 = SHIBYTE(end[-1].__r_.__value_.__r.__words[2]);
      --end;
      if (v15 < 0)
      {
        operator delete(end->__r_.__value_.__l.__data_);
      }
    }

    a1->__end_ = begin;
  }

  else
  {
    if (end != begin)
    {
      v13 = end - begin;
      v14 = __str;
      do
      {
        std::wstring::operator=(begin++, v14++);
        v13 -= 24;
      }

      while (v13);
      end = a1->__end_;
    }

    a1->__end_ = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::wstring>,std::wstring*,std::wstring*,std::wstring*>(a1, (v6 + v12), a3, end);
  }
}

std::wstring *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::wstring>,std::wstring*,std::wstring*,std::wstring*>(uint64_t a1, __int128 *a2, __int128 *a3, std::wstring *this)
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
        std::wstring::__init_copy_ctor_external(v4, *v6, *(v6 + 1));
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
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::wstring>,std::wstring*>>::~__exception_guard_exceptions[abi:ne200100](v9);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::wstring>,std::wstring*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

std::wstring *blahtex::Exception::Exception(std::wstring *this, const blahtex::Exception *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::wstring::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  this[1].__r_.__value_.__r.__words[0] = 0;
  this[1].__r_.__value_.__l.__size_ = 0;
  this[1].__r_.__value_.__r.__words[2] = 0;
  std::vector<std::wstring>::__init_with_size[abi:ne200100]<std::wstring*,std::wstring*>(&this[1], *(a2 + 3), *(a2 + 4), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 4) - *(a2 + 3)) >> 3));
  return this;
}

void sub_2582B056C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<std::wstring>::__init_with_size[abi:ne200100]<std::wstring*,std::wstring*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::string>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2582B05F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void blahtex::Parser::~Parser(blahtex::Parser *this)
{
  v1 = *this;
  *this = 0;
  if (v1)
  {
    v3 = (v1 + 40);
    std::vector<blahtex::Token>::__destroy_vector::operator()[abi:ne200100](&v3);
    v2 = std::__hash_table<std::__hash_value_type<std::wstring,blahtex::MacroProcessor::Macro>,std::__unordered_map_hasher<std::wstring,std::__hash_value_type<std::wstring,blahtex::MacroProcessor::Macro>,std::hash<std::wstring>,std::equal_to<std::wstring>,true>,std::__unordered_map_equal<std::wstring,std::__hash_value_type<std::wstring,blahtex::MacroProcessor::Macro>,std::equal_to<std::wstring>,std::hash<std::wstring>,true>,std::allocator<std::__hash_value_type<std::wstring,blahtex::MacroProcessor::Macro>>>::~__hash_table(v1);
    MEMORY[0x259C7CB70](v2, 0x10A0C40106B2905);
  }
}

uint64_t std::unordered_set<std::wstring>::unordered_set<std::wstring_view const*>(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 0u;
  *(result + 16) = 0u;
  *(result + 32) = 1065353216;
  if (a2 != a3)
  {
    std::__hash_table<std::wstring,std::hash<std::wstring>,std::equal_to<std::wstring>,std::allocator<std::wstring>>::__emplace_unique_impl<std::wstring_view const&>();
  }

  return result;
}

void sub_2582B0754(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::wstring,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2582B0874(_Unwind_Exception *a1)
{
  *v2 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::wstring,void *>>>::operator()[abi:ne200100](v3, v1);
  _Unwind_Resume(a1);
}

uint64_t **std::__hash_table<std::wstring,std::hash<std::wstring>,std::equal_to<std::wstring>,std::allocator<std::wstring>>::__node_insert_unique(uint64_t *a1, void *a2)
{
  v2 = a2;
  v4 = std::__string_hash<wchar_t>::operator()[abi:ne200100](a1, (a2 + 2));
  v2[1] = v4;
  v5 = std::__hash_table<std::wstring,std::hash<std::wstring>,std::equal_to<std::wstring>,std::allocator<std::wstring>>::__node_insert_unique_prepare[abi:ne200100](a1, v4, (v2 + 2));
  if (v5)
  {
    return v5;
  }

  std::__hash_table<std::wstring,std::hash<std::wstring>,std::equal_to<std::wstring>,std::allocator<std::wstring>>::__node_insert_unique_perform[abi:ne200100](a1, v2);
  return v2;
}

uint64_t **std::__hash_table<std::wstring,std::hash<std::wstring>,std::equal_to<std::wstring>,std::allocator<std::wstring>>::__node_insert_unique_prepare[abi:ne200100](uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  if (v4)
  {
    v7 = vcnt_s8(v4);
    v7.i16[0] = vaddlv_u8(v7);
    v8 = v7.u32[0];
    if (v7.u32[0] > 1uLL)
    {
      v9 = v4 <= a2 ? a2 % v4 : a2;
    }

    else
    {
      v9 = (v4 - 1) & a2;
    }

    v10 = *(*a1 + 8 * v9);
    if (v10)
    {
      for (i = *v10; i; i = *i)
      {
        v12 = i[1];
        if (v12 == a2)
        {
          v13 = *(i + 39);
          if (v13 >= 0)
          {
            v14 = *(i + 39);
          }

          else
          {
            v14 = i[3];
          }

          v15 = *(a3 + 23);
          v16 = v15;
          if ((v15 & 0x80u) != 0)
          {
            v15 = *(a3 + 8);
          }

          if (v14 == v15)
          {
            if (!v14)
            {
              return i;
            }

            v17 = v16 >= 0 ? a3 : *a3;
            v18 = v13 >= 0 ? (i + 2) : i[2];
            if (!wmemcmp(v18, v17, v14))
            {
              return i;
            }
          }
        }

        else
        {
          if (v8 > 1)
          {
            if (v12 >= v4)
            {
              v12 %= v4;
            }
          }

          else
          {
            v12 &= v4 - 1;
          }

          if (v12 != v9)
          {
            break;
          }
        }
      }
    }
  }

  v19 = (*(a1 + 24) + 1);
  v20 = *(a1 + 32);
  if (!v4 || (v20 * v4) < v19)
  {
    v21 = 1;
    if (v4 >= 3)
    {
      v21 = (v4 & (v4 - 1)) != 0;
    }

    v22 = v21 | (2 * v4);
    v23 = vcvtps_u32_f32(v19 / v20);
    if (v22 <= v23)
    {
      v24 = v23;
    }

    else
    {
      v24 = v22;
    }

    std::__hash_table<wchar_t,std::hash<wchar_t>,std::equal_to<wchar_t>,std::allocator<wchar_t>>::__rehash<true>(a1, v24);
  }

  return 0;
}

uint64_t *std::__hash_table<std::wstring,std::hash<std::wstring>,std::equal_to<std::wstring>,std::allocator<std::wstring>>::__node_insert_unique_perform[abi:ne200100](uint64_t *result, void *a2)
{
  v2 = result[1];
  v3 = a2[1];
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    if (v3 >= *&v2)
    {
      v3 %= *&v2;
    }
  }

  else
  {
    v3 &= *&v2 - 1;
  }

  v5 = *result;
  v6 = *(*result + 8 * v3);
  if (v6)
  {
    *a2 = *v6;
LABEL_13:
    *v6 = a2;
    goto LABEL_14;
  }

  *a2 = result[2];
  result[2] = a2;
  *(v5 + 8 * v3) = result + 2;
  if (*a2)
  {
    v7 = *(*a2 + 8);
    if (v4.u32[0] > 1uLL)
    {
      if (v7 >= *&v2)
      {
        v7 %= *&v2;
      }
    }

    else
    {
      v7 &= *&v2 - 1;
    }

    v6 = (*result + 8 * v7);
    goto LABEL_13;
  }

LABEL_14:
  ++result[3];
  return result;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::wstring,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
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

uint64_t std::__hash_table<std::wstring,std::hash<std::wstring>,std::equal_to<std::wstring>,std::allocator<std::wstring>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::wstring,std::hash<std::wstring>,std::equal_to<std::wstring>,std::allocator<std::wstring>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::wstring,std::hash<std::wstring>,std::equal_to<std::wstring>,std::allocator<std::wstring>>::__deallocate_node(int a1, void **__p)
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

uint64_t **std::__hash_table<std::wstring,std::hash<std::wstring>,std::equal_to<std::wstring>,std::allocator<std::wstring>>::find<std::wstring>(void *a1, uint64_t a2)
{
  v4 = std::__string_hash<wchar_t>::operator()[abi:ne200100](a1, a2);
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
      v13 = *(i + 39);
      if (v13 >= 0)
      {
        v14 = *(i + 39);
      }

      else
      {
        v14 = i[3];
      }

      v15 = *(a2 + 23);
      v16 = v15;
      if ((v15 & 0x80u) != 0)
      {
        v15 = *(a2 + 8);
      }

      if (v14 == v15)
      {
        if (!v14)
        {
          return i;
        }

        v17 = v16 >= 0 ? a2 : *a2;
        v18 = v13 >= 0 ? (i + 2) : i[2];
        if (!wmemcmp(v18, v17, v14))
        {
          return i;
        }
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

void std::vector<blahtex::Token>::__assign_with_size[abi:ne200100]<blahtex::Token*,blahtex::Token*>(std::wstring **a1, std::wstring *a2, blahtex::Token *a3, unint64_t a4)
{
  v6 = a2;
  v8 = *a1;
  if (a4 > (a1[2] - *a1) >> 5)
  {
    std::vector<blahtex::Token>::__vdeallocate(a1);
    if (!(a4 >> 59))
    {
      v9 = a1[2] - *a1;
      v10 = v9 >> 4;
      if (v9 >> 4 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x7FFFFFFFFFFFFFE0)
      {
        v11 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      std::vector<blahtex::Token>::__vallocate[abi:ne200100](a1, v11);
    }

    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  v12 = a1[1];
  v13 = v12 - v8;
  if (a4 <= (v12 - v8) >> 5)
  {
    if (a2 != a3)
    {
      do
      {
        blahtex::Token::operator=(v8, v6);
        v6 = (v6 + 32);
        v8 = (v8 + 32);
      }

      while (v6 != a3);
      v12 = a1[1];
    }

    while (v12 != v8)
    {
      v16 = *(v12 - 9);
      v12 -= 4;
      if (v16 < 0)
      {
        operator delete(*v12);
      }
    }

    a1[1] = v8;
  }

  else
  {
    if (v12 != v8)
    {
      v14 = v12 - v8;
      v15 = a2;
      do
      {
        blahtex::Token::operator=(v8, v15);
        v15 = (v15 + 32);
        v8 = (v8 + 32);
        v14 -= 32;
      }

      while (v14);
      v12 = a1[1];
    }

    a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<blahtex::Token>,blahtex::Token*,blahtex::Token*,blahtex::Token*>(a1, (v6 + v13), a3, v12);
  }
}

void std::vector<blahtex::Token>::__vdeallocate(uint64_t a1)
{
  if (*a1)
  {
    std::vector<blahtex::Token>::clear[abi:ne200100](a1);
    operator delete(*a1);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }
}

void std::vector<blahtex::Token>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<blahtex::Token>>(a1, a2);
  }

  std::vector<std::string>::__throw_length_error[abi:ne200100]();
}

blahtex::Token *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<blahtex::Token>,blahtex::Token*,blahtex::Token*,blahtex::Token*>(uint64_t a1, blahtex::Token *a2, blahtex::Token *a3, blahtex::Token *this)
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
      blahtex::Token::Token(v4, v6);
      v6 = (v6 + 32);
      v4 = (v11 + 32);
      v11 = (v11 + 32);
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<blahtex::Token>,blahtex::Token*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

blahtex::Token *std::__copy_impl::operator()[abi:ne200100]<blahtex::Token *,blahtex::Token *,std::back_insert_iterator<std::vector<blahtex::Token>>>(int a1, blahtex::Token *a2, blahtex::Token *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    v7 = *(a4 + 8);
    do
    {
      if (v7 >= *(a4 + 16))
      {
        v7 = std::vector<blahtex::Token>::__emplace_back_slow_path<blahtex::Token const&>(a4, v5);
      }

      else
      {
        blahtex::Token::Token(v7, v5);
        v7 = (v7 + 32);
        *(a4 + 8) = v7;
      }

      *(a4 + 8) = v7;
      v5 = (v5 + 32);
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void blahtex::Manager::ProcessInput()
{
  if (__cxa_guard_acquire(&_MergedGlobals))
  {
    qword_27F926B18 = 0;
    unk_27F926B20 = 0;
    qword_27F926B28 = 0;
    __cxa_guard_release(&_MergedGlobals);
  }
}

{
  if (__cxa_guard_acquire(&qword_27F926B10))
  {
    qword_27F926B30 = 0;
    unk_27F926B38 = 0;
    qword_27F926B40 = 0;
    __cxa_guard_release(&qword_27F926B10);
  }
}

{
  dispatch_once(&blahtex::Manager::ProcessInput(std::wstring const&,BOOL,BOOL)::onceToken, &__block_literal_global_2);
}

void blahtex::MathmlNode::~MathmlNode(blahtex::MathmlNode *this)
{
  v2 = (this + 64);
  v3 = *(this + 9);
  if (v3 != (this + 64))
  {
    do
    {
      v4 = v3[2];
      if (v4)
      {
        blahtex::MathmlNode::~MathmlNode(v4);
        MEMORY[0x259C7CB70]();
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  std::__list_imp<EQKit::StemStretch::FeatureRange::Span>::clear(v2);
  if (*(this + 55) < 0)
  {
    operator delete(*(this + 4));
  }

  std::__tree<std::__value_type<EQKit::Font::CharacterProperty::Map::Key,EQKit::StemStretch::Config::Entry>,std::__map_value_compare<EQKit::Font::CharacterProperty::Map::Key,std::__value_type<EQKit::Font::CharacterProperty::Map::Key,EQKit::StemStretch::Config::Entry>,std::less<EQKit::Font::CharacterProperty::Map::Key>,true>,std::allocator<std::__value_type<EQKit::Font::CharacterProperty::Map::Key,EQKit::StemStretch::Config::Entry>>>::destroy(this + 8, *(this + 2));
}

uint64_t blahtex::MathmlNode::AddFontAttributes(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = result;
  if (*(a3 + 5) == 1)
  {
    v5 = *result;
    if (a2 - 4 > 4)
    {
      if (v5)
      {
        v9 = 0;
      }

      else
      {
        v13 = *(result + 55);
        if (v13 < 0)
        {
          v13 = *(result + 40);
        }

        v9 = v13 == 1;
      }

      v14 = (a2 < 0xD) & (0x180Cu >> a2);
      if (v9 != v14)
      {
        if (v14)
        {
          v15 = "i";
        }

        else
        {
          v15 = "n";
        }

        v19 = 17;
        v20 = &v19;
        v16 = std::__tree<std::__value_type<blahtex::MathmlNode::Attribute,std::wstring>,std::__map_value_compare<blahtex::MathmlNode::Attribute,std::__value_type<blahtex::MathmlNode::Attribute,std::wstring>,std::less<blahtex::MathmlNode::Attribute>,true>,std::allocator<std::__value_type<blahtex::MathmlNode::Attribute,std::wstring>>>::__emplace_unique_key_args<blahtex::MathmlNode::Attribute,std::piecewise_construct_t const&,std::tuple<blahtex::MathmlNode::Attribute&&>,std::tuple<>>(result + 8, &v19);
        result = MEMORY[0x259C7C920](v16 + 5, v15);
      }

      if (a2 <= 0xC && ((1 << a2) & 0x140A) != 0)
      {
        v19 = 18;
        v20 = &v19;
        v17 = std::__tree<std::__value_type<blahtex::MathmlNode::Attribute,std::wstring>,std::__map_value_compare<blahtex::MathmlNode::Attribute,std::__value_type<blahtex::MathmlNode::Attribute,std::wstring>,std::less<blahtex::MathmlNode::Attribute>,true>,std::allocator<std::__value_type<blahtex::MathmlNode::Attribute,std::wstring>>>::__emplace_unique_key_args<blahtex::MathmlNode::Attribute,std::piecewise_construct_t const&,std::tuple<blahtex::MathmlNode::Attribute&&>,std::tuple<>>(v4 + 8, &v19);
        result = MEMORY[0x259C7C920](v17 + 5, "b");
      }

      if (a2 - 9 > 3)
      {
        if (a2 != 13)
        {
          return result;
        }

        v19 = 16;
        v20 = &v19;
        v6 = std::__tree<std::__value_type<blahtex::MathmlNode::Attribute,std::wstring>,std::__map_value_compare<blahtex::MathmlNode::Attribute,std::__value_type<blahtex::MathmlNode::Attribute,std::wstring>,std::less<blahtex::MathmlNode::Attribute>,true>,std::allocator<std::__value_type<blahtex::MathmlNode::Attribute,std::wstring>>>::__emplace_unique_key_args<blahtex::MathmlNode::Attribute,std::piecewise_construct_t const&,std::tuple<blahtex::MathmlNode::Attribute&&>,std::tuple<>>(v4 + 8, &v19);
        v7 = "m";
      }

      else
      {
        v19 = 16;
        v20 = &v19;
        v6 = std::__tree<std::__value_type<blahtex::MathmlNode::Attribute,std::wstring>,std::__map_value_compare<blahtex::MathmlNode::Attribute,std::__value_type<blahtex::MathmlNode::Attribute,std::wstring>,std::less<blahtex::MathmlNode::Attribute>,true>,std::allocator<std::__value_type<blahtex::MathmlNode::Attribute,std::wstring>>>::__emplace_unique_key_args<blahtex::MathmlNode::Attribute,std::piecewise_construct_t const&,std::tuple<blahtex::MathmlNode::Attribute&&>,std::tuple<>>(v4 + 8, &v19);
        v7 = "s";
      }
    }

    else
    {
      if (v5 != 2 || a2 != 8 && a2 != 5)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(exception, "Unexpected font/symbol combination in MathmlNode::AddFontAttributes");
        __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
      }

      v19 = 18;
      v20 = &v19;
      v6 = std::__tree<std::__value_type<blahtex::MathmlNode::Attribute,std::wstring>,std::__map_value_compare<blahtex::MathmlNode::Attribute,std::__value_type<blahtex::MathmlNode::Attribute,std::wstring>,std::less<blahtex::MathmlNode::Attribute>,true>,std::allocator<std::__value_type<blahtex::MathmlNode::Attribute,std::wstring>>>::__emplace_unique_key_args<blahtex::MathmlNode::Attribute,std::piecewise_construct_t const&,std::tuple<blahtex::MathmlNode::Attribute&&>,std::tuple<>>(result + 8, &v19);
      v7 = "b";
    }

    return MEMORY[0x259C7C920](v6 + 5, v7);
  }

  else
  {
    if (*result)
    {
      v8 = 0;
    }

    else
    {
      v10 = *(result + 55);
      if (v10 < 0)
      {
        v10 = *(result + 40);
      }

      v8 = 2 * (v10 == 1);
    }

    if (v8 != a2)
    {
      v11 = &(&blahtex::gMathmlFontStrings)[2 * a2];
      v19 = 2;
      v20 = &v19;
      v12 = std::__tree<std::__value_type<blahtex::MathmlNode::Attribute,std::wstring>,std::__map_value_compare<blahtex::MathmlNode::Attribute,std::__value_type<blahtex::MathmlNode::Attribute,std::wstring>,std::less<blahtex::MathmlNode::Attribute>,true>,std::allocator<std::__value_type<blahtex::MathmlNode::Attribute,std::wstring>>>::__emplace_unique_key_args<blahtex::MathmlNode::Attribute,std::piecewise_construct_t const&,std::tuple<blahtex::MathmlNode::Attribute&&>,std::tuple<>>(result + 8, &v19);
      return MEMORY[0x259C7C930](v12 + 5, *v11, v11[1]);
    }
  }

  return result;
}

void *blahtex::MathmlNode::PrintType(unsigned int *a1, void *a2)
{
  v2 = *a1;
  if (v2 >= 0x16)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Illegal node type in MathmlNode::PrintType");
    __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
  }

  v3 = (&blahtex::gTypeArray + 2 * v2);
  v4 = v3[1];
  v6 = *v3;

  return std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(a2, v6, v4);
}

void *blahtex::MathmlNode::PrintAttributes(void *result, void *a2)
{
  v2 = result[1];
  v3 = result + 2;
  if (v2 != result + 2)
  {
    do
    {
      if (*(v2 + 8) >= 0x16u)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(exception, "Illegal attribute in MathmlNode::PrintAttributes");
        __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
      }

      v5 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(a2, " ", 1);
      v6 = (&blahtex::gAttributeArray + 2 * *(v2 + 8));
      v7 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v5, *v6, v6[1]);
      v8 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v7, "=", 2);
      v9 = *(v2 + 63);
      if (v9 >= 0)
      {
        v10 = (v2 + 5);
      }

      else
      {
        v10 = v2[5];
      }

      if (v9 >= 0)
      {
        v11 = *(v2 + 63);
      }

      else
      {
        v11 = v2[6];
      }

      v12 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v8, v10, v11);
      result = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v12, "", 1);
      v13 = v2[1];
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
          v14 = v2[2];
          v15 = *v14 == v2;
          v2 = v14;
        }

        while (!v15);
      }

      v2 = v14;
    }

    while (v14 != v3);
  }

  return result;
}

void *blahtex::MathmlNode::Print(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, int a5)
{
  v5 = a5;
  if (a5 > 0)
  {
    v10 = a4;
  }

  else
  {
    v10 = 0;
  }

  if (v10 == 1)
  {
    v11 = a5;
    do
    {
      std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(a2, " ", 2);
      --v11;
    }

    while (v11);
  }

  std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(a2, "<", 1);
  blahtex::MathmlNode::PrintType(a1, a2);
  blahtex::MathmlNode::PrintAttributes(a1, a2);
  if (*(a3 + 6) == 1 && *(a1 + 56))
  {
    v12 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(a2, " ", 7);
    v13 = MEMORY[0x259C7CA90](v12, *(a1 + 56) >> 9);
    v14 = std::operator<<[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v13, ",");
    v15 = MEMORY[0x259C7CA90](v14, *(a1 + 56) & 0x1FFLL);
    std::operator<<[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v15, "'");
  }

  v16 = *(a1 + 55);
  if (v16 < 0)
  {
    if (*(a1 + 40))
    {
      goto LABEL_15;
    }
  }

  else if (*(a1 + 55))
  {
    goto LABEL_15;
  }

  if (!*(a1 + 80))
  {
    v23 = "/";
    v24 = a2;
    v25 = 2;
    goto LABEL_34;
  }

LABEL_15:
  if ((v16 & 0x80000000) != 0)
  {
    v16 = *(a1 + 40);
  }

  v17 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(a2, ">", 1);
  if (v16)
  {
    v18 = v17;
    blahtex::XmlEncode((a1 + 32), a3, &__p);
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

    std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v18, p_p, size);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    if (a4)
    {
      std::ios_base::getloc((a2 + *(*a2 - 24)));
      v21 = std::locale::use_facet(&__p, MEMORY[0x277D82688]);
      (v21->__vftable[3].__on_zero_shared)(v21, 10);
      std::locale::~locale(&__p);
      std::wostream::put();
      std::wostream::flush();
    }

    for (i = *(a1 + 72); i != a1 + 64; i = *(i + 8))
    {
      blahtex::MathmlNode::Print(*(i + 16), a2, a3, a4, (v5 + 1));
    }

    if (v10)
    {
      do
      {
        std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(a2, " ", 2);
        --v5;
      }

      while (v5);
    }
  }

  std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(a2, "<", 2);
  blahtex::MathmlNode::PrintType(a1, a2);
  v23 = ">";
  v24 = a2;
  v25 = 1;
LABEL_34:
  result = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v24, v23, v25);
  if (a4)
  {
    std::ios_base::getloc((a2 + *(*a2 - 24)));
    v27 = std::locale::use_facet(&__p, MEMORY[0x277D82688]);
    (v27->__vftable[3].__on_zero_shared)(v27, 10);
    std::locale::~locale(&__p);
    std::wostream::put();
    return std::wostream::flush();
  }

  return result;
}

void *blahtex::MathTokenTable(blahtex *this)
{
  {
    std::unordered_map<std::wstring,blahtex::Parser::TokenCode>::unordered_map<std::pair<std::wstring_view,blahtex::Parser::TokenCode> const*>(&blahtex::MathTokenTable(void)::gMathTokenTable, &blahtex::gMathTokenArray, (&blahtex::gMathTokenArray + 2127));
  }

  return &blahtex::MathTokenTable(void)::gMathTokenTable;
}

void *blahtex::TextTokenTable(blahtex *this)
{
  {
    std::unordered_map<std::wstring,blahtex::Parser::TokenCode>::unordered_map<std::pair<std::wstring_view,blahtex::Parser::TokenCode> const*>(&blahtex::TextTokenTable(void)::gTextTokenTable, &blahtex::gTextTokenArray, &blahtex::gDelimiterArray);
  }

  return &blahtex::TextTokenTable(void)::gTextTokenTable;
}

uint64_t blahtex::Parser::GetMathTokenCode(blahtex::Parser *this, const blahtex::Token *a2)
{
  blahtex::MathTokenTable(this);
  blahtex::translateToken(a2, v24);
  v3 = std::__hash_table<std::wstring,std::hash<std::wstring>,std::equal_to<std::wstring>,std::allocator<std::wstring>>::find<std::wstring>(blahtex::MathTokenTable(void)::gMathTokenTable, v24);
  if (v3)
  {
    v4 = *(v3 + 10);
    if (v4 == 3)
    {
      std::wstring::basic_string[abi:ne200100]<0>(__p, &unk_2582DAD74);
      if (blahtex::Token::operator==(v24, __p))
      {
        v8 = 1;
      }

      else
      {
        std::wstring::basic_string[abi:ne200100]<0>(v20, &unk_2582DAD7C);
        if (blahtex::Token::operator==(v24, v20))
        {
          v8 = 1;
        }

        else
        {
          std::wstring::basic_string[abi:ne200100]<0>(v18, &unk_2582DAD84);
          v8 = blahtex::Token::operator==(v24, v18);
          if (v19 < 0)
          {
            operator delete(v18[0]);
          }
        }

        if (v21 < 0)
        {
          operator delete(v20[0]);
        }
      }

      if (v23 < 0)
      {
        operator delete(__p[0]);
      }

      if (v8)
      {
        exception = __cxa_allocate_exception(0x30uLL);
        std::wstring::basic_string[abi:ne200100]<0>(__p, dword_2582DAD8C);
        std::operator+<wchar_t>(&unk_2582DAE10, v24, v20);
        std::wstring::basic_string[abi:ne200100]<0>(v18, &dword_2582DAE18);
        blahtex::Exception::Exception(exception, __p, a2, v20, v18);
      }

      std::wstring::basic_string[abi:ne200100]<0>(__p, &unk_2582DAE1C);
      if (blahtex::Token::operator==(v24, __p))
      {
        v14 = 1;
      }

      else
      {
        std::wstring::basic_string[abi:ne200100]<0>(v20, &unk_2582DAE24);
        v14 = blahtex::Token::operator==(v24, v20);
        if (v21 < 0)
        {
          operator delete(v20[0]);
        }
      }

      if (v23 < 0)
      {
        operator delete(__p[0]);
      }

      if (v14)
      {
        v15 = __cxa_allocate_exception(0x30uLL);
        std::wstring::basic_string[abi:ne200100]<0>(__p, dword_2582DAE2C);
        std::wstring::basic_string[abi:ne200100]<0>(v20, &dword_2582DAE18);
        std::wstring::basic_string[abi:ne200100]<0>(v18, &dword_2582DAE18);
        blahtex::Exception::Exception(v15, __p, a2, v20, v18);
      }

      v16 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v16, "Unexpected illegal character in Parser::GetMathTokenCode");
      __cxa_throw(v16, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
    }

    if (v25 < 0)
    {
      goto LABEL_24;
    }

    return v4;
  }

  if ((v25 & 0x80000000) == 0)
  {
    v5 = v24[0];
    if (LODWORD(v24[0]) != 92)
    {
      if (SLODWORD(v24[0]) < 128)
      {
        if (SLODWORD(v24[0]) > 96)
        {
          if (LODWORD(v24[0]) >= 0x7B)
          {
            goto LABEL_32;
          }

          return 26;
        }

        if (SLODWORD(v24[0]) > 64)
        {
          if (LODWORD(v24[0]) >= 0x5B)
          {
            goto LABEL_32;
          }

          return 26;
        }

        if (SLODWORD(v24[0]) < 48)
        {
          goto LABEL_32;
        }

        goto LABEL_22;
      }

LABEL_35:
      v13 = __cxa_allocate_exception(0x30uLL);
      std::wstring::basic_string[abi:ne200100]<0>(__p, dword_2582DAEE0);
      std::wstring::basic_string[abi:ne200100]<0>(v20, &dword_2582DAE18);
      std::wstring::basic_string[abi:ne200100]<0>(v18, &dword_2582DAE18);
      std::wstring::basic_string[abi:ne200100]<0>(v17, &dword_2582DAE18);
      blahtex::Exception::Exception(v13, __p, v20, v18, v17);
    }

LABEL_33:
    blahtex::TextTokenTable(0);
    v11 = std::__hash_table<std::wstring,std::hash<std::wstring>,std::equal_to<std::wstring>,std::allocator<std::wstring>>::find<std::wstring>(blahtex::TextTokenTable(void)::gTextTokenTable, v24);
    v12 = __cxa_allocate_exception(0x30uLL);
    if (!v11)
    {
      std::wstring::basic_string[abi:ne200100]<0>(__p, dword_2582DAE90);
      std::wstring::basic_string[abi:ne200100]<0>(v20, &dword_2582DAE18);
      std::wstring::basic_string[abi:ne200100]<0>(v18, &dword_2582DAE18);
      blahtex::Exception::Exception(v12, __p, a2, v20, v18);
    }

    std::wstring::basic_string[abi:ne200100]<0>(__p, dword_2582DAE2C);
    std::wstring::basic_string[abi:ne200100]<0>(v20, &dword_2582DAE18);
    std::wstring::basic_string[abi:ne200100]<0>(v18, &dword_2582DAE18);
    blahtex::Exception::Exception(v12, __p, a2, v20, v18);
  }

  v6 = *v24[0];
  if (*v24[0] == 92)
  {
    goto LABEL_33;
  }

  if (v6 > 127)
  {
    goto LABEL_35;
  }

  if ((v6 - 97) < 0x1A || v6 > 64 && *v24[0] < 91)
  {
    goto LABEL_23;
  }

  v5 = *v24[0];
  if (*v24[0] <= 47)
  {
LABEL_32:
    v10 = __cxa_allocate_exception(0x30uLL);
    std::wstring::basic_string[abi:ne200100]<0>(__p, dword_2582DAE90);
    std::wstring::basic_string[abi:ne200100]<0>(v20, &dword_2582DAE18);
    std::wstring::basic_string[abi:ne200100]<0>(v18, &dword_2582DAE18);
    blahtex::Exception::Exception(v10, __p, a2, v20, v18);
  }

LABEL_22:
  if (v5 >= 0x3A)
  {
    goto LABEL_32;
  }

LABEL_23:
  v4 = 26;
  if (v25 < 0)
  {
LABEL_24:
    operator delete(v24[0]);
  }

  return v4;
}

void sub_2582B2090(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a32 < 0)
  {
    operator delete(a27);
    if ((v33 & 1) == 0)
    {
LABEL_10:
      if (*(v34 - 41) < 0)
      {
        operator delete(*(v34 - 64));
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v33)
  {
    goto LABEL_10;
  }

  __cxa_free_exception(v32);
  goto LABEL_10;
}

uint64_t std::operator+<wchar_t>@<X0>(const __int32 *a1@<X0>, const void **a2@<X1>, void **a3@<X8>)
{
  v6 = wcslen(a1);
  v7 = v6;
  if (*(a2 + 23) >= 0)
  {
    v8 = *(a2 + 23);
  }

  else
  {
    v8 = a2[1];
  }

  result = std::wstring::basic_string[abi:ne200100](a3, v8 + v6);
  if (*(a3 + 23) < 0)
  {
    a3 = *a3;
  }

  if (v7)
  {
    result = memmove(a3, a1, 4 * v7);
  }

  if (v8)
  {
    if (*(a2 + 23) >= 0)
    {
      v10 = a2;
    }

    else
    {
      v10 = *a2;
    }

    result = memmove(a3 + 4 * v7, v10, 4 * v8);
  }

  *(a3 + v7 + v8) = 0;
  return result;
}

void blahtex::Token::~Token(void **this)
{
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

uint64_t blahtex::Parser::GetTextTokenCode(blahtex::Parser *this, int **a2)
{
  blahtex::TextTokenTable(this);
  v3 = std::__hash_table<std::wstring,std::hash<std::wstring>,std::equal_to<std::wstring>,std::allocator<std::wstring>>::find<std::wstring>(blahtex::TextTokenTable(void)::gTextTokenTable, a2);
  if (!v3)
  {
    v7 = *(a2 + 23);
    if (v7 < 0)
    {
      v9 = **a2;
      if (v9 != 92)
      {
        if ((v9 - 97) < 0x1A)
        {
          return 26;
        }

        v10 = *a2;
        v11 = **a2;
        if ((v11 - 65) < 0x1A)
        {
          return 26;
        }

        if (v11 <= 47)
        {
          goto LABEL_25;
        }

        v8 = *v10;
        goto LABEL_23;
      }
    }

    else
    {
      v8 = *a2;
      if (*a2 != 92)
      {
        if (v8 >= 97)
        {
          if (v8 < 0x7B)
          {
            return 26;
          }

          goto LABEL_24;
        }

        if (v8 > 64)
        {
          if (v8 < 0x5B)
          {
            return 26;
          }

LABEL_24:
          v10 = *a2;
LABEL_25:
          if (v7 >= 0)
          {
            v12 = a2;
          }

          else
          {
            v12 = v10;
          }

          if (*v12 > 127)
          {
            return 26;
          }

LABEL_33:
          exception = __cxa_allocate_exception(0x30uLL);
          std::wstring::basic_string[abi:ne200100]<0>(&v28, dword_2582DAE90);
          std::wstring::basic_string[abi:ne200100]<0>(__p, &dword_2582DAE18);
          std::wstring::basic_string[abi:ne200100]<0>(v24, &dword_2582DAE18);
          blahtex::Exception::Exception(exception, &v28, a2, __p, v24);
        }

        if (v8 <= 47)
        {
          goto LABEL_33;
        }

LABEL_23:
        if (v8 < 58)
        {
          return 26;
        }

        goto LABEL_24;
      }
    }

    blahtex::MathTokenTable(0);
    v13 = std::__hash_table<std::wstring,std::hash<std::wstring>,std::equal_to<std::wstring>,std::allocator<std::wstring>>::find<std::wstring>(blahtex::MathTokenTable(void)::gMathTokenTable, a2);
    v14 = __cxa_allocate_exception(0x30uLL);
    if (!v13)
    {
      std::wstring::basic_string[abi:ne200100]<0>(&v28, dword_2582DAE90);
      std::wstring::basic_string[abi:ne200100]<0>(__p, &dword_2582DAE18);
      std::wstring::basic_string[abi:ne200100]<0>(v24, &dword_2582DAE18);
      blahtex::Exception::Exception(v14, &v28, a2, __p, v24);
    }

    std::wstring::basic_string[abi:ne200100]<0>(&v28, dword_2582DB054);
    std::wstring::basic_string[abi:ne200100]<0>(__p, &dword_2582DAE18);
    std::wstring::basic_string[abi:ne200100]<0>(v24, &dword_2582DAE18);
    blahtex::Exception::Exception(v14, &v28, a2, __p, v24);
  }

  result = *(v3 + 10);
  if (result == 3)
  {
    std::wstring::basic_string[abi:ne200100]<0>(&v28, &unk_2582DAF2C);
    if (blahtex::Token::operator==(a2, &v28))
    {
      v5 = 1;
    }

    else
    {
      std::wstring::basic_string[abi:ne200100]<0>(__p, &unk_2582DAF34);
      if (blahtex::Token::operator==(a2, __p))
      {
        v5 = 1;
      }

      else
      {
        std::wstring::basic_string[abi:ne200100]<0>(v24, &unk_2582DAD74);
        if (blahtex::Token::operator==(a2, v24))
        {
          v5 = 1;
        }

        else
        {
          std::wstring::basic_string[abi:ne200100]<0>(v22, &unk_2582DAD7C);
          if (blahtex::Token::operator==(a2, v22))
          {
            v5 = 1;
          }

          else
          {
            std::wstring::basic_string[abi:ne200100]<0>(v20, &unk_2582DAD84);
            v5 = blahtex::Token::operator==(a2, v20);
            if (v21 < 0)
            {
              operator delete(v20[0]);
            }
          }

          if (v23 < 0)
          {
            operator delete(v22[0]);
          }
        }

        if (v25 < 0)
        {
          operator delete(v24[0]);
        }
      }

      if (v27 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (v29 < 0)
    {
      operator delete(v28);
    }

    if (v5)
    {
      v6 = __cxa_allocate_exception(0x30uLL);
      std::wstring::basic_string[abi:ne200100]<0>(&v28, dword_2582DAF3C);
      std::operator+<wchar_t>(&unk_2582DAE10, a2, __p);
      std::wstring::basic_string[abi:ne200100]<0>(v24, &dword_2582DAE18);
      blahtex::Exception::Exception(v6, &v28, a2, __p, v24);
    }

    std::wstring::basic_string[abi:ne200100]<0>(&v28, dword_2582DAFC0);
    v16 = blahtex::Token::operator==(a2, &v28);
    if (v29 < 0)
    {
      operator delete(v28);
    }

    if (v16)
    {
      v17 = __cxa_allocate_exception(0x30uLL);
      std::wstring::basic_string[abi:ne200100]<0>(&v28, dword_2582DAF3C);
      std::wstring::basic_string[abi:ne200100]<0>(__p, dword_2582DAFC0);
      std::wstring::basic_string[abi:ne200100]<0>(v24, dword_2582DAFCC);
      std::wstring::basic_string[abi:ne200100]<0>(v22, &dword_2582DAE18);
      blahtex::Exception::Exception(v17, &v28, __p, v24, v22);
    }

    std::wstring::basic_string[abi:ne200100]<0>(&v28, &unk_2582DB008);
    v18 = blahtex::Token::operator==(a2, &v28);
    if (v29 < 0)
    {
      operator delete(v28);
    }

    v19 = __cxa_allocate_exception(0x30uLL);
    if (v18)
    {
      std::wstring::basic_string[abi:ne200100]<0>(&v28, dword_2582DAF3C);
      std::wstring::basic_string[abi:ne200100]<0>(__p, &unk_2582DB008);
      std::wstring::basic_string[abi:ne200100]<0>(v24, dword_2582DB010);
      std::wstring::basic_string[abi:ne200100]<0>(v22, &dword_2582DAE18);
      blahtex::Exception::Exception(v19, &v28, __p, v24, v22);
    }

    std::wstring::basic_string[abi:ne200100]<0>(&v28, dword_2582DB054);
    std::wstring::basic_string[abi:ne200100]<0>(__p, &dword_2582DAE18);
    std::wstring::basic_string[abi:ne200100]<0>(v24, &dword_2582DAE18);
    blahtex::Exception::Exception(v19, &v28, a2, __p, v24);
  }

  return result;
}

void sub_2582B290C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (*(v33 - 33) < 0)
  {
    operator delete(*(v33 - 56));
  }

  _Unwind_Resume(exception_object);
}

void sub_2582B2EA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a33 < 0)
  {
    operator delete(a28);
    if ((v35 & 1) == 0)
    {
LABEL_12:
      v37 = *v33;
      *v33 = 0;
      if (v37)
      {
        (*(*v37 + 8))(v37);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v35)
  {
    goto LABEL_12;
  }

  __cxa_free_exception(v34);
  goto LABEL_12;
}

void blahtex::Parser::ParseMathList(uint64_t *__return_ptr a1@<X8>, blahtex::Parser *this@<X0>)
{
  v2 = MEMORY[0x28223BE20](a1, this);
  v5 = v3;
  v4 = v2;
  operator new();
}

uint64_t *std::unique_ptr<blahtex::ParseTree::MathNode>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void blahtex::Parser::ParseMathField(blahtex::MacroProcessor **this)
{
  blahtex::MacroProcessor::SkipWhitespace(*this);
  blahtex::MacroProcessor::Get(*this, __p);
  blahtex::translateToken(__p, v14);
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  MathTokenCode = blahtex::Parser::GetMathTokenCode(v2, v14);
  if (MathTokenCode != 4)
  {
    if (MathTokenCode == 26)
    {
      operator new();
    }

    if (!MathTokenCode)
    {
      exception = __cxa_allocate_exception(0x30uLL);
      std::wstring::basic_string[abi:ne200100]<0>(__p, dword_2582DB260);
      std::wstring::basic_string[abi:ne200100]<0>(v10, &dword_2582DAE18);
      std::wstring::basic_string[abi:ne200100]<0>(v9, &dword_2582DAE18);
      std::wstring::basic_string[abi:ne200100]<0>(v8, &dword_2582DAE18);
      blahtex::Exception::Exception(exception, __p, v10, v9, v8);
    }

    v6 = __cxa_allocate_exception(0x30uLL);
    std::wstring::basic_string[abi:ne200100]<0>(__p, dword_2582DB2B8);
    std::wstring::basic_string[abi:ne200100]<0>(v10, &dword_2582DAE18);
    std::wstring::basic_string[abi:ne200100]<0>(v9, &dword_2582DAE18);
    blahtex::Exception::Exception(v6, __p, v14, v10, v9);
  }

  blahtex::Parser::ParseMathList(this);
  blahtex::MacroProcessor::Get(*this, __p);
  std::wstring::basic_string[abi:ne200100]<0>(v10, &unk_2582DB20C);
  v4 = std::operator!=[abi:ne200100]<wchar_t,std::char_traits<wchar_t>,std::allocator<wchar_t>>(__p, v10);
  if (v11 < 0)
  {
    operator delete(v10[0]);
  }

  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  if (v4)
  {
    v7 = __cxa_allocate_exception(0x30uLL);
    std::wstring::basic_string[abi:ne200100]<0>(__p, dword_2582DB214);
    std::wstring::basic_string[abi:ne200100]<0>(v10, &dword_2582DAE18);
    std::wstring::basic_string[abi:ne200100]<0>(v9, &dword_2582DAE18);
    std::wstring::basic_string[abi:ne200100]<0>(v8, &dword_2582DAE18);
    blahtex::Exception::Exception(v7, __p, v10, v9, v8);
  }

  if (v15 < 0)
  {
    operator delete(v14[0]);
  }
}

void sub_2582B72A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a33 < 0)
  {
    operator delete(a28);
    if ((v35 & 1) == 0)
    {
LABEL_12:
      v38 = *v33;
      *v33 = 0;
      if (v38)
      {
        (*(*v38 + 8))(v38);
      }

      if (*(v36 - 41) < 0)
      {
        operator delete(*(v36 - 64));
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v35)
  {
    goto LABEL_12;
  }

  __cxa_free_exception(v34);
  goto LABEL_12;
}

blahtex::ParseTree::MathSymbol *blahtex::ParseTree::MathSymbol::MathSymbol(blahtex::ParseTree::MathSymbol *this, const blahtex::Token *a2)
{
  *this = &unk_28696BBE8;
  blahtex::Token::Token((this + 8), a2);
  return this;
}

void sub_2582B7834(_Unwind_Exception *a1)
{
  *v1 = 0;
  (*(*v2 + 8))(v2);
  _Unwind_Resume(a1);
}

void sub_2582B7918(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x2582B7880);
}

void std::vector<blahtex::ParseTree::MathNode *>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<EQKitLayoutContext *>>(a1, v10);
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

uint64_t std::unique_ptr<blahtex::ParseTree::MathNode>::release[abi:ne200100](uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  return v1;
}

void *blahtex::Parser::PrepareScripts(blahtex::Parser *this, blahtex::ParseTree::MathList *a2)
{
  v2 = *(a2 + 2);
  if (*(a2 + 1) == v2)
  {
    operator new();
  }

  v3 = *(v2 - 8);
  {
    operator new();
  }

  return v4;
}

uint64_t std::unique_ptr<blahtex::ParseTree::MathNode>::reset[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void blahtex::Parser::ParseColourName(blahtex::MacroProcessor **this@<X0>, uint64_t a2@<X8>)
{
  blahtex::MacroProcessor::SkipWhitespace(*this);
  blahtex::MacroProcessor::Get(*this, v23);
  std::wstring::basic_string[abi:ne200100]<0>(__p, "{");
  v4 = std::operator!=[abi:ne200100]<wchar_t,std::char_traits<wchar_t>,std::allocator<wchar_t>>(v23, __p);
  if (v22 < 0)
  {
    operator delete(__p[0]);
  }

  if (v24 < 0)
  {
    operator delete(v23[0]);
  }

  if (v4)
  {
    exception = __cxa_allocate_exception(0x30uLL);
    std::wstring::basic_string[abi:ne200100]<0>(v23, "M");
    std::wstring::basic_string[abi:ne200100]<0>(__p, "\");
    std::wstring::basic_string[abi:ne200100]<0>(v20, &dword_2582DAE18);
    std::wstring::basic_string[abi:ne200100]<0>(v19, &dword_2582DAE18);
    blahtex::Exception::Exception(exception, v23, __p, v20, v19);
  }

  v5 = 0;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  do
  {
    while (1)
    {
      blahtex::MacroProcessor::Get(*this, v23);
      std::wstring::basic_string[abi:ne200100]<0>(__p, &unk_2582DB20C);
      v6 = blahtex::Token::operator==(v23, __p);
      v7 = v6;
      if (v22 < 0)
      {
        operator delete(__p[0]);
        if (v7)
        {
LABEL_9:
          if (blahtex::lookupColour(a2) == 0x10000000)
          {
            v15 = __cxa_allocate_exception(0x30uLL);
            std::wstring::basic_string[abi:ne200100]<0>(__p, "I");
            std::wstring::basic_string[abi:ne200100]<0>(v20, &dword_2582DAE18);
            std::wstring::basic_string[abi:ne200100]<0>(v19, &dword_2582DAE18);
            blahtex::Exception::Exception(v15, __p, a2, v20, v19);
          }

          v5 = 1;
          v8 = v24;
          goto LABEL_36;
        }
      }

      else if (v6)
      {
        goto LABEL_9;
      }

      std::wstring::basic_string[abi:ne200100]<0>(__p, &dword_2582DAE18);
      v9 = blahtex::Token::operator==(v23, __p);
      if (v22 < 0)
      {
        operator delete(__p[0]);
      }

      if (v9)
      {
        v16 = __cxa_allocate_exception(0x30uLL);
        std::wstring::basic_string[abi:ne200100]<0>(__p, dword_2582DB214);
        std::wstring::basic_string[abi:ne200100]<0>(v20, &dword_2582DAE18);
        std::wstring::basic_string[abi:ne200100]<0>(v19, &dword_2582DAE18);
        std::wstring::basic_string[abi:ne200100]<0>(v18, &dword_2582DAE18);
        blahtex::Exception::Exception(v16, __p, v20, v19, v18);
      }

      v10 = (v24 & 0x80u) == 0 ? v23 : v23[0];
      v11 = (v24 & 0x80u) == 0 ? v24 : v23[1];
      std::wstring::append(a2, v10, v11);
      v8 = v24;
      if (v24 < 0)
      {
        break;
      }

      if (v24 != 1)
      {
        goto LABEL_43;
      }

      v12 = v23[0];
      if (SLODWORD(v23[0]) <= 64)
      {
        goto LABEL_28;
      }

      if (LODWORD(v23[0]) >= 0x5B)
      {
        if (SLODWORD(v23[0]) >= 97)
        {
          if (LODWORD(v23[0]) >= 0x7B)
          {
            goto LABEL_43;
          }

          goto LABEL_37;
        }

LABEL_28:
        if (SLODWORD(v23[0]) < 48)
        {
          goto LABEL_43;
        }

        goto LABEL_35;
      }

LABEL_37:
      if (v7)
      {
        goto LABEL_40;
      }
    }

    if (v23[1] != 1)
    {
      goto LABEL_43;
    }

    v13 = *v23[0];
    if (*v23[0] >= 65 && (v13 < 0x5B || v13 - 97 < 0x1A))
    {
      goto LABEL_36;
    }

    v12 = *v23[0];
    if (*v23[0] <= 47)
    {
      goto LABEL_43;
    }

LABEL_35:
    if (v12 >= 0x3A)
    {
LABEL_43:
      v14 = __cxa_allocate_exception(0x30uLL);
      std::wstring::basic_string[abi:ne200100]<0>(__p, "I");
      std::operator+[abi:ne200100]<wchar_t,std::char_traits<wchar_t>,std::allocator<wchar_t>>(".", a2, v20);
      std::wstring::basic_string[abi:ne200100]<0>(v19, &dword_2582DAE18);
      std::wstring::basic_string[abi:ne200100]<0>(v18, &dword_2582DAE18);
      blahtex::Exception::Exception(v14, __p, v20, v19, v18);
    }

LABEL_36:
    if ((v8 & 0x80) == 0)
    {
      goto LABEL_37;
    }

    operator delete(v23[0]);
  }

  while (!v7);
LABEL_40:
  if (!(v5 & 1 | (*(a2 + 23) >= 0)))
  {
    operator delete(*a2);
  }
}

void sub_2582B800C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (a38 < 0)
  {
    operator delete(a33);
    if ((v39 & 1) == 0)
    {
LABEL_12:
      _Unwind_Resume(a1);
    }
  }

  else if (!v39)
  {
    goto LABEL_12;
  }

  __cxa_free_exception(v38);
  goto LABEL_12;
}

uint64_t std::wstring::size[abi:ne200100](uint64_t a1)
{
  result = *(a1 + 23);
  if (result < 0)
  {
    return *(a1 + 8);
  }

  return result;
}

uint64_t std::operator+[abi:ne200100]<wchar_t,std::char_traits<wchar_t>,std::allocator<wchar_t>>@<X0>(__int32 *a1@<X1>, const void **a2@<X0>, void **a3@<X8>)
{
  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  v7 = wcslen(a1);
  result = std::wstring::basic_string[abi:ne200100](a3, v6 + v7);
  if (*(a3 + 23) < 0)
  {
    a3 = *a3;
  }

  if (v6)
  {
    if (*(a2 + 23) >= 0)
    {
      v9 = a2;
    }

    else
    {
      v9 = *a2;
    }

    result = memmove(a3, v9, 4 * v6);
  }

  if (v7)
  {
    result = memmove(a3 + 4 * v6, a1, 4 * v7);
  }

  *(a3 + v6 + v7) = 0;
  return result;
}

void *blahtex::ParseTree::MathList::MathList(void *this)
{
  *this = &unk_28696BC38;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

BOOL std::wstring::empty[abi:ne200100](uint64_t a1)
{
  v1 = *(a1 + 23);
  if (v1 < 0)
  {
    v1 = *(a1 + 8);
  }

  return v1 == 0;
}

void *std::unique_ptr<blahtex::ParseTree::MathNode>::unique_ptr[abi:ne200100]<blahtex::ParseTree::MathList,std::default_delete<blahtex::ParseTree::MathList>,void,void>(void *result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  return result;
}

uint64_t blahtex::ParseTree::MathCommand2Args::MathCommand2Args(uint64_t a1, const blahtex::Token *a2, uint64_t *a3, uint64_t *a4, char a5)
{
  *a1 = &unk_28696B6E8;
  blahtex::Token::Token((a1 + 8), a2);
  v9 = *a3;
  *a3 = 0;
  *(a1 + 40) = v9;
  v10 = *a4;
  *a4 = 0;
  *(a1 + 48) = v10;
  *(a1 + 56) = a5;
  return a1;
}

void *blahtex::ParseTree::MathGroup::MathGroup(void *result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  *result = &unk_28696B7D8;
  result[1] = v2;
  return result;
}

BOOL std::operator!=[abi:ne200100]<wchar_t,std::char_traits<wchar_t>,std::allocator<wchar_t>>(const __int32 *a1, const __int32 *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = *(a1 + 1);
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 1);
  }

  if (v3 != v4)
  {
    return 1;
  }

  if (!v3)
  {
    return 0;
  }

  if (v5 < 0)
  {
    a2 = *a2;
  }

  if (v2 < 0)
  {
    a1 = *a1;
  }

  return wmemcmp(a1, a2, v3) != 0;
}

uint64_t std::__wrap_iter<blahtex::ParseTree::MathTableRow **>::operator++[abi:ne200100](uint64_t *a1)
{
  v1 = *a1;
  *a1 += 8;
  return v1;
}

uint64_t blahtex::ParseTree::MathEnvironment::MathEnvironment(uint64_t a1, const blahtex::Token *a2, uint64_t *a3, char a4)
{
  *a1 = &unk_28696B968;
  blahtex::Token::Token((a1 + 8), a2);
  v7 = *a3;
  *a3 = 0;
  *(a1 + 40) = v7;
  *(a1 + 48) = a4;
  return a1;
}

void blahtex::Parser::ParseTextField(blahtex::MacroProcessor **this)
{
  blahtex::MacroProcessor::SkipWhitespace(*this);
  blahtex::MacroProcessor::Get(*this, v11);
  TextTokenCode = blahtex::Parser::GetTextTokenCode(v3, v11);
  if (TextTokenCode != 4)
  {
    if (TextTokenCode == 26)
    {
      operator new();
    }

    if (!TextTokenCode)
    {
      exception = __cxa_allocate_exception(0x30uLL);
      std::wstring::basic_string[abi:ne200100]<0>(&v10, dword_2582DB260);
      std::wstring::basic_string[abi:ne200100]<0>(__p, &dword_2582DAE18);
      std::wstring::basic_string[abi:ne200100]<0>(v8, &dword_2582DAE18);
      std::wstring::basic_string[abi:ne200100]<0>(v7, &dword_2582DAE18);
      blahtex::Exception::Exception(exception, &v10, __p, v8, v7);
    }

    v6 = __cxa_allocate_exception(0x30uLL);
    std::wstring::basic_string[abi:ne200100]<0>(&v10, dword_2582DB2B8);
    std::wstring::basic_string[abi:ne200100]<0>(__p, &dword_2582DAE18);
    std::wstring::basic_string[abi:ne200100]<0>(v8, &dword_2582DAE18);
    blahtex::Exception::Exception(v6, &v10, v11, __p, v8);
  }

  operator new();
}

void sub_2582B8810(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a32 < 0)
  {
    operator delete(a27);
    if ((v35 & 1) == 0)
    {
LABEL_12:
      *v32 = 0;
      (*(*v33 + 8))(v33);
      if (*(v36 - 57) < 0)
      {
        operator delete(*(v36 - 80));
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v35)
  {
    goto LABEL_12;
  }

  __cxa_free_exception(v34);
  goto LABEL_12;
}

void *blahtex::ParseTree::EnterTextMode::EnterTextMode(void *a1, const blahtex::Token *a2, uint64_t *a3)
{
  *a1 = &unk_28696B9B8;
  blahtex::Token::Token((a1 + 1), a2);
  v5 = *a3;
  *a3 = 0;
  a1[5] = v5;
  return a1;
}

void *blahtex::ParseTree::MathPhantom::MathPhantom(void *result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  *result = &unk_28696B828;
  result[1] = v2;
  return result;
}

void *blahtex::ParseTree::MathCancel::MathCancel(void *result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  *result = &unk_28696B878;
  result[1] = v2;
  return result;
}

char *std::wstring::operator std::wstring_view[abi:ne200100](char *result)
{
  if ((result[23] & 0x8000000000000000) != 0)
  {
    return *result;
  }

  return result;
}

blahtex::ParseTree::MathMiddle *blahtex::ParseTree::MathMiddle::MathMiddle(blahtex::ParseTree::MathMiddle *this, const blahtex::Token *a2)
{
  *this = &unk_28696B738;
  blahtex::Token::Token((this + 8), a2);
  return this;
}

uint64_t *std::unique_ptr<blahtex::ParseTree::MathNode>::operator=[abi:ne200100](uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = 0;
  v4 = *a1;
  *a1 = v3;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return a1;
}

void *blahtex::ParseTree::MathLimits::MathLimits(void *a1, const blahtex::Token *a2, uint64_t *a3)
{
  *a1 = &unk_28696B8C8;
  blahtex::Token::Token((a1 + 1), a2);
  v5 = *a3;
  *a3 = 0;
  a1[5] = v5;
  return a1;
}

blahtex::ParseTree::MathStateChange *blahtex::ParseTree::MathStateChange::MathStateChange(blahtex::ParseTree::MathStateChange *this, const blahtex::Token *a2)
{
  *this = &unk_28696BD18;
  blahtex::Token::Token((this + 8), a2);
  return this;
}

void *blahtex::ParseTree::MathCommand1Arg::MathCommand1Arg(void *a1, const blahtex::Token *a2, uint64_t *a3)
{
  *a1 = &unk_28696B698;
  blahtex::Token::Token((a1 + 1), a2);
  v5 = *a3;
  *a3 = 0;
  a1[5] = v5;
  return a1;
}

void sub_2582B9410(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (*(v40 - 97) < 0)
  {
    operator delete(*(v40 - 120));
    if ((v38 & 1) == 0)
    {
LABEL_12:
      (*(*a10 + 8))(a10);
      _Unwind_Resume(a1);
    }
  }

  else if (!v38)
  {
    goto LABEL_12;
  }

  __cxa_free_exception(v39);
  goto LABEL_12;
}

void *blahtex::ParseTree::MathDelimited::MathDelimited(void *a1, uint64_t *a2, blahtex::Token *a3, const blahtex::Token *a4)
{
  v6 = *a2;
  *a2 = 0;
  *a1 = &unk_28696B918;
  a1[1] = v6;
  blahtex::Token::Token((a1 + 2), a3);
  blahtex::Token::Token((a1 + 6), a4);
  return a1;
}

void sub_2582B97CC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  v3 = *(v1 + 8);
  *(v1 + 8) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  _Unwind_Resume(exception_object);
}

blahtex::ParseTree::MathBig *blahtex::ParseTree::MathBig::MathBig(blahtex::ParseTree::MathBig *this, const blahtex::Token *a2, const blahtex::Token *a3)
{
  *this = &unk_28696B788;
  v5 = (this + 40);
  blahtex::Token::Token((this + 8), a2);
  blahtex::Token::Token(v5, a3);
  return this;
}

void sub_2582B9884(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

blahtex::ParseTree::MathColour *blahtex::ParseTree::MathColour::MathColour(blahtex::ParseTree::MathColour *this, const blahtex::Token *a2)
{
  std::wstring::basic_string[abi:ne200100]<0>(v5, "\");
  blahtex::Token::Token(__p, v5, 0);
  *this = &unk_28696BD18;
  blahtex::Token::Token((this + 8), __p);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (v6 < 0)
  {
    operator delete(v5[0]);
  }

  *this = &unk_28696BD70;
  blahtex::Token::Token((this + 40), a2);
  return this;
}

void sub_2582B9970(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  *v21 = v23;
  if (*(v21 + 31) < 0)
  {
    operator delete(*v22);
  }

  _Unwind_Resume(exception_object);
}

blahtex::ParseTree::TextColour *blahtex::ParseTree::TextColour::TextColour(blahtex::ParseTree::TextColour *this, const blahtex::Token *a2)
{
  std::wstring::basic_string[abi:ne200100]<0>(v5, "\");
  blahtex::Token::Token(__p, v5, 0);
  *this = &unk_28696BDC8;
  blahtex::Token::Token((this + 8), __p);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (v6 < 0)
  {
    operator delete(v5[0]);
  }

  *this = &unk_28696BE20;
  blahtex::Token::Token((this + 40), a2);
  return this;
}

void sub_2582B9A8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  *v21 = v23;
  if (*(v21 + 31) < 0)
  {
    operator delete(*v22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::unordered_map<std::wstring,blahtex::Parser::TokenCode>::unordered_map<std::pair<std::wstring_view,blahtex::Parser::TokenCode> const*>(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 0u;
  *(result + 16) = 0u;
  *(result + 32) = 1065353216;
  if (a2 != a3)
  {
    std::__hash_table<std::__hash_value_type<std::wstring,blahtex::Parser::TokenCode>,std::__unordered_map_hasher<std::wstring,std::__hash_value_type<std::wstring,blahtex::Parser::TokenCode>,std::hash<std::wstring>,std::equal_to<std::wstring>,true>,std::__unordered_map_equal<std::wstring,std::__hash_value_type<std::wstring,blahtex::Parser::TokenCode>,std::equal_to<std::wstring>,std::hash<std::wstring>,true>,std::allocator<std::__hash_value_type<std::wstring,blahtex::Parser::TokenCode>>>::__emplace_unique_impl<std::pair<std::wstring_view,blahtex::Parser::TokenCode> const&>();
  }

  return result;
}

void sub_2582B9BB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::wstring,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2582B9CE8(_Unwind_Exception *a1)
{
  *v2 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::wstring,void *>>>::operator()[abi:ne200100](v3, v1);
  _Unwind_Resume(a1);
}

uint64_t std::wstring::basic_string[abi:ne200100](uint64_t result, unint64_t a2)
{
  if (a2 >= 0x3FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (a2 > 4)
  {
    if ((a2 | 1) == 5)
    {
      v2 = 7;
    }

    else
    {
      v2 = (a2 | 1) + 1;
    }

    if (!(v2 >> 62))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = 0;
  *(result + 23) = a2;
  return result;
}

blahtex::Token *blahtex::Token::Token(blahtex::Token *this)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  MEMORY[0x259C7C920]();
  *(this + 3) = 0;
  return this;
}

void sub_2582B9DD8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::wstring *blahtex::Token::Token(std::wstring *a1, const std::wstring *a2, std::wstring::size_type a3)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  std::wstring::operator=(a1, a2);
  a1[1].__r_.__value_.__r.__words[0] = a3;
  return a1;
}

void sub_2582B9E30(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::wstring *blahtex::Token::Token(std::wstring *this, const std::wstring *a2)
{
  this->__r_.__value_.__r.__words[0] = 0;
  this->__r_.__value_.__l.__size_ = 0;
  this->__r_.__value_.__r.__words[2] = 0;
  std::wstring::operator=(this, a2);
  this[1].__r_.__value_.__r.__words[0] = a2[1].__r_.__value_.__r.__words[0];
  return this;
}

void sub_2582B9E8C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::wstring *blahtex::Token::operator=(std::wstring *this, std::wstring *a2)
{
  if (this != a2)
  {
    std::wstring::operator=(this, a2);
    this[1].__r_.__value_.__r.__words[0] = a2[1].__r_.__value_.__r.__words[0];
  }

  return this;
}

uint64_t blahtex::Token::setSource(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = (a4 - a3) >> 2;
  v5 = v4 >= 0x200 || a4 == a3;
  v6 = v4 | ((a3 - a2) << 7);
  if (v5)
  {
    v6 = 0;
  }

  *(result + 24) = v6;
  return result;
}

unint64_t blahtex::Token::append(std::wstring *this, std::wstring::size_type *a2)
{
  v2 = a2;
  v4 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  std::wstring::append(this, a2, v5);
  result = blahtex::_combineTokenSource(this, v2, v6);
  if (result)
  {
    this[1].__r_.__value_.__r.__words[0] = result;
  }

  return result;
}

unint64_t blahtex::_combineTokenSource(blahtex *this, const blahtex::Token *a2, const blahtex::Token *a3)
{
  v3 = *(this + 3);
  if (!v3)
  {
    return 0;
  }

  v4 = *(a2 + 3);
  if (!v4 || (*(this + 3) & 0x1FFLL) + (*(this + 3) >> 9) != v4 >> 9)
  {
    return 0;
  }

  v5 = (*(a2 + 3) & 0x1FFLL) + (*(this + 3) & 0x1FFLL);
  v6 = v5 | v3 & 0xFFFFFFFFFFFFFE00;
  if (v5 <= 0x1FE)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

unint64_t blahtex::Token::sourcePrefixedBy(blahtex::Token *this, const blahtex::Token *a2, const blahtex::Token *a3)
{
  result = blahtex::_combineTokenSource(a2, this, a3);
  if (result)
  {
    *(this + 3) = result;
  }

  return result;
}

BOOL blahtex::Token::operator==(const __int32 *a1, const __int32 *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = *(a1 + 1);
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 1);
  }

  if (v3 != v4)
  {
    return 0;
  }

  if (!v3)
  {
    return 1;
  }

  if (v5 < 0)
  {
    a2 = *a2;
  }

  if (v2 < 0)
  {
    a1 = *a1;
  }

  return wmemcmp(a1, a2, v3) == 0;
}

void *blahtex::DelimiterTable(blahtex *this)
{
  {
    std::unordered_map<std::wstring_view,std::wstring_view>::unordered_map<std::pair<std::wstring_view,std::wstring_view> const*>(&blahtex::DelimiterTable(void)::gDelimiterTable, &blahtex::gDelimiterArray, &blahtex::ParseTree::MathCommand1Arg::BuildLayoutTree(blahtex::TexProcessingState const&)const::flavourCommandArray);
  }

  return &blahtex::DelimiterTable(void)::gDelimiterTable;
}

void blahtex::ParseTree::MathCommand1Arg::BuildLayoutTree(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = (a1 + 8);
  std::wstring::basic_string[abi:ne200100]<0>(&v33, dword_2582E1D0C);
  v7 = blahtex::Token::operator==(v6, &v33);
  v8 = v7;
  if (SHIBYTE(v34) < 0)
  {
    operator delete(v33);
    if (v8)
    {
LABEL_3:
      operator new();
    }
  }

  else if (v7)
  {
    goto LABEL_3;
  }

  std::wstring::basic_string[abi:ne200100]<0>(&v33, dword_2582E1D24);
  v9 = blahtex::Token::operator==(v6, &v33);
  v10 = v9;
  if (SHIBYTE(v34) < 0)
  {
    operator delete(v33);
    if (v10)
    {
LABEL_7:
      operator new();
    }
  }

  else if (v9)
  {
    goto LABEL_7;
  }

  std::wstring::basic_string[abi:ne200100]<0>(&v33, dword_2582E1D48);
  v11 = blahtex::Token::operator==(v6, &v33);
  v12 = v11;
  if (SHIBYTE(v34) < 0)
  {
    operator delete(v33);
    if (v12)
    {
LABEL_11:
      operator new();
    }
  }

  else if (v11)
  {
    goto LABEL_11;
  }

  std::wstring::basic_string[abi:ne200100]<0>(&v33, dword_2582E1D68);
  if (blahtex::Token::operator==(v6, &v33))
  {
    v13 = 1;
  }

  else
  {
    std::wstring::basic_string[abi:ne200100]<0>(&v35, dword_2582E1D98);
    v13 = blahtex::Token::operator==(v6, &v35);
    if (SHIBYTE(v36) < 0)
    {
      operator delete(v35);
    }
  }

  if (SHIBYTE(v34) < 0)
  {
    operator delete(v33);
  }

  if (v13)
  {
    v35 = *a2;
    v36 = *(a2 + 2);
    v14 = *(a2 + 4);
    if (v14 < 4)
    {
      LODWORD(v36) = dword_2582E37A0[v14];
    }

    operator new();
  }

  std::wstring::basic_string[abi:ne200100]<0>(&v33, dword_2582E1DDC);
  if (blahtex::Token::operator==(v6, &v33))
  {
    v15 = 1;
  }

  else
  {
    std::wstring::basic_string[abi:ne200100]<0>(&v35, dword_2582E1E08);
    v15 = blahtex::Token::operator==(v6, &v35);
    if (SHIBYTE(v36) < 0)
    {
      operator delete(v35);
    }
  }

  if (SHIBYTE(v34) < 0)
  {
    operator delete(v33);
  }

  if (v15)
  {
    operator new();
  }

  std::wstring::basic_string[abi:ne200100]<0>(&v33, dword_2582E1E48);
  v16 = blahtex::Token::operator==(v6, &v33);
  if (SHIBYTE(v34) < 0)
  {
    operator delete(v33);
  }

  if (v16)
  {
    operator new();
  }

  std::wstring::basic_string[abi:ne200100]<0>(&v33, dword_2582E1E80);
  if (blahtex::Token::operator==(v6, &v33))
  {
    v17 = 1;
  }

  else
  {
    std::wstring::basic_string[abi:ne200100]<0>(&v35, dword_2582E1EB8);
    v17 = blahtex::Token::operator==(v6, &v35);
    if (SHIBYTE(v36) < 0)
    {
      operator delete(v35);
    }
  }

  if (SHIBYTE(v34) < 0)
  {
    operator delete(v33);
  }

  if (v17)
  {
    v33 = *a2;
    v34 = *(a2 + 2);
    LODWORD(v33) = 1;
    (*(**(a1 + 40) + 16))(*(a1 + 40), &v33);
    *(*a3 + 12) = 1;
    std::wstring::basic_string[abi:ne200100]<0>(&v35, dword_2582E1E80);
    if (blahtex::Token::operator==(v6, &v35))
    {
      v18 = 2;
    }

    else
    {
      v18 = 0;
    }

    *(*a3 + 16) = v18;
    if (SHIBYTE(v36) < 0)
    {
      operator delete(v35);
    }
  }

  else
  {
    {
      std::unordered_map<std::wstring_view,blahtex::LayoutTree::Node::Flavour>::unordered_map<std::pair<std::wstring_view,blahtex::LayoutTree::Node::Flavour> const*>(blahtex::ParseTree::MathCommand1Arg::BuildLayoutTree(blahtex::TexProcessingState const&)const::flavourCommandTable, &blahtex::ParseTree::MathCommand1Arg::BuildLayoutTree(blahtex::TexProcessingState const&)const::flavourCommandArray, &blahtex::ParseTree::MathCommand1Arg::BuildLayoutTree(blahtex::TexProcessingState const&)const::fontCommandArray);
    }

    v19 = *(a1 + 31);
    if (v19 < 0)
    {
      v20 = *(a1 + 8);
      v19 = *(a1 + 16);
    }

    else
    {
      v20 = v6;
    }

    *&v33 = v20;
    *(&v33 + 1) = v19;
    v21 = std::__hash_table<std::wstring_view,std::hash<std::wstring_view>,std::equal_to<std::wstring_view>,std::allocator<std::wstring_view>>::find<std::wstring_view>(blahtex::ParseTree::MathCommand1Arg::BuildLayoutTree(blahtex::TexProcessingState const&)const::flavourCommandTable, &v33);
    if (v21)
    {
      v22 = v21;
      (*(**(a1 + 40) + 16))(*(a1 + 40), a2);
      v23 = *(v22 + 8);
      v24 = *a3;
      *(*a3 + 12) = v23;
      if (v23 == 1)
      {
        *(v24 + 16) = 0;
      }
    }

    else
    {
      {
        std::unordered_map<std::wstring_view,blahtex::TexMathFont::Family>::unordered_map<std::pair<std::wstring_view,blahtex::TexMathFont::Family> const*>(blahtex::ParseTree::MathCommand1Arg::BuildLayoutTree(blahtex::TexProcessingState const&)const::fontCommandTable, &blahtex::ParseTree::MathCommand1Arg::BuildLayoutTree(blahtex::TexProcessingState const&)const::fontCommandArray, &blahtex::ParseTree::MathCommand1Arg::BuildLayoutTree(blahtex::TexProcessingState const&)const::accentCommandArray);
      }

      v25 = *(a1 + 31);
      if (v25 < 0)
      {
        v26 = *(a1 + 8);
        v25 = *(a1 + 16);
      }

      else
      {
        v26 = v6;
      }

      *&v33 = v26;
      *(&v33 + 1) = v25;
      v27 = std::__hash_table<std::wstring_view,std::hash<std::wstring_view>,std::equal_to<std::wstring_view>,std::allocator<std::wstring_view>>::find<std::wstring_view>(blahtex::ParseTree::MathCommand1Arg::BuildLayoutTree(blahtex::TexProcessingState const&)const::fontCommandTable, &v33);
      if (v27)
      {
        v33 = *a2;
        v34 = *(a2 + 2);
        LODWORD(v33) = *(v27 + 8);
      }

      else
      {
        std::wstring::basic_string[abi:ne200100]<0>(&v33, dword_2582E215C);
        v28 = blahtex::Token::operator==(v6, &v33);
        if (SHIBYTE(v34) < 0)
        {
          operator delete(v33);
        }

        if (!v28)
        {
          {
            std::unordered_map<std::wstring_view,blahtex::ParseTree::AccentInfo>::unordered_map<std::pair<std::wstring_view,blahtex::ParseTree::AccentInfo> const*>(blahtex::ParseTree::MathCommand1Arg::BuildLayoutTree(blahtex::TexProcessingState const&)const::accentCommandTable, &blahtex::ParseTree::MathCommand1Arg::BuildLayoutTree(blahtex::TexProcessingState const&)const::accentCommandArray, &blahtex::ParseTree::MathBig::BuildLayoutTree(blahtex::TexProcessingState const&)const::bigCommandArray);
          }

          v29 = *(a1 + 31);
          if (v29 < 0)
          {
            v30 = *(a1 + 8);
            v29 = *(a1 + 16);
          }

          else
          {
            v30 = v6;
          }

          *&v33 = v30;
          *(&v33 + 1) = v29;
          if (std::__hash_table<std::wstring_view,std::hash<std::wstring_view>,std::equal_to<std::wstring_view>,std::allocator<std::wstring_view>>::find<std::wstring_view>(blahtex::ParseTree::MathCommand1Arg::BuildLayoutTree(blahtex::TexProcessingState const&)const::accentCommandTable, &v33))
          {
            (*(**(a1 + 40) + 16))(&v32);
            operator new();
          }

          exception = __cxa_allocate_exception(0x10uLL);
          std::logic_error::logic_error(exception, "Unexpected command in MathCommand1Arg::BuildLayoutTree");
          __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
        }

        v33 = *a2;
        v34 = *(a2 + 2);
        BYTE4(v33) = 1;
        LODWORD(v33) = 0;
      }

      (*(**(a1 + 40) + 16))(*(a1 + 40), &v33);
    }
  }
}

void blahtex::ParseTree::MathCommand2Args::BuildLayoutTree(uint64_t a1, __int128 *a2)
{
  std::wstring::basic_string[abi:ne200100]<0>(&v27, &dword_2582E1B08);
  std::wstring::basic_string[abi:ne200100]<0>(&v26, &dword_2582E1B08);
  std::wstring::basic_string[abi:ne200100]<0>(v22, dword_2582E25C4);
  if (blahtex::Token::operator==((a1 + 8), v22))
  {
    v4 = 1;
  }

  else
  {
    std::wstring::basic_string[abi:ne200100]<0>(__p, dword_2582E25DC);
    v4 = blahtex::Token::operator==((a1 + 8), __p);
    if (SHIBYTE(v21) < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (SHIBYTE(v23) < 0)
  {
    operator delete(v22[0]);
    if (v4)
    {
      goto LABEL_30;
    }
  }

  else if (v4)
  {
    goto LABEL_30;
  }

  std::wstring::basic_string[abi:ne200100]<0>(v22, dword_2582E25F4);
  v5 = blahtex::Token::operator==((a1 + 8), v22);
  v6 = v5;
  if (SHIBYTE(v23) < 0)
  {
    operator delete(v22[0]);
    if (v6)
    {
LABEL_30:
      v24 = *a2;
      v25 = *(a2 + 2);
      v12 = *(a2 + 4);
      if (v12 <= 2)
      {
        LODWORD(v25) = v12 + 1;
      }

      operator new();
    }
  }

  else if (v5)
  {
    goto LABEL_30;
  }

  std::wstring::basic_string[abi:ne200100]<0>(v22, dword_2582E260C);
  if (blahtex::Token::operator==((a1 + 8), v22))
  {
    v7 = 1;
  }

  else
  {
    std::wstring::basic_string[abi:ne200100]<0>(__p, dword_2582E2628);
    v7 = blahtex::Token::operator==((a1 + 8), __p);
    if (SHIBYTE(v21) < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (SHIBYTE(v23) < 0)
  {
    operator delete(v22[0]);
    if (v7)
    {
      goto LABEL_19;
    }
  }

  else if (v7)
  {
LABEL_19:
    MEMORY[0x259C7C920](&v27, &unk_2582E1E60);
    v8 = &unk_2582E1E78;
LABEL_29:
    MEMORY[0x259C7C920](&v26, v8);
    goto LABEL_30;
  }

  std::wstring::basic_string[abi:ne200100]<0>(v22, dword_2582E2648);
  v9 = blahtex::Token::operator==((a1 + 8), v22);
  v10 = v9;
  if (SHIBYTE(v23) < 0)
  {
    operator delete(v22[0]);
    if (v10)
    {
      goto LABEL_23;
    }
  }

  else if (v9)
  {
LABEL_23:
    MEMORY[0x259C7C920](&v27, &unk_2582E2664);
    v8 = &unk_2582E266C;
    goto LABEL_29;
  }

  std::wstring::basic_string[abi:ne200100]<0>(v22, dword_2582E2674);
  v11 = blahtex::Token::operator==((a1 + 8), v22);
  if (SHIBYTE(v23) < 0)
  {
    operator delete(v22[0]);
  }

  if (!v11)
  {
    std::wstring::basic_string[abi:ne200100]<0>(v22, dword_2582E26A0);
    v13 = blahtex::Token::operator==((a1 + 8), v22);
    if (SHIBYTE(v23) < 0)
    {
      operator delete(v22[0]);
    }

    if (v13)
    {
      v23 = *(a2 + 2);
      *v22 = *a2;
      LODWORD(v23) = 3;
      operator new();
    }

    std::wstring::basic_string[abi:ne200100]<0>(v22, dword_2582E26D8);
    v14 = blahtex::Token::operator==((a1 + 8), v22);
    if (SHIBYTE(v23) < 0)
    {
      operator delete(v22[0]);
    }

    if (v14)
    {
      v23 = *(a2 + 2);
      *v22 = *a2;
      LODWORD(v23) = 1;
      operator new();
    }

    std::wstring::basic_string[abi:ne200100]<0>(v22, dword_2582E26F4);
    if (blahtex::Token::operator==((a1 + 8), v22))
    {
      v15 = 1;
    }

    else
    {
      std::wstring::basic_string[abi:ne200100]<0>(__p, dword_2582E2744);
      v15 = blahtex::Token::operator==((a1 + 8), __p);
      if (SHIBYTE(v21) < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (SHIBYTE(v23) < 0)
    {
      operator delete(v22[0]);
    }

    if (v15)
    {
      *__p = *a2;
      v21 = *(a2 + 2);
      v16 = *(a2 + 4);
      if (v16 < 4)
      {
        LODWORD(v21) = dword_2582E37A0[v16];
      }

      operator new();
    }

    std::wstring::basic_string[abi:ne200100]<0>(v22, dword_2582E2798);
    if (blahtex::Token::operator==((a1 + 8), v22))
    {
      v17 = 1;
    }

    else
    {
      std::wstring::basic_string[abi:ne200100]<0>(__p, dword_2582E27BC);
      v17 = blahtex::Token::operator==((a1 + 8), __p);
      if (SHIBYTE(v21) < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (SHIBYTE(v23) < 0)
    {
      operator delete(v22[0]);
    }

    if (v17)
    {
      *v22 = *a2;
      v23 = *(a2 + 2);
      v18 = *(a2 + 4);
      if (v18 < 4)
      {
        LODWORD(v23) = dword_2582E37A0[v18];
      }

      std::wstring::basic_string[abi:ne200100]<0>(__p, dword_2582E2798);
      blahtex::Token::operator==((a1 + 8), __p);
      if (SHIBYTE(v21) < 0)
      {
        operator delete(__p[0]);
      }

      (*(**(a1 + 40) + 16))(__p);
      (*(**(a1 + 48) + 16))(__p);
      operator new();
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Unexpected command in MathCommand2Args::BuildLayoutTree");
    __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
  }

  MEMORY[0x259C7C920](&v27, &unk_2582E2690);
  v8 = &unk_2582E2698;
  goto LABEL_29;
}

void sub_2582BC84C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52, uint64_t a53, void *__p, uint64_t a55, int a56, __int16 a57, char a58, char a59)
{
  if (*(v59 - 105) < 0)
  {
    operator delete(*(v59 - 128));
  }

  if (*(v59 - 81) < 0)
  {
    operator delete(*(v59 - 104));
  }

  _Unwind_Resume(exception_object);
}

void blahtex::ParseTree::MathScripts::BuildLayoutTree(void *a1, __int128 *a2)
{
  v4 = a1[1];
  if (v4)
  {
    (*(*v4 + 16))(&v9);
  }

  v9 = *a2;
  v10 = *(a2 + 2);
  v5 = *(a2 + 4);
  if (v5 <= 3)
  {
    LODWORD(v10) = dword_2582E37A0[v5];
  }

  v6 = a1[2];
  if (v6)
  {
    (*(*v6 + 16))(&v8);
  }

  v7 = a1[3];
  if (v7)
  {
    (*(*v7 + 16))(&v8);
  }

  operator new();
}

void sub_2582BCE3C(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

void blahtex::ParseTree::MathLimits::BuildLayoutTree(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(**(a1 + 40) + 16))(*(a1 + 40));
  if (*(*a2 + 12) != 1)
  {
    v10 = a1;
    exception = __cxa_allocate_exception(0x30uLL);
    std::wstring::basic_string[abi:ne200100]<0>(__p, dword_2582E27E4);
    std::wstring::basic_string[abi:ne200100]<0>(v14, &dword_2582E1B08);
    std::wstring::basic_string[abi:ne200100]<0>(v13, &dword_2582E1B08);
    blahtex::Exception::Exception(exception, __p, v10 + 8, v14, v13);
  }

  std::wstring::basic_string[abi:ne200100]<0>(__p, dword_2582E2824);
  v4 = blahtex::Token::operator==((a1 + 8), __p);
  v5 = v4;
  if (v16 < 0)
  {
    operator delete(__p[0]);
    if (v5)
    {
      goto LABEL_4;
    }
  }

  else if (v4)
  {
LABEL_4:
    v6 = 1;
    goto LABEL_14;
  }

  std::wstring::basic_string[abi:ne200100]<0>(__p, dword_2582E2844);
  v7 = blahtex::Token::operator==((a1 + 8), __p);
  v8 = v7;
  if (v16 < 0)
  {
    operator delete(__p[0]);
    if (v8)
    {
      goto LABEL_8;
    }
  }

  else if (v7)
  {
LABEL_8:
    v6 = 2;
    goto LABEL_14;
  }

  std::wstring::basic_string[abi:ne200100]<0>(__p, dword_2582E286C);
  v9 = blahtex::Token::operator==((a1 + 8), __p);
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  if (!v9)
  {
    v12 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v12, "Unexpected command in MathLimits::BuildLayoutTree.");
    __cxa_throw(v12, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
  }

  v6 = 0;
LABEL_14:
  *(*a2 + 16) = v6;
}

void sub_2582BD0AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  v29 = *v27;
  *v27 = 0;
  if (v29)
  {
    (*(*v29 + 8))(v29);
  }

  _Unwind_Resume(exception_object);
}

uint64_t blahtex::ParseTree::MathGroup::BuildLayoutTree@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(**(a1 + 8) + 16))(*(a1 + 8));
  *(*a2 + 12) = 0;
  return result;
}

uint64_t blahtex::ParseTree::MathPhantom::BuildLayoutTree@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(**(a1 + 8) + 16))(*(a1 + 8));
  *(*a2 + 12) = 0;
  return result;
}

uint64_t blahtex::ParseTree::MathCancel::BuildLayoutTree@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(**(a1 + 8) + 16))(*(a1 + 8));
  *(*a2 + 12) = 0;
  return result;
}

void sub_2582BD518(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (a9)
  {
    blahtex::ParseTree::MathList::BuildLayoutTree();
  }

  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  MEMORY[0x259C7CB70](v38, 0x10B3C4046C60783);
  _Unwind_Resume(a1);
}

void sub_2582BD74C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  MEMORY[0x259C7CB70](v24, v23);
  _Unwind_Resume(a1);
}

void blahtex::ParseTree::MathBig::BuildLayoutTree(uint64_t a1)
{
  {
    std::unordered_map<std::wstring_view,blahtex::ParseTree::BigInfo>::unordered_map<std::pair<std::wstring_view,blahtex::ParseTree::BigInfo> const*>(blahtex::ParseTree::MathBig::BuildLayoutTree(blahtex::TexProcessingState const&)const::bigCommandTable, &blahtex::ParseTree::MathBig::BuildLayoutTree(blahtex::TexProcessingState const&)const::bigCommandArray, &blahtex::ParseTree::MathEnvironment::BuildLayoutTree(blahtex::TexProcessingState const&)const::environmentArray);
  }

  v2 = *(a1 + 31);
  if ((v2 & 0x8000000000000000) != 0)
  {
    v3 = *(a1 + 8);
    v2 = *(a1 + 16);
  }

  else
  {
    v3 = (a1 + 8);
  }

  __p[0] = v3;
  __p[1] = v2;
  if (std::__hash_table<std::wstring_view,std::hash<std::wstring_view>,std::equal_to<std::wstring_view>,std::allocator<std::wstring_view>>::find<std::wstring_view>(blahtex::ParseTree::MathBig::BuildLayoutTree(blahtex::TexProcessingState const&)const::bigCommandTable, __p))
  {
    operator new();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::logic_error::logic_error(exception, "Unknown command in MathBig::BuildLayoutTree");
  __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
}

void blahtex::ParseTree::MathTableRow::BuildLayoutTree()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::logic_error::logic_error(exception, "Arrived unexpectedly in MathTableRow::BuildLayoutTree");
  __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
}

void *std::vector<std::vector<blahtex::LayoutTree::Node *>>::reserve(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<blahtex::LayoutTree::Node *>>>(result, a2);
    }

    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

uint64_t std::vector<std::vector<blahtex::LayoutTree::Node *>>::push_back[abi:ne200100](uint64_t result, uint64_t a2)
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
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<blahtex::LayoutTree::Node *>>>(result, v10);
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
    result = std::__split_buffer<std::vector<blahtex::LayoutTree::Node *>>::~__split_buffer(v16);
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

void blahtex::ParseTree::MathEnvironment::BuildLayoutTree(uint64_t a1@<X0>, __int128 *a2@<X1>, void **a3@<X8>)
{
  {
    std::unordered_map<std::wstring_view,blahtex::ParseTree::EnvironmentInfo>::unordered_map<std::pair<std::wstring_view,blahtex::ParseTree::EnvironmentInfo> const*>(blahtex::ParseTree::MathEnvironment::BuildLayoutTree(blahtex::TexProcessingState const&)const::environmentTable, &blahtex::ParseTree::MathEnvironment::BuildLayoutTree(blahtex::TexProcessingState const&)const::environmentArray, &blahtex::ParseTree::EnterTextMode::BuildLayoutTree(blahtex::TexProcessingState const&)const::textCommandArray);
  }

  v6 = (a1 + 8);
  v7 = *(a1 + 31);
  if ((v7 & 0x8000000000000000) != 0)
  {
    v8 = *(a1 + 8);
    v7 = *(a1 + 16);
  }

  else
  {
    v8 = (a1 + 8);
  }

  v25[0] = v8;
  v25[1] = v7;
  v9 = std::__hash_table<std::wstring_view,std::hash<std::wstring_view>,std::equal_to<std::wstring_view>,std::allocator<std::wstring_view>>::find<std::wstring_view>(blahtex::ParseTree::MathEnvironment::BuildLayoutTree(blahtex::TexProcessingState const&)const::environmentTable, v25);
  if (!v9)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Unexpected environment name in MathEnvironment::BuildLayoutTree");
    __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
  }

  v10 = v9;
  v37 = *a2;
  v38 = *(a2 + 2);
  LODWORD(v37) = 0;
  BYTE4(v37) = *(a2 + 4);
  std::wstring::basic_string[abi:ne200100]<0>(v25, dword_2582E2B54);
  if (blahtex::Token::operator==((a1 + 8), v25))
  {
    v11 = 1;
  }

  else
  {
    std::wstring::basic_string[abi:ne200100]<0>(__p, dword_2582E2B84);
    v11 = blahtex::Token::operator==((a1 + 8), __p);
    if (v24 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (v26 < 0)
  {
    operator delete(v25[0]);
    if (v11)
    {
      goto LABEL_12;
    }

LABEL_14:
    std::wstring::basic_string[abi:ne200100]<0>(v25, dword_2582E2B0C);
    if (blahtex::Token::operator==((a1 + 8), v25))
    {
      v12 = 1;
    }

    else
    {
      std::wstring::basic_string[abi:ne200100]<0>(__p, dword_2582E2BA8);
      if (blahtex::Token::operator==((a1 + 8), __p))
      {
        v12 = 1;
      }

      else
      {
        std::wstring::basic_string[abi:ne200100]<0>(v35, dword_2582E2BC0);
        if (blahtex::Token::operator==((a1 + 8), v35))
        {
          v12 = 1;
        }

        else
        {
          std::wstring::basic_string[abi:ne200100]<0>(v33, dword_2582E2BDC);
          if (blahtex::Token::operator==((a1 + 8), v33))
          {
            v12 = 1;
          }

          else
          {
            std::wstring::basic_string[abi:ne200100]<0>(lpsrc, dword_2582E2BF4);
            if (blahtex::Token::operator==((a1 + 8), lpsrc))
            {
              v12 = 1;
            }

            else
            {
              std::wstring::basic_string[abi:ne200100]<0>(v29, dword_2582E2C14);
              if (blahtex::Token::operator==((a1 + 8), v29))
              {
                v12 = 1;
              }

              else
              {
                std::wstring::basic_string[abi:ne200100]<0>(v27, dword_2582E2B2C);
                v12 = blahtex::Token::operator==((a1 + 8), v27);
                if (v28 < 0)
                {
                  operator delete(v27[0]);
                }
              }

              if (v30 < 0)
              {
                operator delete(v29[0]);
              }
            }

            if (v32 < 0)
            {
              operator delete(lpsrc[0]);
            }
          }

          if (v34 < 0)
          {
            operator delete(v33[0]);
          }
        }

        if (v36 < 0)
        {
          operator delete(v35[0]);
        }
      }

      if (v24 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (v26 < 0)
    {
      operator delete(v25[0]);
      if (v12)
      {
        goto LABEL_40;
      }
    }

    else if (v12)
    {
LABEL_40:
      LODWORD(v38) = 0;
      goto LABEL_43;
    }

    LODWORD(v38) = 1;
    goto LABEL_43;
  }

  if (!v11)
  {
    goto LABEL_14;
  }

LABEL_12:
  LODWORD(v38) = 2;
LABEL_43:
  (*(**(a1 + 40) + 16))(lpsrc);
  {
    v21 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v21, "Unexpected node type in MathEnvironment::BuildLayoutTree");
    __cxa_throw(v21, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
  }

  v14 = v13;
  std::wstring::basic_string[abi:ne200100]<0>(v25, dword_2582E2B84);
  v15 = blahtex::Token::operator==(v6, v25);
  v16 = v15;
  if ((v26 & 0x80000000) == 0)
  {
    if (!v15)
    {
      goto LABEL_48;
    }

    goto LABEL_47;
  }

  operator delete(v25[0]);
  if (v16)
  {
LABEL_47:
    v14[13] = 1;
  }

LABEL_48:
  std::wstring::basic_string[abi:ne200100]<0>(v25, dword_2582E2B0C);
  if (blahtex::Token::operator==(v6, v25))
  {
    v17 = 1;
  }

  else
  {
    std::wstring::basic_string[abi:ne200100]<0>(__p, dword_2582E2BA8);
    if (blahtex::Token::operator==(v6, __p))
    {
      v17 = 1;
    }

    else
    {
      std::wstring::basic_string[abi:ne200100]<0>(v35, dword_2582E2BC0);
      if (blahtex::Token::operator==(v6, v35))
      {
        v17 = 1;
      }

      else
      {
        std::wstring::basic_string[abi:ne200100]<0>(v33, dword_2582E2BDC);
        v17 = blahtex::Token::operator==(v6, v33);
        if (v34 < 0)
        {
          operator delete(v33[0]);
        }
      }

      if (v36 < 0)
      {
        operator delete(v35[0]);
      }
    }

    if (v24 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (v26 < 0)
  {
    operator delete(v25[0]);
    if (v17)
    {
      goto LABEL_64;
    }
  }

  else if (v17)
  {
LABEL_64:
    v18 = 2;
LABEL_82:
    v14[12] = v18;
    goto LABEL_83;
  }

  std::wstring::basic_string[abi:ne200100]<0>(v25, dword_2582E2BF4);
  if (blahtex::Token::operator==(v6, v25))
  {
    v19 = 1;
  }

  else
  {
    std::wstring::basic_string[abi:ne200100]<0>(__p, dword_2582E2C14);
    if (blahtex::Token::operator==(v6, __p))
    {
      v19 = 1;
    }

    else
    {
      std::wstring::basic_string[abi:ne200100]<0>(v35, dword_2582E2B2C);
      v19 = blahtex::Token::operator==(v6, v35);
      if (v36 < 0)
      {
        operator delete(v35[0]);
      }
    }

    if (v24 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (v26 < 0)
  {
    operator delete(v25[0]);
    if (v19)
    {
      goto LABEL_76;
    }
  }

  else if (v19)
  {
LABEL_76:
    v18 = 3;
    goto LABEL_82;
  }

  std::wstring::basic_string[abi:ne200100]<0>(v25, dword_2582E2AF4);
  v20 = blahtex::Token::operator==(v6, v25);
  if (v26 < 0)
  {
    operator delete(v25[0]);
  }

  if (v20)
  {
    v18 = 0;
    goto LABEL_82;
  }

LABEL_83:
  if (v10[5] || v10[7])
  {
    operator new();
  }

  *a3 = lpsrc[0];
}

uint64_t blahtex::ParseTree::EnterTextMode::BuildLayoutTree(uint64_t a1, __int128 *a2)
{
  {
    std::unordered_map<std::wstring_view,blahtex::TexTextFont>::unordered_map<std::pair<std::wstring_view,blahtex::TexTextFont> const*>(blahtex::ParseTree::EnterTextMode::BuildLayoutTree(blahtex::TexProcessingState const&)const::textCommandTable, &blahtex::ParseTree::EnterTextMode::BuildLayoutTree(blahtex::TexProcessingState const&)const::textCommandArray, &blahtex::ParseTree::TextSymbol::BuildLayoutTree(blahtex::TexProcessingState const&)const::textCommandArray);
  }

  v4 = *(a1 + 31);
  if (v4 < 0)
  {
    v5 = *(a1 + 8);
    v4 = *(a1 + 16);
  }

  else
  {
    v5 = a1 + 8;
  }

  *&v14 = v5;
  *(&v14 + 1) = v4;
  v6 = std::__hash_table<std::__hash_value_type<std::wstring_view,blahtex::TexTextFont>,std::__unordered_map_hasher<std::wstring_view,std::__hash_value_type<std::wstring_view,blahtex::TexTextFont>,std::hash<std::wstring_view>,std::equal_to<std::wstring_view>,true>,std::__unordered_map_equal<std::wstring_view,std::__hash_value_type<std::wstring_view,blahtex::TexTextFont>,std::equal_to<std::wstring_view>,std::hash<std::wstring_view>,true>,std::allocator<std::__hash_value_type<std::wstring_view,blahtex::TexTextFont>>>::find<std::wstring_view>(blahtex::ParseTree::EnterTextMode::BuildLayoutTree(blahtex::TexProcessingState const&)const::textCommandTable, &v14);
  if (!v6)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Unexpected command in EnterTextMode::BuildLayoutTree");
    __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
  }

  v14 = *a2;
  v15 = *(a2 + 2);
  DWORD2(v14) = *(v6 + 8);
  WORD6(v14) = *(v6 + 18);
  std::wstring::basic_string[abi:ne200100]<0>(v12, dword_2582E2C50);
  if (blahtex::Token::operator==((a1 + 8), v12))
  {
    v7 = 1;
  }

  else
  {
    std::wstring::basic_string[abi:ne200100]<0>(__p, dword_2582E2C38);
    v7 = blahtex::Token::operator==((a1 + 8), __p);
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (v13 < 0)
  {
    operator delete(v12[0]);
    if (!v7)
    {
      return (*(**(a1 + 40) + 16))(*(a1 + 40), &v14);
    }

    goto LABEL_12;
  }

  if (v7)
  {
LABEL_12:
    LODWORD(v15) = 1;
  }

  return (*(**(a1 + 40) + 16))(*(a1 + 40), &v14);
}

void sub_2582BEE10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    blahtex::ParseTree::MathList::BuildLayoutTree();
  }

  (*(*v10 + 8))(v10);
  _Unwind_Resume(a1);
}

void blahtex::ParseTree::TextSymbol::BuildLayoutTree(uint64_t a1)
{
  {
    std::unordered_map<std::wstring_view,std::wstring_view>::unordered_map<std::pair<std::wstring_view,std::wstring_view> const*>(blahtex::ParseTree::TextSymbol::BuildLayoutTree(blahtex::TexProcessingState const&)const::textCommandTable, &blahtex::ParseTree::TextSymbol::BuildLayoutTree(blahtex::TexProcessingState const&)const::textCommandArray, &blahtex::operatorArray);
  }

  v2 = *(a1 + 31);
  if ((v2 & 0x8000000000000000) != 0)
  {
    v3 = *(a1 + 8);
    v2 = *(a1 + 16);
  }

  else
  {
    v3 = (a1 + 8);
  }

  __p[0] = v3;
  __p[1] = v2;
  if (std::__hash_table<std::__hash_value_type<std::wstring_view,blahtex::TexTextFont>,std::__unordered_map_hasher<std::wstring_view,std::__hash_value_type<std::wstring_view,blahtex::TexTextFont>,std::hash<std::wstring_view>,std::equal_to<std::wstring_view>,true>,std::__unordered_map_equal<std::wstring_view,std::__hash_value_type<std::wstring_view,blahtex::TexTextFont>,std::equal_to<std::wstring_view>,std::hash<std::wstring_view>,true>,std::allocator<std::__hash_value_type<std::wstring_view,blahtex::TexTextFont>>>::find<std::wstring_view>(blahtex::ParseTree::TextSymbol::BuildLayoutTree(blahtex::TexProcessingState const&)const::textCommandTable, __p))
  {
    operator new();
  }

  operator new();
}

uint64_t blahtex::ParseTree::TextPhantom::BuildLayoutTree@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(**(a1 + 8) + 16))(*(a1 + 8));
  *(*a2 + 12) = 0;
  return result;
}

uint64_t blahtex::ParseTree::TextCancel::BuildLayoutTree@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(**(a1 + 8) + 16))(*(a1 + 8));
  *(*a2 + 12) = 0;
  return result;
}

uint64_t blahtex::ParseTree::TextCommand1Arg::BuildLayoutTree(uint64_t a1, __int128 *a2)
{
  v36 = *a2;
  v37 = *(a2 + 2);
  std::wstring::basic_string[abi:ne200100]<0>(v34, dword_2582E2C80);
  v3 = blahtex::Token::operator==((a1 + 8), v34);
  v4 = v3;
  if (v35 < 0)
  {
    operator delete(v34[0]);
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else if (v3)
  {
LABEL_3:
    DWORD2(v36) = 0;
    goto LABEL_13;
  }

  std::wstring::basic_string[abi:ne200100]<0>(v34, dword_2582E2D18);
  v5 = blahtex::Token::operator==((a1 + 8), v34);
  v6 = v5;
  if (v35 < 0)
  {
    operator delete(v34[0]);
    if (v6)
    {
      goto LABEL_7;
    }
  }

  else if (v5)
  {
LABEL_7:
    v7 = 2;
LABEL_12:
    DWORD2(v36) = v7;
    goto LABEL_13;
  }

  std::wstring::basic_string[abi:ne200100]<0>(v34, dword_2582E2CF8);
  v8 = blahtex::Token::operator==((a1 + 8), v34);
  v9 = v8;
  if (v35 < 0)
  {
    operator delete(v34[0]);
    if (v9)
    {
      goto LABEL_11;
    }
  }

  else if (v8)
  {
LABEL_11:
    v7 = 1;
    goto LABEL_12;
  }

  std::wstring::basic_string[abi:ne200100]<0>(v34, dword_2582E2CD8);
  v15 = blahtex::Token::operator==((a1 + 8), v34);
  v16 = v15;
  if (v35 < 0)
  {
    operator delete(v34[0]);
    if (v16)
    {
      goto LABEL_25;
    }
  }

  else if (v15)
  {
LABEL_25:
    v17 = 1;
LABEL_31:
    BYTE13(v36) = v17;
    goto LABEL_13;
  }

  std::wstring::basic_string[abi:ne200100]<0>(v34, dword_2582E2CC0);
  v18 = blahtex::Token::operator==((a1 + 8), v34);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  if (v18)
  {
    v17 = BYTE13(v36) ^ 1;
    goto LABEL_31;
  }

  std::wstring::basic_string[abi:ne200100]<0>(v34, dword_2582E2CA0);
  v19 = blahtex::Token::operator==((a1 + 8), v34);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  if (v19)
  {
    BYTE12(v36) = 1;
  }

  else
  {
    std::wstring::basic_string[abi:ne200100]<0>(v34, dword_2582E2C68);
    if (blahtex::Token::operator==((a1 + 8), v34))
    {
      v20 = 1;
    }

    else
    {
      std::wstring::basic_string[abi:ne200100]<0>(v32, dword_2582E2C50);
      if (blahtex::Token::operator==((a1 + 8), v32))
      {
        v20 = 1;
      }

      else
      {
        std::wstring::basic_string[abi:ne200100]<0>(v30, dword_2582E2C38);
        if (blahtex::Token::operator==((a1 + 8), v30))
        {
          v20 = 1;
        }

        else
        {
          std::wstring::basic_string[abi:ne200100]<0>(v28, dword_2582E2D38);
          if (blahtex::Token::operator==((a1 + 8), v28))
          {
            v20 = 1;
          }

          else
          {
            std::wstring::basic_string[abi:ne200100]<0>(v26, dword_2582E2D4C);
            if (blahtex::Token::operator==((a1 + 8), v26))
            {
              v20 = 1;
            }

            else
            {
              std::wstring::basic_string[abi:ne200100]<0>(v24, dword_2582E1D24);
              if (blahtex::Token::operator==((a1 + 8), v24))
              {
                v20 = 1;
              }

              else
              {
                std::wstring::basic_string[abi:ne200100]<0>(__p, dword_2582E1D48);
                v20 = blahtex::Token::operator==((a1 + 8), __p);
                if (v23 < 0)
                {
                  operator delete(__p[0]);
                }
              }

              if (v25 < 0)
              {
                operator delete(v24[0]);
              }
            }

            if (v27 < 0)
            {
              operator delete(v26[0]);
            }
          }

          if (v29 < 0)
          {
            operator delete(v28[0]);
          }
        }

        if (v31 < 0)
        {
          operator delete(v30[0]);
        }
      }

      if (v33 < 0)
      {
        operator delete(v32[0]);
      }
    }

    if (v35 < 0)
    {
      operator delete(v34[0]);
    }

    if (!v20)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(exception, "Unexpected command in TextCommand1Arg::BuildLayoutTree");
      __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
    }
  }

LABEL_13:
  std::wstring::basic_string[abi:ne200100]<0>(v34, dword_2582E1D24);
  v10 = blahtex::Token::operator==((a1 + 8), v34);
  v11 = v10;
  if (v35 < 0)
  {
    operator delete(v34[0]);
    if (v11)
    {
LABEL_15:
      operator new();
    }
  }

  else if (v10)
  {
    goto LABEL_15;
  }

  std::wstring::basic_string[abi:ne200100]<0>(v34, dword_2582E1D48);
  v12 = blahtex::Token::operator==((a1 + 8), v34);
  v13 = v12;
  if (v35 < 0)
  {
    operator delete(v34[0]);
    if (v13)
    {
LABEL_19:
      operator new();
    }
  }

  else if (v12)
  {
    goto LABEL_19;
  }

  return (*(**(a1 + 40) + 16))(*(a1 + 40), &v36);
}

void sub_2582BF750(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  if (*(v38 - 105) < 0)
  {
    operator delete(*(v38 - 128));
  }

  if (*(v38 - 81) < 0)
  {
    operator delete(*(v38 - 104));
  }

  _Unwind_Resume(exception_object);
}

void blahtex::ParseTree::MathCommand1Arg::~MathCommand1Arg(blahtex::ParseTree::MathCommand1Arg *this)
{
  *this = &unk_28696B698;
  v2 = *(this + 5);
  *(this + 5) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  *this = &unk_28696B698;
  v2 = *(this + 5);
  *(this + 5) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  JUMPOUT(0x259C7CB70);
}

void blahtex::ParseTree::MathCommand2Args::~MathCommand2Args(blahtex::ParseTree::MathCommand2Args *this)
{
  *this = &unk_28696B6E8;
  v2 = *(this + 6);
  *(this + 6) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 5);
  *(this + 5) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  *this = &unk_28696B6E8;
  v2 = *(this + 6);
  *(this + 6) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 5);
  *(this + 5) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  JUMPOUT(0x259C7CB70);
}

void blahtex::ParseTree::MathMiddle::~MathMiddle(void **this)
{
  *this = &unk_28696B738;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_28696B738;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x259C7CB70);
}

void blahtex::ParseTree::MathBig::~MathBig(void **this)
{
  *this = &unk_28696B788;
  if (*(this + 63) < 0)
  {
    operator delete(this[5]);
  }

  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_28696B788;
  if (*(this + 63) < 0)
  {
    operator delete(this[5]);
  }

  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x259C7CB70);
}

void blahtex::ParseTree::MathGroup::~MathGroup(blahtex::ParseTree::MathGroup *this)
{
  v2 = *(this + 1);
  *this = &unk_28696B7D8;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }
}

{
  v2 = *(this + 1);
  *this = &unk_28696B7D8;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x259C7CB70);
}

void blahtex::ParseTree::MathPhantom::~MathPhantom(blahtex::ParseTree::MathPhantom *this)
{
  v2 = *(this + 1);
  *this = &unk_28696B828;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }
}

{
  v2 = *(this + 1);
  *this = &unk_28696B828;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x259C7CB70);
}

void blahtex::ParseTree::MathCancel::~MathCancel(blahtex::ParseTree::MathCancel *this)
{
  v2 = *(this + 1);
  *this = &unk_28696B878;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }
}

{
  v2 = *(this + 1);
  *this = &unk_28696B878;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x259C7CB70);
}

void blahtex::ParseTree::MathLimits::~MathLimits(blahtex::ParseTree::MathLimits *this)
{
  *this = &unk_28696B8C8;
  v2 = *(this + 5);
  *(this + 5) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  *this = &unk_28696B8C8;
  v2 = *(this + 5);
  *(this + 5) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  JUMPOUT(0x259C7CB70);
}

void blahtex::ParseTree::MathDelimited::~MathDelimited(void **this)
{
  *this = &unk_28696B918;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }

  v2 = this[1];
  this[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }
}

{
  *this = &unk_28696B918;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }

  v2 = this[1];
  this[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x259C7CB70);
}

void blahtex::ParseTree::MathEnvironment::~MathEnvironment(blahtex::ParseTree::MathEnvironment *this)
{
  *this = &unk_28696B968;
  v2 = *(this + 5);
  *(this + 5) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  *this = &unk_28696B968;
  v2 = *(this + 5);
  *(this + 5) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  JUMPOUT(0x259C7CB70);
}

void blahtex::ParseTree::EnterTextMode::~EnterTextMode(blahtex::ParseTree::EnterTextMode *this)
{
  *this = &unk_28696B9B8;
  v2 = *(this + 5);
  *(this + 5) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  *this = &unk_28696B9B8;
  v2 = *(this + 5);
  *(this + 5) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  JUMPOUT(0x259C7CB70);
}

void blahtex::ParseTree::TextGroup::~TextGroup(blahtex::ParseTree::TextGroup *this)
{
  v2 = *(this + 1);
  *this = &unk_28696BA08;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }
}

{
  v2 = *(this + 1);
  *this = &unk_28696BA08;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x259C7CB70);
}

void blahtex::ParseTree::TextPhantom::~TextPhantom(blahtex::ParseTree::TextPhantom *this)
{
  v2 = *(this + 1);
  *this = &unk_28696BA58;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }
}

{
  v2 = *(this + 1);
  *this = &unk_28696BA58;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x259C7CB70);
}

void blahtex::ParseTree::TextCancel::~TextCancel(blahtex::ParseTree::TextCancel *this)
{
  v2 = *(this + 1);
  *this = &unk_28696BAA8;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }
}

{
  v2 = *(this + 1);
  *this = &unk_28696BAA8;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x259C7CB70);
}

void blahtex::ParseTree::TextSymbol::~TextSymbol(void **this)
{
  *this = &unk_28696BAF8;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_28696BAF8;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x259C7CB70);
}

void blahtex::ParseTree::TextCommand1Arg::~TextCommand1Arg(blahtex::ParseTree::TextCommand1Arg *this)
{
  *this = &unk_28696BB48;
  v2 = *(this + 5);
  *(this + 5) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  *this = &unk_28696BB48;
  v2 = *(this + 5);
  *(this + 5) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  JUMPOUT(0x259C7CB70);
}

void blahtex::ParseTree::MathScripts::~MathScripts(blahtex::ParseTree::MathScripts *this)
{
  *this = &unk_28696BB98;
  v2 = *(this + 3);
  *(this + 3) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }
}

{
  *this = &unk_28696BB98;
  v2 = *(this + 3);
  *(this + 3) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  JUMPOUT(0x259C7CB70);
}

uint64_t blahtex::LayoutTree::SymbolOperator::SymbolOperator(uint64_t a1, char a2, uint64_t a3, char a4, const std::wstring *a5, int a6, int a7, int a8, int a9, int a10)
{
  *(a1 + 8) = a7;
  *(a1 + 12) = a8;
  *(a1 + 16) = a9;
  *(a1 + 20) = a10;
  *a1 = &unk_28696B600;
  blahtex::Token::Token((a1 + 24), a5);
  *(a1 + 56) = a6;
  *a1 = &unk_28696B310;
  *(a1 + 60) = a2;
  v15 = *(a3 + 8);
  if (v15 >= 0x3FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v16 = (a1 + 64);
  v17 = *a3;
  if (v15 >= 5)
  {
    if ((v15 | 1) == 5)
    {
      v18 = 7;
    }

    else
    {
      v18 = (v15 | 1) + 1;
    }

    std::__allocate_at_least[abi:ne200100]<std::allocator<wchar_t>>(a1 + 64, v18);
  }

  *(a1 + 87) = v15;
  if (v15)
  {
    memmove(v16, v17, 4 * v15);
  }

  *(v16 + v15) = 0;
  *(a1 + 88) = a4;
  return a1;
}

void sub_2582C0B9C(_Unwind_Exception *exception_object)
{
  *v1 = v2;
  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  _Unwind_Resume(exception_object);
}

uint64_t blahtex::LayoutTree::Fenced::Fenced(uint64_t a1, int a2, int a3, const std::wstring *a4, const std::wstring *a5, uint64_t *a6)
{
  *(a1 + 8) = a2;
  *(a1 + 12) = 7;
  *(a1 + 20) = a3;
  *a1 = &unk_28696B408;
  blahtex::Token::Token((a1 + 24), a4);
  blahtex::Token::Token((a1 + 56), a5);
  v9 = *a6;
  *a6 = 0;
  *(a1 + 88) = v9;
  return a1;
}

void sub_2582C0C40(_Unwind_Exception *exception_object)
{
  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::wstring::basic_string<std::wstring_view,0>(_BYTE *__dst, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 >= 0x3FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v4 = *a2;
  if (v2 >= 5)
  {
    if ((v2 | 1) == 5)
    {
      v6 = 7;
    }

    else
    {
      v6 = (v2 | 1) + 1;
    }

    std::__allocate_at_least[abi:ne200100]<std::allocator<wchar_t>>(__dst, v6);
  }

  __dst[23] = v2;
  if (v2)
  {
    memmove(__dst, v4, 4 * v2);
  }

  *&__dst[4 * v2] = 0;
  return __dst;
}

uint64_t std::unordered_map<std::wstring_view,blahtex::LayoutTree::Node::Flavour>::unordered_map<std::pair<std::wstring_view,blahtex::LayoutTree::Node::Flavour> const*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      std::__hash_table<std::__hash_value_type<std::wstring_view,blahtex::LayoutTree::Node::Flavour>,std::__unordered_map_hasher<std::wstring_view,std::__hash_value_type<std::wstring_view,blahtex::LayoutTree::Node::Flavour>,std::hash<std::wstring_view>,std::equal_to<std::wstring_view>,true>,std::__unordered_map_equal<std::wstring_view,std::__hash_value_type<std::wstring_view,blahtex::LayoutTree::Node::Flavour>,std::equal_to<std::wstring_view>,std::hash<std::wstring_view>,true>,std::allocator<std::__hash_value_type<std::wstring_view,blahtex::LayoutTree::Node::Flavour>>>::__emplace_unique_key_args<std::wstring_view,std::pair<std::wstring_view,blahtex::LayoutTree::Node::Flavour> const&>(a1, v5);
      v5 += 24;
    }

    while (v5 != a3);
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<std::wstring_view,blahtex::LayoutTree::Node::Flavour>,std::__unordered_map_hasher<std::wstring_view,std::__hash_value_type<std::wstring_view,blahtex::LayoutTree::Node::Flavour>,std::hash<std::wstring_view>,std::equal_to<std::wstring_view>,true>,std::__unordered_map_equal<std::wstring_view,std::__hash_value_type<std::wstring_view,blahtex::LayoutTree::Node::Flavour>,std::equal_to<std::wstring_view>,std::hash<std::wstring_view>,true>,std::allocator<std::__hash_value_type<std::wstring_view,blahtex::LayoutTree::Node::Flavour>>>::__emplace_unique_key_args<std::wstring_view,std::pair<std::wstring_view,blahtex::LayoutTree::Node::Flavour> const&>(void *a1, uint64_t a2)
{
  v4 = std::__string_view_hash<wchar_t>::operator()[abi:ne200100](a1, *a2, *(a2 + 8));
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

  if (!std::equal_to<std::wstring_view>::operator()[abi:ne200100](a1, (v11 + 2), a2))
  {
    goto LABEL_17;
  }

  return v11;
}

uint64_t std::unordered_map<std::wstring_view,blahtex::TexMathFont::Family>::unordered_map<std::pair<std::wstring_view,blahtex::TexMathFont::Family> const*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      std::__hash_table<std::__hash_value_type<std::wstring_view,blahtex::TexMathFont::Family>,std::__unordered_map_hasher<std::wstring_view,std::__hash_value_type<std::wstring_view,blahtex::TexMathFont::Family>,std::hash<std::wstring_view>,std::equal_to<std::wstring_view>,true>,std::__unordered_map_equal<std::wstring_view,std::__hash_value_type<std::wstring_view,blahtex::TexMathFont::Family>,std::equal_to<std::wstring_view>,std::hash<std::wstring_view>,true>,std::allocator<std::__hash_value_type<std::wstring_view,blahtex::TexMathFont::Family>>>::__emplace_unique_key_args<std::wstring_view,std::pair<std::wstring_view,blahtex::TexMathFont::Family> const&>(a1, v5);
      v5 += 24;
    }

    while (v5 != a3);
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<std::wstring_view,blahtex::TexMathFont::Family>,std::__unordered_map_hasher<std::wstring_view,std::__hash_value_type<std::wstring_view,blahtex::TexMathFont::Family>,std::hash<std::wstring_view>,std::equal_to<std::wstring_view>,true>,std::__unordered_map_equal<std::wstring_view,std::__hash_value_type<std::wstring_view,blahtex::TexMathFont::Family>,std::equal_to<std::wstring_view>,std::hash<std::wstring_view>,true>,std::allocator<std::__hash_value_type<std::wstring_view,blahtex::TexMathFont::Family>>>::__emplace_unique_key_args<std::wstring_view,std::pair<std::wstring_view,blahtex::TexMathFont::Family> const&>(void *a1, uint64_t a2)
{
  v4 = std::__string_view_hash<wchar_t>::operator()[abi:ne200100](a1, *a2, *(a2 + 8));
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

  if (!std::equal_to<std::wstring_view>::operator()[abi:ne200100](a1, (v11 + 2), a2))
  {
    goto LABEL_17;
  }

  return v11;
}

uint64_t std::unordered_map<std::wstring_view,blahtex::ParseTree::AccentInfo>::unordered_map<std::pair<std::wstring_view,blahtex::ParseTree::AccentInfo> const*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      std::__hash_table<std::__hash_value_type<std::wstring_view,blahtex::ParseTree::AccentInfo>,std::__unordered_map_hasher<std::wstring_view,std::__hash_value_type<std::wstring_view,blahtex::ParseTree::AccentInfo>,std::hash<std::wstring_view>,std::equal_to<std::wstring_view>,true>,std::__unordered_map_equal<std::wstring_view,std::__hash_value_type<std::wstring_view,blahtex::ParseTree::AccentInfo>,std::equal_to<std::wstring_view>,std::hash<std::wstring_view>,true>,std::allocator<std::__hash_value_type<std::wstring_view,blahtex::ParseTree::AccentInfo>>>::__emplace_unique_key_args<std::wstring_view,std::pair<std::wstring_view,blahtex::ParseTree::AccentInfo> const&>(a1, v5);
      v5 += 40;
    }

    while (v5 != a3);
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<std::wstring_view,blahtex::ParseTree::AccentInfo>,std::__unordered_map_hasher<std::wstring_view,std::__hash_value_type<std::wstring_view,blahtex::ParseTree::AccentInfo>,std::hash<std::wstring_view>,std::equal_to<std::wstring_view>,true>,std::__unordered_map_equal<std::wstring_view,std::__hash_value_type<std::wstring_view,blahtex::ParseTree::AccentInfo>,std::equal_to<std::wstring_view>,std::hash<std::wstring_view>,true>,std::allocator<std::__hash_value_type<std::wstring_view,blahtex::ParseTree::AccentInfo>>>::__emplace_unique_key_args<std::wstring_view,std::pair<std::wstring_view,blahtex::ParseTree::AccentInfo> const&>(void *a1, uint64_t a2)
{
  v4 = std::__string_view_hash<wchar_t>::operator()[abi:ne200100](a1, *a2, *(a2 + 8));
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

  if (!std::equal_to<std::wstring_view>::operator()[abi:ne200100](a1, (v11 + 2), a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void *std::__hash_table<std::__hash_value_type<std::wstring_view,std::wstring_view>,std::__unordered_map_hasher<std::wstring_view,std::__hash_value_type<std::wstring_view,std::wstring_view>,std::hash<std::wstring_view>,std::equal_to<std::wstring_view>,true>,std::__unordered_map_equal<std::wstring_view,std::__hash_value_type<std::wstring_view,std::wstring_view>,std::equal_to<std::wstring_view>,std::hash<std::wstring_view>,true>,std::allocator<std::__hash_value_type<std::wstring_view,std::wstring_view>>>::__emplace_unique_key_args<std::wstring_view,std::piecewise_construct_t const&,std::tuple<std::wstring_view&&>,std::tuple<>>(void *a1, uint64_t a2)
{
  v4 = std::__string_view_hash<wchar_t>::operator()[abi:ne200100](a1, *a2, *(a2 + 8));
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

  if (!std::equal_to<std::wstring_view>::operator()[abi:ne200100](a1, (v11 + 2), a2))
  {
    goto LABEL_17;
  }

  return v11;
}

uint64_t std::unordered_map<std::wstring_view,blahtex::ParseTree::BigInfo>::unordered_map<std::pair<std::wstring_view,blahtex::ParseTree::BigInfo> const*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      std::__hash_table<std::__hash_value_type<std::wstring_view,blahtex::ParseTree::BigInfo>,std::__unordered_map_hasher<std::wstring_view,std::__hash_value_type<std::wstring_view,blahtex::ParseTree::BigInfo>,std::hash<std::wstring_view>,std::equal_to<std::wstring_view>,true>,std::__unordered_map_equal<std::wstring_view,std::__hash_value_type<std::wstring_view,blahtex::ParseTree::BigInfo>,std::equal_to<std::wstring_view>,std::hash<std::wstring_view>,true>,std::allocator<std::__hash_value_type<std::wstring_view,blahtex::ParseTree::BigInfo>>>::__emplace_unique_key_args<std::wstring_view,std::pair<std::wstring_view,blahtex::ParseTree::BigInfo> const&>(a1, v5);
      v5 += 40;
    }

    while (v5 != a3);
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<std::wstring_view,blahtex::ParseTree::BigInfo>,std::__unordered_map_hasher<std::wstring_view,std::__hash_value_type<std::wstring_view,blahtex::ParseTree::BigInfo>,std::hash<std::wstring_view>,std::equal_to<std::wstring_view>,true>,std::__unordered_map_equal<std::wstring_view,std::__hash_value_type<std::wstring_view,blahtex::ParseTree::BigInfo>,std::equal_to<std::wstring_view>,std::hash<std::wstring_view>,true>,std::allocator<std::__hash_value_type<std::wstring_view,blahtex::ParseTree::BigInfo>>>::__emplace_unique_key_args<std::wstring_view,std::pair<std::wstring_view,blahtex::ParseTree::BigInfo> const&>(void *a1, uint64_t a2)
{
  v4 = std::__string_view_hash<wchar_t>::operator()[abi:ne200100](a1, *a2, *(a2 + 8));
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

  if (!std::equal_to<std::wstring_view>::operator()[abi:ne200100](a1, (v11 + 2), a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<blahtex::LayoutTree::Node *>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<std::vector<blahtex::LayoutTree::Node *>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::vector<blahtex::LayoutTree::Node *>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::vector<blahtex::LayoutTree::Node *>>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::unordered_map<std::wstring_view,blahtex::ParseTree::EnvironmentInfo>::unordered_map<std::pair<std::wstring_view,blahtex::ParseTree::EnvironmentInfo> const*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      std::__hash_table<std::__hash_value_type<std::wstring_view,blahtex::ParseTree::EnvironmentInfo>,std::__unordered_map_hasher<std::wstring_view,std::__hash_value_type<std::wstring_view,blahtex::ParseTree::EnvironmentInfo>,std::hash<std::wstring_view>,std::equal_to<std::wstring_view>,true>,std::__unordered_map_equal<std::wstring_view,std::__hash_value_type<std::wstring_view,blahtex::ParseTree::EnvironmentInfo>,std::equal_to<std::wstring_view>,std::hash<std::wstring_view>,true>,std::allocator<std::__hash_value_type<std::wstring_view,blahtex::ParseTree::EnvironmentInfo>>>::__emplace_unique_key_args<std::wstring_view,std::pair<std::wstring_view,blahtex::ParseTree::EnvironmentInfo> const&>(a1, v5);
      v5 += 48;
    }

    while (v5 != a3);
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<std::wstring_view,blahtex::ParseTree::EnvironmentInfo>,std::__unordered_map_hasher<std::wstring_view,std::__hash_value_type<std::wstring_view,blahtex::ParseTree::EnvironmentInfo>,std::hash<std::wstring_view>,std::equal_to<std::wstring_view>,true>,std::__unordered_map_equal<std::wstring_view,std::__hash_value_type<std::wstring_view,blahtex::ParseTree::EnvironmentInfo>,std::equal_to<std::wstring_view>,std::hash<std::wstring_view>,true>,std::allocator<std::__hash_value_type<std::wstring_view,blahtex::ParseTree::EnvironmentInfo>>>::__emplace_unique_key_args<std::wstring_view,std::pair<std::wstring_view,blahtex::ParseTree::EnvironmentInfo> const&>(void *a1, uint64_t a2)
{
  v4 = std::__string_view_hash<wchar_t>::operator()[abi:ne200100](a1, *a2, *(a2 + 8));
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

  if (!std::equal_to<std::wstring_view>::operator()[abi:ne200100](a1, (v11 + 2), a2))
  {
    goto LABEL_17;
  }

  return v11;
}

uint64_t std::unordered_map<std::wstring_view,blahtex::TexTextFont>::unordered_map<std::pair<std::wstring_view,blahtex::TexTextFont> const*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      std::__hash_table<std::__hash_value_type<std::wstring_view,blahtex::TexTextFont>,std::__unordered_map_hasher<std::wstring_view,std::__hash_value_type<std::wstring_view,blahtex::TexTextFont>,std::hash<std::wstring_view>,std::equal_to<std::wstring_view>,true>,std::__unordered_map_equal<std::wstring_view,std::__hash_value_type<std::wstring_view,blahtex::TexTextFont>,std::equal_to<std::wstring_view>,std::hash<std::wstring_view>,true>,std::allocator<std::__hash_value_type<std::wstring_view,blahtex::TexTextFont>>>::__emplace_unique_key_args<std::wstring_view,std::pair<std::wstring_view,blahtex::TexTextFont> const&>(a1, v5);
      v5 += 24;
    }

    while (v5 != a3);
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<std::wstring_view,blahtex::TexTextFont>,std::__unordered_map_hasher<std::wstring_view,std::__hash_value_type<std::wstring_view,blahtex::TexTextFont>,std::hash<std::wstring_view>,std::equal_to<std::wstring_view>,true>,std::__unordered_map_equal<std::wstring_view,std::__hash_value_type<std::wstring_view,blahtex::TexTextFont>,std::equal_to<std::wstring_view>,std::hash<std::wstring_view>,true>,std::allocator<std::__hash_value_type<std::wstring_view,blahtex::TexTextFont>>>::__emplace_unique_key_args<std::wstring_view,std::pair<std::wstring_view,blahtex::TexTextFont> const&>(void *a1, uint64_t a2)
{
  v4 = std::__string_view_hash<wchar_t>::operator()[abi:ne200100](a1, *a2, *(a2 + 8));
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

  if (!std::equal_to<std::wstring_view>::operator()[abi:ne200100](a1, (v11 + 2), a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void *std::__hash_table<std::__hash_value_type<std::wstring_view,blahtex::TexTextFont>,std::__unordered_map_hasher<std::wstring_view,std::__hash_value_type<std::wstring_view,blahtex::TexTextFont>,std::hash<std::wstring_view>,std::equal_to<std::wstring_view>,true>,std::__unordered_map_equal<std::wstring_view,std::__hash_value_type<std::wstring_view,blahtex::TexTextFont>,std::equal_to<std::wstring_view>,std::hash<std::wstring_view>,true>,std::allocator<std::__hash_value_type<std::wstring_view,blahtex::TexTextFont>>>::find<std::wstring_view>(void *a1, uint64_t a2)
{
  v4 = std::__string_view_hash<wchar_t>::operator()[abi:ne200100](a1, *a2, *(a2 + 8));
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

  v11 = *v10;
  if (*v10)
  {
    do
    {
      v12 = v11[1];
      if (v12 == v6)
      {
        if (std::equal_to<std::wstring_view>::operator()[abi:ne200100](a1, (v11 + 2), a2))
        {
          return v11;
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

      v11 = *v11;
    }

    while (v11);
  }

  return v11;
}

void blahtex::ParseTree::MathSymbol::BuildLayoutTree(uint64_t a1, void **a2)
{
  v4 = (a1 + 8);
  v5 = *(a1 + 31);
  if (v5 < 0)
  {
    if (*(a1 + 16) != 1)
    {
      goto LABEL_34;
    }

    v6 = *a2;
    v40[0] = *a2;
    v8 = **v4;
    if (v8 >= 65 && (v8 < 0x5B || (v8 - 97) < 0x1A))
    {
      goto LABEL_14;
    }

    v7 = *v4;
    v15 = **v4;
    if (v15 <= 47)
    {
LABEL_31:
      if (v5 < 0)
      {
        LODWORD(v7) = **v4;
      }

LABEL_33:
      if (v7 >= 128)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(exception, "Unexpected non-ASCII character in MathSymbol::BuildLayoutTree");
        goto LABEL_114;
      }

LABEL_34:
      {
        std::unordered_map<std::wstring_view,wchar_t>::unordered_map<std::pair<std::wstring_view,wchar_t> const*>(blahtex::ParseTree::MathSymbol::BuildLayoutTree(blahtex::TexProcessingState const&)const::lowercaseGreekTable, &blahtex::lowercaseGreekArray, &blahtex::uppercaseGreekArray);
      }

      v16 = *(a1 + 31);
      if (v16 < 0)
      {
        v17 = *(a1 + 8);
        v16 = *(a1 + 16);
      }

      else
      {
        v17 = v4;
      }

      *&v42 = v17;
      *(&v42 + 1) = v16;
      if (std::__hash_table<std::wstring_view,std::hash<std::wstring_view>,std::equal_to<std::wstring_view>,std::allocator<std::wstring_view>>::find<std::wstring_view>(blahtex::ParseTree::MathSymbol::BuildLayoutTree(blahtex::TexProcessingState const&)const::lowercaseGreekTable, &v42))
      {
        operator new();
      }

      {
        std::unordered_map<std::wstring_view,wchar_t>::unordered_map<std::pair<std::wstring_view,wchar_t> const*>(blahtex::ParseTree::MathSymbol::BuildLayoutTree(blahtex::TexProcessingState const&)const::uppercaseGreekTable, &blahtex::uppercaseGreekArray, &blahtex::spaceArray);
      }

      v18 = *(a1 + 31);
      if (v18 < 0)
      {
        v19 = *(a1 + 8);
        v18 = *(a1 + 16);
      }

      else
      {
        v19 = v4;
      }

      *&v42 = v19;
      *(&v42 + 1) = v18;
      if (std::__hash_table<std::wstring_view,std::hash<std::wstring_view>,std::equal_to<std::wstring_view>,std::allocator<std::wstring_view>>::find<std::wstring_view>(blahtex::ParseTree::MathSymbol::BuildLayoutTree(blahtex::TexProcessingState const&)const::uppercaseGreekTable, &v42))
      {
        v20 = *a2;
        v40[0] = v20;
        if (v20 > 5)
        {
          switch(v20)
          {
            case 6:
              v37 = __cxa_allocate_exception(0x30uLL);
              std::wstring::basic_string[abi:ne200100]<0>(&v42, dword_2582E37B0);
              std::wstring::basic_string[abi:ne200100]<0>(&v46, dword_2582E3848);
              std::wstring::basic_string[abi:ne200100]<0>(v44, &dword_2582E3844);
              blahtex::Exception::Exception(v37, &v42, v4, &v46, v44);
            case 8:
              v38 = __cxa_allocate_exception(0x30uLL);
              std::wstring::basic_string[abi:ne200100]<0>(&v42, dword_2582E37B0);
              std::wstring::basic_string[abi:ne200100]<0>(&v46, dword_2582E3854);
              std::wstring::basic_string[abi:ne200100]<0>(v44, &dword_2582E3844);
              blahtex::Exception::Exception(v38, &v42, v4, &v46, v44);
            case 7:
              v39 = __cxa_allocate_exception(0x30uLL);
              std::wstring::basic_string[abi:ne200100]<0>(&v42, dword_2582E37B0);
              std::wstring::basic_string[abi:ne200100]<0>(&v46, dword_2582E3834);
              std::wstring::basic_string[abi:ne200100]<0>(v44, &dword_2582E3844);
              blahtex::Exception::Exception(v39, &v42, v4, &v46, v44);
          }
        }

        else if (!v20)
        {
          LODWORD(v40[0]) = 1;
        }

        operator new();
      }

      {
        std::unordered_map<std::wstring_view,int>::unordered_map<std::pair<std::wstring_view,int> const*>(blahtex::ParseTree::MathSymbol::BuildLayoutTree(blahtex::TexProcessingState const&)const::spaceTable, &blahtex::spaceArray, &blahtex::identifierArray);
      }

      v21 = *(a1 + 31);
      if (v21 < 0)
      {
        v22 = *(a1 + 8);
        v21 = *(a1 + 16);
      }

      else
      {
        v22 = v4;
      }

      *&v42 = v22;
      *(&v42 + 1) = v21;
      if (std::__hash_table<std::wstring_view,std::hash<std::wstring_view>,std::equal_to<std::wstring_view>,std::allocator<std::wstring_view>>::find<std::wstring_view>(blahtex::ParseTree::MathSymbol::BuildLayoutTree(blahtex::TexProcessingState const&)const::spaceTable, &v42))
      {
        operator new();
      }

      {
        std::unordered_map<std::wstring_view,blahtex::OperatorInfo>::unordered_map<std::pair<std::wstring_view,blahtex::OperatorInfo> const*>(blahtex::ParseTree::MathSymbol::BuildLayoutTree(blahtex::TexProcessingState const&)const::operatorTable, &blahtex::operatorArray, (&blahtex::operatorArray + 2210));
      }

      v23 = *(a1 + 31);
      if (v23 < 0)
      {
        v24 = *(a1 + 8);
        v23 = *(a1 + 16);
      }

      else
      {
        v24 = v4;
      }

      *&v42 = v24;
      *(&v42 + 1) = v23;
      if (std::__hash_table<std::wstring_view,std::hash<std::wstring_view>,std::equal_to<std::wstring_view>,std::allocator<std::wstring_view>>::find<std::wstring_view>(blahtex::ParseTree::MathSymbol::BuildLayoutTree(blahtex::TexProcessingState const&)const::operatorTable, &v42))
      {
        operator new();
      }

      {
        std::unordered_map<std::wstring_view,blahtex::IdentifierInfo>::unordered_map<std::pair<std::wstring_view,blahtex::IdentifierInfo> const*>(blahtex::ParseTree::MathSymbol::BuildLayoutTree(blahtex::TexProcessingState const&)const::identifierTable, &blahtex::identifierArray, &blahtex::ParseTree::MathStateChange::Apply(blahtex::TexProcessingState &)const::styleCommandArray);
      }

      v25 = *(a1 + 31);
      if (v25 < 0)
      {
        v26 = *(a1 + 8);
        v25 = *(a1 + 16);
      }

      else
      {
        v26 = v4;
      }

      *&v42 = v26;
      *(&v42 + 1) = v25;
      v27 = std::__hash_table<std::wstring_view,std::hash<std::wstring_view>,std::equal_to<std::wstring_view>,std::allocator<std::wstring_view>>::find<std::wstring_view>(blahtex::ParseTree::MathSymbol::BuildLayoutTree(blahtex::TexProcessingState const&)const::identifierTable, &v42);
      if (v27)
      {
        v46 = *a2;
        if (*(v27 + 32))
        {
          v28 = 3;
        }

        else
        {
          v28 = 1;
        }

        LODWORD(v46) = v28;
        operator new();
      }

      std::wstring::basic_string[abi:ne200100]<0>(&v42, dword_2582E3868);
      v29 = blahtex::Token::operator==(v4, &v42);
      if (v43 < 0)
      {
        operator delete(v42);
      }

      if (v29)
      {
        operator new();
      }

      std::wstring::basic_string[abi:ne200100]<0>(&v42, dword_2582E3884);
      v30 = blahtex::Token::operator==(v4, &v42);
      if (v43 < 0)
      {
        operator delete(v42);
      }

      if (v30)
      {
        operator new();
      }

      std::wstring::basic_string[abi:ne200100]<0>(&v42, dword_2582E38A0);
      v31 = blahtex::Token::operator==(v4, &v42);
      if (v43 < 0)
      {
        operator delete(v42);
      }

      if (v31)
      {
        operator new();
      }

      std::wstring::basic_string[abi:ne200100]<0>(&v42, dword_2582E38C4);
      v32 = blahtex::Token::operator==(v4, &v42);
      if (v43 < 0)
      {
        operator delete(v42);
      }

      if (v32)
      {
        operator new();
      }

      std::wstring::basic_string[abi:ne200100]<0>(&v42, dword_2582E38EC);
      v33 = blahtex::Token::operator==(v4, &v42);
      if (v43 < 0)
      {
        operator delete(v42);
      }

      if (v33)
      {
        operator new();
      }

      std::wstring::basic_string[abi:ne200100]<0>(&v42, dword_2582E3900);
      if (blahtex::Token::operator==(v4, &v42))
      {
        v34 = 1;
      }

      else
      {
        std::wstring::basic_string[abi:ne200100]<0>(&v46, dword_2582E392C);
        if (blahtex::Token::operator==(v4, &v46))
        {
          v34 = 1;
        }

        else
        {
          std::wstring::basic_string[abi:ne200100]<0>(v44, dword_2582E395C);
          if (blahtex::Token::operator==(v4, v44))
          {
            v34 = 1;
          }

          else
          {
            std::wstring::basic_string[abi:ne200100]<0>(v40, dword_2582E3988);
            v34 = blahtex::Token::operator==(v4, v40);
            if (v41 < 0)
            {
              operator delete(v40[0]);
            }
          }

          if (v45 < 0)
          {
            operator delete(v44[0]);
          }
        }

        if (v47 < 0)
        {
          operator delete(v46);
        }
      }

      if (v43 < 0)
      {
        operator delete(v42);
      }

      if (v34)
      {
        operator new();
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(exception, "Unexpected command in MathSymbol::BuildLayoutTree");
LABEL_114:
      __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
    }
  }

  else
  {
    if (v5 != 1)
    {
      goto LABEL_34;
    }

    v6 = *a2;
    v40[0] = *a2;
    LODWORD(v7) = *v4;
    if (*v4 > 64)
    {
      if (v7 < 0x5B)
      {
        goto LABEL_14;
      }

      if (v7 >= 97)
      {
        if (v7 >= 0x7B)
        {
          goto LABEL_33;
        }

LABEL_14:
        v10 = 0;
        v11 = 3;
        if (v6)
        {
LABEL_15:
          if (v6 == 7)
          {
            v12 = v10 ^ 1;
          }

          else
          {
            v12 = 1;
          }

          if ((v12 & 1) == 0)
          {
            v36 = __cxa_allocate_exception(0x30uLL);
            std::wstring::basic_string[abi:ne200100]<0>(&v42, dword_2582E37B0);
            std::wstring::basic_string[abi:ne200100]<0>(&v46, dword_2582E3834);
            std::wstring::basic_string[abi:ne200100]<0>(v44, &dword_2582E3844);
            blahtex::Exception::Exception(v36, &v42, v4, &v46, v44);
          }

          if (v6 == 6)
          {
            v13 = v10 ^ 1;
          }

          else
          {
            v13 = 1;
          }

          if ((v13 & 1) == 0)
          {
            v14 = __cxa_allocate_exception(0x30uLL);
            std::wstring::basic_string[abi:ne200100]<0>(&v42, dword_2582E37B0);
            std::wstring::basic_string[abi:ne200100]<0>(&v46, dword_2582E3848);
            std::wstring::basic_string[abi:ne200100]<0>(v44, &dword_2582E3844);
            blahtex::Exception::Exception(v14, &v42, v4, &v46, v44);
          }

LABEL_30:
          operator new();
        }

LABEL_29:
        LODWORD(v40[0]) = v11;
        goto LABEL_30;
      }
    }

    v15 = *v4;
    if (v7 < 48)
    {
      goto LABEL_34;
    }
  }

  if (v15 <= 0x39)
  {
    v10 = 1;
    v11 = 1;
    if (v6)
    {
      goto LABEL_15;
    }

    goto LABEL_29;
  }

  goto LABEL_31;
}

void blahtex::ParseTree::MathSymbol::~MathSymbol(void **this)
{
  *this = &unk_28696BBE8;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_28696BBE8;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x259C7CB70);
}

uint64_t std::unordered_map<std::wstring_view,wchar_t>::unordered_map<std::pair<std::wstring_view,wchar_t> const*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      std::__hash_table<std::__hash_value_type<std::wstring_view,wchar_t>,std::__unordered_map_hasher<std::wstring_view,std::__hash_value_type<std::wstring_view,wchar_t>,std::hash<std::wstring_view>,std::equal_to<std::wstring_view>,true>,std::__unordered_map_equal<std::wstring_view,std::__hash_value_type<std::wstring_view,wchar_t>,std::equal_to<std::wstring_view>,std::hash<std::wstring_view>,true>,std::allocator<std::__hash_value_type<std::wstring_view,wchar_t>>>::__emplace_unique_key_args<std::wstring_view,std::pair<std::wstring_view,wchar_t> const&>(a1, v5);
      v5 += 24;
    }

    while (v5 != a3);
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<std::wstring_view,wchar_t>,std::__unordered_map_hasher<std::wstring_view,std::__hash_value_type<std::wstring_view,wchar_t>,std::hash<std::wstring_view>,std::equal_to<std::wstring_view>,true>,std::__unordered_map_equal<std::wstring_view,std::__hash_value_type<std::wstring_view,wchar_t>,std::equal_to<std::wstring_view>,std::hash<std::wstring_view>,true>,std::allocator<std::__hash_value_type<std::wstring_view,wchar_t>>>::__emplace_unique_key_args<std::wstring_view,std::pair<std::wstring_view,wchar_t> const&>(void *a1, uint64_t a2)
{
  v4 = std::__string_view_hash<wchar_t>::operator()[abi:ne200100](a1, *a2, *(a2 + 8));
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

  if (!std::equal_to<std::wstring_view>::operator()[abi:ne200100](a1, (v11 + 2), a2))
  {
    goto LABEL_17;
  }

  return v11;
}

uint64_t std::unordered_map<std::wstring_view,int>::unordered_map<std::pair<std::wstring_view,int> const*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      std::__hash_table<std::__hash_value_type<std::wstring_view,int>,std::__unordered_map_hasher<std::wstring_view,std::__hash_value_type<std::wstring_view,int>,std::hash<std::wstring_view>,std::equal_to<std::wstring_view>,true>,std::__unordered_map_equal<std::wstring_view,std::__hash_value_type<std::wstring_view,int>,std::equal_to<std::wstring_view>,std::hash<std::wstring_view>,true>,std::allocator<std::__hash_value_type<std::wstring_view,int>>>::__emplace_unique_key_args<std::wstring_view,std::pair<std::wstring_view,int> const&>(a1, v5);
      v5 += 24;
    }

    while (v5 != a3);
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<std::wstring_view,int>,std::__unordered_map_hasher<std::wstring_view,std::__hash_value_type<std::wstring_view,int>,std::hash<std::wstring_view>,std::equal_to<std::wstring_view>,true>,std::__unordered_map_equal<std::wstring_view,std::__hash_value_type<std::wstring_view,int>,std::equal_to<std::wstring_view>,std::hash<std::wstring_view>,true>,std::allocator<std::__hash_value_type<std::wstring_view,int>>>::__emplace_unique_key_args<std::wstring_view,std::pair<std::wstring_view,int> const&>(void *a1, uint64_t a2)
{
  v4 = std::__string_view_hash<wchar_t>::operator()[abi:ne200100](a1, *a2, *(a2 + 8));
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

  if (!std::equal_to<std::wstring_view>::operator()[abi:ne200100](a1, (v11 + 2), a2))
  {
    goto LABEL_17;
  }

  return v11;
}

uint64_t std::unordered_map<std::wstring_view,blahtex::OperatorInfo>::unordered_map<std::pair<std::wstring_view,blahtex::OperatorInfo> const*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      std::__hash_table<std::__hash_value_type<std::wstring_view,blahtex::OperatorInfo>,std::__unordered_map_hasher<std::wstring_view,std::__hash_value_type<std::wstring_view,blahtex::OperatorInfo>,std::hash<std::wstring_view>,std::equal_to<std::wstring_view>,true>,std::__unordered_map_equal<std::wstring_view,std::__hash_value_type<std::wstring_view,blahtex::OperatorInfo>,std::equal_to<std::wstring_view>,std::hash<std::wstring_view>,true>,std::allocator<std::__hash_value_type<std::wstring_view,blahtex::OperatorInfo>>>::__emplace_unique_key_args<std::wstring_view,std::pair<std::wstring_view,blahtex::OperatorInfo> const&>(a1, v5);
      v5 += 40;
    }

    while (v5 != a3);
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<std::wstring_view,blahtex::OperatorInfo>,std::__unordered_map_hasher<std::wstring_view,std::__hash_value_type<std::wstring_view,blahtex::OperatorInfo>,std::hash<std::wstring_view>,std::equal_to<std::wstring_view>,true>,std::__unordered_map_equal<std::wstring_view,std::__hash_value_type<std::wstring_view,blahtex::OperatorInfo>,std::equal_to<std::wstring_view>,std::hash<std::wstring_view>,true>,std::allocator<std::__hash_value_type<std::wstring_view,blahtex::OperatorInfo>>>::__emplace_unique_key_args<std::wstring_view,std::pair<std::wstring_view,blahtex::OperatorInfo> const&>(void *a1, uint64_t a2)
{
  v4 = std::__string_view_hash<wchar_t>::operator()[abi:ne200100](a1, *a2, *(a2 + 8));
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

  if (!std::equal_to<std::wstring_view>::operator()[abi:ne200100](a1, (v11 + 2), a2))
  {
    goto LABEL_17;
  }

  return v11;
}

uint64_t std::unordered_map<std::wstring_view,blahtex::IdentifierInfo>::unordered_map<std::pair<std::wstring_view,blahtex::IdentifierInfo> const*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      std::__hash_table<std::__hash_value_type<std::wstring_view,blahtex::IdentifierInfo>,std::__unordered_map_hasher<std::wstring_view,std::__hash_value_type<std::wstring_view,blahtex::IdentifierInfo>,std::hash<std::wstring_view>,std::equal_to<std::wstring_view>,true>,std::__unordered_map_equal<std::wstring_view,std::__hash_value_type<std::wstring_view,blahtex::IdentifierInfo>,std::equal_to<std::wstring_view>,std::hash<std::wstring_view>,true>,std::allocator<std::__hash_value_type<std::wstring_view,blahtex::IdentifierInfo>>>::__emplace_unique_key_args<std::wstring_view,std::pair<std::wstring_view,blahtex::IdentifierInfo> const&>(a1, v5);
      v5 += 48;
    }

    while (v5 != a3);
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<std::wstring_view,blahtex::IdentifierInfo>,std::__unordered_map_hasher<std::wstring_view,std::__hash_value_type<std::wstring_view,blahtex::IdentifierInfo>,std::hash<std::wstring_view>,std::equal_to<std::wstring_view>,true>,std::__unordered_map_equal<std::wstring_view,std::__hash_value_type<std::wstring_view,blahtex::IdentifierInfo>,std::equal_to<std::wstring_view>,std::hash<std::wstring_view>,true>,std::allocator<std::__hash_value_type<std::wstring_view,blahtex::IdentifierInfo>>>::__emplace_unique_key_args<std::wstring_view,std::pair<std::wstring_view,blahtex::IdentifierInfo> const&>(void *a1, uint64_t a2)
{
  v4 = std::__string_view_hash<wchar_t>::operator()[abi:ne200100](a1, *a2, *(a2 + 8));
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

  if (!std::equal_to<std::wstring_view>::operator()[abi:ne200100](a1, (v11 + 2), a2))
  {
    goto LABEL_17;
  }

  return v11;
}

uint64_t blahtex::lookupColour(uint64_t a1)
{
  v1 = *(a1 + 23);
  if ((v1 & 0x80u) != 0)
  {
    v1 = *(a1 + 8);
  }

  if (!v1)
  {
    return 0x10000000;
  }

  {
    std::unordered_map<std::wstring,unsigned int>::unordered_map<std::pair<std::wstring_view,unsigned int> const*>(blahtex::lookupColour(std::wstring const&)::gColourTable, &blahtex::gColourArray, &blahtex::gUnicodeNameArray);
  }

  v3 = std::__hash_table<std::__hash_value_type<std::wstring,unsigned int>,std::__unordered_map_hasher<std::wstring,std::__hash_value_type<std::wstring,unsigned int>,std::hash<std::wstring>,std::equal_to<std::wstring>,true>,std::__unordered_map_equal<std::wstring,std::__hash_value_type<std::wstring,unsigned int>,std::equal_to<std::wstring>,std::hash<std::wstring>,true>,std::allocator<std::__hash_value_type<std::wstring,unsigned int>>>::find<std::wstring>(blahtex::lookupColour(std::wstring const&)::gColourTable, a1);
  if (v3)
  {
    return *(v3 + 10);
  }

  v5 = *(a1 + 23);
  if (v5 < 0)
  {
    v6 = *(a1 + 8);
    if (v6 != 6)
    {
LABEL_21:
      if (v6 == 3)
      {
        v11 = 0;
        LODWORD(result) = 0;
        if (v5 >= 0)
        {
          v12 = a1;
        }

        else
        {
          v12 = *a1;
        }

        do
        {
          v13 = *(v12 + v11);
          v14 = v13 - 48;
          if ((v13 - 48) >= 0xA)
          {
            if ((v13 - 65) > 5)
            {
              if ((v13 - 103) < 0xFFFFFFFA)
              {
                return 0x10000000;
              }

              v14 = v13 - 87;
            }

            else
            {
              v14 = v13 - 55;
            }
          }

          v11 += 4;
          result = (17 * v14 + (result << 8));
        }

        while (v11 != 12);
        return result;
      }

      return 0x10000000;
    }
  }

  else if (v5 != 6)
  {
    v6 = *(a1 + 23);
    goto LABEL_21;
  }

  v7 = 0;
  LODWORD(result) = 0;
  if (v5 >= 0)
  {
    v8 = a1;
  }

  else
  {
    v8 = *a1;
  }

  do
  {
    v9 = *(v8 + v7);
    v10 = v9 - 48;
    if ((v9 - 48) >= 0xA)
    {
      if ((v9 - 65) > 5)
      {
        if ((v9 - 103) < 0xFFFFFFFA)
        {
          return 0x10000000;
        }

        v10 = v9 - 87;
      }

      else
      {
        v10 = v9 - 55;
      }
    }

    v7 += 4;
    result = (v10 + 16 * result);
  }

  while (v7 != 24);
  return result;
}

uint64_t blahtex::TexMathFont::GetMathmlApproximation(blahtex::TexMathFont *this)
{
  v1 = *this - 1;
  if (v1 >= 8)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Unexpected TexMathFont data");
    __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
  }

  v2 = &unk_2582EDE3C;
  if (*(this + 4))
  {
    v2 = &unk_2582EDE1C;
  }

  return v2[v1];
}

uint64_t blahtex::TexTextFont::GetMathmlApproximation(blahtex::TexTextFont *this)
{
  v1 = *this;
  if (*this == 2)
  {
    return 13;
  }

  if (v1 == 1)
  {
    v2 = *(this + 4);
    if (*(this + 5))
    {
      v3 = 11;
    }

    else
    {
      v3 = 9;
    }

    if (*(this + 5))
    {
      v4 = 12;
    }

    else
    {
      v4 = 10;
    }
  }

  else
  {
    if (v1)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(exception, "Unexpected TexTextFont data");
      __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
    }

    v2 = *(this + 4);
    if (*(this + 5))
    {
      v3 = 2;
    }

    else
    {
      v3 = 0;
    }

    if (*(this + 5))
    {
      v4 = 3;
    }

    else
    {
      v4 = 1;
    }
  }

  if (v2 == 1)
  {
    return v4;
  }

  else
  {
    return v3;
  }
}

void blahtex::ParseTree::MathList::~MathList(blahtex::ParseTree::MathList *this)
{
  *this = &unk_28696BC38;
  v3 = *(this + 1);
  v2 = *(this + 2);
  if (v3 != v2)
  {
    do
    {
      if (*v3)
      {
        (*(**v3 + 8))(*v3);
        v2 = *(this + 2);
      }

      ++v3;
    }

    while (v3 != v2);
    v3 = *(this + 1);
  }

  if (v3)
  {
    *(this + 2) = v3;
    operator delete(v3);
  }
}

{
  blahtex::ParseTree::MathList::~MathList(this);

  JUMPOUT(0x259C7CB70);
}

void blahtex::ParseTree::MathTableRow::~MathTableRow(blahtex::ParseTree::MathTableRow *this)
{
  *this = &unk_28696BC70;
  v3 = *(this + 1);
  v2 = *(this + 2);
  if (v3 != v2)
  {
    do
    {
      if (*v3)
      {
        (*(**v3 + 8))(*v3);
        v2 = *(this + 2);
      }

      ++v3;
    }

    while (v3 != v2);
    v3 = *(this + 1);
  }

  if (v3)
  {
    *(this + 2) = v3;
    operator delete(v3);
  }
}

{
  blahtex::ParseTree::MathTableRow::~MathTableRow(this);

  JUMPOUT(0x259C7CB70);
}

void blahtex::ParseTree::MathTable::~MathTable(blahtex::ParseTree::MathTable *this)
{
  *this = &unk_28696BCA8;
  v3 = *(this + 1);
  v2 = *(this + 2);
  if (v3 != v2)
  {
    do
    {
      if (*v3)
      {
        (*(**v3 + 8))(*v3);
        v2 = *(this + 2);
      }

      ++v3;
    }

    while (v3 != v2);
    v3 = *(this + 1);
  }

  if (v3)
  {
    *(this + 2) = v3;
    operator delete(v3);
  }
}

{
  blahtex::ParseTree::MathTable::~MathTable(this);

  JUMPOUT(0x259C7CB70);
}

void blahtex::ParseTree::TextList::~TextList(blahtex::ParseTree::TextList *this)
{
  *this = &unk_28696BCE0;
  v3 = *(this + 1);
  v2 = *(this + 2);
  if (v3 != v2)
  {
    do
    {
      if (*v3)
      {
        (*(**v3 + 8))(*v3);
        v2 = *(this + 2);
      }

      ++v3;
    }

    while (v3 != v2);
    v3 = *(this + 1);
  }

  if (v3)
  {
    *(this + 2) = v3;
    operator delete(v3);
  }
}

{
  blahtex::ParseTree::TextList::~TextList(this);

  JUMPOUT(0x259C7CB70);
}

void *blahtex::ParseTree::MathStateChange::Apply(uint64_t a1, _DWORD *a2)
{
  {
    std::unordered_map<std::wstring,blahtex::LayoutTree::Node::Style>::unordered_map<std::pair<std::wstring_view,blahtex::LayoutTree::Node::Style> const*>(blahtex::ParseTree::MathStateChange::Apply(blahtex::TexProcessingState &)const::styleCommandTable, &blahtex::ParseTree::MathStateChange::Apply(blahtex::TexProcessingState &)const::styleCommandArray, &blahtex::ParseTree::MathStateChange::Apply(blahtex::TexProcessingState &)const::fontCommandArray);
  }

  result = std::__hash_table<std::__hash_value_type<std::wstring,unsigned int>,std::__unordered_map_hasher<std::wstring,std::__hash_value_type<std::wstring,unsigned int>,std::hash<std::wstring>,std::equal_to<std::wstring>,true>,std::__unordered_map_equal<std::wstring,std::__hash_value_type<std::wstring,unsigned int>,std::equal_to<std::wstring>,std::hash<std::wstring>,true>,std::allocator<std::__hash_value_type<std::wstring,unsigned int>>>::find<std::wstring>(blahtex::ParseTree::MathStateChange::Apply(blahtex::TexProcessingState &)const::styleCommandTable, a1 + 8);
  if (result)
  {
    a2[4] = *(result + 10);
  }

  else
  {
    {
      std::unordered_map<std::wstring,blahtex::TexMathFont::Family>::unordered_map<std::pair<std::wstring_view,blahtex::TexMathFont::Family> const*>(blahtex::ParseTree::MathStateChange::Apply(blahtex::TexProcessingState &)const::fontCommandTable, &blahtex::ParseTree::MathStateChange::Apply(blahtex::TexProcessingState &)const::fontCommandArray, &blahtex::ParseTree::TextStateChange::Apply(blahtex::TexProcessingState &)const::textCommandArray);
    }

    result = std::__hash_table<std::__hash_value_type<std::wstring,unsigned int>,std::__unordered_map_hasher<std::wstring,std::__hash_value_type<std::wstring,unsigned int>,std::hash<std::wstring>,std::equal_to<std::wstring>,true>,std::__unordered_map_equal<std::wstring,std::__hash_value_type<std::wstring,unsigned int>,std::equal_to<std::wstring>,std::hash<std::wstring>,true>,std::allocator<std::__hash_value_type<std::wstring,unsigned int>>>::find<std::wstring>(blahtex::ParseTree::MathStateChange::Apply(blahtex::TexProcessingState &)const::fontCommandTable, a1 + 8);
    if (!result)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(exception, "Unexpected command in MathStateChange::Apply");
      __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
    }

    *a2 = *(result + 10);
  }

  return result;
}

void *blahtex::ParseTree::TextStateChange::Apply(uint64_t a1, uint64_t a2)
{
  {
    std::unordered_map<std::wstring_view,blahtex::TexTextFont>::unordered_map<std::pair<std::wstring_view,blahtex::TexTextFont> const*>(blahtex::ParseTree::TextStateChange::Apply(blahtex::TexProcessingState &)const::textCommandTable, &blahtex::ParseTree::TextStateChange::Apply(blahtex::TexProcessingState &)const::textCommandArray, &blahtex::ParseTree::FontEncodingName);
  }

  v4 = *(a1 + 31);
  if (v4 < 0)
  {
    v5 = *(a1 + 8);
    v4 = *(a1 + 16);
  }

  else
  {
    v5 = a1 + 8;
  }

  v9[0] = v5;
  v9[1] = v4;
  result = std::__hash_table<std::__hash_value_type<std::wstring_view,blahtex::TexTextFont>,std::__unordered_map_hasher<std::wstring_view,std::__hash_value_type<std::wstring_view,blahtex::TexTextFont>,std::hash<std::wstring_view>,std::equal_to<std::wstring_view>,true>,std::__unordered_map_equal<std::wstring_view,std::__hash_value_type<std::wstring_view,blahtex::TexTextFont>,std::equal_to<std::wstring_view>,std::hash<std::wstring_view>,true>,std::allocator<std::__hash_value_type<std::wstring_view,blahtex::TexTextFont>>>::find<std::wstring_view>(blahtex::ParseTree::TextStateChange::Apply(blahtex::TexProcessingState &)const::textCommandTable, v9);
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Unexpected command in TextStateChange::Apply");
    __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
  }

  v7 = *(result + 8);
  *(a2 + 12) = *(result + 18);
  *(a2 + 8) = v7;
  return result;
}

uint64_t blahtex::ParseTree::MathColour::Apply(uint64_t a1, uint64_t a2)
{
  result = blahtex::lookupColour(a1 + 40);
  if (result == 0x10000000)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Cannot find colour name in MathColour::Apply");
    __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
  }

  *(a2 + 20) = result;
  return result;
}

uint64_t blahtex::ParseTree::TextColour::Apply(uint64_t a1, uint64_t a2)
{
  result = blahtex::lookupColour(a1 + 40);
  if (result == 0x10000000)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Cannot find colour name in TextColour::Apply");
    __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
  }

  *(a2 + 20) = result;
  return result;
}

void *blahtex::ParseTree::MathSymbol::GetPurifiedTex(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a1 + 8;
  blahtex::LatexFeatures::Update(a3, a1 + 8);
  v6 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(a2, &unk_2582E9704, 1);
  v7 = *(a1 + 31);
  if (v7 >= 0)
  {
    v8 = v5;
  }

  else
  {
    v8 = *(a1 + 8);
  }

  if (v7 >= 0)
  {
    v9 = *(a1 + 31);
  }

  else
  {
    v9 = *(a1 + 16);
  }

  return std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v6, v8, v9);
}

const __int32 *blahtex::LatexFeatures::Update(uint64_t a1, uint64_t a2)
{
  {
    std::unordered_set<std::wstring_view>::unordered_set<std::wstring_view const*>(blahtex::LatexFeatures::Update(std::wstring const&)::gNeedsAmsmathTable, &blahtex::LatexFeatures::Update(std::wstring const&)::gNeedsAmsmathArray, &blahtex::LatexFeatures::Update(std::wstring const&)::gNeedsAmssymbArray);
  }

  {
    std::unordered_set<std::wstring_view>::unordered_set<std::wstring_view const*>(blahtex::LatexFeatures::Update(std::wstring const&)::gNeedsAmssymbTable, &blahtex::LatexFeatures::Update(std::wstring const&)::gNeedsAmssymbArray, &blahtex::gColourArray);
  }

  v4 = *(a2 + 23);
  result = *a2;
  if (v4 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (*v6 == 92)
  {
    if (v4 < 0)
    {
      if (*(a2 + 8) != 4)
      {
        goto LABEL_13;
      }
    }

    else
    {
      result = a2;
      if (v4 != 4)
      {
        goto LABEL_13;
      }
    }

    result = wmemcmp(result, dword_2582E9CF4, 4uLL);
    if (!result)
    {
      *(a1 + 3) = 1;
      *(a1 + 5) = 1;
    }

LABEL_13:
    v7 = *(a2 + 23);
    if (v7 < 0)
    {
      if (*(a2 + 8) != 4)
      {
        goto LABEL_20;
      }

      result = *a2;
    }

    else
    {
      result = a2;
      if (v7 != 4)
      {
        goto LABEL_20;
      }
    }

    result = wmemcmp(result, dword_2582E9D08, 4uLL);
    if (!result)
    {
      *(a1 + 6) = 257;
    }

LABEL_20:
    if ((*(a1 + 1) & 1) != 0 || (*(a2 + 23) & 0x80000000) == 0)
    {
      goto LABEL_30;
    }

    if (*(a2 + 8) == 7)
    {
      result = wmemcmp(*a2, dword_2582ED1CC, 7uLL);
      if (!result)
      {
LABEL_29:
        *(a1 + 1) = 1;
LABEL_30:
        if ((*a1 & 1) == 0)
        {
          v9 = *(a2 + 23);
          if ((v9 & 0x80u) == 0)
          {
            v10 = a2;
          }

          else
          {
            v10 = *a2;
          }

          if ((v9 & 0x80u) != 0)
          {
            v9 = *(a2 + 8);
          }

          v13 = v10;
          v14 = v9;
          result = std::__hash_table<std::wstring_view,std::hash<std::wstring_view>,std::equal_to<std::wstring_view>,std::allocator<std::wstring_view>>::find<std::wstring_view>(blahtex::LatexFeatures::Update(std::wstring const&)::gNeedsAmsmathTable, &v13);
          if (result)
          {
            *a1 = 1;
          }
        }

        if ((*(a1 + 2) & 1) == 0)
        {
          v11 = *(a2 + 23);
          if ((v11 & 0x80u) == 0)
          {
            v12 = a2;
          }

          else
          {
            v12 = *a2;
          }

          if ((v11 & 0x80u) != 0)
          {
            v11 = *(a2 + 8);
          }

          v13 = v12;
          v14 = v11;
          result = std::__hash_table<std::wstring_view,std::hash<std::wstring_view>,std::equal_to<std::wstring_view>,std::allocator<std::wstring_view>>::find<std::wstring_view>(blahtex::LatexFeatures::Update(std::wstring const&)::gNeedsAmssymbTable, &v13);
          if (result)
          {
            *(a1 + 2) = 1;
          }
        }

        return result;
      }

      v8 = *(a2 + 23) < 0;
    }

    else
    {
      v8 = 1;
    }

    if (!v8)
    {
      goto LABEL_30;
    }

    if (*(a2 + 8) != 9)
    {
      goto LABEL_30;
    }

    result = wmemcmp(*a2, dword_2582ED1EC, 9uLL);
    if (result)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  return result;
}

void *blahtex::ParseTree::MathCommand1Arg::GetPurifiedTex(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = a1 + 8;
  blahtex::LatexFeatures::Update(a3, a1 + 8);
  v9 = *(a1 + 31);
  if (v9 >= 0)
  {
    v10 = v8;
  }

  else
  {
    v10 = *(a1 + 8);
  }

  if (v9 >= 0)
  {
    v11 = *(a1 + 31);
  }

  else
  {
    v11 = *(a1 + 16);
  }

  v12 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(a2, v10, v11);
  std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v12, &unk_2582E970C, 1);
  (*(**(a1 + 40) + 24))(*(a1 + 40), a2, a3, a4);

  return std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(a2, &unk_2582E9714, 1);
}

void *blahtex::ParseTree::MathStateChange::GetPurifiedTex(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a1 + 8;
  blahtex::LatexFeatures::Update(a3, a1 + 8);
  v6 = *(a1 + 31);
  if (v6 >= 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = *(a1 + 8);
  }

  if (v6 >= 0)
  {
    v8 = *(a1 + 31);
  }

  else
  {
    v8 = *(a1 + 16);
  }

  v9 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(a2, v7, v8);

  return std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v9, &unk_2582E9704, 1);
}

void *blahtex::ParseTree::MathColour::GetPurifiedTex(uint64_t a1, void *a2, uint64_t a3)
{
  *(a3 + 4) = 1;
  v4 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(a2, &unk_2582E971C, 7);
  v7 = *(a1 + 40);
  v6 = a1 + 40;
  v5 = v7;
  v8 = *(v6 + 23);
  if (v8 >= 0)
  {
    v9 = v6;
  }

  else
  {
    v9 = v5;
  }

  if (v8 >= 0)
  {
    v10 = *(v6 + 23);
  }

  else
  {
    v10 = *(v6 + 8);
  }

  v11 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v4, v9, v10);

  return std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v11, &unk_2582E9714, 1);
}

void *blahtex::ParseTree::MathCommand2Args::GetPurifiedTex(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = (a1 + 8);
  blahtex::LatexFeatures::Update(a3, a1 + 8);
  if (*(a1 + 56) != 1)
  {
    std::wstring::basic_string[abi:ne200100]<0>(__p, dword_2582E973C);
    v15 = blahtex::Token::operator==(v8, __p);
    v16 = v15;
    if (v25 < 0)
    {
      operator delete(__p[0]);
      if (v16)
      {
        goto LABEL_13;
      }
    }

    else if (v15)
    {
LABEL_13:
      std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(a2, &unk_2582E9774, 7);
      (*(**(a1 + 40) + 24))(*(a1 + 40), a2, a3, a4);
      v17 = &unk_2582E9794;
      v18 = a2;
      v19 = 3;
LABEL_22:
      std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v18, v17, v19);
      (*(**(a1 + 48) + 24))(*(a1 + 48), a2, a3, a4);
      return std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(a2, &unk_2582E9714, 1);
    }

    v20 = *(a1 + 31);
    if (v20 >= 0)
    {
      v21 = v8;
    }

    else
    {
      v21 = *(a1 + 8);
    }

    if (v20 >= 0)
    {
      v22 = *(a1 + 31);
    }

    else
    {
      v22 = *(a1 + 16);
    }

    v23 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(a2, v21, v22);
    std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v23, &unk_2582E970C, 1);
    (*(**(a1 + 40) + 24))(*(a1 + 40), a2, a3, a4);
    v17 = &unk_2582E97A4;
    v18 = a2;
    v19 = 2;
    goto LABEL_22;
  }

  std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(a2, &unk_2582E970C, 1);
  (*(**(a1 + 40) + 24))(*(a1 + 40), a2, a3, a4);
  v9 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(a2, &unk_2582E9714, 1);
  v10 = *(a1 + 31);
  if (v10 >= 0)
  {
    v11 = v8;
  }

  else
  {
    v11 = *(a1 + 8);
  }

  if (v10 >= 0)
  {
    v12 = *(a1 + 31);
  }

  else
  {
    v12 = *(a1 + 16);
  }

  v13 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v9, v11, v12);
  std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v13, &unk_2582E970C, 1);
  (*(**(a1 + 48) + 24))(*(a1 + 48), a2, a3, a4);

  return std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(a2, &unk_2582E9714, 1);
}

void sub_2582C60A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *blahtex::ParseTree::MathGroup::GetPurifiedTex(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(a2, &unk_2582E970C, 1);
  (*(**(a1 + 8) + 24))(*(a1 + 8), a2, a3, a4);

  return std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(a2, &unk_2582E9714, 1);
}

void *blahtex::ParseTree::MathPhantom::GetPurifiedTex(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(a2, &unk_2582E97B0, 9);
  (*(**(a1 + 8) + 24))(*(a1 + 8), a2, a3, a4);

  return std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(a2, &unk_2582E9714, 1);
}

void *blahtex::ParseTree::MathCancel::GetPurifiedTex(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(a2, &unk_2582E97D8, 8);
  (*(**(a1 + 8) + 24))(*(a1 + 8), a2, a3, a4);

  return std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(a2, &unk_2582E9714, 1);
}

uint64_t blahtex::ParseTree::MathList::GetPurifiedTex(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 8);
  if (v4 != *(result + 16))
  {
    v8 = result;
    do
    {
      v9 = *v4++;
      result = (*(*v9 + 24))(v9, a2, a3, a4);
    }

    while (v4 != *(v8 + 16));
  }

  return result;
}

void *blahtex::ParseTree::MathScripts::GetPurifiedTex(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  result = *(a1 + 8);
  if (result)
  {
    result = (*(*result + 24))(result, a2, a3, a4);
  }

  if (*(a1 + 16))
  {
    std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(a2, &unk_2582E97FC, 2);
    (*(**(a1 + 16) + 24))(*(a1 + 16), a2, a3, a4);
    result = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(a2, &unk_2582E9714, 1);
  }

  if (*(a1 + 24))
  {
    std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(a2, &unk_2582E9808, 2);
    (*(**(a1 + 24) + 24))(*(a1 + 24), a2, a3, a4);

    return std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(a2, &unk_2582E9714, 1);
  }

  return result;
}

void *blahtex::ParseTree::MathLimits::GetPurifiedTex(uint64_t a1, void *a2)
{
  (*(**(a1 + 40) + 24))(*(a1 + 40));
  v6 = *(a1 + 8);
  v5 = a1 + 8;
  v4 = v6;
  v7 = *(v5 + 23);
  if (v7 >= 0)
  {
    v8 = v5;
  }

  else
  {
    v8 = v4;
  }

  if (v7 >= 0)
  {
    v9 = *(v5 + 23);
  }

  else
  {
    v9 = *(v5 + 8);
  }

  return std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(a2, v8, v9);
}

void *blahtex::ParseTree::MathDelimited::GetPurifiedTex(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = a1 + 16;
  blahtex::LatexFeatures::Update(a3, a1 + 16);
  blahtex::LatexFeatures::Update(a3, a1 + 48);
  v9 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(a2, &unk_2582E9814, 5);
  v10 = *(a1 + 39);
  if (v10 >= 0)
  {
    v11 = v8;
  }

  else
  {
    v11 = *(a1 + 16);
  }

  if (v10 >= 0)
  {
    v12 = *(a1 + 39);
  }

  else
  {
    v12 = *(a1 + 24);
  }

  std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v9, v11, v12);
  (*(**(a1 + 8) + 24))(*(a1 + 8), a2, a3, a4);
  v13 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(a2, &unk_2582E982C, 6);
  v14 = *(a1 + 71);
  if (v14 >= 0)
  {
    v15 = a1 + 48;
  }

  else
  {
    v15 = *(a1 + 48);
  }

  if (v14 >= 0)
  {
    v16 = *(a1 + 71);
  }

  else
  {
    v16 = *(a1 + 56);
  }

  return std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v13, v15, v16);
}

void *blahtex::ParseTree::MathMiddle::GetPurifiedTex(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a1 + 8;
  blahtex::LatexFeatures::Update(a3, a1 + 8);
  v6 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(a2, &unk_2582E9848, 7);
  v7 = *(a1 + 31);
  if (v7 >= 0)
  {
    v8 = v5;
  }

  else
  {
    v8 = *(a1 + 8);
  }

  if (v7 >= 0)
  {
    v9 = *(a1 + 31);
  }

  else
  {
    v9 = *(a1 + 16);
  }

  return std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v6, v8, v9);
}

void *blahtex::ParseTree::MathBig::GetPurifiedTex(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a1 + 8;
  blahtex::LatexFeatures::Update(a3, a1 + 8);
  blahtex::LatexFeatures::Update(a3, a1 + 40);
  v7 = *(a1 + 31);
  if (v7 >= 0)
  {
    v8 = v6;
  }

  else
  {
    v8 = *(a1 + 8);
  }

  if (v7 >= 0)
  {
    v9 = *(a1 + 31);
  }

  else
  {
    v9 = *(a1 + 16);
  }

  v10 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(a2, v8, v9);
  v11 = *(a1 + 63);
  if (v11 >= 0)
  {
    v12 = a1 + 40;
  }

  else
  {
    v12 = *(a1 + 40);
  }

  if (v11 >= 0)
  {
    v13 = *(a1 + 63);
  }

  else
  {
    v13 = *(a1 + 48);
  }

  return std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v10, v12, v13);
}

uint64_t blahtex::ParseTree::MathTableRow::GetPurifiedTex(uint64_t result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 8);
  if (v4 != *(result + 16))
  {
    v8 = result;
    do
    {
      if (v4 != *(v8 + 8))
      {
        std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(a2, &unk_2582E9868, 2);
      }

      v9 = *v4++;
      result = (*(*v9 + 24))(v9, a2, a3, a4);
    }

    while (v4 != *(v8 + 16));
  }

  return result;
}

uint64_t blahtex::ParseTree::MathTable::GetPurifiedTex(uint64_t result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 8);
  if (v4 != *(result + 16))
  {
    v8 = result;
    do
    {
      if (v4 != *(v8 + 8))
      {
        std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(a2, &unk_2582E9874, 3);
      }

      v9 = *v4++;
      result = (*(*v9 + 24))(v9, a2, a3, a4);
    }

    while (v4 != *(v8 + 16));
  }

  return result;
}

void blahtex::ParseTree::MathEnvironment::GetPurifiedTex(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v22[2] = *MEMORY[0x277D85DE8];
  memset(&__p, 0, sizeof(__p));
  v19 = 0;
  v20 = 0uLL;
  if (*(a1 + 48) == 1)
  {
    std::operator+<wchar_t>(&unk_2582E9884, (a1 + 8), &v18.__r_.__value_.__l.__data_);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p = v18;
    blahtex::LatexFeatures::Update(a3, &__p);
    std::wstring::append(&__p, dword_2582E970C);
    MEMORY[0x259C7C920](&v19, dword_2582E9714);
  }

  else
  {
    std::operator+<wchar_t>(dword_2582E988C, (a1 + 8), &v18.__r_.__value_.__l.__data_);
    v8 = std::wstring::append(&v18, dword_2582E9714);
    v9 = v8->__r_.__value_.__r.__words[0];
    v22[0] = v8->__r_.__value_.__l.__size_;
    *(v22 + 7) = *(&v8->__r_.__value_.__r.__words[1] + 7);
    v10 = HIBYTE(v8->__r_.__value_.__r.__words[2]);
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p.__r_.__value_.__r.__words[0] = v9;
    __p.__r_.__value_.__l.__size_ = v22[0];
    *(&__p.__r_.__value_.__r.__words[1] + 7) = *(v22 + 7);
    *(&__p.__r_.__value_.__s + 23) = v10;
    if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v18.__r_.__value_.__l.__data_);
    }

    blahtex::LatexFeatures::Update(a3, &__p);
    std::operator+<wchar_t>(dword_2582E98AC, (a1 + 8), &v18.__r_.__value_.__l.__data_);
    v11 = std::wstring::append(&v18, dword_2582E9714);
    v12 = v11->__r_.__value_.__r.__words[0];
    v22[0] = v11->__r_.__value_.__l.__size_;
    *(v22 + 7) = *(&v11->__r_.__value_.__r.__words[1] + 7);
    v13 = HIBYTE(v11->__r_.__value_.__r.__words[2]);
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v20) < 0)
    {
      operator delete(v19);
    }

    v19 = v12;
    *&v20 = v22[0];
    *(&v20 + 7) = *(v22 + 7);
    HIBYTE(v20) = v13;
    if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v18.__r_.__value_.__l.__data_);
    }
  }

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

  std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(a2, p_p, size);
  (*(**(a1 + 40) + 24))(*(a1 + 40), a2, a3, a4);
  if (v20 >= 0)
  {
    v16 = &v19;
  }

  else
  {
    v16 = v19;
  }

  if (v20 >= 0)
  {
    v17 = HIBYTE(v20);
  }

  else
  {
    v17 = v20;
  }

  std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(a2, v16, v17);
  if (SHIBYTE(v20) < 0)
  {
    operator delete(v19);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_2582C6AD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t blahtex::ParseTree::TextList::GetPurifiedTex(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 8);
  if (v4 != *(result + 16))
  {
    v8 = result;
    do
    {
      v9 = *v4++;
      result = (*(*v9 + 24))(v9, a2, a3, a4);
    }

    while (v4 != *(v8 + 16));
  }

  return result;
}

void *blahtex::ParseTree::TextGroup::GetPurifiedTex(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(a2, dword_2582E970C, 1);
  (*(**(a1 + 8) + 24))(*(a1 + 8), a2, a3, a4);

  return std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(a2, dword_2582E9714, 1);
}

void *blahtex::ParseTree::TextPhantom::GetPurifiedTex(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(a2, &unk_2582E97B0, 9);
  (*(**(a1 + 8) + 24))(*(a1 + 8), a2, a3, a4);

  return std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(a2, dword_2582E9714, 1);
}

void *blahtex::ParseTree::TextCancel::GetPurifiedTex(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(a2, &unk_2582E97D8, 8);
  (*(**(a1 + 8) + 24))(*(a1 + 8), a2, a3, a4);

  return std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(a2, dword_2582E9714, 1);
}

uint64_t blahtex::ParseTree::FormatCodePoint@<X0>(blahtex::ParseTree *this@<X0>, std::wstringbuf::string_type *a2@<X8>)
{
  std::wostringstream::basic_ostringstream[abi:ne200100](&v11);
  v4 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(&v11, &unk_2582E98C4, 2);
  v5 = *v4;
  v6 = *v4;
  *(v4 + *(*v4 - 24) + 8) = *(v4 + *(*v4 - 24) + 8) & 0xFFFFFFB5 | 8;
  v7 = (v4 + *(v6 - 24));
  if (v7[1].__fmtflags_ == -1)
  {
    std::ios_base::getloc(v7);
    v8 = std::locale::use_facet(&v14, MEMORY[0x277D82688]);
    v9 = (v8->__vftable[3].__on_zero_shared)(v8, 32);
    std::locale::~locale(&v14);
    v7[1].__fmtflags_ = v9;
    v5 = *v4;
  }

  v7[1].__fmtflags_ = 48;
  *(v4 + *(v5 - 24) + 8) |= 0x4000u;
  *(v4 + *(v5 - 24) + 24) = 8;
  MEMORY[0x259C7CA80](v4, this);
  std::wstringbuf::str(a2, &v12);
  if (SHIBYTE(v12.__str_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__str_.__r_.__value_.__l.__data_);
  }

  v12.__vftable = (MEMORY[0x277D82870] + 16);
  std::locale::~locale(&v12.__loc_);
  std::wostream::~wostream();
  return MEMORY[0x259C7CB30](&v13);
}

void sub_2582C6FD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  MEMORY[0x259C7CB30](&a23);
  _Unwind_Resume(a1);
}

void *blahtex::ParseTree::TextSymbol::GetPurifiedTex(uint64_t a1, void *a2, uint64_t a3, unsigned int a4)
{
  {
    std::set<wchar_t>::set[abi:ne200100]<wchar_t const*>(&blahtex::ParseTree::TextSymbol::GetPurifiedTex(std::wostream &,blahtex::LatexFeatures &,blahtex::FontEncoding)const::gSimpleUnicodeTable, blahtex::ParseTree::TextSymbol::GetPurifiedTex(std::wostream &,blahtex::LatexFeatures &,blahtex::FontEncoding)const::gSimpleUnicodeArray, dword_2582E9C18);
  }

  v8 = (a1 + 8);
  if (*(a1 + 31) < 0)
  {
    if (*(a1 + 16) <= 1uLL)
    {
      v9 = **v8;
      if (v9 > 127)
      {
        goto LABEL_21;
      }
    }

LABEL_8:
    std::wstring::basic_string[abi:ne200100]<0>(__p, &unk_2582E9704);
    v10 = std::operator!=[abi:ne200100]<wchar_t,std::char_traits<wchar_t>,std::allocator<wchar_t>>((a1 + 8), __p);
    if (a4)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    if (v29 < 0)
    {
      operator delete(__p[0]);
    }

    if (v11)
    {
      exception = __cxa_allocate_exception(0x30uLL);
      std::wstring::basic_string[abi:ne200100]<0>(__p, dword_2582E9C18);
      std::wstring::basic_string<std::wstring_view,0>(&__dst, (&blahtex::ParseTree::FontEncodingName + 2 * a4));
      std::wstring::basic_string[abi:ne200100]<0>(v26, &dword_2582E9C60);
      blahtex::Exception::Exception(exception, __p, a1 + 8, &__dst, v26);
    }

    blahtex::LatexFeatures::Update(a3, a1 + 8);
    v12 = *(a1 + 31);
    if (v12 >= 0)
    {
      v13 = (a1 + 8);
    }

    else
    {
      v13 = *(a1 + 8);
    }

    if (v12 >= 0)
    {
      v14 = *(a1 + 31);
    }

    else
    {
      v14 = *(a1 + 16);
    }

    v15 = a2;
    return std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v15, v13, v14);
  }

  if (*(a1 + 31) > 1u)
  {
    goto LABEL_8;
  }

  v9 = *v8;
  if (v9 < 128)
  {
    goto LABEL_8;
  }

LABEL_21:
  for (i = qword_27F926EE0; i; i = *i)
  {
    v17 = *(i + 28);
    if (v9 >= v17)
    {
      if (v17 >= v9)
      {
        if (a4)
        {
          v24 = __cxa_allocate_exception(0x30uLL);
          std::wstring::basic_string[abi:ne200100]<0>(__p, dword_2582E9C18);
          blahtex::ParseTree::FormatCodePoint(v9, &__dst);
          std::wstring::basic_string<std::wstring_view,0>(v26, (&blahtex::ParseTree::FontEncodingName + 2 * a4));
          std::wstring::basic_string[abi:ne200100]<0>(v25, &dword_2582E9C60);
          blahtex::Exception::Exception(v24, __p, &__dst, v26, v25);
        }

        *(a3 + 3) = 1;
LABEL_38:
        v18 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(a2, &unk_2582E9C64, 9);
        v15 = MEMORY[0x259C7CA80](v18, v9);
        v13 = dword_2582E9714;
        goto LABEL_39;
      }

      i += 8;
    }
  }

  if ((v9 - 1024) <= 0x5F)
  {
    if (a4 != 1)
    {
      v22 = __cxa_allocate_exception(0x30uLL);
      std::wstring::basic_string[abi:ne200100]<0>(__p, dword_2582E9C8C);
      blahtex::ParseTree::FormatCodePoint(v9, &__dst);
      std::wstring::basic_string<std::wstring_view,0>(v26, (&blahtex::ParseTree::FontEncodingName + 2 * a4));
      std::wstring::basic_string[abi:ne200100]<0>(v25, dword_2582E9CF4);
      blahtex::Exception::Exception(v22, __p, &__dst, v26, v25);
    }

    *(a3 + 3) = 1;
    *(a3 + 5) = 1;
    goto LABEL_38;
  }

  if ((v9 - 12352) >= 0xC0 && (v9 - 13312) >> 10 >= 0x1B && (v9 - 63744) > 0x1E0)
  {
    v21 = __cxa_allocate_exception(0x30uLL);
    std::wstring::basic_string[abi:ne200100]<0>(__p, dword_2582E9D1C);
    blahtex::ParseTree::FormatCodePoint(v9, &__dst);
    std::wstring::basic_string[abi:ne200100]<0>(v26, &dword_2582E9C60);
    std::wstring::basic_string[abi:ne200100]<0>(v25, &dword_2582E9C60);
    blahtex::Exception::Exception(v21, __p, &__dst, v26, v25);
  }

  if (a4 != 2)
  {
    v23 = __cxa_allocate_exception(0x30uLL);
    std::wstring::basic_string[abi:ne200100]<0>(__p, dword_2582E9C8C);
    blahtex::ParseTree::FormatCodePoint(v9, &__dst);
    std::wstring::basic_string<std::wstring_view,0>(v26, (&blahtex::ParseTree::FontEncodingName + 2 * a4));
    std::wstring::basic_string[abi:ne200100]<0>(v25, dword_2582E9D08);
    blahtex::Exception::Exception(v23, __p, &__dst, v26, v25);
  }

  *(a3 + 6) = 257;
  if (*(a1 + 31) < 0)
  {
    v8 = *v8;
  }

  LODWORD(__p[0]) = *v8;
  v13 = __p;
  v15 = a2;
LABEL_39:
  v14 = 1;
  return std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v15, v13, v14);
}

void *blahtex::ParseTree::TextStateChange::GetPurifiedTex(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a1 + 8;
  blahtex::LatexFeatures::Update(a3, a1 + 8);
  v6 = *(a1 + 31);
  if (v6 >= 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = *(a1 + 8);
  }

  if (v6 >= 0)
  {
    v8 = *(a1 + 31);
  }

  else
  {
    v8 = *(a1 + 16);
  }

  v9 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(a2, v7, v8);

  return std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v9, &unk_2582E9D80, 2);
}

void *blahtex::ParseTree::TextColour::GetPurifiedTex(uint64_t a1, void *a2, uint64_t a3)
{
  *(a3 + 4) = 1;
  v4 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(a2, &unk_2582E971C, 7);
  v7 = *(a1 + 40);
  v6 = a1 + 40;
  v5 = v7;
  v8 = *(v6 + 23);
  if (v8 >= 0)
  {
    v9 = v6;
  }

  else
  {
    v9 = v5;
  }

  if (v8 >= 0)
  {
    v10 = *(v6 + 23);
  }

  else
  {
    v10 = *(v6 + 8);
  }

  v11 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v4, v9, v10);

  return std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v11, dword_2582E9714, 1);
}

uint64_t blahtex::ParseTree::HandleFontEncodingCommand(uint64_t result, int *a2)
{
  v3 = result;
  if (*(result + 23) < 0)
  {
    if (*(result + 8) != 4)
    {
      goto LABEL_11;
    }

    result = *result;
LABEL_6:
    result = wmemcmp(result, dword_2582E9CF4, 4uLL);
    if (!result)
    {
      v5 = 1;
      goto LABEL_16;
    }

    if ((*(v3 + 23) & 0x80000000) == 0)
    {
      v4 = *(v3 + 23);
      goto LABEL_9;
    }

LABEL_11:
    if (*(v3 + 8) != 4)
    {
      return result;
    }

    v3 = *v3;
    goto LABEL_13;
  }

  v4 = *(result + 23);
  if (v4 == 4)
  {
    goto LABEL_6;
  }

LABEL_9:
  if (v4 != 4)
  {
    return result;
  }

LABEL_13:
  result = wmemcmp(v3, dword_2582E9D08, 4uLL);
  if (result)
  {
    return result;
  }

  v5 = 2;
LABEL_16:
  if (*a2)
  {
    exception = __cxa_allocate_exception(0x30uLL);
    std::wstring::basic_string[abi:ne200100]<0>(&v10, dword_2582E9D8C);
    std::wstring::basic_string[abi:ne200100]<0>(v9, &dword_2582E9C60);
    std::wstring::basic_string[abi:ne200100]<0>(v8, &dword_2582E9C60);
    std::wstring::basic_string[abi:ne200100]<0>(v7, &dword_2582E9C60);
    blahtex::Exception::Exception(exception, &v10, v9, v8, v7);
  }

  *a2 = v5;
  return result;
}

void sub_2582C7860(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (*(v28 - 33) < 0)
  {
    operator delete(*(v28 - 56));
    if ((v27 & 1) == 0)
    {
LABEL_12:
      _Unwind_Resume(a1);
    }
  }

  else if (!v27)
  {
    goto LABEL_12;
  }

  __cxa_free_exception(v26);
  goto LABEL_12;
}

void *blahtex::ParseTree::TextCommand1Arg::GetPurifiedTex(uint64_t a1, void *a2, uint64_t a3, unsigned int a4)
{
  v13 = a4;
  v7 = a1 + 8;
  blahtex::LatexFeatures::Update(a3, a1 + 8);
  blahtex::ParseTree::HandleFontEncodingCommand(v7, &v13);
  v8 = *(a1 + 31);
  if (v8 >= 0)
  {
    v9 = v7;
  }

  else
  {
    v9 = *(a1 + 8);
  }

  if (v8 >= 0)
  {
    v10 = *(a1 + 31);
  }

  else
  {
    v10 = *(a1 + 16);
  }

  v11 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(a2, v9, v10);
  std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v11, dword_2582E970C, 1);
  (*(**(a1 + 40) + 24))(*(a1 + 40), a2, a3, v13);

  return std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(a2, dword_2582E9714, 1);
}

void *blahtex::ParseTree::EnterTextMode::GetPurifiedTex(uint64_t a1, void *a2, uint64_t a3, unsigned int a4)
{
  v13 = a4;
  v7 = a1 + 8;
  blahtex::LatexFeatures::Update(a3, a1 + 8);
  blahtex::ParseTree::HandleFontEncodingCommand(v7, &v13);
  v8 = *(a1 + 31);
  if (v8 >= 0)
  {
    v9 = v7;
  }

  else
  {
    v9 = *(a1 + 8);
  }

  if (v8 >= 0)
  {
    v10 = *(a1 + 31);
  }

  else
  {
    v10 = *(a1 + 16);
  }

  v11 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(a2, v9, v10);
  std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v11, dword_2582E970C, 1);
  (*(**(a1 + 40) + 24))(*(a1 + 40), a2, a3, v13);

  return std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(a2, dword_2582E9714, 1);
}

void blahtex::ParseTree::MathSymbol::Print(uint64_t a1, void *a2, int a3)
{
  std::wstring::basic_string[abi:ne200100](__p, 2 * a3, 32);
  if ((v19 & 0x80u) == 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  if ((v19 & 0x80u) == 0)
  {
    v6 = v19;
  }

  else
  {
    v6 = __p[1];
  }

  v7 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(a2, v5, v6);
  v8 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v7, &unk_2582E9DF8, 12);
  v11 = *(a1 + 8);
  v10 = a1 + 8;
  v9 = v11;
  v12 = *(v10 + 23);
  if (v12 >= 0)
  {
    v13 = v10;
  }

  else
  {
    v13 = v9;
  }

  if (v12 >= 0)
  {
    v14 = *(v10 + 23);
  }

  else
  {
    v14 = *(v10 + 8);
  }

  v15 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v8, v13, v14);
  v16 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v15, &unk_2582E9E2C, 1);
  std::ios_base::getloc((v16 + *(*v16 - 24)));
  v17 = std::locale::use_facet(&v20, MEMORY[0x277D82688]);
  (v17->__vftable[3].__on_zero_shared)(v17, 10);
  std::locale::~locale(&v20);
  std::wostream::put();
  std::wostream::flush();
  if (v19 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2582C7BE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15)
{
  std::locale::~locale(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t blahtex::ParseTree::MathCommand1Arg::Print(uint64_t a1, void *a2, int a3)
{
  std::wstring::basic_string[abi:ne200100](__p, 2 * a3, 32);
  if ((v18 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v18 & 0x80u) == 0)
  {
    v7 = v18;
  }

  else
  {
    v7 = __p[1];
  }

  v8 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(a2, v6, v7);
  v9 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v8, &unk_2582E9E34, 17);
  v10 = *(a1 + 31);
  if (v10 >= 0)
  {
    v11 = a1 + 8;
  }

  else
  {
    v11 = *(a1 + 8);
  }

  if (v10 >= 0)
  {
    v12 = *(a1 + 31);
  }

  else
  {
    v12 = *(a1 + 16);
  }

  v13 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v9, v11, v12);
  v14 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v13, &unk_2582E9E2C, 1);
  std::ios_base::getloc((v14 + *(*v14 - 24)));
  v15 = std::locale::use_facet(&v19, MEMORY[0x277D82688]);
  (v15->__vftable[3].__on_zero_shared)(v15, 10);
  std::locale::~locale(&v19);
  std::wostream::put();
  std::wostream::flush();
  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  return (*(**(a1 + 40) + 32))(*(a1 + 40), a2, (a3 + 1));
}

void sub_2582C7D8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15)
{
  std::locale::~locale(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t blahtex::ParseTree::MathCommand2Args::Print(uint64_t a1, void *a2, int a3)
{
  std::wstring::basic_string[abi:ne200100](__p, 2 * a3, 32);
  if ((v18 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v18 & 0x80u) == 0)
  {
    v7 = v18;
  }

  else
  {
    v7 = __p[1];
  }

  v8 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(a2, v6, v7);
  v9 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v8, &unk_2582E9E7C, 18);
  v10 = *(a1 + 31);
  if (v10 >= 0)
  {
    v11 = a1 + 8;
  }

  else
  {
    v11 = *(a1 + 8);
  }

  if (v10 >= 0)
  {
    v12 = *(a1 + 31);
  }

  else
  {
    v12 = *(a1 + 16);
  }

  v13 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v9, v11, v12);
  v14 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v13, &unk_2582E9E2C, 1);
  std::ios_base::getloc((v14 + *(*v14 - 24)));
  v15 = std::locale::use_facet(&v19, MEMORY[0x277D82688]);
  (v15->__vftable[3].__on_zero_shared)(v15, 10);
  std::locale::~locale(&v19);
  std::wostream::put();
  std::wostream::flush();
  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  (*(**(a1 + 40) + 32))(*(a1 + 40), a2, (a3 + 1));
  return (*(**(a1 + 48) + 32))(*(a1 + 48), a2, (a3 + 1));
}

void sub_2582C7F60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15)
{
  std::locale::~locale(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t blahtex::ParseTree::MathGroup::Print(uint64_t a1, void *a2, int a3)
{
  std::wstring::basic_string[abi:ne200100](__p, 2 * a3, 32);
  if ((v13 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v13 & 0x80u) == 0)
  {
    v7 = v13;
  }

  else
  {
    v7 = __p[1];
  }

  v8 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(a2, v6, v7);
  v9 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v8, &unk_2582E9EC8, 9);
  std::ios_base::getloc((v9 + *(*v9 - 24)));
  v10 = std::locale::use_facet(&v14, MEMORY[0x277D82688]);
  (v10->__vftable[3].__on_zero_shared)(v10, 10);
  std::locale::~locale(&v14);
  std::wostream::put();
  std::wostream::flush();
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  return (*(**(a1 + 8) + 32))(*(a1 + 8), a2, (a3 + 1));
}

void sub_2582C80D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15)
{
  std::locale::~locale(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t blahtex::ParseTree::MathPhantom::Print(uint64_t a1, void *a2, int a3)
{
  std::wstring::basic_string[abi:ne200100](__p, 2 * a3, 32);
  if ((v13 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v13 & 0x80u) == 0)
  {
    v7 = v13;
  }

  else
  {
    v7 = __p[1];
  }

  v8 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(a2, v6, v7);
  v9 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v8, &unk_2582E9EF0, 11);
  std::ios_base::getloc((v9 + *(*v9 - 24)));
  v10 = std::locale::use_facet(&v14, MEMORY[0x277D82688]);
  (v10->__vftable[3].__on_zero_shared)(v10, 10);
  std::locale::~locale(&v14);
  std::wostream::put();
  std::wostream::flush();
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  return (*(**(a1 + 8) + 32))(*(a1 + 8), a2, (a3 + 1));
}

void sub_2582C8240(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15)
{
  std::locale::~locale(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t blahtex::ParseTree::MathCancel::Print(uint64_t a1, void *a2, int a3)
{
  std::wstring::basic_string[abi:ne200100](__p, 2 * a3, 32);
  if ((v13 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v13 & 0x80u) == 0)
  {
    v7 = v13;
  }

  else
  {
    v7 = __p[1];
  }

  v8 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(a2, v6, v7);
  v9 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v8, &unk_2582E9F20, 10);
  std::ios_base::getloc((v9 + *(*v9 - 24)));
  v10 = std::locale::use_facet(&v14, MEMORY[0x277D82688]);
  (v10->__vftable[3].__on_zero_shared)(v10, 10);
  std::locale::~locale(&v14);
  std::wostream::put();
  std::wostream::flush();
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  return (*(**(a1 + 8) + 32))(*(a1 + 8), a2, (a3 + 1));
}

void sub_2582C83B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15)
{
  std::locale::~locale(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void blahtex::ParseTree::MathList::Print(uint64_t a1, void *a2, int a3)
{
  std::wstring::basic_string[abi:ne200100](__p, 2 * a3, 32);
  if ((v14 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v14 & 0x80u) == 0)
  {
    v7 = v14;
  }

  else
  {
    v7 = __p[1];
  }

  v8 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(a2, v6, v7);
  v9 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v8, &unk_2582E9F4C, 8);
  std::ios_base::getloc((v9 + *(*v9 - 24)));
  v10 = std::locale::use_facet(&v15, MEMORY[0x277D82688]);
  (v10->__vftable[3].__on_zero_shared)(v10, 10);
  std::locale::~locale(&v15);
  std::wostream::put();
  std::wostream::flush();
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  for (i = *(a1 + 8); i != *(a1 + 16); ++i)
  {
    v12 = *i;
    (*(*v12 + 32))(v12, a2, (a3 + 1));
  }
}

void sub_2582C8534(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15)
{
  std::locale::~locale(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void blahtex::ParseTree::MathScripts::Print(void **a1, void *a2, int a3)
{
  v6 = 2 * a3;
  std::wstring::basic_string[abi:ne200100](&__p, 2 * a3, 32);
  if ((v29 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if ((v29 & 0x80u) == 0)
  {
    v8 = v29;
  }

  else
  {
    v8 = v28;
  }

  v9 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(a2, p_p, v8);
  v10 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v9, &unk_2582E9F70, 11);
  std::ios_base::getloc((v10 + *(*v10 - 24)));
  v11 = std::locale::use_facet(&v30, MEMORY[0x277D82688]);
  (v11->__vftable[3].__on_zero_shared)(v11, 10);
  std::locale::~locale(&v30);
  std::wostream::put();
  std::wostream::flush();
  if (v29 < 0)
  {
    operator delete(__p);
  }

  if (a1[1])
  {
    std::wstring::basic_string[abi:ne200100](&__p, v6 + 2, 32);
    if ((v29 & 0x80u) == 0)
    {
      v12 = &__p;
    }

    else
    {
      v12 = __p;
    }

    if ((v29 & 0x80u) == 0)
    {
      v13 = v29;
    }

    else
    {
      v13 = v28;
    }

    v14 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(a2, v12, v13);
    v15 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v14, &unk_2582E9FA0, 4);
    std::ios_base::getloc((v15 + *(*v15 - 24)));
    v16 = std::locale::use_facet(&v30, MEMORY[0x277D82688]);
    (v16->__vftable[3].__on_zero_shared)(v16, 10);
    std::locale::~locale(&v30);
    std::wostream::put();
    std::wostream::flush();
    if (v29 < 0)
    {
      operator delete(__p);
    }

    (*(*a1[1] + 32))(a1[1], a2, (a3 + 2));
  }

  if (a1[2])
  {
    std::wstring::basic_string[abi:ne200100](&__p, v6 + 2, 32);
    if ((v29 & 0x80u) == 0)
    {
      v17 = &__p;
    }

    else
    {
      v17 = __p;
    }

    if ((v29 & 0x80u) == 0)
    {
      v18 = v29;
    }

    else
    {
      v18 = v28;
    }

    v19 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(a2, v17, v18);
    v20 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v19, &unk_2582E9FB4, 5);
    std::ios_base::getloc((v20 + *(*v20 - 24)));
    v21 = std::locale::use_facet(&v30, MEMORY[0x277D82688]);
    (v21->__vftable[3].__on_zero_shared)(v21, 10);
    std::locale::~locale(&v30);
    std::wostream::put();
    std::wostream::flush();
    if (v29 < 0)
    {
      operator delete(__p);
    }

    (*(*a1[2] + 32))(a1[2], a2, (a3 + 2));
  }

  if (a1[3])
  {
    std::wstring::basic_string[abi:ne200100](&__p, v6 + 2, 32);
    if ((v29 & 0x80u) == 0)
    {
      v22 = &__p;
    }

    else
    {
      v22 = __p;
    }

    if ((v29 & 0x80u) == 0)
    {
      v23 = v29;
    }

    else
    {
      v23 = v28;
    }

    v24 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(a2, v22, v23);
    v25 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v24, &unk_2582E9FCC, 5);
    std::ios_base::getloc((v25 + *(*v25 - 24)));
    v26 = std::locale::use_facet(&v30, MEMORY[0x277D82688]);
    (v26->__vftable[3].__on_zero_shared)(v26, 10);
    std::locale::~locale(&v30);
    std::wostream::put();
    std::wostream::flush();
    if (v29 < 0)
    {
      operator delete(__p);
    }

    (*(*a1[3] + 32))(a1[3], a2, (a3 + 2));
  }
}

void sub_2582C8998(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15)
{
  std::locale::~locale(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t blahtex::ParseTree::MathLimits::Print(uint64_t a1, void *a2, int a3)
{
  std::wstring::basic_string[abi:ne200100](__p, 2 * a3, 32);
  if ((v18 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v18 & 0x80u) == 0)
  {
    v7 = v18;
  }

  else
  {
    v7 = __p[1];
  }

  v8 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(a2, v6, v7);
  v9 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v8, &unk_2582E9FE4, 12);
  v10 = *(a1 + 31);
  if (v10 >= 0)
  {
    v11 = a1 + 8;
  }

  else
  {
    v11 = *(a1 + 8);
  }

  if (v10 >= 0)
  {
    v12 = *(a1 + 31);
  }

  else
  {
    v12 = *(a1 + 16);
  }

  v13 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v9, v11, v12);
  v14 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v13, &unk_2582E9E2C, 1);
  std::ios_base::getloc((v14 + *(*v14 - 24)));
  v15 = std::locale::use_facet(&v19, MEMORY[0x277D82688]);
  (v15->__vftable[3].__on_zero_shared)(v15, 10);
  std::locale::~locale(&v19);
  std::wostream::put();
  std::wostream::flush();
  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  return (*(**(a1 + 40) + 32))(*(a1 + 40), a2, (a3 + 1));
}

void sub_2582C8B54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15)
{
  std::locale::~locale(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void blahtex::ParseTree::MathStateChange::Print(uint64_t a1, void *a2, int a3)
{
  std::wstring::basic_string[abi:ne200100](__p, 2 * a3, 32);
  if ((v19 & 0x80u) == 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  if ((v19 & 0x80u) == 0)
  {
    v6 = v19;
  }

  else
  {
    v6 = __p[1];
  }

  v7 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(a2, v5, v6);
  v8 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v7, &unk_2582EA018, 17);
  v11 = *(a1 + 8);
  v10 = a1 + 8;
  v9 = v11;
  v12 = *(v10 + 23);
  if (v12 >= 0)
  {
    v13 = v10;
  }

  else
  {
    v13 = v9;
  }

  if (v12 >= 0)
  {
    v14 = *(v10 + 23);
  }

  else
  {
    v14 = *(v10 + 8);
  }

  v15 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v8, v13, v14);
  v16 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v15, &unk_2582E9E2C, 1);
  std::ios_base::getloc((v16 + *(*v16 - 24)));
  v17 = std::locale::use_facet(&v20, MEMORY[0x277D82688]);
  (v17->__vftable[3].__on_zero_shared)(v17, 10);
  std::locale::~locale(&v20);
  std::wostream::put();
  std::wostream::flush();
  if (v19 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2582C8CB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15)
{
  std::locale::~locale(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void blahtex::ParseTree::MathColour::Print(uint64_t a1, void *a2, int a3)
{
  std::wstring::basic_string[abi:ne200100](__p, 2 * a3, 32);
  if ((v19 & 0x80u) == 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  if ((v19 & 0x80u) == 0)
  {
    v6 = v19;
  }

  else
  {
    v6 = __p[1];
  }

  v7 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(a2, v5, v6);
  v8 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v7, &unk_2582EA060, 12);
  v11 = *(a1 + 40);
  v10 = a1 + 40;
  v9 = v11;
  v12 = *(v10 + 23);
  if (v12 >= 0)
  {
    v13 = v10;
  }

  else
  {
    v13 = v9;
  }

  if (v12 >= 0)
  {
    v14 = *(v10 + 23);
  }

  else
  {
    v14 = *(v10 + 8);
  }

  v15 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v8, v13, v14);
  v16 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v15, &unk_2582E9E2C, 1);
  std::ios_base::getloc((v16 + *(*v16 - 24)));
  v17 = std::locale::use_facet(&v20, MEMORY[0x277D82688]);
  (v17->__vftable[3].__on_zero_shared)(v17, 10);
  std::locale::~locale(&v20);
  std::wostream::put();
  std::wostream::flush();
  if (v19 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2582C8E1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15)
{
  std::locale::~locale(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t blahtex::ParseTree::MathDelimited::Print(uint64_t a1, void *a2, int a3)
{
  std::wstring::basic_string[abi:ne200100](__p, 2 * a3, 32);
  if ((v23 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v23 & 0x80u) == 0)
  {
    v7 = v23;
  }

  else
  {
    v7 = __p[1];
  }

  v8 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(a2, v6, v7);
  v9 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v8, &unk_2582EA094, 15);
  v10 = *(a1 + 39);
  if (v10 >= 0)
  {
    v11 = a1 + 16;
  }

  else
  {
    v11 = *(a1 + 16);
  }

  if (v10 >= 0)
  {
    v12 = *(a1 + 39);
  }

  else
  {
    v12 = *(a1 + 24);
  }

  v13 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v9, v11, v12);
  v14 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v13, &unk_2582EA0D4, 3);
  v15 = *(a1 + 71);
  if (v15 >= 0)
  {
    v16 = a1 + 48;
  }

  else
  {
    v16 = *(a1 + 48);
  }

  if (v15 >= 0)
  {
    v17 = *(a1 + 71);
  }

  else
  {
    v17 = *(a1 + 56);
  }

  v18 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v14, v16, v17);
  v19 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v18, &unk_2582E9E2C, 1);
  std::ios_base::getloc((v19 + *(*v19 - 24)));
  v20 = std::locale::use_facet(&v24, MEMORY[0x277D82688]);
  (v20->__vftable[3].__on_zero_shared)(v20, 10);
  std::locale::~locale(&v24);
  std::wostream::put();
  std::wostream::flush();
  if (v23 < 0)
  {
    operator delete(__p[0]);
  }

  return (*(**(a1 + 8) + 32))(*(a1 + 8), a2, (a3 + 1));
}

void sub_2582C8FF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15)
{
  std::locale::~locale(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void blahtex::ParseTree::MathMiddle::Print(uint64_t a1, void *a2, int a3)
{
  std::wstring::basic_string[abi:ne200100](__p, 2 * a3, 32);
  if ((v19 & 0x80u) == 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  if ((v19 & 0x80u) == 0)
  {
    v6 = v19;
  }

  else
  {
    v6 = __p[1];
  }

  v7 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(a2, v5, v6);
  v8 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v7, &unk_2582EA0E4, 12);
  v11 = *(a1 + 8);
  v10 = a1 + 8;
  v9 = v11;
  v12 = *(v10 + 23);
  if (v12 >= 0)
  {
    v13 = v10;
  }

  else
  {
    v13 = v9;
  }

  if (v12 >= 0)
  {
    v14 = *(v10 + 23);
  }

  else
  {
    v14 = *(v10 + 8);
  }

  v15 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v8, v13, v14);
  v16 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v15, &unk_2582E9E2C, 1);
  std::ios_base::getloc((v16 + *(*v16 - 24)));
  v17 = std::locale::use_facet(&v20, MEMORY[0x277D82688]);
  (v17->__vftable[3].__on_zero_shared)(v17, 10);
  std::locale::~locale(&v20);
  std::wostream::put();
  std::wostream::flush();
  if (v19 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2582C9158(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15)
{
  std::locale::~locale(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void blahtex::ParseTree::MathBig::Print(uint64_t a1, void *a2, int a3)
{
  std::wstring::basic_string[abi:ne200100](__p, 2 * a3, 32);
  if ((v24 & 0x80u) == 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  if ((v24 & 0x80u) == 0)
  {
    v6 = v24;
  }

  else
  {
    v6 = __p[1];
  }

  v7 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(a2, v5, v6);
  v8 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v7, &unk_2582EA118, 9);
  v9 = *(a1 + 31);
  if (v9 >= 0)
  {
    v10 = a1 + 8;
  }

  else
  {
    v10 = *(a1 + 8);
  }

  if (v9 >= 0)
  {
    v11 = *(a1 + 31);
  }

  else
  {
    v11 = *(a1 + 16);
  }

  v12 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v8, v10, v11);
  v13 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v12, &unk_2582EA0D4, 3);
  v16 = *(a1 + 40);
  v15 = a1 + 40;
  v14 = v16;
  v17 = *(v15 + 23);
  if (v17 >= 0)
  {
    v18 = v15;
  }

  else
  {
    v18 = v14;
  }

  if (v17 >= 0)
  {
    v19 = *(v15 + 23);
  }

  else
  {
    v19 = *(v15 + 8);
  }

  v20 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v13, v18, v19);
  v21 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v20, &unk_2582E9E2C, 1);
  std::ios_base::getloc((v21 + *(*v21 - 24)));
  v22 = std::locale::use_facet(&v25, MEMORY[0x277D82688]);
  (v22->__vftable[3].__on_zero_shared)(v22, 10);
  std::locale::~locale(&v25);
  std::wostream::put();
  std::wostream::flush();
  if (v24 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2582C92F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15)
{
  std::locale::~locale(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void blahtex::ParseTree::MathTableRow::Print(uint64_t a1, void *a2, int a3)
{
  std::wstring::basic_string[abi:ne200100](__p, 2 * a3, 32);
  if ((v14 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v14 & 0x80u) == 0)
  {
    v7 = v14;
  }

  else
  {
    v7 = __p[1];
  }

  v8 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(a2, v6, v7);
  v9 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v8, &unk_2582EA140, 12);
  std::ios_base::getloc((v9 + *(*v9 - 24)));
  v10 = std::locale::use_facet(&v15, MEMORY[0x277D82688]);
  (v10->__vftable[3].__on_zero_shared)(v10, 10);
  std::locale::~locale(&v15);
  std::wostream::put();
  std::wostream::flush();
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  for (i = *(a1 + 8); i != *(a1 + 16); ++i)
  {
    v12 = *i;
    (*(*v12 + 32))(v12, a2, (a3 + 1));
  }
}

void sub_2582C9474(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15)
{
  std::locale::~locale(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void blahtex::ParseTree::MathTable::Print(uint64_t a1, void *a2, int a3)
{
  std::wstring::basic_string[abi:ne200100](__p, 2 * a3, 32);
  if ((v14 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v14 & 0x80u) == 0)
  {
    v7 = v14;
  }

  else
  {
    v7 = __p[1];
  }

  v8 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(a2, v6, v7);
  v9 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v8, &unk_2582EA174, 9);
  std::ios_base::getloc((v9 + *(*v9 - 24)));
  v10 = std::locale::use_facet(&v15, MEMORY[0x277D82688]);
  (v10->__vftable[3].__on_zero_shared)(v10, 10);
  std::locale::~locale(&v15);
  std::wostream::put();
  std::wostream::flush();
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  for (i = *(a1 + 8); i != *(a1 + 16); ++i)
  {
    v12 = *i;
    (*(*v12 + 32))(v12, a2, (a3 + 1));
  }
}

void sub_2582C95F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15)
{
  std::locale::~locale(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t blahtex::ParseTree::MathEnvironment::Print(uint64_t a1, void *a2, int a3)
{
  std::wstring::basic_string[abi:ne200100](__p, 2 * a3, 32);
  if ((v17 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v17 & 0x80u) == 0)
  {
    v7 = v17;
  }

  else
  {
    v7 = __p[1];
  }

  v8 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(a2, v6, v7);
  v9 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v8, &unk_2582EA19C, 17);
  v10 = *(a1 + 31);
  if (v10 >= 0)
  {
    v11 = a1 + 8;
  }

  else
  {
    v11 = *(a1 + 8);
  }

  if (v10 >= 0)
  {
    v12 = *(a1 + 31);
  }

  else
  {
    v12 = *(a1 + 16);
  }

  v13 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v9, v11, v12);
  std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v13, &unk_2582E9E2C, 1);
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  if (*(a1 + 48) == 1)
  {
    std::operator<<[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(a2, " (short)");
  }

  std::ios_base::getloc((a2 + *(*a2 - 24)));
  v14 = std::locale::use_facet(__p, MEMORY[0x277D82688]);
  (v14->__vftable[3].__on_zero_shared)(v14, 10);
  std::locale::~locale(__p);
  std::wostream::put();
  std::wostream::flush();
  return (*(**(a1 + 40) + 32))(*(a1 + 40), a2, (a3 + 1));
}

uint64_t blahtex::ParseTree::EnterTextMode::Print(uint64_t a1, void *a2, int a3)
{
  std::wstring::basic_string[abi:ne200100](__p, 2 * a3, 32);
  if ((v18 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v18 & 0x80u) == 0)
  {
    v7 = v18;
  }

  else
  {
    v7 = __p[1];
  }

  v8 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(a2, v6, v7);
  v9 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v8, &unk_2582EA1E4, 15);
  v10 = *(a1 + 31);
  if (v10 >= 0)
  {
    v11 = a1 + 8;
  }

  else
  {
    v11 = *(a1 + 8);
  }

  if (v10 >= 0)
  {
    v12 = *(a1 + 31);
  }

  else
  {
    v12 = *(a1 + 16);
  }

  v13 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v9, v11, v12);
  v14 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v13, &unk_2582E9E2C, 1);
  std::ios_base::getloc((v14 + *(*v14 - 24)));
  v15 = std::locale::use_facet(&v19, MEMORY[0x277D82688]);
  (v15->__vftable[3].__on_zero_shared)(v15, 10);
  std::locale::~locale(&v19);
  std::wostream::put();
  std::wostream::flush();
  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  return (*(**(a1 + 40) + 32))(*(a1 + 40), a2, (a3 + 1));
}

void sub_2582C9950(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15)
{
  std::locale::~locale(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void blahtex::ParseTree::TextList::Print(uint64_t a1, void *a2, int a3)
{
  std::wstring::basic_string[abi:ne200100](__p, 2 * a3, 32);
  if ((v14 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v14 & 0x80u) == 0)
  {
    v7 = v14;
  }

  else
  {
    v7 = __p[1];
  }

  v8 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(a2, v6, v7);
  v9 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v8, &unk_2582EA224, 8);
  std::ios_base::getloc((v9 + *(*v9 - 24)));
  v10 = std::locale::use_facet(&v15, MEMORY[0x277D82688]);
  (v10->__vftable[3].__on_zero_shared)(v10, 10);
  std::locale::~locale(&v15);
  std::wostream::put();
  std::wostream::flush();
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  for (i = *(a1 + 8); i != *(a1 + 16); ++i)
  {
    v12 = *i;
    (*(*v12 + 32))(v12, a2, (a3 + 1));
  }
}

void sub_2582C9AD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15)
{
  std::locale::~locale(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void blahtex::ParseTree::TextSymbol::Print(uint64_t a1, void *a2, int a3)
{
  std::wstring::basic_string[abi:ne200100](__p, 2 * a3, 32);
  if ((v19 & 0x80u) == 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  if ((v19 & 0x80u) == 0)
  {
    v6 = v19;
  }

  else
  {
    v6 = __p[1];
  }

  v7 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(a2, v5, v6);
  v8 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v7, &unk_2582EA248, 12);
  v11 = *(a1 + 8);
  v10 = a1 + 8;
  v9 = v11;
  v12 = *(v10 + 23);
  if (v12 >= 0)
  {
    v13 = v10;
  }

  else
  {
    v13 = v9;
  }

  if (v12 >= 0)
  {
    v14 = *(v10 + 23);
  }

  else
  {
    v14 = *(v10 + 8);
  }

  v15 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v8, v13, v14);
  v16 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v15, &unk_2582E9E2C, 1);
  std::ios_base::getloc((v16 + *(*v16 - 24)));
  v17 = std::locale::use_facet(&v20, MEMORY[0x277D82688]);
  (v17->__vftable[3].__on_zero_shared)(v17, 10);
  std::locale::~locale(&v20);
  std::wostream::put();
  std::wostream::flush();
  if (v19 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2582C9C38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15)
{
  std::locale::~locale(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t blahtex::ParseTree::TextCommand1Arg::Print(uint64_t a1, void *a2, int a3)
{
  std::wstring::basic_string[abi:ne200100](__p, 2 * a3, 32);
  if ((v18 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v18 & 0x80u) == 0)
  {
    v7 = v18;
  }

  else
  {
    v7 = __p[1];
  }

  v8 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(a2, v6, v7);
  v9 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v8, &unk_2582EA27C, 17);
  v10 = *(a1 + 31);
  if (v10 >= 0)
  {
    v11 = a1 + 8;
  }

  else
  {
    v11 = *(a1 + 8);
  }

  if (v10 >= 0)
  {
    v12 = *(a1 + 31);
  }

  else
  {
    v12 = *(a1 + 16);
  }

  v13 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v9, v11, v12);
  v14 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v13, &unk_2582E9E2C, 1);
  std::ios_base::getloc((v14 + *(*v14 - 24)));
  v15 = std::locale::use_facet(&v19, MEMORY[0x277D82688]);
  (v15->__vftable[3].__on_zero_shared)(v15, 10);
  std::locale::~locale(&v19);
  std::wostream::put();
  std::wostream::flush();
  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  return (*(**(a1 + 40) + 32))(*(a1 + 40), a2, (a3 + 1));
}

void sub_2582C9DDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15)
{
  std::locale::~locale(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void blahtex::ParseTree::TextStateChange::Print(uint64_t a1, void *a2, int a3)
{
  std::wstring::basic_string[abi:ne200100](__p, 2 * a3, 32);
  if ((v19 & 0x80u) == 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  if ((v19 & 0x80u) == 0)
  {
    v6 = v19;
  }

  else
  {
    v6 = __p[1];
  }

  v7 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(a2, v5, v6);
  v8 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v7, &unk_2582EA2C4, 17);
  v11 = *(a1 + 8);
  v10 = a1 + 8;
  v9 = v11;
  v12 = *(v10 + 23);
  if (v12 >= 0)
  {
    v13 = v10;
  }

  else
  {
    v13 = v9;
  }

  if (v12 >= 0)
  {
    v14 = *(v10 + 23);
  }

  else
  {
    v14 = *(v10 + 8);
  }

  v15 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v8, v13, v14);
  v16 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v15, &unk_2582E9E2C, 1);
  std::ios_base::getloc((v16 + *(*v16 - 24)));
  v17 = std::locale::use_facet(&v20, MEMORY[0x277D82688]);
  (v17->__vftable[3].__on_zero_shared)(v17, 10);
  std::locale::~locale(&v20);
  std::wostream::put();
  std::wostream::flush();
  if (v19 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2582C9F40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15)
{
  std::locale::~locale(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void blahtex::ParseTree::TextColour::Print(uint64_t a1, void *a2, int a3)
{
  std::wstring::basic_string[abi:ne200100](__p, 2 * a3, 32);
  if ((v19 & 0x80u) == 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  if ((v19 & 0x80u) == 0)
  {
    v6 = v19;
  }

  else
  {
    v6 = __p[1];
  }

  v7 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(a2, v5, v6);
  v8 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v7, &unk_2582EA30C, 12);
  v11 = *(a1 + 40);
  v10 = a1 + 40;
  v9 = v11;
  v12 = *(v10 + 23);
  if (v12 >= 0)
  {
    v13 = v10;
  }

  else
  {
    v13 = v9;
  }

  if (v12 >= 0)
  {
    v14 = *(v10 + 23);
  }

  else
  {
    v14 = *(v10 + 8);
  }

  v15 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v8, v13, v14);
  v16 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v15, &unk_2582E9E2C, 1);
  std::ios_base::getloc((v16 + *(*v16 - 24)));
  v17 = std::locale::use_facet(&v20, MEMORY[0x277D82688]);
  (v17->__vftable[3].__on_zero_shared)(v17, 10);
  std::locale::~locale(&v20);
  std::wostream::put();
  std::wostream::flush();
  if (v19 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2582CA0A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15)
{
  std::locale::~locale(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t blahtex::ParseTree::TextGroup::Print(uint64_t a1, void *a2, int a3)
{
  std::wstring::basic_string[abi:ne200100](__p, 2 * a3, 32);
  if ((v13 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v13 & 0x80u) == 0)
  {
    v7 = v13;
  }

  else
  {
    v7 = __p[1];
  }

  v8 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(a2, v6, v7);
  v9 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v8, &unk_2582EA340, 9);
  std::ios_base::getloc((v9 + *(*v9 - 24)));
  v10 = std::locale::use_facet(&v14, MEMORY[0x277D82688]);
  (v10->__vftable[3].__on_zero_shared)(v10, 10);
  std::locale::~locale(&v14);
  std::wostream::put();
  std::wostream::flush();
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  return (*(**(a1 + 8) + 32))(*(a1 + 8), a2, (a3 + 1));
}

void sub_2582CA214(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15)
{
  std::locale::~locale(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t blahtex::ParseTree::TextPhantom::Print(uint64_t a1, void *a2, int a3)
{
  std::wstring::basic_string[abi:ne200100](__p, 2 * a3, 32);
  if ((v13 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v13 & 0x80u) == 0)
  {
    v7 = v13;
  }

  else
  {
    v7 = __p[1];
  }

  v8 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(a2, v6, v7);
  v9 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v8, &unk_2582EA368, 11);
  std::ios_base::getloc((v9 + *(*v9 - 24)));
  v10 = std::locale::use_facet(&v14, MEMORY[0x277D82688]);
  (v10->__vftable[3].__on_zero_shared)(v10, 10);
  std::locale::~locale(&v14);
  std::wostream::put();
  std::wostream::flush();
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  return (*(**(a1 + 8) + 32))(*(a1 + 8), a2, (a3 + 1));
}

void sub_2582CA384(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15)
{
  std::locale::~locale(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t blahtex::ParseTree::TextCancel::Print(uint64_t a1, void *a2, int a3)
{
  std::wstring::basic_string[abi:ne200100](__p, 2 * a3, 32);
  if ((v13 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v13 & 0x80u) == 0)
  {
    v7 = v13;
  }

  else
  {
    v7 = __p[1];
  }

  v8 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(a2, v6, v7);
  v9 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v8, &unk_2582EA398, 10);
  std::ios_base::getloc((v9 + *(*v9 - 24)));
  v10 = std::locale::use_facet(&v14, MEMORY[0x277D82688]);
  (v10->__vftable[3].__on_zero_shared)(v10, 10);
  std::locale::~locale(&v14);
  std::wostream::put();
  std::wostream::flush();
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  return (*(**(a1 + 8) + 32))(*(a1 + 8), a2, (a3 + 1));
}

void sub_2582CA4F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15)
{
  std::locale::~locale(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void blahtex::ParseTree::MathStateChange::~MathStateChange(void **this)
{
  *this = &unk_28696BD18;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_28696BD18;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x259C7CB70);
}

void blahtex::ParseTree::MathColour::~MathColour(void **this)
{
  *this = &unk_28696BD70;
  if (*(this + 63) < 0)
  {
    operator delete(this[5]);
  }

  *this = &unk_28696BD18;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_28696BD70;
  if (*(this + 63) < 0)
  {
    operator delete(this[5]);
  }

  *this = &unk_28696BD18;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x259C7CB70);
}

void blahtex::ParseTree::TextStateChange::~TextStateChange(void **this)
{
  *this = &unk_28696BDC8;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_28696BDC8;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x259C7CB70);
}

void blahtex::ParseTree::TextColour::~TextColour(void **this)
{
  *this = &unk_28696BE20;
  if (*(this + 63) < 0)
  {
    operator delete(this[5]);
  }

  *this = &unk_28696BDC8;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_28696BE20;
  if (*(this + 63) < 0)
  {
    operator delete(this[5]);
  }

  *this = &unk_28696BDC8;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x259C7CB70);
}

uint64_t std::unordered_map<std::wstring,unsigned int>::unordered_map<std::pair<std::wstring_view,unsigned int> const*>(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 0u;
  *(result + 16) = 0u;
  *(result + 32) = 1065353216;
  if (a2 != a3)
  {
    std::__hash_table<std::__hash_value_type<std::wstring,unsigned int>,std::__unordered_map_hasher<std::wstring,std::__hash_value_type<std::wstring,unsigned int>,std::hash<std::wstring>,std::equal_to<std::wstring>,true>,std::__unordered_map_equal<std::wstring,std::__hash_value_type<std::wstring,unsigned int>,std::equal_to<std::wstring>,std::hash<std::wstring>,true>,std::allocator<std::__hash_value_type<std::wstring,unsigned int>>>::__emplace_unique_impl<std::pair<std::wstring_view,unsigned int> const&>();
  }

  return result;
}

void sub_2582CA9B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::wstring,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2582CAAE0(_Unwind_Exception *a1)
{
  *v2 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::wstring,void *>>>::operator()[abi:ne200100](v3, v1);
  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<std::wstring,unsigned int>,std::__unordered_map_hasher<std::wstring,std::__hash_value_type<std::wstring,unsigned int>,std::hash<std::wstring>,std::equal_to<std::wstring>,true>,std::__unordered_map_equal<std::wstring,std::__hash_value_type<std::wstring,unsigned int>,std::equal_to<std::wstring>,std::hash<std::wstring>,true>,std::allocator<std::__hash_value_type<std::wstring,unsigned int>>>::__node_insert_unique(uint64_t *a1, void *a2)
{
  v2 = a2;
  v4 = std::__string_hash<wchar_t>::operator()[abi:ne200100](a1, (a2 + 2));
  v2[1] = v4;
  v5 = std::__hash_table<std::__hash_value_type<std::wstring,unsigned int>,std::__unordered_map_hasher<std::wstring,std::__hash_value_type<std::wstring,unsigned int>,std::hash<std::wstring>,std::equal_to<std::wstring>,true>,std::__unordered_map_equal<std::wstring,std::__hash_value_type<std::wstring,unsigned int>,std::equal_to<std::wstring>,std::hash<std::wstring>,true>,std::allocator<std::__hash_value_type<std::wstring,unsigned int>>>::__node_insert_unique_prepare[abi:ne200100](a1, v4, (v2 + 2));
  if (v5)
  {
    return v5;
  }

  std::__hash_table<std::wstring,std::hash<std::wstring>,std::equal_to<std::wstring>,std::allocator<std::wstring>>::__node_insert_unique_perform[abi:ne200100](a1, v2);
  return v2;
}

void *std::__hash_table<std::__hash_value_type<std::wstring,unsigned int>,std::__unordered_map_hasher<std::wstring,std::__hash_value_type<std::wstring,unsigned int>,std::hash<std::wstring>,std::equal_to<std::wstring>,true>,std::__unordered_map_equal<std::wstring,std::__hash_value_type<std::wstring,unsigned int>,std::equal_to<std::wstring>,std::hash<std::wstring>,true>,std::allocator<std::__hash_value_type<std::wstring,unsigned int>>>::__node_insert_unique_prepare[abi:ne200100](uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  if (v4)
  {
    v7 = vcnt_s8(v4);
    v7.i16[0] = vaddlv_u8(v7);
    v8 = v7.u32[0];
    if (v7.u32[0] > 1uLL)
    {
      v9 = v4 <= a2 ? a2 % v4 : a2;
    }

    else
    {
      v9 = (v4 - 1) & a2;
    }

    v10 = *(*a1 + 8 * v9);
    if (v10)
    {
      v11 = *v10;
      if (*v10)
      {
        do
        {
          v12 = v11[1];
          if (v12 == a2)
          {
            if (std::equal_to<std::wstring>::operator()[abi:ne200100](a1, (v11 + 2), a3))
            {
              return v11;
            }
          }

          else
          {
            if (v8 > 1)
            {
              if (v12 >= v4)
              {
                v12 %= v4;
              }
            }

            else
            {
              v12 &= v4 - 1;
            }

            if (v12 != v9)
            {
              break;
            }
          }

          v11 = *v11;
        }

        while (v11);
      }
    }
  }

  v13 = (*(a1 + 24) + 1);
  v14 = *(a1 + 32);
  if (!v4 || (v14 * v4) < v13)
  {
    v15 = 1;
    if (v4 >= 3)
    {
      v15 = (v4 & (v4 - 1)) != 0;
    }

    v16 = v15 | (2 * v4);
    v17 = vcvtps_u32_f32(v13 / v14);
    if (v16 <= v17)
    {
      v18 = v17;
    }

    else
    {
      v18 = v16;
    }

    std::__hash_table<wchar_t,std::hash<wchar_t>,std::equal_to<wchar_t>,std::allocator<wchar_t>>::__rehash<true>(a1, v18);
  }

  return 0;
}

BOOL std::equal_to<std::wstring>::operator()[abi:ne200100](uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 23);
  v4 = v3;
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a2 + 8);
  }

  v5 = *(a3 + 23);
  v6 = v5;
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a3 + 8);
  }

  if (v3 != v5)
  {
    return 0;
  }

  if (!v3)
  {
    return 1;
  }

  if (v6 >= 0)
  {
    v7 = a3;
  }

  else
  {
    v7 = *a3;
  }

  if (v4 >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  return wmemcmp(v8, v7, v3) == 0;
}

void *std::__hash_table<std::__hash_value_type<std::wstring,unsigned int>,std::__unordered_map_hasher<std::wstring,std::__hash_value_type<std::wstring,unsigned int>,std::hash<std::wstring>,std::equal_to<std::wstring>,true>,std::__unordered_map_equal<std::wstring,std::__hash_value_type<std::wstring,unsigned int>,std::equal_to<std::wstring>,std::hash<std::wstring>,true>,std::allocator<std::__hash_value_type<std::wstring,unsigned int>>>::find<std::wstring>(void *a1, uint64_t a2)
{
  v4 = std::__string_hash<wchar_t>::operator()[abi:ne200100](a1, a2);
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

  v11 = *v10;
  if (*v10)
  {
    do
    {
      v12 = v11[1];
      if (v6 == v12)
      {
        if (std::equal_to<std::wstring>::operator()[abi:ne200100](a1, (v11 + 2), a2))
        {
          return v11;
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

      v11 = *v11;
    }

    while (v11);
  }

  return v11;
}

uint64_t std::unordered_map<std::wstring,blahtex::LayoutTree::Node::Style>::unordered_map<std::pair<std::wstring_view,blahtex::LayoutTree::Node::Style> const*>(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 0u;
  *(result + 16) = 0u;
  *(result + 32) = 1065353216;
  if (a2 != a3)
  {
    std::__hash_table<std::__hash_value_type<std::wstring,blahtex::LayoutTree::Node::Style>,std::__unordered_map_hasher<std::wstring,std::__hash_value_type<std::wstring,blahtex::LayoutTree::Node::Style>,std::hash<std::wstring>,std::equal_to<std::wstring>,true>,std::__unordered_map_equal<std::wstring,std::__hash_value_type<std::wstring,blahtex::LayoutTree::Node::Style>,std::equal_to<std::wstring>,std::hash<std::wstring>,true>,std::allocator<std::__hash_value_type<std::wstring,blahtex::LayoutTree::Node::Style>>>::__emplace_unique_impl<std::pair<std::wstring_view,blahtex::LayoutTree::Node::Style> const&>();
  }

  return result;
}

void sub_2582CAF10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::wstring,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2582CB040(_Unwind_Exception *a1)
{
  *v2 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::wstring,void *>>>::operator()[abi:ne200100](v3, v1);
  _Unwind_Resume(a1);
}

uint64_t std::unordered_map<std::wstring,blahtex::TexMathFont::Family>::unordered_map<std::pair<std::wstring_view,blahtex::TexMathFont::Family> const*>(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 0u;
  *(result + 16) = 0u;
  *(result + 32) = 1065353216;
  if (a2 != a3)
  {
    std::__hash_table<std::__hash_value_type<std::wstring,blahtex::TexMathFont::Family>,std::__unordered_map_hasher<std::wstring,std::__hash_value_type<std::wstring,blahtex::TexMathFont::Family>,std::hash<std::wstring>,std::equal_to<std::wstring>,true>,std::__unordered_map_equal<std::wstring,std::__hash_value_type<std::wstring,blahtex::TexMathFont::Family>,std::equal_to<std::wstring>,std::hash<std::wstring>,true>,std::allocator<std::__hash_value_type<std::wstring,blahtex::TexMathFont::Family>>>::__emplace_unique_impl<std::pair<std::wstring_view,blahtex::TexMathFont::Family> const&>();
  }

  return result;
}

void sub_2582CB13C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::wstring,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2582CB26C(_Unwind_Exception *a1)
{
  *v2 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::wstring,void *>>>::operator()[abi:ne200100](v3, v1);
  _Unwind_Resume(a1);
}

void *std::set<wchar_t>::set[abi:ne200100]<wchar_t const*>(void *a1, int *a2, int *a3)
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
      std::__tree<EQKitTypes::Attributes::Enum>::__emplace_hint_unique_key_args<EQKitTypes::Attributes::Enum,EQKitTypes::Attributes::Enum const&>(a1, v4, v6++);
    }

    while (v6 != a3);
  }

  return a1;
}

void *blahtex::UnicodeNameTable(blahtex *this)
{
  {
    std::unordered_map<wchar_t,blahtex::UnicodeNameInfo>::unordered_map<std::pair<wchar_t,blahtex::UnicodeNameInfo> const*>(&blahtex::UnicodeNameTable(void)::gUnicodeNameTable, &blahtex::gUnicodeNameArray, &blahtex::gUnicodeNameArray + 5290);
  }

  return &blahtex::UnicodeNameTable(void)::gUnicodeNameTable;
}

uint64_t blahtex::XmlEncode@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, std::wstringbuf::string_type *a3@<X8>)
{
  v6 = std::wostringstream::basic_ostringstream[abi:ne200100](&v26);
  v7 = *(a1 + 23);
  v8 = v7;
  if ((v7 & 0x80u) != 0)
  {
    v7 = a1[1];
  }

  if (v7)
  {
    if (v8 >= 0)
    {
      v9 = a1;
    }

    else
    {
      v9 = *a1;
    }

    while (1)
    {
      v10 = *v9;
      if (*v9 == 62)
      {
        break;
      }

      if (v10 == 60)
      {
        v11 = &unk_2582EDE74;
LABEL_13:
        v12 = 4;
        goto LABEL_14;
      }

      if (v10 == 38)
      {
        v11 = &unk_2582EDE5C;
        v12 = 5;
LABEL_14:
        v6 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(&v26, v11, v12);
        goto LABEL_15;
      }

      if (v10 <= 127)
      {
        goto LABEL_23;
      }

      blahtex::UnicodeNameTable(v6);
      v6 = std::__hash_table<std::__hash_value_type<wchar_t,std::wstring_view>,std::__unordered_map_hasher<wchar_t,std::__hash_value_type<wchar_t,std::wstring_view>,std::hash<wchar_t>,std::equal_to<wchar_t>,true>,std::__unordered_map_equal<wchar_t,std::__hash_value_type<wchar_t,std::wstring_view>,std::equal_to<wchar_t>,std::hash<wchar_t>,true>,std::allocator<std::__hash_value_type<wchar_t,std::wstring_view>>>::find<wchar_t>(blahtex::UnicodeNameTable(void)::gUnicodeNameTable, v9);
      v15 = v6;
      if (!v6)
      {
        if (*(a2 + 4) != 1)
        {
          v21 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(&v26, &unk_2582EDE9C, 3);
          *(v21 + *(*v21 - 24) + 8) = *(v21 + *(*v21 - 24) + 8) & 0xFFFFFFB5 | 8;
          v22 = MEMORY[0x259C7CA80]();
          v6 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v22, &unk_2582EDEAC, 1);
          goto LABEL_15;
        }

        goto LABEL_23;
      }

      v16 = *a2;
      if ((*(a2 + 5) & 1) == 0)
      {
        v17 = v16 <= 2 ? 2 : *a2;
        if (*(v9 + 1))
        {
          v16 = v17;
        }
      }

      if (v16 <= 1)
      {
        if (v16)
        {
          if (v16 != 1)
          {
            goto LABEL_15;
          }

          goto LABEL_45;
        }

LABEL_23:
        v29[0] = *v9;
        v6 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(&v26, v29, 1);
        goto LABEL_15;
      }

      if (v16 == 2)
      {
        goto LABEL_42;
      }

      if (v16 == 3)
      {
        v18 = v6 + 6;
        if (v6[6])
        {
          v19 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(&v26, &unk_2582EDEB4, 1);
          v20 = v15 + 5;
          goto LABEL_44;
        }

LABEL_42:
        if (v6[4])
        {
          v19 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(&v26, &unk_2582EDEB4, 1);
          v20 = v15 + 3;
          v18 = v15 + 4;
LABEL_44:
          v23 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v19, *v20, *v18);
LABEL_46:
          v6 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v23, &unk_2582EDEAC, 1);
          goto LABEL_15;
        }

LABEL_45:
        v24 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(&v26, &unk_2582EDE9C, 3);
        *(v24 + *(*v24 - 24) + 8) = *(v24 + *(*v24 - 24) + 8) & 0xFFFFFFB5 | 8;
        v23 = MEMORY[0x259C7CA80]();
        goto LABEL_46;
      }

LABEL_15:
      v9 = (v9 + 4);
      v13 = *(a1 + 23);
      if ((v13 & 0x80u) == 0)
      {
        v14 = a1;
      }

      else
      {
        v14 = *a1;
      }

      if ((v13 & 0x80u) != 0)
      {
        v13 = a1[1];
      }

      if (v9 == (v14 + 4 * v13))
      {
        goto LABEL_48;
      }
    }

    v11 = &unk_2582EDE88;
    goto LABEL_13;
  }

LABEL_48:
  std::wstringbuf::str(a3, &v27);
  if (SHIBYTE(v27.__str_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__str_.__r_.__value_.__l.__data_);
  }

  v27.__vftable = (MEMORY[0x277D82870] + 16);
  std::locale::~locale(&v27.__loc_);
  std::wostream::~wostream();
  return MEMORY[0x259C7CB30](&v28);
}

void sub_2582CB734(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  MEMORY[0x259C7CB30](va1);
  _Unwind_Resume(a1);
}

uint64_t std::unordered_map<wchar_t,blahtex::UnicodeNameInfo>::unordered_map<std::pair<wchar_t,blahtex::UnicodeNameInfo> const*>(uint64_t a1, int *a2, int *a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      std::__hash_table<std::__hash_value_type<wchar_t,blahtex::UnicodeNameInfo>,std::__unordered_map_hasher<wchar_t,std::__hash_value_type<wchar_t,blahtex::UnicodeNameInfo>,std::hash<wchar_t>,std::equal_to<wchar_t>,true>,std::__unordered_map_equal<wchar_t,std::__hash_value_type<wchar_t,blahtex::UnicodeNameInfo>,std::equal_to<wchar_t>,std::hash<wchar_t>,true>,std::allocator<std::__hash_value_type<wchar_t,blahtex::UnicodeNameInfo>>>::__emplace_unique_key_args<wchar_t,std::pair<wchar_t,blahtex::UnicodeNameInfo> const&>(a1, v5);
      v5 += 10;
    }

    while (v5 != a3);
  }

  return a1;
}

uint64_t *std::__hash_table<std::__hash_value_type<wchar_t,blahtex::UnicodeNameInfo>,std::__unordered_map_hasher<wchar_t,std::__hash_value_type<wchar_t,blahtex::UnicodeNameInfo>,std::hash<wchar_t>,std::equal_to<wchar_t>,true>,std::__unordered_map_equal<wchar_t,std::__hash_value_type<wchar_t,blahtex::UnicodeNameInfo>,std::equal_to<wchar_t>,std::hash<wchar_t>,true>,std::allocator<std::__hash_value_type<wchar_t,blahtex::UnicodeNameInfo>>>::__emplace_unique_key_args<wchar_t,std::pair<wchar_t,blahtex::UnicodeNameInfo> const&>(void *a1, int *a2)
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

CGRect CGPathGetPathBoundingBox(CGPathRef path)
{
  MEMORY[0x2821114E0](path);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x282111558](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectOffset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x282111608](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x282111618](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CTFontGetBoundingRectsForGlyphs(CTFontRef font, CTFontOrientation orientation, const CGGlyph *glyphs, CGRect *boundingRects, CFIndex count)
{
  MEMORY[0x282114780](font, *&orientation, glyphs, boundingRects, count);
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

CGRect CTLineGetImageBounds(CTLineRef line, CGContextRef context)
{
  MEMORY[0x282114928](line, context);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

std::logic_error *__cdecl std::logic_error::logic_error(std::logic_error *this, const char *a2)
{
  return MEMORY[0x2821F7478](this, a2);
}

{
  return MEMORY[0x2821F7490](this, a2);
}

uint64_t std::istream::operator>>()
{
  return MEMORY[0x2821F7830]();
}

{
  return MEMORY[0x2821F7838]();
}

{
  return MEMORY[0x2821F7850]();
}

{
  return MEMORY[0x2821F7858]();
}

uint64_t std::wostream::operator<<()
{
  return MEMORY[0x2821F7970]();
}

{
  return MEMORY[0x2821F7978]();
}

{
  return MEMORY[0x2821F7980]();
}

{
  return MEMORY[0x2821F7988]();
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