void std::vector<std::pair<std::string,std::string>>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 4);
    v10 = v9 + 1;
    if (v9 + 1 > 0x555555555555555)
    {
      std::vector<char const*>::__throw_length_error[abi:ne200100]();
    }

    v11 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 4);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x2AAAAAAAAAAAAAALL)
    {
      v12 = 0x555555555555555;
    }

    else
    {
      v12 = v10;
    }

    v20.__end_cap_.__value_ = a1;
    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,std::string>>>(a1, v12);
    }

    v13 = 48 * v9;
    v14 = *a2;
    *(v13 + 16) = *(a2 + 2);
    *v13 = v14;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v15 = *(a2 + 24);
    *(v13 + 40) = *(a2 + 5);
    *(v13 + 24) = v15;
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    *(a2 + 3) = 0;
    v8 = 48 * v9 + 48;
    v16 = *(a1 + 8) - *a1;
    v17 = v13 - v16;
    memcpy((v13 - v16), *a1, v16);
    v18 = *a1;
    *a1 = v17;
    *(a1 + 8) = v8;
    v19 = *(a1 + 16);
    *(a1 + 16) = 0;
    v20.__end_ = v18;
    v20.__end_cap_.__value_ = v19;
    v20.__first_ = v18;
    v20.__begin_ = v18;
    std::__split_buffer<std::pair<std::string,std::string>>::~__split_buffer(&v20);
  }

  else
  {
    v6 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v6;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v7 = *(a2 + 24);
    *(v4 + 40) = *(a2 + 5);
    *(v4 + 24) = v7;
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    *(a2 + 3) = 0;
    v8 = v4 + 48;
  }

  *(a1 + 8) = v8;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)9>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x25307A150](exception, 9);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,std::string>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__split_buffer<std::pair<std::string,std::string>>::~__split_buffer(std::__split_buffer<std::pair<std::string, std::string>> *this)
{
  begin = this->__begin_;
  for (i = this->__end_; i != begin; i = this->__end_)
  {
    this->__end_ = i - 1;
    std::__destroy_at[abi:ne200100]<std::pair<std::string,std::string>,0>(&i[-1]);
  }

  if (this->__first_)
  {
    operator delete(this->__first_);
  }
}

void std::vector<std::pair<char,char>>::push_back[abi:ne200100](uint64_t a1, _WORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 1;
    if (v7 <= -2)
    {
      std::vector<char const*>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    if (v8 <= v7 + 1)
    {
      v9 = v7 + 1;
    }

    else
    {
      v9 = v8;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<char,char>>>(a1, v10);
    }

    v11 = (2 * v7);
    *v11 = *a2;
    v6 = 2 * v7 + 2;
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

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<char,char>>>(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void (__cdecl ***std::__begin_marked_subexpression<char>::~__begin_marked_subexpression(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

void std::__begin_marked_subexpression<char>::~__begin_marked_subexpression(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x25307A210);
}

uint64_t std::__begin_marked_subexpression<char>::__exec(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  *(*(a2 + 32) + 24 * (*(result + 16) - 1)) = *(a2 + 16);
  *(a2 + 80) = *(result + 8);
  return result;
}

void (__cdecl ***std::__end_marked_subexpression<char>::~__end_marked_subexpression(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

void std::__end_marked_subexpression<char>::~__end_marked_subexpression(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x25307A210);
}

uint64_t std::__end_marked_subexpression<char>::__exec(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  v2 = *(a2 + 32) + 24 * (*(result + 16) - 1);
  *(v2 + 8) = *(a2 + 16);
  *(v2 + 16) = 1;
  *(a2 + 80) = *(result + 8);
  return result;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<char const*>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, int *a4)
{
  if (a2 != a3)
  {
    v4 = *a2;
    if ((v4 & 0xF8) == 0x30 || (v4 & 0xFE) == 0x38)
    {
      v5 = v4 - 48;
      *a4 = v5;
      if (++a2 != a3)
      {
        do
        {
          v6 = *a2;
          if ((v6 & 0xF8) != 0x30 && (v6 & 0xFE) != 0x38)
          {
            break;
          }

          if (v5 >= 214748364)
          {
            std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)8>();
          }

          v5 = v6 + 10 * v5 - 48;
          *a4 = v5;
          ++a2;
        }

        while (a2 != a3);
      }
    }
  }

  return a2;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)8>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x25307A150](exception, 8);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)7>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x25307A150](exception, 7);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void std::__loop<char>::~__loop(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  std::__owns_two_states<char>::~__owns_two_states(a1);

  JUMPOUT(0x25307A210);
}

unsigned int *std::__loop<char>::__exec(unsigned int *result, void *a2)
{
  v2 = (a2[7] + 16 * result[10]);
  if (*a2 == -991)
  {
    v3 = *v2 + 1;
    *v2 = v3;
    v4 = *(result + 3);
    v5 = *(result + 4);
    v6 = v3 < v5;
    if (v3 < v5 && v3 >= v4)
    {
      v8 = v2[1];
      v6 = v3 < v5 && v8 != a2[2];
    }

    if (!v6 || v3 < v4)
    {
      *a2 = -994;
      if (!v6)
      {
        goto LABEL_25;
      }

LABEL_22:
      a2[10] = *(result + 1);
      return std::__loop<char>::__init_repeat[abi:ne200100](result, a2);
    }

    goto LABEL_23;
  }

  *v2 = 0;
  if (*(result + 4))
  {
    if (*(result + 3))
    {
      *a2 = -994;
      goto LABEL_22;
    }

LABEL_23:
    *a2 = -992;
    return result;
  }

  *a2 = -994;
LABEL_25:
  a2[10] = *(result + 2);
  return result;
}

unsigned int *std::__loop<char>::__exec_split(unsigned int *result, int a2, void *a3)
{
  *a3 = -994;
  if (*(result + 52) == a2)
  {
    a3[10] = *(result + 2);
  }

  else
  {
    a3[10] = *(result + 1);
    return std::__loop<char>::__init_repeat[abi:ne200100](result, a3);
  }

  return result;
}

void std::__owns_two_states<char>::~__owns_two_states(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  std::__owns_two_states<char>::~__owns_two_states(a1);

  JUMPOUT(0x25307A210);
}

void (__cdecl ***std::__owns_two_states<char>::~__owns_two_states(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  *a1 = &unk_28637A298;
  v2 = a1[2];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    (*(*v3 + 1))(v3);
  }

  return a1;
}

unsigned int *std::__loop<char>::__init_repeat[abi:ne200100](unsigned int *result, void *a2)
{
  v2 = result[11];
  *(a2[7] + 16 * result[10] + 8) = a2[2];
  v3 = result[12];
  if (v2 != v3)
  {
    v4 = v2 - 1;
    v5 = a2[3];
    v6 = v3 - 1 - v4;
    v7 = (a2[4] + 24 * v4 + 16);
    do
    {
      *(v7 - 2) = v5;
      *(v7 - 1) = v5;
      *v7 = 0;
      v7 += 24;
      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t std::__repeat_one_loop<char>::__exec(uint64_t result, uint64_t a2)
{
  *a2 = -991;
  *(a2 + 80) = *(result + 8);
  return result;
}

void std::__alternate<char>::~__alternate(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  std::__owns_two_states<char>::~__owns_two_states(a1);

  JUMPOUT(0x25307A210);
}

uint64_t std::__alternate<char>::__exec_split(uint64_t result, int a2, uint64_t a3)
{
  *a3 = -994;
  v3 = 8;
  if (a2)
  {
    v3 = 16;
  }

  *(a3 + 80) = *(result + v3);
  return result;
}

uint64_t std::__empty_non_own_state<char>::__exec(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  *(a2 + 80) = *(result + 8);
  return result;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)15>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x25307A150](exception, 15);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_simple_RE<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 == a3)
  {
    return a2;
  }

  end = a1->__end_;
  marked_count = a1->__marked_count_;
  v8 = std::basic_regex<char,std::regex_traits<char>>::__parse_nondupl_RE<char const*>(a1, a2, a3);
  if (v8 == a2)
  {
    return a2;
  }

  v9 = a1->__marked_count_ + 1;

  return std::basic_regex<char,std::regex_traits<char>>::__parse_RE_dupl_symbol<char const*>(a1, v8, a3, end, marked_count + 1, v9);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_nondupl_RE<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = std::basic_regex<char,std::regex_traits<char>>::__parse_one_char_or_coll_elem_RE<char const*>(a1, a2, a3);
  v7 = v6;
  if (v6 == a2 && v6 != a3 && v6 + 1 != a3 && *v6 == 92)
  {
    v8 = v6[1];
    if (v8 == 40)
    {
      v9 = v6 + 2;
      std::basic_regex<char,std::regex_traits<char>>::__push_begin_marked_subexpression(a1);
      marked_count = a1->__marked_count_;
      do
      {
        v11 = v9;
        v12 = std::basic_regex<char,std::regex_traits<char>>::__parse_simple_RE<char const*>(a1, v9, a3);
        v9 = v12;
      }

      while (v12 != v11);
      if (v11 == a3 || v12 + 1 == a3 || *v12 != 92 || v12[1] != 41)
      {
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
      }

      v7 = v12 + 2;
      std::basic_regex<char,std::regex_traits<char>>::__push_end_marked_subexpression(a1, marked_count);
    }

    else
    {
      v13 = std::basic_regex<char,std::regex_traits<char>>::__test_back_ref(a1, v8);
      v14 = 2;
      if (!v13)
      {
        v14 = 0;
      }

      v7 += v14;
    }
  }

  return v7;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_RE_dupl_symbol<char const*>(std::basic_regex<char> *this, unsigned __int8 *a2, unsigned __int8 *a3, std::__owns_one_state<char> *__s, size_t __mexp_begin, size_t __mexp_end)
{
  v6 = a2;
  if (a2 != a3)
  {
    v7 = __mexp_end;
    v8 = __mexp_begin;
    v11 = *a2;
    if (v11 == 42)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_loop(this, 0, 0xFFFFFFFFFFFFFFFFLL, __s, __mexp_begin, __mexp_end, 1);
      return ++v6;
    }

    if (a2 + 1 != a3 && v11 == 92 && a2[1] == 123)
    {
      v14 = a2 + 2;
      LODWORD(__max) = 0;
      v15 = std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<char const*>(this, a2 + 2, a3, &__max);
      if (v15 == v14)
      {
        goto LABEL_25;
      }

      if (v15 != a3)
      {
        v16 = v15 + 1;
        v17 = *v15;
        if (v17 == 44)
        {
          v26 = -1;
          v18 = std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<char const*>(this, v16, a3, &v26);
          if (v18 != a3)
          {
            v19 = v18;
            if (v18 + 1 != a3 && *v18 == 92)
            {
              v20 = v18[1];
              v21 = v20 == 125;
              if (v20 == 125)
              {
                v22 = v26;
                if (v26 == -1)
                {
                  v23 = v8;
                  v24 = v7;
                  v25 = this;
                  v22 = -1;
                  goto LABEL_23;
                }

                if (v26 >= __max)
                {
                  v23 = v8;
                  v24 = v7;
                  v25 = this;
LABEL_23:
                  std::basic_regex<char,std::regex_traits<char>>::__push_loop(v25, __max, v22, __s, v23, v24, 1);
                  return &v19[2 * v21];
                }

LABEL_25:
                std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)8>();
              }
            }
          }
        }

        else if (v16 != a3 && v17 == 92 && *v16 == 125)
        {
          v6 = v15 + 2;
          std::basic_regex<char,std::regex_traits<char>>::__push_loop(this, __max, __max, __s, v8, v7, 1);
          return v6;
        }
      }

      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)7>();
    }
  }

  return v6;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_one_char_or_coll_elem_RE<char const*>(std::basic_regex<char> *this, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3)
  {
    v7 = a2 + 1;
    v6 = *a2;
    if (a2 + 1 == a3 && v6 == 36 || ((v6 - 46) <= 0x2E ? (v8 = ((1 << (v6 - 46)) & 0x600000000001) == 0) : (v8 = 1), !v8))
    {
      v9 = std::basic_regex<char,std::regex_traits<char>>::__parse_QUOTED_CHAR<char const*>(this, a2, a3);
      v7 = v9;
      if (v9 == a2)
      {
        if (*v9 == 46)
        {
          operator new();
        }

        goto LABEL_12;
      }
    }

    else
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_char(this, v6);
    }

    return v7;
  }

  v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_QUOTED_CHAR<char const*>(this, a2, a3);
  if (v7 != a2)
  {
    return v7;
  }

LABEL_12:

  return std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<char const*>(this, a2, a3);
}

_BYTE *std::basic_regex<char,std::regex_traits<char>>::__parse_QUOTED_CHAR<char const*>(std::basic_regex<char> *a1, _BYTE *a2, _BYTE *a3)
{
  v3 = a2;
  if (a2 != a3 && a2 + 1 != a3 && *a2 == 92)
  {
    v4 = a2[1];
    if ((v4 - 36) <= 0x3A && ((1 << (v4 - 36)) & 0x580000000000441) != 0)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v4);
      v3 += 2;
    }
  }

  return v3;
}

void (__cdecl ***std::__match_any<char>::~__match_any(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

void std::__match_any<char>::~__match_any(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x25307A210);
}

uint64_t std::__match_any<char>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) || !*v2)
  {
    v3 = 0;
    *a2 = -993;
  }

  else
  {
    *a2 = -995;
    *(a2 + 16) = v2 + 1;
    v3 = *(result + 8);
  }

  *(a2 + 80) = v3;
  return result;
}

BOOL std::basic_regex<char,std::regex_traits<char>>::__test_back_ref(std::basic_regex<char> *this, char a2)
{
  if ((a2 & 0xF8) != 0x30 && (a2 & 0xFE) != 0x38 || a2 - 49 > 8)
  {
    return 0;
  }

  if (a2 - 48 > this->__marked_count_)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)4>();
  }

  std::basic_regex<char,std::regex_traits<char>>::__push_back_ref(this, a2 - 48);
  return 1;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_branch<char const*>(std::basic_regex<char> *a1, std::basic_regex<char> *a2, std::basic_regex<char> *a3)
{
  v6 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<char const*>(a1, a2, a3);
  if (v6 == a2)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)15>();
  }

  do
  {
    v7 = v6;
    v6 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<char const*>(a1, v6, a3);
  }

  while (v6 != v7);
  return v7;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<char const*>(std::basic_regex<char> *a1, std::basic_regex<char> *a2, std::basic_regex<char> *a3)
{
  end = a1->__end_;
  marked_count = a1->__marked_count_;
  v8 = std::basic_regex<char,std::regex_traits<char>>::__parse_one_char_or_coll_elem_ERE<char const*>(a1, a2, a3);
  v9 = v8;
  if (v8 == a2 && v8 != a3)
  {
    v10 = *v8;
    switch(v10)
    {
      case '$':
        std::basic_regex<char,std::regex_traits<char>>::__push_r_anchor(a1);
        break;
      case '(':
        std::basic_regex<char,std::regex_traits<char>>::__push_begin_marked_subexpression(a1);
        v11 = a1->__marked_count_;
        ++a1->__open_count_;
        v12 = std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<char const*>(a1, v9 + 1, a3);
        if (v12 == a3 || (v9 = v12, *v12 != 41))
        {
          std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
        }

        std::basic_regex<char,std::regex_traits<char>>::__push_end_marked_subexpression(a1, v11);
        --a1->__open_count_;
        break;
      case '^':
        std::basic_regex<char,std::regex_traits<char>>::__push_l_anchor(a1);
        break;
      default:
        goto LABEL_12;
    }

    ++v9;
  }

LABEL_12:
  if (v9 == a2)
  {
    return v9;
  }

  v13 = a1->__marked_count_ + 1;

  return std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<char const*>(a1, v9, a3, end, marked_count + 1, v13);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_one_char_or_coll_elem_ERE<char const*>(std::basic_regex<char> *a1, std::basic_regex<char> *a2, std::basic_regex<char> *a3)
{
  v6 = std::basic_regex<char,std::regex_traits<char>>::__parse_ORD_CHAR_ERE<char const*>(a1, a2, a3);
  if (v6 != a2)
  {
    return v6;
  }

  v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_QUOTED_CHAR_ERE<char const*>(a1, a2, a3);
  v6 = v7;
  if (v7 != a2)
  {
    return v6;
  }

  if (a2 != a3 && *v7 == 46)
  {
    operator new();
  }

  return std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<char const*>(a1, a2, a3);
}

std::basic_regex<char> *std::basic_regex<char,std::regex_traits<char>>::__parse_ORD_CHAR_ERE<char const*>(std::basic_regex<char> *a1, std::basic_regex<char> *this, std::basic_regex<char> *a3)
{
  v3 = this;
  if (this != a3)
  {
    locale_low = LOBYTE(this->__traits_.__loc_.__locale_);
    v5 = (locale_low - 36);
    if (v5 > 0x3A)
    {
      goto LABEL_8;
    }

    if (((1 << (locale_low - 36)) & 0x5800000080004D1) != 0)
    {
      return v3;
    }

    if (v5 == 5)
    {
      if (a1->__open_count_)
      {
        return v3;
      }

      locale = 41;
    }

    else
    {
LABEL_8:
      if ((locale_low - 123) < 2)
      {
        return v3;
      }

      locale = this->__traits_.__loc_.__locale_;
    }

    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, locale);
    return (v3 + 1);
  }

  return v3;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_QUOTED_CHAR_ERE<char const*>(uint64_t a1, std::basic_regex<char> *this, std::basic_regex<char> *a3)
{
  v3 = this;
  if (this == a3)
  {
    return v3;
  }

  v4 = &this->__traits_.__loc_.__locale_ + 1;
  if ((&v3->__traits_.__loc_.__locale_ + 1) == a3 || LOBYTE(v3->__traits_.__loc_.__locale_) != 92)
  {
    return v3;
  }

  v5 = *v4;
  v6 = (v5 - 36) > 0x3A || ((1 << (v5 - 36)) & 0x5800000080004F1) == 0;
  if (!v6 || (v5 - 123) < 3)
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v5);
    return v3 + 2;
  }

  if ((*(a1 + 24) & 0x1F0) != 0x40)
  {
    v8 = std::basic_regex<char,std::regex_traits<char>>::__test_back_ref(a1, v5);
    v9 = 2;
    if (!v8)
    {
      v9 = 0;
    }

    return v3 + v9;
  }

  return std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<char const*>(a1, v4, a3, 0);
}

uint64_t std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(uint64_t a1, char *__f, char *__l, std::match_results<const char *> *this, int a5)
{
  if ((a5 & 0x80) != 0)
  {
    v9 = a5 & 0xFFA;
  }

  else
  {
    v9 = a5;
  }

  std::match_results<char const*>::__init(this, *(a1 + 28) + 1, __f, __l, (v9 & 0x800) >> 11);
  if (std::basic_regex<char,std::regex_traits<char>>::__match_at_start<std::allocator<std::sub_match<char const*>>>(a1, __f, __l, this, v9, (v9 & 0x800) == 0))
  {
    if (this->__matches_.__end_ == this->__matches_.__begin_)
    {
      p_unmatched = &this->__unmatched_;
    }

    else
    {
      p_unmatched = this->__matches_.__begin_;
    }

LABEL_19:
    first = p_unmatched->first;
    this->__prefix_.second = p_unmatched->first;
    this->__prefix_.matched = this->__prefix_.first != first;
    second = p_unmatched->second;
    this->__suffix_.first = second;
    this->__suffix_.matched = second != this->__suffix_.second;
    return 1;
  }

  if (__f != __l && (v9 & 0x40) == 0)
  {
    v11 = __f + 1;
    if (v11 != __l)
    {
      v12 = &this->__unmatched_;
      do
      {
        std::vector<std::sub_match<char const*>>::assign(&this->__matches_, 0xAAAAAAAAAAAAAAABLL * ((this->__matches_.__end_ - this->__matches_.__begin_) >> 3), &this->__unmatched_);
        v13 = std::basic_regex<char,std::regex_traits<char>>::__match_at_start<std::allocator<std::sub_match<char const*>>>(a1, v11, __l, this, v9 | 0x80u, 0);
        begin = this->__matches_.__begin_;
        end = this->__matches_.__end_;
        if (v13)
        {
          goto LABEL_16;
        }

        std::vector<std::sub_match<char const*>>::assign(&this->__matches_, 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3), &this->__unmatched_);
      }

      while (++v11 != __l);
    }

    v12 = &this->__unmatched_;
    std::vector<std::sub_match<char const*>>::assign(&this->__matches_, 0xAAAAAAAAAAAAAAABLL * ((this->__matches_.__end_ - this->__matches_.__begin_) >> 3), &this->__unmatched_);
    if (std::basic_regex<char,std::regex_traits<char>>::__match_at_start<std::allocator<std::sub_match<char const*>>>(a1, v11, __l, this, v9 | 0x80u, 0))
    {
      begin = this->__matches_.__begin_;
      end = this->__matches_.__end_;
LABEL_16:
      if (end == begin)
      {
        p_unmatched = v12;
      }

      else
      {
        p_unmatched = begin;
      }

      goto LABEL_19;
    }
  }

  result = 0;
  this->__matches_.__end_ = this->__matches_.__begin_;
  return result;
}

uint64_t std::basic_regex<char,std::regex_traits<char>>::__match_at_start<std::allocator<std::sub_match<char const*>>>(uint64_t a1, const char *a2, const char *a3, uint64_t *a4, int a5, char a6)
{
  if ((*(a1 + 24) & 0x1F0) == 0)
  {
    return std::basic_regex<char,std::regex_traits<char>>::__match_at_start_ecma<std::allocator<std::sub_match<char const*>>>(a1, a2, a3, a4, a5, a6);
  }

  if (*(a1 + 28))
  {
    return std::basic_regex<char,std::regex_traits<char>>::__match_at_start_posix_subs<std::allocator<std::sub_match<char const*>>>(a1, a2, a3, a4, a5, a6);
  }

  return std::basic_regex<char,std::regex_traits<char>>::__match_at_start_posix_nosubs<std::allocator<std::sub_match<char const*>>>(a1, a2, a3, a4, a5, a6);
}

uint64_t std::basic_regex<char,std::regex_traits<char>>::__match_at_start_posix_nosubs<std::allocator<std::sub_match<char const*>>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, int a5, char a6)
{
  v60 = 0u;
  v61 = 0u;
  v59 = 0u;
  v6 = *(a1 + 40);
  if (!v6)
  {
    goto LABEL_70;
  }

  *v55 = 0;
  memset(&v55[8], 0, 32);
  v56 = 0uLL;
  *__p = 0uLL;
  memset(v58, 0, 21);
  std::deque<std::__state<char>>::push_back(&v59, v55);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (*&v55[32])
  {
    *&v56 = *&v55[32];
    operator delete(*&v55[32]);
  }

  v51 = a4;
  v13 = v59.i64[1];
  v14 = *(&v61 + 1) + v61 - 1;
  v15 = v14 / 0x2A;
  v16 = *(v59.i64[1] + 8 * (v14 / 0x2A));
  v17 = 3 * (v14 % 0x2A);
  v18 = v16 + 32 * v17;
  *v18 = 0;
  *(v18 + 8) = a2;
  *(*(v13 + 8 * v15) + 32 * v17 + 16) = a2;
  *(*(v13 + 8 * v15) + 32 * v17 + 24) = a3;
  std::vector<std::pair<unsigned long,char const*>>::resize((*(v13 + 8 * v15) + 32 * v17 + 56), *(a1 + 32));
  v54 = 0;
  v19 = 0;
  v20 = 0;
  v21 = *(&v61 + 1);
  v22 = v59.i64[1];
  v23 = *(&v61 + 1) + v61 - 1;
  v24 = v23 / 0x2A;
  v25 = 3 * (v23 % 0x2A);
  *(*(v59.i64[1] + 8 * v24) + 32 * v25 + 80) = v6;
  v52 = a3;
  v53 = a2;
  v26 = a3 - a2;
  v27 = *(v22 + 8 * v24) + 32 * v25;
  *(v27 + 88) = a5;
  *(v27 + 92) = a6;
  do
  {
    if ((++v19 & 0xFFF) == 0 && (v19 >> 12) >= v26)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)12>();
    }

    v29 = *(v59.i64[1] + 8 * ((v21 + v61 - 1) / 0x2AuLL)) + 96 * ((v21 + v61 - 1) % 0x2AuLL);
    v30 = *(v29 + 80);
    if (v30)
    {
      (*(*v30 + 16))(v30, v29);
    }

    v31 = *v29;
    if (*v29 <= -995)
    {
      if (v31 != -1000)
      {
        if (v31 == -999)
        {
          goto LABEL_52;
        }

        if (v31 != -995)
        {
          goto LABEL_72;
        }

        std::deque<std::__state<char>>::push_front(&v59, v29);
        goto LABEL_51;
      }

      v32 = *(v29 + 16);
      v34 = (a5 & 0x1000) == 0 || v32 == v52;
      v35 = v32 != v53 || (a5 & 0x20) == 0;
      if (!v35 || !v34)
      {
        goto LABEL_51;
      }

      v36 = v32 - *(v29 + 8);
      if (v20 <= v36)
      {
        v37 = v36;
      }

      else
      {
        v37 = v20;
      }

      if (v54)
      {
        v20 = v37;
      }

      else
      {
        v20 = v36;
      }

      if (v20 != v26)
      {
        std::deque<std::__state<char>>::pop_back(&v59);
        v54 = 1;
        goto LABEL_52;
      }

      v38 = v59.i64[1];
      v39 = v60;
      if (v60 == v59.i64[1])
      {
        v39 = v59.i64[1];
      }

      else
      {
        v40 = (v59.i64[1] + 8 * (v61 / 0x2A));
        v41 = (*v40 + 96 * (v61 % 0x2A));
        v42 = *(v59.i64[1] + 8 * ((*(&v61 + 1) + v61) / 0x2AuLL)) + 96 * ((*(&v61 + 1) + v61) % 0x2AuLL);
        if (v41 != v42)
        {
          do
          {
            std::__destroy_at[abi:ne200100]<std::__state<char>,0>(v41);
            v41 += 12;
            if ((v41 - *v40) == 4032)
            {
              v43 = v40[1];
              ++v40;
              v41 = v43;
            }
          }

          while (v41 != v42);
          v38 = v59.i64[1];
          v39 = v60;
        }
      }

      *(&v61 + 1) = 0;
      v46 = (v39 - v38) >> 3;
      if (v46 >= 3)
      {
        do
        {
          operator delete(*v38);
          v38 = (v59.i64[1] + 8);
          v59.i64[1] = v38;
          v46 = (v60 - v38) >> 3;
        }

        while (v46 > 2);
      }

      if (v46 == 1)
      {
        v47 = 21;
      }

      else
      {
        if (v46 != 2)
        {
LABEL_67:
          v54 = 1;
          v20 = v26;
          goto LABEL_52;
        }

        v47 = 42;
      }

      *&v61 = v47;
      goto LABEL_67;
    }

    if (v31 <= -993)
    {
      if (v31 == -994)
      {
        goto LABEL_52;
      }

      if (v31 != -993)
      {
        goto LABEL_72;
      }

LABEL_51:
      std::deque<std::__state<char>>::pop_back(&v59);
      goto LABEL_52;
    }

    if (v31 == -992)
    {
      v44 = *(v29 + 16);
      *v55 = *v29;
      *&v55[16] = v44;
      v56 = 0uLL;
      *&v55[32] = 0;
      std::vector<std::sub_match<char const*>>::__init_with_size[abi:ne200100]<std::sub_match<char const*>*,std::sub_match<char const*>*>(&v55[32], *(v29 + 32), *(v29 + 40), 0xAAAAAAAAAAAAAAABLL * ((*(v29 + 40) - *(v29 + 32)) >> 3));
      __p[0] = 0;
      __p[1] = 0;
      v58[0] = 0;
      std::vector<std::pair<unsigned long,char const*>>::__init_with_size[abi:ne200100]<std::pair<unsigned long,char const*>*,std::pair<unsigned long,char const*>*>(__p, *(v29 + 56), *(v29 + 64), (*(v29 + 64) - *(v29 + 56)) >> 4);
      v45 = *(v29 + 80);
      *(&v58[1] + 5) = *(v29 + 85);
      v58[1] = v45;
      (*(**(v29 + 80) + 24))(*(v29 + 80), 1, v29);
      (*(*v58[1] + 24))(v58[1], 0, v55);
      std::deque<std::__state<char>>::push_back(&v59, v55);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      if (*&v55[32])
      {
        *&v56 = *&v55[32];
        operator delete(*&v55[32]);
      }
    }

    else if (v31 != -991)
    {
LABEL_72:
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)16>();
    }

LABEL_52:
    v21 = *(&v61 + 1);
  }

  while (*(&v61 + 1));
  if ((v54 & 1) == 0)
  {
LABEL_70:
    v49 = 0;
    goto LABEL_71;
  }

  v48 = *v51;
  *v48 = v53;
  *(v48 + 8) = v53 + v20;
  v49 = 1;
  *(v48 + 16) = 1;
LABEL_71:
  std::deque<std::__state<char>>::~deque[abi:ne200100](&v59);
  return v49;
}

uint64_t std::basic_regex<char,std::regex_traits<char>>::__match_at_start_posix_subs<std::allocator<std::sub_match<char const*>>>(uint64_t a1, const char *a2, const char *a3, uint64_t *a4, int a5, char a6)
{
  v52 = 0;
  v53 = 0;
  v54 = 0;
  *v49 = 0;
  memset(&v49[8], 0, 32);
  v50 = 0u;
  memset(v51, 0, 37);
  v6 = *(a1 + 40);
  if (!v6)
  {
    goto LABEL_47;
  }

  __x.first = a3;
  __x.second = a3;
  __x.matched = 0;
  *v44 = 0;
  memset(&v44[8], 0, 32);
  v45 = 0uLL;
  *__p = 0uLL;
  memset(v47, 0, 21);
  std::vector<std::__state<char>>::push_back[abi:ne200100](&v52, v44);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (*&v44[32])
  {
    *&v45 = *&v44[32];
    operator delete(*&v44[32]);
  }

  v43 = a4;
  v13 = v53;
  *(v53 - 24) = 0;
  *(v13 - 11) = a2;
  *(v13 - 10) = a2;
  *(v13 - 9) = a3;
  std::vector<std::sub_match<char const*>>::resize((v13 - 8), *(a1 + 28), &__x);
  std::vector<std::pair<unsigned long,char const*>>::resize((v53 - 5), *(a1 + 32));
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = v53;
  *(v53 - 2) = v6;
  v18 = (a3 - a2);
  *(v17 - 2) = a5;
  *(v17 - 4) = a6;
  do
  {
    v19 = (++v16 & 0xFFF) != 0 || (v16 >> 12) < v18;
    if (!v19)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)12>();
    }

    v21 = v17 - 2;
    v20 = *(v17 - 2);
    v22 = v17 - 12;
    if (v20)
    {
      (*(*v20 + 16))(v20, v17 - 12);
    }

    v23 = *v22;
    if (*v22 > -994)
    {
      switch(v23)
      {
        case -993:
          goto LABEL_33;
        case -992:
          v32 = *(v17 - 5);
          *v44 = *v22;
          *&v44[16] = v32;
          v45 = 0uLL;
          *&v44[32] = 0;
          std::vector<std::sub_match<char const*>>::__init_with_size[abi:ne200100]<std::sub_match<char const*>*,std::sub_match<char const*>*>(&v44[32], *(v17 - 8), *(v17 - 7), 0xAAAAAAAAAAAAAAABLL * ((*(v17 - 7) - *(v17 - 8)) >> 3));
          __p[0] = 0;
          __p[1] = 0;
          v47[0] = 0;
          std::vector<std::pair<unsigned long,char const*>>::__init_with_size[abi:ne200100]<std::pair<unsigned long,char const*>*,std::pair<unsigned long,char const*>*>(__p, *(v17 - 5), *(v17 - 4), (*(v17 - 4) - *(v17 - 5)) >> 4);
          v33 = *v21;
          *(&v47[1] + 5) = *(v17 - 11);
          v47[1] = v33;
          (*(**v21 + 24))(*v21, 1, v17 - 12);
          (*(*v47[1] + 24))(v47[1], 0, v44);
          std::vector<std::__state<char>>::push_back[abi:ne200100](&v52, v44);
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

          if (*&v44[32])
          {
            *&v45 = *&v44[32];
            operator delete(*&v44[32]);
          }

          break;
        case -991:
          break;
        default:
LABEL_53:
          std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)16>();
      }
    }

    else
    {
      if ((v23 + 995) < 2)
      {
        goto LABEL_38;
      }

      if (v23 != -1000)
      {
        goto LABEL_53;
      }

      v24 = *(v17 - 10);
      if ((a5 & 0x20) != 0 && v24 == a2 || (a5 & 0x1000) != 0 && v24 != a3)
      {
LABEL_33:
        v31 = v53 - 12;
        std::__destroy_at[abi:ne200100]<std::__state<char>,0>(v53 - 12);
        v53 = v31;
        goto LABEL_38;
      }

      v25 = v15;
      v26 = &v24[-*(v17 - 11)];
      if ((v25 & (v14 >= v26)) == 0)
      {
        v27 = *(v17 - 5);
        *v49 = *v22;
        *&v49[16] = v27;
        if (v49 != v22)
        {
          std::vector<std::sub_match<char const*>>::__assign_with_size[abi:ne200100]<std::sub_match<char const*>*,std::sub_match<char const*>*>(&v49[32], *(v17 - 8), *(v17 - 7), 0xAAAAAAAAAAAAAAABLL * ((*(v17 - 7) - *(v17 - 8)) >> 3));
          std::vector<std::pair<unsigned long,char const*>>::__assign_with_size[abi:ne200100]<std::pair<unsigned long,char const*>*,std::pair<unsigned long,char const*>*>(v51, *(v17 - 5), *(v17 - 4), (*(v17 - 4) - *(v17 - 5)) >> 4);
        }

        v28 = *v21;
        *(&v51[3] + 5) = *(v17 - 11);
        v51[3] = v28;
        v14 = v26;
      }

      v29 = v53;
      if (v14 == v18)
      {
        v30 = v52;
        while (v29 != v30)
        {
          v29 -= 12;
          std::__destroy_at[abi:ne200100]<std::__state<char>,0>(v29);
        }

        v53 = v30;
        v15 = 1;
        v14 = (a3 - a2);
      }

      else
      {
        v34 = v53 - 12;
        std::__destroy_at[abi:ne200100]<std::__state<char>,0>(v53 - 12);
        v53 = v34;
        v15 = 1;
      }
    }

LABEL_38:
    v17 = v53;
  }

  while (v52 != v53);
  if ((v15 & 1) == 0)
  {
LABEL_47:
    v41 = 0;
    goto LABEL_48;
  }

  v35 = *v43;
  *v35 = a2;
  *(v35 + 8) = &v14[a2];
  *(v35 + 16) = 1;
  if (v50 != *&v49[32])
  {
    v36 = 0xAAAAAAAAAAAAAAABLL * ((v50 - *&v49[32]) >> 3);
    v37 = (*&v49[32] + 16);
    v38 = 1;
    do
    {
      v39 = v35 + 24 * v38;
      *v39 = *(v37 - 1);
      v40 = *v37;
      v37 += 24;
      *(v39 + 16) = v40;
      v19 = v36 > v38++;
    }

    while (v19);
  }

  v41 = 1;
LABEL_48:
  if (v51[0])
  {
    v51[1] = v51[0];
    operator delete(v51[0]);
  }

  if (*&v49[32])
  {
    *&v50 = *&v49[32];
    operator delete(*&v49[32]);
  }

  *v49 = &v52;
  std::vector<std::__state<char>>::__destroy_vector::operator()[abi:ne200100](v49);
  return v41;
}

void sub_2515A138C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  std::__state<char>::~__state(&a11);
  std::__state<char>::~__state(&a27);
  a27 = v27 - 120;
  std::vector<std::__state<char>>::__destroy_vector::operator()[abi:ne200100](&a27);
  _Unwind_Resume(a1);
}

__n128 std::deque<std::__state<char>>::push_back(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 8);
  v7 = 42 * ((v5 - v6) >> 3) - 1;
  if (v5 == v6)
  {
    v7 = 0;
  }

  v8 = *(a1 + 40) + *(a1 + 32);
  if (v7 == v8)
  {
    std::deque<std::__state<char>>::__add_back_capacity(a1);
    v6 = *(a1 + 8);
    v8 = *(a1 + 40) + *(a1 + 32);
  }

  v9 = *(v6 + 8 * (v8 / 0x2A)) + 96 * (v8 % 0x2A);
  v10 = *(a2 + 16);
  *v9 = *a2;
  *(v9 + 16) = v10;
  *(v9 + 40) = 0;
  *(v9 + 48) = 0;
  *(v9 + 32) = 0;
  *(v9 + 32) = *(a2 + 32);
  *(v9 + 48) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(v9 + 56) = 0;
  *(v9 + 64) = 0;
  *(v9 + 72) = 0;
  result = *(a2 + 56);
  *(v9 + 56) = result;
  *(v9 + 72) = *(a2 + 72);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  v12 = *(a2 + 80);
  *(v9 + 85) = *(a2 + 85);
  *(v9 + 80) = v12;
  ++*(a1 + 40);
  return result;
}

uint64_t std::deque<std::__state<char>>::pop_back(void *a1)
{
  v2 = a1[5] + a1[4] - 1;
  std::__destroy_at[abi:ne200100]<std::__state<char>,0>((*(a1[1] + 8 * (v2 / 0x2A)) + 96 * (v2 % 0x2A)));
  --a1[5];

  return std::deque<std::__state<char>>::__maybe_remove_back_spare[abi:ne200100](a1, 1);
}

int64x2_t std::deque<std::__state<char>>::push_front(int64x2_t *a1, uint64_t a2)
{
  v4 = a1[2].u64[0];
  if (!v4)
  {
    std::deque<std::__state<char>>::__add_front_capacity(a1);
    v4 = a1[2].u64[0];
  }

  v5 = a1->i64[1];
  v6 = (v5 + 8 * (v4 / 0x2A));
  v7 = *v6 + 96 * (v4 % 0x2A);
  if (a1[1].i64[0] == v5)
  {
    v7 = 0;
  }

  if (v7 == *v6)
  {
    v7 = *(v6 - 1) + 4032;
  }

  v8 = *(a2 + 16);
  *(v7 - 96) = *a2;
  *(v7 - 80) = v8;
  *(v7 - 56) = 0;
  *(v7 - 48) = 0;
  *(v7 - 64) = 0;
  *(v7 - 64) = *(a2 + 32);
  *(v7 - 48) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(v7 - 40) = 0;
  *(v7 - 32) = 0;
  *(v7 - 24) = 0;
  *(v7 - 40) = *(a2 + 56);
  *(v7 - 24) = *(a2 + 72);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  v9 = *(a2 + 80);
  *(v7 - 11) = *(a2 + 85);
  *(v7 - 16) = v9;
  result = vaddq_s64(a1[2], xmmword_2515C0530);
  a1[2] = result;
  return result;
}

void *std::deque<std::__state<char>>::__add_back_capacity(void *a1)
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::__state<char> *>>(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_back<std::__state<char> *&>(a1, &v10);
}

void sub_2515A17F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_back<std::__state<char> *&>(void *result, void *a2)
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

      std::__allocate_at_least[abi:ne200100]<std::allocator<std::__state<char> *>>(result, v11);
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

const void **std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_front<std::__state<char> *>(const void **result, void *a2)
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

      std::__allocate_at_least[abi:ne200100]<std::allocator<std::__state<char> *>>(result, v9);
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

void *std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *> &>::emplace_back<std::__state<char> *>(void *result, void *a2)
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

      std::__allocate_at_least[abi:ne200100]<std::allocator<std::__state<char> *>>(result[4], v11);
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

const void **std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *> &>::emplace_front<std::__state<char> *&>(const void **result, void *a2)
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

      std::__allocate_at_least[abi:ne200100]<std::allocator<std::__state<char> *>>(result[4], v9);
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

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::__state<char> *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::deque<std::__state<char>>::__maybe_remove_back_spare[abi:ne200100](void *a1, int a2)
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

const void **std::deque<std::__state<char>>::__add_front_capacity(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = v2 - v1;
  if (v2 == v1)
  {
    v4 = 0;
  }

  else
  {
    v4 = 42 * ((v2 - v1) >> 3) - 1;
  }

  v5 = *(a1 + 32);
  if ((v4 - (*(a1 + 40) + v5)) < 0x2A)
  {
    v7 = *(a1 + 24);
    v8 = *a1;
    v9 = &v7[-*a1];
    if (v3 < v9)
    {
      if (v1 != v8)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == v8)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9 >> 2;
    }

    v11[4] = a1;
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::__state<char> *>>(a1, v10);
  }

  *(a1 + 32) = v5 + 42;
  v11[0] = *(v2 - 1);
  *(a1 + 16) = v2 - 8;
  return std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_front<std::__state<char> *>(a1, v11);
}

void sub_2515A1F2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  operator delete(v12);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::deque<std::__state<char>>::~deque[abi:ne200100](void *a1)
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
    v6 = &v2[v5 / 0x2A];
    v7 = *v6 + 96 * (v5 % 0x2A);
    v8 = v2[(a1[5] + v5) / 0x2A] + 96 * ((a1[5] + v5) % 0x2A);
    if (v7 != v8)
    {
      do
      {
        std::__destroy_at[abi:ne200100]<std::__state<char>,0>(v7);
        v7 += 96;
        if (v7 - *v6 == 4032)
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
    v11 = 21;
  }

  else
  {
    if (v10 != 2)
    {
      goto LABEL_16;
    }

    v11 = 42;
  }

  a1[4] = v11;
LABEL_16:
  while (v2 != v3)
  {
    v12 = *v2++;
    operator delete(v12);
  }

  return std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::~__split_buffer(a1);
}

uint64_t std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::~__split_buffer(uint64_t a1)
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

_BYTE *std::vector<std::sub_match<char const*>>::__assign_with_size[abi:ne200100]<std::sub_match<char const*>*,std::sub_match<char const*>*>(void *a1, uint64_t a2, __int128 *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  result = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - result) >> 3) < a4)
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

      std::vector<std::sub_match<char const*>>::__vallocate[abi:ne200100](a1, v11);
    }

    std::vector<char const*>::__throw_length_error[abi:ne200100]();
  }

  v12 = a1[1];
  if (0xAAAAAAAAAAAAAAABLL * ((v12 - result) >> 3) >= a4)
  {
    while (v5 != a3)
    {
      *result = *v5;
      result[16] = *(v5 + 16);
      v5 += 24;
      result += 24;
    }

    a1[1] = result;
  }

  else
  {
    v13 = (a2 + v12 - result);
    if (v12 != result)
    {
      do
      {
        *result = *v5;
        result[16] = *(v5 + 16);
        v5 += 24;
        result += 24;
      }

      while (v5 != v13);
    }

    if (v13 == a3)
    {
      v14 = v12;
    }

    else
    {
      v14 = v12;
      do
      {
        v15 = *v13;
        *(v12 + 16) = *(v13 + 2);
        *v12 = v15;
        v12 += 24;
        v13 = (v13 + 24);
        v14 += 24;
      }

      while (v13 != a3);
    }

    a1[1] = v14;
  }

  return result;
}

char *std::vector<std::pair<unsigned long,char const*>>::__assign_with_size[abi:ne200100]<std::pair<unsigned long,char const*>*,std::pair<unsigned long,char const*>*>(char **a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
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

      std::vector<std::pair<unsigned long,char const*>>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<char const*>::__throw_length_error[abi:ne200100]();
  }

  v11 = a1[1];
  if (a4 <= (v11 - result) >> 4)
  {
    while (v5 != a3)
    {
      v17 = *v5;
      v18 = v5[1];
      v5 += 2;
      *result = v17;
      *(result + 1) = v18;
      result += 16;
    }

    a1[1] = result;
  }

  else
  {
    v12 = (a2 + v11 - result);
    if (v11 != result)
    {
      do
      {
        v13 = *v5;
        v14 = v5[1];
        v5 += 2;
        *result = v13;
        *(result + 1) = v14;
        result += 16;
      }

      while (v5 != v12);
    }

    if (v12 == a3)
    {
      v15 = v11;
    }

    else
    {
      v15 = v11;
      do
      {
        v16 = *v12++;
        *v11 = v16;
        v11 += 16;
        v15 += 16;
      }

      while (v12 != a3);
    }

    a1[1] = v15;
  }

  return result;
}

uint64_t HDIsUnitTesting()
{
  if (HDIsUnitTesting_onceToken != -1)
  {
    HDIsUnitTesting_cold_1();
  }

  return HDIsUnitTesting__HDFIsUnitTesting;
}

Class __HDIsUnitTesting_block_invoke()
{
  result = NSClassFromString(&cfstr_Xctest.isa);
  HDIsUnitTesting__HDFIsUnitTesting = result != 0;
  return result;
}

void *HDSQLiteColumnAsNonEmptyString(HDSQLiteRow *a1, int a2)
{
  v2 = HDSQLiteRow::columnAsString(a1, a2);
  if ([v2 length])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

const void *HDSQLiteRow::columnAsBytes(HDSQLiteRow *this, int a2)
{
  if (a2 < 0)
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"const void * _Nullable HDSQLiteRow::columnAsBytes(int) const"];
    [v7 handleFailureInFunction:v8 file:@"HDSQLiteRow_Internal.h" lineNumber:89 description:@"Column must be greater than or equal to 0."];
  }

  if (*(this + 5) <= a2)
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"const void * _Nullable HDSQLiteRow::columnAsBytes(int) const"];
    [v9 handleFailureInFunction:v10 file:@"HDSQLiteRow_Internal.h" lineNumber:90 description:{@"Column must be less than the number of requested columns (%d).", (*(this + 5) - *(this + 4))}];
  }

  if (HDSQLiteRow::columnIsNull(this, a2))
  {
    return 0;
  }

  v5 = *(this + 1);
  v6 = *(this + 4) + a2;

  return sqlite3_column_blob(v5, v6);
}

uint64_t HDSQLiteRow::columnBytesLength(HDSQLiteRow *this, int a2)
{
  if (a2 < 0)
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"int HDSQLiteRow::columnBytesLength(int) const"];
    [v7 handleFailureInFunction:v8 file:@"HDSQLiteRow_Internal.h" lineNumber:100 description:@"Column must be greater than or equal to 0."];
  }

  if (*(this + 5) <= a2)
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"int HDSQLiteRow::columnBytesLength(int) const"];
    [v9 handleFailureInFunction:v10 file:@"HDSQLiteRow_Internal.h" lineNumber:101 description:{@"Column must be less than the number of requested columns (%d).", (*(this + 5) - *(this + 4))}];
  }

  if (HDSQLiteRow::columnIsNull(this, a2))
  {
    return 0;
  }

  v5 = *(this + 1);
  v6 = *(this + 4) + a2;

  return sqlite3_column_bytes(v5, v6);
}

id HDSQLiteRow::columnAsURL(HDSQLiteRow *this, int a2)
{
  v2 = HDSQLiteRow::columnAsString(this, a2);
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void *HDSQLiteColumnWithNameAsNonEmptyString(HDSQLiteRow *a1, void *a2)
{
  v2 = HDSQLiteColumnWithNameAsString(a1, a2);
  if ([v2 length])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

id HDSQLiteColumnWithNameAsData(HDSQLiteRow *a1, void *a2)
{
  v3 = a2;
  v4 = (*(*a1 + 24))(a1, [v3 UTF8String]);
  v5 = HDSQLiteRow::columnAsData(a1, v4);

  return v5;
}

id HDSQLiteColumnWithNameAsNumber(HDSQLiteRow *a1, void *a2)
{
  v3 = a2;
  v4 = (*(*a1 + 24))(a1, [v3 UTF8String]);
  v5 = HDSQLiteRow::columnAsNumber(a1, v4);

  return v5;
}

id HDSQLiteColumnWithNameAsURL(HDSQLiteRow *a1, void *a2)
{
  v3 = a2;
  v4 = (*(*a1 + 24))(a1, [v3 UTF8String]);
  v5 = HDSQLiteRow::columnAsURL(a1, v4);

  return v5;
}

id HDSQLiteColumnWithNameAsNaturalType(HDSQLiteRow *a1, void *a2)
{
  v3 = a2;
  v4 = (*(*a1 + 24))(a1, [v3 UTF8String]);
  v5 = HDSQLiteRow::columnAsNaturalType(a1, v4);

  return v5;
}

id HDSQLiteColumnWithNameAsObject(sqlite3_stmt **a1, void *a2, uint64_t a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = HDSQLiteColumnWithNameAsData(a1, v5);
  if (v6)
  {
    v16 = 0;
    v7 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:a3 fromData:v6 error:&v16];
    v8 = v16;
    v9 = v8;
    if (v7)
    {
      v10 = 1;
    }

    else
    {
      v10 = v8 == 0;
    }

    if (!v10)
    {
      _HKInitializeLogging();
      v11 = *MEMORY[0x277CCC2A0];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v14 = [v6 length];
        v15 = [MEMORY[0x277CCACA8] stringWithCString:sqlite3_sql(a1[1]) encoding:4];
        *buf = 138544386;
        v18 = a3;
        v19 = 2114;
        v20 = v5;
        v21 = 2048;
        v22 = v14;
        v23 = 2112;
        v24 = v15;
        v25 = 2114;
        v26 = v9;
        _os_log_error_impl(&dword_25156C000, v11, OS_LOG_TYPE_ERROR, "Error unarchiving object of class %{public}@ from column %{public}@ (retrieved data of length %lu; sql statement %@): %{public}@", buf, 0x34u);
      }
    }
  }

  else
  {
    v7 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v7;
}

id HDSQLiteColumnWithNameAsObjectWithClasses(sqlite3_stmt **a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = HDSQLiteColumnWithNameAsData(a1, v5);
  if (v7)
  {
    v15 = 0;
    v8 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v6 fromData:v7 error:&v15];
    v9 = v15;
    v10 = v9;
    if (!v8 && v9)
    {
      _HKInitializeLogging();
      v11 = *MEMORY[0x277CCC2A0];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v14 = [MEMORY[0x277CCACA8] stringWithCString:sqlite3_sql(a1[1]) encoding:4];
        *buf = 138413058;
        v17 = v5;
        v18 = 2112;
        v19 = v6;
        v20 = 2112;
        v21 = v14;
        v22 = 2114;
        v23 = v10;
        _os_log_error_impl(&dword_25156C000, v11, OS_LOG_TYPE_ERROR, "Error unarchiving object from column %@ (classes: %@; sql statement %@): %{public}@", buf, 0x2Au);
      }
    }
  }

  else
  {
    v8 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v8;
}

id HDSQLiteColumnWithNameAsArrayOfClass(sqlite3_stmt **a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), a3, 0}];
  v7 = HDSQLiteColumnWithNameAsObjectWithClasses(a1, v5, v6);

  return v7;
}

void HDSQLiteStatementBinder::bindNull(HDSQLiteStatementBinder *this, NSString *a2)
{
  v6 = a2;
  v3 = [(NSString *)v6 UTF8String];
  HDSQLiteStatementBinder::_recordBoundProperty(this, v3);
  v4 = *this;
  v5 = HDSQLiteStatementBinder::indexForProperty(this, v3);
  sqlite3_bind_null(v4, v5);
}

void HDSQLiteStatementBinder::bindBoolean(HDSQLiteStatementBinder *this, NSString *a2, int a3)
{
  v8 = a2;
  v5 = [(NSString *)v8 UTF8String];
  HDSQLiteStatementBinder::_recordBoundProperty(this, v5);
  v6 = *this;
  v7 = HDSQLiteStatementBinder::indexForProperty(this, v5);
  sqlite3_bind_int(v6, v7, a3);
}

void HDSQLiteStatementBinder::bindString(HDSQLiteStatementBinder *this, NSString *a2, NSString *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = v11;
  v7 = [(NSString *)v11 UTF8String];
  HDSQLiteStatementBinder::_recordBoundProperty(this, v7);
  v8 = *this;
  if (v5)
  {
    v9 = HDSQLiteStatementBinder::indexForProperty(this, v7);
    sqlite3_bind_text(v8, v9, [(NSString *)v5 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    v10 = HDSQLiteStatementBinder::indexForProperty(this, v7);
    sqlite3_bind_null(v8, v10);
  }
}

void HDSQLiteStatementBinder::bindData(HDSQLiteStatementBinder *this, NSString *a2, NSData *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = v11;
  v7 = [(NSString *)v11 UTF8String];
  HDSQLiteStatementBinder::_recordBoundProperty(this, v7);
  v8 = *this;
  if (v5)
  {
    v9 = HDSQLiteStatementBinder::indexForProperty(this, v7);
    sqlite3_bind_blob64(v8, v9, [(NSData *)v5 bytes], [(NSData *)v5 length], 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    v10 = HDSQLiteStatementBinder::indexForProperty(this, v7);
    sqlite3_bind_null(v8, v10);
  }
}

void HDSQLiteStatementBinder::bindUUID(HDSQLiteStatementBinder *this, NSString *a2, NSUUID *a3)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [(NSString *)v5 UTF8String];
  HDSQLiteStatementBinder::_recordBoundProperty(this, v7);
  if (v6)
  {
    v13[0] = 0;
    v13[1] = 0;
    [(NSUUID *)v6 getUUIDBytes:v13];
    v8 = *this;
    v9 = HDSQLiteStatementBinder::indexForProperty(this, v7);
    sqlite3_bind_blob(v8, v9, v13, 16, 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    v10 = *this;
    v11 = HDSQLiteStatementBinder::indexForProperty(this, v7);
    sqlite3_bind_null(v10, v11);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void HDSQLiteStatementBinder::bindDate(HDSQLiteStatementBinder *this, NSString *a2, NSDate *a3)
{
  v12 = a2;
  v5 = a3;
  v6 = v12;
  v7 = [(NSString *)v12 UTF8String];
  HDSQLiteStatementBinder::_recordBoundProperty(this, v7);
  v8 = *this;
  if (v5)
  {
    v9 = HDSQLiteStatementBinder::indexForProperty(this, v7);
    [(NSDate *)v5 timeIntervalSinceReferenceDate];
    sqlite3_bind_double(v8, v9, v10);
  }

  else
  {
    v11 = HDSQLiteStatementBinder::indexForProperty(this, v7);
    sqlite3_bind_null(v8, v11);
  }
}

void HDSQLiteStatementBinder::bindNumber(HDSQLiteStatementBinder *this, NSString *a2, NSNumber *a3)
{
  v17 = a2;
  v5 = a3;
  v6 = v17;
  v7 = [(NSString *)v17 UTF8String];
  HDSQLiteStatementBinder::_recordBoundProperty(this, v7);
  if (v5)
  {
    v8 = [(NSNumber *)v5 objCType];
    v9 = *v8;
    if ((v9 == 102 || v9 == 100) && !v8[1])
    {
      v14 = *this;
      v15 = HDSQLiteStatementBinder::indexForProperty(this, v7);
      [(NSNumber *)v5 doubleValue];
      sqlite3_bind_double(v14, v15, v16);
    }

    else
    {
      v10 = *this;
      v11 = HDSQLiteStatementBinder::indexForProperty(this, v7);
      sqlite3_bind_int64(v10, v11, [(NSNumber *)v5 longLongValue]);
    }
  }

  else
  {
    v12 = *this;
    v13 = HDSQLiteStatementBinder::indexForProperty(this, v7);
    sqlite3_bind_null(v12, v13);
  }
}

void HDSQLiteStatementBinder::bind(HDSQLiteStatementBinder *this, NSString *a2, objc_object *a3)
{
  v31[2] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [(NSString *)v5 UTF8String];
  HDSQLiteStatementBinder::_recordBoundProperty(this, v7);
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = *this;
      v12 = HDSQLiteStatementBinder::indexForProperty(this, v7);
      v13 = [(objc_object *)v6 UTF8String];
      if (v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = "";
      }

      sqlite3_bind_text(v11, v12, v14, -1, 0xFFFFFFFFFFFFFFFFLL);
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = *this;
        v16 = HDSQLiteStatementBinder::indexForProperty(this, v7);
        [(objc_object *)v6 timeIntervalSinceReferenceDate];
        sqlite3_bind_double(v15, v16, v17);
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v18 = *this;
          v19 = HDSQLiteStatementBinder::indexForProperty(this, v7);
          sqlite3_bind_blob(v18, v19, [(objc_object *)v6 bytes], [(objc_object *)v6 length], 0xFFFFFFFFFFFFFFFFLL);
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v31[0] = 0;
            v31[1] = 0;
            [(objc_object *)v6 getUUIDBytes:v31];
            v20 = *this;
            v21 = HDSQLiteStatementBinder::indexForProperty(this, v7);
            sqlite3_bind_blob(v20, v21, v31, 16, 0xFFFFFFFFFFFFFFFFLL);
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v29 = [MEMORY[0x277CCA890] currentHandler];
              v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void HDSQLiteStatementBinder::bind(NSString * _Nonnull __strong, id  _Nullable __strong)"}];
              [v29 handleFailureInFunction:v30 file:@"HDSQLiteStatementBinder_Internal.h" lineNumber:140 description:&stru_28637B800];
            }

            v22 = [(objc_object *)v6 objCType];
            v23 = *v22;
            if ((v23 == 102 || v23 == 100) && !v22[1])
            {
              v26 = *this;
              v27 = HDSQLiteStatementBinder::indexForProperty(this, v7);
              [(objc_object *)v6 doubleValue];
              sqlite3_bind_double(v26, v27, v28);
            }

            else
            {
              v24 = *this;
              v25 = HDSQLiteStatementBinder::indexForProperty(this, v7);
              sqlite3_bind_int64(v24, v25, [(objc_object *)v6 longLongValue]);
            }
          }
        }
      }
    }
  }

  else
  {
    v8 = *this;
    v9 = HDSQLiteStatementBinder::indexForProperty(this, v7);
    sqlite3_bind_null(v8, v9);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void HDSQLiteBindSecureCodingObjectToProperty(HDSQLiteStatementBinder *a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (v5)
  {
    v6 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v5 requiringSecureCoding:1 error:0];
    HDSQLiteStatementBinder::bindData(a1, v7, v6);
  }

  else
  {
    HDSQLiteStatementBinder::bindNull(a1, v7);
  }
}

uint64_t sub_2515A44A4()
{
  v1 = OBJC_IVAR____TtC22HealthDaemonFoundationP33_640F4B206D084A15AE8A13EC231BB2EA11LoggerClass_logger;
  v2 = sub_2515BB87C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t HDRepeatingBackgroundTask.identifier.getter()
{
  v1 = *(v0 + OBJC_IVAR___HDRepeatingBackgroundTask_identifier);
  v2 = *(v0 + OBJC_IVAR___HDRepeatingBackgroundTask_identifier + 8);

  return v1;
}

double HDRepeatingBackgroundTask.minimumRetryInterval.getter()
{
  v1 = OBJC_IVAR___HDRepeatingBackgroundTask_minimumRetryInterval;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t HDRepeatingBackgroundTask.minimumRetryInterval.setter(double a1)
{
  v3 = OBJC_IVAR___HDRepeatingBackgroundTask_minimumRetryInterval;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_2515A47B4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 minimumRetryInterval];
  *a2 = v4;
  return result;
}

uint64_t HDRepeatingBackgroundTask.errorCount.getter()
{
  v1 = (v0 + OBJC_IVAR___HDRepeatingBackgroundTask_state);
  os_unfair_lock_lock((v0 + OBJC_IVAR___HDRepeatingBackgroundTask_state));
  os_unfair_lock_opaque = v1[6]._os_unfair_lock_opaque;
  os_unfair_lock_unlock(v1);
  return os_unfair_lock_opaque;
}

void sub_2515A4968(uint64_t a1, void *a2, void *aBlock)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = _Block_copy(aBlock);
  *(swift_allocObject() + 16) = v6;

  v7 = a2;
  v5();
}

uint64_t sub_2515A4A9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[4] = a2;
  v9[5] = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_2515AAAB4;
  v9[3] = &block_descriptor_24;
  v6 = _Block_copy(v9);
  v7 = *(a4 + 16);

  v7(a4, a1, v6);
  _Block_release(v6);
}

uint64_t sub_2515A4CA0()
{
  v1 = *v0;
  sub_2515BBAAC();
  MEMORY[0x253079D70](v1);
  return sub_2515BBACC();
}

uint64_t sub_2515A4D14()
{
  v1 = *v0;
  sub_2515BBAAC();
  MEMORY[0x253079D70](v1);
  return sub_2515BBACC();
}

unint64_t sub_2515A4D58@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2515A8448(*a1);
  *a2 = result;
  return result;
}

id HDRepeatingBackgroundTask.init(name:loggingCategory:scheduler:handler:condition:)(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v13 = sub_2515BB8DC();

  v17[4] = a5;
  v17[5] = a6;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = sub_2515A4968;
  v17[3] = &block_descriptor;
  v14 = _Block_copy(v17);
  v15 = [v12 initWithName:v13 loggingCategory:a3 scheduler:a4 handler:v14 condition:a7];
  swift_unknownObjectRelease();

  _Block_release(v14);

  return v15;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

char *HDRepeatingBackgroundTask.init(name:loggingCategory:scheduler:handler:condition:)(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v61 = a7;
  v55 = a5;
  v14 = sub_2515BB87C();
  v59 = *(v14 - 8);
  v60 = v14;
  v15 = *(v59 + 64);
  MEMORY[0x28223BE20]();
  v58 = v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2515BB97C();
  v53 = *(v17 - 8);
  v54 = v17;
  v18 = *(v53 + 64);
  MEMORY[0x28223BE20]();
  v52 = v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(*(sub_2515BB96C() - 8) + 64);
  MEMORY[0x28223BE20]();
  v21 = *(*(sub_2515BB8BC() - 8) + 64);
  MEMORY[0x28223BE20]();
  *&v8[OBJC_IVAR___HDRepeatingBackgroundTask__currentTask] = 0;
  *&v8[OBJC_IVAR___HDRepeatingBackgroundTask_minimumRetryInterval] = 0;
  v8[OBJC_IVAR___HDRepeatingBackgroundTask__shouldDefer] = 0;
  v22 = OBJC_IVAR___HDRepeatingBackgroundTask_condition;
  *&v8[OBJC_IVAR___HDRepeatingBackgroundTask_condition] = 0;
  v23 = &v8[OBJC_IVAR___HDRepeatingBackgroundTask_identifier];
  v51 = a1;
  *v23 = a1;
  v23[1] = a2;
  *&v8[OBJC_IVAR___HDRepeatingBackgroundTask_loggingCategory] = a3;
  v57 = a3;
  if (a4)
  {

    v24 = a3;
    v25 = a4;
  }

  else
  {
    v26 = a6;
    v27 = objc_opt_self();

    v28 = a3;
    v29 = v27;
    a6 = v26;
    v25 = [v29 sharedScheduler];
  }

  *&v8[OBJC_IVAR___HDRepeatingBackgroundTask_scheduler] = v25;
  v30 = &v8[OBJC_IVAR___HDRepeatingBackgroundTask_handler];
  *v30 = v55;
  v30[1] = a6;
  v56 = a6;
  v31 = *&v8[v22];
  *&v8[v22] = v61;
  v55 = a4;

  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v50[1] = sub_2515A8688(0, &qword_280C1B160, 0x277D85C78);
  aBlock = 0;
  v63 = 0xE000000000000000;
  sub_2515BB9EC();

  aBlock = 0xD00000000000002ALL;
  v63 = 0x80000002515C4BD0;
  MEMORY[0x253079BB0](v51, a2);

  MEMORY[0x253079BB0](0x65756575712ELL, 0xE600000000000000);
  sub_2515BB8AC();
  aBlock = MEMORY[0x277D84F90];
  v32 = MEMORY[0x277D85230];
  sub_2515A835C(&qword_280C1B168, MEMORY[0x277D85230]);
  sub_2515A83A4(0, &qword_280C1B178, v32);
  sub_2515A83F8(&qword_280C1B170, &qword_280C1B178, v32);
  sub_2515BB9CC();
  (*(v53 + 104))(v52, *MEMORY[0x277D85260], v54);
  *&v8[OBJC_IVAR___HDRepeatingBackgroundTask_dispatchQueue] = sub_2515BB99C();
  v33 = v57;
  v34 = v58;
  sub_2515BB88C();
  v35 = type metadata accessor for LoggerClass();
  v36 = *(v35 + 48);
  v37 = *(v35 + 52);
  v38 = swift_allocObject();
  (*(v59 + 32))(v38 + OBJC_IVAR____TtC22HealthDaemonFoundationP33_640F4B206D084A15AE8A13EC231BB2EA11LoggerClass_logger, v34, v60);
  *&v8[OBJC_IVAR___HDRepeatingBackgroundTask__logger] = v38;
  v39 = &v8[OBJC_IVAR___HDRepeatingBackgroundTask_state];
  *v39 = 0;
  *(v39 + 1) = 0;
  *(v39 + 2) = MEMORY[0x277D84F90];
  *(v39 + 6) = 0;
  v68.receiver = v8;
  v68.super_class = HDRepeatingBackgroundTask;
  v40 = objc_msgSendSuper2(&v68, sel_init);
  v41 = *&v40[OBJC_IVAR___HDRepeatingBackgroundTask_scheduler];
  v42 = *&v40[OBJC_IVAR___HDRepeatingBackgroundTask_identifier];
  v43 = *&v40[OBJC_IVAR___HDRepeatingBackgroundTask_identifier + 8];
  v44 = v40;
  v45 = v41;

  v46 = sub_2515BB8DC();

  v47 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v66 = sub_2515A5660;
  v67 = v47;
  aBlock = MEMORY[0x277D85DD0];
  v63 = 1107296256;
  v64 = sub_2515A5914;
  v65 = &block_descriptor_3;
  v48 = _Block_copy(&aBlock);

  [v45 registerForTaskWithIdentifier:v46 usingQueue:0 launchHandler:v48];
  _Block_release(v48);

  swift_unknownObjectRelease();

  return v44;
}

uint64_t type metadata accessor for LoggerClass()
{
  result = qword_280C1B1A8;
  if (!qword_280C1B1A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2515A553C(void *a1)
{
  v11[4] = *MEMORY[0x277D85DE8];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_2515A5668(a1);

LABEL_8:
    v10 = *MEMORY[0x277D85DE8];
    return;
  }

  v11[0] = 0;
  v4 = [a1 setTaskExpiredWithRetryAfter:v11 error:0.0];
  v5 = v11[0];
  if (!v4)
  {
    v8 = v11[0];
    v9 = sub_2515BB85C();

    swift_willThrow();
    goto LABEL_8;
  }

  v6 = *MEMORY[0x277D85DE8];

  v7 = v5;
}

void sub_2515A5668(void *a1)
{
  [v1 set:0 shouldDefer:?];
  [v1 set:a1 currentTask:?];
  if (![v1 condition] || (swift_unknownObjectRelease(), (v3 = objc_msgSend(v1, sel_condition)) != 0) && (v4 = objc_msgSend(v3, sel_isConditionMet), swift_unknownObjectRelease(), v4))
  {
    v5 = &v1[OBJC_IVAR___HDRepeatingBackgroundTask_state];
    os_unfair_lock_lock(&v1[OBJC_IVAR___HDRepeatingBackgroundTask_state]);
    LOBYTE(v5[2]._os_unfair_lock_opaque) = 3;
    os_unfair_lock_unlock(v5);

    sub_2515A6B8C();
  }

  else
  {
    v6 = &v1[OBJC_IVAR___HDRepeatingBackgroundTask_state];
    os_unfair_lock_lock(&v1[OBJC_IVAR___HDRepeatingBackgroundTask_state]);
    LOBYTE(v6[2]._os_unfair_lock_opaque) = 1;
    os_unfair_lock_unlock(v6);
    v7 = swift_allocObject();
    *(v7 + 16) = v1;
    v18 = sub_2515A8324;
    v19 = v7;
    v14 = MEMORY[0x277D85DD0];
    v15 = 1107296256;
    v16 = sub_2515A743C;
    v17 = &block_descriptor_48;
    v8 = _Block_copy(&v14);
    v9 = v1;

    [a1 setExpirationHandler_];
    _Block_release(v8);
    v10 = [v9 condition];
    if (v10)
    {
      v11 = v10;
      v12 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v18 = sub_2515A832C;
      v19 = v12;
      v14 = MEMORY[0x277D85DD0];
      v15 = 1107296256;
      v16 = sub_2515A77B0;
      v17 = &block_descriptor_52;
      v13 = _Block_copy(&v14);

      [v11 setReadyCallback_];
      swift_unknownObjectRelease();
      _Block_release(v13);
    }
  }
}

void sub_2515A5914(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void static HDRepeatingBackgroundTask.registerDisabledTask(name:scheduler:loggingCategory:)(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = sub_2515BB8DC();
  v9 = swift_allocObject();
  v9[2] = a4;
  v9[3] = a1;
  v9[4] = a2;
  v12[4] = sub_2515A5D14;
  v12[5] = v9;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_2515A5914;
  v12[3] = &block_descriptor_9;
  v10 = _Block_copy(v12);
  v11 = a4;

  [a3 registerForTaskWithIdentifier:v8 usingQueue:0 launchHandler:v10];
  _Block_release(v10);
}

id sub_2515A5B50(void *a1, void *a2, uint64_t a3, unint64_t a4)
{
  v8 = sub_2515BB87C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20]();
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a2;
  sub_2515BB88C();

  v14 = sub_2515BB86C();
  v15 = sub_2515BB95C();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v20 = v17;
    *v16 = 136446210;
    *(v16 + 4) = sub_2515AED94(a3, a4, &v20);
    _os_log_impl(&dword_25156C000, v14, v15, "[%{public}s] ignoring launch of disabled task", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x25307AFB0](v17, -1, -1);
    MEMORY[0x25307AFB0](v16, -1, -1);
  }

  (*(v9 + 8))(v12, v8);
  return [a1 setTaskCompleted];
}

id HDRepeatingBackgroundTask.submitRequest(_:)(void *a1)
{
  v3 = *MEMORY[0x277D85DE8];
  result = sub_2515A6014(a1, &selRef_submitTaskRequest_error_);
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t HDRepeatingBackgroundTask.getRequest()()
{
  v1 = [v0 scheduler];
  v2 = [v0 identifier];
  if (!v2)
  {
    sub_2515BB8EC();
    v2 = sub_2515BB8DC();
  }

  v3 = [v1 taskRequestForIdentifier_];

  if (v3)
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      return result;
    }
  }

  return 0;
}

id HDRepeatingBackgroundTask.updateRequest(_:)(void *a1)
{
  v3 = *MEMORY[0x277D85DE8];
  result = sub_2515A6014(a1, &selRef_updateTaskRequest_error_);
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

id sub_2515A6014(void *a1, SEL *a2)
{
  v4 = v2;
  v22[1] = *MEMORY[0x277D85DE8];
  v6 = [a1 identifier];
  v7 = sub_2515BB8EC();
  v9 = v8;

  v10 = [v4 identifier];
  v11 = sub_2515BB8EC();
  v13 = v12;

  if (v7 == v11 && v9 == v13)
  {
  }

  else
  {
    v15 = sub_2515BBA7C();

    if ((v15 & 1) == 0)
    {
      sub_2515A80F4();
      swift_allocError();
      *v16 = 0;
LABEL_11:
      result = swift_willThrow();
      goto LABEL_12;
    }
  }

  v17 = [v4 scheduler];
  v22[0] = 0;
  v18 = [v17 *a2];

  if (!v18)
  {
    v20 = v22[0];
    sub_2515BB85C();

    goto LABEL_11;
  }

  result = v22[0];
LABEL_12:
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2515A61E0(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(id))
{
  v7 = a3;
  v8 = a1;
  a5(v7);

  return 1;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> HDRepeatingBackgroundTask.cancelRequest()()
{
  v1 = v0;
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = [v0 scheduler];
  v3 = [v1 identifier];
  if (!v3)
  {
    sub_2515BB8EC();
    v3 = sub_2515BB8DC();
  }

  v8[0] = 0;
  v4 = [v2 cancelTaskRequestWithIdentifier:v3 error:v8];

  if (v4)
  {
    v5 = v8[0];
  }

  else
  {
    v6 = v8[0];
    sub_2515BB85C();

    swift_willThrow();
  }

  v7 = *MEMORY[0x277D85DE8];
}

void HDRepeatingBackgroundTask.addExpirationHandler(_:)(void (*a1)(void), uint64_t a2)
{
  v5 = &v2[OBJC_IVAR___HDRepeatingBackgroundTask_state];
  os_unfair_lock_lock(&v2[OBJC_IVAR___HDRepeatingBackgroundTask_state]);
  sub_2515A67E8(&v5[2], v2, a1, a2);

  os_unfair_lock_unlock(v5);
}

void sub_2515A6480(unsigned __int8 *a1, void *a2, void (**a3)(void))
{
  v7 = sub_2515BB87C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20]();
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  v13 = *a1;
  _Block_copy(a3);
  if (v13 == 3)
  {
    if ([a2 _shouldDefer])
    {
      a3[2](a3);
    }

    v14 = swift_allocObject();
    *(v14 + 16) = sub_2515A829C;
    *(v14 + 24) = v12;
    v15 = *(a1 + 1);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = sub_2515AEC3C(0, v15[2] + 1, 1, v15);
    }

    v17 = v15[2];
    v16 = v15[3];
    if (v17 >= v16 >> 1)
    {
      v15 = sub_2515AEC3C((v16 > 1), v17 + 1, 1, v15);
    }

    v15[2] = v17 + 1;
    v18 = &v15[2 * v17];
    v18[4] = sub_2515A82A4;
    v18[5] = v14;

    _Block_release(a3);
    *(a1 + 1) = v15;
  }

  else
  {
    v19 = [a2 loggingCategory];
    sub_2515BB88C();
    v20 = a2;
    v21 = sub_2515BB86C();
    v22 = sub_2515BB94C();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v36 = v3;
      v24 = v23;
      v34 = swift_slowAlloc();
      v37 = v34;
      *v24 = 136446210;
      v25 = [v20 identifier];
      v26 = sub_2515BB8EC();
      v35 = v7;
      v27 = v26;
      HIDWORD(v33) = v22;
      v28 = v8;
      v30 = v29;

      v31 = sub_2515AED94(v27, v30, &v37);

      *(v24 + 4) = v31;
      _os_log_impl(&dword_25156C000, v21, BYTE4(v33), "[%{public}s] attempted to register expiration handler when task is not running; ignoring", v24, 0xCu);
      v32 = v34;
      __swift_destroy_boxed_opaque_existential_0(v34);
      MEMORY[0x25307AFB0](v32, -1, -1);
      MEMORY[0x25307AFB0](v24, -1, -1);

      (*(v28 + 8))(v11, v35);
    }

    else
    {

      (*(v8 + 8))(v11, v7);
    }

    _Block_release(a3);
  }
}

uint64_t sub_2515A67E8(uint64_t a1, void *a2, void (*a3)(void), uint64_t a4)
{
  v8 = sub_2515BB87C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20]();
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 3)
  {
    if ([a2 _shouldDefer])
    {
      a3();
    }

    v13 = swift_allocObject();
    *(v13 + 16) = a3;
    *(v13 + 24) = a4;
    v14 = *(a1 + 8);

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2515AEC3C(0, v14[2] + 1, 1, v14);
      v14 = result;
    }

    v17 = v14[2];
    v16 = v14[3];
    if (v17 >= v16 >> 1)
    {
      result = sub_2515AEC3C((v16 > 1), v17 + 1, 1, v14);
      v14 = result;
    }

    v14[2] = v17 + 1;
    v18 = &v14[2 * v17];
    v18[4] = sub_2515A89D4;
    v18[5] = v13;
    *(a1 + 8) = v14;
  }

  else
  {
    v19 = [a2 loggingCategory];
    sub_2515BB88C();
    v20 = a2;
    v21 = sub_2515BB86C();
    v22 = sub_2515BB94C();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v32 = v31;
      *v23 = 136446210;
      v24 = [v20 identifier];
      v25 = sub_2515BB8EC();
      v30 = v8;
      v27 = v26;

      v28 = sub_2515AED94(v25, v27, &v32);

      *(v23 + 4) = v28;
      _os_log_impl(&dword_25156C000, v21, v22, "[%{public}s] attempted to register expiration handler when task is not running; ignoring", v23, 0xCu);
      v29 = v31;
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x25307AFB0](v29, -1, -1);
      MEMORY[0x25307AFB0](v23, -1, -1);

      return (*(v9 + 8))(v12, v30);
    }

    else
    {

      return (*(v9 + 8))(v12, v8);
    }
  }

  return result;
}

uint64_t sub_2515A6B8C()
{
  v1 = v0;
  v2 = sub_2515BB87C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20]();
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v1 _currentTask];
  v8 = &off_2515C0000;
  if (v7)
  {
    v9 = v7;
    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v36 = sub_2515A86D0;
    v37 = v10;
    aBlock = MEMORY[0x277D85DD0];
    v33 = 1107296256;
    v34 = sub_2515A743C;
    v35 = &block_descriptor_62;
    v11 = _Block_copy(&aBlock);

    [v9 setExpirationHandler_];
    _Block_release(v11);
  }

  (*(v3 + 16))(v6, *&v1[OBJC_IVAR___HDRepeatingBackgroundTask__logger] + OBJC_IVAR____TtC22HealthDaemonFoundationP33_640F4B206D084A15AE8A13EC231BB2EA11LoggerClass_logger, v2);
  v12 = v1;
  v13 = sub_2515BB86C();
  v14 = sub_2515BB93C();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v31 = v2;
    aBlock = v16;
    v17 = v16;
    *v15 = 136446210;
    v18 = [v12 identifier];
    v19 = sub_2515BB8EC();
    v21 = v20;

    v22 = sub_2515AED94(v19, v21, &aBlock);

    *(v15 + 4) = v22;
    _os_log_impl(&dword_25156C000, v13, v14, "[%{public}s] starting launchHandler", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x25307AFB0](v17, -1, -1);
    v23 = v15;
    v8 = &off_2515C0000;
    MEMORY[0x25307AFB0](v23, -1, -1);

    (*(v3 + 8))(v6, v31);
  }

  else
  {

    (*(v3 + 8))(v6, v2);
  }

  v24 = [v12 handler];
  v25 = swift_allocObject();
  *(v25 + 16) = v12;
  v36 = sub_2515A86D8;
  v37 = v25;
  aBlock = MEMORY[0x277D85DD0];
  v33 = *(v8 + 315);
  v34 = sub_2515AAAB4;
  v35 = &block_descriptor_68;
  v26 = _Block_copy(&aBlock);
  v27 = v24[2];
  v28 = v12;

  v27(v24, v28, v26);
  _Block_release(v24);

  _Block_release(v26);
}

uint64_t sub_2515A6F58(char *a1)
{
  v2 = sub_2515BB87C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20]();
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2515BB89C();
  v36 = *(v7 - 8);
  v8 = *(v36 + 64);
  MEMORY[0x28223BE20]();
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2515BB8BC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20]();
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = &a1[OBJC_IVAR___HDRepeatingBackgroundTask_state];
  os_unfair_lock_lock(&a1[OBJC_IVAR___HDRepeatingBackgroundTask_state]);
  if (LOBYTE(v16[2]._os_unfair_lock_opaque) == 1)
  {
    LOBYTE(v16[2]._os_unfair_lock_opaque) = 2;
    os_unfair_lock_unlock(v16);
    v35 = [a1 dispatchQueue];
    v17 = swift_allocObject();
    *(v17 + 16) = a1;
    aBlock[4] = sub_2515A8334;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2515A743C;
    aBlock[3] = &block_descriptor_58;
    v18 = _Block_copy(aBlock);
    v19 = a1;
    sub_2515BB8AC();
    v37 = MEMORY[0x277D84F90];
    v20 = MEMORY[0x277D85198];
    sub_2515A835C(&qword_27F446100, MEMORY[0x277D85198]);
    sub_2515A83A4(0, &qword_27F446108, v20);
    sub_2515A83F8(&qword_27F446110, &qword_27F446108, v20);
    sub_2515BB9CC();
    v21 = v35;
    MEMORY[0x253079C40](0, v15, v10, v18);
    _Block_release(v18);

    (*(v36 + 8))(v10, v7);
    (*(v12 + 8))(v15, v11);
  }

  else
  {
    os_unfair_lock_unlock(v16);
    (*(v3 + 16))(v6, *&a1[OBJC_IVAR___HDRepeatingBackgroundTask__logger] + OBJC_IVAR____TtC22HealthDaemonFoundationP33_640F4B206D084A15AE8A13EC231BB2EA11LoggerClass_logger, v2);
    v23 = a1;
    v24 = sub_2515BB86C();
    v25 = sub_2515BB94C();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      aBlock[0] = v27;
      *v26 = 136446210;
      v28 = [v23 identifier];
      v29 = sub_2515BB8EC();
      v30 = v2;
      v32 = v31;

      v33 = sub_2515AED94(v29, v32, aBlock);

      *(v26 + 4) = v33;
      _os_log_impl(&dword_25156C000, v24, v25, "[%{public}s] received an expiration request in the internal handler after task was running.", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x25307AFB0](v27, -1, -1);
      MEMORY[0x25307AFB0](v26, -1, -1);

      return (*(v3 + 8))(v6, v30);
    }

    else
    {

      return (*(v3 + 8))(v6, v2);
    }
  }
}

uint64_t sub_2515A743C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void sub_2515A7480(char a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_2515A74DC(a1 & 1);
  }
}

void sub_2515A74DC(char a1)
{
  v3 = sub_2515BB87C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20]();
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v8 = &v1[OBJC_IVAR___HDRepeatingBackgroundTask_state];
    os_unfair_lock_lock(&v1[OBJC_IVAR___HDRepeatingBackgroundTask_state]);
    if (LOBYTE(v8[2]._os_unfair_lock_opaque) == 1)
    {
      LOBYTE(v8[2]._os_unfair_lock_opaque) = 3;
      os_unfair_lock_unlock(v8);
      v9 = [v1 _currentTask];
      if (v9)
      {
        v10 = v9;
        [v9 setExpirationHandler_];
      }

      sub_2515A6B8C();
    }

    else
    {

      os_unfair_lock_unlock(v8);
    }
  }

  else
  {
    (*(v4 + 16))(v7, *&v1[OBJC_IVAR___HDRepeatingBackgroundTask__logger] + OBJC_IVAR____TtC22HealthDaemonFoundationP33_640F4B206D084A15AE8A13EC231BB2EA11LoggerClass_logger, v3);
    v11 = v1;
    v12 = sub_2515BB86C();
    v13 = sub_2515BB93C();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v22 = v15;
      *v14 = 136446210;
      v16 = [v11 identifier];
      v17 = sub_2515BB8EC();
      v19 = v18;

      v20 = sub_2515AED94(v17, v19, &v22);

      *(v14 + 4) = v20;
      _os_log_impl(&dword_25156C000, v12, v13, "[%{public}s] condition callback received when not ready", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x25307AFB0](v15, -1, -1);
      MEMORY[0x25307AFB0](v14, -1, -1);
    }

    (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_2515A77B0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

void sub_2515A7804()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_2515A7858();
  }
}

void sub_2515A7858()
{
  [v0 set:1 shouldDefer:?];
  v1 = &v0[OBJC_IVAR___HDRepeatingBackgroundTask_state];
  os_unfair_lock_lock(&v0[OBJC_IVAR___HDRepeatingBackgroundTask_state]);
  v2 = *(v1 + 2);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = (v2 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      v6(v7);

      v4 += 2;
      --v3;
    }

    while (v3);
    v8 = *(v1 + 2);
  }

  *(v1 + 2) = MEMORY[0x277D84F90];

  os_unfair_lock_unlock(v1);
}

void sub_2515A790C(void *a1, double a2)
{
  v35[1] = *MEMORY[0x277D85DE8];
  v5 = sub_2515BB87C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20]();
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
LABEL_9:
    v31 = *MEMORY[0x277D85DE8];
    return;
  }

  v35[0] = 0;
  v10 = [a1 setTaskExpiredWithRetryAfter:v35 error:a2];
  v11 = v35[0];
  if (!v10)
  {
    v34 = v35[0];
    v14 = v35[0];
    v15 = sub_2515BB85C();

    swift_willThrow();
    (*(v6 + 16))(v9, *&v2[OBJC_IVAR___HDRepeatingBackgroundTask__logger] + OBJC_IVAR____TtC22HealthDaemonFoundationP33_640F4B206D084A15AE8A13EC231BB2EA11LoggerClass_logger, v5);
    v16 = v2;
    v17 = v15;
    v18 = sub_2515BB86C();
    v19 = sub_2515BB94C();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v35[0] = v34;
      *v20 = 136446466;
      v21 = [v16 identifier];
      v22 = sub_2515BB8EC();
      HIDWORD(v32) = v19;
      v23 = v22;
      v25 = v24;

      v26 = sub_2515AED94(v23, v25, v35);

      *(v20 + 4) = v26;
      *(v20 + 12) = 2112;
      v27 = v15;
      v28 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 14) = v28;
      v29 = v33;
      *v33 = v28;
      _os_log_impl(&dword_25156C000, v18, BYTE4(v32), "[%{public}s] failed to set task expired: %@", v20, 0x16u);
      sub_2515A85C4(v29);
      MEMORY[0x25307AFB0](v29, -1, -1);
      v30 = v34;
      __swift_destroy_boxed_opaque_existential_0(v34);
      MEMORY[0x25307AFB0](v30, -1, -1);
      MEMORY[0x25307AFB0](v20, -1, -1);
    }

    (*(v6 + 8))(v9, v5);
    [a1 setTaskCompleted];

    goto LABEL_9;
  }

  v12 = *MEMORY[0x277D85DE8];

  v13 = v11;
}

id sub_2515A7C68()
{
  v1 = sub_2515BB87C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20]();
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = &v0[OBJC_IVAR___HDRepeatingBackgroundTask_identifier];
  v7 = *&v0[OBJC_IVAR___HDRepeatingBackgroundTask_identifier];
  v8 = *&v0[OBJC_IVAR___HDRepeatingBackgroundTask_identifier + 8];
  v9 = *&v0[OBJC_IVAR___HDRepeatingBackgroundTask_scheduler];

  v10 = sub_2515BB8DC();

  LOBYTE(v8) = [v9 deregisterTaskWithIdentifier_];

  if ((v8 & 1) == 0 && (HDIsUnitTesting() & 1) == 0)
  {
    (*(v2 + 16))(v5, *&v0[OBJC_IVAR___HDRepeatingBackgroundTask__logger] + OBJC_IVAR____TtC22HealthDaemonFoundationP33_640F4B206D084A15AE8A13EC231BB2EA11LoggerClass_logger, v1);
    v11 = v0;
    v12 = v0;
    v13 = sub_2515BB86C();
    v14 = sub_2515BB94C();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v22 = v16;
      *v15 = 136446210;
      v17 = *v6;
      v18 = v6[1];

      v19 = sub_2515AED94(v17, v18, &v22);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_25156C000, v13, v14, "[%{public}s] failed to deregister task on deinit", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x25307AFB0](v16, -1, -1);
      MEMORY[0x25307AFB0](v15, -1, -1);
    }

    (*(v2 + 8))(v5, v1);
    v0 = v11;
  }

  v23.receiver = v0;
  v23.super_class = HDRepeatingBackgroundTask;
  return objc_msgSendSuper2(&v23, sel_dealloc);
}

id HDRepeatingBackgroundTask.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

id HDRepeatingBackgroundTask.currentTask.getter()
{
  v1 = [v0 _currentTask];

  return v1;
}

void *sub_2515A80D8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

unint64_t sub_2515A80F4()
{
  result = qword_27F446090;
  if (!qword_27F446090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F446090);
  }

  return result;
}

uint64_t sub_2515A815C()
{
  result = sub_2515BB87C();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void type metadata accessor for HDBackgroundTaskResult()
{
  if (!qword_280C1B0B8[0])
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, qword_280C1B0B8);
    }
  }
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t objectdestroy_5Tm()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2515A835C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2515A83A4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2515BB92C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2515A83F8(unint64_t *a1, unint64_t *a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_2515A83A4(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2515A8448(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

void sub_2515A8458(uint64_t a1)
{
  v3 = &v1[OBJC_IVAR___HDRepeatingBackgroundTask_state];
  os_unfair_lock_lock(&v1[OBJC_IVAR___HDRepeatingBackgroundTask_state]);
  LOBYTE(v3[2]._os_unfair_lock_opaque) = 0;
  if (a1)
  {
    if (a1 == 1)
    {
      os_unfair_lock_opaque = v3[6]._os_unfair_lock_opaque;
      v5 = os_unfair_lock_opaque + 1;
      if (os_unfair_lock_opaque == -1)
      {
        __break(1u);
        return;
      }

      v3[6]._os_unfair_lock_opaque = v5;
    }

    else
    {
      v5 = v3[6]._os_unfair_lock_opaque;
    }
  }

  else
  {
    v5 = 0;
    v3[6]._os_unfair_lock_opaque = 0;
  }

  os_unfair_lock_unlock(v3);
  v9 = [v1 _currentTask];
  [v1 set:0 currentTask:?];
  if (a1)
  {
    if (a1 == 2)
    {
      v6 = 0.0;
    }

    else
    {
      v7 = 0.0;
      if (v5 >= 2)
      {
        v8 = exp2(v5 + -2.0) * 300.0;
        if (v8 <= 7200.0)
        {
          v7 = v8;
        }

        else
        {
          v7 = 7200.0;
        }
      }

      [v1 minimumRetryInterval];
      if (v7 > v6)
      {
        v6 = v7;
      }
    }

    sub_2515A790C(v9, v6);
  }

  else
  {
    [v9 setTaskCompleted];
  }

  [v1 setMinimumRetryInterval_];
}

uint64_t sub_2515A85C4(uint64_t a1)
{
  sub_2515A8620();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2515A8620()
{
  if (!qword_27F446118)
  {
    sub_2515A8688(255, &qword_27F446120, 0x277D82BB8);
    v0 = sub_2515BB9AC();
    if (!v1)
    {
      atomic_store(v0, &qword_27F446118);
    }
  }
}

uint64_t sub_2515A8688(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

__n128 __swift_memcpy20_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_2515A8718(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 20))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2515A8760(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 20) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 20) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s10TaskStatusOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s10TaskStatusOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2515A8928()
{
  result = qword_27F446128;
  if (!qword_27F446128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F446128);
  }

  return result;
}

id static HDSQLiteEntity.any(in:predicate:)(uint64_t a1, uint64_t a2)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  v2 = [swift_getObjCClassFromMetadata() anyInDatabase:a1 predicate:a2 error:v6];
  v3 = v6[0];
  if ([v2 persistentID] < 1)
  {
    if (v3)
    {
      swift_willThrow();
    }

    else
    {

      v2 = 0;
    }
  }

  else
  {
  }

  v4 = *MEMORY[0x277D85DE8];
  return v2;
}

id HDUserNotificationSystemApertureContentDefinition.__allocating_init(imageDefinition:preventAutomaticDismissal:)(uint64_t a1, char a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR____TtC22HealthDaemonFoundation49HDUserNotificationSystemApertureContentDefinition_imageDefinition] = a1;
  v5[OBJC_IVAR____TtC22HealthDaemonFoundation49HDUserNotificationSystemApertureContentDefinition_preventAutomaticDismissal] = a2;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_init);
}

id HDUserNotificationSystemApertureContentDefinition.init(imageDefinition:preventAutomaticDismissal:)(uint64_t a1, char a2)
{
  *&v2[OBJC_IVAR____TtC22HealthDaemonFoundation49HDUserNotificationSystemApertureContentDefinition_imageDefinition] = a1;
  v2[OBJC_IVAR____TtC22HealthDaemonFoundation49HDUserNotificationSystemApertureContentDefinition_preventAutomaticDismissal] = a2;
  v4.receiver = v2;
  v4.super_class = type metadata accessor for HDUserNotificationSystemApertureContentDefinition();
  return objc_msgSendSuper2(&v4, sel_init);
}

id sub_2515A8C3C@<X0>(void *a1@<X8>)
{
  a1[3] = type metadata accessor for HDUserNotificationSystemApertureContentDefinition();
  *a1 = v3;

  return v3;
}

uint64_t HDUserNotificationImageDefinition.systemColorName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC22HealthDaemonFoundation33HDUserNotificationImageDefinition_systemColorName);
  v2 = *(v0 + OBJC_IVAR____TtC22HealthDaemonFoundation33HDUserNotificationImageDefinition_systemColorName + 8);

  return v1;
}

id sub_2515A8D64(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  v4 = *v3;
  v5 = v3[1];

  v6 = sub_2515BB8DC();

  return v6;
}

uint64_t HDUserNotificationImageDefinition.systemImageName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC22HealthDaemonFoundation33HDUserNotificationImageDefinition_systemImageName);
  v2 = *(v0 + OBJC_IVAR____TtC22HealthDaemonFoundation33HDUserNotificationImageDefinition_systemImageName + 8);

  return v1;
}

id HDUserNotificationImageDefinition.__allocating_init(systemColorName:systemImageName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = &v9[OBJC_IVAR____TtC22HealthDaemonFoundation33HDUserNotificationImageDefinition_systemColorName];
  *v10 = a1;
  *(v10 + 1) = a2;
  v11 = &v9[OBJC_IVAR____TtC22HealthDaemonFoundation33HDUserNotificationImageDefinition_systemImageName];
  *v11 = a3;
  *(v11 + 1) = a4;
  v13.receiver = v9;
  v13.super_class = v4;
  return objc_msgSendSuper2(&v13, sel_init);
}

id HDUserNotificationImageDefinition.init(systemColorName:systemImageName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = &v4[OBJC_IVAR____TtC22HealthDaemonFoundation33HDUserNotificationImageDefinition_systemColorName];
  *v5 = a1;
  *(v5 + 1) = a2;
  v6 = &v4[OBJC_IVAR____TtC22HealthDaemonFoundation33HDUserNotificationImageDefinition_systemImageName];
  *v6 = a3;
  *(v6 + 1) = a4;
  v8.receiver = v4;
  v8.super_class = type metadata accessor for HDUserNotificationImageDefinition();
  return objc_msgSendSuper2(&v8, sel_init);
}

id sub_2515A8F78@<X0>(void *a1@<X8>)
{
  a1[3] = type metadata accessor for HDUserNotificationImageDefinition();
  *a1 = v3;

  return v3;
}

id HDUserNotificationImageDefinition.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_2515A9070(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_2515A9218()
{
  v2 = *v0;
  sub_2515BBAAC();
  sub_2515BB8CC();
  return sub_2515BBACC();
}

uint64_t sub_2515A927C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2515A9740();

  return MEMORY[0x28211C010](a1, a2, v4);
}

uint64_t sub_2515A92C8()
{
  v2 = *v0;
  sub_2515BBAAC();
  sub_2515BB8CC();
  return sub_2515BBACC();
}

unint64_t sub_2515A9328@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2515A9564(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_2515A935C(uint64_t a1)
{
  v2 = sub_2515A9740();

  return MEMORY[0x28211C020](a1, v2);
}

uint64_t sub_2515A9398(uint64_t a1)
{
  v2 = sub_2515A9740();

  return MEMORY[0x28211C018](a1, v2);
}

uint64_t sub_2515A93F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2515A9740();

  return MEMORY[0x28211C008](a1, a2, v4);
}

unint64_t HDBackgroundTaskResult.description.getter(uint64_t a1)
{
  result = 0xD00000000000001CLL;
  if (a1 == 2)
  {
    return 0xD00000000000001FLL;
  }

  if (a1 != 1)
  {
    if (a1)
    {
      sub_2515BB9EC();

      v3 = sub_2515BBA5C();
      MEMORY[0x253079BB0](v3);

      MEMORY[0x253079BB0](62, 0xE100000000000000);
      return 0xD000000000000022;
    }

    else
    {
      return 0xD00000000000001ELL;
    }
  }

  return result;
}

unint64_t sub_2515A9564(unint64_t result)
{
  if (result > 3)
  {
    return 0;
  }

  return result;
}

unint64_t sub_2515A9578()
{
  result = qword_27F446150;
  if (!qword_27F446150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F446150);
  }

  return result;
}

unint64_t sub_2515A95D0()
{
  result = qword_27F446158;
  if (!qword_27F446158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F446158);
  }

  return result;
}

unint64_t sub_2515A9628()
{
  result = qword_27F446160;
  if (!qword_27F446160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F446160);
  }

  return result;
}

unint64_t sub_2515A9680()
{
  result = qword_27F446168;
  if (!qword_27F446168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F446168);
  }

  return result;
}

unint64_t sub_2515A96D8()
{
  result = qword_27F446170;
  if (!qword_27F446170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F446170);
  }

  return result;
}

unint64_t sub_2515A9740()
{
  result = qword_27F446178;
  if (!qword_27F446178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F446178);
  }

  return result;
}

uint64_t HDOneShotBackgroundTask.identifier.getter()
{
  v1 = *(v0 + OBJC_IVAR___HDOneShotBackgroundTask_identifier);
  v2 = *(v0 + OBJC_IVAR___HDOneShotBackgroundTask_identifier + 8);

  return v1;
}

uint64_t HDOneShotBackgroundTask.rescheduleWhileRunning.getter()
{
  v1 = OBJC_IVAR___HDOneShotBackgroundTask_rescheduleWhileRunning;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t HDOneShotBackgroundTask.rescheduleWhileRunning.setter(char a1)
{
  v3 = OBJC_IVAR___HDOneShotBackgroundTask_rescheduleWhileRunning;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void *HDOneShotBackgroundTask.quota.getter()
{
  v1 = OBJC_IVAR___HDOneShotBackgroundTask_quota;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void HDOneShotBackgroundTask.quota.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___HDOneShotBackgroundTask_quota;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_2515A9C50(uint64_t a1, void *a2, void *aBlock)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = _Block_copy(aBlock);
  *(swift_allocObject() + 16) = v6;

  v7 = a2;
  v5();
}

uint64_t sub_2515A9D84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[4] = a2;
  v9[5] = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_2515AAAB4;
  v9[3] = &block_descriptor_60;
  v6 = _Block_copy(v9);
  v7 = *(a4 + 16);

  v7(a4, a1, v6);
  _Block_release(v6);
}

id HDOneShotBackgroundTask.init(defaultRequest:loggingCategory:scheduler:handler:)(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v14[4] = a4;
  v14[5] = a5;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_2515A9C50;
  v14[3] = &block_descriptor_0;
  v11 = _Block_copy(v14);
  v12 = [v10 initWithDefaultRequest:a1 loggingCategory:a2 scheduler:a3 handler:v11];

  _Block_release(v11);

  return v12;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

char *HDOneShotBackgroundTask.init(defaultRequest:loggingCategory:scheduler:handler:)(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  *&v5[OBJC_IVAR___HDOneShotBackgroundTask__currentTask] = 0;
  v5[OBJC_IVAR___HDOneShotBackgroundTask__shouldDefer] = 0;
  v5[OBJC_IVAR___HDOneShotBackgroundTask_rescheduleWhileRunning] = 0;
  *&v5[OBJC_IVAR___HDOneShotBackgroundTask_quota] = 0;
  *&v5[OBJC_IVAR___HDOneShotBackgroundTask_defaultRequest] = a1;
  v10 = a1;
  v11 = [v10 identifier];
  v12 = sub_2515BB8EC();
  v14 = v13;

  v15 = &v5[OBJC_IVAR___HDOneShotBackgroundTask_identifier];
  *v15 = v12;
  v15[1] = v14;
  if (a3)
  {
    v16 = a3;
  }

  else
  {
    v16 = [objc_opt_self() sharedScheduler];
  }

  *&v5[OBJC_IVAR___HDOneShotBackgroundTask_scheduler] = v16;
  v17 = &v5[OBJC_IVAR___HDOneShotBackgroundTask_handler];
  *v17 = a4;
  v17[1] = a5;
  *&v5[OBJC_IVAR___HDOneShotBackgroundTask_loggingCategory] = a2;
  v18 = &v5[OBJC_IVAR___HDOneShotBackgroundTask_state];
  v19 = MEMORY[0x277D84F90];
  *v18 = 0;
  *(v18 + 1) = 0;
  *(v18 + 2) = v19;
  *(v18 + 3) = v19;
  *(v18 + 4) = 0;
  *(v18 + 5) = v19;
  v20 = a3;

  v21 = a2;
  v33.receiver = v5;
  v33.super_class = HDOneShotBackgroundTask;
  v22 = objc_msgSendSuper2(&v33, sel_init);
  v23 = *&v22[OBJC_IVAR___HDOneShotBackgroundTask_scheduler];
  v24 = *&v22[OBJC_IVAR___HDOneShotBackgroundTask_identifier];
  v25 = *&v22[OBJC_IVAR___HDOneShotBackgroundTask_identifier + 8];
  v26 = v22;
  v27 = v23;

  v28 = sub_2515BB8DC();

  v29 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v32[4] = sub_2515AA368;
  v32[5] = v29;
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 1107296256;
  v32[2] = sub_2515A5914;
  v32[3] = &block_descriptor_3_0;
  v30 = _Block_copy(v32);

  [v27 registerForTaskWithIdentifier:v28 usingQueue:0 launchHandler:v30];
  _Block_release(v30);

  return v26;
}

void sub_2515AA244(void *a1)
{
  v11[4] = *MEMORY[0x277D85DE8];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_2515AA370(a1);

LABEL_8:
    v10 = *MEMORY[0x277D85DE8];
    return;
  }

  v11[0] = 0;
  v4 = [a1 setTaskExpiredWithRetryAfter:v11 error:0.0];
  v5 = v11[0];
  if (!v4)
  {
    v8 = v11[0];
    v9 = sub_2515BB85C();

    swift_willThrow();
    goto LABEL_8;
  }

  v6 = *MEMORY[0x277D85DE8];

  v7 = v5;
}

id sub_2515AA370(void *a1)
{
  v2 = v1;
  v4 = sub_2515BB87C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = &aBlock[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = &v2[OBJC_IVAR___HDOneShotBackgroundTask_state];
  os_unfair_lock_lock(&v2[OBJC_IVAR___HDOneShotBackgroundTask_state]);
  sub_2515AD6D8(&v9[2], v2, aBlock);
  os_unfair_lock_unlock(v9);
  LODWORD(v9) = LOBYTE(aBlock[0]);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_2515AF66C;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2515A743C;
  aBlock[3] = &block_descriptor_91;
  v11 = _Block_copy(aBlock);

  [a1 setExpirationHandler_];
  _Block_release(v11);
  result = [v2 set:a1 currentTask:?];
  if (v9 == 1)
  {
    v13 = [v2 loggingCategory];
    sub_2515BB88C();
    v14 = v2;
    v15 = sub_2515BB86C();
    v16 = sub_2515BB95C();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      aBlock[0] = v18;
      *v17 = 136446210;
      v19 = [v14 identifier];
      v25 = v4;
      v20 = v19;
      v21 = sub_2515BB8EC();
      v23 = v22;

      v24 = sub_2515AED94(v21, v23, aBlock);

      *(v17 + 4) = v24;
      _os_log_impl(&dword_25156C000, v15, v16, "[%{public}s] launching task after request from BGST", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x25307AFB0](v18, -1, -1);
      MEMORY[0x25307AFB0](v17, -1, -1);

      (*(v5 + 8))(v8, v25);
    }

    else
    {

      (*(v5 + 8))(v8, v4);
    }

    return [v14 launchTask];
  }

  return result;
}

id sub_2515AA72C(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v12 = objc_allocWithZone(MEMORY[0x277CF07C8]);
  v13 = sub_2515BB8DC();

  v14 = [v12 initWithIdentifier_];

  v18[4] = a5;
  v18[5] = a6;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 1107296256;
  v18[2] = sub_2515A9C50;
  v18[3] = &block_descriptor_57;
  v15 = _Block_copy(v18);

  v16 = [v7 initWithDefaultRequest:v14 loggingCategory:a3 scheduler:a4 handler:v15];

  _Block_release(v15);
  return v16;
}

id HDOneShotBackgroundTask.submitRequest(maximumDelay:completion:)(void *a1, void *a2, double a3)
{
  aBlock[6] = *MEMORY[0x277D85DE8];
  v7 = [v3 quota];
  if (v7)
  {
    v8 = v7;
    [v7 timeUntilNextAvailableTrigger];
    v10 = v9;
  }

  else
  {
    v10 = 0.0;
  }

  if (v10 >= a3)
  {
    a3 = v10;
  }

  aBlock[4] = a1;
  aBlock[5] = a2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2515AAAB4;
  aBlock[3] = &block_descriptor_6;
  v11 = _Block_copy(aBlock);

  aBlock[0] = 0;
  v12 = [v3 submitRequestWithMaximumDelay:aBlock minimumDelay:v11 error:a3 completion:v10];
  _Block_release(v11);
  if (v12)
  {
    result = aBlock[0];
  }

  else
  {
    v14 = aBlock[0];
    sub_2515BB85C();

    result = swift_willThrow();
  }

  v15 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2515AAAB4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

void sub_2515AAC04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_2515BB84C();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

void sub_2515AAC74(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t *a5, double a6, double a7)
{
  v126 = a5;
  v128 = a3;
  v129 = a4;
  v132[4] = *MEMORY[0x277D85DE8];
  v11 = sub_2515BB87C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = (MEMORY[0x28223BE20])();
  v16 = &v122[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v122[-v18];
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v122[-v21];
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v122[-v24];
  MEMORY[0x28223BE20](v23);
  v27 = &v122[-v26];
  if (*a1 != 1)
  {
    v130 = v11;
    v127 = v12;
    v48 = [a2 scheduler];
    v49 = [a2 identifier];
    if (!v49)
    {
      sub_2515BB8EC();
      v49 = sub_2515BB8DC();
    }

    v50 = [v48 taskRequestForIdentifier_];

    if (v50)
    {
      objc_opt_self();
      v51 = swift_dynamicCastObjCClass();
      if (v51)
      {
        v52 = v51;
        v53 = [a2 loggingCategory];
        sub_2515BB88C();
        v54 = a2;
        v55 = sub_2515BB86C();
        v56 = sub_2515BB95C();

        if (os_log_type_enabled(v55, v56))
        {
          v57 = swift_slowAlloc();
          v125 = a1;
          v58 = v57;
          v124 = swift_slowAlloc();
          v132[0] = v124;
          *v58 = 136446722;
          v59 = [v54 identifier];
          v60 = sub_2515BB8EC();
          v123 = v56;
          v61 = v60;
          v63 = v62;

          v64 = sub_2515AED94(v61, v63, v132);

          *(v58 + 4) = v64;
          *(v58 + 12) = 2050;
          *(v58 + 14) = a6;
          *(v58 + 22) = 2050;
          *(v58 + 24) = a7;
          _os_log_impl(&dword_25156C000, v55, v123, "[%{public}s] submitRequest: updating existing request with min %{public}f and max %{public}f", v58, 0x20u);
          v65 = v124;
          __swift_destroy_boxed_opaque_existential_0(v124);
          MEMORY[0x25307AFB0](v65, -1, -1);
          v66 = v58;
          a1 = v125;
          MEMORY[0x25307AFB0](v66, -1, -1);
        }

        (*(v127 + 8))(v19, v130);
        [v52 trySchedulingBefore];
        if (v67 > a7)
        {
          v67 = a7;
        }

        [v52 setTrySchedulingBefore_];
        v68 = [v54 scheduler];
        v132[0] = 0;
        v69 = [v68 updateTaskRequest:v52 error:v132];

        v70 = v132[0];
        if ((v69 & 1) == 0)
        {
LABEL_22:
          v71 = v70;
          v72 = sub_2515BB85C();

          swift_willThrow();
          *v126 = v72;
          goto LABEL_41;
        }

LABEL_35:
        v105 = v70;

        v87 = swift_allocObject();
        *(v87 + 16) = v128;
        *(v87 + 24) = v129;
        v88 = *(a1 + 8);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v88 = sub_2515AEC5C(0, v88[2] + 1, 1, v88, &qword_280C1B0A0, sub_2515AF560);
        }

        v107 = v88[2];
        v106 = v88[3];
        if (v107 >= v106 >> 1)
        {
          v88 = sub_2515AEC5C((v106 > 1), v107 + 1, 1, v88, &qword_280C1B0A0, sub_2515AF560);
        }

        v88[2] = v107 + 1;
        v91 = &v88[2 * v107];
        goto LABEL_40;
      }
    }

    v125 = a1;
    v92 = [a2 loggingCategory];
    sub_2515BB88C();
    v93 = a2;
    v94 = sub_2515BB86C();
    v95 = sub_2515BB95C();

    if (os_log_type_enabled(v94, v95))
    {
      v96 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      v132[0] = v97;
      *v96 = 136446210;
      v98 = [v93 identifier];
      v99 = sub_2515BB8EC();
      v101 = v100;

      v102 = sub_2515AED94(v99, v101, v132);

      *(v96 + 4) = v102;
      _os_log_impl(&dword_25156C000, v94, v95, "[%{public}s] submitRequest: submitting new request", v96, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v97);
      MEMORY[0x25307AFB0](v97, -1, -1);
      MEMORY[0x25307AFB0](v96, -1, -1);
    }

    (*(v127 + 8))(v16, v130);
    a1 = v125;
    v103 = [v93 defaultRequest];
    [v103 copy];

    sub_2515BB9BC();
    swift_unknownObjectRelease();
    sub_2515A8688(0, &qword_280C1B0B0, 0x277CF07C8);
    swift_dynamicCast();
    v50 = v131;
    [v131 setTrySchedulingBefore_];
    [v50 setScheduleAfter_];
    v104 = [v93 scheduler];
    v132[0] = 0;
    LODWORD(v103) = [v104 submitTaskRequest:v50 error:v132];

    v70 = v132[0];
    if (!v103)
    {
      goto LABEL_22;
    }

    goto LABEL_35;
  }

  if (([a2 rescheduleWhileRunning] & 1) == 0)
  {
    v73 = [a2 loggingCategory];
    sub_2515BB88C();
    v74 = a2;
    v75 = sub_2515BB86C();
    v76 = sub_2515BB95C();

    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v125 = a1;
      v78 = v77;
      v79 = swift_slowAlloc();
      v130 = v11;
      v80 = v79;
      v132[0] = v79;
      *v78 = 136446210;
      v81 = [v74 identifier];
      v82 = sub_2515BB8EC();
      v84 = v83;

      v85 = sub_2515AED94(v82, v84, v132);

      *(v78 + 4) = v85;
      _os_log_impl(&dword_25156C000, v75, v76, "[%{public}s] submitRequest: task already running, not rescheduling", v78, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v80);
      MEMORY[0x25307AFB0](v80, -1, -1);
      v86 = v78;
      a1 = v125;
      MEMORY[0x25307AFB0](v86, -1, -1);

      (*(v12 + 8))(v27, v130);
    }

    else
    {

      (*(v12 + 8))(v27, v11);
    }

    v87 = swift_allocObject();
    *(v87 + 16) = v128;
    *(v87 + 24) = v129;
    v88 = *(a1 + 8);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v88 = sub_2515AEC5C(0, v88[2] + 1, 1, v88, &qword_280C1B0A0, sub_2515AF560);
    }

    v90 = v88[2];
    v89 = v88[3];
    if (v90 >= v89 >> 1)
    {
      v88 = sub_2515AEC5C((v89 > 1), v90 + 1, 1, v88, &qword_280C1B0A0, sub_2515AF560);
    }

    v88[2] = v90 + 1;
    v91 = &v88[2 * v90];
LABEL_40:
    v91[4] = sub_2515AF74C;
    v91[5] = v87;
    *(a1 + 8) = v88;
    goto LABEL_41;
  }

  v28 = swift_allocObject();
  *(v28 + 16) = v128;
  *(v28 + 24) = v129;
  v29 = *(a1 + 32);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v127 = v12;
  v130 = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v29 = sub_2515AEC5C(0, v29[2] + 1, 1, v29, &qword_280C1B0A0, sub_2515AF560);
  }

  v32 = v29[2];
  v31 = v29[3];
  if (v32 >= v31 >> 1)
  {
    v29 = sub_2515AEC5C((v31 > 1), v32 + 1, 1, v29, &qword_280C1B0A0, sub_2515AF560);
  }

  v29[2] = v32 + 1;
  v33 = &v29[2 * v32];
  v33[4] = sub_2515AF74C;
  v33[5] = v28;
  *(a1 + 32) = v29;
  v34 = *(a1 + 24);
  if (v34)
  {
    v35 = v34;
    v36 = [a2 loggingCategory];
    sub_2515BB88C();
    v37 = a2;
    v38 = sub_2515BB86C();
    v39 = sub_2515BB95C();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v132[0] = v41;
      *v40 = 136446722;
      v42 = [v37 identifier];
      v43 = sub_2515BB8EC();
      v45 = v44;

      v46 = sub_2515AED94(v43, v45, v132);

      *(v40 + 4) = v46;
      *(v40 + 12) = 2050;
      *(v40 + 14) = a6;
      *(v40 + 22) = 2050;
      *(v40 + 24) = a7;
      _os_log_impl(&dword_25156C000, v38, v39, "[%{public}s] submitRequest: updating next run delay with min %{public}f and max %{public}f", v40, 0x20u);
      __swift_destroy_boxed_opaque_existential_0(v41);
      MEMORY[0x25307AFB0](v41, -1, -1);
      MEMORY[0x25307AFB0](v40, -1, -1);
    }

    (*(v127 + 8))(v25, v130);
    [v35 trySchedulingBefore];
    if (v47 > a7)
    {
      v47 = a7;
    }

    [v35 setTrySchedulingBefore_];
    [v35 setScheduleAfter_];
  }

  else
  {
    v125 = a1;
    v109 = [a2 loggingCategory];
    sub_2515BB88C();
    v110 = a2;
    v111 = sub_2515BB86C();
    v112 = sub_2515BB95C();

    if (os_log_type_enabled(v111, v112))
    {
      v113 = swift_slowAlloc();
      v114 = swift_slowAlloc();
      v132[0] = v114;
      *v113 = 136446210;
      v115 = [v110 identifier];
      v116 = sub_2515BB8EC();
      v118 = v117;

      v119 = sub_2515AED94(v116, v118, v132);

      *(v113 + 4) = v119;
      _os_log_impl(&dword_25156C000, v111, v112, "[%{public}s] submitRequest: creating new next run request", v113, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v114);
      MEMORY[0x25307AFB0](v114, -1, -1);
      MEMORY[0x25307AFB0](v113, -1, -1);
    }

    (*(v127 + 8))(v22, v130);
    v120 = [v110 defaultRequest];
    [v120 copy];

    sub_2515BB9BC();
    swift_unknownObjectRelease();
    sub_2515A8688(0, &qword_280C1B0B0, 0x277CF07C8);
    swift_dynamicCast();
    v121 = v131;
    *(v125 + 24) = v131;
    [v121 setTrySchedulingBefore_];
  }

LABEL_41:
  v108 = *MEMORY[0x277D85DE8];
}

void HDOneShotBackgroundTask.submitRequest(_:completion:)(void *a1, uint64_t a2, uint64_t *a3)
{
  v7 = &v3[OBJC_IVAR___HDOneShotBackgroundTask_state];
  os_unfair_lock_lock(&v3[OBJC_IVAR___HDOneShotBackgroundTask_state]);
  sub_2515ABC40(&v7[2], v3, a2, a3, a1, &v8);
  os_unfair_lock_unlock(v7);
}

void sub_2515ABC40(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4, void *a5, uint64_t *a6)
{
  v113 = a6;
  v119[1] = *MEMORY[0x277D85DE8];
  v11 = sub_2515BB87C();
  v12 = *(v11 - 8);
  v116 = v11;
  v117 = v12;
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v111 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v111 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v111 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v111 - v23;
  if (*a1 == 1)
  {
    v25 = [a2 rescheduleWhileRunning];
    v26 = [a2 loggingCategory];
    if (v25)
    {
      v113 = a4;
      v115 = a1;
      sub_2515BB88C();
      v27 = a2;
      v28 = sub_2515BB86C();
      v29 = sub_2515BB95C();

      v30 = os_log_type_enabled(v28, v29);
      v114 = a5;
      if (v30)
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v119[0] = v32;
        *v31 = 136446210;
        v33 = a3;
        v34 = [v27 identifier];
        v35 = sub_2515BB8EC();
        v37 = v36;

        v38 = sub_2515AED94(v35, v37, v119);

        *(v31 + 4) = v38;
        a3 = v33;
        _os_log_impl(&dword_25156C000, v28, v29, "[%{public}s] submitRequest: replacing next run with custom request", v31, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v32);
        MEMORY[0x25307AFB0](v32, -1, -1);
        MEMORY[0x25307AFB0](v31, -1, -1);
      }

      (*(v117 + 8))(v22, v116);
      v39 = swift_allocObject();
      *(v39 + 16) = a3;
      *(v39 + 24) = v113;
      v40 = v115;
      v41 = *(v115 + 32);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v41 = sub_2515AEC5C(0, v41[2] + 1, 1, v41, &qword_280C1B0A0, sub_2515AF560);
      }

      v43 = v41[2];
      v42 = v41[3];
      if (v43 >= v42 >> 1)
      {
        v41 = sub_2515AEC5C((v42 > 1), v43 + 1, 1, v41, &qword_280C1B0A0, sub_2515AF560);
      }

      v41[2] = v43 + 1;
      v44 = &v41[2 * v43];
      v44[4] = sub_2515AF74C;
      v44[5] = v39;
      *(v40 + 32) = v41;
      v45 = *(v40 + 24);
      v46 = v114;
      v47 = v114;

      *(v40 + 24) = v46;
    }

    else
    {
      sub_2515BB88C();
      v74 = a2;
      v75 = sub_2515BB86C();
      v76 = sub_2515BB95C();

      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        v113 = a4;
        v115 = a1;
        v78 = v77;
        v79 = swift_slowAlloc();
        v119[0] = v79;
        *v78 = 136446210;
        v80 = [v74 identifier];
        v81 = sub_2515BB8EC();
        v82 = a3;
        v84 = v83;

        v85 = sub_2515AED94(v81, v84, v119);
        a3 = v82;

        *(v78 + 4) = v85;
        _os_log_impl(&dword_25156C000, v75, v76, "[%{public}s] submitRequest: task already running, not rescheduling", v78, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v79);
        MEMORY[0x25307AFB0](v79, -1, -1);
        v86 = v78;
        a1 = v115;
        a4 = v113;
        MEMORY[0x25307AFB0](v86, -1, -1);
      }

      (*(v117 + 8))(v24, v116);
      v87 = swift_allocObject();
      *(v87 + 16) = a3;
      *(v87 + 24) = a4;
      v88 = *(a1 + 8);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v88 = sub_2515AEC5C(0, v88[2] + 1, 1, v88, &qword_280C1B0A0, sub_2515AF560);
      }

      v90 = v88[2];
      v89 = v88[3];
      if (v90 >= v89 >> 1)
      {
        v88 = sub_2515AEC5C((v89 > 1), v90 + 1, 1, v88, &qword_280C1B0A0, sub_2515AF560);
      }

      v88[2] = v90 + 1;
      v91 = &v88[2 * v90];
      v91[4] = sub_2515AF74C;
      v91[5] = v87;
      *(a1 + 8) = v88;
    }

    goto LABEL_33;
  }

  v114 = a5;
  v115 = a1;
  v48 = [a2 scheduler];
  v49 = [a2 identifier];
  if (!v49)
  {
    sub_2515BB8EC();
    v49 = sub_2515BB8DC();
  }

  v50 = [v48 taskRequestForIdentifier_];

  if (v50)
  {

    v51 = [a2 loggingCategory];
    sub_2515BB88C();
    v52 = a2;
    v53 = sub_2515BB86C();
    v54 = sub_2515BB95C();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v111 = swift_slowAlloc();
      v119[0] = v111;
      *v55 = 136446210;
      v56 = [v52 identifier];
      v112 = a3;
      v57 = v56;
      v58 = sub_2515BB8EC();
      v59 = a4;
      v61 = v60;

      v62 = sub_2515AED94(v58, v61, v119);
      a4 = v59;

      *(v55 + 4) = v62;
      a3 = v112;
      _os_log_impl(&dword_25156C000, v53, v54, "[%{public}s] submitRequest: updating scheduler with custom request", v55, 0xCu);
      v63 = v111;
      __swift_destroy_boxed_opaque_existential_0(v111);
      MEMORY[0x25307AFB0](v63, -1, -1);
      MEMORY[0x25307AFB0](v55, -1, -1);
    }

    (*(v117 + 8))(v19, v116);
    v64 = v115;
    v65 = [v52 scheduler];
    v119[0] = 0;
    v66 = [v65 updateTaskRequest:v114 error:v119];

    v67 = v119[0];
    if (v66)
    {
      goto LABEL_16;
    }

LABEL_32:
    v108 = v67;
    v109 = sub_2515BB85C();

    swift_willThrow();
    *v113 = v109;
    v118 = 1;
    goto LABEL_33;
  }

  v92 = [a2 loggingCategory];
  sub_2515BB88C();
  v93 = a2;
  v94 = sub_2515BB86C();
  v95 = sub_2515BB95C();

  if (os_log_type_enabled(v94, v95))
  {
    v96 = swift_slowAlloc();
    v97 = swift_slowAlloc();
    v119[0] = v97;
    *v96 = 136446210;
    v98 = [v93 identifier];
    v112 = a3;
    v99 = v98;
    v100 = sub_2515BB8EC();
    v111 = v93;
    v101 = a4;
    v103 = v102;

    v104 = sub_2515AED94(v100, v103, v119);
    a4 = v101;

    *(v96 + 4) = v104;
    a3 = v112;
    _os_log_impl(&dword_25156C000, v94, v95, "[%{public}s] submitRequest: submitting new custom request", v96, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v97);
    MEMORY[0x25307AFB0](v97, -1, -1);
    MEMORY[0x25307AFB0](v96, -1, -1);

    (*(v117 + 8))(v16, v116);
    v105 = v111;
  }

  else
  {

    (*(v117 + 8))(v16, v116);
    v105 = v93;
  }

  v64 = v115;
  v106 = [v105 scheduler];
  v119[0] = 0;
  v107 = [v106 submitTaskRequest:v114 error:v119];

  v67 = v119[0];
  if (!v107)
  {
    goto LABEL_32;
  }

LABEL_16:
  v68 = v67;
  v69 = swift_allocObject();
  *(v69 + 16) = a3;
  *(v69 + 24) = a4;
  v70 = *(v64 + 8);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v70 = sub_2515AEC5C(0, v70[2] + 1, 1, v70, &qword_280C1B0A0, sub_2515AF560);
  }

  v72 = v70[2];
  v71 = v70[3];
  if (v72 >= v71 >> 1)
  {
    v70 = sub_2515AEC5C((v71 > 1), v72 + 1, 1, v70, &qword_280C1B0A0, sub_2515AF560);
  }

  v70[2] = v72 + 1;
  v73 = &v70[2 * v72];
  v73[4] = sub_2515AF74C;
  v73[5] = v69;
  *(v64 + 8) = v70;
LABEL_33:
  v110 = *MEMORY[0x277D85DE8];
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> HDOneShotBackgroundTask.cancelRequest()()
{
  v1 = v0;
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = [v0 scheduler];
  v3 = [v1 identifier];
  if (!v3)
  {
    sub_2515BB8EC();
    v3 = sub_2515BB8DC();
  }

  v8[0] = 0;
  v4 = [v2 cancelTaskRequestWithIdentifier:v3 error:v8];

  if (v4)
  {
    v5 = v8[0];
  }

  else
  {
    v6 = v8[0];
    sub_2515BB85C();

    swift_willThrow();
  }

  v7 = *MEMORY[0x277D85DE8];
}

void HDOneShotBackgroundTask.addExpirationHandler(_:)(uint64_t (*a1)(void), uint64_t a2)
{
  v5 = &v2[OBJC_IVAR___HDOneShotBackgroundTask_state];
  os_unfair_lock_lock(&v2[OBJC_IVAR___HDOneShotBackgroundTask_state]);
  sub_2515ACDD8(&v5[2], v2, a1, a2);

  os_unfair_lock_unlock(v5);
}

void sub_2515ACA34(unsigned __int8 *a1, void *a2, void (**a3)(void))
{
  v7 = sub_2515BB87C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  v13 = *a1;
  _Block_copy(a3);
  if (v13 != 1)
  {
    v14 = [a2 loggingCategory];
    sub_2515BB88C();
    v15 = a2;
    v16 = sub_2515BB86C();
    v17 = sub_2515BB94C();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v37 = v3;
      v19 = v18;
      v20 = swift_slowAlloc();
      v36 = v12;
      v34 = v20;
      v38 = v20;
      *v19 = 136446210;
      v21 = [v15 identifier];
      v22 = sub_2515BB8EC();
      v35 = v7;
      v23 = v22;
      v24 = v8;
      v26 = v25;

      v27 = sub_2515AED94(v23, v26, &v38);

      *(v19 + 4) = v27;
      _os_log_impl(&dword_25156C000, v16, v17, "[%{public}s] attempted to register expiration handler when task is not running; ignoring", v19, 0xCu);
      v28 = v34;
      __swift_destroy_boxed_opaque_existential_0(v34);
      MEMORY[0x25307AFB0](v28, -1, -1);
      MEMORY[0x25307AFB0](v19, -1, -1);

      (*(v24 + 8))(v11, v35);
    }

    else
    {

      (*(v8 + 8))(v11, v7);
    }

    goto LABEL_12;
  }

  if ([a2 _shouldDefer])
  {
    a3[2](a3);
LABEL_12:

    _Block_release(a3);
    return;
  }

  v29 = swift_allocObject();
  *(v29 + 16) = sub_2515A829C;
  *(v29 + 24) = v12;
  v30 = *(a1 + 2);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v30 = sub_2515AEC5C(0, v30[2] + 1, 1, v30, &qword_280C1B098, sub_2515AF350);
  }

  v32 = v30[2];
  v31 = v30[3];
  if (v32 >= v31 >> 1)
  {
    v30 = sub_2515AEC5C((v31 > 1), v32 + 1, 1, v30, &qword_280C1B098, sub_2515AF350);
  }

  v30[2] = v32 + 1;
  v33 = &v30[2 * v32];
  v33[4] = sub_2515A82A4;
  v33[5] = v29;

  _Block_release(a3);
  *(a1 + 2) = v30;
}

uint64_t sub_2515ACDD8(uint64_t a1, void *a2, uint64_t (*a3)(void), uint64_t a4)
{
  v8 = sub_2515BB87C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 1)
  {
    if ([a2 _shouldDefer])
    {
      return a3();
    }

    else
    {
      v25 = swift_allocObject();
      *(v25 + 16) = a3;
      *(v25 + 24) = a4;
      v26 = *(a1 + 16);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_2515AEC5C(0, v26[2] + 1, 1, v26, &qword_280C1B098, sub_2515AF350);
        v26 = result;
      }

      v28 = v26[2];
      v27 = v26[3];
      if (v28 >= v27 >> 1)
      {
        result = sub_2515AEC5C((v27 > 1), v28 + 1, 1, v26, &qword_280C1B098, sub_2515AF350);
        v26 = result;
      }

      v26[2] = v28 + 1;
      v29 = &v26[2 * v28];
      v29[4] = sub_2515A89D4;
      v29[5] = v25;
      *(a1 + 16) = v26;
    }
  }

  else
  {
    v14 = [a2 loggingCategory];
    sub_2515BB88C();
    v15 = a2;
    v16 = sub_2515BB86C();
    v17 = sub_2515BB94C();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v32 = v31;
      *v18 = 136446210;
      v19 = [v15 identifier];
      v20 = sub_2515BB8EC();
      v30 = v8;
      v22 = v21;

      v23 = sub_2515AED94(v20, v22, &v32);

      *(v18 + 4) = v23;
      _os_log_impl(&dword_25156C000, v16, v17, "[%{public}s] attempted to register expiration handler when task is not running; ignoring", v18, 0xCu);
      v24 = v31;
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x25307AFB0](v24, -1, -1);
      MEMORY[0x25307AFB0](v18, -1, -1);

      return (*(v9 + 8))(v12, v30);
    }

    else
    {

      return (*(v9 + 8))(v12, v8);
    }
  }

  return result;
}

void HDOneShotBackgroundTask.runImmediately(completion:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v40[1] = *MEMORY[0x277D85DE8];
  v7 = sub_2515BB87C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = &v4[OBJC_IVAR___HDOneShotBackgroundTask_state];
  os_unfair_lock_lock(&v4[OBJC_IVAR___HDOneShotBackgroundTask_state]);
  if (v12[2]._os_unfair_lock_opaque)
  {
    goto LABEL_15;
  }

  v37 = v8;
  v38 = v7;
  v39 = v3;
  v13 = [v4 scheduler];
  v14 = [v4 identifier];
  if (!v14)
  {
    sub_2515BB8EC();
    v14 = sub_2515BB8DC();
  }

  v15 = [v13 taskRequestForIdentifier_];

  if (!v15)
  {
    goto LABEL_7;
  }

  v40[0] = 0;
  if (![v4 cancelRequestAndReturnError_])
  {
    v34 = v40[0];
    sub_2515BB85C();

    swift_willThrow();
LABEL_15:
    os_unfair_lock_unlock(v12);
    goto LABEL_16;
  }

  v16 = v40[0];
LABEL_7:
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  v18 = *&v12[4]._os_unfair_lock_opaque;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v12[4]._os_unfair_lock_opaque = v18;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v18 = sub_2515AEC5C(0, v18[2] + 1, 1, v18, &qword_280C1B0A0, sub_2515AF560);
    *&v12[4]._os_unfair_lock_opaque = v18;
  }

  v21 = v18[2];
  v20 = v18[3];
  if (v21 >= v20 >> 1)
  {
    v18 = sub_2515AEC5C((v20 > 1), v21 + 1, 1, v18, &qword_280C1B0A0, sub_2515AF560);
    *&v12[4]._os_unfair_lock_opaque = v18;
  }

  v18[2] = v21 + 1;
  v22 = &v18[2 * v21];
  v22[4] = sub_2515AD5E0;
  v22[5] = v17;
  LOBYTE(v12[2]._os_unfair_lock_opaque) = 1;
  os_unfair_lock_unlock(v12);
  v23 = [v4 loggingCategory];
  sub_2515BB88C();
  v24 = v4;
  v25 = sub_2515BB86C();
  v26 = sub_2515BB95C();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v40[0] = v28;
    *v27 = 136446210;
    v29 = [v24 identifier];
    v30 = sub_2515BB8EC();
    v32 = v31;

    v33 = sub_2515AED94(v30, v32, v40);

    *(v27 + 4) = v33;
    _os_log_impl(&dword_25156C000, v25, v26, "[%{public}s] launching task after request from runImmediately", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x25307AFB0](v28, -1, -1);
    MEMORY[0x25307AFB0](v27, -1, -1);
  }

  (*(v37 + 8))(v11, v38);
  [v24 launchTask];
LABEL_16:
  v35 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2515AD5E0(void *a1, void *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(*a1, *a2);
}

uint64_t sub_2515AD6D8@<X0>(_BYTE *a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v7 = sub_2515BB87C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  result = MEMORY[0x28223BE20]();
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 1)
  {
    v13 = [a2 loggingCategory];
    sub_2515BB88C();
    v14 = a2;
    v15 = sub_2515BB86C();
    v16 = sub_2515BB94C();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v31 = v29;
      *v17 = 136446210;
      v18 = [v14 identifier];
      v19 = sub_2515BB8EC();
      v30 = v3;
      v20 = v19;
      v28 = v16;
      v21 = a3;
      v23 = v22;

      v24 = sub_2515AED94(v20, v23, &v31);
      a3 = v21;

      *(v17 + 4) = v24;
      _os_log_impl(&dword_25156C000, v15, v28, "[%{public}s] task already running with runImmediately when launchHandler was called from BGST - task might not register expirationHandler correctly and may run ungated.", v17, 0xCu);
      v25 = v29;
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x25307AFB0](v25, -1, -1);
      MEMORY[0x25307AFB0](v17, -1, -1);
    }

    result = (*(v8 + 8))(v12, v7);
    v26 = 0;
  }

  else
  {
    v26 = 1;
    *a1 = 1;
  }

  *a3 = v26;
  return result;
}

void sub_2515AD914()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = (Strong + OBJC_IVAR___HDOneShotBackgroundTask_state);
    v2 = Strong;
    os_unfair_lock_lock((Strong + OBJC_IVAR___HDOneShotBackgroundTask_state));
    sub_2515ADE1C(&v1[2], v2);
    os_unfair_lock_unlock(v1);
  }
}

uint64_t sub_2515AD998()
{
  [v0 set:0 shouldDefer:?];
  v1 = [v0 quota];
  [v1 consumeQuota];

  v2 = [v0 handler];
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  v8[4] = sub_2515AF3F4;
  v8[5] = v3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_2515AAAB4;
  v8[3] = &block_descriptor_18;
  v4 = _Block_copy(v8);
  v5 = v2[2];
  v6 = v0;

  v5(v2, v6, v4);
  _Block_release(v2);

  _Block_release(v4);
}

uint64_t sub_2515ADAF0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_2515BB87C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [v3 loggingCategory];
  sub_2515BB88C();
  v12 = v3;
  v13 = sub_2515BB86C();
  v14 = sub_2515BB95C();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v35 = v7;
    v16 = v15;
    v33 = swift_slowAlloc();
    v37 = v33;
    *v16 = 136446466;
    v17 = [v12 identifier];
    v18 = sub_2515BB8EC();
    v34 = v6;
    v19 = v18;
    v21 = v20;

    v22 = sub_2515AED94(v19, v21, &v37);

    *(v16 + 4) = v22;
    *(v16 + 12) = 2082;
    v23 = HDBackgroundTaskResult.description.getter(a1);
    v25 = sub_2515AED94(v23, v24, &v37);

    *(v16 + 14) = v25;
    _os_log_impl(&dword_25156C000, v13, v14, "[%{public}s] completion handler called - %{public}s", v16, 0x16u);
    v26 = v33;
    swift_arrayDestroy();
    MEMORY[0x25307AFB0](v26, -1, -1);
    MEMORY[0x25307AFB0](v16, -1, -1);

    (*(v35 + 8))(v10, v34);
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }

  v27 = &v12[OBJC_IVAR___HDOneShotBackgroundTask_state];
  os_unfair_lock_lock(&v12[OBJC_IVAR___HDOneShotBackgroundTask_state]);
  sub_2515AE094(&v27[2], v12, a1, &v37);
  os_unfair_lock_unlock(v27);
  v28 = *(v37 + 16);
  if (v28)
  {
    v29 = (v37 + 40);
    do
    {
      v31 = *(v29 - 1);
      v30 = *v29;
      v37 = a1;
      v36 = a2;

      v31(&v37, &v36);

      v29 += 2;
      --v28;
    }

    while (v28);
  }
}

uint64_t sub_2515ADE1C(uint64_t a1, void *a2)
{
  v5 = sub_2515BB87C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20]();
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 1)
  {
    [a2 set:1 shouldDefer:?];
    v10 = *(a1 + 16);
    v11 = *(v10 + 16);
    if (v11)
    {
      v12 = (v10 + 40);
      do
      {
        v14 = *(v12 - 1);
        v13 = *v12;

        v14(v15);

        v12 += 2;
        --v11;
      }

      while (v11);
    }

    *(a1 + 16) = MEMORY[0x277D84F90];
  }

  else
  {
    v17 = [a2 loggingCategory];
    sub_2515BB88C();
    v18 = a2;
    v19 = sub_2515BB86C();
    v20 = sub_2515BB94C();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v29[1] = v2;
      v22 = v21;
      v29[0] = swift_slowAlloc();
      v30 = v29[0];
      *v22 = 136446210;
      v23 = [v18 identifier];
      v24 = sub_2515BB8EC();
      v26 = v25;

      v27 = sub_2515AED94(v24, v26, &v30);

      *(v22 + 4) = v27;
      _os_log_impl(&dword_25156C000, v19, v20, "[%{public}s] expiration handler called when task is not running", v22, 0xCu);
      v28 = v29[0];
      __swift_destroy_boxed_opaque_existential_0(v29[0]);
      MEMORY[0x25307AFB0](v28, -1, -1);
      MEMORY[0x25307AFB0](v22, -1, -1);
    }

    return (*(v6 + 8))(v9, v5);
  }

  return result;
}

void sub_2515AE094(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v73 = a4;
  v74[1] = *MEMORY[0x277D85DE8];
  v7 = sub_2515BB87C();
  v72 = *(v7 - 8);
  v8 = *(v72 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v71 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v66 - v11;
  *a1 = 0;
  v13 = *(a1 + 16);

  v14 = MEMORY[0x277D84F90];
  *(a1 + 16) = MEMORY[0x277D84F90];
  v15 = [a2 _currentTask];
  [a2 set:0 currentTask:?];
  if (a3 == 2)
  {
    if (!v15)
    {
LABEL_5:
      v17 = *(a1 + 24);
      *(a1 + 24) = 0;
      goto LABEL_18;
    }

    v74[0] = 0;
    if ([v15 setTaskExpiredWithRetryAfter:v74 error:0.0])
    {
      v16 = v74[0];
      goto LABEL_5;
    }

    v18 = v74[0];
    v19 = sub_2515BB85C();

    swift_willThrow();
    v20 = [a2 loggingCategory];
    sub_2515BB88C();
    v21 = a2;
    v22 = v19;
    v23 = sub_2515BB86C();
    v24 = sub_2515BB94C();

    v25 = os_log_type_enabled(v23, v24);
    v70 = v7;
    if (v25)
    {
      v26 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v74[0] = v69;
      *v26 = 136446466;
      v27 = [v21 identifier];
      v28 = sub_2515BB8EC();
      v67 = v23;
      v29 = v28;
      LODWORD(v66) = v24;
      v30 = v19;
      v32 = v31;

      v33 = sub_2515AED94(v29, v32, v74);
      v19 = v30;

      *(v26 + 4) = v33;
      *(v26 + 12) = 2112;
      v34 = v30;
      v35 = _swift_stdlib_bridgeErrorToNSError();
      *(v26 + 14) = v35;
      v37 = v67;
      v36 = v68;
      *v68 = v35;
      _os_log_impl(&dword_25156C000, v37, v66, "[%{public}s] failed to set task as expired, marking completed: %@", v26, 0x16u);
      sub_2515A85C4(v36);
      MEMORY[0x25307AFB0](v36, -1, -1);
      v38 = v69;
      __swift_destroy_boxed_opaque_existential_0(v69);
      MEMORY[0x25307AFB0](v38, -1, -1);
      v39 = v26;
      v7 = v70;
      MEMORY[0x25307AFB0](v39, -1, -1);
    }

    else
    {
    }

    (*(v72 + 8))(v12, v7);
    v14 = MEMORY[0x277D84F90];
    v40 = v15;
    [v40 setTaskCompleted];
  }

  else
  {
    v70 = v7;
    [v15 setTaskCompleted];
  }

  v17 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v17)
  {
    v41 = [a2 scheduler];
    v74[0] = 0;
    v42 = [v41 submitTaskRequest:v17 error:v74];

    if (v42)
    {
      v43 = v74[0];
    }

    else
    {
      v44 = v74[0];
      v45 = sub_2515BB85C();

      swift_willThrow();
      v46 = [a2 loggingCategory];
      v47 = v71;
      sub_2515BB88C();
      v48 = a2;
      v49 = v45;
      v50 = sub_2515BB86C();
      v51 = sub_2515BB94C();

      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        LODWORD(v68) = v51;
        v53 = v52;
        v67 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        v74[0] = v69;
        *v53 = 136446466;
        v54 = [v48 identifier];
        v55 = sub_2515BB8EC();
        v66 = v50;
        v57 = v56;

        v58 = sub_2515AED94(v55, v57, v74);

        *(v53 + 4) = v58;
        *(v53 + 12) = 2112;
        v59 = v45;
        v60 = _swift_stdlib_bridgeErrorToNSError();
        *(v53 + 14) = v60;
        v62 = v66;
        v61 = v67;
        v67->isa = v60;
        _os_log_impl(&dword_25156C000, v62, v68, "[%{public}s] failed to reschedule task after completion: %@", v53, 0x16u);
        sub_2515A85C4(v61);
        MEMORY[0x25307AFB0](v61, -1, -1);
        v63 = v69;
        __swift_destroy_boxed_opaque_existential_0(v69);
        MEMORY[0x25307AFB0](v63, -1, -1);
        MEMORY[0x25307AFB0](v53, -1, -1);

        (*(v72 + 8))(v71, v70);
      }

      else
      {

        (*(v72 + 8))(v47, v70);
      }

      v14 = MEMORY[0x277D84F90];
    }
  }

LABEL_18:
  v64 = *(a1 + 8);
  *(a1 + 8) = *(a1 + 32);

  *(a1 + 32) = v14;
  *v73 = v64;
  v65 = *MEMORY[0x277D85DE8];
}

id sub_2515AE6C4()
{
  v1 = sub_2515BB87C();
  v36 = *(v1 - 8);
  v37 = v1;
  v2 = *(v36 + 64);
  MEMORY[0x28223BE20](v1);
  v38 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = v0;
  v4 = &v0[OBJC_IVAR___HDOneShotBackgroundTask_state];
  os_unfair_lock_lock(v4);
  v5 = *(v4 + 2);
  v6 = *(v4 + 5);

  os_unfair_lock_unlock(v4);
  v7 = *(v5 + 16);
  if (v7)
  {
    sub_2515A80F4();
    v8 = (v5 + 40);
    do
    {
      v9 = *(v8 - 1);
      v10 = *v8;
      v11 = swift_allocError();
      *v12 = 1;
      v41 = v11;
      v42 = 1;

      v9(&v42, &v41);

      v8 += 2;
      --v7;
    }

    while (v7);
  }

  v13 = *(v6 + 16);
  if (v13)
  {
    sub_2515A80F4();
    v14 = (v6 + 40);
    do
    {
      v15 = *(v14 - 1);
      v16 = *v14;
      v17 = swift_allocError();
      *v18 = 1;
      v41 = v17;
      v42 = 1;

      v15(&v42, &v41);

      v14 += 2;
      --v13;
    }

    while (v13);
  }

  v19 = v39;
  v20 = &v39[OBJC_IVAR___HDOneShotBackgroundTask_identifier];
  v21 = *&v39[OBJC_IVAR___HDOneShotBackgroundTask_identifier];
  v22 = *&v39[OBJC_IVAR___HDOneShotBackgroundTask_identifier + 8];
  v23 = *&v39[OBJC_IVAR___HDOneShotBackgroundTask_scheduler];

  v24 = sub_2515BB8DC();

  LOBYTE(v22) = [v23 deregisterTaskWithIdentifier_];

  v25 = v38;
  if ((v22 & 1) == 0 && (HDIsUnitTesting() & 1) == 0)
  {
    v26 = *&v19[OBJC_IVAR___HDOneShotBackgroundTask_loggingCategory];
    sub_2515BB88C();
    v27 = v19;
    v28 = sub_2515BB86C();
    v29 = sub_2515BB94C();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v42 = v31;
      *v30 = 136446210;
      v32 = *v20;
      v33 = v20[1];

      v34 = sub_2515AED94(v32, v33, &v42);

      *(v30 + 4) = v34;
      _os_log_impl(&dword_25156C000, v28, v29, "[%{public}s] failed to deregister task on deinit", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x25307AFB0](v31, -1, -1);
      MEMORY[0x25307AFB0](v30, -1, -1);
    }

    (*(v36 + 8))(v25, v37);
  }

  v40.receiver = v19;
  v40.super_class = HDOneShotBackgroundTask;
  return objc_msgSendSuper2(&v40, sel_dealloc, v36, v37);
}

id HDOneShotBackgroundTask.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

id HDOneShotBackgroundTask.currentTask.getter()
{
  v1 = [v0 _currentTask];

  return v1;
}

void *sub_2515AEC5C(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t))
{
  v7 = result;
  if (a3)
  {
    v8 = a4[3];
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = a4[2];
  if (v9 <= v10)
  {
    v11 = a4[2];
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_2515AF4FC(0, a5, a6, MEMORY[0x277D84560]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    v12[2] = v10;
    v12[3] = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  if (v7)
  {
    if (v12 != a4 || v12 + 4 >= &a4[2 * v10 + 4])
    {
      memmove(v12 + 4, a4 + 4, 16 * v10);
    }

    a4[2] = 0;
  }

  else
  {
    sub_2515AF3A0();
    swift_arrayInitWithCopy();
  }

  return v12;
}

uint64_t sub_2515AED94(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2515AEE60(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_2515AF450(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_2515AEE60(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_2515AEF6C(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_2515BB9FC();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_2515AEF6C(uint64_t a1, unint64_t a2)
{
  v4 = sub_2515AEFB8(a1, a2);
  sub_2515AF0E8(&unk_28637A3F8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_2515AEFB8(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_2515AF1D4(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_2515BB9FC();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_2515BB90C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2515AF1D4(v10, 0);
        result = sub_2515BB9DC();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_2515AF0E8(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_2515AF23C(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_2515AF1D4(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  sub_2515AF4AC();
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2515AF23C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_2515AF4AC();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_2515AF350()
{
  result = qword_280C1B078;
  if (!qword_280C1B078)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_280C1B078);
  }

  return result;
}

unint64_t sub_2515AF3A0()
{
  result = qword_280C1B070;
  if (!qword_280C1B070)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_280C1B070);
  }

  return result;
}

uint64_t sub_2515AF450(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_2515AF4AC()
{
  if (!qword_27F4461D8)
  {
    v0 = sub_2515BBA6C();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4461D8);
    }
  }
}

void sub_2515AF4FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_2515AF560()
{
  result = qword_280C1B080;
  if (!qword_280C1B080)
  {
    type metadata accessor for HDBackgroundTaskResult();
    sub_2515AF4FC(255, &qword_280C1B088, sub_2515AF608, MEMORY[0x277D83D88]);
    result = swift_getFunctionTypeMetadata2();
    atomic_store(result, &qword_280C1B080);
  }

  return result;
}

unint64_t sub_2515AF608()
{
  result = qword_280C1B090;
  if (!qword_280C1B090)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280C1B090);
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2515AF688(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2515AF6D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t HDFastPassBackgroundTask.identifier.getter()
{
  v1 = *(v0 + OBJC_IVAR___HDFastPassBackgroundTask_identifier);
  v2 = *(v0 + OBJC_IVAR___HDFastPassBackgroundTask_identifier + 8);

  return v1;
}

void sub_2515AF9F8(uint64_t a1, void *a2, void *aBlock)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = _Block_copy(aBlock);
  *(swift_allocObject() + 16) = v6;

  v7 = a2;
  v5();
}

uint64_t sub_2515AFB2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[4] = a2;
  v9[5] = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_2515AAAB4;
  v9[3] = &block_descriptor_23;
  v6 = _Block_copy(v9);
  v7 = *(a4 + 16);

  v7(a4, a1, v6);
  _Block_release(v6);
}

char *sub_2515AFC48(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  *&v6[OBJC_IVAR___HDFastPassBackgroundTask__currentTask] = 0;
  v6[OBJC_IVAR___HDFastPassBackgroundTask__shouldDefer] = 0;
  *&v6[OBJC_IVAR___HDFastPassBackgroundTask__expirationReason] = -1;
  v8 = &v6[OBJC_IVAR___HDFastPassBackgroundTask_identifier];
  *v8 = a1;
  v8[1] = a2;
  *&v6[OBJC_IVAR___HDFastPassBackgroundTask_scheduler] = a4;
  v9 = &v6[OBJC_IVAR___HDFastPassBackgroundTask_handler];
  *v9 = a5;
  v9[1] = a6;
  *&v6[OBJC_IVAR___HDFastPassBackgroundTask_loggingCategory] = a3;
  v10 = &v6[OBJC_IVAR___HDFastPassBackgroundTask_state];
  *v10 = 0;
  v11 = MEMORY[0x277D84F90];
  *(v10 + 1) = 0;
  *(v10 + 2) = v11;
  v12 = a4;

  v13 = a3;
  v25.receiver = v6;
  v25.super_class = HDFastPassBackgroundTask;
  v14 = objc_msgSendSuper2(&v25, sel_init);
  v15 = *&v14[OBJC_IVAR___HDFastPassBackgroundTask_scheduler];
  v16 = *&v14[OBJC_IVAR___HDFastPassBackgroundTask_identifier];
  v17 = *&v14[OBJC_IVAR___HDFastPassBackgroundTask_identifier + 8];
  v18 = v14;
  v19 = v15;

  v20 = sub_2515BB8DC();

  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v24[4] = sub_2515B1578;
  v24[5] = v21;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 1107296256;
  v24[2] = sub_2515A5914;
  v24[3] = &block_descriptor_1;
  v22 = _Block_copy(v24);

  [v19 registerForTaskWithIdentifier:v20 usingQueue:0 launchHandler:v22];
  _Block_release(v22);

  return v18;
}

void sub_2515AFE54(void *a1)
{
  v11[4] = *MEMORY[0x277D85DE8];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_2515AFF78(a1);

LABEL_8:
    v10 = *MEMORY[0x277D85DE8];
    return;
  }

  v11[0] = 0;
  v4 = [a1 setTaskExpiredWithRetryAfter:v11 error:0.0];
  v5 = v11[0];
  if (!v4)
  {
    v8 = v11[0];
    v9 = sub_2515BB85C();

    swift_willThrow();
    goto LABEL_8;
  }

  v6 = *MEMORY[0x277D85DE8];

  v7 = v5;
}

uint64_t sub_2515AFF78(void *a1)
{
  v3 = &v1[OBJC_IVAR___HDFastPassBackgroundTask_state];
  os_unfair_lock_lock(&v1[OBJC_IVAR___HDFastPassBackgroundTask_state]);
  LOBYTE(v3[2]._os_unfair_lock_opaque) = 1;
  os_unfair_lock_unlock(v3);
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = sub_2515B1598;
  v17 = v4;
  v12 = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = sub_2515B0A38;
  v15 = &block_descriptor_14;
  v5 = _Block_copy(&v12);

  [a1 setExpirationHandlerWithReason_];
  _Block_release(v5);
  [v1 set:a1 currentTask:?];
  v6 = [v1 handler];
  v7 = swift_allocObject();
  *(v7 + 16) = v1;
  v16 = sub_2515B15A0;
  v17 = v7;
  v12 = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = sub_2515AAAB4;
  v15 = &block_descriptor_20;
  v8 = _Block_copy(&v12);
  v9 = v6[2];
  v10 = v1;

  v9(v6, v10, v8);
  _Block_release(v6);

  _Block_release(v8);
}

void HDFastPassBackgroundTask.addExpirationHandler(_:)(uint64_t (*a1)(void), uint64_t a2)
{
  v5 = &v2[OBJC_IVAR___HDFastPassBackgroundTask_state];
  os_unfair_lock_lock(&v2[OBJC_IVAR___HDFastPassBackgroundTask_state]);
  sub_2515B0604(&v5[2], v2, a1, a2);

  os_unfair_lock_unlock(v5);
}

void sub_2515B029C(unsigned __int8 *a1, void *a2, void (**a3)(void))
{
  v7 = sub_2515BB87C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  v13 = *a1;
  _Block_copy(a3);
  if (v13 != 1)
  {
    v14 = [a2 loggingCategory];
    sub_2515BB88C();
    v15 = a2;
    v16 = sub_2515BB86C();
    v17 = sub_2515BB94C();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v36 = v3;
      v19 = v18;
      v33 = swift_slowAlloc();
      v37 = v33;
      *v19 = 136446210;
      v20 = [v15 identifier];
      v21 = sub_2515BB8EC();
      v34 = v7;
      v35 = v12;
      v22 = v21;
      v23 = v8;
      v25 = v24;

      v26 = sub_2515AED94(v22, v25, &v37);

      *(v19 + 4) = v26;
      _os_log_impl(&dword_25156C000, v16, v17, "[%{public}s] attempted to register expiration handler when task is not running; ignoring", v19, 0xCu);
      v27 = v33;
      __swift_destroy_boxed_opaque_existential_0(v33);
      MEMORY[0x25307AFB0](v27, -1, -1);
      MEMORY[0x25307AFB0](v19, -1, -1);

      (*(v23 + 8))(v11, v34);
    }

    else
    {

      (*(v8 + 8))(v11, v7);
    }

    goto LABEL_12;
  }

  if ([a2 _shouldDefer])
  {
    a3[2](a3);
LABEL_12:

    _Block_release(a3);
    return;
  }

  v28 = swift_allocObject();
  *(v28 + 16) = sub_2515B1538;
  *(v28 + 24) = v12;
  v29 = *(a1 + 1);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v29 = sub_2515AEC3C(0, v29[2] + 1, 1, v29);
  }

  v31 = v29[2];
  v30 = v29[3];
  if (v31 >= v30 >> 1)
  {
    v29 = sub_2515AEC3C((v30 > 1), v31 + 1, 1, v29);
  }

  v29[2] = v31 + 1;
  v32 = &v29[2 * v31];
  v32[4] = sub_2515B1548;
  v32[5] = v28;

  _Block_release(a3);
  *(a1 + 1) = v29;
}

uint64_t sub_2515B0604(uint64_t a1, void *a2, uint64_t (*a3)(void), uint64_t a4)
{
  v8 = sub_2515BB87C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 1)
  {
    if ([a2 _shouldDefer])
    {
      return a3();
    }

    else
    {
      v25 = swift_allocObject();
      *(v25 + 16) = a3;
      *(v25 + 24) = a4;
      v26 = *(a1 + 8);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_2515AEC3C(0, v26[2] + 1, 1, v26);
        v26 = result;
      }

      v28 = v26[2];
      v27 = v26[3];
      if (v28 >= v27 >> 1)
      {
        result = sub_2515AEC3C((v27 > 1), v28 + 1, 1, v26);
        v26 = result;
      }

      v26[2] = v28 + 1;
      v29 = &v26[2 * v28];
      v29[4] = sub_2515B169C;
      v29[5] = v25;
      *(a1 + 8) = v26;
    }
  }

  else
  {
    v14 = [a2 loggingCategory];
    sub_2515BB88C();
    v15 = a2;
    v16 = sub_2515BB86C();
    v17 = sub_2515BB94C();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v32 = v31;
      *v18 = 136446210;
      v19 = [v15 identifier];
      v20 = sub_2515BB8EC();
      v30 = v8;
      v22 = v21;

      v23 = sub_2515AED94(v20, v22, &v32);

      *(v18 + 4) = v23;
      _os_log_impl(&dword_25156C000, v16, v17, "[%{public}s] attempted to register expiration handler when task is not running; ignoring", v18, 0xCu);
      v24 = v31;
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x25307AFB0](v24, -1, -1);
      MEMORY[0x25307AFB0](v18, -1, -1);

      return (*(v9 + 8))(v12, v30);
    }

    else
    {

      return (*(v9 + 8))(v12, v8);
    }
  }

  return result;
}

void sub_2515B09AC(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = (Strong + OBJC_IVAR___HDFastPassBackgroundTask_state);
    v4 = Strong;
    os_unfair_lock_lock((Strong + OBJC_IVAR___HDFastPassBackgroundTask_state));
    sub_2515B0E68(&v3[2], v4, a1);
    os_unfair_lock_unlock(v3);
  }
}

uint64_t sub_2515B0A38(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

void sub_2515B0A8C(uint64_t a1, uint64_t a2, char *a3)
{
  v43[1] = *MEMORY[0x277D85DE8];
  v5 = sub_2515BB87C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = &a3[OBJC_IVAR___HDFastPassBackgroundTask_state];
  os_unfair_lock_lock(&a3[OBJC_IVAR___HDFastPassBackgroundTask_state]);
  v11 = [a3 _currentTask];
  [a3 set:0 currentTask:?];
  if (a1 == 2)
  {
    v12 = [a3 shouldDefer];
    if (v11)
    {
      v13 = 300.0;
      if (v12)
      {
        v13 = 0.0;
      }

      v43[0] = 0;
      if ([v11 setTaskExpiredWithRetryAfter:v43 error:v13])
      {
        v14 = v43[0];
      }

      else
      {
        v15 = v43[0];
        v16 = sub_2515BB85C();

        swift_willThrow();
        v17 = [a3 loggingCategory];
        sub_2515BB88C();
        v18 = a3;
        v19 = v16;
        v20 = sub_2515BB86C();
        v21 = sub_2515BB94C();

        if (os_log_type_enabled(v20, v21))
        {
          v22 = swift_slowAlloc();
          v40 = v21;
          v23 = v22;
          v39 = swift_slowAlloc();
          v41 = swift_slowAlloc();
          v43[0] = v41;
          *v23 = 136446466;
          v24 = [v18 identifier];
          v25 = sub_2515BB8EC();
          v42 = v16;
          v26 = v25;
          v38 = v20;
          v28 = v27;

          v29 = sub_2515AED94(v26, v28, v43);

          *(v23 + 4) = v29;
          v16 = v42;
          *(v23 + 12) = 2112;
          v30 = v16;
          v31 = _swift_stdlib_bridgeErrorToNSError();
          *(v23 + 14) = v31;
          v33 = v38;
          v32 = v39;
          *v39 = v31;
          _os_log_impl(&dword_25156C000, v33, v40, "[%{public}s] failed to set task as expired, marking completed: %@", v23, 0x16u);
          sub_2515A85C4(v32);
          MEMORY[0x25307AFB0](v32, -1, -1);
          v34 = v41;
          __swift_destroy_boxed_opaque_existential_0(v41);
          MEMORY[0x25307AFB0](v34, -1, -1);
          MEMORY[0x25307AFB0](v23, -1, -1);
        }

        else
        {
        }

        (*(v6 + 8))(v9, v5);
        v35 = v11;
        [v35 setTaskCompleted];
      }
    }
  }

  else
  {
    [v11 setTaskCompleted];
  }

  *(v10 + 4) = 0;
  v36 = *(v10 + 2);

  *(v10 + 2) = MEMORY[0x277D84F90];
  [a3 set:0 shouldDefer:?];
  [a3 set:-1 expirationReason:?];

  os_unfair_lock_unlock(v10);
  v37 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2515B0E68(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_2515BB87C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 1)
  {
    [a2 set:1 shouldDefer:?];
    [a2 set:a3 expirationReason:?];
    v11 = *(a1 + 8);
    v12 = *(v11 + 16);
    if (v12)
    {
      v13 = (v11 + 40);
      do
      {
        v15 = *(v13 - 1);
        v14 = *v13;

        v15(v16);

        v13 += 2;
        --v12;
      }

      while (v12);
    }

    *(a1 + 8) = MEMORY[0x277D84F90];
  }

  else
  {
    v18 = [a2 loggingCategory];
    sub_2515BB88C();
    v19 = a2;
    v20 = sub_2515BB86C();
    v21 = sub_2515BB94C();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v31 = v30;
      *v22 = 136446210;
      v23 = [v19 identifier];
      v24 = sub_2515BB8EC();
      HIDWORD(v29) = v21;
      v26 = v25;

      v27 = sub_2515AED94(v24, v26, &v31);

      *(v22 + 4) = v27;
      _os_log_impl(&dword_25156C000, v20, BYTE4(v29), "[%{public}s] expiration handler called when task is not running", v22, 0xCu);
      v28 = v30;
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x25307AFB0](v28, -1, -1);
      MEMORY[0x25307AFB0](v22, -1, -1);
    }

    return (*(v7 + 8))(v10, v6);
  }

  return result;
}

id sub_2515B1100()
{
  v1 = sub_2515BB87C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = &v0[OBJC_IVAR___HDFastPassBackgroundTask_identifier];
  v7 = *&v0[OBJC_IVAR___HDFastPassBackgroundTask_identifier];
  v8 = *&v0[OBJC_IVAR___HDFastPassBackgroundTask_identifier + 8];
  v9 = *&v0[OBJC_IVAR___HDFastPassBackgroundTask_scheduler];

  v10 = sub_2515BB8DC();

  LOBYTE(v8) = [v9 deregisterTaskWithIdentifier_];

  if ((v8 & 1) == 0 && (HDIsUnitTesting() & 1) == 0)
  {
    v11 = *&v0[OBJC_IVAR___HDFastPassBackgroundTask_loggingCategory];
    sub_2515BB88C();
    v12 = v0;
    v13 = v0;
    v14 = sub_2515BB86C();
    v15 = sub_2515BB94C();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v23 = v17;
      *v16 = 136446210;
      v18 = *v6;
      v19 = v6[1];

      v20 = sub_2515AED94(v18, v19, &v23);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_25156C000, v14, v15, "[%{public}s] failed to deregister task on deinit", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x25307AFB0](v17, -1, -1);
      MEMORY[0x25307AFB0](v16, -1, -1);
    }

    (*(v2 + 8))(v5, v1);
    v0 = v12;
  }

  v24.receiver = v0;
  v24.super_class = HDFastPassBackgroundTask;
  return objc_msgSendSuper2(&v24, sel_dealloc);
}

id HDFastPassBackgroundTask.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

id HDFastPassBackgroundTask.currentTask.getter()
{
  v1 = [v0 _currentTask];

  return v1;
}

uint64_t sub_2515B1548()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2515B15E4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2515B162C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t HDSQLiteSchemaEntity.ColumnType.Nullability.hashValue.getter()
{
  v1 = *v0;
  sub_2515BBAAC();
  MEMORY[0x253079D70](v1);
  return sub_2515BBACC();
}

uint64_t HDSQLiteSchemaEntity.ColumnType.ForeignKeyType.hashValue.getter()
{
  v1 = *v0;
  sub_2515BBAAC();
  MEMORY[0x253079D70](v1);
  return sub_2515BBACC();
}

uint64_t sub_2515B17CC()
{
  v1 = *v0;
  v2 = *v0 >> 60;
  if (v2 > 4)
  {
    v6 = v1 & 0xFFFFFFFFFFFFFFFLL;
    if ((v2 - 6) >= 2)
    {
      if (v2 != 5)
      {
        v12 = *(v6 + 16);

        v11 = sub_2515B17CC(v10);

        MEMORY[0x253079BB0](0x455551494E5520, 0xE700000000000000);

        return v11;
      }

      if (*(v6 + 16))
      {
        v7 = 0x4C554E20544F4E20;
      }

      else
      {
        v7 = 0;
      }

      if (*(v6 + 16))
      {
        v8 = 0xE90000000000004CLL;
      }

      else
      {
        v8 = 0xE000000000000000;
      }

      v9 = 1415071060;
    }

    else
    {
      if (*(v6 + 16))
      {
        v7 = 0x4C554E20544F4E20;
      }

      else
      {
        v7 = 0;
      }

      if (*(v6 + 16))
      {
        v8 = 0xE90000000000004CLL;
      }

      else
      {
        v8 = 0xE000000000000000;
      }

      v9 = 1112493122;
    }
  }

  else if (v2 > 2)
  {
    if (*((v1 & 0xFFFFFFFFFFFFFFFLL) + 0x10))
    {
      v7 = 0x4C554E20544F4E20;
    }

    else
    {
      v7 = 0;
    }

    if (*((v1 & 0xFFFFFFFFFFFFFFFLL) + 0x10))
    {
      v8 = 0xE90000000000004CLL;
    }

    else
    {
      v8 = 0xE000000000000000;
    }

    v9 = 1279346002;
  }

  else
  {
    if (!v2 || (v1 &= 0xFFFFFFFFFFFFFFFuLL, v2 == 1))
    {
      v4 = *(v1 + 16);
      v3 = *(v1 + 24);

      return v4;
    }

    if (*(v1 + 16))
    {
      v7 = 0x4C554E20544F4E20;
    }

    else
    {
      v7 = 0;
    }

    if (*(v1 + 16))
    {
      v8 = 0xE90000000000004CLL;
    }

    else
    {
      v8 = 0xE000000000000000;
    }

    v9 = 0x52454745544E49;
  }

  v11 = v9;
  MEMORY[0x253079BB0](v7, v8);

  return v11;
}

uint64_t sub_2515B19B0()
{
  v1 = *v0;
  v2 = *v0 >> 60;
  if (v2 > 4)
  {
    if ((v2 - 6) >= 2)
    {
      if (v2 == 5)
      {
        return 4;
      }

      else
      {
        v5 = *((v1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        return sub_2515B19B0();
      }
    }

    else
    {
      return 0;
    }
  }

  else if (v2 > 2)
  {
    return 2;
  }

  else
  {
    if (v2)
    {
      v3 = v2 == 1;
    }

    else
    {
      v3 = 0;
    }

    if (v3)
    {
      return 0x70806u >> (8 * *((v1 & 0xFFFFFFFFFFFFFFFLL) + 0x20));
    }

    else
    {
      return 3;
    }
  }
}

uint64_t HDSQLiteSchemaEntity.ColumnDefinition.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t HDSQLiteSchemaEntity.ColumnDefinition.init(name:type:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v4 = *a3;
  *a4 = result;
  a4[1] = a2;
  a4[2] = v4;
  return result;
}

unint64_t sub_2515B1AB0()
{
  result = qword_27F446228;
  if (!qword_27F446228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F446228);
  }

  return result;
}

unint64_t sub_2515B1B08()
{
  result = qword_27F446230;
  if (!qword_27F446230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F446230);
  }

  return result;
}

uint64_t sub_2515B1B88(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x78 && *(a1 + 8))
  {
    return (*a1 + 120);
  }

  v3 = ((*a1 >> 60) & 0x8F | (16 * (*a1 & 7))) ^ 0x7F;
  if (v3 >= 0x77)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_2515B1BD8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x77)
  {
    *result = a2 - 120;
    if (a3 >= 0x78)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x78)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 4) & 7 | (8 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t _s10ColumnTypeO11NullabilityOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s10ColumnTypeO11NullabilityOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t _s10ColumnTypeO14ForeignKeyTypeOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s10ColumnTypeO14ForeignKeyTypeOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_2515B1F1C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2515B1F64(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void logActiveStatement_cold_1(sqlite3_stmt *a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = sqlite3_sql(a1);
  v5 = "<unknown sql>";
  if (v4)
  {
    v5 = v4;
  }

  v7 = 134218242;
  v8 = a1;
  v9 = 2082;
  v10 = v5;
  _os_log_error_impl(&dword_25156C000, v3, OS_LOG_TYPE_ERROR, "Transaction finished with active outstanding statement: %p %{public}s", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

void _LogOrAppend_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_25156C000, a2, OS_LOG_TYPE_ERROR, "%@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void HDSQLiteComparisonTypeForPredicateOperator_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = a1;
  _os_log_error_impl(&dword_25156C000, a2, OS_LOG_TYPE_ERROR, "Unrecognized predicate operator type received: %lu", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __HDSQLiteEntityEnumerateColumns_block_invoke_cold_1(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_fault_impl(&dword_25156C000, log, OS_LOG_TYPE_FAULT, "Expected foreign key for column %@ of table %@ and none found", buf, 0x16u);
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